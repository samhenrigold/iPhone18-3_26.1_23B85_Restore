double sub_100573484()
{

  sub_10001F63C(*(v0 + 88), *(v0 + 96));

  return result;
}

uint64_t sub_1005734C4()
{
  sub_10003D614(v0 + 16);

  sub_10001F63C(*(v0 + 88), *(v0 + 96));

  return swift_deallocClassInstance();
}

id sub_100573574(uint64_t a1)
{
  v1 = PrivacyDefinition.title.getter();
  sub_1000278AC(v1, v2);
  v3 = PrivacyDefinition.definition.getter();

  return sub_1000278B8(v3, v4);
}

double sub_100573658(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v40 = type metadata accessor for PrivacyDefinitionLayout.Metrics();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for PrivacyDefinitionLayout();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for LabelPlaceholderCompatibility();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000367E8();
  if (qword_10096E0C0 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for FontUseCase();
  sub_1000056A8(v37, qword_1009D11C0);
  v13 = [a6 traitCollection];
  v46 = a6;
  v14 = v13;
  v15 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyDefinition.title.getter();
  v16 = type metadata accessor for Feature();
  v51[3] = v16;
  v17 = sub_100573CA0(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v36[1] = a1;
  v18 = v17;
  v51[4] = v17;
  v19 = sub_1000056E0(v51);
  v20 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v21 = *(*(v16 - 8) + 104);
  v21(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  v22 = v15;
  v36[0] = v12;
  v23 = v22;
  isFeatureEnabled(_:)();
  sub_100007000(v51);
  v38 = v23;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v24 = *(v47 + 8);
  v47 += 8;
  v24(v11, v45);
  if (qword_10096E0C8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v37, qword_1009D11D8);
  v25 = [v46 traitCollection];
  v26 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyDefinition.definition.getter();
  v50[3] = v16;
  v50[4] = v18;
  v27 = sub_1000056E0(v50);
  v21(v27, v20, v16);
  v28 = v26;
  isFeatureEnabled(_:)();
  sub_100007000(v50);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v24(v11, v45);
  if (qword_10096CE50 != -1)
  {
    swift_once();
  }

  v29 = v40;
  v30 = sub_1000056A8(v40, qword_1009CD720);
  (*(v39 + 16))(v41, v30, v29);
  sub_10002C0AC(v51, v49);
  sub_10002C0AC(v50, v48);
  v31 = v42;
  PrivacyDefinitionLayout.init(metrics:titleLabel:definitionLabel:)();
  sub_100573CA0(&qword_1009794F8, &type metadata accessor for PrivacyDefinitionLayout, &protocol conformance descriptor for PrivacyDefinitionLayout);
  v32 = v44;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v34 = v33;

  (*(v43 + 8))(v31, v32);
  sub_100007000(v50);
  sub_100007000(v51);
  return v34;
}

uint64_t sub_100573CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100573CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &unk_1009731E0, &unk_1007B0B60);
}

uint64_t sub_100573D54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_100573E1C()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_expandableTextView];
  sub_10059FAC0(0, 0);
  *(v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_hasMoreButton) = 0;
  sub_1005A0320();
  v2 = (v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler + 8);
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3, v4);
  return [*(v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton) setUserInteractionEnabled:0];
}

void sub_100573EC8(void **a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Paragraph.Alignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v111 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v110 = &v106 - v8;
  __chkstk_darwin(v9);
  v11 = &v106 - v10;
  __chkstk_darwin(v12);
  v14 = &v106 - v13;
  v15 = sub_10002849C(&qword_10097C3F0, &qword_1007C4208);
  __chkstk_darwin(v15 - 8);
  v115 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v122 = &v106 - v18;
  __chkstk_darwin(v19);
  v114 = &v106 - v20;
  __chkstk_darwin(v21);
  v23 = &v106 - v22;
  v24 = sub_10002849C(qword_10097DB40, qword_1007C5240);
  __chkstk_darwin(v24 - 8);
  v120 = &v106 - v25;
  v124 = sub_10002849C(&qword_100980638, &qword_1007C7640);
  v26 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = &v106 - v27;
  v118 = type metadata accessor for Paragraph.Style();
  v126 = *(v118 - 8);
  __chkstk_darwin(v118);
  v121 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v125 = &v106 - v30;
  type metadata accessor for Paragraph();
  sub_10031857C();
  v127 = a1;
  ItemLayoutContext.typedModel<A>(as:)();
  v31 = aBlock;
  if (aBlock)
  {
    v107 = v11;
    v108 = v23;
    v109 = v14;
    v112 = v26;
    v117 = v5;
    v113 = v4;
    v32 = [v1 contentView];
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    v36 = Paragraph.text.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v37 = v134;
    v38 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v36];
    v39 = [v36 length];
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = v37;
    *(v40 + 32) = v38;
    *(v40 + 40) = 1;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_10010279C;
    *(v41 + 24) = v40;
    v132 = sub_1001027AC;
    v133 = v41;
    aBlock = _NSConcreteStackBlock;
    v129 = 1107296256;
    v130 = sub_1006606C4;
    v131 = &unk_1008C8F78;
    v42 = _Block_copy(&aBlock);
    v43 = v37;
    v44 = v38;

    [v36 enumerateAttributesInRange:0 options:v39 usingBlock:{0x100000, v42}];

    _Block_release(v42);
    LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

    if (v42)
    {
      __break(1u);
      goto LABEL_53;
    }

    v45 = [v2 contentView];
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    LayoutMarginsAware<>.layoutFrame.getter();
    v47 = v46;
    v49 = v48;

    v50 = sub_100079F24();
    swift_getObjectType();
    v116 = v44;
    v51 = sub_100318688(v44, v50, UIEdgeInsetsZero.top, left, bottom, right, v47, v49);
    swift_unknownObjectRelease();
    v52 = *&v2[OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_expandableTextView];
    v53 = v125;
    Paragraph.style.getter();
    v54 = v126;
    v55 = v121;
    v56 = v53;
    v57 = v118;
    (*(v126 + 16))(v121, v56, v118);
    v58 = (*(v54 + 88))(v55, v57);
    v59 = v2;
    v60 = v117;
    v61 = v31;
    if (v58 != enum case for Paragraph.Style.standard(_:))
    {
      if (v58 == enum case for Paragraph.Style.article(_:))
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        v62 = static UIColor.secondaryText.getter();
        goto LABEL_7;
      }

      if (v58 != enum case for Paragraph.Style.caption(_:) && v58 != enum case for Paragraph.Style.todayCardOverlay(_:) && v58 != enum case for Paragraph.Style.privacyDefinitions(_:))
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        v63 = static UIColor.primaryText.getter();
        v97 = v57;
        v98 = *(v126 + 8);
        v98(v125, v97);
        v98(v121, v97);
        goto LABEL_8;
      }
    }

    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v62 = static UIColor.primaryText.getter();
LABEL_7:
    v63 = v62;
    (*(v126 + 8))(v125, v57);
LABEL_8:
    v126 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
    [*&v52[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] setTextColor:v63];

    ItemLayoutContext.state.getter();
    StateLens.init(_:)();
    sub_100135E04();
    StateLens<A>.currentValue.getter();
    v64 = aBlock;
    if (aBlock == 2)
    {
      v64 = Paragraph.isCollapsed.getter();
    }

    if ((v64 & v51 & 1) == 0)
    {
      v89 = v116;
      v90 = v122;
      Paragraph.alignment.getter();
      v91 = v113;
      (*(v60 + 56))(v90, 0, 1, v113);
      v92 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
      v93 = v52[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
      v52[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 0;
      v94 = *&v52[v126];
      v95 = v89;
      [v94 setNumberOfLines:0];
      if (v93 != v52[v92])
      {
        sub_1005A0320();
      }

      v84 = v95;
      sub_10059FCD8(v95);
      v52[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v96 = v115;
      sub_100031660(v122, v115, &qword_10097C3F0, &qword_1007C4208);
      if ((*(v60 + 48))(v96, 1, v91) == 1)
      {
        sub_100574EB4(v96);
        v88 = v116;
      }

      else
      {
        v99 = v110;
        (*(v60 + 32))(v110, v96, v91);
        v100 = v111;
        (*(v60 + 16))(v111, v99, v91);
        v101 = (*(v60 + 88))(v100, v91);
        if (v101 == enum case for Paragraph.Alignment.left(_:))
        {
          v102 = 0;
          v88 = v116;
        }

        else
        {
          v88 = v116;
          if (v101 == enum case for Paragraph.Alignment.center(_:))
          {
            v102 = 1;
          }

          else if (v101 == enum case for Paragraph.Alignment.right(_:))
          {
            v102 = 2;
          }

          else if (v101 == enum case for Paragraph.Alignment.justified(_:))
          {
            v102 = 3;
          }

          else if (v101 == enum case for Paragraph.Alignment.localized(_:))
          {
            v102 = 4;
          }

          else
          {
            (*(v60 + 8))(v111, v91);
            v102 = 0;
          }
        }

        [*&v52[v126] setTextAlignment:v102];
        (*(v60 + 8))(v99, v91);
      }

      [v52 setNeedsLayout];
      v76 = v122;
      goto LABEL_50;
    }

    v125 = v2;
    v65 = Paragraph.collapsedText.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v66 = v134;
    v67 = v61;
    v68 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v65];
    v69 = [v65 length];
    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    *(v70 + 24) = v66;
    *(v70 + 32) = v68;
    *(v70 + 40) = 1;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_100126854;
    *(v71 + 24) = v70;
    v132 = sub_100126848;
    v133 = v71;
    aBlock = _NSConcreteStackBlock;
    v129 = 1107296256;
    v130 = sub_1006606C4;
    v131 = &unk_1008C8FF0;
    v72 = _Block_copy(&aBlock);
    v73 = v66;
    v74 = v68;

    [v65 enumerateAttributesInRange:0 options:v69 usingBlock:{0x100000, v72}];

    _Block_release(v72);
    LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

    if ((v65 & 1) == 0)
    {
      v75 = v74;
      v127 = v67;
      v76 = v108;
      Paragraph.alignment.getter();
      v77 = v117;
      v78 = v113;
      (*(v117 + 56))(v76, 0, 1, v113);
      v79 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
      v80 = v52[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
      v52[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 1;
      v81 = *&v52[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
      v82 = *&v52[v126];
      v83 = v75;
      [v82 setNumberOfLines:v81];
      if (v80 != v52[v79])
      {
        sub_1005A0320();
      }

      v84 = v83;
      sub_10059FCD8(v83);
      v52[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v85 = v114;
      sub_100031660(v76, v114, &qword_10097C3F0, &qword_1007C4208);
      v86 = (*(v77 + 48))(v85, 1, v78);
      v59 = v125;
      v87 = v109;
      v88 = v116;
      if (v86 == 1)
      {
        sub_100574EB4(v85);
      }

      else
      {
        (*(v77 + 32))(v109, v85, v78);
        v103 = v107;
        (*(v77 + 16))(v107, v87, v78);
        v104 = (*(v77 + 88))(v103, v78);
        if (v104 == enum case for Paragraph.Alignment.left(_:))
        {
          v105 = 0;
        }

        else if (v104 == enum case for Paragraph.Alignment.center(_:))
        {
          v105 = 1;
        }

        else if (v104 == enum case for Paragraph.Alignment.right(_:))
        {
          v105 = 2;
        }

        else if (v104 == enum case for Paragraph.Alignment.justified(_:))
        {
          v105 = 3;
        }

        else if (v104 == enum case for Paragraph.Alignment.localized(_:))
        {
          v105 = 4;
        }

        else
        {
          (*(v77 + 8))(v107, v78);
          v105 = 0;
        }

        [v82 setTextAlignment:v105];
        (*(v77 + 8))(v87, v78);
      }

      [v52 setNeedsLayout];

LABEL_50:
      sub_100574EB4(v76);
      [v59 setNeedsLayout];

      (*(v112 + 8))(v123, v124);
      return;
    }

LABEL_53:
    __break(1u);
  }
}

uint64_t sub_100574EB4(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097C3F0, &qword_1007C4208);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100574F28()
{
  result = qword_10098C508;
  if (!qword_10098C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C508);
  }

  return result;
}

unint64_t sub_100574F80()
{
  result = qword_10098C510;
  if (!qword_10098C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C510);
  }

  return result;
}

uint64_t sub_100574FD4()
{
  v0 = sub_10002849C(&qword_100979928, &qword_1007D8CE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100005644(v5, qword_1009D29E8);
  sub_1000056A8(v5, qword_1009D29E8);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100575164@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_10002849C(&qword_10098C598, &qword_1007D5CD8);
  __chkstk_darwin(v1 - 8);
  v3 = v17 - v2;
  v4 = sub_10002849C(&qword_100979928, &qword_1007D8CE0);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringResource.init(stringInterpolation:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_100575450(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1005767D4;

  return sub_100576474(a1);
}

uint64_t sub_1005754F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100095E9C;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_1005755AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10057566C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10057566C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100575770()
{
  result = qword_10098C518;
  if (!qword_10098C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C518);
  }

  return result;
}

unint64_t sub_1005757C4()
{
  result = qword_10098C520;
  if (!qword_10098C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C520);
  }

  return result;
}

unint64_t sub_10057581C()
{
  result = qword_10098C528;
  if (!qword_10098C528)
  {
    sub_10002D1A8(&qword_10098C530, qword_1007D5940);
    sub_1005757C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C528);
  }

  return result;
}

uint64_t sub_1005758A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100575B18();
  *v5 = v2;
  v5[1] = sub_10015A5C8;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100575954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10015A5C8;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100575A10()
{
  result = qword_10098C538;
  if (!qword_10098C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C538);
  }

  return result;
}

unint64_t sub_100575A68()
{
  result = qword_10098C540;
  if (!qword_10098C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C540);
  }

  return result;
}

unint64_t sub_100575AC0()
{
  result = qword_10098C548;
  if (!qword_10098C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C548);
  }

  return result;
}

unint64_t sub_100575B18()
{
  result = qword_10098C550;
  if (!qword_10098C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C550);
  }

  return result;
}

unint64_t sub_100575B7C()
{
  result = qword_10098C558;
  if (!qword_10098C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C558);
  }

  return result;
}

uint64_t sub_100575BD0(uint64_t a1)
{
  v1 = sub_10002849C(&qword_10098C5A8, &qword_1007D5CE0);
  __chkstk_darwin(v1);
  sub_100309954();
  _EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  _EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10002849C(&qword_10098C5B0, &qword_1007D5D10);
  _EntityURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  _EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);
  return _EntityURLRepresentation.init(stringInterpolation:)();
}

unint64_t sub_100575CF0()
{
  result = qword_10098C560;
  if (!qword_10098C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C560);
  }

  return result;
}

unint64_t sub_100575D44()
{
  result = qword_10098C568;
  if (!qword_10098C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C568);
  }

  return result;
}

unint64_t sub_100575D9C()
{
  result = qword_10098C570;
  if (!qword_10098C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C570);
  }

  return result;
}

uint64_t sub_100575DF0(uint64_t a1)
{
  sub_100576420();
  v2 = _URLRepresentableEntity.urlRepresentationParameter.getter();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100575E5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096E960 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for TypeDisplayRepresentation();
  v4 = sub_1000056A8(v3, qword_1009D29E8);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

unint64_t sub_100575F08()
{
  result = qword_10098C578;
  if (!qword_10098C578)
  {
    sub_10002D1A8(&qword_10098C580, &qword_1007D5BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C578);
  }

  return result;
}

uint64_t sub_100575F6C(uint64_t a1)
{
  v2 = sub_100309954();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100575FBC()
{
  result = qword_10098C588;
  if (!qword_10098C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C588);
  }

  return result;
}

uint64_t sub_100576014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100095E9C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1005760D8(uint64_t a1)
{
  v2 = sub_100575D9C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100576124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10057616C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1005761D4(uint64_t a1@<X0>, void *a2@<X1>, unint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v12 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v12 - 8);
  sub_10002849C(&qword_10098C590, &qword_1007D8CC0);
  LocalizedStringResource.init(stringLiteral:)();
  v13 = EntityProperty<>.init(title:)();

  LocalizedStringResource.init(stringLiteral:)();
  v14 = EntityProperty<>.init(title:)();

  LocalizedStringResource.init(stringLiteral:)();
  v15 = EntityProperty<>.init(title:)();

  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  if (a8)
  {
    v16 = a1;
  }

  else
  {
    _StringGuts.grow(_:)(33);

    v16 = a1;
    v17._countAndFlagsBits = a1;
    v17._object = a2;
    String.append(_:)(v17);
  }

  EntityProperty.wrappedValue.setter();

  *a9 = v16;
  a9[1] = a2;
  a9[2] = v13;
  a9[3] = v14;
  a9[4] = v15;
}

unint64_t sub_100576420()
{
  result = qword_10098C5A0;
  if (!qword_10098C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C5A0);
  }

  return result;
}

uint64_t sub_100576474(uint64_t a1)
{
  *(v1 + 64) = a1;
  type metadata accessor for LocalizedStringResource();
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100576504, 0, 0);
}

uint64_t sub_100576504()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100144598(0, v2, 0);
    sub_10002849C(&qword_10098C590, &qword_1007D8CC0);
    v3 = (v1 + 40);
    do
    {
      v15 = v2;
      v4 = *(v3 - 1);
      v5 = *v3;

      LocalizedStringResource.init(stringLiteral:)();
      v6 = EntityProperty<>.init(title:)();

      LocalizedStringResource.init(stringLiteral:)();
      v7 = EntityProperty<>.init(title:)();

      LocalizedStringResource.init(stringLiteral:)();
      v8 = EntityProperty<>.init(title:)();
      v0[2] = 0;
      v0[3] = 0xE000000000000000;

      EntityProperty.wrappedValue.setter();
      v0[4] = 0xD000000000000016;
      v0[5] = 0x800000010081A4C0;
      EntityProperty.wrappedValue.setter();
      _StringGuts.grow(_:)(33);

      v9._countAndFlagsBits = v4;
      v9._object = v5;
      String.append(_:)(v9);
      v0[6] = 0xD00000000000001FLL;
      v0[7] = 0x800000010081A4E0;
      EntityProperty.wrappedValue.setter();

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_100144598((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[5 * v11];
      v12[4] = v4;
      v12[5] = v5;
      v12[6] = v6;
      v12[7] = v7;
      v12[8] = v8;
      v3 += 2;
      v2 = v15 - 1;
    }

    while (v15 != 1);
  }

  v13 = v0[1];

  return v13(_swiftEmptyArrayStorage);
}

uint64_t AppPromotionCardLayout.init(metrics:shadowView:contentView:borderView:mediaContentView:artworkView:artworkFallbackView:videoView:gradientBlurView:kindLabel:titleLabel:subtitleView:separatorView:lockupContainerView:lockupView:includeSubtitle:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, __int128 *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_100102818(a1, a9);
  v22 = type metadata accessor for AppPromotionCardLayout(0);
  sub_100005A38(a2, a9 + v22[5]);
  sub_100005A38(a3, a9 + v22[6]);
  sub_100005A38(a4, a9 + v22[7]);
  sub_100005A38(a5, a9 + v22[8]);
  sub_100005A38(a6, a9 + v22[9]);
  v23 = a9 + v22[11];
  v24 = *(a8 + 16);
  *v23 = *a8;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a8 + 32);
  v25 = a9 + v22[12];
  v26 = *(a10 + 16);
  *v25 = *a10;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a10 + 32);
  sub_100005A38(a11, a9 + v22[13]);
  sub_100005A38(a12, a9 + v22[14]);
  sub_100005A38(a13, a9 + v22[15]);
  v27 = a9 + v22[16];
  v28 = *(a14 + 16);
  *v27 = *a14;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a14 + 32);
  v29 = a9 + v22[17];
  v30 = *(a15 + 16);
  *v29 = *a15;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a15 + 32);
  v31 = a9 + v22[18];
  v32 = *(a16 + 16);
  *v31 = *a16;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a16 + 32);
  *(a9 + v22[19]) = a17;
  v33 = a9 + v22[10];

  return sub_100005A38(a7, v33);
}

double static AppPromotionCardLayout.estimatedMeasurementsNonAXLayout(fitting:using:shelfItems:asPartOf:in:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_getObjectType();

  return sub_10057992C(a2, a3, a1, a6);
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = type metadata accessor for AspectRatio();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = type metadata accessor for AspectRatio();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppPromotionCardLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 24);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 28);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 32);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 36);
  sub_100007000((v1 + v3));

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.init(contentHorizontalMargin:artworkAspectRatio:kindTopSpace:titleTopSpace:subtitleTopSpace:textBottomSpace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  sub_100005A38(a1, a7);
  v13 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v14 = v13[5];
  v15 = type metadata accessor for AspectRatio();
  (*(*(v15 - 8) + 32))(a7 + v14, a2, v15);
  sub_100005A38(a3, a7 + v13[6]);
  sub_100005A38(a4, a7 + v13[7]);
  sub_100005A38(a5, a7 + v13[8]);
  v16 = a7 + v13[9];

  return sub_100005A38(a6, v16);
}

uint64_t AppPromotionCardLayout.videoView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 44);

  return sub_10005FC74(v3, a1);
}

uint64_t AppPromotionCardLayout.gradientBlurView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 48);

  return sub_10005FC74(v3, a1);
}

uint64_t AppPromotionCardLayout.separatorView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 64);

  return sub_10005FC74(v3, a1);
}

uint64_t AppPromotionCardLayout.lockupContainerView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 68);

  return sub_10005FC74(v3, a1);
}

uint64_t AppPromotionCardLayout.lockupView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 72);

  return sub_10005FC74(v3, a1);
}

double AppPromotionCardLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_1005787A8(a1, v3, a2, a3);
}

uint64_t AppPromotionCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v160 = a2;
  v154 = COERCE_DOUBLE(type metadata accessor for SmallLockupLayout.Metrics());
  v152 = *(*&v154 - 8);
  __chkstk_darwin(*&v154);
  v151 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(type metadata accessor for FloatingPointRoundingRule());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppPromotionCardLayout(0);
  sub_10002A400((v6 + v18[5]), *(v6 + v18[5] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v7 + v18[6]), *(v7 + v18[6] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v7 + v18[7]), *(v7 + v18[7] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400(v7, v7[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v20 = v19;
  v21 = *(v15 + 8);
  v156 = *&v17;
  v158 = *&v14;
  *&v157 = v15 + 8;
  MaxY = *&v21;
  v21(v17, v14);
  v159 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v171.origin.x = 0.0;
  v171.origin.y = 0.0;
  v171.size.width = a5;
  v171.size.height = a6;
  CGRectGetWidth(v171);
  AspectRatio.height(fromWidth:)();
  Height = round(v22);
  v172.origin.x = 0.0;
  v172.origin.y = 0.0;
  v172.size.width = a5;
  v172.size.height = a6;
  if (vabdd_f64(Height, CGRectGetHeight(v172)) < 1.0)
  {
    v173.origin.x = 0.0;
    v173.origin.y = 0.0;
    v173.size.width = a5;
    v173.size.height = a6;
    Height = CGRectGetHeight(v173);
  }

  v174.origin.x = 0.0;
  v174.origin.y = 0.0;
  v174.size.width = a5;
  v174.size.height = a6;
  Width = CGRectGetWidth(v174);
  sub_10002A400((v6 + v18[8]), *(v6 + v18[8] + 24));
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v175.origin.x = 0.0;
  v175.origin.y = 0.0;
  v175.size.width = Width;
  v175.size.height = Height;
  v25 = CGRectGetWidth(v175);
  v26 = (v6 + v18[9]);
  sub_10002A400(v26, v26[3]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v6 + v18[10]), *(v6 + v18[10] + 24));
  sub_10002A400(v26, v26[3]);
  dispatch thunk of LayoutView.frame.getter();
  dispatch thunk of LayoutView.frame.setter();
  sub_10005FC74(v6 + v18[11], &v169);
  if (v170)
  {
    sub_10002A400(&v169, v170);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v169);
  }

  else
  {
    sub_10005FD2C(&v169);
  }

  sub_10005FC74(v6 + v18[12], &v169);
  if (v170)
  {
    sub_10002A400(&v169, v170);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v169);
  }

  else
  {
    sub_10005FD2C(&v169);
  }

  sub_10005FC74(v6 + v18[17], &v167);
  v161 = a5;
  v163 = a4;
  v162 = a3;
  if (!v168)
  {
    sub_10005FD2C(&v167);
LABEL_17:
    v27 = 1;
    v28 = 0.0;
    v150 = 0.0;
    v149 = 0.0;
    v153 = 0.0;
    goto LABEL_18;
  }

  sub_100005A38(&v167, &v169);
  sub_10002A400(&v169, v170);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
LABEL_16:
    sub_100007000(&v169);
    goto LABEL_17;
  }

  sub_10005FC74(v6 + v18[18], &v165);
  if (!v166)
  {
    sub_10005FD2C(&v165);
    goto LABEL_16;
  }

  sub_100005A38(&v165, &v167);
  sub_10002A400(&v167, v168);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    sub_100007000(&v167);
    goto LABEL_16;
  }

  v146 = sub_1000CC354(0.0, 0.0, a5, a6, 0.0, v20);
  v145 = v118;
  v120 = v119;
  v143 = v121;
  v153 = COERCE_DOUBLE(swift_getObjectType());
  v122 = [a1 traitCollection];
  v123 = [v122 preferredContentSizeCategory];
  v124 = static UIContentSizeCategory.>= infix(_:_:)();

  v147 = v20;
  v144 = Width;
  v142 = v25;
  if (v124)
  {
    if (qword_10096EBD8 != -1)
    {
      swift_once();
    }

    v125 = qword_1009D3190;
  }

  else
  {
    if (qword_10096EBD0 != -1)
    {
      swift_once();
    }

    v125 = qword_1009D3178;
  }

  v126 = v154;
  v127 = sub_1000056A8(*&v154, v125);
  v128 = v152;
  v129 = v151;
  (*(v152 + 16))(v151, v127, COERCE_CGFLOAT(*&v126));
  v130 = [a1 traitCollection];
  v131 = [v130 preferredContentSizeCategory];
  static UIContentSizeCategory.>= infix(_:_:)();

  type metadata accessor for SmallLockupView(0);
  v132 = v143;
  sub_10070B598(v129, a1, v120, v143);
  v134 = ceil(v133);
  v192.origin.x = 0.0;
  v192.origin.y = 0.0;
  v192.size.width = a5;
  v192.size.height = a6;
  MinX = CGRectGetMinX(v192);
  v193.size.width = v120;
  v141 = v120;
  v135 = v146;
  v193.origin.x = v146;
  v136 = v145;
  v193.origin.y = v145;
  v193.size.height = v132;
  v137 = CGRectGetHeight(v193);
  v153 = v134;
  v138 = v137 - v134;
  v194.origin.x = 0.0;
  v194.origin.y = 0.0;
  v194.size.width = a5;
  v194.size.height = a6;
  v139 = CGRectGetWidth(v194);
  sub_10002A400(&v169, v170);
  v150 = v138;
  v149 = v139;
  dispatch thunk of LayoutView.frame.setter();
  v195.origin.x = v135;
  v195.origin.y = v136;
  v140 = v141;
  v195.size.width = v141;
  v195.size.height = v132;
  CGRectGetMinX(v195);
  v196.origin.x = v135;
  v196.origin.y = v136;
  v196.size.width = v140;
  v196.size.height = v132;
  CGRectGetMinY(v196);
  v197.origin.x = v135;
  v197.origin.y = v136;
  v197.size.width = v140;
  v197.size.height = v132;
  CGRectGetWidth(v197);
  sub_10002A400(&v167, v168);
  v28 = MinX;
  a5 = v161;
  dispatch thunk of LayoutView.frame.setter();
  (*(v128 + 8))(v129, COERCE_CGFLOAT(*&v154));
  sub_100007000(&v167);
  sub_100007000(&v169);
  v27 = 0;
  v20 = v147;
  Width = v144;
  v25 = v142;
LABEL_18:
  v29 = [a1 traitCollection];
  v30 = [v29 preferredContentSizeCategory];
  v31 = static UIContentSizeCategory.>= infix(_:_:)();

  v164 = a6;
  if (v31)
  {
    MinX = v28;
    v32 = sub_1000CC354(0.0, 0.0, a5, a6, 0.0, v20);
    v156 = v32;
    v158 = v33;
    v35 = v34;
    v37 = v36;
    v176.origin.x = 0.0;
    v176.origin.y = 0.0;
    v176.size.width = v25;
    v176.size.height = Height;
    MaxY = CGRectGetMaxY(v176);
    v38 = (v7 + v18[13]);
    sub_10002A400(v38, v38[3]);
    v157 = v35;
    v39 = v37;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v159;
    sub_10002A400((v7 + *(v159 + 24)), *(v7 + *(v159 + 24) + 24));
    AnyDimension.topMargin(from:in:)();
    v48 = v47;
    v177.origin.x = v32;
    v177.origin.y = v158;
    v177.size.width = v35;
    v177.size.height = v39;
    v49 = CGRectGetMinX(v177);
    v50 = MaxY + v48;
    sub_10002A400(v38, v38[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v178.origin.x = v49;
    v178.origin.y = v50;
    v178.size.width = v41;
    v178.size.height = v43;
    v51 = CGRectGetMaxY(v178) - v45;
    v52 = (v7 + v18[14]);
    sub_10002A400(v52, v52[3]);
    v53 = v157;
    v54 = v39;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_10002A400((v7 + *(v46 + 28)), *(v7 + *(v46 + 28) + 24));
    AnyDimension.topMargin(from:in:)();
    v62 = v61;
    v179.origin.x = v156;
    v179.origin.y = v158;
    v179.size.width = v53;
    MaxY = v54;
    v179.size.height = v54;
    v63 = CGRectGetMinX(v179);
    sub_10002A400(v52, v52[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v180.origin.x = v63;
    v180.origin.y = v51 + v62;
    v180.size.width = v56;
    v180.size.height = v58;
    v64 = CGRectGetMaxY(v180);
    if (*(v7 + v18[19]) == 1)
    {
      v65 = v64 - v60;
      sub_10002A400((v7 + *(v46 + 32)), *(v7 + *(v46 + 32) + 24));
      v66 = [a1 traitCollection];
      AnyDimension.value(with:)();
      v68 = v67;

      v69 = v65 + v68;
      v70 = (v7 + v18[15]);
      sub_10002A400(v70, v70[3]);
      v71 = [a1 traitCollection];
      v72 = v157;
      v73 = MaxY;
      dispatch thunk of Placeable.measure(toFit:with:)();
      v75 = v74;
      v77 = v76;

      v181.origin.x = v156;
      v181.origin.y = v158;
      v181.size.width = v72;
      v181.size.height = v73;
      v78 = CGRectGetMinX(v181);
      sub_10002A400(v70, v70[3]);
      CGRect.withLayoutDirection(in:relativeTo:)();
      v79 = [a1 traitCollection];
      dispatch thunk of Placeable.place(at:with:)();

      v182.origin.x = v78;
      v182.origin.y = v69;
      v182.size.width = v75;
      v182.size.height = v77;
      CGRectGetMaxY(v182);
    }

    sub_10005FC74(v7 + v18[16], &v167);
    if (v168)
    {
      sub_100005A38(&v167, &v169);
      sub_10002A400(&v169, v170);
      if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0 && (v27 & 1) == 0)
      {
        sub_10002A400(&v169, v170);
        v80 = v157;
        v81 = MaxY;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v183.origin.x = MinX;
        v183.origin.y = v150;
        v183.size.width = v149;
        v183.size.height = v153;
        CGRectGetMinY(v183);
        v82 = v156;
        v184.origin.x = v156;
        v83 = v158;
        v184.origin.y = v158;
        v184.size.width = v80;
        v184.size.height = v81;
        CGRectGetMinX(v184);
        v185.origin.x = v82;
        v185.origin.y = v83;
        v185.size.width = v80;
        v185.size.height = v81;
        CGRectGetWidth(v185);
        sub_10002A400(&v169, v170);
        dispatch thunk of LayoutView.frame.setter();
      }

      sub_100007000(&v169);
    }

    else
    {
      sub_10005FD2C(&v167);
    }
  }

  else
  {
    v84 = sub_1000CC354(0.0, 0.0, Width, Height, 0.0, v20);
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v91 = v159;
    sub_10002A400((v7 + *(v159 + 36)), *(v7 + *(v159 + 36) + 24));
    v92 = v156;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v94 = v93;
    (*&MaxY)(COERCE_DOUBLE(*&v92), COERCE_CGFLOAT(*&v158));
    v186.origin.x = v84;
    v186.origin.y = v86;
    v186.size.width = v88;
    v186.size.height = v90;
    v95 = CGRectGetHeight(v186) - v94;
    if (*(v7 + v18[19]) == 1)
    {
      v96 = (v7 + v18[15]);
      sub_10002A400(v96, v96[3]);
      v97 = [a1 traitCollection];
      dispatch thunk of Placeable.measure(toFit:with:)();
      v158 = v98;
      v100 = v99;

      v156 = v95 - v100;
      v157 = v100;
      v187.origin.x = v84;
      v187.origin.y = v86;
      v187.size.width = v88;
      v187.size.height = v90;
      MaxY = CGRectGetMinX(v187);
      sub_10002A400(v96, v96[3]);
      CGRect.withLayoutDirection(in:relativeTo:)();
      v101 = v84;
      v102 = [a1 traitCollection];
      dispatch thunk of Placeable.place(at:with:)();

      sub_10002A400((v7 + *(v91 + 32)), *(v7 + *(v91 + 32) + 24));
      v103 = [a1 traitCollection];
      AnyDimension.value(with:)();
      v105 = v104;

      v188.origin.x = MaxY;
      v188.origin.y = v156;
      v188.size.width = v158;
      v188.size.height = v157;
      v95 = CGRectGetMinY(v188) - v105;
    }

    else
    {
      v101 = v84;
    }

    v106 = (v7 + v18[14]);
    sub_10002A400(v106, v106[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v108 = v107;
    v110 = v109;
    v158 = v111;
    v157 = v112;
    v113 = v112 + v95 - v109;
    v189.origin.x = v101;
    v189.origin.y = v86;
    v153 = v86;
    v189.size.width = v88;
    v189.size.height = v90;
    v114 = CGRectGetMinX(v189);
    v154 = v101;
    v115 = v114;
    sub_10002A400(v106, v106[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_10002A400((v7 + *(v91 + 28)), *(v7 + *(v91 + 28) + 24));
    AnyDimension.topMargin(from:in:)();
    v190.origin.x = v115;
    v190.origin.y = v113;
    v190.size.width = v108;
    v190.size.height = v110;
    CGRectGetMinY(v190);
    v116 = (v7 + v18[13]);
    sub_10002A400(v116, v116[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v191.origin.x = v154;
    v191.origin.y = v153;
    v191.size.width = v88;
    v191.size.height = v90;
    CGRectGetMinX(v191);
    sub_10002A400(v116, v116[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
  }

  return LayoutRect.init(representing:)();
}

double sub_1005787A8(void *a1, void *a2, double a3, double a4)
{
  v110 = type metadata accessor for FloatingPointRoundingRule();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for StackMeasurable.Axis();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v113 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for StackMeasurable();
  v117 = *(v118 - 1);
  __chkstk_darwin(v118);
  v116 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for VerticalSpaceMeasurable();
  v109 = *(v112 - 8);
  __chkstk_darwin(v112);
  v105 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v106 = &v97 - v11;
  v104 = type metadata accessor for OfferButtonMetrics();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v102 = &v97 - v14;
  __chkstk_darwin(v15);
  v100 = &v97 - v16;
  __chkstk_darwin(v17);
  v19 = &v97 - v18;
  v20 = type metadata accessor for SmallLockupLayout.Metrics();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v97 - v25;
  v27 = type metadata accessor for AppPromotionCardLayout(0);
  sub_10005FC74(a2 + v27[18], &v122);
  v111 = v123;
  sub_10005FD2C(&v122);
  v119 = a1;
  v28 = [a1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];
  v30 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v30)
  {
    v31 = v27[13];
    v32 = v27[14];
    v33 = v27[16];
    v97 = v27[15];
    v105 = v33;
    LODWORD(v101) = *(a2 + v27[19]);
    if (qword_10096EBD8 != -1)
    {
      swift_once();
    }

    v98 = (a2 + v31);
    v34 = (a2 + v32);
    v35 = sub_1000056A8(v20, qword_1009D3190);
    v102 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    AspectRatio.height(fromWidth:)();
    v37 = v36;
    v38 = [v119 traitCollection];
    (*(v21 + 16))(v26, v35, v20);
    v39 = SmallLockupLayout.Metrics.offerButtonSize.getter();
    v41 = v107;
    v99 = v34;
    if ((v42 & 1) == 0 && ((v39 | v40) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v43 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v43 = qword_100991028;
      }

      v53 = v104;
      v54 = sub_1000056A8(v104, v43);
      v55 = v103;
      v56 = v100;
      (*(v103 + 16))(v100, v54, v53);
      (*(v55 + 32))(v19, v56, v53);
      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallLockupLayout.Metrics.offerButtonSize.setter();
      (*(v55 + 8))(v19, v53);
    }

    static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
    v58 = v57;

    (*(v21 + 8))(v26, v20);
    *&v120 = _swiftEmptyArrayStorage;
    sub_10002849C(&qword_100996330, qword_1007BAD70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    v123 = &type metadata for CGFloat;
    v124 = &protocol witness table for CGFloat;
    *&v122 = v37;
    v60 = v112;
    *(inited + 56) = v112;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_1000056E0((inited + 32));
    VerticalSpaceMeasurable.init(_:multiplier:)();
    sub_10039435C(inited);
    v61 = v119;
    v62 = v110;
    if (v111)
    {
      v123 = &type metadata for CGFloat;
      v124 = &protocol witness table for CGFloat;
      *&v122 = ceil(v58 + 16.0 + 16.0);
      v63 = v106;
      VerticalSpaceMeasurable.init(_:multiplier:)();
      v64 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_100033260(0, v64[2] + 1, 1, v64);
      }

      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v64 = sub_100033260((v65 > 1), v66 + 1, 1, v64);
      }

      v123 = v60;
      v124 = &protocol witness table for VerticalSpaceMeasurable;
      v67 = sub_1000056E0(&v122);
      v68 = v109;
      (*(v109 + 16))(v67, v63, v60);
      v64[2] = v66 + 1;
      sub_100005A38(&v122, &v64[5 * v66 + 4]);
      (*(v68 + 8))(v63, v60);
      *&v120 = v64;
    }

    (*(v114 + 104))(v113, enum case for StackMeasurable.Axis.vertical(_:), v115);
    v69 = v116;
    StackMeasurable.init(axis:skipEmptyChildren:children:)();
    StackMeasurable.measurements(fitting:in:)();
    v71 = v70;
    (*(v117 + 8))(v69, v118);
    sub_10002A400(a2, a2[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v118 = *(v108 + 8);
    v118(v41, v62);
    CGSize.subtracting(insets:)();
    sub_10002A400(v98, v98[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v73 = v72;
    v74 = v102;
    sub_10002A400((a2 + *(v102 + 6)), *(a2 + *(v102 + 6) + 24));
    AnyDimension.topMargin(from:in:)();
    *&v122 = v73;
    AnyDimension.bottomMargin(from:in:)();
    sub_10002A400(v99, v99[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v76 = v75;
    sub_10002A400((a2 + *(v74 + 7)), *(a2 + *(v74 + 7) + 24));
    AnyDimension.topMargin(from:in:)();
    *&v122 = v76;
    AnyDimension.bottomMargin(from:in:)();
    if (v101)
    {
      sub_10002A400((a2 + v97), *(a2 + v97 + 24));
      v77 = v74;
      v78 = [v61 traitCollection];
      dispatch thunk of Placeable.measure(toFit:with:)();

      sub_10002A400((a2 + *(v77 + 8)), *(a2 + *(v77 + 8) + 24));
      v79 = [v61 traitCollection];
      AnyDimension.value(with:)();

      sub_10002A400((a2 + *(v77 + 9)), *(a2 + *(v77 + 9) + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v118(v41, v110);
    }

    sub_10005FC74(&v105[a2], &v120);
    if (v121)
    {
      sub_100005A38(&v120, &v122);
      sub_10002A400(&v122, v123);
      if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
      {
        sub_10002A400(&v122, v123);
        dispatch thunk of Measurable.measurements(fitting:in:)();
      }

      sub_100007000(&v122);
    }

    else
    {
      sub_10005FD2C(&v120);
    }
  }

  else
  {
    if (qword_10096EBD0 != -1)
    {
      swift_once();
    }

    v44 = sub_1000056A8(v20, qword_1009D3178);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    AspectRatio.height(fromWidth:)();
    v46 = v45;
    v47 = [v119 traitCollection];
    (*(v21 + 16))(v23, v44, v20);
    v48 = SmallLockupLayout.Metrics.offerButtonSize.getter();
    v50 = v112;
    if ((v51 & 1) == 0 && ((v48 | v49) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v52 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v52 = qword_100991028;
      }

      v80 = v104;
      v81 = sub_1000056A8(v104, v52);
      v82 = v103;
      v83 = v101;
      (*(v103 + 16))(v101, v81, v80);
      v84 = v102;
      (*(v82 + 32))(v102, v83, v80);
      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallLockupLayout.Metrics.offerButtonSize.setter();
      (*(v82 + 8))(v84, v80);
    }

    static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
    v86 = v85;

    (*(v21 + 8))(v23, v20);
    *&v120 = _swiftEmptyArrayStorage;
    sub_10002849C(&qword_100996330, qword_1007BAD70);
    v87 = swift_initStackObject();
    *(v87 + 16) = xmmword_1007B10D0;
    v123 = &type metadata for CGFloat;
    v124 = &protocol witness table for CGFloat;
    *&v122 = v46;
    *(v87 + 56) = v50;
    *(v87 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_1000056E0((v87 + 32));
    VerticalSpaceMeasurable.init(_:multiplier:)();
    sub_10039435C(v87);
    if (v111)
    {
      v123 = &type metadata for CGFloat;
      v124 = &protocol witness table for CGFloat;
      *&v122 = ceil(v86 + 4.0 + 4.0);
      v88 = v105;
      VerticalSpaceMeasurable.init(_:multiplier:)();
      v89 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_100033260(0, v89[2] + 1, 1, v89);
      }

      v91 = v89[2];
      v90 = v89[3];
      if (v91 >= v90 >> 1)
      {
        v89 = sub_100033260((v90 > 1), v91 + 1, 1, v89);
      }

      v123 = v50;
      v124 = &protocol witness table for VerticalSpaceMeasurable;
      v92 = sub_1000056E0(&v122);
      v93 = v109;
      (*(v109 + 16))(v92, v88, v50);
      v89[2] = v91 + 1;
      sub_100005A38(&v122, &v89[5 * v91 + 4]);
      (*(v93 + 8))(v88, v50);
      *&v120 = v89;
    }

    (*(v114 + 104))(v113, enum case for StackMeasurable.Axis.vertical(_:), v115);
    v94 = v116;
    StackMeasurable.init(axis:skipEmptyChildren:children:)();
    StackMeasurable.measurements(fitting:in:)();
    v71 = v95;
    (*(v117 + 8))(v94, v118);
  }

  return v71;
}

double sub_10057992C(double a1, double a2, uint64_t a3, void *a4)
{
  v50 = type metadata accessor for StackMeasurable.Axis();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for StackMeasurable();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VerticalSpaceMeasurable();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for OfferButtonMetrics();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  v15 = type metadata accessor for SmallLockupLayout.Metrics();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EBD0 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v15, qword_1009D3178);
  type metadata accessor for AppPromotionCardLayout.Metrics(0);
  AspectRatio.height(fromWidth:)();
  v21 = v20;
  v52 = a4;
  v22 = [a4 traitCollection];
  (*(v16 + 16))(v18, v19, v15);
  v23 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  v25 = v9;
  if ((v26 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v27 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v27 = qword_100991028;
    }

    v28 = v44;
    v29 = sub_1000056A8(v44, v27);
    v30 = v43;
    (*(v10 + 16))(v43, v29, v28);
    (*(v10 + 32))(v14, v30, v28);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v10 + 8))(v14, v28);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
  v32 = v31;

  (*(v16 + 8))(v18, v15);
  v56 = _swiftEmptyArrayStorage;
  sub_10002849C(&qword_100996330, qword_1007BAD70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = v21;
  *(inited + 56) = v7;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_1000056E0((inited + 32));
  VerticalSpaceMeasurable.init(_:multiplier:)();
  sub_10039435C(inited);
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = ceil(v32 + 4.0 + 4.0);
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v34 = v56;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_100033260(0, v34[2] + 1, 1, v34);
  }

  v36 = v34[2];
  v35 = v34[3];
  if (v36 >= v35 >> 1)
  {
    v34 = sub_100033260((v35 > 1), v36 + 1, 1, v34);
  }

  v54 = v7;
  v55 = &protocol witness table for VerticalSpaceMeasurable;
  v37 = sub_1000056E0(&v53);
  v38 = v45;
  (*(v45 + 16))(v37, v25, v7);
  v34[2] = v36 + 1;
  sub_100005A38(&v53, &v34[5 * v36 + 4]);
  (*(v38 + 8))(v25, v7);
  (*(v48 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v50);
  v39 = v46;
  StackMeasurable.init(axis:skipEmptyChildren:children:)();
  StackMeasurable.measurements(fitting:in:)();
  v41 = v40;
  (*(v49 + 8))(v39, v51);
  return v41;
}

void sub_10057A078(uint64_t a1)
{
  type metadata accessor for AppPromotionCardLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_100154428(319, &unk_10098A3C0, &protocol descriptor for LayoutView);
    if (v2 <= 0x3F)
    {
      sub_100448A64(319);
      if (v3 <= 0x3F)
      {
        sub_100154428(319, &qword_10097E940, &protocol descriptor for LayoutTextView);
        if (v4 <= 0x3F)
        {
          sub_100154428(319, &qword_10098C620, &protocol descriptor for Placeable);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10057A1C0(uint64_t a1)
{
  result = sub_100154428(319, &qword_1009842D0, &protocol descriptor for AnyDimension);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AspectRatio();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_10057A264(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      sub_100005744(0, &qword_1009744B0, UIImage_ptr);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_1003D791C(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

double sub_10057A32C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media);
  *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media) = a1;
  if (a1)
  {
    v8 = a1;
    if (v4)
    {
      v7 = v4;
      type metadata accessor for ProductMedia();
      sub_10057FCB8(&qword_10098C828, &type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
      swift_retain_n();
      v5 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    [*(v3 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView) reloadData];
LABEL_9:

    return result;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_10057A438(uint64_t a1, __n128 a2)
{
  if (a1)
  {
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();

    inject<A, B>(_:from:)();
    type metadata accessor for VideoPlaybackScrollObserver();
    swift_allocObject();
    v3 = v7;
    VideoPlaybackScrollObserver.init(_:)();
    CompoundScrollObserver.removeChild(_:)();
  }

  if (*&v2[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph])
  {
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();

    inject<A, B>(_:from:)();
    v4 = *&v2[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_compoundScrollObserver];
    type metadata accessor for VideoPlaybackScrollObserver();
    swift_allocObject();
    v5 = v7;
    VideoPlaybackScrollObserver.init(_:)();
    CompoundScrollObserver.addChild(_:)();

    v6 = [v2 window];
    if (v6)
    {

      [v4 scrollViewDidScroll:*&v2[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView]];
    }
  }
}

uint64_t sub_10057A600()
{
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2448);
  qword_10098C748 = v0;
  unk_10098C750 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_10098C730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_10057A6F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_flowLayout;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v12 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_compoundScrollObserver;
  v13 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *&v4[v12] = CompoundScrollObserver.init(children:)();
  *&v4[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits] = 0;
  v14 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  *&v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView] = 0;
  v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysTopAccessoryDivider] = 0;
  v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryDividerView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryDividerView] = 0;
  v16 = &v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotSelectionHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v5[v11] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView] = v17;
  v36.receiver = v5;
  v36.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v20 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView;
  [*&v18[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v21 = *&v18[v20];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor:v24];

  [*&v18[v20] setAllowsSelection:1];
  [*&v18[v20] setAlwaysBounceHorizontal:1];
  [*&v18[v20] setShowsHorizontalScrollIndicator:0];
  [*&v18[v20] setDataSource:v18];
  v25 = *&v18[v20];
  [v25 setDelegate:v18];

  v26 = *&v18[v20];
  type metadata accessor for VideoCollectionViewCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = v26;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v29 = String._bridgeToObjectiveC()();

  [v28 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v29];

  v30 = *&v18[v20];
  type metadata accessor for ScreenshotCollectionViewCell(0);
  v31 = swift_getObjCClassFromMetadata();
  v32 = v30;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v33 = String._bridgeToObjectiveC()();

  [v32 registerClass:v31 forCellWithReuseIdentifier:v33];

  v34 = [v18 contentView];
  [v34 addSubview:*&v18[v20]];

  return v18;
}

id sub_10057AB70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v92 = COERCE_DOUBLE(type metadata accessor for DividerView.Style(0));
  __chkstk_darwin(v92);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104.receiver = v1;
  v104.super_class = ObjectType;
  objc_msgSendSuper2(&v104, "layoutSubviews", v7);
  v10 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v100 = v17;

  v91 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView];
  v101 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  if (v18)
  {
    v22 = v18;
    [v22 frame];
    v19 = v23;
    v20 = v24;
    if (qword_10096E980 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009D2A00, qword_1009D2A18);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v21 = v25;

    (*(v6 + 8))(v9, v5);
  }

  v94 = v20;
  v90 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView];
  v103 = 0.0;
  v27 = 0.0;
  if (v26)
  {
    v28 = v26;
    [v28 frame];
    v101 = v29;
    v103 = v30;
    if (qword_10096E978 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_10098C780, qword_10098C798);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v27 = v31;

    (*(v6 + 8))(v9, v5);
  }

  v86 = v19;
  v95 = v27;
  v89 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryDividerView;
  v32 = *&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryDividerView];
  v33 = 0.0;
  v99 = 0.0;
  v34 = 0.0;
  MinY = 0.0;
  v36 = 0.0;
  if (v32)
  {
    v37 = OBJC_IVAR____TtC8AppStore11DividerView_style;
    swift_beginAccess();
    sub_1002BB2D0(v32 + v37, v4);
    v38 = qword_10096EE38;
    v39 = v32;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = floor(*&qword_1009D36B8);
    static Dimensions.defaultRoundingRule.getter();
    type metadata accessor for StaticDimension();
    AnyDimension.value(in:rounded:)();
    v42 = v41;
    (*(v6 + 8))(v9, v5);
    v36 = v40 + v42;
    sub_10057D918(v4, type metadata accessor for DividerView.Style);
    v105.origin.x = v12;
    v105.origin.y = v14;
    v105.size.width = v16;
    v43 = v100;
    v105.size.height = v100;
    v34 = CGRectGetMaxX(v105) - v16;
    v106.origin.x = v12;
    v106.origin.y = v14;
    v106.size.width = v16;
    v106.size.height = v43;
    MinY = CGRectGetMinY(v106);

    v33 = v16;
  }

  v93 = v33;
  v102 = MinY;
  v44 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryDividerView;
  v45 = *&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryDividerView];
  v97 = 0.0;
  v96 = 0.0;
  v98 = 0.0;
  if (v45)
  {
    v46 = OBJC_IVAR____TtC8AppStore11DividerView_style;
    swift_beginAccess();
    sub_1002BB2D0(v45 + v46, v4);
    v47 = qword_10096EE38;
    v48 = v45;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = floor(*&qword_1009D36B8);
    static Dimensions.defaultRoundingRule.getter();
    type metadata accessor for StaticDimension();
    AnyDimension.value(in:rounded:)();
    v51 = v50;
    (*(v6 + 8))(v9, v5);
    v52 = v49 + v51;
    sub_10057D918(v4, type metadata accessor for DividerView.Style);
    v107.origin.x = v12;
    v107.origin.y = v14;
    v107.size.width = v16;
    v53 = v100;
    v107.size.height = v100;
    v99 = CGRectGetMaxX(v107) - v16;
    v108.origin.x = v12;
    v108.origin.y = v14;
    v108.size.width = v16;
    v108.size.height = v53;
    MaxY = CGRectGetMaxY(v108);

    v98 = v52;
    v97 = MaxY - ceil(v52);
    v96 = v16;
  }

  *&v92 = v16;
  v55 = v14;
  v56 = v90;
  if (*&v1[v90])
  {
    v57 = v12;
    if (qword_10096E968 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_10098C730, qword_10098C748);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v59 = v58;
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v57 = v12;
    v59 = 0.0;
  }

  if (qword_10096E970 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_10098C758, qword_10098C770);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v61 = v60;
  (*(v6 + 8))(v9, v5);
  v87 = v59;
  v85 = v21;
  v62 = v94 + v103 + v21 + v95 + v59 + v61;
  v63 = v34;
  v109.origin.x = v34;
  v109.origin.y = v102;
  v64 = v93;
  v109.size.width = v93;
  v65 = v36;
  v109.size.height = v36;
  v66 = CGRectGetHeight(v109) + v62;
  v110.origin.x = v99;
  v110.origin.y = v97;
  v110.size.width = v96;
  v110.size.height = v98;
  v88 = CGRectGetHeight(v110) + v66;
  v111.origin.x = v57;
  v111.origin.y = v55;
  v67 = *&v92;
  *&v111.size.width = v92;
  v68 = v100;
  v111.size.height = v100;
  MinX = CGRectGetMinX(v111);
  v83 = v63;
  v112.origin.x = v63;
  v112.origin.y = v102;
  v112.size.width = v64;
  v84 = v65;
  v112.size.height = v65;
  v70 = v87 + CGRectGetMaxY(v112);
  v113.origin.x = v57;
  v113.origin.y = v55;
  v113.size.width = v67;
  v113.size.height = v68;
  v71 = CGRectGetMinX(v113);
  v87 = MinX;
  v114.origin.x = MinX;
  v82 = v70;
  v114.origin.y = v70;
  v114.size.width = v101;
  v114.size.height = v103;
  v72 = v95 + CGRectGetMaxY(v114);
  v115.origin.x = v57;
  v115.origin.y = v55;
  v115.size.width = v67;
  v115.size.height = v68;
  Width = CGRectGetWidth(v115);
  v116.origin.x = v57;
  v116.origin.y = v55;
  v116.size.width = v67;
  v116.size.height = v68;
  v74 = CGRectGetHeight(v116) - v88;
  v117.origin.x = v57;
  v117.origin.y = v55;
  v117.size.width = v67;
  v117.size.height = v68;
  v75 = CGRectGetMinX(v117);
  v118.origin.x = v71;
  v118.origin.y = v72;
  v118.size.width = Width;
  v118.size.height = v74;
  v76 = CGRectGetMaxY(v118);
  v77 = *&v1[v89];
  if (v77)
  {
    [v77 setFrame:{v83, v102, v93, v84}];
  }

  v78 = *&v1[v56];
  if (v78)
  {
    [v78 setFrame:{v87, v82, v101, v103}];
  }

  [*&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView] setFrame:{v71, v72, Width, v74}];
  v79 = *&v1[v91];
  if (v79)
  {
    [v79 setFrame:{v75, v85 + v76, v86, v94}];
  }

  result = *&v1[v44];
  if (result)
  {
    return [result setFrame:{v99, v97, v96, v98}];
  }

  return result;
}

void sub_10057B5CC(void *a1, uint64_t *a2)
{
  if (*(v2 + *a1) == 1)
  {
    v4 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *a2;
    v6 = *(v2 + *a2);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v2 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v2 + v5) = v4;
    v11 = v4;

    sub_10057B6DC(a2);
  }

  else
  {
    v8 = *a2;
    v9 = *(v2 + *a2);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v2 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v2 + v8) = 0;

    sub_10057B6DC(a2);
  }
}

id sub_10057B6DC(void *a1)
{
  v3 = type metadata accessor for DividerView.Style(0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[*a1];
  if (!v7)
  {
    return [v1 setNeedsLayout];
  }

  v8 = qword_10096EE48;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v3, qword_1009D36D8);
  sub_1002BB2D0(v10, v6);
  v11 = &v9[OBJC_IVAR____TtC8AppStore11DividerView_style];
  swift_beginAccess();
  sub_1002BB334(v6, v11);
  swift_endAccess();
  v12 = &v9[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v13 = *(v11 + 1);
  *v12 = *v11;
  *(v12 + 1) = v13;
  [v9 setNeedsLayout];
  [v9 setNeedsLayout];
  sub_10057D918(v6, type metadata accessor for DividerView.Style);
  result = *&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits];
  if (result)
  {
    [result pageMarginInsets];
    *v12 = v15;
    *(v12 + 1) = v16;
    *(v12 + 2) = v17;
    *(v12 + 3) = v18;
    [v9 setNeedsLayout];
    v19 = [v1 contentView];
    [v19 addSubview:v9];

    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

unint64_t sub_10057B904(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media))
  {
LABEL_9:
    type metadata accessor for VideoCollectionViewCell(0);
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v11 = String._bridgeToObjectiveC()();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [a1 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:isa];

    return v13;
  }

  v3 = ProductMedia.items.getter();
  result = IndexPath.item.getter();
  if ((v3 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    v5 = ProductMediaItem.screenshot.getter();

    if (v5)
    {

      type metadata accessor for ScreenshotCollectionViewCell(0);
      static UICollectionReusableView.defaultReuseIdentifier.getter();
      v6 = String._bridgeToObjectiveC()();

      v7 = IndexPath._bridgeToObjectiveC()().super.isa;
      v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v7];

      v9 = swift_dynamicCastClassUnconditional();
      *(*(v9 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = ProductMedia.platform.getter();

      sub_100617504(v10);

      return v9;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10057BD78(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_10057BE94(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  v3 = ProductMedia.items.getter();

  v4 = IndexPath.item.getter();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:

  v5 = ProductMediaItem.screenshot.getter();
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotSelectionHandler);
    if (v7)
    {
      v8 = *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotSelectionHandler + 8);

      v9 = IndexPath.item.getter();
      v7(v6, v9);
      sub_10011B8E8(v7, v8);
    }

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:1];
  }

  else
  {
  }
}

uint64_t type metadata accessor for ProductMediaCollectionViewCell(uint64_t a1)
{
  result = qword_10098C810;
  if (!qword_10098C810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10057C384(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10057C46C(uint64_t a1, int a2, int a3, void *a4, double a5, double a6, double a7, double a8, double a9)
{
  v160 = a9;
  v150 = a8;
  v146 = a3;
  v145 = a2;
  v144 = type metadata accessor for FloatingPointRoundingRule();
  v147 = *(v144 - 8);
  __chkstk_darwin(v144);
  v15 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = COERCE_DOUBLE(type metadata accessor for AppPlatform());
  v142 = *(*&v143 - 8);
  __chkstk_darwin(*&v143);
  v151 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AspectRatio();
  v155 = *(v17 - 8);
  __chkstk_darwin(v17);
  ObjectType = &v142 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v152 = &v142 - v20;
  __chkstk_darwin(v21);
  v23 = &v142 - v22;
  __chkstk_darwin(v24);
  v26 = &v142 - v25;
  v27 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v27 - 8);
  v157 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v162 = &v142 - v30;
  __chkstk_darwin(v31);
  v163 = &v142 - v32;
  v33 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v33 - 8);
  v148 = &v142 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = ProductMedia.platform.getter();
  v154 = a1;
  v35 = ProductMedia.items.getter();
  v36 = v35;
  if (v35 >> 62)
  {
LABEL_106:
    v37 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v165 = v26;
  v149 = v15;
  v164 = v23;
  v158 = a4;
  if (v37)
  {
    v26 = 0;
    v159 = (v36 & 0xC000000000000001);
    a4 = (v36 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v159)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v26 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_106;
        }

        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_16;
        }
      }

      if (ProductMediaItem.screenshot.getter())
      {
        v38 = dispatch thunk of Artwork.isPortrait.getter();

        if (v38)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!ProductMediaItem.video.getter())
        {

          v156 = 1;
          a4 = v158;
          v15 = v149;
          goto LABEL_21;
        }

        Video.preview.getter();
        v40 = dispatch thunk of Artwork.isPortrait.getter();

        v15 = v149;
        if (v40)
        {
LABEL_18:
          v156 = 1;
          a4 = v158;
LABEL_21:
          v23 = v164;
          goto LABEL_22;
        }
      }

      ++v26;
      v23 = v164;
      if (v39 == v37)
      {
        v156 = 0;
        a4 = v158;
        goto LABEL_22;
      }
    }
  }

  v156 = 0;
LABEL_22:

  type metadata accessor for Screenshots();

  sub_10061B788(v41, v148);

  v42 = ProductMedia.items.getter();
  if (v42 >> 62)
  {
    v37 = v42;
    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v155;

  if (v43 >= 1)
  {
    v45 = ProductMedia.items.getter();
    v46 = v45;
    if (v45 >> 62)
    {
      v43 = v45;
      v109 = _CocoaArrayWrapper.endIndex.getter();
      v46 = v43;
      v47 = v109;
      if (v109)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
LABEL_27:
        if (v47 >= 1)
        {
          v142 = a5;
          v143 = a6;
          v48 = v46;
          ObjectType = swift_getObjectType();
          v49 = 0;
          v152 = (v48 & 0xC000000000000001);
          v50 = (v44 + 56);
          v51 = 0.0;
          v159 = (v44 + 32);
          v52 = (v44 + 48);
          v151 = (v44 + 16);
          v53 = (v44 + 8);
          v155 = v48;
          v154 = v47;
          do
          {
            if (v152)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
            }

            if (ProductMediaItem.screenshot.getter())
            {
              Artwork.size.getter();
              v57 = v162;
              AspectRatio.init(_:_:)();

              v58 = *v50;
              (*v50)(v57, 0, 1, v17);
              v59 = v163;
              (*v159)();
              v58(v59, 0, 1, v17);
            }

            else
            {
              v60 = *v50;
              v61 = 1;
              (*v50)(v162, 1, 1, v17);
              if (ProductMediaItem.video.getter())
              {
                Video.preview.getter();

                Artwork.size.getter();
                v59 = v163;
                AspectRatio.init(_:_:)();

                v61 = 0;
              }

              else
              {
                v59 = v163;
              }

              v60(v59, v61, 1, v17);
              v62 = (*v52)(v162, 1, v17);
              v23 = v164;
              if (v62 != 1)
              {
                sub_10002B894(v162, &unk_1009732A0, &unk_1007B4FE0);
              }
            }

            v63 = MediaPlatform.isPhonePlatform.getter();
            v64 = v59;
            v65 = v157;
            sub_1000727A0(v64, v157);
            v66 = *v52;
            if ((*v52)(v65, 1, v17) == 1)
            {
              AspectRatio.init(_:_:)();
              if (v66(v65, 1, v17) != 1)
              {
                sub_10002B894(v65, &unk_1009732A0, &unk_1007B4FE0);
              }
            }

            else
            {
              (*v159)(v165, v65, v17);
            }

            a4 = v158;
            if ((v156 & v63) != 0)
            {
              v67 = v165;
              if (AspectRatio.isPortrait.getter())
              {
                (*v151)(v23, v67, v17);
              }

              else
              {
                AspectRatio.inverted.getter();
              }

              v68 = 1;
            }

            else
            {
              (*v151)(v23, v165, v17);
              v68 = AspectRatio.isPortrait.getter();
            }

            v69 = [a4 traitCollection];
            v70 = UITraitCollection.isRegularPad.getter();

            if (v70)
            {
              if (v150 >= a7)
              {
                JUScreenClassGetPortraitWidth();
                v71 = 4.0;
                v72 = 2.0;
                v23 = v164;
                if (v84 < a7)
                {
                  JUScreenClassGetPortraitWidth();
                  if (v85 < a7)
                  {
                    v71 = 5.0;
                  }

                  else
                  {
                    v71 = 4.0;
                  }
                }
              }

              else
              {
                JUScreenClassGetLandscapeWidth();
                v71 = 5.0;
                v72 = 2.0;
                v23 = v164;
                if (v73 < a7)
                {
                  JUScreenClassGetLandscapeWidth();
                  if (v74 < a7)
                  {
                    v71 = 6.0;
                  }

                  else
                  {
                    v71 = 5.0;
                  }
                }
              }
            }

            else
            {
              if (v68)
              {
                v72 = 2.0;
              }

              else
              {
                v72 = 1.0;
              }

              if (v68)
              {
                v71 = 3.0;
              }

              else
              {
                v71 = 1.0;
              }

              v23 = v164;
            }

            [a4 pageMarginInsets];
            v76 = v75;
            [a4 pageMarginInsets];
            v78 = v76 + v77;
            PageTraitEnvironment.pageColumnMargin.getter();
            v80 = (v72 + -1.0) * v79 + v72 / v71 * (v160 - (v78 + (v71 + -1.0) * v79));
            v81 = [a4 traitCollection];
            v82 = UITraitCollection.isRegularPad.getter();

            if ((v82 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), AspectRatio.width(fromHeight:)(), v80 < v83))
            {
              AspectRatio.height(fromWidth:)();
            }

            ++v49;
            AspectRatio.height(fromWidth:)();
            v55 = v54;

            v56 = *v53;
            (*v53)(v23, v17);
            v56(v165, v17);
            sub_10002B894(v163, &unk_1009732A0, &unk_1007B4FE0);
            if (v55 > v51)
            {
              v51 = v55;
            }
          }

          while (v154 != v49);

          v15 = v149;
          a6 = v143;
          a5 = v142;
          goto LABEL_110;
        }

        __break(1u);
        goto LABEL_141;
      }
    }

    v51 = 0.0;
    goto LABEL_110;
  }

  v86 = v151;
  MediaPlatform.appPlatform.getter();
  v87 = v142;
  v88 = v143;
  v89 = (*(*&v142 + 88))(v86, COERCE_DOUBLE(*&v143));
  v43 = ObjectType;
  v37 = v152;
  if (v89 == enum case for AppPlatform.phone(_:) || v89 == enum case for AppPlatform.pad(_:) || v89 == enum case for AppPlatform.messages(_:))
  {
    goto LABEL_77;
  }

  if (v89 == enum case for AppPlatform.watch(_:))
  {
    if (qword_10096EB48 == -1)
    {
LABEL_86:
      v91 = sub_1000056A8(v17, qword_1009D2FD0);
      (*(v44 + 16))(v37, v91, v17);
      goto LABEL_78;
    }

LABEL_141:
    swift_once();
    goto LABEL_86;
  }

  if (v89 == enum case for AppPlatform.tv(_:) || v89 == enum case for AppPlatform.mac(_:))
  {
LABEL_77:
    AspectRatio.init(_:_:)();
    goto LABEL_78;
  }

  AspectRatio.init(_:_:)();
  (*(*&v87 + 8))(v151, COERCE_DOUBLE(*&v88));
LABEL_78:
  if (MediaPlatform.isPhonePlatform.getter() & 1) != 0 && (AspectRatio.isPortrait.getter())
  {
    if (AspectRatio.isPortrait.getter())
    {
      (*(v44 + 16))(v43, v37, v17);
    }

    else
    {
      AspectRatio.inverted.getter();
    }

    v90 = 1;
  }

  else
  {
    (*(v44 + 16))(v43, v37, v17);
    v90 = AspectRatio.isPortrait.getter();
  }

  swift_getObjectType();
  v92 = [a4 traitCollection];
  v93 = UITraitCollection.isRegularPad.getter();

  if (v93)
  {
    v94 = sub_1001B2D90(a7, v150);
    v96 = v95;
  }

  else
  {
    if (v90)
    {
      v94 = 2.0;
    }

    else
    {
      v94 = 1.0;
    }

    if (v90)
    {
      v96 = 3.0;
    }

    else
    {
      v96 = 1.0;
    }
  }

  [a4 pageMarginInsets];
  v98 = v97;
  [a4 pageMarginInsets];
  v100 = v98 + v99;
  PageTraitEnvironment.pageColumnMargin.getter();
  v102 = (v94 + -1.0) * v101 + v94 / v96 * (v160 - (v100 + (v96 + -1.0) * v101));
  v103 = [a4 traitCollection];
  v104 = UITraitCollection.isRegularPad.getter();

  v105 = ObjectType;
  if ((v104 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), AspectRatio.width(fromHeight:)(), v102 < v106))
  {
    AspectRatio.height(fromWidth:)();
  }

  AspectRatio.height(fromWidth:)();
  v51 = v107;
  v108 = *(v44 + 8);
  v108(v105, v17);
  v108(v152, v17);
LABEL_110:
  sub_10002849C(&unk_1009856C0, qword_1007C9C90);
  inited = swift_initStackObject();
  v165 = xmmword_1007B10D0;
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = v51;
  v166 = inited;
  v111 = v144;
  if (a5 >= COERCE_DOUBLE(1))
  {
    v112 = swift_initStackObject();
    *(v112 + 16) = xmmword_1007B1E00;
    if (qword_10096E968 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_10098C730, qword_10098C748);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v114 = v113;
    v115 = *(v147 + 8);
    v115(v15, v111);
    *(v112 + 32) = v114;
    *(v112 + 40) = a5;
    if (qword_10096E978 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_10098C780, qword_10098C798);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v117 = v116;
    v115(v15, v111);
    *(v112 + 48) = v117;
    sub_100394464(v112);
  }

  if (a6 >= COERCE_DOUBLE(1))
  {
    v118 = swift_initStackObject();
    *(v118 + 16) = xmmword_1007B1890;
    *(v118 + 32) = a6;
    if (qword_10096E980 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009D2A00, qword_1009D2A18);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v120 = v119;
    (*(v147 + 8))(v15, v111);
    *(v118 + 40) = v120;
    sub_100394464(v118);
  }

  v121 = swift_initStackObject();
  *(v121 + 16) = v165;
  if (qword_10096E970 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_10098C758, qword_10098C770);
  swift_getObjectType();
  v122 = v149;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v124 = v123;
  (*(v147 + 8))(v122, v111);
  *(v121 + 32) = v124;
  sub_100394464(v121);
  v125 = swift_initStackObject();
  *(v125 + 16) = xmmword_1007B1890;
  v126 = 0.0;
  v127 = 0.0;
  if (v145)
  {
    type metadata accessor for DividerView(0);
    if (qword_10096EE48 != -1)
    {
      swift_once();
    }

    v128 = type metadata accessor for DividerView.Style(0);
    v129 = sub_1000056A8(v128, qword_1009D36D8);
    v127 = sub_1006DA268(v129, a4);
  }

  *(v125 + 32) = v127;
  if (v146)
  {
    type metadata accessor for DividerView(0);
    if (qword_10096EE48 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for DividerView.Style(0);
    v131 = sub_1000056A8(v130, qword_1009D36D8);
    v126 = sub_1006DA268(v131, a4);
  }

  *(v125 + 40) = v126;
  sub_100394464(v125);
  v132 = *(v166 + 16);
  if (!v132)
  {
    v133 = v148;
    goto LABEL_139;
  }

  v133 = v148;
  if (v132 <= 3)
  {
    v134 = 0;
    v135 = 0.0;
LABEL_137:
    v138 = v132 - v134;
    v139 = (v166 + 8 * v134 + 32);
    do
    {
      v140 = *v139++;
      v135 = v135 + v140;
      --v138;
    }

    while (v138);
    goto LABEL_139;
  }

  v134 = v132 & 0x7FFFFFFFFFFFFFFCLL;
  v136 = (v166 + 48);
  v135 = 0.0;
  v137 = v132 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v135 = v135 + *(v136 - 2) + *(v136 - 1) + *v136 + v136[1];
    v136 += 4;
    v137 -= 4;
  }

  while (v137);
  if (v132 != v134)
  {
    goto LABEL_137;
  }

LABEL_139:
  sub_10057D918(v133, type metadata accessor for ScreenshotDisplayConfiguration);

  return v160;
}

uint64_t sub_10057D918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10057D978(uint64_t a1, void *a2, __n128 a3)
{
  v3 = a3.n128_f64[0];
  v6 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v6 - 8);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AspectRatio();
  v8 = *(v68 - 8);
  __chkstk_darwin(v68);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v66 = a1;
  result = ProductMedia.items.getter();
  v15 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_46:

    return _swiftEmptyArrayStorage;
  }

  v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_46;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v67 = v15 & 0xC000000000000001;
    v59 = (v8 + 16);
    v60 = (v8 + 8);
    v18 = _swiftEmptyArrayStorage;
    v63 = v13;
    v64 = v10;
    v61 = v16;
    v62 = v15;
    while (1)
    {
      if (v67)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v20 = ProductMediaItem.screenshot.getter();
        if (v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);

        v20 = ProductMediaItem.screenshot.getter();
        if (v20)
        {
LABEL_9:
          v21 = v20;
          v69 = v19;
LABEL_13:
          Artwork.size.getter();
          AspectRatio.init(_:_:)();
          v22 = ProductMedia.hasPortraitPhoneMedia.getter();
          type metadata accessor for Screenshots();
          v23 = ProductMedia.platform.getter();
          v24 = v65;
          sub_10061B788(v23, v65);

          v25 = *(v24 + 64);
          v26 = *(v24 + 80);
          sub_10057D918(v24, type metadata accessor for ScreenshotDisplayConfiguration);
          swift_getObjectType();
          [a2 pageContainerSize];
          v28 = v27;
          v30 = v29;
          if (v22)
          {
            v31 = AspectRatio.isPortrait.getter();
            v32 = v64;
            if (v31)
            {
              (*v59)(v64, v13, v68);
            }

            else
            {
              AspectRatio.inverted.getter();
            }

            v33 = 1;
          }

          else
          {
            v32 = v64;
            (*v59)(v64, v13, v68);
            v33 = AspectRatio.isPortrait.getter();
          }

          v34 = [a2 traitCollection];
          v35 = UITraitCollection.isRegularPad.getter();

          if (v35)
          {
            if (v30 >= v28)
            {
              JUScreenClassGetPortraitWidth();
              v36 = 4.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v57)
              {
                JUScreenClassGetPortraitWidth();
                if (v28 > v58)
                {
                  v36 = 5.0;
                }

                else
                {
                  v36 = 4.0;
                }
              }
            }

            else
            {
              JUScreenClassGetLandscapeWidth();
              v36 = 5.0;
              v37 = 2.0;
              v13 = v63;
              if (v28 > v38)
              {
                JUScreenClassGetLandscapeWidth();
                if (v28 > v39)
                {
                  v36 = 6.0;
                }

                else
                {
                  v36 = 5.0;
                }
              }
            }
          }

          else
          {
            if (v33)
            {
              v37 = 2.0;
            }

            else
            {
              v37 = 1.0;
            }

            if (v33)
            {
              v36 = 3.0;
            }

            else
            {
              v36 = 1.0;
            }

            v13 = v63;
          }

          [a2 pageMarginInsets];
          v41 = v40;
          [a2 pageMarginInsets];
          v43 = v41 + v42;
          PageTraitEnvironment.pageColumnMargin.getter();
          v45 = (v37 + -1.0) * v44 + v37 / v36 * (v3 - (v43 + (v36 + -1.0) * v44));
          v46 = [a2 traitCollection];
          v47 = UITraitCollection.isRegularPad.getter();

          if ((v47 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), AspectRatio.width(fromHeight:)(), v45 < v48))
          {
            AspectRatio.height(fromWidth:)();
            v48 = v45;
          }

          v49 = v48 - (v25 + v26);
          AspectRatio.height(fromWidth:)();
          v51 = v50;
          v52 = *v60;
          v53 = v68;
          (*v60)(v32, v68);
          v52(v13, v53);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1000337F0(0, v18[2] + 1, 1, v18);
          }

          v16 = v61;
          v15 = v62;
          v55 = v18[2];
          v54 = v18[3];
          if (v55 >= v54 >> 1)
          {
            v18 = sub_1000337F0((v54 > 1), v55 + 1, 1, v18);
          }

          v18[2] = v55 + 1;
          v56 = &v18[3 * v55];
          *(v56 + 4) = v21;
          v56[5] = v49;
          *(v56 + 6) = v51;
          goto LABEL_6;
        }
      }

      if (ProductMediaItem.video.getter())
      {
        v69 = v19;
        v21 = Video.preview.getter();

        goto LABEL_13;
      }

LABEL_6:
      if (v16 == ++v17)
      {

        return v18;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_10057DF24(uint64_t a1)
{
  v2 = v1;
  sub_10002C0AC(a1, v26);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for ProductMedia();
  if (swift_dynamicCast())
  {
    v3 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v4 = swift_allocObject();
      *(v4 + 16) = sub_100397BF0(_swiftEmptyArrayStorage);
      *(v4 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v4 + 32) = &off_1008C90C0;
      swift_unknownObjectWeakAssign();
      *&v1[v3] = v4;
      swift_retain_n();

      v5 = *&v1[v3];
      if (v5)
      {
        *(v5 + 32) = &off_1008C90C0;
        swift_unknownObjectWeakAssign();
      }
    }

    swift_retain_n();
    v6 = [v1 traitCollection];
    UITraitCollection.isRegularPad.getter();

    v7 = *&v2[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits];
      if (!v8)
      {
LABEL_26:
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
      [v2 bounds];
      v10.n128_u64[0] = v9;
      v11 = sub_10057D978(v7, v8, v10);

      swift_unknownObjectRelease();
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    v25 = ProductMedia.hasPortraitPhoneMedia.getter() & 1;
    v12 = sub_100262514(v11, v25);
    v13 = v12;
    v24 = v11[2];
    if (v24)
    {
      v14 = 0;
      v15 = v11 + 6;
      v22 = v12 & 0xC000000000000001;
      v23 = v12 >> 62;
      while (v14 < v11[2])
      {
        v16 = *(v15 - 2);
        v17 = *(v15 - 1);
        v18 = *v15;
        if (v23)
        {
          v19 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v19 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v14 == v19)
        {
          goto LABEL_22;
        }

        if (v22)
        {

          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }
        }

        v27 = 0;
        memset(v26, 0, sizeof(v26));
        v20 = swift_allocObject();
        swift_weakInit();
        v21 = swift_allocObject();
        *(v21 + 16) = v25;
        *(v21 + 24) = v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v17;
        *(v21 + 48) = v18;
        *(v21 + 56) = v14;

        ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

        sub_10002B894(v26, &qword_10096FB90, &qword_1007B2A50);

        v15 += 3;
        if (v24 == ++v14)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_22:
  }
}

void sub_10057E2E8(objc_class *a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 window];
  if (v10)
  {

    if (*&v2[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media])
    {
      v11 = *&v2[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView];

      if ([v11 numberOfSections] >= 1 && objc_msgSend(v11, "numberOfItemsInSection:", 0) > a2)
      {
        v12 = ProductMedia.items.getter();
        v13 = v12 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v13 > a2)
        {
          v14 = ProductMedia.items.getter();
          if ((v14 & 0xC000000000000001) == 0)
          {
            if (a2 < 0)
            {
              __break(1u);
            }

            else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
            {

              goto LABEL_12;
            }

            __break(1u);
            return;
          }

          specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:

          sub_10002849C(&qword_100980550, &qword_1007B1290);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1007B1890;
          *(v15 + 32) = 0;
          *(v15 + 40) = a2;
          IndexPath.init(arrayLiteral:)();
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*(v6 + 8))(v9, v5);
          v17 = [v11 cellForItemAtIndexPath:isa];

          if (v17)
          {
            type metadata accessor for ScreenshotCollectionViewCell(0);
            v18 = swift_dynamicCastClass();
            if (v18)
            {
              v19 = v18;
              v20 = v17;
              if (ProductMediaItem.screenshot.getter())
              {

                v21 = *(*(v19 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
                v27.value.super.isa = a1;
                v27.is_nil = 1;
                ArtworkView.show(image:isAnimationPermitted:)(v27, v22);

                goto LABEL_26;
              }
            }

            type metadata accessor for VideoCollectionViewCell(0);
            if (swift_dynamicCastClass())
            {
              v17 = v17;
              if (ProductMediaItem.video.getter())
              {

                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v24 = Strong;
                  [*(Strong + qword_100988CC0) setImage:a1];
                }
              }
            }
          }

LABEL_26:

          return;
        }
      }
    }
  }
}

void sub_10057E688()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_flowLayout;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v3 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_compoundScrollObserver;
  v4 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v1 + v3) = CompoundScrollObserver.init(children:)();
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotFetcher) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin) = 0x4020000000000000;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits) = 0;
  v5 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_itemLayoutContext;
  v6 = type metadata accessor for ItemLayoutContext();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryDividerView) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryDividerView) = 0;
  v7 = (v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  *v7 = 0;
  v7[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10057E81C()
{
  if (!*(v0 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits) || !*(v0 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media))
  {
    return 0;
  }

  v1 = ProductMedia.items.getter();

  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

void sub_10057E8B8(void *a1, __n128 a2)
{
  v4 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  v13 = type metadata accessor for AspectRatio();
  v59 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v56 - v17;
  if (!*(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  [a1 frame];
  if (v19 <= 0.0 || v20 <= 0.0)
  {

    return;
  }

  v57 = v2;
  v21 = v19;
  v22 = ProductMedia.items.getter();
  v23 = IndexPath.item.getter();
  if ((v22 & 0xC000000000000001) == 0)
  {
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v23 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(v22 + 8 * v23 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:

  v25 = ProductMediaItem.screenshot.getter();
  v58 = v24;
  if (v25)
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    v26 = v59;
    v27 = *(v59 + 56);
    v27(v9, 0, 1, v13);
    (*(v26 + 32))(v12, v9, v13);
    v27(v12, 0, 1, v13);
    v28 = (*(v26 + 48))(v12, 1, v13);
  }

  else
  {
    v56 = *(v59 + 56);
    v56(v9, 1, 1, v13);
    if (ProductMediaItem.video.getter())
    {
      Video.preview.getter();

      Artwork.size.getter();
      AspectRatio.init(_:_:)();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v56(v12, v29, 1, v13);
    v26 = v59;
    v30 = *(v59 + 48);
    if (v30(v9, 1, v13) != 1)
    {
      sub_10002B894(v9, &unk_1009732A0, &unk_1007B4FE0);
    }

    v28 = v30(v12, 1, v13);
  }

  if (v28 == 1)
  {

    sub_10002B894(v12, &unk_1009732A0, &unk_1007B4FE0);
    return;
  }

  (*(v26 + 32))(v18, v12, v13);
  type metadata accessor for Screenshots();
  v31 = ProductMedia.platform.getter();
  sub_10061B788(v31, v6);

  v32 = ProductMedia.hasPortraitPhoneMedia.getter();
  v33 = *(v57 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits);
  if (!v33)
  {
    goto LABEL_42;
  }

  v34 = v32;
  [swift_unknownObjectRetain() pageContainerSize];
  v36 = v35;
  v38 = v37;
  if (v34)
  {
    if (AspectRatio.isPortrait.getter())
    {
      (*(v26 + 16))(v15, v18, v13);
    }

    else
    {
      AspectRatio.inverted.getter();
    }

    v39 = 1;
  }

  else
  {
    (*(v26 + 16))(v15, v18, v13);
    v39 = AspectRatio.isPortrait.getter();
  }

  swift_getObjectType();
  v40 = [v33 traitCollection];
  v41 = UITraitCollection.isRegularPad.getter();

  if (v41)
  {
    v42 = sub_1001B2D90(v36, v38);
    v44 = v43;
  }

  else
  {
    if (v39)
    {
      v42 = 2.0;
    }

    else
    {
      v42 = 1.0;
    }

    if (v39)
    {
      v44 = 3.0;
    }

    else
    {
      v44 = 1.0;
    }
  }

  v45 = v59;
  [v33 pageMarginInsets];
  v47 = v46;
  [v33 pageMarginInsets];
  v49 = v47 + v48;
  PageTraitEnvironment.pageColumnMargin.getter();
  v51 = (v42 + -1.0) * v50 + v42 / v44 * (v21 - (v49 + (v44 + -1.0) * v50));
  v52 = [v33 traitCollection];
  v53 = UITraitCollection.isRegularPad.getter();

  if ((v53 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), AspectRatio.width(fromHeight:)(), v51 < v54))
  {
    AspectRatio.height(fromWidth:)();
  }

  AspectRatio.height(fromWidth:)();
  swift_unknownObjectRelease();

  v55 = *(v45 + 8);
  v55(v15, v13);
  sub_10057D918(v6, type metadata accessor for ScreenshotDisplayConfiguration);
  v55(v18, v13);
}

void sub_10057EF80(void *a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v4 - 8);
  v6 = v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v78 = v68 - v8;
  v9 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v9 - 8);
  v77 = v68 - v10;
  v11 = type metadata accessor for VideoControls();
  __chkstk_darwin(v11 - 8);
  __chkstk_darwin(v12);
  v13 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v13 - 8);
  v15 = v68 - v14;
  v16 = type metadata accessor for VideoFillMode();
  v76 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for VideoConfiguration();
  __chkstk_darwin(v19);
  v23 = *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media);
  if (!v23)
  {
    return;
  }

  v72 = v6;
  v73 = v22;
  v74 = v20;
  v75 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v79 = v23;
  v24 = ProductMedia.items.getter();
  v25 = IndexPath.item.getter();
  if ((v24 & 0xC000000000000001) == 0)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v24 + 8 * v25 + 32);

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:

  type metadata accessor for ScreenshotCollectionViewCell(0);
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = a1;
    v30 = ProductMediaItem.screenshot.getter();
    if (v30)
    {
      v31 = v30;
      v32 = *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotFetcher);
      if (v32)
      {
        swift_beginAccess();
        v33 = *(v32 + 16);

        v34 = sub_10057A264(v31, v33);

        if (v34)
        {
          v35 = *(*(v28 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
          v36 = v34;
          v37 = v35;
          v38 = ArtworkView.image.getter();

          if (v38)
          {
            sub_100005744(0, &qword_1009744B0, UIImage_ptr);
            v40 = v36;
            v41 = static NSObject.== infix(_:_:)();

            v42 = v41 ^ 1;
          }

          else
          {
            v42 = 1;
          }

          v82.is_nil = v42 & 1;
          v82.value.super.isa = v34;
          ArtworkView.setImage(image:animated:)(v82, v39);
        }

        else
        {
        }

        return;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  type metadata accessor for VideoCollectionViewCell(0);
  v43 = swift_dynamicCastClass();
  if (!v43)
  {
LABEL_24:

LABEL_25:

    return;
  }

  v71 = v43;
  v44 = a1;
  v45 = ProductMediaItem.video.getter();
  if (!v45)
  {

    goto LABEL_24;
  }

  v46 = v45;
  v70 = v26;
  if (!*(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph))
  {

    goto LABEL_25;
  }

  v68[1] = *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph);
  v69 = v44;
  v47 = *(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotFetcher);
  if (v47)
  {

    v48 = Video.preview.getter();
    swift_beginAccess();
    v49 = *(v47 + 16);

    v50 = sub_10057A264(v48, v49);

    if (v50)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v52 = Strong;
        [*(Strong + qword_100988CC0) setImage:v50];
      }
    }
  }

  else
  {
  }

  (*(v76 + 104))(v18, enum case for VideoFillMode.scaleAspectFit(_:), v16);
  Video.preview.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();

  v53 = type metadata accessor for AspectRatio();
  (*(*(v53 - 8) + 56))(v15, 0, 1, v53);
  Video.playbackControls.getter();
  Video.autoPlayPlaybackControls.getter();
  LODWORD(v76) = Video.canPlayFullScreen.getter();
  Video.allowsAutoPlay.getter();
  Video.looping.getter();
  ProductMedia.platform.getter();
  MediaPlatform.deviceCornerRadiusFactor.getter();
  v54 = v46;

  VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
  type metadata accessor for VideoViewManager();
  BaseObjectGraph.inject<A>(_:)();
  Video.playbackId.getter();
  v55 = v77;
  Video.videoUrl.getter();
  v56 = type metadata accessor for URL();
  (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
  v57 = v78;
  Video.templateMediaEvent.getter();
  v58 = v72;
  v76 = v54;
  Video.templateClickEvent.getter();
  type metadata accessor for VideoView(0);
  sub_10057FCB8(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
  v59 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
  sub_10002B894(v58, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v57, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v55, &qword_100982460, &unk_1007B5C90);
  sub_10002B894(&v80, &qword_10096FB90, &qword_1007B2A50);
  v60 = v59;
  v61 = v71;
  sub_100192A30();
  swift_unknownObjectWeakAssign();
  v62 = swift_unknownObjectWeakLoadStrong();
  if (v62)
  {
    v63 = v62;
    v64 = [v61 contentView];
    [v64 addSubview:v63];

    [v61 setNeedsLayout];
  }

  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v65 = v80;
  v66 = swift_unknownObjectWeakLoadStrong();
  sub_10057FCB8(&qword_100977770, type metadata accessor for VideoCollectionViewCell, &unk_1007BCC40);
  v67 = v69;
  dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();

  (*(v73 + 8))(v75, v74);
}

void sub_10057F9A8(void *a1)
{
  type metadata accessor for ScreenshotCollectionViewCell(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
    v5 = a1;
    v9 = v4;
    ArtworkView.image.setter();
  }

  else
  {
    type metadata accessor for VideoCollectionViewCell(0);
    if (swift_dynamicCastClass() && *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph))
    {
      type metadata accessor for VideoPlaybackCoordinator();
      type metadata accessor for BaseObjectGraph();
      v6 = a1;

      inject<A, B>(_:from:)();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_10057FCB8(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
      }

      sub_10057FCB8(&qword_100977770, type metadata accessor for VideoCollectionViewCell, &unk_1007BCC40);
      v8 = v6;
      dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
    }
  }
}

void sub_10057FBB4(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits))
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

  if (*(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10057FCB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10057FD00()
{
  v0 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
  sub_100005644(v0, qword_1009D2A68);
  sub_1000056A8(v0, qword_1009D2A68);
  return PreferenceKey.init(_:)();
}

char *sub_10057FD78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations(0);
  swift_allocObject();
  *&v4[v11] = sub_1004FA640();
  *&v4[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource] = 0;
  v12 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_userDefaults;
  *&v5[v12] = [objc_opt_self() standardUserDefaults];
  v13 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_notificationCenter;
  *&v5[v13] = [objc_opt_self() defaultCenter];
  *&v5[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_debugSections] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_objectGraph] = a1;
  v14 = objc_allocWithZone(UICollectionViewFlowLayout);

  v15 = [v14 init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v28, "initWithCollectionViewLayout:", v15);

  if (a3)
  {
    v17 = v16;
    sub_100583854(a2, a3, a4);

    v18 = a4;
  }

  else
  {
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1007B0B70;
    v19 = objc_allocWithZone(type metadata accessor for DebugMenuSettings());
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v27.receiver = v19;
    v27.super_class = type metadata accessor for DebugSettingsProvider();
    v20 = v16;
    *(v18 + 32) = objc_msgSendSuper2(&v27, "init");
  }

  v21 = sub_1005834AC(v18, a1);

  *&v16[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_debugSections] = v21;

  v22 = v16;
  if (a3)
  {
  }

  v23 = String._bridgeToObjectiveC()();

  [v16 setTitle:v23];

  v24 = [v16 navigationItem];
  v25 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v16 action:"dismissFrom:"];

  [v24 setRightBarButtonItem:v25];

  return v16;
}

id sub_1005800A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UITraitOverrides();
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLoad", v4);
  v5 = sub_100580344();
  v6 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource;
  v7 = *&v1[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource] = v5;

  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    aBlock[4] = sub_100584378;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002E9BD4;
    aBlock[3] = &unk_1008C9288;
    v12 = _Block_copy(aBlock);

    v13 = [v11 initWithSectionProvider:v12];
    _Block_release(v12);

    [v9 setCollectionViewLayout:v13];

    result = [v1 collectionView];
    if (result)
    {
      v14 = result;
      [result setDataSource:*&v1[v6]];

      [*&v1[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_notificationCenter] addObserver:v1 selector:"userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:*&v1[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_userDefaults]];
      sub_1005805FC();
      v15 = UIContentSizeCategoryLarge;
      UIViewController.traitOverrides.getter();
      UIMutableTraits.preferredContentSizeCategory.setter();
      return UIViewController.traitOverrides.setter();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100580344()
{
  v1 = sub_10002849C(&qword_100972CF8, &qword_1007B3DF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005744(0, &qword_100978E10, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  result = [v0 collectionView];
  if (result)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_100584388;
    *(v10 + 24) = v9;
    v11 = objc_allocWithZone(sub_10002849C(&qword_10098C8C0, qword_1007D5F00));
    v12 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    (*(v2 + 16))(v4, v7, v1);
    v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v14 = swift_allocObject();
    (*(v2 + 32))(v14 + v13, v4, v1);
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    (*(v2 + 8))(v7, v1);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005805FC()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10098C898, "d;\a");
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - v4;
  v40 = sub_10002849C(&qword_10098C8A0, &qword_1007D5EF8);
  v29 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = &v28 - v6;
  type metadata accessor for DebugSection();
  v8 = type metadata accessor for DebugSetting();
  sub_100007874(&qword_10098C8B0, type metadata accessor for DebugSection, &unk_1007DAD98);
  v9 = sub_100007874(&qword_10098C8B8, type metadata accessor for DebugSetting, &unk_1007D4758);
  v41 = v7;
  v38 = v9;
  v39 = v8;
  NSDiffableDataSourceSnapshot.init()();
  v10 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_debugSections;
  v11 = *(v0 + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_debugSections);
  if (v11 >> 62)
  {
    goto LABEL_45;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v34 = v1;
  if (v12)
  {
    if (v12 < 1)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v42 = v10;
    v43 = v3;

    v13 = 0;
    v44 = xmmword_1007B0B70;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v11 + 8 * v13 + 32);
      }

      ++v13;
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v15 = swift_allocObject();
      *(v15 + 16) = v44;
      *(v15 + 32) = v14;

      NSDiffableDataSourceSnapshot.appendSections(_:)(v15);
    }

    while (v12 != v13);

    v1 = v34;
    v10 = v42;
    v3 = v43;
  }

  v37 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource;
  v16 = *(v1 + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource);
  if (!v16)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v17 = v16;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  v11 = *(v1 + v10);
  if (v11 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_14:
      v30 = v11 + 32;
      v31 = v11 & 0xFFFFFFFFFFFFFF8;
      v35 = (v3 + 8);
      v36 = v11 & 0xC000000000000001;

      v3 = 0;
      v44 = xmmword_1007B0B70;
      v32 = v10;
      v33 = v11;
      while (1)
      {
        if (v36)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v19 = __OFADD__(v3++, 1);
          if (v19)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v3 >= *(v31 + 16))
          {
            goto LABEL_44;
          }

          v18 = *(v30 + 8 * v3);

          v19 = __OFADD__(v3++, 1);
          if (v19)
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            v12 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_3;
          }
        }

        NSDiffableDataSourceSectionSnapshot.init()();
        v20 = *(v18 + 48);
        if (v20 >> 62)
        {
          v21 = _CocoaArrayWrapper.endIndex.getter();
          if (!v21)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v21)
          {
            goto LABEL_36;
          }
        }

        if (v21 < 1)
        {
          goto LABEL_43;
        }

        v42 = v18;
        v43 = v3;

        for (i = 0; i != v21; ++i)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v23 = *(v20 + 8 * i + 32);
          }

          sub_10002849C(&qword_100973210, qword_1007B0BB0);
          v24 = swift_allocObject();
          *(v24 + 16) = v44;
          *(v24 + 32) = v23;
          v45 = 0;

          NSDiffableDataSourceSectionSnapshot.append(_:to:)();

          type metadata accessor for MenuDebugSetting();
          v25 = swift_dynamicCastClass();
          if (v25)
          {
            if (*(v25 + 72) >> 62)
            {

              _bridgeCocoaArray<A>(_:)();
            }

            else
            {
              swift_bridgeObjectRetain_n();

              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
            }

            v45 = v23;
            NSDiffableDataSourceSectionSnapshot.append(_:to:)();
          }

          else
          {
          }
        }

        v11 = v33;
        v1 = v34;
        v10 = v32;
        v18 = v42;
        v3 = v43;
LABEL_36:
        v26 = *(v1 + v37);
        if (!v26)
        {
          goto LABEL_49;
        }

        v45 = v18;
        v27 = v26;
        UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

        (*v35)(v5, v2);

        if (v3 == v10)
        {

          break;
        }
      }
    }
  }

  (*(v29 + 8))(v41, v40);
}

id sub_100580C6C()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_notificationCenter] removeObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100580E38(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v3 = sub_10002849C(&qword_10098C8A0, &qword_1007D5EF8);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICollectionLayoutListConfiguration();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v10, v16);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v6);
  UICollectionLayoutListConfiguration.headerMode.setter();
  sub_100005744(0, &unk_100990AB0, NSCollectionLayoutSection_ptr);
  v19 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v15 + 8))(v18, v14);
    return;
  }

  v21 = v15;
  v22 = *(Strong + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource);
  v23 = Strong;
  v24 = v22;

  if (!v22)
  {
    goto LABEL_16;
  }

  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v25 = v40;
  v26 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v39 + 8))(v5, v25);
  v27 = v14;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v41)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v28 = *(v26 + 8 * v41 + 32);

LABEL_7:

  v29 = *(v28 + 40);
  v30 = *(v28 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v29) & 0xF;
  }

  if (v30)
  {
    v31 = objc_opt_self();
    v32 = [v31 fractionalWidthDimension:1.0];
    v33 = [v31 estimatedDimension:44.0];
    v34 = [objc_opt_self() sizeWithWidthDimension:v32 heightDimension:v33];

    v35 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v34 elementKind:UICollectionElementKindSectionHeader alignment:1];
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1007B0B70;
    *(v36 + 32) = v35;
    sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v37 = v35;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 setBoundarySupplementaryItems:isa];

    (*(v21 + 8))(v18, v27);
  }

  else
  {
    (*(v21 + 8))(v18, v14);
  }
}

unint64_t sub_1005813A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_10098C8A0, &qword_1007D5EF8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v20[1] = a1;
    v16 = *(result + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource);
    if (v16)
    {
      v17 = v16;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v18 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      (*(v11 + 8))(v13, v10);
      result = IndexPath.subscript.getter();
      if ((v18 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_7;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_7:

        static UIListContentConfiguration.groupedHeader()();

        UIListContentConfiguration.text.setter();
        v21[3] = v6;
        v21[4] = &protocol witness table for UIListContentConfiguration;
        v19 = sub_1000056E0(v21);
        (*(v7 + 16))(v19, v9, v6);
        UICollectionViewCell.contentConfiguration.setter();

        return (*(v7 + 8))(v9, v6);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10058163C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    v9 = sub_1004FA834(a1, a3, a2);

    if (v9)
    {
      return v9;
    }
  }

  _StringGuts.grow(_:)(55);
  v11._object = 0x800000010081A750;
  v11._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v11);
  type metadata accessor for IndexPath();
  sub_100007874(&qword_10098C8C8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1005817BC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong collectionView];

    if (v3)
    {
      [v3 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1005818A0(void *a1, uint64_t a2)
{
  v142 = sub_10002849C(&qword_10098C898, "d;\a");
  v139 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v132 - v5;
  v145 = sub_10002849C(&qword_10098C8A0, &qword_1007D5EF8);
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v140 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v153 = &v132 - v8;
  __chkstk_darwin(v9);
  v157 = &v132 - v10;
  v151 = type metadata accessor for FlowOrigin();
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v152 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for FlowAnimationBehavior();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v150 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FlowPresentationContext();
  v146 = *(v13 - 8);
  __chkstk_darwin(v13);
  v155 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v15 - 8);
  v154 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v17 - 8);
  v19 = &v132 - v18;
  v20 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v20 - 8);
  v22 = &v132 - v21;
  v23 = type metadata accessor for FlowPage();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v27 - 8);
  v29 = &v132 - v28;
  v159 = v2;
  v144 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource;
  v30 = *&v2[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource];
  if (!v30)
  {
    __break(1u);
    goto LABEL_63;
  }

  v31 = v30;
  v158 = a2;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v32 = v164;
  if (!v164)
  {
    return;
  }

  v156 = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;
    v35 = *(v33 + 72);
    if (v35)
    {
      v36 = v35();
      v153 = v37;
    }

    else
    {
      v36 = 0;
      v153 = 0;
    }

    v139 = v36;
    v45 = *(v34 + 88);
    if (v45)
    {
      v134 = v19;
      v135 = v24;
      v137 = v13;
      v142 = v32;
      v46 = *(v34 + 64);
      v133 = *(v34 + 56);
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1007B0B70;
      *(v47 + 32) = v45;
      v48 = *&v159[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_objectGraph];
      v49 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      v141 = v45;
      v140 = v46;

      v136 = v48;
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      v138 = v49;
      if (v51(v29, 1, v49) == 1)
      {

        v52 = sub_10002B894(v29, &unk_100972A00, &unk_1007B3130);
      }

      else
      {
        v166 = 0;
        v164 = 0u;
        v165 = 0u;
        (*(v135 + 104))(v26, enum case for FlowPage.debugSettings(_:), v23);
        v54 = type metadata accessor for URL();
        (*(*(v54 - 8) + 56))(v22, 1, 1, v54);
        v55 = type metadata accessor for ReferrerData();
        (*(*(v55 - 8) + 56))(v134, 1, 1, v55);
        v160 = v133;
        v161 = v140;
        v162 = v47;
        v163 = &type metadata for DebugMenuPage;
        static ActionMetrics.notInstrumented.getter();
        (*(v146 + 104))(v155, enum case for FlowPresentationContext.push(_:), v137);
        (*(v147 + 104))(v150, enum case for FlowAnimationBehavior.infer(_:), v148);
        (*(v149 + 104))(v152, enum case for FlowOrigin.inapp(_:), v151);
        v56 = v50;
        v57 = static FlowActionPresentation.stackPush.getter();
        v59 = v58;
        type metadata accessor for FlowAction();
        swift_allocObject();
        v129[1] = v57;
        v130 = v59;
        v129[0] = 0;
        v60 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
        sub_1005F9C8C(v60, 1, v136, v29);

        v52 = (*(v56 + 8))(v29, v138);
      }

      v32 = v142;
      v53 = v159;
    }

    else
    {
      v53 = v159;
      v52 = (*(v34 + 96))(*&v159[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_objectGraph]);
    }

    v61 = v157;
    v62 = v153;
    if (!v153)
    {
      goto LABEL_35;
    }

    v63 = *(v34 + 72);
    if (!v63)
    {
      goto LABEL_34;
    }

    v64 = v63(v52);
    if (!v65)
    {
      goto LABEL_34;
    }

    if (v64 == v139 && v65 == v62 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_33;
    }

    v86 = v144;
    v87 = *&v53[v144];
    if (v87)
    {
      v88 = v87;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1007B0B70;
      *(v89 + 32) = v32;

      v90 = v145;
      NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v89);

      v91 = *&v53[v86];
      if (v91)
      {
        v92 = v91;

        dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

        (*(v143 + 8))(v61, v90);
        goto LABEL_35;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  type metadata accessor for ActionDebugSetting();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = v38;
    v40 = *(v38 + 88);
    v41 = v159;
    if (v40)
    {
      v42 = v40();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v72 = v153;
    v73 = (*(v39 + 104))(*&v41[OBJC_IVAR____TtC8AppStore23DebugMenuViewController_objectGraph]);
    if (!v44)
    {
      goto LABEL_35;
    }

    v74 = *(v39 + 88);
    if (!v74)
    {
      goto LABEL_34;
    }

    v75 = v74(v73);
    if (!v76)
    {
      goto LABEL_34;
    }

    if (v75 == v42 && v76 == v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
LABEL_33:

LABEL_34:

      goto LABEL_35;
    }

    v99 = v144;
    v100 = *&v41[v144];
    if (v100)
    {
      v101 = v100;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1007B0B70;
      *(v102 + 32) = v32;

      v103 = v145;
      NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v102);

      v104 = *&v41[v99];
      if (v104)
      {
        v105 = v104;

        dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

        (*(v143 + 8))(v72, v103);
        goto LABEL_35;
      }

      goto LABEL_66;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  type metadata accessor for StringPreferencesDebugSetting(0);
  v66 = swift_dynamicCastClass();
  v67 = v159;
  if (!v66)
  {
    type metadata accessor for StringUserDefaultsDebugSetting();
    v78 = swift_dynamicCastClass();
    if (v78)
    {
      v80 = *(v78 + 56);
      v79 = *(v78 + 64);
      __chkstk_darwin(v78);
      v130 = v67;
      v131 = v81;
      v82 = v81;
      v83 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v82;
      LOBYTE(v82) = v82[88];
      swift_retain_n();

      v85 = sub_100583F3C(v80, v79, sub_100584334, v129, sub_10058433C, v84, v82);

      [v67 presentViewController:v85 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for PromptActionDebugSetting();
    v93 = swift_dynamicCastClass();
    if (v93)
    {
      v94 = v93;
      v95 = v93[8];
      v157 = v93[7];
      v96 = v93[9];
      v97 = v93[10];
      if (v96)
      {
        v93 = swift_allocObject();
        v98 = v93;
        v93[2] = v96;
        v93[3] = v97;
      }

      else
      {
        v98 = 0;
      }

      v155 = &v132;
      __chkstk_darwin(v93);
      v130 = v119;
      v131 = v98;
      v120 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v121 = v67;
      v122 = swift_allocObject();
      *(v122 + 16) = v120;
      *(v122 + 24) = v94;
      swift_retain_n();
      sub_10000827C(v96, v97);

      v123 = sub_100583F3C(v157, v95, sub_1005842C4, v129, sub_1005842FC, v122, 0);

      [v121 presentViewController:v123 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for MenuDebugSetting();
    v106 = swift_dynamicCastClass();
    if (v106)
    {
      v107 = v144;
      v108 = *&v67[v144];
      if (!v108)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return;
      }

      v109 = v106;
      v110 = v108;
      v111 = v140;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v160 = v109;
      v112 = v145;
      NSDiffableDataSourceSnapshot.sectionIdentifier(containingItem:)();
      (*(v143 + 8))(v111, v112);
      v113 = v164;
      v114 = v142;
      v115 = v141;
      if (!v164)
      {
        goto LABEL_35;
      }

      v116 = *&v67[v107];
      if (!v116)
      {
        goto LABEL_68;
      }

      v117 = v116;
      UICollectionViewDiffableDataSource.snapshot(for:)();

      *&v164 = v32;
      LOBYTE(v117) = NSDiffableDataSourceSectionSnapshot.isExpanded(_:)();
      sub_10002849C(&qword_100973210, qword_1007B0BB0);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1007B0B70;
      *(v118 + 32) = v32;

      if (v117)
      {
        NSDiffableDataSourceSectionSnapshot.collapse(_:)(v118);
      }

      else
      {
        NSDiffableDataSourceSectionSnapshot.expand(_:)(v118);
      }

      v127 = *&v67[v107];
      if (!v127)
      {
        goto LABEL_69;
      }

      *&v164 = v113;
      v128 = v127;
      UICollectionViewDiffableDataSource.apply(_:to:animatingDifferences:completion:)();

      (*(v139 + 8))(v115, v114);
    }

    else
    {
      type metadata accessor for MenuItemDebugSetting();
      v124 = swift_dynamicCastClass();
      if (!v124)
      {
        goto LABEL_35;
      }

      v125 = *(v124 + 80);

      v125(v126);

      [v156 reloadData];
    }

    goto LABEL_35;
  }

  v68 = *(v66 + 56);
  v69 = *(v66 + 64);
  v70 = v66;
  swift_retain_n();

  v71 = sub_100583F3C(v68, v69, sub_100584344, v70, sub_10058434C, v70, 1);

  [v67 presentViewController:v71 animated:1 completion:0];

LABEL_35:
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v156 deselectItemAtIndexPath:isa animated:1];
}

uint64_t sub_100582A68(uint64_t a1)
{
  swift_getObjectType();
  Preferences.subscript.getter();
  return v2;
}

uint64_t sub_100582AE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10002849C(&qword_100977550, &qword_1007BC920);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - v8;
  if (!a2)
  {
    goto LABEL_6;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    swift_getObjectType();
    (*(v7 + 16))(v9, a3 + OBJC_IVAR____TtC8AppStore29StringPreferencesDebugSetting_key, v6);
    v15[0] = a1;
    v15[1] = a2;

    return Preferences.subscript.setter();
  }

  else
  {
LABEL_6:
    swift_getObjectType();
    v12 = OBJC_IVAR____TtC8AppStore29StringPreferencesDebugSetting_key;
    v15[3] = v6;
    v15[4] = sub_100097060(&qword_100977568, &qword_100977550, &qword_1007BC920, &protocol conformance descriptor for PreferenceKey<A>);
    v13 = sub_1000056E0(v15);
    (*(v7 + 16))(v13, a3 + v12, v6);
    dispatch thunk of Preferences.removeValue(forKey:)();
    return sub_100007000(v15);
  }
}

uint64_t sub_100582CE0(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_userDefaults);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 valueForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002B894(v8, &unk_1009711D0, &unk_1007B1A10);
    return 0;
  }
}

void sub_100582DCC(uint64_t a1, NSString a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_userDefaults);

    if (a2)
    {
      a2 = String._bridgeToObjectiveC()();
    }

    v7 = String._bridgeToObjectiveC()();
    [v6 setObject:a2 forKey:v7];

    swift_unknownObjectRelease();
  }
}

double sub_100582E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(a4 + 88);
    v10 = Strong;

    v9(v11, a1, a2);
  }

  return result;
}

void sub_100583134(void *a1, uint64_t a2, NSString a3)
{
  if (!a3)
  {
LABEL_7:
    v4 = a3;
    [a1 setText:?];

    return;
  }

  v3 = a1;
  if ((a2 != 0x746C7561666544 || a3 != 0xE700000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    a3 = String._bridgeToObjectiveC()();
    a1 = v3;
    goto LABEL_7;
  }
}

void sub_1005831FC(int a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, char a7)
{
  v11 = [a2 textFields];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  sub_100005744(0, &qword_10098C8A8, UITextField_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 text];

  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (a4 && (v17 == a3 && v19 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_12;
    }

    a5(v17, v19);

    if (a7)
    {
      v20 = [objc_opt_self() sharedCoordinator];
      [v20 notify];
    }
  }
}

void *sub_1005834AC(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v29 = v3;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v30 = a2;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = (*((swift_isaMask & *isUniquelyReferenced_nonNull_bridgeObject) + 0x78))(a2);
      v9 = v8;
      v10 = v8 >> 62;
      if (v8 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v35 = v6;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          goto LABEL_21;
        }

LABEL_20:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_21;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      v14 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = v11;
        goto LABEL_22;
      }

LABEL_21:
      v15 = v11;
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v17 >> 1) - v16) < v15)
          {
            goto LABEL_44;
          }

          v20 = v14 + 8 * v16 + 32;
          v34 = v14;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_46;
            }

            sub_100097060(&qword_10098C890, &qword_10098C888, "j;\a", &protocol conformance descriptor for [A]);
            for (i = 0; i != v18; ++i)
            {
              sub_10002849C(&qword_10098C888, "j;\a");
              v22 = sub_100548DDC(v36, i, v9);
              v24 = *v23;

              (v22)(v36, 0);
              *(v20 + 8 * i) = v24;
            }

            v3 = v29;
            a2 = v30;
          }

          else
          {
            type metadata accessor for DebugSection();
            swift_arrayInitWithCopy();
          }

          if (v15 > 0)
          {
            v25 = *(v34 + 16);
            v7 = __OFADD__(v25, v15);
            v26 = v25 + v15;
            if (v7)
            {
              goto LABEL_45;
            }

            *(v34 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_26;
        }
      }

      if (v15 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return _swiftEmptyArrayStorage;
}

double sub_100583854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100583898(uint64_t a1)
{
  v1 = ASKBuildTypeGetCurrent();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v4 != v5)
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
LABEL_6:

      goto LABEL_16;
    }

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (v8 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v10 != v11)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
        if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
        {
        }

        else
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v21 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        type metadata accessor for LocalPreferences();
        static LocalPreferences.currentApplication.getter();
        if (qword_10096E988 != -1)
        {
          swift_once();
        }

        v22 = sub_10002849C(&qword_100979740, &qword_1007D00E0);
        sub_1000056A8(v22, qword_1009D2A68);
        Preferences.subscript.getter();

        if (v24 == 2 || (v24 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }

      goto LABEL_6;
    }
  }

LABEL_16:
  v18 = URL.host.getter();
  if (!v19)
  {
LABEL_26:
    v20 = 0;
    return v20 & 1;
  }

  if (v18 == 0x6775626564 && v19 == 0xE500000000000000)
  {

    v20 = 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v20 & 1;
}

void sub_100583B3C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations(0);
  swift_allocObject();
  *(v0 + v2) = sub_1004FA640();
  *(v0 + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource) = 0;
  v3 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_userDefaults;
  *(v1 + v3) = [objc_opt_self() standardUserDefaults];
  v4 = OBJC_IVAR____TtC8AppStore23DebugMenuViewController_notificationCenter;
  *(v1 + v4) = [objc_opt_self() defaultCenter];
  *(v1 + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_debugSections) = _swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100583C44()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v6 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100584370;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C9260;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100007874(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_100097060(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

id sub_100583F3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = a3();
  v10 = v9;
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:1];

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  v30 = sub_100584354;
  v31 = v13;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100768994;
  v29 = &unk_1008C91E8;
  v14 = _Block_copy(&aBlock);

  [v12 addTextFieldWithConfigurationHandler:v14];
  _Block_release(v14);
  v15 = String._bridgeToObjectiveC()();
  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v15 style:1 handler:0];

  [v12 addAction:v17];
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v8;
  *(v18 + 32) = v10;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  v19 = v12;

  v20 = String._bridgeToObjectiveC()();
  v30 = sub_10058435C;
  v31 = v18;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_100768994;
  v29 = &unk_1008C9238;
  v21 = _Block_copy(&aBlock);

  v22 = [v16 actionWithTitle:v20 style:2 handler:v21];
  _Block_release(v21);

  [v19 addAction:v22];
  return v19;
}

void sub_100584208(_BOOL8 result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore23DebugMenuViewController_diffableDataSource);
  if (v2)
  {
    v3 = v2;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if (v4)
    {
      type metadata accessor for InfoDebugSetting();
      if (swift_dynamicCastClass() || (type metadata accessor for BoolUserDefaultsDebugSetting(), swift_dynamicCastClass()))
      {
      }

      else
      {
        type metadata accessor for BoolPreferencesDebugSetting(0);
        swift_dynamicCastClass();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100584304@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1005845A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHintsCollectionViewDataSource();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10058460C()
{
  v0 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v0 - 8);
  v12[2] = v12 - v1;
  v2 = type metadata accessor for PageGrid.HorizontalMargins();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v10 = type metadata accessor for PageGrid.Breakpoint();
  sub_100005644(v10, qword_1009D2A80);
  v12[1] = sub_1000056A8(v10, qword_1009D2A80);
  v13 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v13 = 0x4041000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v13 = 0x4041000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v5 = vdupq_n_s64(0x4041000000000000uLL);
  (*(v3 + 104))(v5, enum case for PageGrid.HorizontalMargins.dynamicCenter(_:), v2);
  LOBYTE(v13) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v13 = 0;
  PageGrid.DirectionalValue.init(_:)();
  return PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
}

uint64_t sub_100584924()
{
  v0 = type metadata accessor for PageGrid.HorizontalMargins();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v4 - 8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v7 = type metadata accessor for PageGrid.Breakpoint();
  sub_100005644(v7, qword_1009D2A98);
  sub_1000056A8(v7, qword_1009D2A98);
  v10 = 0x4074F00000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v10 = 0x404A000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v10 = 0x404A000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v3 = vdupq_n_s64(0x404A000000000000uLL);
  (*(v1 + 104))(v3, enum case for PageGrid.HorizontalMargins.absolute(_:), v0);
  return PageGrid.Breakpoint.init(range:columnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
}

uint64_t sub_100584B68()
{
  v0 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v0 - 8);
  v38 = v31 - v1;
  v44 = type metadata accessor for PageGrid.HorizontalMargins();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  v4 = (v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v5 - 8);
  v33 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v37 = type metadata accessor for PageGrid.Breakpoint();
  v10 = *(*(v37 - 8) + 72);
  v43 = *(v37 - 8);
  v11 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v40 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007B73E0;
  v35 = v12;
  v42 = v12 + v11;
  v45 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v36 = enum case for PageGrid.HorizontalMargins.dynamicCenter(_:);
  v18 = *(v2 + 104);
  v39 = v2 + 104;
  v18(v4);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v41 = v18;
  (v18)(v4, v36, v44);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  v20 = v40;
  PageGrid.DirectionalValue.init(_:)();
  v21 = v42;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v22 = v21 + 2 * v20;
  if (qword_10096E990 != -1)
  {
    swift_once();
  }

  v23 = v37;
  v24 = sub_1000056A8(v37, qword_1009D2A80);
  v25 = *(v43 + 16);
  v43 += 16;
  v34 = v25;
  v25(v22, v24, v23);
  v31[1] = 3 * v20;
  v45 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4041000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4041000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v32 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v32;
  v36 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v41(v4);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 0x4074F00000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4041000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4041000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = v32;
  (v41)(v4, v36, v44);
  v26 = v42;
  PageGrid.Breakpoint.init(range:columnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 0x4074F00000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x404A000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x404A000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = vdupq_n_s64(0x404A000000000000uLL);
  (v41)(v4, v36, v44);
  PageGrid.Breakpoint.init(range:columnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  if (qword_10096E998 != -1)
  {
    swift_once();
  }

  v27 = v26 + 6 * v40;
  v28 = v37;
  v29 = sub_1000056A8(v37, qword_1009D2A98);
  result = v34(v27, v29, v28);
  qword_10098C900 = v35;
  return result;
}

uint64_t sub_1005853D4(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 16) == 1)
  {
    v6 = result;
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    swift_beginAccess();
    v8 = *(v6 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 24) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_100034F9C(0, v8[2] + 1, 1, v8);
      *(v6 + 24) = v8;
    }

    v11 = v8[2];
    v10 = v8[3];
    if (v11 >= v10 >> 1)
    {
      v8 = sub_100034F9C((v10 > 1), v11 + 1, 1, v8);
    }

    v8[2] = v11 + 1;
    v12 = &v8[2 * v11];
    v12[4] = sub_10006F094;
    v12[5] = v7;
    *(v6 + 24) = v8;
    return swift_endAccess();
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

double sub_1005854F4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 32);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_100585CD0;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008C9378;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10000779C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_10000794C(&qword_100976F60, &unk_1009729F0, &unk_1007B3D80);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);

  return result;
}

double sub_1005857C8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 16) == 1)
    {
      *(Strong + 16) = 0;
      v3 = Strong;
      swift_beginAccess();
      v4 = *(v3 + 24);
      v5 = *(v4 + 16);
      if (v5)
      {

        v6 = v4 + 40;
        do
        {
          v7 = *(v6 - 8);

          v7(v8);

          v6 += 16;
          --v5;
        }

        while (v5);

        v9 = v3;
      }

      else
      {
        v9 = v3;
      }

      *(v9 + 24) = _swiftEmptyArrayStorage;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1005858C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100585924()
{
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v9 - 8);
  __chkstk_darwin(v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  *(v0 + 16) = 0;
  *(v0 + 24) = _swiftEmptyArrayStorage;
  v6 = sub_1000076C0();
  v8[0] = "isScrollingAccessQueue";
  v8[1] = v6;
  static DispatchQoS.unspecified.getter();
  v10 = _swiftEmptyArrayStorage;
  sub_10000779C(&qword_100975440, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10002849C(&qword_100975448, &qword_1007B7550);
  sub_10000794C(&qword_100975450, &qword_100975448, &qword_1007B7550);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9);
  *(v0 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  return v0;
}

double sub_100585B84(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1005854F4();
  }

  return result;
}

void sub_100585B90()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100585CC4;
  *(v2 + 24) = v0;
  v4[4] = sub_10006F094;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1000489A8;
  v4[3] = &unk_1008C9328;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for AppPromotionSubtitleView(uint64_t a1)
{
  result = qword_10098CA48;
  if (!qword_10098CA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100585D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v40 = a5;
  v36 = a4;
  v37 = a3;
  v35 = a1;
  v8 = type metadata accessor for Resize();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LabelPlaceholder();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DynamicTextAppearance();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  if (a2)
  {
    v34 = a6;
    DynamicTextAppearance.init()();
    if (qword_10096E9A8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for FontUseCase();
    sub_1000056A8(v22, qword_10098CA18);
    DynamicTextAppearance.withFontUseCase(_:)();
    v33 = *(v16 + 8);
    v33(v18, v15);
    (*(v16 + 16))(v18, v21, v15);
    LabelPlaceholder.Options.init(rawValue:)();

    LabelPlaceholder.init(_:with:where:)();
    UITraitCollection.prefersAccessibilityLayouts.getter();
    v36 &= 1u;
    v23 = type metadata accessor for EmptyPlaceable();
    swift_allocObject();
    v24 = EmptyPlaceable.init()();
    v45 = v23;
    v46 = sub_100587418(&qword_1009768B0, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
    v44[0] = v24;
    Resize.init(_:size:)();
    v45 = v11;
    v46 = &protocol witness table for LabelPlaceholder;
    v25 = sub_1000056E0(v44);
    (*(v12 + 16))(v25, v14, v11);
    if (v37)
    {
      v26 = v39;
      *(&v42 + 1) = v39;
      v43 = &protocol witness table for Resize;
      v27 = sub_1000056E0(&v41);
      v28 = v38;
      (*(v38 + 16))(v27, v10, v26);
    }

    else
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      v28 = v38;
      v26 = v39;
    }

    sub_100586BFC(v44, &v41, v36, v40, v34);
    (*(v28 + 8))(v10, v26);
    (*(v12 + 8))(v14, v11);
    v33(v21, v15);
    sub_10002B894(&v41, &unk_10097B860, &qword_1007B49E0);
    return sub_10002B894(v44, &unk_10097B860, &qword_1007B49E0);
  }

  else
  {
    v29 = type metadata accessor for EmptyPlaceable();
    swift_allocObject();
    v30 = EmptyPlaceable.init()();
    a6[3] = v29;
    result = sub_100587418(&qword_1009768B0, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
    a6[4] = result;
    *a6 = v30;
  }

  return result;
}

double sub_10058625C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Artwork.Crop();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + qword_10098CA38);
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v9 setText:v11];

  v12 = *(v3 + qword_10098CA40);
  [v12 setHidden:a3 == 0];
  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.optional<A>(_:)();
  if (a3)
  {
    if (!v16[1])
    {
      return result;
    }

    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    v14 = *(v6 + 8);
    v14(v8, v5);
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.crop.getter();
    v15 = Artwork.Crop.preferredContentMode.getter();
    v14(v8, v5);
    [v12 setContentMode:v15];
    type metadata accessor for ArtworkView();
    sub_100587418(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  return result;
}

uint64_t sub_1005864C8()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_10098CA18);
  v1 = sub_1000056A8(v0, qword_10098CA18);
  if (qword_10096E3C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D1AD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_100586590(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = qword_10098CA38;
  if (qword_10096E9A8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  v14 = sub_1000056A8(v13, qword_10098CA18);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v16 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v2[v12] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v17 = qword_10098CA40;
  type metadata accessor for ArtworkView();
  *&v2[v17] = static ArtworkView.iconArtworkView.getter();
  v2[qword_10098CA30] = a1 & 1;
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = qword_10098CA38;
  v20 = *&v18[qword_10098CA38];
  v21 = objc_opt_self();
  v22 = v18;
  v23 = v20;
  v24 = [v21 labelColor];
  [v23 setTextColor:v24];

  v25 = qword_10098CA40;
  [*&v22[qword_10098CA40] setHidden:1];
  [v22 addSubview:*&v18[v19]];
  [v22 addSubview:*&v22[v25]];

  return v22;
}

uint64_t sub_1005868E4(uint64_t a1)
{
  v3 = [*(v1 + qword_10098CA38) layer];
  sub_100031660(a1, v12, &unk_1009711D0, &unk_1007B1A10);
  v4 = v13;
  if (v13)
  {
    v5 = sub_10002A400(v12, v13);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100007000(v12);
  }

  else
  {
    v10 = 0;
  }

  [v3 setCompositingFilter:v10];

  swift_unknownObjectRelease();
  return sub_10002B894(a1, &unk_1009711D0, &unk_1007B1A10);
}

uint64_t sub_100586A94@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = *&v1[qword_10098CA38];
  v17[3] = type metadata accessor for DynamicTypeLabel();
  v17[4] = &protocol witness table for UILabel;
  v17[0] = v3;
  v4 = *&v1[qword_10098CA40];
  v5 = v3;
  if ([v4 isHidden])
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v7 = type metadata accessor for ArtworkView();
    v8 = sub_100587418(&qword_100989780, &type metadata accessor for ArtworkView, "]o\r");
    v6 = v4;
  }

  v12 = v6;
  v15 = v7;
  v16 = v8;
  v9 = v1[qword_10098CA30];
  v10 = [v1 traitCollection];
  sub_100586BFC(v17, &v12, v9, v10, a1);

  sub_10002B894(&v12, &unk_10097B860, &qword_1007B49E0);
  return sub_10002B894(v17, &unk_10097B860, &qword_1007B49E0);
}

uint64_t sub_100586BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = v6;
  v13 = type metadata accessor for HorizontalStack();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031660(a1, &v40, &unk_10097B860, &qword_1007B49E0);
  if (v41)
  {
    sub_100005A38(&v40, v42);
    v17 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v18 = 16.0;
    if ((a3 & 1) == 0)
    {
      v18 = 14.0;
    }

    if (v17)
    {
      v19 = 25.0;
    }

    else
    {
      v19 = v18;
    }

    sub_1000367E8();
    if (qword_10096E9A8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for FontUseCase();
    sub_1000056A8(v20, qword_10098CA18);
    v21 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    [v21 lineHeight];
    v23 = v22;
    HorizontalStack.init(with:)();
    sub_100031660(a2, &v37, &unk_10097B860, &qword_1007B49E0);
    if (v38)
    {
      if ((v23 - v19) * 0.5 < 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = (v23 - v19) * 0.5;
      }

      sub_100005A38(&v37, &v40);
      sub_10002C0AC(&v40, &v37);
      v36[3] = type metadata accessor for Resize();
      v36[4] = &protocol witness table for Resize;
      sub_1000056E0(v36);
      Resize.init(_:size:)();
      v35[8] = &type metadata for CGFloat;
      v35[9] = &protocol witness table for CGFloat;
      *&v35[5] = v24;
      v25 = type metadata accessor for ZeroDimension();
      v35[3] = v25;
      v35[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v35);
      static ZeroDimension.zero.getter();
      v34[3] = v25;
      v34[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v34);
      static ZeroDimension.zero.getter();
      v33[3] = v25;
      v33[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v33);
      static ZeroDimension.zero.getter();
      v38 = type metadata accessor for Margins();
      v39 = &protocol witness table for Margins;
      sub_1000056E0(&v37);
      Margins.init(_:top:leading:bottom:trailing:)();
      v26 = swift_allocObject();
      *(v26 + 16) = a4;
      *(v26 + 24) = v7;
      v27 = a4;
      HorizontalStack.add(_:with:)();

      sub_100007000(&v40);
      sub_100007000(&v37);
    }

    else
    {
      sub_10002B894(&v37, &unk_10097B860, &qword_1007B49E0);
    }

    HorizontalStack.add(_:with:)();
    a5[3] = v13;
    a5[4] = &protocol witness table for HorizontalStack;
    v31 = sub_1000056E0(a5);
    (*(v14 + 32))(v31, v16, v13);

    return sub_100007000(v42);
  }

  else
  {
    sub_10002B894(&v40, &unk_10097B860, &qword_1007B49E0);
    v28 = type metadata accessor for EmptyPlaceable();
    swift_allocObject();
    v29 = EmptyPlaceable.init()();
    a5[3] = v28;
    result = sub_100587418(&qword_1009768B0, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
    a5[4] = result;
    *a5 = v29;
  }

  return result;
}

void sub_100587054()
{
  v1 = *(v0 + qword_10098CA40);
}

void sub_100587094(uint64_t a1)
{
  v2 = *(a1 + qword_10098CA40);
}

unint64_t sub_1005870FC()
{
  result = qword_10098CA98[0];
  if (!qword_10098CA98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10098CA98);
  }

  return result;
}

void sub_1005871B4()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = qword_10098CA38;
  if (qword_10096E9A8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, qword_10098CA18);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v9) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v14 = qword_10098CA40;
  type metadata accessor for ArtworkView();
  *(v1 + v14) = static ArtworkView.iconArtworkView.getter();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100587418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100587504(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = type metadata accessor for Shelf.ContentType();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a5 bounds];
  [a5 safeAreaInsets];
  CGSize.subtracting(insets:)();
  if ((a2 & 1) == 0)
  {
    v17 = sub_1005D8420();
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      swift_getObjectType();
      [a4 pageMarginInsets];
      (*(v20 + 32))(0, a4, v19, v20, v21);
      v22 = [a4 traitCollection];
      LOBYTE(v19) = (*(*v6 + 696))(a1, v22);

      if (v19)
      {
        v23 = sub_100592DF8(a1, a3, a4);
        (*(v13 + 16))(v16, a1, v12);
        v24 = (*(v13 + 88))(v16, v12);
        if (v24 != enum case for Shelf.ContentType.annotation(_:) && v24 != enum case for Shelf.ContentType.productCapability(_:) && v24 != enum case for Shelf.ContentType.productPageLink(_:) && v24 != enum case for Shelf.ContentType.privacyType(_:))
        {
          (*(v13 + 8))(v16, v12);
          PageTraitEnvironment.pageColumnMargin.getter();
          if (!__OFSUB__(v23, 1))
          {
            return;
          }

LABEL_13:
          __break(1u);
          return;
        }

        if (__OFSUB__(v23, 1))
        {
          __break(1u);
          goto LABEL_13;
        }
      }
    }
  }
}

double sub_100587800(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v35 = a4;
  LODWORD(v33) = a3;
  v31 = *v4;
  v5 = v31;
  v32 = a2;
  v6 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for Shelf.ContentType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = *(v5 + 80);
  v17 = dispatch thunk of ShelfPresenter.shelf(for:)();
  Shelf.contentType.getter();
  v34 = v16;
  if (v33)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    v18 = 0;
    v19 = v35;
  }

  else
  {
    v33 = v17;
    dispatch thunk of ShelfPresenter.contentType(for:)();
    (*(v10 + 56))(v8, 0, 1, v9);
    dispatch thunk of ShelfPresenter.title(for:)();
    if (v20)
    {

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = v35;
  }

  (*(v10 + 16))(v12, v15, v9);
  v21 = (*(v10 + 88))(v12, v9);
  if (v21 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v22 = &off_1008D0A88;
  }

  else
  {
    if (v21 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v10 + 8))(v12, v9);
      goto LABEL_14;
    }

    type metadata accessor for InformationRibbonCollectionViewCell(0);
    v22 = &off_1008CBB38;
  }

  v23 = (v22[1])();
  if ((v24 & 1) == 0)
  {
LABEL_17:
    v28 = *&v23;

    v27 = v28;
    goto LABEL_18;
  }

LABEL_14:
  if (sub_1005D8420())
  {
    v23 = (*(v25 + 40))(v8, v18, v19);
    if ((v26 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v27 = sub_1005972B4(v19);

LABEL_18:
  sub_10002B894(v8, &unk_100992460, &qword_1007B6BF0);
  (*(v10 + 8))(v15, v9);
  return v27;
}

void sub_100587BFC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v204 = a2;
  v205 = a3;
  v197 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v197);
  v181 = &v166 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v188 = &v166 - v6;
  v203 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v196 = *(v203 - 8);
  __chkstk_darwin(v203);
  v193 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v202 = &v166 - v9;
  v10 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v10 - 8);
  v192 = &v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v191 = &v166 - v13;
  __chkstk_darwin(v14);
  v201 = &v166 - v15;
  __chkstk_darwin(v16);
  v200 = &v166 - v17;
  v18 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v18 - 8);
  v180 = &v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v179 = &v166 - v21;
  __chkstk_darwin(v22);
  v187 = &v166 - v23;
  __chkstk_darwin(v24);
  v186 = &v166 - v25;
  v26 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v194 = *(v26 - 8);
  v195 = v26;
  __chkstk_darwin(v26);
  v178 = &v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v177 = &v166 - v29;
  __chkstk_darwin(v30);
  v176 = &v166 - v31;
  __chkstk_darwin(v32);
  v190 = &v166 - v33;
  __chkstk_darwin(v34);
  v185 = &v166 - v35;
  __chkstk_darwin(v36);
  v184 = &v166 - v37;
  __chkstk_darwin(v38);
  v183 = &v166 - v39;
  __chkstk_darwin(v40);
  v199 = &v166 - v41;
  v42 = sub_10002849C(&unk_100984380, &qword_1007C4850);
  __chkstk_darwin(v42 - 8);
  v168 = &v166 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v171 = &v166 - v45;
  __chkstk_darwin(v46);
  v170 = &v166 - v47;
  __chkstk_darwin(v48);
  v173 = &v166 - v49;
  __chkstk_darwin(v50);
  v189 = &v166 - v51;
  __chkstk_darwin(v52);
  v167 = &v166 - v53;
  __chkstk_darwin(v54);
  v169 = &v166 - v55;
  __chkstk_darwin(v56);
  v172 = &v166 - v57;
  __chkstk_darwin(v58);
  v175 = &v166 - v59;
  __chkstk_darwin(v60);
  v174 = &v166 - v61;
  __chkstk_darwin(v62);
  v198 = &v166 - v63;
  v64 = type metadata accessor for ShelfBackground();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v166 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v70 = &v166 - v69;
  v71 = dispatch thunk of ShelfPresenter.doesShelfExist(for:)();
  v72 = 0;
  if (v71)
  {
    v72 = dispatch thunk of ShelfPresenter.shelf(for:)();
  }

  v206 = v72;
  dispatch thunk of ShelfPresenter.eyebrow(for:)();
  v74 = v73;
  if (v73)
  {
  }

  v182 = v74;
  dispatch thunk of ShelfPresenter.subtitle(for:)();
  v76 = v75;
  if (v75)
  {
  }

  dispatch thunk of ShelfPresenter.background(for:)();
  (*(v65 + 104))(v67, enum case for ShelfBackground.interactive(_:), v64);
  v77 = static ShelfBackground.== infix(_:_:)();
  v78 = *(v65 + 8);
  v78(v67, v64);
  v78(v70, v64);
  v79 = v204;
  v80 = sub_10058E9EC(a1, v204);
  v81 = sub_10058E7C8(a1, v79);
  if (v77)
  {
    sub_1001EE328(v76 != 0, v205);

    return;
  }

  v82 = v76;
  v166 = v76;
  if (v80)
  {
    if (v206)
    {

      v83 = Shelf.header.getter();

      v84 = v183;
      v85 = v198;
      if (v83)
      {
        ShelfHeader.configuration.getter();

        v86 = 0;
      }

      else
      {
        v86 = 1;
      }
    }

    else
    {
      v86 = 1;
      v84 = v183;
      v85 = v198;
    }

    v90 = type metadata accessor for ShelfHeader.Configuration();
    v91 = *(v90 - 8);
    (*(v91 + 56))(v85, v86, 1, v90);
    v92 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
    v193 = *(v92 - 1);
    (*(v193 + 7))(v200, 1, 1, v92);
    v204 = v92;
    if (v82)
    {
      v93 = (v91 + 48);
      v94 = v85;
      if (v80 == 1)
      {
        v95 = v174;
        sub_100031660(v94, v174, &unk_100984380, &qword_1007C4850);
        if ((*v93)(v95, 1, v90) == 1)
        {
          sub_10002B894(v95, &unk_100984380, &qword_1007C4850);
          v96 = 0;
        }

        else
        {
          v96 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v91 + 8))(v95, v90);
        }

        v106 = v195;
        v107 = v186;
        sub_100512504(v96, v199);

        if (qword_10096E7C0 != -1)
        {
          swift_once();
        }

        v108 = qword_1009D27A8;
      }

      else
      {
        v100 = v175;
        sub_100031660(v94, v175, &unk_100984380, &qword_1007C4850);
        if ((*v93)(v100, 1, v90) == 1)
        {
          sub_10002B894(v100, &unk_100984380, &qword_1007C4850);
          v101 = 0;
        }

        else
        {
          v101 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v91 + 8))(v100, v90);
        }

        v106 = v195;
        v107 = v186;
        sub_100512504(v101, v199);

        if (qword_10096E7B0 != -1)
        {
          swift_once();
        }

        v108 = qword_1009D2778;
      }

      v109 = sub_1000056A8(v106, v108);
      sub_1001EFDF0(v109, v84);
      if (qword_10096E770 != -1)
      {
        swift_once();
      }

      v110 = 0;
      v111 = qword_1009D26B8;
      v112 = v107;
    }

    else
    {
      if (v80 == 1)
      {
        v97 = v85;
        v98 = v172;
        sub_100031660(v97, v172, &unk_100984380, &qword_1007C4850);
        if ((*(v91 + 48))(v98, 1, v90) == 1)
        {
          sub_10002B894(v98, &unk_100984380, &qword_1007C4850);
          v99 = 0;
        }

        else
        {
          v99 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v91 + 8))(v98, v90);
        }

        v106 = v195;
        v107 = v186;
        sub_100512504(v99, v199);

        if (qword_10096E7B8 != -1)
        {
          swift_once();
        }

        v110 = 1;
        v111 = qword_1009D2790;
      }

      else
      {
        v102 = (v91 + 48);
        if (v182)
        {
          v103 = v85;
          v104 = v169;
          sub_100031660(v103, v169, &unk_100984380, &qword_1007C4850);
          if ((*v102)(v104, 1, v90) == 1)
          {
            sub_10002B894(v104, &unk_100984380, &qword_1007C4850);
            v105 = 0;
          }

          else
          {
            v105 = ShelfHeader.Configuration.eyebrowColor.getter();
            (*(v91 + 8))(v104, v90);
          }

          v106 = v195;
          v107 = v186;
          sub_10051250C(v105, v199);

          if (qword_10096E7A8 != -1)
          {
            swift_once();
          }

          v110 = 1;
          v111 = qword_1009D2760;
        }

        else
        {
          v129 = v85;
          v130 = v167;
          sub_100031660(v129, v167, &unk_100984380, &qword_1007C4850);
          if ((*v102)(v130, 1, v90) == 1)
          {
            sub_10002B894(v130, &unk_100984380, &qword_1007C4850);
            v131 = 0;
          }

          else
          {
            v131 = ShelfHeader.Configuration.eyebrowColor.getter();
            (*(v91 + 8))(v130, v90);
          }

          v106 = v195;
          v107 = v186;
          sub_100512504(v131, v199);

          if (qword_10096E7A0 != -1)
          {
            swift_once();
          }

          v110 = 1;
          v111 = qword_1009D2748;
        }
      }

      v112 = v84;
    }

    LODWORD(v195) = v82 != 0;
    v151 = sub_1000056A8(v106, v111);
    sub_1001EFDF0(v151, v112);
    (*(v194 + 56))(v107, v110, 1, v106);
    v152 = v199;
    v153 = v184;
    sub_1001EFDF0(v199, v184);
    v154 = v185;
    sub_1001EFDF0(v84, v185);
    v155 = v187;
    sub_100031660(v107, v187, &qword_1009794E8, &unk_1007C18C0);
    v156 = v200;
    sub_100031660(v200, v201, &qword_1009794E0, &unk_1007C4840);
    v157 = v196;
    v158 = v203;
    (*(v196 + 104))(v202, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v203);
    sub_100005744(0, &qword_100970180, UIColor_ptr);
    v194 = static UIColor.defaultLine.getter();

    sub_10002B894(v156, &qword_1009794E0, &unk_1007C4840);
    sub_10002B894(v107, &qword_1009794E8, &unk_1007C18C0);
    sub_10022AA04(v84, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10022AA04(v152, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10002B894(v198, &unk_100984380, &qword_1007C4850);
    v159 = v197;
    v160 = *(v197 + 32);
    v161 = v188;
    sub_1001EFEC4(v153, v188, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1001EFEC4(v154, v161 + v159[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1000476A0(v155, v161 + v159[6], &qword_1009794E8, &unk_1007C18C0);
    *(v161 + v159[7]) = 0;
    *(v161 + v160) = 0;
    *(v161 + v159[9]) = v195;
    *(v161 + v159[14]) = 0x4030000000000000;
    *(v161 + v159[12]) = 0;
    *(v161 + v159[13]) = v194;
    v162 = v201;
    (*(v157 + 32))(v161 + v159[11], v202, v158);
    v163 = v193;
    v164 = v204;
    if ((*(v193 + 6))(v162, 1, v204) == 1)
    {
      sub_10002B894(v162, &qword_1009794E0, &unk_1007C4840);
      if (v166)
      {
        v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
      }

      else
      {
        v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
      }

      (*(v163 + 13))(v161 + v159[10], *v165, v164);
    }

    else
    {
      (*(v163 + 4))(v161 + v159[10], v162, v164);
    }

    v150 = v161;
    goto LABEL_103;
  }

  LODWORD(v204) = v81;
  if (v206)
  {

    v87 = Shelf.header.getter();

    v88 = v189;
    if (v87)
    {
      ShelfHeader.configuration.getter();

      v89 = 0;
    }

    else
    {
      v89 = 1;
    }
  }

  else
  {
    v89 = 1;
    v88 = v189;
  }

  v113 = type metadata accessor for ShelfHeader.Configuration();
  v114 = *(v113 - 8);
  (*(v114 + 56))(v88, v89, 1, v113);
  v115 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v201 = *(v115 - 8);
  (*(v201 + 56))(v191, 1, 1, v115);
  v116 = (v114 + 48);
  v202 = v115;
  if (v182)
  {
    if (v82)
    {
      v117 = v173;
      sub_100031660(v88, v173, &unk_100984380, &qword_1007C4850);
      if ((*v116)(v117, 1, v113) == 1)
      {
        sub_10002B894(v117, &unk_100984380, &qword_1007C4850);
        v118 = 0;
      }

      else
      {
        v118 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v114 + 8))(v117, v113);
      }

      v123 = v195;
      v124 = v179;
      v125 = v176;
      sub_100512504(v118, v190);

      if (qword_10096E798 != -1)
      {
        swift_once();
      }

      v126 = qword_1009D2730;
LABEL_68:
      v132 = sub_1000056A8(v123, v126);
      sub_1001EFDF0(v132, v125);
      if (qword_10096E770 != -1)
      {
        swift_once();
      }

      v133 = 0;
      v134 = qword_1009D26B8;
      v135 = v124;
      goto LABEL_84;
    }

    v121 = v170;
    sub_100031660(v88, v170, &unk_100984380, &qword_1007C4850);
    if ((*v116)(v121, 1, v113) == 1)
    {
      sub_10002B894(v121, &unk_100984380, &qword_1007C4850);
      v122 = 0;
    }

    else
    {
      v122 = ShelfHeader.Configuration.eyebrowColor.getter();
      (*(v114 + 8))(v121, v113);
    }

    v123 = v195;
    v124 = v179;
    v125 = v176;
    sub_100512504(v122, v190);

    if (qword_10096E780 != -1)
    {
      swift_once();
    }

    v133 = 1;
    v134 = qword_1009D26E8;
  }

  else
  {
    if (v82)
    {
      v119 = v171;
      sub_100031660(v88, v171, &unk_100984380, &qword_1007C4850);
      if ((*v116)(v119, 1, v113) == 1)
      {
        sub_10002B894(v119, &unk_100984380, &qword_1007C4850);
        v120 = 0;
      }

      else
      {
        v120 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v114 + 8))(v119, v113);
      }

      v123 = v195;
      v124 = v179;
      v125 = v176;
      sub_100512504(v120, v190);

      if (qword_10096E790 != -1)
      {
        swift_once();
      }

      v126 = qword_1009D2718;
      goto LABEL_68;
    }

    v127 = v168;
    sub_100031660(v88, v168, &unk_100984380, &qword_1007C4850);
    if ((*v116)(v127, 1, v113) == 1)
    {
      sub_10002B894(v127, &unk_100984380, &qword_1007C4850);
      v128 = 0;
    }

    else
    {
      v128 = ShelfHeader.Configuration.eyebrowColor.getter();
      (*(v114 + 8))(v127, v113);
    }

    v123 = v195;
    v124 = v179;
    v125 = v176;
    sub_100512504(v128, v190);

    if (qword_10096E778 != -1)
    {
      swift_once();
    }

    v133 = 1;
    v134 = qword_1009D26D0;
  }

  v135 = v125;
LABEL_84:
  LODWORD(v200) = v82 != 0;
  v136 = sub_1000056A8(v123, v134);
  sub_1001EFDF0(v136, v135);
  (*(v194 + 56))(v124, v133, 1, v123);
  v137 = v190;
  v138 = v177;
  sub_1001EFDF0(v190, v177);
  v139 = v178;
  sub_1001EFDF0(v125, v178);
  v140 = v180;
  sub_100031660(v124, v180, &qword_1009794E8, &unk_1007C18C0);
  v141 = v191;
  sub_100031660(v191, v192, &qword_1009794E0, &unk_1007C4840);
  v142 = v196;
  (*(v196 + 104))(v193, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v203);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v199 = static UIColor.defaultLine.getter();

  sub_10002B894(v141, &qword_1009794E0, &unk_1007C4840);
  sub_10002B894(v124, &qword_1009794E8, &unk_1007C18C0);
  sub_10022AA04(v125, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10022AA04(v137, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10002B894(v189, &unk_100984380, &qword_1007C4850);
  v143 = v197;
  v144 = *(v197 + 32);
  v145 = v181;
  sub_1001EFEC4(v138, v181, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1001EFEC4(v139, v145 + v143[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1000476A0(v140, v145 + v143[6], &qword_1009794E8, &unk_1007C18C0);
  *(v145 + v143[7]) = v204 & 1;
  *(v145 + v144) = 0;
  *(v145 + v143[9]) = v200;
  *(v145 + v143[14]) = 0x4030000000000000;
  *(v145 + v143[12]) = 0;
  *(v145 + v143[13]) = v199;
  (*(v142 + 32))(v145 + v143[11], v193, v203);
  v146 = v192;
  v148 = v201;
  v147 = v202;
  if ((*(v201 + 48))(v192, 1, v202) == 1)
  {
    sub_10002B894(v146, &qword_1009794E0, &unk_1007C4840);
    if (v166)
    {
      v149 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v149 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v148 + 104))(v145 + v143[10], *v149, v147);
  }

  else
  {
    (*(v148 + 32))(v145 + v143[10], v146, v147);
  }

  v150 = v145;
LABEL_103:
  sub_1001EFEC4(v150, v205, type metadata accessor for TitleHeaderView.Style);
}

void *sub_100589554()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return v0;
}

void sub_1005895AC(void *a1)
{
  v3 = type metadata accessor for IndexSet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  *(v1 + 80) = 0;
  if (a1)
  {
    v28 = a1;
    v13 = [v28 numberOfSections];
    v14 = dispatch thunk of ShelfPresenter.sectionCount.getter();
    if (v13 < v14)
    {
      v15 = v14;
      if (__OFSUB__(v14, v13))
      {
        __break(1u);
        goto LABEL_13;
      }

      if (v14 - v13 >= 1)
      {
        v27 = v4;
        sub_100599198(&qword_1009729B0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
        dispatch thunk of SetAlgebra.init()();
        do
        {
          aBlock[6] = v13;
          dispatch thunk of SetAlgebra.insert(_:)();
          ++v13;
        }

        while (v15 != v13);
        v16 = v27;
        v17 = *(v27 + 32);
        v17(v12, v9, v3);
        v18 = objc_opt_self();
        (*(v16 + 16))(v6, v12, v3);
        v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v28;
        v17((v20 + v19), v6, v3);
        v21 = swift_allocObject();
        *(v21 + 16) = sub_100597BE4;
        *(v21 + 24) = v20;
        aBlock[4] = sub_10006F094;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000489A8;
        aBlock[3] = &unk_1008C9678;
        v22 = _Block_copy(aBlock);
        v23 = v28;

        [v18 performWithoutAnimation:v22];
        _Block_release(v22);

        (*(v16 + 8))(v12, v3);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    v25 = v28;
  }
}

id sub_100589990(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v51 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = 0;
  if (dispatch thunk of ShelfPresenter.isShelfHidden(for:)())
  {
    return v14;
  }

  dispatch thunk of ShelfPresenter.contentType(for:)();
  v47 = a1;
  v15 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
  v16 = *(v6 + 16);
  v16(v10, v13, v5);
  v48 = v5;
  v49 = v6;
  v17 = *(v6 + 88);
  v18 = v17(v10, v5);
  v19 = v18 == enum case for Shelf.ContentType.smallLockup(_:) || v18 == enum case for Shelf.ContentType.mediumLockup(_:);
  v20 = v52;
  if (v19)
  {
    goto LABEL_7;
  }

  if (v18 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    goto LABEL_10;
  }

  v28 = v18 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v18 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v28 || v18 == enum case for Shelf.ContentType.action(_:))
  {
LABEL_7:
    if ((v15 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_10;
  }

  if (v18 != enum case for Shelf.ContentType.ribbonBar(_:))
  {
    if (v18 == enum case for Shelf.ContentType.editorialCard(_:) || v18 == enum case for Shelf.ContentType.videoCard(_:))
    {
      goto LABEL_7;
    }

    if (v18 != enum case for Shelf.ContentType.brick(_:) && v18 != enum case for Shelf.ContentType.categoryBrick(_:))
    {
      if (v18 == enum case for Shelf.ContentType.reviews(_:) || v18 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v18 == enum case for Shelf.ContentType.framedVideo(_:) || v18 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v18 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v18 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_7;
      }

      if (v18 != enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        if (v18 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v18 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v18 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v18 == enum case for Shelf.ContentType.posterLockup(_:) || v18 == enum case for Shelf.ContentType.smallContactCard(_:))
        {
          goto LABEL_7;
        }

        if (v18 != enum case for Shelf.ContentType.informationRibbon(_:))
        {
          if (v18 != enum case for Shelf.ContentType.appPromotion(_:))
          {
            (*(v49 + 8))(v10, v48);
            goto LABEL_41;
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_10:
  v21 = sub_1005D8420();
  if (v21)
  {
    v23 = v47;
    v24 = v53;
    v25 = sub_100593724(v47, v20, v21, v22, v53, v51);
    v27 = v48;
    v26 = v49;
    goto LABEL_46;
  }

LABEL_41:
  v31 = v50;
  v27 = v48;
  v16(v50, v13, v48);
  v32 = v17(v31, v27);
  if (v32 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v33 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v34 = &off_1008D0A88;
    v26 = v49;
LABEL_45:
    v23 = v47;
    [v20 bounds];
    v35 = v34;
    v24 = v53;
    v25 = sub_100593A40(v23, v36, v37, v13, v33, v35, v53, v51);
    goto LABEL_46;
  }

  v26 = v49;
  if (v32 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v33 = type metadata accessor for InformationRibbonCollectionViewCell(0);
    v34 = &off_1008CBB38;
    goto LABEL_45;
  }

  v41 = *(v49 + 8);
  v41(v31, v27);
  v42 = sub_1005D8420();
  v23 = v47;
  if (v42)
  {
    sub_100593D98(v47, v13, v42, v43, v53, v20, v51);
    if (!v25)
    {
      v41(v13, v27);
      return 0;
    }

    v24 = v53;
LABEL_46:
    v14 = v25;
    [v14 setContentInsets:{sub_10058B978(v23, v24)}];
    sub_10058A2A4(v23, v24, v20);
    sub_100005744(0, &qword_10097F460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setBoundarySupplementaryItems:isa];

    sub_100594BFC(v23);
    sub_100005744(0, &unk_10097D670, NSCollectionLayoutDecorationItem_ptr);
    v39 = Array._bridgeToObjectiveC()().super.isa;

    [v14 setDecorationItems:v39];

    (*(v26 + 8))(v13, v27);
    return v14;
  }

  v55 = 0;
  v56 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v44._object = 0x800000010081AA90;
  v44._countAndFlagsBits = 0xD00000000000002ELL;
  String.append(_:)(v44);
  _print_unlocked<A, B>(_:_:)();
  v45._countAndFlagsBits = 0x7463657320746120;
  v45._object = 0xEC000000206E6F69;
  String.append(_:)(v45);
  v54 = v23;
  v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v46);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_10058A0C0(void *a1)
{
  if (*(v1 + 80) != 1)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for StaticDimension();
  sub_1000056A8(v3, qword_1009D2460);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B0B70;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension:1.0];
  v11 = [v9 absoluteDimension:v8];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:UICollectionElementKindSectionFooter alignment:5];
  return v13;
}

void *sub_10058A2A4(uint64_t a1, void *a2, void *a3)
{
  dispatch thunk of ShelfPresenter.title(for:)();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  [a3 bounds];
  v8 = v7;
  sub_10058C694(a1, a2, a3);
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 absoluteDimension:v8];
  v13 = [v11 absoluteDimension:v10];
  v14 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v14 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007B0B70;
  *(v16 + 32) = v15;

  return v16;
}

uint64_t (*sub_10058A454(uint64_t a1, void *a2, void *a3, uint64_t a4))(uint64_t a1, uint64_t a2, double a3)
{
  v5 = v4;
  v43 = a2;
  v9 = *v4;
  v10 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_10002849C(&qword_100990A90, &unk_1007B5670);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_10058B978(a1, a3);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v44 = v47;
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  v45 = v47;
  v23 = type metadata accessor for InteractiveSectionBackgroundScrollCoordinator(0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnMargin.getter();
  v25 = v24;
  v26 = v4[2];
  v27 = *(v9 + 80);
  v28 = *(v9 + 96);
  swift_unknownObjectRetain();
  v29 = v43;

  v30 = sub_10043A6F4(a1, v29, v26, a4, v16, v18, v20, v22, v25, v23, v27, v28);

  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v5[8];
  v5[8] = 0x8000000000000000;
  sub_1000517A8(v30, a1, isUniquelyReferenced_nonNull_native);
  v5[8] = v46;
  swift_endAccess();
  dispatch thunk of ShelfPresenter.shelf(for:)();
  Shelf.impressionMetrics.getter();

  v32 = type metadata accessor for ImpressionMetrics();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v12, 1, v32) == 1)
  {
    sub_10002B894(v12, &qword_100973D30, &unk_1007B1DC0);
    v34 = 1;
  }

  else
  {
    ImpressionMetrics.id.getter();
    (*(v33 + 8))(v12, v32);
    v34 = 0;
  }

  v35 = type metadata accessor for ImpressionMetrics.ID();
  (*(*(v35 - 8) + 56))(v15, v34, 1, v35);
  v36 = v44;
  v37 = v44;
  v38 = v45;
  v39 = sub_10058B038(v15, v36, v45, v30);

  sub_10002B894(v15, &qword_100990A90, &unk_1007B5670);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = &protocol witness table for CompoundScrollObserver;
  return sub_100597B78;
}

uint64_t sub_10058A878()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = type metadata accessor for ImpressionMetrics();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = v1[2];
  v13 = *(v2 + 80);
  v45 = *(v2 + 96);
  result = dispatch thunk of ShelfPresenter.sectionCount.getter();
  if (result < 0)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v15 = 0;
    v43 = result;
    v44 = (v41 + 48);
    v42 = (v41 + 32);
    v39 = v5;
    v40 = (v41 + 16);
    v34 = v41 + 40;
    v35 = (v41 + 8);
    v37 = v12;
    v38 = v11;
    v36 = v13;
    do
    {
      dispatch thunk of ShelfPresenter.shelf(for:)();
      Shelf.impressionMetrics.getter();
      if ((*v44)(v5, 1, v6) == 1)
      {

        sub_10002B894(v5, &qword_100973D30, &unk_1007B1DC0);
      }

      else
      {
        v16 = *v42;
        (*v42)(v11, v5, v6);
        swift_beginAccess();
        v17 = v8;
        v18 = v6;
        (*v40)(v8, v11, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v1[7];
        v20 = v46;
        v21 = v1;
        v1[7] = 0x8000000000000000;
        v23 = sub_1003D7340(v15);
        v24 = v20[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v27 = v22;
        if (v20[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10005383C();
          }
        }

        else
        {
          sub_10004D058(v26, isUniquelyReferenced_nonNull_native);
          v28 = sub_1003D7340(v15);
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_22;
          }

          v23 = v28;
        }

        v8 = v17;
        v30 = v46;
        if (v27)
        {
          v6 = v18;
          (*(v41 + 40))(v46[7] + *(v41 + 72) * v23, v17, v18);
        }

        else
        {
          v46[(v23 >> 6) + 8] |= 1 << v23;
          *(v30[6] + 8 * v23) = v15;
          v6 = v18;
          v16((v30[7] + *(v41 + 72) * v23), v17, v18);
          v31 = v30[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_20;
          }

          v30[2] = v33;
        }

        v1 = v21;
        v21[7] = v30;

        swift_endAccess();

        v11 = v38;
        (*v35)(v38, v6);
        v5 = v39;
      }

      ++v15;
      result = v43;
    }

    while (v43 != v15);
  }

  return result;
}

void sub_10058AC94(uint64_t a1)
{
  if (a1)
  {
    __chkstk_darwin(a1);
    v2 = v1;

    sub_10002849C(&unk_100980500, &unk_1007C5220);
    sub_100056080();
    StateStore.performTransaction<A>(_:)();
  }
}

uint64_t sub_10058AD70(double a1, double a2, double a3, double a4)
{
  v5 = type metadata accessor for ImpressionMetrics.ID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = type metadata accessor for ImpressionMetrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Shelf.impressionMetrics.getter();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10002B894(v11, &qword_100973D30, &unk_1007B1DC0);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    if (*(v4 + 112))
    {

      ImpressionsCalculator.addElement(_:at:)();

      if (*(v4 + 112))
      {

        ImpressionMetrics.id.getter();
        v16 = ImpressionsCalculator.makeChildCalculator(for:)();

        (*(v6 + 8))(v8, v5);
        (*(v13 + 8))(v15, v12);
        return v16;
      }
    }

    (*(v13 + 8))(v15, v12);
  }

  return 0;
}

uint64_t sub_10058B038(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v7 = sub_10002849C(&qword_100990A90, &unk_1007B5670);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ImpressionMetrics.ID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v17 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  v18 = CompoundScrollObserver.init(children:)();
  if (!*(v4 + 112))
  {
LABEL_4:
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100031660(a1, v9, &qword_100990A90, &unk_1007B5670);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10002B894(v9, &qword_100990A90, &unk_1007B5670);
    goto LABEL_4;
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 16))(v13, v16, v10);
  type metadata accessor for ImpressionIdScrollObserver();
  swift_allocObject();
  swift_retain_n();
  ImpressionIdScrollObserver.init(_:impressionID:collectionView:)();
  CompoundScrollObserver.addChild(_:)();

  (*(v11 + 8))(v16, v10);
  if (a2)
  {
LABEL_5:
    type metadata accessor for VideoPlaybackScrollObserver();
    swift_allocObject();
    v19 = a2;
    VideoPlaybackScrollObserver.init(_:)();
    CompoundScrollObserver.addChild(_:)();
  }

LABEL_6:
  v21 = v24;
  v20 = v25;
  if (v24)
  {
    type metadata accessor for PlaybackScrollObserver();
    swift_allocObject();
    v22 = v21;
    PlaybackScrollObserver.init(_:)();
    CompoundScrollObserver.addChild(_:)();
  }

  if (v20)
  {
    sub_100599198(&qword_10098CB28, type metadata accessor for InteractiveSectionBackgroundScrollCoordinator, &unk_1007CD3C8);

    CompoundScrollObserver.addChild(_:)();
  }

  return v18;
}

double sub_10058B404(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v46 = a4;
  v43 = a3;
  v42[1] = a2;
  v49 = a1;
  v48 = type metadata accessor for ShelfBackground();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v42[0] = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v42 - v6;
  v8 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v8 - 8);
  v10 = v42 - v9;
  v11 = type metadata accessor for Shelf.ContentType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v42 - v16;
  v49 = dispatch thunk of ShelfPresenter.shelf(for:)();
  v50 = v17;
  Shelf.contentType.getter();
  v47 = v7;
  v44 = v10;
  if (v43)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v18 = v45;
    v19 = v48;
    (*(v45 + 104))(v7, enum case for ShelfBackground.none(_:), v48);
  }

  else
  {
    dispatch thunk of ShelfPresenter.contentType(for:)();
    (*(v12 + 56))(v10, 0, 1, v11);
    dispatch thunk of ShelfPresenter.background(for:)();
    v19 = v48;
    v18 = v45;
  }

  v20 = v50;
  (*(v12 + 16))(v14, v50, v11);
  v21 = (*(v12 + 88))(v14, v11);
  v22 = v44;
  v23 = v46;
  if (v21 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v24 = &off_1008D0A88;
  }

  else
  {
    if (v21 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v12 + 8))(v14, v11);
      v26 = v47;
      goto LABEL_11;
    }

    type metadata accessor for InformationRibbonCollectionViewCell(0);
    v24 = &off_1008CBB38;
  }

  v25 = (v24[2])();
  v26 = v47;
  v20 = v50;
  if ((v27 & 1) == 0)
  {
    v28 = *&v25;

    v29 = v28;
    (*(v18 + 8))(v26, v19);
    sub_10002B894(v22, &unk_100992460, &qword_1007B6BF0);
    (*(v12 + 8))(v20, v11);
    return v29;
  }

LABEL_11:
  v45 = v11;
  v30 = sub_1005D8420();
  if (v30)
  {
    v32 = v30;
    v33 = v31;
    v34 = v42[0];
    Shelf.background.getter();
    *&v35 = COERCE_DOUBLE((*(v33 + 48))(v22, v26, v34, v23, v32, v33));
    v37 = v36;

    v38 = *(v18 + 8);
    v39 = v34;
    v40 = v48;
    v38(v39, v48);
    v38(v26, v40);
    sub_10002B894(v22, &unk_100992460, &qword_1007B6BF0);
    (*(v12 + 8))(v50, v45);
    v29 = 0.0;
    if ((v37 & 1) == 0)
    {
      return *&v35;
    }
  }

  else
  {

    (*(v18 + 8))(v26, v19);
    sub_10002B894(v22, &unk_100992460, &qword_1007B6BF0);
    (*(v12 + 8))(v20, v45);
    return 0.0;
  }

  return v29;
}

double sub_10058B978(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Shelf.ContentType();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v33 = &v32 - v8;
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() > a1)
  {
    if (qword_10096E6E8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for EdgeInsetsDimension();
    sub_1000056A8(v13, qword_1009D24D8);
    static Dimensions.defaultRoundingRule.getter();
    EdgeInsetsDimension.value(in:rounded:)();
    (*(v10 + 8))(v12, v9);
    dispatch thunk of ShelfPresenter.title(for:)();
    if (v14)
    {

      top = 0.0;
    }

    else
    {
      if (a1 >= 1)
      {
        v16 = a1 - 1;
      }

      else
      {
        v16 = 0;
      }

      top = sub_10058B404(a1, v16, a1 < 1, a2);
    }

    v18 = v34;
    v17 = v35;
    v19 = v33;
    v20 = dispatch thunk of ShelfPresenter.sectionCount.getter();
    if (a1 + 1 < v20)
    {
      v21 = a1 + 1;
    }

    else
    {
      v21 = 0;
    }

    (*(*v2 + 536))(a1, v21, a1 + 1 >= v20, a2);
    dispatch thunk of ShelfPresenter.contentType(for:)();
    if (sub_100596280(a1))
    {
      goto LABEL_46;
    }

    v22 = sub_1005D8420();
    if (!v22)
    {
      top = UIEdgeInsetsZero.top;
LABEL_46:
      (*(v18 + 8))(v19, v17);
      return top;
    }

    v24 = v22;
    v35 = v23;
    [a2 pageMarginInsets];
    v26 = v25;
    v27 = dispatch thunk of ShelfPresenter.prefersHorizontalShelf(for:)();
    v28 = v32;
    (*(v18 + 16))(v32, v19, v17);
    v29 = (*(v18 + 88))(v28, v17);
    if (v29 != enum case for Shelf.ContentType.smallLockup(_:) && v29 != enum case for Shelf.ContentType.mediumLockup(_:))
    {
      if (v29 == enum case for Shelf.ContentType.largeLockup(_:))
      {
LABEL_19:
        v30 = 1;
LABEL_45:
        (*(v35 + 32))(v30 & 1, a2, v24, v26, v26);
        goto LABEL_46;
      }

      if (v29 != enum case for Shelf.ContentType.inAppPurchaseLockup(_:) && v29 != enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) && v29 != enum case for Shelf.ContentType.action(_:))
      {
        if (v29 == enum case for Shelf.ContentType.ribbonBar(_:))
        {
          goto LABEL_19;
        }

        if (v29 != enum case for Shelf.ContentType.editorialCard(_:) && v29 != enum case for Shelf.ContentType.videoCard(_:))
        {
          v30 = 1;
          if (v29 == enum case for Shelf.ContentType.brick(_:) || v29 == enum case for Shelf.ContentType.categoryBrick(_:))
          {
            goto LABEL_45;
          }

          if (v29 != enum case for Shelf.ContentType.reviews(_:) && v29 != enum case for Shelf.ContentType.appTrailerLockup(_:) && v29 != enum case for Shelf.ContentType.framedVideo(_:) && v29 != enum case for Shelf.ContentType.screenshotsLockup(_:) && v29 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v29 != enum case for Shelf.ContentType.smallBreakout(_:))
          {
            if (v29 == enum case for Shelf.ContentType.editorialStoryCard(_:))
            {
              goto LABEL_19;
            }

            if (v29 != enum case for Shelf.ContentType.mixedMediaLockup(_:) && v29 != enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) && v29 != enum case for Shelf.ContentType.largeGameCenterPlayer(_:) && v29 != enum case for Shelf.ContentType.posterLockup(_:) && v29 != enum case for Shelf.ContentType.smallContactCard(_:))
            {
              if (v29 != enum case for Shelf.ContentType.informationRibbon(_:))
              {
                v30 = v27;
                if (v29 != enum case for Shelf.ContentType.appPromotion(_:))
                {
                  (*(v18 + 8))(v28, v17);
                  v30 = 0;
                }

                goto LABEL_45;
              }

              goto LABEL_19;
            }
          }
        }
      }
    }

    v30 = v27;
    goto LABEL_45;
  }

  return UIEdgeInsetsZero.top;
}

double sub_10058BFB8(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for Shelf.ContentType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  v12 = 0.0;
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() > a1)
  {
    dispatch thunk of ShelfPresenter.contentType(for:)();
    if (!sub_100596280(a1))
    {
      v21[1] = swift_getObjectType();
      v13 = [a2 traitCollection];
      v14 = (*(*v2 + 696))(v11, v13);

      if (v14)
      {
        v15 = [a2 traitCollection];
        v16 = sub_100596434(a1, v15);

        if (v16)
        {
          (*(v6 + 16))(v8, v11, v5);
          v17 = (*(v6 + 88))(v8, v5);
          v18 = *(v6 + 8);
          if (v17 == enum case for Shelf.ContentType.annotation(_:) || v17 == enum case for Shelf.ContentType.productCapability(_:) || v17 == enum case for Shelf.ContentType.productPageLink(_:) || v17 == enum case for Shelf.ContentType.privacyType(_:))
          {
            v18(v11, v5);
            return 30.0;
          }

          v18(v8, v5);
        }

        PageTraitEnvironment.pageColumnMargin.getter();
        v12 = v19;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  return v12;
}

uint64_t sub_10058C2B0(uint64_t a1)
{
  v2 = type metadata accessor for ShelfBackground();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() <= a1)
  {
    v11 = 0;
  }

  else
  {
    dispatch thunk of ShelfPresenter.background(for:)();
    (*(v3 + 104))(v5, enum case for ShelfBackground.none(_:), v2);
    sub_100599198(&qword_100981230, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
    v9 = dispatch thunk of static Equatable.== infix(_:_:)();
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
    v11 = v9 ^ 1;
  }

  return v11 & 1;
}

double sub_10058C49C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ShelfBackground();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() > a1)
  {
    dispatch thunk of ShelfPresenter.background(for:)();
    if ((*(v5 + 88))(v7, v4) == enum case for ShelfBackground.color(_:))
    {
      (*(v5 + 96))(v7, v4);

      v8 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
      v9 = type metadata accessor for ShelfBackgroundStyle();
      (*(*(v9 - 8) + 8))(v7 + v8, v9);
      return sub_10058B978(a1, a2);
    }

    (*(v5 + 8))(v7, v4);
  }

  return UIEdgeInsetsZero.top;
}

double sub_10058C694(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0.0;
  if (dispatch thunk of ShelfPresenter.sectionCount.getter() <= a1)
  {
    return 0.0;
  }

  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = dispatch thunk of ShelfPresenter.title(for:)();
  if (v17)
  {
    v55 = v16;
    v56 = v17;
    v18 = dispatch thunk of ShelfPresenter.seeAllAction(for:)();
    v57 = v10;
    if (v18)
    {
      v51 = Action.title.getter();
      v20 = v19;
      ObjectType = [a2 traitCollection];
      if (qword_10096D648 != -1)
      {
        swift_once();
      }

      v21 = qword_10097E830;
      v52 = a2;
      v53 = v20;
      if (v20)
      {
        v20 = String._bridgeToObjectiveC()();
      }

      [v21 setTitle:v20 forState:0];

      [v21 setImage:0 forState:0];
      v22 = [v21 titleLabel];
      v23 = v22;
      if (v22)
      {
        v51 = v22;
        v24 = v22;
        v25 = [v24 font];
        if (v25)
        {
          v26 = v25;
          v27 = [v25 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:ObjectType];
        }

        else
        {
          v27 = 0;
        }

        [v24 setFont:v27];

        v23 = v51;
      }

      [v21 sizeThatFits:{v13, v15}];
      v30 = v29;
      v11 = v31;

      v28 = v30 + 0.0;
      [v21 setTitle:0 forState:0];
      [v21 setImage:0 forState:0];

      a2 = v52;
    }

    else
    {
      v28 = 0.0;
    }

    ObjectType = swift_getObjectType();
    [a2 pageMarginInsets];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    if (a1 >= 1)
    {
      v39 = a1 - 1;
    }

    else
    {
      v39 = 0;
    }

    v40 = v32 + sub_10058B404(a1, v39, a1 < 1, a2);
    v41 = dispatch thunk of ShelfPresenter.titleArtwork(for:)();
    v53 = type metadata accessor for TitleHeaderView(0);
    v42 = dispatch thunk of ShelfPresenter.eyebrow(for:)();
    v44 = v43;
    v45 = dispatch thunk of ShelfPresenter.eyebrowArtwork(for:)();
    v46 = sub_100596664(v41 != 0, a2);
    v47 = v57;
    (*(*v4 + 632))(a1, a2);
    sub_1003F7390(v42, v44, v45, v55, v56, v41, 0, 0, v13, v15, v28, v11, v40, v34, v36, v38, 0, 0, v46, v47, 1, a2);
    v13 = v48;

    sub_10022AA04(v47, type metadata accessor for TitleHeaderView.Style);
  }

  return v13;
}

id sub_10058CB6C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v35 = a4;
  v6 = type metadata accessor for ShelfBackground();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001007FB9B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [v35 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
LABEL_5:
    v14 = v13;

LABEL_6:
    return v14;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v16 == a2)
  {

    goto LABEL_20;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
LABEL_20:
    IndexPath.section.getter();
    dispatch thunk of ShelfPresenter.background(for:)();
    v20 = (*(v7 + 88))(v9, v6);
    v21 = enum case for ShelfBackground.interactive(_:);
    v10 = String._bridgeToObjectiveC()();
    if (v20 == v21)
    {
      type metadata accessor for InteractiveTitleHeaderView(0);
      static UICollectionReusableView.defaultReuseIdentifier.getter();
      v11 = String._bridgeToObjectiveC()();

      v12.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v13 = [v35 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
      goto LABEL_5;
    }

    type metadata accessor for TitleHeaderView(0);
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v22 = String._bridgeToObjectiveC()();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v24 = [v35 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v22 forIndexPath:isa];

    (*(v7 + 8))(v9, v6);
    return v24;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v19 == a2)
  {

LABEL_24:
    v26 = String._bridgeToObjectiveC()();
    type metadata accessor for InfiniteScrollFooterView();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v27 = String._bridgeToObjectiveC()();

    v12.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v14 = [v35 dequeueReusableSupplementaryViewOfKind:v26 withReuseIdentifier:v27 forIndexPath:v12.super.isa];

    goto LABEL_6;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_24;
  }

  v28._countAndFlagsBits = 0xD00000000000001CLL;
  v28._object = 0x800000010081AA30;
  if (String.hasPrefix(_:)(v28))
  {
    type metadata accessor for AdBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = String._bridgeToObjectiveC()();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v31 = String._bridgeToObjectiveC()();

    v32 = v35;
    [v35 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v30 withReuseIdentifier:v31];

    v10 = String._bridgeToObjectiveC()();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v11 = String._bridgeToObjectiveC()();

    v12.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [v32 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
    goto LABEL_5;
  }

  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v36 = 0xD00000000000001BLL;
  v37 = 0x800000010081AA70;
  v33._countAndFlagsBits = a1;
  v33._object = a2;
  String.append(_:)(v33);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10058D160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v167 = a5;
  v175 = a4;
  v171 = a1;
  v10 = *v6;
  v173 = a6;
  v174 = v10;
  v11 = type metadata accessor for ShelfBackground();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v151 - v16);
  __chkstk_darwin(v18);
  v20 = &v151 - v19;
  v21 = sub_10002849C(&qword_100984340, qword_1007C0830);
  __chkstk_darwin(v21 - 8);
  v166 = (&v151 - v22);
  v159 = type metadata accessor for Shelf.PresentationHints();
  v158 = *(v159 - 8);
  __chkstk_darwin(v159);
  v157 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v156 = &v151 - v25;
  v165 = type metadata accessor for Artwork.Crop();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v27 - 8);
  v162 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v155);
  v172 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v30 == a3)
  {

LABEL_5:
    v32 = type metadata accessor for InteractiveTitleHeaderView(0);
    v33 = v171;
    v151 = v32;
    v34 = swift_dynamicCastClass();
    v153 = v11;
    v152 = v12;
    v154 = v20;
    if (v34)
    {
      v161 = v34;
      v35 = *(v34 + OBJC_IVAR____TtC8AppStore26InteractiveTitleHeaderView_titleView);
      v36 = v33;
    }

    else
    {
      type metadata accessor for TitleHeaderView(0);
      v35 = swift_dynamicCastClassUnconditional();
      v161 = 0;
    }

    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    v37 = v35;
    inject<A, B>(_:from:)();
    v169 = v7;
    v170 = v176[0];
    v38 = v7[2];
    v39 = v174[10];
    v40 = v174[12];
    v41 = dispatch thunk of ShelfPresenter.eyebrowArtwork(for:)();
    v42 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork;
    v43 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtwork);

    sub_1003F1948(v41);
    *(v37 + v42) = v41;

    sub_1003F195C(v43);

    v171 = v38;
    v44 = dispatch thunk of ShelfPresenter.eyebrow(for:)();
    v46 = v45;
    v47 = (v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText);
    v48 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText);
    v49 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowText + 8);

    sub_1003F1328(v44, v46);
    *v47 = v44;
    v47[1] = v46;

    sub_1003F13BC(v48, v49);

    v50 = *(v37 + v42);

    if (v50)
    {
      v51 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_eyebrowArtworkView);
      if (v51)
      {
        v52 = *(v37 + v42);
        v53 = v172;
        (*((swift_isaMask & *v37) + 0x1C0))();
        v54 = v162;
        sub_1001EFDF0(v53, v162);

        v55 = v51;
        sub_10022AA04(v53, type metadata accessor for TitleHeaderView.Style);
        sub_1003FA3DC(v52, v54, v37);

        sub_10022AA04(v54, type metadata accessor for TitleHeaderView.TextConfiguration);
        v56 = v163;
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*(v164 + 8))(v56, v165);
        Artwork.config(_:mode:prefersLayeredImage:)();
        type metadata accessor for ArtworkView();
        sub_100599198(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
      }
    }

    v58 = dispatch thunk of ShelfPresenter.titleArtwork(for:)();
    v59 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork;
    v60 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtwork);

    sub_1003F1AE8(v58);
    *(v37 + v59) = v58;

    sub_1003F1BFC(v60);

    v160 = *(v37 + v59);
    v61 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel;
    v62 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel);
    dispatch thunk of ShelfPresenter.title(for:)();
    if (v63)
    {
      v64 = String._bridgeToObjectiveC()();
    }

    else
    {
      v64 = 0;
    }

    [v62 setText:v64];

    v65 = *(v37 + v59);
    if (v65)
    {
      v66 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleArtworkView);
      if (v66)
      {
        v67 = v172;
        (*((swift_isaMask & *v37) + 0x1C0))();
        v68 = v162;
        sub_1001EFDF0(v67 + *(v155 + 20), v162);

        v69 = v66;
        sub_10022AA04(v67, type metadata accessor for TitleHeaderView.Style);
        sub_1003FA3DC(v65, v68, v37);
        sub_10022AA04(v68, type metadata accessor for TitleHeaderView.TextConfiguration);
        v70 = v163;
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        (*(v164 + 8))(v70, v165);
        Artwork.config(_:mode:prefersLayeredImage:)();
        type metadata accessor for ArtworkView();
        sub_100599198(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
      }
    }

    v71 = v160 != 0;
    v72 = swift_allocObject();
    *(v72 + 16) = v39;
    v73 = v174;
    v74 = v174[11];
    *(v72 + 24) = v74;
    *(v72 + 32) = v40;
    *(v72 + 40) = v71;
    *(v72 + 48) = v73;
    v75 = (v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines);
    *v75 = sub_100597B2C;
    v75[1] = v72;

    [*(v37 + v61) setNumberOfLines:{sub_100596664(v71, v37)}];

    v76 = v175;
    v77 = dispatch thunk of ShelfPresenter.seeAllAction(for:)();
    v168 = v39;
    if (v77)
    {
      v174 = v74;
      dispatch thunk of ShelfPresenter.shelf(for:)();
      v78 = v156;
      Shelf.presentationHints.getter();

      v79 = v157;
      static Shelf.PresentationHints.accessoriesFollowBackground.getter();
      sub_100599198(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      v80 = v159;
      v81 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v82 = *(v158 + 8);
      v82(v79, v80);
      v82(v78, v80);
      if (v81)
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        v83 = static UIColor.primaryText.getter();
        v84 = v83;
      }

      else
      {
        v83 = 0;
      }

      v93 = v37;
      v94 = Action.title.getter();
      v95 = v166;
      *v166 = v94;
      v95[1] = v96;
      v95[2] = v83;
      v97 = type metadata accessor for Accessory(0);
      v95[3] = 0;
      v95[4] = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v97 - 8) + 56))(v95, 0, 1, v97);
      (*((swift_isaMask & *v93) + 0x268))(v95, v173);

      sub_10002B894(v95, &qword_100984340, qword_1007C0830);
      v98 = swift_allocObject();
      v92 = v169;
      swift_weakInit();
      v99 = swift_allocObject();
      v100 = v174;
      v99[2] = v168;
      v99[3] = v100;
      v99[4] = v40;
      v99[5] = v98;
      v101 = v175;
      v99[6] = v175;
      v102 = (v93 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
      v76 = v101;
      v103 = *v102;
      v104 = v102[1];
      *v102 = sub_100597B4C;
      v102[1] = v99;

      sub_10001F63C(v103, v104);
    }

    else
    {
      v85 = type metadata accessor for Accessory(0);
      v86 = v166;
      (*(*(v85 - 8) + 56))(v166, 1, 1, v85);
      v87 = *((swift_isaMask & *v37) + 0x268);
      v88 = v37;
      v87(v86, v173);
      sub_10002B894(v86, &qword_100984340, qword_1007C0830);
      v89 = (v88 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
      v90 = *(v88 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction);
      v91 = *(v88 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_accessoryAction + 8);
      *v89 = 0;
      v89[1] = 0;
      sub_10001F63C(v90, v91);
      v92 = v169;
    }

    v105 = v172;
    v106 = v167;
    (*(*v92 + 632))(v76, v167);
    (*((swift_isaMask & *v37) + 0x1C8))(v105);
    v107 = *(v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel);
    v108 = v107;

    v109 = v161;
    if (v107)
    {
      dispatch thunk of ShelfPresenter.subtitle(for:)();
      if (v110)
      {
        v111 = String._bridgeToObjectiveC()();
      }

      else
      {
        v111 = 0;
      }

      [v108 setText:v111];

      v92 = v169;
    }

    if (v109)
    {
      swift_beginAccess();
      if (*(v92[8] + 16))
      {
        sub_1003D7340(v76);
        if (v112)
        {
          v177 = v151;
          v178 = &off_1008BC4B0;
          v176[0] = v109;
          v109 = v109;

          sub_100438E58(v176);

          sub_10002B894(v176, &unk_10097E140, &unk_1007BD220);
        }
      }
    }

    else
    {
      v113 = v154;
      dispatch thunk of ShelfPresenter.background(for:)();
      [v37 setOverrideUserInterfaceStyle:sub_1001AAD64()];
      (*(v152 + 8))(v113, v153);
    }

    [v106 pageMarginInsets];
    v116 = v115;
    v118 = v117;
    v120 = v119;
    if (v76 >= 1)
    {
      v121 = v76 - 1;
    }

    else
    {
      v121 = 0;
    }

    v122 = v114 + sub_10058B404(v76, v121, v76 < 1, v106);
    [v37 setLayoutMargins:{v122, v116, v118, v120}];
    v123 = (v37 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorInset);
    *v123 = v122;
    v123[1] = v116;
    v123[2] = v118;
    v123[3] = v120;
    [v37 setNeedsLayout];
    [v37 setNeedsLayout];

    return;
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
    goto LABEL_5;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v57 == a3)
  {

LABEL_43:
    type metadata accessor for InfiniteScrollFooterView();
    v125 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8AppStore24InfiniteScrollFooterView_activityIndicator);

    [v125 startAnimating];
    return;
  }

  v154 = v20;
  v124 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v124)
  {
    goto LABEL_43;
  }

  type metadata accessor for MaterialGradientSectionBackgroundView();
  if (static UICollectionReusableView.elementKind.getter() == a2 && v126 == a3)
  {
    goto LABEL_48;
  }

  v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v127)
  {
    goto LABEL_50;
  }

  type metadata accessor for GradientSectionBackgroundView();
  if (static UICollectionReusableView.elementKind.getter() == a2 && v134 == a3)
  {
    goto LABEL_48;
  }

  v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v135)
  {
    goto LABEL_50;
  }

  type metadata accessor for ArtworkSectionBackgroundView();
  if (static UICollectionReusableView.elementKind.getter() == a2 && v136 == a3)
  {
LABEL_48:

LABEL_50:
    v128 = v171;
    swift_getObjectType();
    v129 = swift_conformsToProtocol2();
    if (v129 && v128)
    {
      v130 = v129;
      ObjectType = swift_getObjectType();
      v132 = v128;
      v133 = v154;
      dispatch thunk of ShelfPresenter.background(for:)();
      (*(v130 + 8))(v133, v173, ObjectType, v130, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);

      (*(v12 + 8))(v133, v11);
    }

    return;
  }

  v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v137)
  {
    goto LABEL_50;
  }

  v138 = type metadata accessor for InteractiveSectionBackgroundView(0);
  if (static UICollectionReusableView.elementKind.getter() == a2 && v139 == a3)
  {
  }

  else
  {
    v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v140 & 1) == 0)
    {
      if (a2 == 0x676B636142706F74 && a3 == 0xED0000646E756F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        dispatch thunk of ShelfPresenter.background(for:)();
        if ((*(v12 + 88))(v17, v11) != enum case for ShelfBackground.color(_:))
        {
          (*(v12 + 8))(v17, v11);
          return;
        }

        (*(v12 + 96))(v17, v11);
        v146 = *v17;
        v147 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
        v148 = type metadata accessor for ShelfBackgroundStyle();
        (*(*(v148 - 8) + 8))(v17 + v147, v148);
      }

      else
      {
        if ((a2 != 0xD000000000000010 || 0x80000001007FB9B0 != a3) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || dispatch thunk of ShelfPresenter.sectionCount.getter() < 1)
        {
          return;
        }

        if (__OFSUB__(dispatch thunk of ShelfPresenter.sectionCount.getter(), 1))
        {
          __break(1u);
          return;
        }

        dispatch thunk of ShelfPresenter.background(for:)();
        if ((*(v12 + 88))(v14, v11) != enum case for ShelfBackground.color(_:))
        {
          (*(v12 + 8))(v14, v11);
          return;
        }

        (*(v12 + 96))(v14, v11);
        v146 = *v14;
        v149 = *(sub_10002849C(&qword_100972A40, &unk_1007B3750) + 48);
        v150 = type metadata accessor for ShelfBackgroundStyle();
        (*(*(v150 - 8) + 8))(v14 + v149, v150);
      }

      [v171 setBackgroundColor:v146];

      return;
    }
  }

  v141 = v171;
  v142 = swift_dynamicCastClass();
  if (v142)
  {
    v143 = v142;
    swift_beginAccess();
    if (*(v7[8] + 16))
    {
      sub_1003D7340(v175);
      if (v144)
      {
        v177 = v138;
        v178 = &off_1008C29C0;
        v176[0] = v143;
        v145 = v141;

        sub_100438E58(v176);

        sub_10002B894(v176, &unk_10097E140, &unk_1007BD220);
      }
    }
  }
}