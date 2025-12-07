uint64_t sub_1005B9820(uint64_t a1)
{
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v9 - v4;
  sub_1005BED74(a1, &v9);
  sub_1005A9268(&v9, v5);
  sub_1000095E8(&v9, &unk_101196F60, &qword_100ED5C80);
  sub_1005A9A58();
  sub_1000089F8(v5, v3, &unk_1011A4B90, &unk_100ED2800);
  v6 = type metadata accessor for LibraryImport.ViewModel(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_1000095E8(v3, &unk_1011A4B90, &unk_100ED2800);
    v9 = 0u;
    v10 = 0u;
  }

  else
  {
    *(&v10 + 1) = v6;
    v7 = sub_10001C8B8(&v9);
    sub_1005C29E8(v3, v7, type metadata accessor for LibraryImport.ViewModel);
  }

  sub_1005BDE8C(&v9, 0);

  return sub_1000095E8(v5, &unk_1011A4B90, &unk_100ED2800);
}

id sub_1005B99E0()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___dropIndicationView;
  v2 = *&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___dropIndicationView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___dropIndicationView];
  }

  else
  {
    sub_1005B9A44(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1005B9A44(void *a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setUserInteractionEnabled:0];
  v3 = [v2 layer];
  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 tintColor];

    if (v6)
    {
      v7 = [v6 CGColor];

      [v3 setBorderColor:v7];
      v8 = [v2 layer];
      [v8 setBorderWidth:3.0];

      v9 = [v2 layer];
      [v9 setCornerRadius:12.0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1005B9B9C(char a1)
{
  if (v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_isActiveDropSessionInsideView] == (a1 & 1))
  {
    return;
  }

  if (!v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_isActiveDropSessionInsideView])
  {
    isa = sub_1005B99E0();
    [isa removeFromSuperview];
    goto LABEL_12;
  }

  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  v4 = v1;
  v5 = sub_1005B99E0();
  v6 = UIView.forAutolayout.getter();

  [v3 addSubview:v6];
  v7 = [v4 view];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___dropIndicationView;
  [v7 bringSubviewToFront:*&v4[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___dropIndicationView]];

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100EBDC10;
  v11 = [*&v4[v9] topAnchor];
  v12 = [v4 view];
  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12;
  v14 = [v12 safeAreaLayoutGuide];

  v15 = [v14 topAnchor];
  v16 = [v11 constraintEqualToAnchor:v15];

  *(v10 + 32) = v16;
  v17 = [*&v4[v9] leadingAnchor];
  v18 = [v4 view];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [v18 safeAreaLayoutGuide];

  v21 = [v20 leadingAnchor];
  v22 = [v17 constraintEqualToAnchor:v21 constant:8.0];

  *(v10 + 40) = v22;
  v23 = [*&v4[v9] bottomAnchor];
  v24 = [v4 view];
  if (!v24)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  v26 = [v24 safeAreaLayoutGuide];

  v27 = [v26 bottomAnchor];
  v28 = [v23 constraintEqualToAnchor:v27];

  *(v10 + 48) = v28;
  v29 = [v4 view];
  if (!v29)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v30 = v29;
  v31 = objc_opt_self();
  v32 = [v30 safeAreaLayoutGuide];

  v33 = [v32 trailingAnchor];
  v34 = [*&v4[v9] trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:8.0];

  *(v10 + 56) = v35;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v31 activateConstraints:isa];
LABEL_12:
}

uint64_t sub_1005BA07C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v16 - v8;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v10 == a3)
  {
    goto LABEL_7;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    strcpy(v16, "Unknown kind=");
    v16[7] = -4864;
    v13._countAndFlagsBits = a2;
    v13._object = a3;
    String.append(_:)(v13);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
  }

  sub_1005AC238(v9);
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v14 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v7 + 8))(v9, v6);
  return v14;
}

id sub_1005BA3A0(uint64_t a1, void (*a2)(void, void, void, void))
{
  v159 = a1;
  v151 = sub_10010FC20(qword_101196EA0, &qword_100ED59B0);
  v150 = *(v151 - 1);
  __chkstk_darwin();
  v149 = (&v119 - v3);
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v152 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v153 = &v119 - v5;
  v129 = type metadata accessor for UICellAccessory.LabelOptions();
  v128 = *(v129 - 8);
  __chkstk_darwin();
  v127 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for UICellAccessory.Placement();
  v120 = *(v122 - 8);
  __chkstk_darwin();
  v124 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v125 = *(v126 - 8);
  __chkstk_darwin();
  v121 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for UICellAccessory();
  v157 = *(v131 - 8);
  __chkstk_darwin();
  v119 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v119 - v10;
  v148 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v147 = *(v148 - 8);
  __chkstk_darwin();
  v146 = &v119 - v11;
  v145 = type metadata accessor for UICellAccessory.ReorderOptions();
  v144 = *(v145 - 8);
  __chkstk_darwin();
  v143 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v141 = *(v142 - 8);
  __chkstk_darwin();
  v140 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  __chkstk_darwin();
  v156 = &v119 - v14;
  v139 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v138 = *(v139 - 8);
  __chkstk_darwin();
  v137 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for UICellAccessory.DisplayedState();
  v158 = *(v155 - 8);
  __chkstk_darwin();
  v154 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_10010FC20(&qword_101196E90, &qword_100ED59A8);
  v133 = *(v135 - 8);
  __chkstk_darwin();
  v18 = &v119 - v17;
  sub_10010FC20(&unk_101197070, &unk_100ED1BC0);
  __chkstk_darwin();
  v20 = &v119 - v19;
  v136 = sub_10010FC20(&qword_101196E80, &qword_100ED59A0);
  v134 = *(v136 - 8);
  __chkstk_darwin();
  v22 = &v119 - v21;
  v23 = sub_10010FC20(&qword_101196E70, &qword_100ED5998);
  v132 = *(v23 - 8);
  __chkstk_darwin();
  v25 = &v119 - v24;
  v26 = sub_10010FC20(&qword_101196E60, &qword_100ED5990);
  v130 = *(v26 - 1);
  __chkstk_darwin();
  v28 = &v119 - v27;
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v30 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = (&v119 - v31);
  v160 = a2;
  v33 = IndexPath.section.getter();
  sub_1005BF47C(v33);
  if (v34 > 1u)
  {
    if (v34 != 2)
    {
      v51 = v153;
      v52 = v160;
      sub_1005A7C20(0, v153);
      v53 = v149;
      sub_1005AC9A8(v149);
      v54 = sub_1007FD1B8(v53, v52, v51);
      (*(v150 + 8))(v53, v151);
      v55 = Corner.medium.unsafeMutableAddressor();
      v56 = *v55;
      v57 = v55[1];
      v58 = *(v55 + 16);
      v59 = swift_allocObject();
      *(v59 + 16) = v56;
      *(v59 + 24) = v57;
      *(v59 + 32) = v58;
      UICollectionViewCell.configurationUpdateHandler.setter();
      v60 = v152;
      sub_1000089F8(v51, v152, &unk_101197040, &unk_100EDAE40);
      v61 = type metadata accessor for RecentlyAddedMusicItem();
      v62 = *(v61 - 8);
      if ((*(v62 + 48))(v60, 1, v61) == 1)
      {
        sub_1000095E8(v60, &unk_101197040, &unk_100EDAE40);
        v164 = 0u;
        v165 = 0u;
        v166 = 0;
      }

      else
      {
        *(&v165 + 1) = v61;
        v166 = sub_100029710(&qword_101197080, &type metadata accessor for RecentlyAddedMusicItem, &protocol conformance descriptor for RecentlyAddedMusicItem);
        v65 = sub_10001C8B8(&v164);
        (*(v62 + 32))(v65, v60, v61);
      }

      v64 = sub_1004F24B0(&v164);

      sub_1000095E8(v51, &unk_101197040, &unk_100EDAE40);
      sub_1000095E8(&v164, &qword_1011A3DD0, &unk_100EC03F0);
      return v64;
    }

    v38 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
    v39 = v161;
    swift_beginAccess();
    v22 = *(v39 + v38);
    v40 = v160;
    if (v22)
    {

      v41 = v40;
      v42 = IndexPath.item.getter();
      if ((v42 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v43 = *(v22 + 2);
      if (v42 >= v43)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        v26 = sub_10049AA14((v43 > 1), v41, 1, v26);
LABEL_37:
        v114 = v131;
        v95 = v152;
        v115 = v153;
        v116 = v135;

        *(v26 + 2) = v41;
        (*(v157 + 32))(&v26[v116 + v18 * v115], v22, v114);
        goto LABEL_38;
      }

      v44 = v22[v42 + 32];
    }

    else
    {
      v44 = 13;
    }

    sub_1005AC738(v18);
    LODWORD(v134) = v44;
    v152 = sub_1007FCE50(v18, v40, v44);
    (*(v133 + 8))(v18, v135);
    sub_10010FC20(&unk_101184740, &qword_100ED5D60);
    v153 = *(v157 + 72);
    v66 = (*(v157 + 80) + 32) & ~*(v157 + 80);
    v150 = 2 * v153;
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_100EBE260;
    v151 = v67;
    v135 = v66;
    v136 = v67 + v66;
    v68 = v158;
    v69 = v158 + 104;
    v149 = *(v158 + 104);
    v71 = v154;
    v70 = v155;
    (v149)(v154, enum case for UICellAccessory.DisplayedState.whenNotEditing(_:), v155);
    v72 = type metadata accessor for UICellAccessory.LayoutDimension();
    v73 = *(v72 - 8);
    v160 = *(v73 + 56);
    v74 = v73 + 56;
    v75 = v156;
    v160(v156, 1, 1, v72);
    v159 = v74;
    v76 = v137;
    UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.disclosureIndicator(displayed:options:)();
    (*(v138 + 8))(v76, v139);
    v77 = *(v68 + 8);
    v77(v71, v70);
    LODWORD(v158) = enum case for UICellAccessory.DisplayedState.whenEditing(_:);
    v78 = v149;
    (v149)(v71);
    v160(v75, 1, 1, v72);
    v79 = v140;
    UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
    static UICellAccessory.multiselect(displayed:options:)();
    v80 = v79;
    v81 = v78;
    (*(v141 + 8))(v80, v142);
    v77(v71, v70);
    v141 = v69;
    v78(v71, v158, v70);
    v142 = v72;
    v160(v75, 1, 1, v72);
    v82 = v143;
    UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
    v83 = v161;
    static UICellAccessory.reorder(displayed:options:)();
    (*(v144 + 8))(v82, v145);
    v158 = v68 + 8;
    v77(v71, v70);
    v84 = v83;
    v85 = sub_1005AB840();
    v86 = OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueue;
    swift_beginAccess();
    v87 = v147;
    v88 = v85 + v86;
    v89 = v146;
    v90 = v148;
    (*(v147 + 16))(v146, v88, v148);

    sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v91 = dispatch thunk of Collection.distance(from:to:)();
    (*(v87 + 8))(v89, v90);
    if (v91 < 1)
    {
      v94 = *(v84 + OBJC_IVAR____TtC5Music25LibraryMainViewController_downloadSpinner);
      *(v84 + OBJC_IVAR____TtC5Music25LibraryMainViewController_downloadSpinner) = 0;
    }

    else
    {
      if (v134 == 12)
      {
        v162 = v91;
        sub_1005C2A58();
        BinaryInteger.formatted()();
        v160(v156, 1, 1, v142);
        v97 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
        UIFont.monospacedDigits()();

        v98 = v127;
        UICellAccessory.LabelOptions.init(isHidden:reservedLayoutWidth:tintColor:font:adjustsFontForContentSizeCategory:)();
        v100 = v154;
        v99 = v155;
        v81(v154, enum case for UICellAccessory.DisplayedState.always(_:), v155);
        v101 = v119;
        static UICellAccessory.label(text:displayed:options:)();

        v77(v100, v99);
        (*(v128 + 8))(v98, v129);
        v102 = v151;
        v104 = *(v151 + 2);
        v103 = *(v151 + 3);
        if (v104 >= v103 >> 1)
        {
          v102 = sub_10049AA14((v103 > 1), v104 + 1, 1, v151);
        }

        v105 = v131;
        v95 = v152;
        v106 = v153;
        v107 = v135;
        *(v102 + 2) = v104 + 1;
        (*(v157 + 32))(&v102[v107 + v104 * v106], v101, v105);
        goto LABEL_38;
      }

      if (v134 == 11)
      {
        v92 = *(v84 + OBJC_IVAR____TtC5Music25LibraryMainViewController_downloadSpinner);
        v26 = v151;
        if (v92)
        {
          v30 = *(v84 + OBJC_IVAR____TtC5Music25LibraryMainViewController_downloadSpinner);
        }

        else
        {
          v30 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
          [v30 startAnimating];
        }

        v108 = v142;
        v109 = sub_10010FC20(&qword_101197090, &qword_100ED5D68);
        v110 = v124;
        v111 = &v124[*(v109 + 48)];
        v81(v124, enum case for UICellAccessory.DisplayedState.always(_:), v155);
        *v111 = static MPMediaLibraryFilteringOptions.none.getter;
        v111[1] = 0;
        (*(v120 + 104))(v110, enum case for UICellAccessory.Placement.trailing(_:), v122);
        v160(v156, 1, 1, v108);
        v112 = v92;
        v113 = v121;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        v22 = v123;
        static UICellAccessory.customView(configuration:)();
        (*(v125 + 8))(v113, v126);
        v18 = *(v26 + 2);
        v43 = *(v26 + 3);
        v41 = v18 + 1;
        if (v18 < v43 >> 1)
        {
          goto LABEL_37;
        }

        goto LABEL_44;
      }
    }

    v95 = v152;
LABEL_38:
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v117 = v95;

    UICollectionViewCell.configurationUpdateHandler.setter();

    UICollectionViewListCell.accessories.setter();
    v64 = v117;

    [v64 directionalLayoutMargins];
    [v64 setDirectionalLayoutMargins:?];
    [v64 directionalLayoutMargins];
    [v64 setDirectionalLayoutMargins:?];

    return v64;
  }

  if (v34)
  {
    v45 = v161;
    sub_1005AB368(v22);
    v46 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
    swift_beginAccess();
    v47 = *(v45 + v46);
    if (!v47)
    {
      swift_endAccess();
      v93 = type metadata accessor for MusicPin();
      (*(*(v93 - 8) + 56))(v20, 1, 1, v93);
      v26 = v160;
      goto LABEL_27;
    }

    v26 = v160;
    v41 = v160;
    v48 = IndexPath.item.getter();
    if ((v48 & 0x8000000000000000) == 0)
    {
      v41 = v48;
      v43 = *(v47 + 16);
      if (v48 < v43)
      {
        v49 = type metadata accessor for MusicPin();
        v50 = *(v49 - 8);
        (*(v50 + 16))(v20, v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41, v49);
        swift_endAccess();
        (*(v50 + 56))(v20, 0, 1, v49);
LABEL_27:
        v64 = sub_1007FC8FC(v22, v26, v20);
        sub_1000095E8(v20, &unk_101197070, &unk_100ED1BC0);
        (*(v134 + 8))(v22, v136);
        *(v64 + OBJC_IVAR____TtCE5MusicO9MusicCore7Library22PinsCollectionViewCell_shouldAnimateJiggle) = *(v45 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext) & 1;
        sub_1006B52D8();
        return v64;
      }

      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v35 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
  v36 = v161;
  swift_beginAccess();
  sub_1000089F8(v36 + v35, v32, &unk_1011A4B90, &unk_100ED2800);
  v37 = type metadata accessor for LibraryImport.ViewModel(0);
  if ((*(*(v37 - 8) + 48))(v32, 1, v37) == 1)
  {
    sub_1000095E8(v32, &unk_1011A4B90, &unk_100ED2800);
LABEL_31:
    v96 = v161;
    sub_1005AC4C0(v25);
    sub_1000089F8(v96 + v35, v30, &unk_1011A4B90, &unk_100ED2800);
    v64 = sub_1007FC3C0(v25, v160, v30);
    sub_1000095E8(v30, &unk_1011A4B90, &unk_100ED2800);
    (*(v132 + 8))(v25, v23);
    return v64;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1005C3434(v32, type metadata accessor for LibraryImport.ViewModel);
    goto LABEL_31;
  }

  v63 = *v32;
  sub_1005ACC20(v28);
  v163 = v63;
  type metadata accessor for InlineBubbleTipCell();
  type metadata accessor for InlineBubbleTipProvider.InlineBubbleTip();

  v64 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  (*(v130 + 8))(v28, v26);
  return v64;
}

void *sub_1005BBC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_1011888C0, &qword_100EC2FA0);
  __chkstk_darwin();
  v5 = v20 - v4;
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v20 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    static UIBackgroundConfiguration.listCell()();
    v14 = type metadata accessor for UICellConfigurationState();
    v20[3] = v14;
    v20[4] = &protocol witness table for UICellConfigurationState;
    v15 = sub_10001C8B8(v20);
    (*(*(v14 - 8) + 16))(v15, a2, v14);
    UIBackgroundConfiguration.updated(for:)();
    sub_10000959C(v20);
    if (UICellConfigurationState.isEditing.getter())
    {
      v16 = UIBackgroundConfiguration.backgroundColor.getter();
      if (v16)
      {
        v17 = v16;
        [v16 colorWithAlphaComponent:0.8];
      }
    }

    else
    {
      if (*(v13 + OBJC_IVAR____TtC5Music25LibraryMainViewController_isActiveDropSessionInsideView) != 1)
      {
LABEL_8:
        (*(v7 + 16))(v5, v9, v6);
        (*(v7 + 56))(v5, 0, 1, v6);
        UICollectionViewCell.backgroundConfiguration.setter();

        v19 = *(v7 + 8);
        v19(v9, v6);
        return (v19)(v11, v6);
      }

      v18 = [objc_opt_self() tableCellPlainBackgroundColor];
    }

    UIBackgroundConfiguration.backgroundColor.setter();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1005BC20C(void *a1, uint64_t a2)
{
  v4 = IndexPath.section.getter();
  sub_1005BF47C(v4);
  if (v5 != 1)
  {
    if ((UICollectionView.isDraggingCell(at:)() & 1) == 0)
    {
      v7 = [a1 isEditing] ^ 1;
      return v7 & 1;
    }

    goto LABEL_6;
  }

  v6 = *(v2 + OBJC_IVAR____TtC5Music25LibraryMainViewController_dragDropController);
  if (v6 && *(v6 + 96))
  {
LABEL_6:
    v7 = 0;
    return v7 & 1;
  }

  v7 = *(v2 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext) ^ 1;
  return v7 & 1;
}

void sub_1005BC4B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v6 = a3;
  if (![a1 isEditing])
  {
    return;
  }

  v7 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
  swift_beginAccess();
  v8 = *(v4 + v7);
  if (!v8)
  {
    return;
  }

  v9 = IndexPath.item.getter();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v8 + 16))
  {
    v7 = *(v8 + v9 + 32);

    v10 = sub_1005B4C3C(v20);
    if (*v11)
    {
      Library.Menu.setSelectionState(_:for:)(v6, v7);
    }

    v10(v20, 0);
    if (qword_10117F750 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_14:
  swift_once();
LABEL_8:
  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, static Logger.libraryView);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20[0] = v16;
    *v15 = 136446210;
    v17 = Library.Menu.Identifier.description.getter(v7);
    v19 = sub_1000105AC(v17, v18, v20);

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v13, v14, a4, v15, 0xCu);
    sub_10000959C(v16);
  }
}

uint64_t sub_1005BC6C4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const char *a6, ...)
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a1;
  sub_1005BC4B8(v14, v13, a5, a6);

  return (*(v11 + 8))(v13, v10);
}

void sub_1005BC8C4(void *a1)
{
  type metadata accessor for Logger();
  if ([a1 isEditing])
  {
    v3 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
    swift_beginAccess();
    v4 = *(v1 + v3);
    if (v4)
    {

      v5 = IndexPath.item.getter();
      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v5 < *(v4 + 16))
      {
        v6 = *(v4 + v5 + 32);

        v7 = sub_1005B4C3C(v9);
        v8 = IndexPath.item.getter();
        Library.Menu.move(_:to:)(v6, v8);
        v7(v9, 0);
        return;
      }

      __break(1u);
    }
  }
}

id sub_1005BCED4(uint64_t a1)
{
  v2 = IndexPath.section.getter();
  sub_1005BF47C(v2);
  v4 = v3;
  result = 0;
  if (v4 > 1u)
  {
    if (v4 == 2)
    {
      return result;
    }

    v8 = sub_1005A5F8C();
    v9 = sub_10023D4E4(a1, 0, 1);
    goto LABEL_8;
  }

  if (v4)
  {
    v6 = sub_1005A5F8C();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v8 = [v6 cellForItemAtIndexPath:isa];

    result = 0;
    if (v8)
    {
      _s22PinsCollectionViewCellCMa();
      if (!swift_dynamicCastClass())
      {
        v10 = 0;
        goto LABEL_9;
      }

      v9 = sub_1006B0F58();
LABEL_8:
      v10 = v9;
LABEL_9:

      return v10;
    }
  }

  return result;
}

id sub_1005BCFC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  v11 = sub_1005BCED4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t sub_1005BD120()
{
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v2 = &v13 - v1;
  v3 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - v5;
  if (*(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision))
  {

    RequestResponse.Revision.content.getter(v2);

    v7 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
    if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
    {
      sub_1000095E8(v2, &unk_10118D090, &unk_100ED5CB0);
    }

    else
    {
      (*(v4 + 16))(v6, v2, v3);
      sub_1000095E8(v2, &unk_10118D0A0, &unk_100EC8DC8);
      v8 = MusicLibrarySectionedResponse.totalItemCount.getter();
      (*(v4 + 8))(v6, v3);
      if (!v8)
      {
        v10 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
        swift_beginAccess();
        v11 = *(v0 + v10);
        if (v11)
        {
          if (!*(v11 + 16))
          {
            *(&v15 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
            v16 = &protocol witness table for UIContentUnavailableConfiguration;
            v12 = sub_10001C8B8(&v14);
            sub_1007DBC1C(v12);
            return UIViewController.contentUnavailableConfiguration.setter();
          }
        }
      }
    }
  }

  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

void sub_1005BD4A8(unint64_t *a1, void *a2)
{
  v3 = *a1;

  v4 = [a2 navigationItem];
  v5 = [v4 rightBarButtonItems];

  if (v5)
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_10047C934(v3, v6);

    if (v7)
    {
      return;
    }
  }

  else
  {
  }

  v8 = [a2 navigationItem];
  sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setRightBarButtonItems:isa animated:1];
}

void sub_1005BD648(uint64_t a1)
{
  v2 = sub_100110298(&off_10109BCD8);
  v16 = v2;
  v3 = sub_10059B3FC();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v3) & 1) != 0 && (sub_10049CB78() & 1) == 0)
  {
    sub_1003B48A8(v15, 1);
    v2 = v16;
  }

  v4 = 1 << *(v2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 56);
  swift_beginAccess();
  v7 = 0;
  if (v6)
  {
    while (1)
    {
      v8 = v7;
LABEL_12:
      v9 = *(a1 + 56);
      if (!*(v9 + 16))
      {
        break;
      }

      v10 = *(*(v2 + 48) + (__clz(__rbit64(v6)) | (v8 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      v11 = Hasher._finalize()();
      v12 = -1 << *(v9 + 32);
      v13 = v11 & ~v12;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      v14 = ~v12;
      while (*(*(v9 + 48) + v13) != v10)
      {
        v13 = (v13 + 1) & v14;
        if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v7 = v8;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

LABEL_20:
  }

  else
  {
LABEL_9:
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v8 >= ((v4 + 63) >> 6))
      {
        goto LABEL_20;
      }

      v6 = *(v2 + 56 + 8 * v8);
      ++v7;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unsigned __int8 *sub_1005BD824(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v4 = &v36 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext;
  v8 = result[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext];
  v9 = v8 != 2 && (v8 & 1) == 0;
  if (!v9 && (swift_beginAccess(), v10 = *(a1 + 64), *(v10 + 16)) && (v11 = sub_1006CCC5C(), (v12 & 1) != 0))
  {
    sub_10000DD18(*(v10 + 56) + 32 * v11, &v41);
    sub_10010FC20(&qword_101196F88, &unk_100ED5CA0);
    v13 = swift_dynamicCast();
    v14 = v40[0];
    if (!v13)
    {
      v14 = 0;
    }

    v38 = v14;
  }

  else
  {
    v38 = 0;
  }

  swift_beginAccess();
  v15 = *(a1 + 64);
  if (*(v15 + 16) && (v16 = sub_1006CCC5C(), (v17 & 1) != 0))
  {
    sub_10000DD18(*(v15 + 56) + 32 * v16, &v41);
    v18 = type metadata accessor for LibraryImport.ViewModel(0);
    v19 = swift_dynamicCast();
    (*(*(v18 - 8) + 56))(v4, v19 ^ 1u, 1, v18);
  }

  else
  {
    v20 = type metadata accessor for LibraryImport.ViewModel(0);
    (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  }

  v21 = *(a1 + 64);
  v22 = *(v21 + 16);
  if (!v22)
  {
    goto LABEL_21;
  }

  v23 = sub_1006CCC5C();
  if ((v24 & 1) == 0 || (sub_10000DD18(*(v21 + 56) + 32 * v23, v40), !swift_dynamicCast()))
  {
    v22 = 0;
LABEL_21:
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v29 = 0;
    v28 = 0;
    goto LABEL_22;
  }

  v22 = v41;
  v25 = v42;
  v26 = v43;
  v27 = v44;
  v29 = v45;
  v28 = v46;
LABEL_22:
  v37 = v22;
  v41 = v22;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v29;
  v46 = v28;
  v30 = v6[v7];
  v31 = v30 != 2 && (v30 & 1) == 0;
  if (!v31 && (v32 = *(a1 + 64), *(v32 + 16)) && (v33 = sub_1006CCC5C(), (v34 & 1) != 0))
  {
    sub_10000DD18(*(v32 + 56) + 32 * v33, v40);
    sub_10010FC20(&qword_101196F80, &qword_100ED5C98);
    if (swift_dynamicCast())
    {
      v35 = v39;
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  sub_1005B52B4(v4, v38, &v41, v35, v6[OBJC_IVAR____TtC5Music25LibraryMainViewController_allowsAnimatedChanges], 0, 0);

  sub_100400B30(v37, v25, v26, v27, v29, v28);

  return sub_1000095E8(v4, &unk_1011A4B90, &unk_100ED2800);
}

uint64_t sub_1005BDBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 48) = 0;
  *(v5 + 56) = &_swiftEmptySetSingleton;
  *(v5 + 64) = sub_10010D510(_swiftEmptyArrayStorage);
  *(v5 + 72) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_weakInit();
  v17[4] = sub_1005BEF0C;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10027D328;
  v17[3] = &unk_1010B4CB8;
  v13 = _Block_copy(v17);

  v14 = [v11 scheduledTimerWithTimeInterval:0 repeats:v13 block:a5];

  _Block_release(v13);
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  return v5;
}

double sub_1005BDD68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_10117F750 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000060E4(v5, static Logger.libraryView);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Update Coalescer: Timed out", v8, 2u);
    }

    v9 = *(v4 + 48);
    *(v4 + 48) = 0;

    sub_1005BE0F8();
  }

  return result;
}

uint64_t sub_1005BDE8C(uint64_t a1, uint64_t a2)
{
  sub_1000089F8(a1, v14, &unk_101183F30, qword_100EBF960);
  swift_beginAccess();
  sub_100407980(v14, a2);
  swift_endAccess();
  swift_beginAccess();
  sub_1003B48A8(v13, a2);
  swift_endAccess();
  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, static Logger.libraryView);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136446210;
    v13[0] = a2;
    v9 = String.init<A>(describing:)();
    v11 = sub_1000105AC(v9, v10, v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Update Coalescer: did set data for source=%{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  sub_1005BE0F8();
  return sub_1000095E8(a1, &unk_101183F30, qword_100EBF960);
}

Swift::Int sub_1005BE0B0(uint64_t a1)
{
  Hasher.init(_seed:)();
  LaunchURL.Resolver.PerformOption.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

void sub_1005BE0F8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for DispatchQoS() - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + 72) & 1) == 0)
  {
    v16 = v7;
    v17 = v3;
    if (qword_10117F750 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000060E4(v10, static Logger.libraryView);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Update Coalescer: Checking for updates", v13, 2u);
    }

    *(v1 + 72) = 1;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v14 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_1005BEEF8;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010B4C18;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100029710(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970, &qword_100EBD250);
    sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);

    (*(v17 + 8))(v5, v2);
    (*(v6 + 8))(v9, v16);
  }
}

void sub_1005BE49C()
{
  if (*(v0 + 72) == 1)
  {
    v1 = v0;
    v2 = *(v0 + 16);

    v3 = v2(v0);

    if (!*(v0 + 48) || (v3 & 1) != 0)
    {
      if (qword_10117F750 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_1000060E4(v8, static Logger.libraryView);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v18 = v12;
        *v11 = 136446210;
        sub_10010FC20(&qword_101196F70, &qword_100ED5C88);
        v13 = String.init<A>(describing:)();
        v15 = sub_1000105AC(v13, v14, &v18);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v9, v10, "Update Coalescer: Updating with reason=%{public}s", v11, 0xCu);
        sub_10000959C(v12);
      }

      v16 = *(v1 + 32);

      v16(v1);

      v17 = *(v1 + 48);
      *(v1 + 48) = 0;
    }

    else
    {
      if (qword_10117F750 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000060E4(v4, static Logger.libraryView);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "Update Coalescer: Awaiting on more data…", v7, 2u);
      }
    }

    *(v1 + 72) = 0;
  }
}

uint64_t sub_1005BE730()
{

  return v0;
}

uint64_t sub_1005BE770()
{
  sub_1005BE730();

  return swift_deallocClassInstance();
}

void sub_1005BEB74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_1005BEC70()
{
  result = qword_101196F30;
  if (!qword_101196F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196F30);
  }

  return result;
}

unint64_t sub_1005BECDC()
{
  result = qword_101196F40;
  if (!qword_101196F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196F40);
  }

  return result;
}

uint64_t sub_1005BEDD0()
{
  type metadata accessor for MusicLibrary();
  result = static MusicLibrary.shared.getter();
  qword_101219050 = result;
  return result;
}

double sub_1005BEE04@<D0>(void *a1@<X8>)
{
  if (qword_10117F8D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_101219050;

  return result;
}

double sub_1005BEE88@<D0>(void *a1@<X8>)
{
  if (qword_10117F8D8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_101219058;

  return result;
}

void sub_1005BEF14()
{
  v1 = *(sub_10010FC20(&qword_101196FA0, &unk_100EE3EA0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);

  sub_1005B88C4(v6, v0 + v2, v4, v5);
}

uint64_t sub_1005BEFD4()
{
  v1 = *(sub_10010FC20(&qword_101196FA0, &unk_100EE3EA0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005B8E90(v3, v0 + v2, v4);
}

unint64_t sub_1005BF070()
{
  result = qword_1011A3E30;
  if (!qword_1011A3E30)
  {
    sub_1001109D0(&unk_101196FB0, &unk_100EC8DB0);
    sub_100029710(&unk_101196FC0, &type metadata accessor for RecentlyAddedMusicItem, &protocol conformance descriptor for RecentlyAddedMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3E30);
  }

  return result;
}

unint64_t sub_1005BF174()
{
  result = qword_101196FD8;
  if (!qword_101196FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196FD8);
  }

  return result;
}

uint64_t sub_1005BF1D4(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1005BF228()
{
  v1 = *(sub_10010FC20(&unk_1011A4B90, &unk_100ED2800) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1005B7A9C(v2, v3);
}

void sub_1005BF298()
{
  v1 = *(sub_10010FC20(&unk_1011A4B90, &unk_100ED2800) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1005B788C(v3, v0 + v2, v4);
}

double sub_1005BF344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_1005BF3BC(unsigned __int8 a1)
{
  v2 = sub_10059B3FC();
  result = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v2);
  if (result)
  {
    v4 = &off_10109BAD0;
  }

  else
  {
    v4 = &off_10109BAF8;
  }

  v5 = v4[2];
  if (v5)
  {
    v6 = 0;
    if (result)
    {
      v7 = &off_10109BAD0;
    }

    else
    {
      v7 = &off_10109BAF8;
    }

    v8 = v7 + 4;
    while ((v5 & ~(v5 >> 63)) != v6)
    {
      if (*(v8 + v6) == a1)
      {
        goto LABEL_14;
      }

      if (v5 == ++v6)
      {
        v6 = 0;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
LABEL_14:

    return v6;
  }

  return result;
}

void sub_1005BF47C(uint64_t a1)
{
  v2 = sub_10059B3FC();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v2))
  {
    v3 = &unk_10109BAE0;
  }

  else
  {
    v3 = &unk_10109BB08;
  }

  v4 = *v3;

  v5 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v2);
  if (v4 - 1 < a1)
  {
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v2))
    {
      v6 = &unk_10109BAE0;
    }

    else
    {
      v6 = &unk_10109BB08;
    }

    v7 = *v6;

    a1 = v7 - 1;
    if (a1 < 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v5)
    {
      v8 = &off_10109BAD0;
    }

    else
    {
      v8 = &off_10109BAF8;
    }

    if (a1 < v8[2])
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  if (a1 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v5)
  {
    v9 = &off_10109BAD0;
  }

  else
  {
    v9 = &off_10109BAF8;
  }

  if (v9[2] > a1)
  {
LABEL_19:

    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1005BF5A0()
{
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v2 = &v17 - v1;
  v3 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - v5;
  v7 = sub_10059B3FC();
  v8 = (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v7) & 1) == 0;
  v9 = &unk_10109BB08;
  if (!v8)
  {
    v9 = &unk_10109BAE0;
  }

  v10 = *v9;

  v11 = v10 - 1;
  if (!*(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision))
  {
LABEL_6:
    result = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      return result;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  RequestResponse.Revision.content.getter(v2);

  v12 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
  if ((*(*(v12 - 8) + 48))(v2, 1, v12) == 1)
  {
    sub_1000095E8(v2, &unk_10118D090, &unk_100ED5CB0);
    goto LABEL_6;
  }

  (*(v4 + 16))(v6, v2, v3);
  sub_1000095E8(v2, &unk_10118D0A0, &unk_100EC8DC8);
  v14 = MusicLibrarySectionedResponse.sections.getter();
  (*(v4 + 8))(v6, v3);
  v15 = *(v14 + 16);

  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  result = v11 + v16;
  if (__OFADD__(v11, v16))
  {
    goto LABEL_13;
  }

  return result;
}

char *sub_1005BF7FC(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_1011A3E20, &qword_100EC8DA0);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin();
  v5 = &v38 - v4;
  v6 = sub_10010FC20(&unk_101196FB0, &unk_100EC8DB0);
  v38 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v38 - v7;
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v10 = &v38 - v9;
  v11 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v41 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v38 - v14;
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v17 = &v38 - v16;
  sub_1005BF47C(a1);
  if (v18 <= 1u)
  {
    if (!v18)
    {
      v19 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
      swift_beginAccess();
      sub_1000089F8(v1 + v19, v17, &unk_1011A4B90, &unk_100ED2800);
      v20 = type metadata accessor for LibraryImport.ViewModel(0);
      v21 = (*(*(v20 - 8) + 48))(v17, 1, v20) != 1;
      sub_1000095E8(v17, &unk_1011A4B90, &unk_100ED2800);
      return v21;
    }

    v23 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
LABEL_7:
    swift_beginAccess();
    v24 = *(v1 + v23);
    if (v24)
    {
      return *(v24 + 16);
    }

    return 0;
  }

  if (v18 == 2)
  {
    v23 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
    goto LABEL_7;
  }

  v25 = sub_10059B3FC();
  v26 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v25);
  if (v26)
  {
    result = &off_10109BAD0;
  }

  else
  {
    result = &off_10109BAF8;
  }

  v27 = &unk_10109BAE0;
  if ((v26 & 1) == 0)
  {
    v27 = &unk_10109BB08;
  }

  v28 = *v27;
  if (!v28)
  {
LABEL_22:

    return 0;
  }

  v29 = 0;
  if (v26)
  {
    v30 = &off_10109BAD0;
  }

  else
  {
    v30 = &off_10109BAF8;
  }

  v31 = v30 + 4;
  while (1)
  {
    if ((v28 & ~(v28 >> 63)) == v29)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (*(v31 + v29) == 3)
    {
      break;
    }

    if (v28 == ++v29)
    {
      goto LABEL_22;
    }
  }

  if (!*(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision))
  {
    return 0;
  }

  RequestResponse.Revision.content.getter(v10);

  v32 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
  if ((*(*(v32 - 8) + 48))(v10, 1, v32) == 1)
  {
    sub_1000095E8(v10, &unk_10118D090, &unk_100ED5CB0);
    return 0;
  }

  v33 = v41;
  (*(v41 + 16))(v13, v10, v11);
  sub_1000095E8(v10, &unk_10118D0A0, &unk_100EC8DC8);
  (*(v33 + 32))(v15, v13, v11);
  if (MusicLibrarySectionedResponse.totalItemCount.getter() < 1)
  {
    (*(v33 + 8))(v15, v11);
    return 0;
  }

  result = MusicLibrarySectionedResponse.sections.getter();
  v34 = a1 - v29;
  if (__OFSUB__(a1, v29))
  {
    goto LABEL_34;
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v34 < *(result + 2))
  {
    v35 = v38;
    (*(v38 + 16))(v8, &result[((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v38 + 72) * v34], v6);

    MusicLibrarySection.items.getter();
    (*(v35 + 8))(v8, v6);
    sub_100020674(&unk_101197060, &unk_1011A3E20, &qword_100EC8DA0, &protocol conformance descriptor for MusicItemCollection<A>);
    v36 = v40;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v37 = dispatch thunk of Collection.distance(from:to:)();
    (*(v39 + 8))(v5, v36);
    (*(v33 + 8))(v15, v11);
    return v37;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1005BFE68(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState.DragState();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for UICellConfigurationState();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v13 = [a1 cellForItemAtIndexPath:isa];

  if (v13)
  {
    v14 = [v13 _bridgedConfigurationState];
    static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();

    UICellConfigurationState.cellDragState.getter();
    (*(v9 + 8))(v11, v8);
    (*(v3 + 104))(v5, enum case for UICellConfigurationState.DragState.none(_:), v2);
    v15 = static UICellConfigurationState.DragState.== infix(_:_:)();

    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v7, v2);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_1005C00B0(uint64_t a1)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v69 = (&v64 - v2);
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v4 = &v64 - v3;
  v5 = type metadata accessor for RecentlyAddedMusicItem();
  v71 = *(v5 - 8);
  v72 = v5;
  __chkstk_darwin();
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  __chkstk_darwin();
  v65 = &v64 - v8;
  v9 = type metadata accessor for UITraitOverrides();
  v67 = *(v9 - 8);
  v68 = v9;
  __chkstk_darwin();
  v64 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v64 - v11;
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v13 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v15 = &v64 - v14;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v70 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MusicPin();
  v18 = *(v17 - 1);
  __chkstk_darwin();
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v64 - v21;
  v23 = a1;
  v24 = IndexPath.section.getter();
  sub_1005BF47C(v24);
  if (v25 <= 1u)
  {
    v4 = v73;
    if (!v25)
    {
      return;
    }

    v26 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
    swift_beginAccess();
    v7 = *&v4[v26];
    if (!v7)
    {
      swift_endAccess();
      return;
    }

    v27 = IndexPath.item.getter();
    if ((v27 & 0x8000000000000000) == 0)
    {
      if (v27 < *(v7 + 2))
      {
        (*(v18 + 2))(v20, &v7[((v18[80] + 32) & ~v18[80]) + *(v18 + 9) * v27], v17);
        swift_endAccess();
        (*(v18 + 4))(v22, v20, v17);
        sub_1003408E8(v22, v23);
        (*(v18 + 1))(v22, v17);
        return;
      }

      goto LABEL_37;
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v25 != 2)
  {
    sub_1005A7C20(0, v4);
    v32 = v71;
    v31 = v72;
    if ((*(v71 + 48))(v4, 1, v72) != 1)
    {
      (*(v32 + 32))(v7, v4, v31);
      v36 = type metadata accessor for IndexPath();
      v37 = *(v36 - 8);
      v38 = v69;
      (*(v37 + 16))(v69, a1, v36);
      (*(v37 + 56))(v38, 0, 1, v36);
      v39 = sub_10049CB78();
      sub_1007D5350(v7, v38, v39 & 1);
      sub_1000095E8(v38, &unk_10118BCE0, &qword_100EC6450);
      (*(v32 + 8))(v7, v31);
      return;
    }

    v33 = &unk_101197040;
    v34 = &unk_100EDAE40;
    v35 = v4;
LABEL_29:
    sub_1000095E8(v35, v33, v34);
    return;
  }

  v28 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
  v18 = v73;
  swift_beginAccess();
  v17 = *&v18[v28];
  if (!v17)
  {
    return;
  }

  v29 = IndexPath.item.getter();
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if (v29 >= v17[2])
  {
LABEL_38:
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_20;
  }

  v22 = *(v17 + v29 + 32);

  if (Library.Menu.Identifier.rawValue.getter(v22) == 0xD000000000000026 && 0x8000000100E3C170 == v30)
  {

    v23 = v70;
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = v70;
    if ((v40 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v41 = type metadata accessor for URL();
  (*(*(v41 - 8) + 56))(v15, 1, 1, v41);
  sub_10003C9B0(&v18[OBJC_IVAR____TtC5Music25LibraryMainViewController_metricsPageProperties], v13, type metadata accessor for MetricsPageProperties);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(0x59726F466564614DLL, 0xEA0000000000756FLL, 15, 28, v15, 0, 0, 12, v23, 0, 0, 0xFF00u, v13, 0);
  v17 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v4 = sub_10053771C();
  v7 = v42;
  if (qword_10117F600 != -1)
  {
    goto LABEL_39;
  }

LABEL_20:
  v43 = qword_101218AD0;
  v44 = GroupActivitiesManager.hasJoined.getter();
  v45 = GroupActivitiesManager.participantsCount.getter();
  v46 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v17) + 0xB8))(v23, v4, v7, v44 & 1, v45, *(v43 + v46));

  sub_1005C3434(v23, type metadata accessor for MetricsEvent.Click);
LABEL_21:
  v47 = [v18 tabBarController];
  if (!v47)
  {
LABEL_27:
    v53 = [v18 traitCollection];
    v54 = sub_10066BAEC(v53, v22);

    v55 = [v18 navigationController];
    if (!v55)
    {

      return;
    }

    v56 = v55;
    v57 = v66;
    UIViewController.traitOverrides.getter();
    v58 = v65;
    sub_10066C1EC(v22, v65);
    v60 = v67;
    v59 = v68;
    (*(v67 + 8))(v57, v68);
    (*(v60 + 56))(v58, 0, 1, v59);
    UINavigationController.push(_:traitOverrides:animated:)(v54, v58, 1);

    v33 = &unk_10119F3A0;
    v34 = &qword_100EC7CD0;
    v35 = v58;
    goto LABEL_29;
  }

  v48 = v47;
  v49._countAndFlagsBits = Library.Menu.Identifier.rawValue.getter(v22);
  v74 = 0xD000000000000014;
  v75 = 0x8000000100E3E560;
  String.append(_:)(v49);

  v50 = String._bridgeToObjectiveC()();

  v51 = [v48 tabForIdentifier:v50];

  if (!v51)
  {
    v51 = v48;
    goto LABEL_26;
  }

  v52 = [v18 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  LOBYTE(v52) = sub_10049CB78();

  if (v52)
  {

LABEL_26:
    goto LABEL_27;
  }

  [v48 setSelectedTab:v51];
  v61 = [v51 viewController];
  if (v61)
  {
    v62 = v61;
    v63 = v64;
    UIViewController.traitOverrides.getter();
    sub_10066C1EC(v22, v66);
    (*(v67 + 8))(v63, v68);
    UIViewController.traitOverrides.setter();
  }
}

unint64_t sub_1005C0BA0(uint64_t a1)
{
  v85 = type metadata accessor for MusicPin();
  v84 = *(v85 - 1);
  __chkstk_darwin();
  v82 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  isa = (&v67 - v3);
  v80 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v4 = *(v80 + 64);
  __chkstk_darwin();
  v81 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v67 - v5;
  v78 = *(sub_10010FC20(&unk_10118CDB0, &unk_100EC0360) - 8);
  v7 = *(v78 + 64);
  __chkstk_darwin();
  v79 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v67 - v8;
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v10 = &v67 - v9;
  v90 = type metadata accessor for RecentlyAddedMusicItem();
  v11 = *(v90 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v77 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v67 - v13;
  __chkstk_darwin();
  v86 = &v67 - v15;
  v16 = *(type metadata accessor for IndexPath() - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v21 = __chkstk_darwin();
  if (!*(a1 + 16))
  {
    return 0;
  }

  v75 = v20;
  v76 = v6;
  v88 = v16;
  v22 = *(v16 + 16);
  v23 = *(v16 + 80);
  v24 = a1 + ((v23 + 32) & ~v23);
  v25 = &v67 - v18;
  v89 = v19;
  v74 = v22;
  (v22)(&v67 - v18, v24, v19, v21);
  v92 = v25;
  v26 = IndexPath.section.getter();
  sub_1005BF47C(v26);
  if (v27 > 1u)
  {
    if (v27 != 2)
    {
      sub_1005A7C20(0, v10);
      v38 = v90;
      if ((*(v11 + 48))(v10, 1, v90) != 1)
      {
        v82 = ~v23;
        v73 = v11;
        v39 = *(v11 + 32);
        v84 = v11 + 32;
        v85 = v39;
        v40 = v86;
        v39(v86, v10, v38);
        v41 = *(*(v91 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedResponseController) + 48);
        swift_beginAccess();
        v42 = *(v41 + 80);
        v99[3] = *(v41 + 64);
        v99[4] = v42;
        v99[5] = *(v41 + 96);
        v100 = *(v41 + 112);
        v43 = *(v41 + 32);
        v99[0] = *(v41 + 16);
        v99[1] = v43;
        v99[2] = *(v41 + 48);
        sub_10003D868(v99, &aBlock);
        sub_100455348(v40, v87);
        sub_10003D90C(v99);
        v44 = v76;
        sub_1005A5B7C(v76);
        v45 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v46 = v73;
        v68 = *(v73 + 16);
        v68(v14, v40, v90);
        v70 = *(v46 + 80);
        v47 = (v70 + 16) & ~v70;
        v71 = v70 | 7;
        v72 = swift_allocObject();
        v48 = v72 + v47;
        v49 = v90;
        v85(v48, v14, v90);
        v69 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v50 = v77;
        v68(v77, v86, v49);
        v51 = v79;
        sub_1000089F8(v87, v79, &unk_10118CDB0, &unk_100EC0360);
        v74(v75, v92, v89);
        v52 = v81;
        sub_1000089F8(v76, v81, &unk_1011838D0, &unk_100EC0320);
        v53 = (v70 + 24) & ~v70;
        v54 = (v53 + v12 + *(v78 + 80)) & ~*(v78 + 80);
        v55 = (v7 + v23 + v54) & v82;
        v56 = (v17 + *(v80 + 80) + v55) & ~*(v80 + 80);
        v57 = swift_allocObject();
        *(v57 + 16) = v69;
        v85(v57 + v53, v50, v90);
        sub_10003D17C(v51, v57 + v54, &unk_10118CDB0, &unk_100EC0360);
        v58 = v88;
        (*(v88 + 32))(v57 + v55, v75, v89);
        sub_10003D17C(v52, v57 + v56, &unk_1011838D0, &unk_100EC0320);
        v59 = objc_opt_self();
        v97 = sub_1005C27D8;
        v98 = v72;
        aBlock = _NSConcreteStackBlock;
        v94 = 1107296256;
        v95 = sub_100747E6C;
        v96 = &unk_1010B4EC0;
        v60 = _Block_copy(&aBlock);

        v97 = sub_1005C2838;
        v98 = v57;
        aBlock = _NSConcreteStackBlock;
        v94 = 1107296256;
        v95 = sub_100747EBC;
        v96 = &unk_1010B4EE8;
        v61 = _Block_copy(&aBlock);

        v62 = isa;
        v63 = [v59 configurationWithIdentifier:isa previewProvider:v60 actionProvider:v61];

        _Block_release(v61);
        _Block_release(v60);
        sub_1000095E8(v76, &unk_1011838D0, &unk_100EC0320);
        sub_1000095E8(v87, &unk_10118CDB0, &unk_100EC0360);
        (*(v73 + 8))(v86, v90);
        (*(v58 + 8))(v92, v89);

        return v63;
      }

      (*(v88 + 8))(v92, v89);
      sub_1000095E8(v10, &unk_101197040, &unk_100EDAE40);
      return 0;
    }

    goto LABEL_16;
  }

  if (!v27)
  {
LABEL_16:
    (*(v88 + 8))(v92, v89);
    return 0;
  }

  v28 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
  v29 = v91;
  swift_beginAccess();
  v30 = *(v29 + v28);
  if (!v30)
  {
    swift_endAccess();
    goto LABEL_16;
  }

  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v32 = v76;
    v33 = v85;
    v34 = v84;
    v35 = isa;
    if (result < *(v30 + 16))
    {
      v36 = v30 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * result;
      v37 = v82;
      (*(v84 + 16))(v82, v36, v85);
      swift_endAccess();
      (*(v34 + 32))(v35, v37, v33);
      if (!UIAccessibilityIsVoiceOverRunning() || (*(v29 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext) & 1) == 0)
      {
        sub_1005A5B7C(v32);
        v64 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v64 - 8) + 56))(v32, 0, 1, v64);
        v65 = v92;
        v66 = sub_100343100(v35, v92, v32);
        sub_1000095E8(v32, &unk_1011838D0, &unk_100EC0320);
        (*(v34 + 8))(v35, v33);
        (*(v88 + 8))(v65, v89);
        return v66;
      }

      (*(v34 + 8))(v35, v33);
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1005C18BC(void *a1, void *a2)
{
  v39 = a2;
  v3 = type metadata accessor for MusicPin();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v35 - v6;
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v9 = &v35 - v8;
  v10 = type metadata accessor for RecentlyAddedMusicItem();
  v37 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v14 = &v35 - v13;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  *&v17 = __chkstk_darwin().n128_u64[0];
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = [a1 identifier];
  sub_10010FC20(&unk_1011846A0, &unk_100EC8F60);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if ((v20 & 1) == 0)
  {
    v21(v14, 1, 1, v15);
    sub_1000095E8(v14, &unk_10118BCE0, &qword_100EC6450);
    return [v39 setPreferredCommitStyle:{0, v35, v36}];
  }

  v21(v14, 0, 1, v15);
  (*(v16 + 32))(v19, v14, v15);
  v22 = IndexPath.section.getter();
  sub_1005BF47C(v22);
  if (v23 == 1)
  {
    v25 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
    v26 = v38;
    swift_beginAccess();
    v27 = *(v26 + v25);
    if (v27)
    {
      result = IndexPath.item.getter();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v27 + 16))
      {
        v29 = v35;
        v30 = v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * result;
        v31 = v36;
        (*(v35 + 16))(v5, v30, v36);
        swift_endAccess();
        (*(v29 + 32))(v7, v5, v31);
        v32 = sub_1003413BC(v7, v19, v39);
        (*(v29 + 8))(v7, v31, v32);
        return (*(v16 + 8))(v19, v15);
      }

      __break(1u);
      return result;
    }

    swift_endAccess();
LABEL_14:
    (*(v16 + 8))(v19, v15);
    return [v39 setPreferredCommitStyle:{0, v35, v36}];
  }

  if (v23 != 3)
  {
    goto LABEL_14;
  }

  sub_1005A7C20(0, v9);
  v24 = v37;
  if ((*(v37 + 48))(v9, 1, v10) != 1)
  {
    (*(v24 + 32))(v12, v9, v10);
    v33 = sub_10049CB78();
    v34 = sub_1007D70E4(v12, v39, v33 & 1);
    (*(v24 + 8))(v12, v10, v34);
    return (*(v16 + 8))(v19, v15);
  }

  (*(v16 + 8))(v19, v15);
  sub_1000095E8(v9, &unk_101197040, &unk_100EDAE40);
  return [v39 setPreferredCommitStyle:{0, v35, v36}];
}

void sub_1005C1E04()
{
  v1 = v0;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v57 = &v51 - v2;
  v3 = type metadata accessor for MusicMetrics.FeatureName();
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin();
  v54 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MusicMetrics.PageType();
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin();
  v51 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_contentOffsetObservation) = 0;
  *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress) = 0;
  v11 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___headerRegistration;
  v12 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___inlineBubbleTipRegistration;
  v14 = sub_10010FC20(&qword_101196E60, &qword_100ED5990);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportCellRegistration;
  v16 = sub_10010FC20(&qword_101196E70, &qword_100ED5998);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___pinCellRegistration;
  v18 = sub_10010FC20(&qword_101196E80, &qword_100ED59A0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___menuCellRegistration;
  v20 = sub_10010FC20(&qword_101196E90, &qword_100ED59A8);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___recentCellRegistration;
  v22 = sub_10010FC20(qword_101196EA0, &qword_100ED59B0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView) = 0;
  v23 = OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController;
  v24 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v23) = sub_10003AAD8(0xD000000000000024, 0x8000000100E514B0);
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_observers) = &_swiftEmptySetSingleton;
  v25 = v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_pinsObserver;
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  v26 = OBJC_IVAR____TtC5Music25LibraryMainViewController_pinsControllerToken;
  v27 = type metadata accessor for NSNotificationCenter.ObservationToken();
  (*(*(v27 - 8) + 56))(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController;
  Library.Menu.Request.init()(v59);
  sub_10010FC20(&unk_101197030, &unk_100ECAA00);
  swift_allocObject();
  *(v1 + v28) = RequestResponse.Controller.init(request:)(v59, v29, v30, v31);
  v32 = OBJC_IVAR____TtC5Music25LibraryMainViewController_sharedLibrariesController;
  type metadata accessor for SharedLibrariesController(0);
  swift_allocObject();
  *(v1 + v32) = sub_10003C170();
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___downloadsController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportObserver) = 0;
  v33 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___actionMetricsReportingContext;
  v34 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v34 - 8) + 56))(v1 + v33, 1, 1, v34);
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryFilter) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext) = 2;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_availableEditingContexts) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_downloadSpinner) = 0;
  v35 = OBJC_IVAR____TtC5Music25LibraryMainViewController_accountButton;
  v36 = type metadata accessor for AccountButtonWrapper();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button] = 0;
  v37[OBJC_IVAR____TtC5Music20AccountButtonWrapper_location] = 1;
  v58.receiver = v37;
  v58.super_class = v36;
  v38 = objc_msgSendSuper2(&v58, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v38 sizeToFit];
  v39 = AccessibilityIdentifier.accountButton.unsafeMutableAddressor();
  v40 = *v39;
  v41 = v39[1];
  v42 = v39[2];
  v43 = v39[3];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v40, v41, v42, v43);

  *(v1 + v35) = v38;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___accountBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___contextBarButtonItem) = 0;
  v44 = (v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu);
  *v44 = 0u;
  v44[1] = 0u;
  v44[2] = 0u;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_allowsAnimatedChanges) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_pinnedItems) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_pendingSelectedIdentifier) = 13;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision) = 0;
  v45 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
  v46 = type metadata accessor for LibraryImport.ViewModel(0);
  (*(*(v46 - 8) + 56))(v1 + v45, 1, 1, v46);
  v47 = v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_viewModels;
  *v47 = xmmword_100EBCEE0;
  *(v47 + 16) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_inlineBubbleTipProvider) = 0;
  (*(v52 + 104))(v51, enum case for MusicMetrics.PageType.library(_:), v53);
  v48 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
  sub_10003C9B0(v48, v8, type metadata accessor for MetricsEvent.Page);
  MetricsEvent.Page.metricsPageProperties.getter(v6);
  sub_1005C3434(v8, type metadata accessor for MetricsEvent.Page);

  sub_1005C3434(v6, type metadata accessor for MetricsPageProperties);
  (*(v55 + 104))(v54, enum case for MusicMetrics.FeatureName.library(_:), v56);
  v49 = type metadata accessor for URL();
  (*(*(v49 - 8) + 56))(v57, 1, 1, v49);
  MusicMetrics.PageFields.init(pageType:pageId:featureName:pageURL:pageContext:searchTerm:pageDetails:)();
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModelsToListenFor) = &off_10109BCB0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___dropIndicationView) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_isActiveDropSessionInsideView) = 0;
  v50 = OBJC_IVAR____TtC5Music25LibraryMainViewController_metricsPageProperties;
  sub_10003CD38(0, v8);
  MetricsEvent.Page.metricsPageProperties.getter((v1 + v50));
  sub_1005C3434(v8, type metadata accessor for MetricsEvent.Page);
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_shouldSkipRecordingPageMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___editingTrailingBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___standardTrailingBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___updateCoalescer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005C27D8()
{
  v1 = *(type metadata accessor for RecentlyAddedMusicItem() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100122C44(v2);
}

unint64_t sub_1005C2838(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentlyAddedMusicItem() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10010FC20(&unk_10118CDB0, &unk_100EC0360) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for IndexPath() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v13 = *(v1 + 16);
  v14 = (v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)));

  return sub_1007D7ED4(a1, v13, v1 + v4, v1 + v7, v1 + v10, v14);
}

uint64_t sub_1005C29E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1005C2A58()
{
  result = qword_101197088;
  if (!qword_101197088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197088);
  }

  return result;
}

uint64_t sub_1005C2ABC@<X0>(uint64_t a1@<X8>)
{
  sub_10003C9B0(*(v1 + 16), a1, type metadata accessor for LibraryImport.ViewModel);
  result = _s10ImportViewVMa(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

uint64_t sub_1005C2B14(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for MusicPin() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1005B1890(v7, a1, a2, v8, v2 + v6);
}

uint64_t sub_1005C2BD4()
{
  v2 = *(type metadata accessor for MusicPin() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_1005B1E40(v4, v0 + v3);
}

unint64_t sub_1005C2CBC()
{
  result = qword_101197128;
  if (!qword_101197128)
  {
    sub_1001109D0(&qword_101197120, &qword_100ED5E00);
    sub_1005C2D78();
    sub_100029710(&qword_10118DE90, _s8TextCellVMa, &unk_100ED7538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197128);
  }

  return result;
}

unint64_t sub_1005C2D78()
{
  result = qword_101197130;
  if (!qword_101197130)
  {
    sub_1001109D0(&unk_101197138, &qword_100ED5E08);
    sub_100029710(&qword_10118DE90, _s8TextCellVMa, &unk_100ED7538);
    sub_100029710(&qword_101197148, &type metadata accessor for _IndefiniteSymbolEffectModifier, &protocol conformance descriptor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197130);
  }

  return result;
}

unint64_t sub_1005C2E78()
{
  result = qword_101197188;
  if (!qword_101197188)
  {
    sub_1001109D0(&qword_101197180, &qword_100ED5E28);
    _s21RecentlyAddedListCellVMa(255);
    sub_100029710(&qword_101197190, _s21RecentlyAddedListCellVMa, &unk_100EBCCB8);
    swift_getOpaqueTypeConformance2();
    _s21RecentlyAddedGridCellVMa(255);
    sub_100029710(&qword_101197198, _s21RecentlyAddedGridCellVMa, &unk_100EBCD08);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197188);
  }

  return result;
}

unint64_t sub_1005C2FD4()
{
  result = qword_1011971D0;
  if (!qword_1011971D0)
  {
    sub_1001109D0(&qword_1011971C8, &qword_100ED5E58);
    sub_1005C3058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011971D0);
  }

  return result;
}

unint64_t sub_1005C3058()
{
  result = qword_1011971D8;
  if (!qword_1011971D8)
  {
    sub_1001109D0(&qword_1011971E0, &qword_100ED5E60);
    sub_100020674(&qword_1011971E8, &unk_1011971F0, &qword_100ED5E68, &protocol conformance descriptor for HStack<A>);
    sub_100029710(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011971D8);
  }

  return result;
}

unint64_t sub_1005C31E4()
{
  result = qword_1011972D0;
  if (!qword_1011972D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011972D0);
  }

  return result;
}

uint64_t sub_1005C3238()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1005C32FC(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicPin() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1005ADCC0(a1, v6, v1 + v5);
}

uint64_t sub_1005C3434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005C3564(unsigned __int8 a1)
{
  if (a1 == 1)
  {
    v2 = 1;
LABEL_8:

    return v2 & 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    if (a1 > 1u)
    {
      v2 = 1;
    }

    else
    {
      v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_8;
  }

  v2 = 1;
  return v2 & 1;
}

double sub_1005C3688(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_1005C36DC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_1005C375C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

id sub_1005C383C(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = [*UIColor.MusicTint.normal.unsafeMutableAddressor() colorWithAlphaComponent:0.2];

    return v1;
  }

  else
  {
    sub_100009F78(0, &qword_101180C98, UIColor_ptr);
    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(255, 235, 238, 1.0);
  }
}

void sub_1005C3910(double a1, uint64_t a2, void *a3)
{
  v5 = [objc_opt_self() whiteColor];
  v6 = [v5 colorWithAlphaComponent:a1];

  *a3 = v6;
}

id sub_1005C39B4()
{
  v0 = [objc_opt_self() labelColor];
  sub_100050078();
  v1 = UITraitCollection.subscript.getter();
  v2 = 0.7;
  if (v1)
  {
    v2 = 0.08;
  }

  v3 = [v0 colorWithAlphaComponent:v2];

  return v3;
}

uint64_t sub_1005C3A74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x72616C75676572;
  if (v2 != 1)
  {
    v5 = 0x4572616C75676572;
    v4 = 0xEF6465646E657478;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x746361706D6F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x72616C75676572;
  if (*a2 != 1)
  {
    v8 = 0x4572616C75676572;
    v3 = 0xEF6465646E657478;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746361706D6F63;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1005C3B8C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1005C3C3C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1005C3CD8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005C3D84@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005E9F44(*a1);
  *a2 = result;
  return result;
}

void sub_1005C3DB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x72616C75676572;
  if (v2 != 1)
  {
    v5 = 0x4572616C75676572;
    v4 = 0xEF6465646E657478;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746361706D6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1005C3E20(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *a1 >> 62;
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 >> 62 == 1)
      {
        return 1;
      }
    }

    else if (v2 >> 62 == 2 && v2 == 0x8000000000000000 && (a2[2] | a2[1] | a2[3] | a2[4] | a2[5] | a2[6]) == 0)
    {
      return 1;
    }
  }

  else if (!(v2 >> 62))
  {
    return 1;
  }

  return 0;
}

void sub_1005C3E98()
{
  v1 = (v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize);
  if ((*(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize + 16) & 1) == 0)
  {
    v2 = v0;
    v4 = *v1;
    v3 = v1[1];
    v5 = sub_1005C405C();
    [v5 setFrame:{0.0, 0.0, v4, v3}];

    v6 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView;
    v7 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView);
    v8 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_initialArtworkImage);
    v9 = *&v7[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
    v10 = v8;
    if (v9)
    {
      v11 = v9;
      v12 = v7;
      dispatch thunk of Backdrop.CompositeRenderer.setImage(_:animated:)();
    }

    else
    {
      v13 = v7;
    }

    if (v7[OBJC_IVAR___MusicLyricsBackgroundView_isPaused] == 1)
    {
      v14 = *&v7[OBJC_IVAR___MusicLyricsBackgroundView_metalView];
      if (v14)
      {
        v15 = v14;
        [v15 setNeedsDisplay];
      }
    }

    v16 = *(v2 + v6);
    v17 = OBJC_IVAR___MusicLyricsBackgroundView_metalView;
    v18 = *&v16[OBJC_IVAR___MusicLyricsBackgroundView_metalView];
    v20 = v16;
    [v18 setPaused:1];
    v19 = *&v16[v17];
    if (v19)
    {
      [v19 setEnableSetNeedsDisplay:0];
    }

    [v20 setNeedsLayout];
    [v20 layoutIfNeeded];
    [*&v16[v17] draw];
  }
}

id sub_1005C405C()
{
  v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for LyricsBackgroundView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = UIView.forAutolayout.getter();

    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1005C40E8(void *a1)
{
  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_1012190C8);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying;
    v9 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
    sub_10010FC20(&qword_10118DA00, &qword_100EC9738);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000105AC(v10, v11, v93);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    v13 = *&v4[v8];
    if (v13)
    {
      v14 = [v13 videoOutput];
    }

    sub_10010FC20(&unk_1011979D0, &qword_100ED6718);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000105AC(v15, v16, v93);

    *(v7 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "New playing response %{public}s with videoOutput %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v18 = OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying;
  v19 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
  if (v19)
  {
    v20 = [v19 tracklist];
    v21 = [v20 playingItem];
  }

  else
  {
    v21 = 0;
  }

  v22 = OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem;
  v23 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem];
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem] = v21;
  v24 = v21;
  sub_1005DA2F4(v23);

  v25 = *&v4[v22];
  if (v25)
  {
    [v25 duration];
    v26 = v94;
  }

  else
  {
    v26 = 0;
  }

  v27 = OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition;
  v28 = v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition];
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition] = v26;
  sub_1005C7780(v28);
  v29 = &qword_101197000;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
LABEL_43:
    v57 = *&v4[v29[115]];
    if (v57)
    {
      v58 = *&v4[v18];
      v59 = *&v57[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
      *&v57[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying] = v58;
      v60 = v58;
      v61 = v57;
      sub_100198E90(v59);
    }

    if (!a1 || (v62 = [a1 tracklist], v63 = objc_msgSend(v62, "vocalsControlCommand"), v62, !v63) || (v64 = objc_msgSend(v63, "isActive"), swift_unknownObjectRelease(), (v64 & 1) == 0))
    {
      v65 = *&v4[v18];
      if (v65)
      {
        v66 = [v65 tracklist];
        v67 = [v66 vocalsControlCommand];

        if (v67)
        {
          v68 = [v67 isActive];
          swift_unknownObjectRelease();
          if (v68)
          {
            v69 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
            v70 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer];
            if (v70)
            {
              [v70 invalidate];
              v71 = *&v4[v69];
            }

            else
            {
              v71 = 0;
            }

            *&v4[v69] = 0;

            sub_1005C4F50(5.0);
          }
        }
      }
    }

    v72 = &v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
    v73 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
    if (v73 >> 62 == 1)
    {
      v90 = *(v72 + 5);
      v91 = *(v72 + 6);
      v75 = *(v72 + 3);
      v74 = *(v72 + 4);
      v77 = *(v72 + 1);
      v76 = *(v72 + 2);
      v78 = *&v4[v18];
      v79 = *((v73 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying);
      *((v73 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_nowPlaying) = v78;
      v80 = v78;
      sub_10012BAC0(v73, v77, v76, v75, v74, v90, v91);

      sub_10029948C();
      v81 = *&v4[v18];
      if (v81 && [v81 state] == 1)
      {
        sub_1005C5388(0);
      }
    }

    LOBYTE(v93[0]) = 11;
    v82 = sub_100025CE0();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v82) & 1) == 0 || (v83 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState]) == 0)
    {
LABEL_65:
      v85 = *&v4[v18];
      if (!v85)
      {
        goto LABEL_70;
      }

      goto LABEL_66;
    }

    v84 = *&v4[v18];
    if (v84)
    {

      LODWORD(v84) = [v84 state] == 2;
      if ((*(v83 + 41) ^ v84))
      {
LABEL_64:
        swift_getKeyPath();
        __chkstk_darwin();
        v93[0] = v83;
        sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState, &unk_100ED64C0);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        goto LABEL_65;
      }
    }

    else
    {
      v86 = *(v83 + 41);

      if (v86)
      {
        goto LABEL_64;
      }
    }

    *(v83 + 41) = v84;

    v85 = *&v4[v18];
    if (!v85)
    {
      goto LABEL_70;
    }

LABEL_66:
    if ([v85 state] == 2)
    {
      sub_1005C4F50(4.0);
LABEL_74:
      sub_1005C56EC();
      sub_1005C5B40(0, 0, 1, [v4 isViewLoaded]);
      sub_1005C6510();
      sub_1005C6A74(0);
      return;
    }

LABEL_70:
    v87 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
    v88 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer];
    if (v88)
    {
      [v88 invalidate];
      v89 = *&v4[v87];
    }

    else
    {
      v89 = 0;
    }

    *&v4[v87] = 0;

    goto LABEL_74;
  }

  v30 = *&v4[v22];
  if (v30 && a1)
  {
    v31 = v30;
    v32 = [a1 tracklist];
    v33 = [v32 playingItem];

    if (v33)
    {
      v92 = v18;
      v34 = [v31 contentItemIdentifier];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = [v33 contentItemIdentifier];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      if (v35 == v39 && v37 == v41)
      {

        v42 = 0;
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v42 = v43 ^ 1;
      }

      v29 = &qword_101197000;

      v18 = v92;
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v44 = [objc_opt_self() standardUserDefaults];
  v45 = String._bridgeToObjectiveC()();
  v46 = [v44 BOOLForKey:v45];

  if (v46)
  {
    if (!((*&v4[v29[115]] == 0) | v42 & 1))
    {
      sub_1005C4A54();
    }
  }

  else if (v4[v27] != 1)
  {
    goto LABEL_37;
  }

  v47 = *&v4[v29[115]];
  if (!v47)
  {
    goto LABEL_37;
  }

  v48 = *(v47 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode);
  if (v48 != 3)
  {
    if (v48)
    {
      goto LABEL_37;
    }
  }

  if ((v42 & 1) == 0)
  {
    goto LABEL_37;
  }

  v49 = [v4 view];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 window];

    if (v51)
    {
      v52 = [v51 windowScene];

      if (v52)
      {
        v53 = [v52 activationState];

        v54 = UISceneActivationState.isForeground.getter(v53);
LABEL_38:
        v55 = v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition];
        v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition] = v54;
        sub_1005C7454(v55);
        if ((v4[v27] & 1) == 0 && ((v42 & 1) != 0 || (v56 = *&v4[v18]) != 0 && [v56 state] == 4))
        {
          sub_1005C4C78();
        }

        goto LABEL_43;
      }
    }

LABEL_37:
    v54 = 0;
    goto LABEL_38;
  }

  __break(1u);
}

void sub_1005C4A54()
{
  v1 = v0;
  if (![v0 isViewLoaded])
  {
    v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_needsUpdateArtworkTransitionData] = 1;
    return;
  }

  v2 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground];
  }

  else if (*&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
  {

    v3 = sub_1002752B8();
  }

  else
  {
    v3 = 0;
  }

  if (*&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_motionArtworkManager])
  {

    v4 = sub_1002D9A10();
  }

  else
  {
    v4 = 0;
  }

  v5 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2);
  v6 = (v5 ^ 1) & v4;
  if ((v5 ^ 1) & 1) == 0 && (v4)
  {
    v7 = [v1 view];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    [v7 frame];
    v10 = v9;
    v12 = v11;

    v13 = [v1 traitCollection];
    v6 = sub_1005E7D18(v13, v10, v12);
  }

  if (v6)
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  if (v3)
  {
    v15 = v14;
  }

  else
  {
    v15 = v6 & 1;
  }

  if (*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
  {

    v16 = sub_1002752B8();

    if (v16)
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = &v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData];
  v19 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData] | (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData + 2] << 16);
  *v18 = v15 | v17;
  v18[2] = (v4 & 1) != 0;
  sub_1005C7934(v19);
}

void sub_1005C4C78()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask;
  v3 = &qword_101197000;
  if (!*(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask))
  {
    v16 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (!v16 || !*(v16 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewMask))
    {
      return;
    }
  }

  if (qword_10117F5C8 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, qword_101218A98);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "| 🫥😐 Cancelling artwork transition", v7, 2u);
    }

    v8 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork);
    if (v8)
    {
      [v8 removeFromSuperview];
    }

    if (*&v2[v1])
    {

      sub_1007CDC40();
    }

    v9 = v3[115];
    v10 = *(v1 + v9);
    if (!v10)
    {
      __break(1u);
      return;
    }

    v11 = *&v10[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
    v2 = "smartTransitionTransformAnimation";
    v3 = &selRef_objectAtIndexedSubscript_;
    v12 = v10;
    if (v11)
    {
      v13 = v11;
      v14 = [v13 layer];
      v15 = String._bridgeToObjectiveC()();
      [v14 removeAnimationForKey:v15];
    }

    if (!*&v10[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewMask])
    {
      break;
    }

    sub_1007CDC40();

    v17 = *(v1 + v9);
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v17 = *(v1 + v9);
  if (!v17)
  {
    goto LABEL_23;
  }

LABEL_17:
  v18 = v17;
  sub_10019BFA4();

  v19 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
  if (v19)
  {
    v20 = v19;
    v21 = [v20 layer];
    v22 = String._bridgeToObjectiveC()();
    [v21 removeAnimationForKey:v22];
  }
}

void sub_1005C4F50(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType))
  {
    if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) != 1)
    {

      return;
    }

    v2 = a1;
  }

  else
  {
    v2 = a1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v3 & 1) == 0)
  {
    v4 = v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
    v5 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
    if (v5 >> 62 != 1)
    {
      goto LABEL_34;
    }

    v6 = v1;
    v7 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
    v8 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = *(v4 + 8);
    v10 = *((swift_isaMask & *v8) + 0x190);
    sub_10012BAC0(v5, v9, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
    v11 = v8;
    LOBYTE(v10) = v10();

    v1 = v6;
    if ((v10 & 1) == 0)
    {
LABEL_34:
      v12 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
      if (!*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer))
      {
        v13 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
        if (v13)
        {
          if ((*(v13 + OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingRoutePicker) & 1) == 0 && (*(v13 + OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingSharePlayTogetherSessionManagement) & 1) == 0)
          {
            v14 = *v4;
            if (*v4 >> 62 == 1)
            {
              v15 = ((v14 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
              if (v15[8] == 1 && *v15 != 2)
              {
                v16 = *(v4 + 8);
                v17 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying);
                v30 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
                if (v17)
                {
                  v18 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
                  v19 = v16;

                  v20 = [v17 play];
                  if (v20)
                  {
                    v30 = v20;

LABEL_27:

                    return;
                  }
                }

                else
                {
                  sub_10012BAC0(v14, v16, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
                }

                v21 = v1;
                v22 = [objc_opt_self() standardUserDefaults];
                v23 = sub_1005DF398();

                if ((v23 & 1) == 0 && (*(v21 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer) & 1) == 0)
                {
                  v24 = v21;
                  v25 = objc_opt_self();
                  v26 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  aBlock[4] = sub_1005E8178;
                  aBlock[5] = v26;
                  aBlock[0] = _NSConcreteStackBlock;
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_10027D328;
                  aBlock[3] = &unk_1010B55B8;
                  v27 = _Block_copy(aBlock);

                  v28 = [v25 scheduledTimerWithTimeInterval:0 repeats:v27 block:v2];

                  _Block_release(v27);
                  v29 = *(v24 + v12);
                  *(v24 + v12) = v28;

                  return;
                }

                goto LABEL_27;
              }
            }
          }
        }
      }
    }
  }
}

void sub_1005C5388(int a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
  v5 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  if (v5 >> 62 == 1)
  {
    v6 = (v5 & 0x3FFFFFFFFFFFFFFFLL);
    v7 = *((v5 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
    if (!v7)
    {
      __break(1u);
      goto LABEL_32;
    }

    v8 = *(v4 + 8);
    v9 = *((swift_isaMask & *v7) + 0x190);
    sub_10012BAC0(v5, v8, *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
    v10 = v7;
    LODWORD(v9) = v9();

    if (((v9 ^ a1) & 1) == 0)
    {
      return;
    }
  }

  else if ((a1 & 1) == 0)
  {
    return;
  }

  if (!*(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) || *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) == 1)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return;
    }

    v12 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
    v13 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v13)
    {
      if ((*(v13 + OBJC_IVAR___MusicNowPlayingControlsViewController_isInTakeoverMode) & 1) != 0 || (a1 & 1) != 0 && UIAccessibilityIsVoiceOverRunning())
      {
        return;
      }

      v14 = *v4;
      if (*v4 >> 62 == 1)
      {
        v15 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
        v16 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
        if (!v16)
        {
LABEL_34:
          __break(1u);
          return;
        }

        v17 = *(v4 + 8);
        v18 = *(v4 + 16);
        v19 = *(v4 + 24);
        v20 = *(v4 + 32);
        v21 = *(v4 + 40);
        v22 = *(v4 + 48);
        v23 = *((swift_isaMask & *v16) + 0x198);
        sub_10012BAC0(v14, v17, v18, v19, v20, v21, v22);
        v24 = v16;
        v23(a1 & 1);

        sub_10029AC48(a1 & 1, 1);
      }

      else if (a1)
      {
        return;
      }

      v25 = *(v2 + v12);
      if (v25)
      {
        [v25 setControlsHidden:a1 & 1 animated:1];
        v26 = [objc_opt_self() sharedInstance];
        [v26 setNeedsUpdate];

        if (a1)
        {
          v27 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
          v28 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer);
          if (v28)
          {
            [v28 invalidate];
            v29 = *(v2 + v27);
          }

          else
          {
            v29 = 0;
          }

          *(v2 + v27) = 0;
        }

        else
        {
          sub_1005C4F50(4.0);
        }

        sub_1005C56EC();
        return;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }
}

void sub_1005C56EC()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
  if (!v1 || [v1 state] != 2)
  {
    if (qword_10117F938 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, qword_1012190C8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "[NowPlayingViewController] updateIdleTimer: not playing, setting idleTimerDisabled to false";
    goto LABEL_11;
  }

  v2 = &v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  v3 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  if (v3 >> 62 != 1)
  {
    if (qword_10117F938 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000060E4(v17, qword_1012190C8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "[NowPlayingViewController] updateIdleTimer: not in lyrics mode, setting idleTimerDisabled to false";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

LABEL_12:

    v11 = 0;
    goto LABEL_13;
  }

  v4 = OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType;
  if (v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] > 1u)
  {
    v11 = 1;
  }

  else
  {
    v5 = (v3 & 0x3FFFFFFFFFFFFFFFLL);
    v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
    if (!v6)
    {
      __break(1u);
      return;
    }

    v7 = v0;
    v8 = *(v2 + 1);
    v9 = *((swift_isaMask & *v6) + 0x190);
    sub_10012BAC0(v3, v8, *(v2 + 2), *(v2 + 3), *(v2 + 4), *(v2 + 5), *(v2 + 6));
    v10 = v6;
    v11 = v9();

    v0 = v7;
  }

  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000060E4(v18, qword_1012190C8);
  v19 = v0;
  v20 = v0;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v29 = v24;
    *v23 = 136315394;
    if (v19[v4])
    {
      if (v19[v4] == 1)
      {
        v25 = 0xE700000000000000;
        v26 = 0x72616C75676572;
      }

      else
      {
        v25 = 0xEF6465646E657478;
        v26 = 0x4572616C75676572;
      }
    }

    else
    {
      v25 = 0xE700000000000000;
      v26 = 0x746361706D6F63;
    }

    v27 = sub_1000105AC(v26, v25, &v29);

    *(v23 + 4) = v27;
    *(v23 + 12) = 1024;
    *(v23 + 14) = v11 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "[NowPlayingViewController] updateIdleTimer: layoutType is %s, setting idleTimerDisabled to %{BOOL}d", v23, 0x12u);
    sub_10000959C(v24);
  }

LABEL_13:
  v28 = [objc_opt_self() sharedApplication];
  [v28 setIdleTimerDisabled:v11 & 1];
}

void sub_1005C5B40(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v9 = type metadata accessor for UITraitOverrides();
  *&v10 = __chkstk_darwin().n128_u64[0];
  if (a3)
  {
    v11 = [v5 view];
    if (!v11)
    {
LABEL_47:
      __break(1u);
      return;
    }

    v12 = v11;
    [v11 frame];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    v14 = *&a1;
    v16 = *&a2;
  }

  v17 = [v5 traitCollection];
  v18 = [v17 accessibilityContrast];

  v72 = sub_1005DA588();
  v19 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  if (v19 >> 62 == 1)
  {
    v20 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8];
    v21 = (v19 & 0x3FFFFFFFFFFFFFFFLL);
    v22 = v20;

    v23 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    LOBYTE(v23) = v23(9);

    if (v23)
    {
    }

    else
    {
      if (v72)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v80 = 0;
      }

      else
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = &type metadata for String;
      }

      aBlock = v24;
      v79 = v25;
      v81 = v26;
      sub_10029A5CC(&aBlock);
    }
  }

  v27 = sub_1005C405C();
  v28 = OBJC_IVAR___MusicLyricsBackgroundView_isPaused;
  v27[OBJC_IVAR___MusicLyricsBackgroundView_isPaused] = v72;
  v29 = OBJC_IVAR___MusicLyricsBackgroundView_metalView;
  v74 = v72;
  [*&v27[OBJC_IVAR___MusicLyricsBackgroundView_metalView] setPaused:?];
  v30 = *&v27[v29];
  if (v30)
  {
    v31 = v27[v28];
    v32 = v30;
    [v32 setEnableSetNeedsDisplay:v31];
  }

  v33 = [v5 view];
  if (!v33)
  {
    goto LABEL_45;
  }

  v34 = v33;
  v35 = [v33 window];

  if (v35)
  {
    v36 = [v35 screen];

    v37 = [v36 _defaultTraitCollection];
    if (!v37)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v38 = [v37 userInterfaceStyle];
  }

  else
  {
    v37 = [objc_opt_self() currentTraitCollection];
    v38 = [v37 userInterfaceStyle];
  }

  v39 = v38;

  [v5 setOverrideUserInterfaceStyle:2 * (v18 != 1)];
  v40 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView;
  [*&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView] setOverrideUserInterfaceStyle:v39];
  v41 = sub_1005D01F0();
  v42 = [objc_opt_self() systemBackgroundColor];
  if (v18 == 1)
  {
    v43 = [v5 traitCollection];
    v44 = [v43 userInterfaceStyle];
  }

  else
  {
    v44 = 2;
  }

  v45 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v44];
  v46 = [v42 resolvedColorWithTraitCollection:v45];

  v81 = sub_100009F78(0, &qword_101180C98, UIColor_ptr);
  v82 = &protocol witness table for UIColor;
  aBlock = v46;
  UIView._background.setter();

  v47 = [v5 traitCollection];
  v48 = sub_1005E80C0(v47, v14, v16);

  v49 = v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType];
  v75 = OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType;
  v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] = v48;
  sub_1005D7F64(v49);
  v50 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.3 controlPoint2:0.42 animations:{0.0, 0.58, 1.0}];
  v73 = v50;
  if (a4)
  {
    v51 = v50;
    v52 = swift_allocObject();
    *(v52 + 16) = v5;
    *(v52 + 24) = v74;
    v82 = sub_1005EB22C;
    v83 = v52;
    aBlock = _NSConcreteStackBlock;
    v79 = 1107296256;
    v80 = sub_10002BC98;
    v81 = &unk_1010B6648;
    v53 = _Block_copy(&aBlock);
    v54 = v5;

    [v51 addAnimations:v53];
    _Block_release(v53);
  }

  else
  {
    if (v72)
    {
      v55 = 0.0;
    }

    else
    {
      v55 = 1.0;
    }

    [*&v5[v40] setAlpha:v55];
  }

  v76 = v5;
  v56 = [v5 childViewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v57 >> 62)
  {
    v58 = _CocoaArrayWrapper.endIndex.getter();
    if (v58)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v58)
    {
LABEL_30:
      if (v58 >= 1)
      {
        v59 = 0;
        do
        {
          if ((v57 & 0xC000000000000001) != 0)
          {
            v62 = sub_10004056C(v59, v57);
          }

          else
          {
            v62 = *(v57 + 8 * v59 + 32);
          }

          v63 = v62;
          if (a4)
          {
            v64 = swift_allocObject();
            *(v64 + 16) = v63;
            *(v64 + 24) = v74;
            v82 = sub_1005EB20C;
            v83 = v64;
            aBlock = _NSConcreteStackBlock;
            v79 = 1107296256;
            v80 = sub_10002BC98;
            v81 = &unk_1010B65F8;
            v65 = _Block_copy(&aBlock);
            v60 = v9;
            v66 = v63;

            [v73 addAnimations:v65];
            _Block_release(v65);
          }

          else
          {
            UIViewController.traitOverrides.getter();
            sub_100050078();
            dispatch thunk of UIMutableTraits.subscript.setter();
            UIViewController.traitOverrides.setter();
            v60 = v9;
          }

          ++v59;
          v61 = v76[v75];
          UIViewController.traitOverrides.getter();
          LOBYTE(aBlock) = v61;
          sub_1001D1C24();
          sub_1001D1C78();
          dispatch thunk of UIMutableTraits.subscript.setter();
          UIViewController.traitOverrides.setter();
          UIViewController.traitOverrides.getter();
          UIMutableTraits.horizontalSizeClass.setter();
          UIViewController.traitOverrides.setter();

          v9 = v60;
        }

        while (v58 != v59);
        goto LABEL_40;
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

LABEL_40:

  if (a4)
  {
    v67 = swift_allocObject();
    v68 = v76;
    *(v67 + 16) = v76;
    *(v67 + 24) = v74;
    v82 = sub_1005EBD6C;
    v83 = v67;
    aBlock = _NSConcreteStackBlock;
    v79 = 1107296256;
    v80 = sub_10002BC98;
    v81 = &unk_1010B65A8;
    v69 = _Block_copy(&aBlock);
    v70 = v76;

    v71 = v73;
    [v73 addAnimations:v69];
    _Block_release(v69);
    [v73 startAnimation];
  }

  else
  {
    v68 = v76;
    UIViewController.traitOverrides.getter();
    sub_100050078();
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIViewController.traitOverrides.setter();
    v71 = v73;
  }

  [v68 setNeedsStatusBarAppearanceUpdate];
}

void sub_1005C6510()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  __chkstk_darwin();
  v3 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v47 - v4;
  __chkstk_darwin();
  v7 = &v47 - v6;
  __chkstk_darwin();
  v10 = &v47 - v9;
  v11 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v11)
  {
    return;
  }

  v12 = *(v11 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (!v12)
  {
    return;
  }

  v49 = v8;
  v50 = v12;
  [v50 frame];
  if (v14 != 0.0 || v13 != 0.0)
  {
    v15 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
    if (v15)
    {
      v16 = [v15 tracklist];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 playingItemIndexPath];
        if (v18)
        {
          v48 = v0;
          v19 = v18;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v20 = *(v1 + 32);
          v20(v10, v7, v49);
          v21 = *&v50[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView];
          v22 = Artwork.View.currentImage.getter();

          if (v22)
          {
            v47 = v20;

            v23 = [v17 items];
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            v25 = [v23 globalIndexForIndexPath:isa];

            v26 = [v17 items];
            v27 = [v26 totalItemCount];

            if (v25 < v27)
            {
              v28 = [v17 items];
              v29 = [v28 indexPathForGlobalIndex:v25 + 1];

              if (v29)
              {
                static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

                v47(v5, v3, v49);
                v30 = [v17 items];
                v31 = IndexPath._bridgeToObjectiveC()().super.isa;
                v32 = [v30 itemAtIndexPath:v31];

                v33 = [v32 metadataObject];
                if (v33)
                {
                  v34 = [v33 artworkCatalog];
                  [v50 frame];
                  v36 = v35;
                  v38 = v37;

                  [v34 setFittingSize:{v36, v38}];
                  v39 = v48;
                  v40 = [v48 traitCollection];
                  [v40 displayScale];
                  v42 = v41;

                  [v34 setDestinationScale:v42];
                  Artwork.Caching.Reference.defaultIdentifier.unsafeMutableAddressor();

                  v43 = String._bridgeToObjectiveC()();

                  [v34 setCacheIdentifier:v43 forCacheReference:*&v39[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkCachingReference]];

                  MPArtworkCatalog.requestImage(_:)(UIScreen.Dimensions.size.getter, 0);
                }

                else
                {
                }

                v45 = *(v1 + 8);
                v46 = v49;
                v45(v5, v49);
                v45(v10, v46);
                return;
              }
            }
          }

          else
          {
          }

          (*(v1 + 8))(v10, v49);
          return;
        }
      }
    }
  }

  v44 = v50;
}

void sub_1005C6A74(char a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 window];

  if (v5)
  {
    v6 = [v5 windowScene];

    if (v6)
    {
      v7 = [v6 activationState];

      if (v7 == 2)
      {
        if (qword_10117F938 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_1000060E4(v8, qword_1012190C8);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Pausing backdrop animation: scene is not foreground", v11, 2u);
        }

        oslog = sub_1005C405C();
        v12 = OBJC_IVAR___MusicLyricsBackgroundView_isPaused;
        *(&oslog->isa + OBJC_IVAR___MusicLyricsBackgroundView_isPaused) = 1;
        v13 = OBJC_IVAR___MusicLyricsBackgroundView_metalView;
        [*(&oslog->isa + OBJC_IVAR___MusicLyricsBackgroundView_metalView) setPaused:1];
        v14 = oslog;
        v15 = *(&oslog->isa + v13);
        if (!v15)
        {
          goto LABEL_20;
        }

        v16 = *(&oslog->isa + v12);
        v17 = v15;
        [v17 setEnableSetNeedsDisplay:v16];

LABEL_19:
        v14 = oslog;
LABEL_20:

        return;
      }
    }
  }

  if ((sub_1005E4AC4(v1) & 1) != 0 && (a1 & 1) == 0)
  {
    v18 = sub_1005C405C();
    v19 = OBJC_IVAR___MusicLyricsBackgroundView_isPaused;
    v18[OBJC_IVAR___MusicLyricsBackgroundView_isPaused] = 1;
    v20 = OBJC_IVAR___MusicLyricsBackgroundView_metalView;
    [*&v18[OBJC_IVAR___MusicLyricsBackgroundView_metalView] setPaused:1];
    v21 = *&v18[v20];
    if (v21)
    {
      v22 = v18[v19];
      v23 = v21;
      [v23 setEnableSetNeedsDisplay:v22];
    }

    if (qword_10117F938 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000060E4(v24, qword_1012190C8);
    oslog = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v25, "Pausing backdrop animation: showing motion art", v26, 2u);
    }

    goto LABEL_19;
  }

  v27 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
  if (v27)
  {
    v28 = [v27 tracklist];
    v29 = [v28 vocalsControlCommand];
  }

  else
  {
    v29 = 0;
  }

  v30 = [objc_opt_self() sharedMonitor];
  v31 = [v30 currentThermalPressureLevel];

  v32 = 0;
  if (!static ICEnvironmentMonitorThermalPressureLevel.< infix(_:_:)(v31, 20) && v29)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v32 = MPCVocalsControlCommand.isTrulyActive.getter();
    swift_unknownObjectRelease();
  }

  v33 = sub_1005C405C();
  v34 = OBJC_IVAR___MusicLyricsBackgroundView_isPaused;
  v33[OBJC_IVAR___MusicLyricsBackgroundView_isPaused] = v32 & 1;
  v35 = OBJC_IVAR___MusicLyricsBackgroundView_metalView;
  [*&v33[OBJC_IVAR___MusicLyricsBackgroundView_metalView] setPaused:?];
  v36 = *&v33[v35];
  if (v36)
  {
    v37 = v33[v34];
    v38 = v36;
    [v38 setEnableSetNeedsDisplay:v37];
  }

  if (v32)
  {
    if (qword_10117F938 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000060E4(v39, qword_1012190C8);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_41;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Pausing backdrop animation: vocals are active or thermal pressure is high";
  }

  else
  {
    if (qword_10117F938 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1000060E4(v44, qword_1012190C8);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_41;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Resuming backdrop animation";
  }

  _os_log_impl(&_mh_execute_header, v40, v41, v43, v42, 2u);

LABEL_41:

  swift_unknownObjectRelease();
}

void sub_1005C7034()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData);
  if (v1)
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1005EB394;
    *(v4 + 24) = v3;
    swift_beginAccess();
    v5 = *(v1 + 24);
    swift_retain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 24) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_10006429C(0, v5[2] + 1, 1, v5);
      *(v1 + 24) = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v5 = sub_10006429C((v7 > 1), v8 + 1, 1, v5);
    }

    v5[2] = v8 + 1;
    v9 = &v5[2 * v8];
    v9[4] = sub_10018A020;
    v9[5] = v4;
    *(v1 + 24) = v5;
    swift_endAccess();

    if (qword_10117FB00 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000060E4(v10, qword_101219268);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23[0] = v14;
      *v13 = 136446210;

      v15 = sub_1006698D4();
      v17 = v16;

      v18 = sub_1000105AC(v15, v17, v23);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "Setting new animationData %{public}s", v13, 0xCu);
      sub_10000959C(v14);
    }
  }

  else
  {
    if (qword_10117FB00 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000060E4(v19, qword_101219268);
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v20, "Setting animationData to nil", v21, 2u);
    }
  }
}

void sub_1005C73DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData);
    if (v5)
    {
      v6 = v5 == a2;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData] = 0;

      sub_1005C7034();
    }
  }
}

void sub_1005C7454(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (v2)
  {
    if (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition] == 1)
    {
      v4 = ((*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData] | (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData + 2] << 16)) & 0x10100) == 0 || (*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData] & 0xFF00) == 512;
      *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_shouldAnimateArtworkChange) = v4;
      v5 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v5)
      {
        v6 = (*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData] & 0x100) == 0;
        if ((*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData] & 0xFF00) == 0x200)
        {
          v6 = 1;
        }

        goto LABEL_15;
      }
    }

    else
    {
      *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_shouldAnimateArtworkChange) = 0;
      v5 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v5)
      {
        v6 = 0;
LABEL_15:
        *(v5 + OBJC_IVAR____TtC5Music21NowPlayingContentView_pauseArtworkUpdates) = v6;
      }
    }
  }

  if ((a1 & 1) == 0 && v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition] == 1)
  {
    if (qword_10117F5C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_101218A98);
    v8 = v1;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v12 = *&v8[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData];
      if ((v12 & 0xFF00) == 0x200)
      {
        v13 = 0xE300000000000000;
        v14 = 7104878;
LABEL_34:
        v16 = sub_1000105AC(v14, v13, &v18);

        *(v10 + 4) = v16;
        _os_log_impl(&_mh_execute_header, oslog, v9, "| 🫥😐 Starting smart transition artwork animation with style=%s", v10, 0xCu);
        sub_10000959C(v11);

        return;
      }

      if (v12 > 1u)
      {
        if (v12 != 2)
        {
          v13 = 0x8000000100E3C530;
          v14 = 0xD000000000000016;
          goto LABEL_34;
        }

        v14 = 0xD000000000000012;
        v15 = "fullscreenToSquare";
      }

      else
      {
        if (!v12)
        {
          v13 = 0xEE00657261757153;
          v14 = 0x6F54657261757173;
          goto LABEL_34;
        }

        v14 = 0xD000000000000012;
        v15 = "squareToFullscreen";
      }

      v13 = (v15 - 32) | 0x8000000000000000;
      goto LABEL_34;
    }
  }
}

void sub_1005C7780(id result)
{
  if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition) == (result & 1))
  {
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition))
  {
    if (qword_10117F5C8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, qword_101218A98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "╭ AutoMix transition is starting";
  }

  else
  {
    if (qword_10117F5C8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_101218A98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "╰ Done";
  }

  _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_13:

  sub_1005C4A54();
}

void sub_1005C7934(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData;
  v4 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData] | (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData + 2] << 16);
  v5 = v4 & 0xFF00;
  if ((a1 & 0xFF00) == 0x200)
  {
    if (v5 == 512)
    {
      return;
    }
  }

  else if (v5 != 512)
  {
    v14 = a1;
    if (sub_1006B9530(a1, v4) & 1) != 0 && ((v4 & 0x100) == 0) != (v14 & 0x100) >> 8 && ((((v4 & 0x10000) == 0) ^ ((v14 & 0x10000u) >> 16)))
    {
      return;
    }
  }

  if (qword_10117F5C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101218A98);
  v7 = v2;
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    v11 = *&v2[v3];
    if ((v11 & 0xFF00) == 0x200)
    {
      v12 = 0xE300000000000000;
      v13 = 7104878;
LABEL_25:
      v16 = sub_1000105AC(v13, v12, &v18);

      *(v9 + 4) = v16;
      _os_log_impl(&_mh_execute_header, oslog, v8, "artworkTransitionData?.style=%s", v9, 0xCu);
      sub_10000959C(v10);

      return;
    }

    if (v11 > 1u)
    {
      if (v11 != 2)
      {
        v12 = 0x8000000100E3C530;
        v13 = 0xD000000000000016;
        goto LABEL_25;
      }

      v13 = 0xD000000000000012;
      v15 = "fullscreenToSquare";
    }

    else
    {
      if (!v11)
      {
        v12 = 0xEE00657261757153;
        v13 = 0x6F54657261757173;
        goto LABEL_25;
      }

      v13 = 0xD000000000000012;
      v15 = "squareToFullscreen";
    }

    v12 = (v15 - 32) | 0x8000000000000000;
    goto LABEL_25;
  }
}

id sub_1005C7BDC()
{
  v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer;
  result = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
  if (result)
  {
    result = [result superview];
    if (result)
    {

      result = *(v0 + v1);
      if (result)
      {
        [result alpha];
        if (v3 == 1.0)
        {
          result = *(v0 + v1);
          if (result)
          {
            return ([result isHidden] ^ 1);
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

double sub_1005C7C64()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v3 = &v25 - v2;
  v4 = sub_10010FC20(&unk_101189DC0, &qword_100ED6730);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = sub_10010FC20(&unk_1011979E0, &unk_100EC5800);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - v10;
  v12 = OBJC_IVAR____TtC5Music24NowPlayingViewController_videoArtworksObserver;
  *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_videoArtworksObserver) = 0;

  if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_motionArtworkManager))
  {
    v27 = v12;
    swift_beginAccess();

    sub_10010FC20(&qword_101189E18, &qword_100EC6060);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v13 = static OS_dispatch_queue.main.getter();
    v26 = v8;
    v14 = v13;
    v28[0] = v13;
    v15 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    sub_100020674(&qword_101189E20, &unk_101189DC0, &qword_100ED6730, &protocol conformance descriptor for Published<A>.Publisher);
    v25 = v1;
    sub_1000206BC();
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v3, &qword_101182140, &unk_100EBD2A0);

    (*(v5 + 8))(v7, v4);
    swift_allocObject();
    v16 = v25;
    swift_unknownObjectWeakInit();
    sub_100020674(&unk_101189E28, &unk_1011979E0, &unk_100EC5800, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v17 = v26;
    v18 = Publisher<>.sink(receiveValue:)();

    (*(v9 + 8))(v11, v17);
    swift_getKeyPath();
    swift_getKeyPath();
    v19 = static Published.subscript.modify();
    sub_1003B4074(&v29, 0);
    v19(v28, 0);

    swift_allocObject();
    swift_weakInit();
    type metadata accessor for AnyCancellable();
    swift_allocObject();
    v20 = AnyCancellable.init(_:)();
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    *(v21 + 24) = v20;
    swift_allocObject();
    v22 = AnyCancellable.init(_:)();

    *(v16 + v27) = v22;
  }

  else
  {
    v24 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData);
    *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData) = 0;
    sub_1005C86CC(v24);
  }

  return result;
}

void sub_1005C81A4(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for VideoArtwork();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_101189E40, &unk_100ED6620);
  __chkstk_darwin();
  v9 = &v27 - v8;
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v27 - v11;
  __chkstk_darwin();
  v14 = &v27 - v13;
  v31 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v28 = OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData;
    v29 = v7;
    v17 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData);
    v27 = v6;
    if (v17)
    {
      (*(v4 + 16))(v14, v17 + OBJC_IVAR____TtC5Music10MotionData_videoArtwork, v3);
      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = *(v4 + 56);
    v20 = 1;
    v19(v14, v18, 1, v3);
    if (v31)
    {
      (*(v4 + 16))(v12, v31 + OBJC_IVAR____TtC5Music10MotionData_videoArtwork, v3);
      v20 = 0;
    }

    v19(v12, v20, 1, v3);
    v21 = *(v29 + 48);
    sub_1000089F8(v14, v9, &unk_101192950, &unk_100EBDF40);
    sub_1000089F8(v12, &v9[v21], &unk_101192950, &unk_100EBDF40);
    v22 = *(v4 + 48);
    if (v22(v9, 1, v3) == 1)
    {
      sub_1000095E8(v12, &unk_101192950, &unk_100EBDF40);
      sub_1000095E8(v14, &unk_101192950, &unk_100EBDF40);
      if (v22(&v9[v21], 1, v3) == 1)
      {
        sub_1000095E8(v9, &unk_101192950, &unk_100EBDF40);
LABEL_15:

        return;
      }
    }

    else
    {
      v23 = v30;
      sub_1000089F8(v9, v30, &unk_101192950, &unk_100EBDF40);
      if (v22(&v9[v21], 1, v3) != 1)
      {
        v25 = v27;
        (*(v4 + 32))(v27, &v9[v21], v3);
        sub_1005EA878(&qword_101186E80, &type metadata accessor for VideoArtwork, &protocol conformance descriptor for VideoArtwork);
        LODWORD(v29) = dispatch thunk of static Equatable.== infix(_:_:)();
        v26 = *(v4 + 8);
        v26(v25, v3);
        sub_1000095E8(v12, &unk_101192950, &unk_100EBDF40);
        sub_1000095E8(v14, &unk_101192950, &unk_100EBDF40);
        v26(v30, v3);
        sub_1000095E8(v9, &unk_101192950, &unk_100EBDF40);
        if (v29)
        {
          goto LABEL_15;
        }

LABEL_13:
        v24 = *&v16[v28];
        *&v16[v28] = v31;

        sub_1005C86CC(v24);

        return;
      }

      sub_1000095E8(v12, &unk_101192950, &unk_100EBDF40);
      sub_1000095E8(v14, &unk_101192950, &unk_100EBDF40);
      (*(v4 + 8))(v23, v3);
    }

    sub_1000095E8(v9, &unk_101189E40, &unk_100ED6620);
    goto LABEL_13;
  }
}

double sub_1005C86CC(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = sub_10010FC20(&qword_1011979F0, &qword_100ED6780);
  v26 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v26 - v7;
  v9 = sub_10010FC20(&qword_1011979F8, &unk_100ED6788);
  v27 = *(v9 - 8);
  v28 = v9;
  __chkstk_darwin();
  v11 = &v26 - v10;
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v13 = &v26 - v12;
  if (a1)
  {
    v14 = OBJC_IVAR____TtC5Music10MotionData_videoArtwork;
    v15 = type metadata accessor for VideoArtwork();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v13, a1 + v14, v15);
    (*(v16 + 56))(v13, 0, 1, v15);
  }

  else
  {
    v17 = type metadata accessor for VideoArtwork();
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  }

  v18 = OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionVideoArtwork;
  swift_beginAccess();
  sub_10006B010(v13, v2 + v18, &unk_101192950, &unk_100EBDF40);
  swift_endAccess();
  LOBYTE(v29) = 11;
  v19 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v19))
  {
    if (a1)
    {
      v20 = sub_1002752B8();
      goto LABEL_11;
    }
  }

  else if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v29);

    v20 = v30;
    if (v30 != 255)
    {
      sub_10004ADFC(v29, v30);
      goto LABEL_11;
    }
  }

  v20 = 0;
LABEL_11:
  *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionBackgroundDataWasReady) = v20 & 1;
  if (!*(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData))
  {
    sub_1005C8D4C(1, 0, 0);
    goto LABEL_16;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v29);

  if (v30 == 255)
  {
    swift_beginAccess();
    sub_10010FC20(&qword_101197A00, &qword_100EC3960);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v21 = static OS_dispatch_queue.main.getter();
    v29 = v21;
    v22 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    sub_100020674(&qword_101197A08, &qword_1011979F0, &qword_100ED6780, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1000206BC();
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v5, &qword_101182140, &unk_100EBD2A0);

    (*(v26 + 8))(v8, v6);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&unk_101197A10, &qword_1011979F8, &unk_100ED6788, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v23 = v28;
    v24 = Publisher<>.sink(receiveValue:)();

    (*(v27 + 8))(v11, v23);
    *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_motionKeyframeObserver) = v24;
    goto LABEL_18;
  }

  sub_10004ADFC(v29, v30);
  if (*(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController))
  {
    sub_1005C8D4C(1, 0, 0);

LABEL_16:
    *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_motionKeyframeObserver) = 0;
  }

LABEL_18:

  return result;
}

void sub_1005C8D4C(int a1, int a2, char a3)
{
  v4 = v3;
  v76 = a2;
  v77 = a1;
  sub_10010FC20(&qword_1011978A8, &qword_100ED6578);
  __chkstk_darwin();
  v7 = &v70 - v6;
  v8 = type metadata accessor for VideoArtwork();
  v80 = *(v8 - 8);
  __chkstk_darwin();
  v74 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_101189E40, &unk_100ED6620);
  __chkstk_darwin();
  v12 = &v70 - v11;
  sub_10010FC20(&unk_101192950, &unk_100EBDF40);
  __chkstk_darwin();
  v75 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v70 - v14;
  __chkstk_darwin();
  v79 = &v70 - v15;
  v16 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  if (!*(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController))
  {
    return;
  }

  LOBYTE(v82) = 11;
  v17 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v17))
  {
    sub_1005C9C48(0, 0, 1, 0.0);
    if (a3 & 1) != 0 && (v18)
    {
      return;
    }
  }

  else
  {
    v19 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData);
    if (v19)
    {
      v73 = v8;
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter(&v82);

      LOBYTE(v19) = v83;
      if (v83 == 255)
      {
        LOBYTE(v19) = 0;
      }

      else
      {
        sub_10004ADFC(v82, v83);
      }

      v8 = v73;
    }

    v20 = *(v4 + v16);
    if (!v20)
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    *(v20 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingShouldShowMotionBackground) = v19 & 1;
    v21 = *(v20 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
    if (v21)
    {
      *(v21 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground) = v19 & 1;
    }
  }

  LOBYTE(v82) = 11;
  v22 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v17);
  LODWORD(v23) = *(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionBackgroundDataWasReady);
  if (v22)
  {
    if (!*(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionBackgroundDataWasReady) || (*(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground) & 1) != 0)
    {
      goto LABEL_24;
    }

    v23 = *(v4 + v16);
    if (v23)
    {
LABEL_23:
      v25 = v23;
      sub_1001C9480();

      goto LABEL_24;
    }

    __break(1u);
  }

  if (v23)
  {
    if (!*(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData) || (, v24 = sub_1002752B8(), , (v24 & 1) == 0))
    {
      v23 = *(v4 + v16);
      if (!v23)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  v73 = OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData;
  if (!*(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData) || (swift_getKeyPath(), swift_getKeyPath(), v72 = v16, , static Published.subscript.getter(&v82), , v16 = v72, , , v83 == 255))
  {
    sub_1005C6A74(1);
    sub_1005D84C8(1);
    sub_1005D90E0(1);
    v34 = type metadata accessor for MorphingMotionArtwork(0);
    (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
    v35 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
    swift_beginAccess();
    sub_10006B010(v7, v4 + v35, &qword_1011978A8, &qword_100ED6578);
    swift_endAccess();
    v36 = *(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
    *(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer) = 0;

    v37 = *(v4 + v16);
    if (v37)
    {
      v38 = *(v37 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v38)
      {
        *&v38[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData] = 0;
        v39 = v38;

        sub_10006ADD4();
      }

      return;
    }

    goto LABEL_81;
  }

  sub_10004ADFC(v82, v83);
  v26 = v73;
  if (!*(v4 + v73))
  {
    return;
  }

  v27 = sub_1002752B8();

  if ((v27 & 1) == 0)
  {
    if (*(v4 + v26))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter(&v82);

      v40 = v83;
      if (v83 != 255)
      {
        sub_10004ADFC(v82, v83);
        if ((v40 & 1) == 0)
        {
          LOBYTE(v82) = 11;
          if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v17) & 1) == 0 || (v41 = [objc_opt_self() currentDevice], v42 = objc_msgSend(v41, "userInterfaceIdiom"), v41, v42 != 1))
          {
            sub_1005CD4F8(v4, v77 & 1);
          }
        }
      }
    }

    return;
  }

  v28 = OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionVideoArtwork;
  swift_beginAccess();
  v29 = v79;
  sub_1000089F8(v4 + v28, v79, &unk_101192950, &unk_100EBDF40);
  v30 = *(v4 + v26);
  if (v30)
  {
    v31 = v80;
    v32 = v78;
    (*(v80 + 16))(v78, v30 + OBJC_IVAR____TtC5Music10MotionData_videoArtwork, v8);
    v33 = 0;
  }

  else
  {
    v33 = 1;
    v31 = v80;
    v32 = v78;
  }

  (*(v31 + 56))(v32, v33, 1, v8);
  v43 = *(v10 + 48);
  sub_1000089F8(v29, v12, &unk_101192950, &unk_100EBDF40);
  v71 = v43;
  sub_1000089F8(v32, &v12[v43], &unk_101192950, &unk_100EBDF40);
  v44 = v29;
  v45 = *(v31 + 48);
  if (v45(v12, 1, v8) == 1)
  {
    sub_1000095E8(v32, &unk_101192950, &unk_100EBDF40);
    sub_1000095E8(v44, &unk_101192950, &unk_100EBDF40);
    if (v45(&v12[v71], 1, v8) == 1)
    {
      sub_1000095E8(v12, &unk_101192950, &unk_100EBDF40);
      return;
    }

    goto LABEL_46;
  }

  v46 = v75;
  sub_1000089F8(v12, v75, &unk_101192950, &unk_100EBDF40);
  v47 = v71;
  if (v45(&v12[v71], 1, v8) == 1)
  {
    sub_1000095E8(v78, &unk_101192950, &unk_100EBDF40);
    sub_1000095E8(v79, &unk_101192950, &unk_100EBDF40);
    (*(v80 + 8))(v46, v8);
LABEL_46:
    sub_1000095E8(v12, &unk_101189E40, &unk_100ED6620);
    v48 = v72;
    v49 = v73;
    goto LABEL_47;
  }

  v54 = v80;
  v55 = &v12[v47];
  v56 = v74;
  (*(v80 + 32))(v74, v55, v8);
  sub_1005EA878(&qword_101186E80, &type metadata accessor for VideoArtwork, &protocol conformance descriptor for VideoArtwork);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v54 + 8);
  v58(v56, v8);
  sub_1000095E8(v78, &unk_101192950, &unk_100EBDF40);
  sub_1000095E8(v79, &unk_101192950, &unk_100EBDF40);
  v58(v46, v8);
  sub_1000095E8(v12, &unk_101192950, &unk_100EBDF40);
  v48 = v72;
  v49 = v73;
  if (v57)
  {
    return;
  }

LABEL_47:
  v50 = *(v4 + v48);
  if (!v50)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v51 = *(v50 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (!v51)
  {
    goto LABEL_68;
  }

  v52 = *(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData);
  if ((v52 & 0xFF00) == 0x200)
  {
    v51[OBJC_IVAR____TtC5Music21NowPlayingContentView_freezeSquareMotion] = 0;
    v53 = v51;
    goto LABEL_61;
  }

  if (v52 > 1u)
  {
    if (v52 != 2)
    {
      goto LABEL_60;
    }

    v59 = "squareToFullscreen";
  }

  else
  {
    v59 = "y";
    if (!v52)
    {
      goto LABEL_60;
    }
  }

  if (0x8000000100E3C4F0 == (v59 | 0x8000000000000000))
  {
    v53 = v51;

    v53[OBJC_IVAR____TtC5Music21NowPlayingContentView_freezeSquareMotion] = 1;
    goto LABEL_67;
  }

LABEL_60:
  v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v53 = v51;

  v53[OBJC_IVAR____TtC5Music21NowPlayingContentView_freezeSquareMotion] = v60 & 1;
  if ((v60 & 1) == 0)
  {
LABEL_61:
    if (v53[OBJC_IVAR____TtC5Music21NowPlayingContentView_needsSquareMotionUpdate] == 1)
    {
      v61 = *&v53[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView];
      *&v53[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView] = 0;
      if (v61)
      {
        [v61 removeFromSuperview];
      }

      v62 = *&v53[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot];
      *&v53[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot] = 0;
      if (v62)
      {
        [v62 removeFromSuperview];
      }

      sub_10065CE7C(0, 1);
    }
  }

LABEL_67:

LABEL_68:
  v63 = *(v4 + v48);
  if (!v63)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v64 = *(v63 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v64)
  {
    *&v64[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData] = *(v4 + v49);
    swift_retain_n();
    v65 = v64;

    sub_10006ADD4();
  }

  sub_1005CAD44();
  sub_1005CB484(v77 & 1, v76 & 1);
  v81 = 11;
  v66 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v17);
  v67 = *(v4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode) & 0xC000000000000000;
  if (v66)
  {
    if (v67 != 0x4000000000000000)
    {
      return;
    }

    v68 = *(v4 + v48);
    if (v68)
    {
      if (*(v68 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) - 1 <= 1)
      {
        goto LABEL_79;
      }

      return;
    }

    goto LABEL_85;
  }

  if (v67 != 0x4000000000000000)
  {
    return;
  }

  v69 = *(v4 + v48);
  if (!v69)
  {
LABEL_86:
    __break(1u);
    return;
  }

  if (*(v69 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode))
  {
LABEL_79:
    sub_1005C6A74(1);
    sub_1005D84C8(1);
    sub_1005D90E0(1);
  }
}

void sub_1005C99B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition) == 1)
    {
      if (qword_10117F5C8 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1000060E4(v4, qword_101218A98);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "| Got motion data while in a transition", v7, 2u);
      }
    }

    sub_1005C8D4C(1, 1, 0);
  }
}

void sub_1005C9AEC()
{
  v1 = v0;
  v2 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = objc_opt_self();
    sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 deactivateConstraints:isa];

    v5 = Array._bridgeToObjectiveC()().super.isa;

    [v3 activateConstraints:v5];

    v6 = [v1 view];
    if (v6)
    {
      v7 = v6;
      [v6 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1005C9C48(int a1, int a2, char a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for AnimationCompletionCriteria();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(aBlock) = 11;
  v15 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v15) & 1) == 0)
  {
    return;
  }

  v66 = v12;
  v16 = OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground;
  v17 = v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground];
  sub_1005CA4E0(a1, a2, a3 & 1, v4);
  v19 = v18;
  v21 = v20;
  v22 = [v4 traitCollection];
  v23 = sub_1005E7D18(v22, v19, v21);

  v5[v16] = v23;
  sub_1005C9AEC();
  v24 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData];
  v64 = ObjectType;
  if (v24 && (, v25 = sub_1002752B8(), , (v25 & 1) != 0))
  {
    v26 = v5[v16];
  }

  else
  {
    v26 = 0;
  }

  v27 = OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground;
  v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground] = v26;
  v28 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v29 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v29)
  {
    __break(1u);
    goto LABEL_42;
  }

  *(v29 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingShouldShowMotionBackground) = v26;
  v30 = *(v29 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v30)
  {
    *(v30 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground) = v26;
  }

  if (sub_1005C7BDC())
  {
    v31 = *&v5[v28];
    if (v5[v27] == 1)
    {
      if (!v31)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v32 = *(v31 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v32)
      {
        [v32 setAlpha:0.0];
        v31 = *&v5[v28];
        if (!v31)
        {
          goto LABEL_46;
        }
      }

      v33 = *(v31 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v33)
      {
        v34 = 1.0;
LABEL_21:
        [*(v33 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setAlpha:v34];
      }
    }

    else
    {
      if (!v31)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      v35 = *(v31 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v35)
      {
        [v35 setAlpha:1.0];
        v31 = *&v5[v28];
        if (!v31)
        {
          goto LABEL_47;
        }
      }

      v33 = *(v31 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v33)
      {
        v34 = 0.0;
        goto LABEL_21;
      }
    }
  }

  if (v17 == v5[v16])
  {
    return;
  }

  static Animation.easeInOut(duration:)();
  v65 = Animation.delay(_:)();

  v36 = [v5 traitCollection];
  [v36 displayCornerRadius];
  v38 = v37;

  v39 = Corner.large.unsafeMutableAddressor();
  v40 = *v39;
  v41 = v39[1];
  v42 = *(v39 + 16);
  v43 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState];
  v62 = *v39;
  v63 = v28;
  v61 = v42;
  if (v17)
  {
    if (v43)
    {
      v44 = *(v43 + 40);
      if (v44 == 255 || !static Corner.__derived_enum_equals(_:_:)(*(v43 + 24), *(v43 + 32), v44, v38, -1, 0))
      {
        swift_getKeyPath();
        v60 = &v60;
        __chkstk_darwin();
        *(&v60 - 4) = v43;
        *(&v60 - 3) = v38;
        *(&v60 - 2) = -1;
        *(&v60 - 8) = 0;
        aBlock = v43;
        sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState, &unk_100ED64C0);

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        v45 = v41;
      }

      else
      {
        *(v43 + 24) = v38;
        *(v43 + 32) = -1;
        *(v43 + 40) = 0;
        v45 = v41;
      }

      goto LABEL_35;
    }

LABEL_32:
    v45 = v41;
    goto LABEL_35;
  }

  if (!v43)
  {
    goto LABEL_32;
  }

  v46 = *(v43 + 40);
  v45 = v41;
  if (v46 == 255 || !static Corner.__derived_enum_equals(_:_:)(*(v43 + 24), *(v43 + 32), v46, v40, v41, v42))
  {
    swift_getKeyPath();
    v60 = &v60;
    __chkstk_darwin();
    *(&v60 - 4) = v43;
    *(&v60 - 3) = v40;
    *(&v60 - 2) = v41;
    *(&v60 - 8) = v42;
    aBlock = v43;
    sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState, &unk_100ED64C0);

    v45 = v41;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v43 + 24) = v40;
    *(v43 + 32) = v41;
    *(v43 + 40) = v42;
  }

LABEL_35:

  static AnimationCompletionCriteria.removed.getter();
  __chkstk_darwin();
  *(&v60 - 8) = v5;
  *(&v60 - 7) = v38;
  *(&v60 - 6) = -1;
  *(&v60 - 40) = 0;
  *(&v60 - 4) = v62;
  *(&v60 - 3) = v45;
  *(&v60 - 16) = v61;
  *(swift_allocObject() + 16) = v5;
  v47 = v5;
  withAnimation<A>(_:completionCriteria:_:completion:)();

  (*(v66 + 8))(v14, v11);
  sub_1005C6A74(0);
  v48 = v63;
  v49 = *&v5[v63];
  if (!v49)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if ([v49 isViewLoaded])
  {
    v50 = *&v5[v48];
    if (v50)
    {
      v51 = v50;
      sub_1001C9480();

      v52 = objc_opt_self();
      v53 = swift_allocObject();
      *(v53 + 16) = v47;
      v71 = sub_1005EA90C;
      v72 = v53;
      aBlock = _NSConcreteStackBlock;
      v68 = 1107296256;
      v69 = sub_10002BC98;
      v70 = &unk_1010B5DB0;
      v54 = _Block_copy(&aBlock);
      v55 = v47;

      v56 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v57 = swift_allocObject();
      v58 = v64;
      *(v57 + 16) = v56;
      *(v57 + 24) = v58;
      v71 = sub_1005EA914;
      v72 = v57;
      aBlock = _NSConcreteStackBlock;
      v68 = 1107296256;
      v69 = sub_1005C3688;
      v70 = &unk_1010B5E00;
      v59 = _Block_copy(&aBlock);

      [v52 animateWithDuration:0 delay:v54 options:v59 animations:a4 completion:0.0];

      _Block_release(v59);
      _Block_release(v54);
      return;
    }

    goto LABEL_45;
  }
}

void sub_1005CA4E0(int a1, int a2, char a3, id a4)
{
  if (a3)
  {
    v5 = [a4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 window];

      if (v7)
      {
        [v7 bounds];

        return;
      }

      v8 = [a4 view];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1005CA5C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v10 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState;
  v11 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState);
  if (v11)
  {
    v12 = (*(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground) ^ 1) & 1;
    if (v12 == *(v11 + 16))
    {
      *(v11 + 16) = v12;
    }

    else
    {
      swift_getKeyPath();
      __chkstk_darwin();
      sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState, &unk_100ED64C0);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v13 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
  if (v13)
  {
    v14 = v13;
    v15 = [v14 superview];
    if (v15)
    {
      v16 = v15;
      v17 = sub_100025CE0();
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v17) & 1) == 0 || (*(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground))
      {
        goto LABEL_12;
      }

      v18 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
      if (!v18)
      {
        __break(1u);
        return;
      }

      v19 = *(v18 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v19)
      {
        v20 = v19;
      }

      else
      {
LABEL_12:
        v20 = sub_1005C405C();
      }

      v21 = v20;
      [v16 insertSubview:v14 aboveSubview:v20];
    }
  }

  v22 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground);
  v23 = *(a1 + v10);
  if (v22 == 1)
  {
    if (v23)
    {
      v24 = *(v23 + 40);
      if (v24 == 255 || !static Corner.__derived_enum_equals(_:_:)(*(v23 + 24), *(v23 + 32), v24, a2, a3, a4))
      {
        swift_getKeyPath();
        __chkstk_darwin();
        sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState, &unk_100ED64C0);

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        *(v23 + 24) = a2;
        *(v23 + 32) = a3;
        *(v23 + 40) = a4;
      }
    }
  }

  else if (v23)
  {
    v25 = *(v23 + 40);
    if (v25 == 255 || !static Corner.__derived_enum_equals(_:_:)(*(v23 + 24), *(v23 + 32), v25, a5, a6, v7))
    {
      swift_getKeyPath();
      __chkstk_darwin();
      sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState, &unk_100ED64C0);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v23 + 24) = a5;
      *(v23 + 32) = a6;
      *(v23 + 40) = v7;
    }
  }
}

void sub_1005CAA64(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground) == 1)
  {
    v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState;
    v2 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState);
    if (v2)
    {
      swift_getKeyPath();
      sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState, &unk_100ED64C0);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v4 = *(v2 + 16);

      if ((v4 & 1) == 0)
      {
        v5 = *(a1 + v1);
        if (v5)
        {
          if (*(v5 + 40) == 255)
          {
            *(v5 + 24) = 0;
            *(v5 + 32) = 0;
          }

          else
          {
            swift_getKeyPath();
            __chkstk_darwin();

            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }
        }
      }
    }
  }
}

void sub_1005CAC18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData))
    {

      v4 = sub_1002752B8();

      if (v4)
      {
        v5 = v3;
        v6 = [v5 view];
        if (!v6)
        {
          __break(1u);
          return;
        }

        v7 = v6;
        [v6 frame];
        v9 = v8;
        v11 = v10;

        v12 = [v5 traitCollection];
        v13 = sub_1005E7D18(v12, v9, v11);

        if (v13 != v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground])
        {
          sub_1005C9C48(0, 0, 1, 0.0);
        }
      }
    }
  }
}

void sub_1005CAD44()
{
  sub_10010FC20(&qword_1011978A8, &qword_100ED6578);
  __chkstk_darwin();
  v2 = &v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v64 - v3;
  __chkstk_darwin();
  v6 = &v64 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v70 = v7;
  v71 = v8;
  __chkstk_darwin();
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v64 - v11;
  __chkstk_darwin();
  v14 = &v64 - v13;
  if (!*&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
  {
    goto LABEL_12;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v73);

  v15 = v74;
  if (v74 == 255)
  {
LABEL_11:

LABEL_12:
    v42 = type metadata accessor for MorphingMotionArtwork(0);
    (*(*(v42 - 8) + 56))(v4, 1, 1, v42);
    v43 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
    swift_beginAccess();
    sub_10006B010(v4, &v0[v43], &qword_1011978A8, &qword_100ED6578);
    swift_endAccess();
    return;
  }

  v68 = v0;
  v16 = v73;
  VideoArtwork.url.getter();
  LOBYTE(v73) = 11;
  v17 = sub_100025CE0();
  v18 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v17);
  v69 = v16;
  if ((v18 & 1) == 0)
  {
    v67 = v15;
    v29 = v14;
    v31 = v70;
    v30 = v71;
    v32 = *(v71 + 16);
    v66 = v29;
    v32(v10);
    v33 = type metadata accessor for MorphingMotionArtwork(0);
    v34 = v33[7];
    v35 = &v2[v33[8]];
    v72 = 0;
    v36 = v16;
    State.init(wrappedValue:)();
    v37 = v74;
    *v35 = v73;
    *(v35 + 1) = v37;
    (*(v30 + 32))(v2, v10, v31);
    *&v2[v33[5]] = v36;
    v38 = &v2[v33[6]];
    *v38 = 0;
    *(v38 + 1) = 0;
    v38[16] = 1;
    *&v2[v34] = 0;
    (*(*(v33 - 1) + 56))(v2, 0, 1, v33);
    v39 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
    v0 = v68;
    swift_beginAccess();
    v40 = &v0[v39];
    v41 = v2;
    goto LABEL_20;
  }

  v0 = v68;
  v19 = *&v68[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState];
  if (!v19)
  {
    (*(v71 + 8))(v14, v70);
    sub_10004ADFC(v69, v15);
    goto LABEL_11;
  }

  v20 = [v0 view];
  if (!v20)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = [v20 window];

  v23 = 0.0;
  v67 = v15;
  v65 = v19;
  if (v22)
  {
    v24 = [v22 windowScene];

    v25 = 0.0;
    if (v24)
    {
      v26 = [v24 screen];

      [v26 bounds];
      v23 = v27;
      v25 = v28;
    }
  }

  else
  {
    v25 = 0.0;
  }

  if (v25 < v23)
  {
    v23 = v25;
  }

  v44 = [objc_opt_self() currentDevice];
  v45 = [v44 userInterfaceIdiom];

  if (v45 == 1)
  {
    v46 = v23;
  }

  else
  {
    v46 = v23 * 4.0 / 3.0;
  }

  v48 = v70;
  v47 = v71;
  v49 = *(v71 + 16);
  v66 = v14;
  v49(v12, v14, v70);
  v50 = type metadata accessor for MorphingMotionArtwork(0);
  v51 = v50[7];
  v52 = &v6[v50[8]];
  v72 = 0;
  v53 = v69;
  State.init(wrappedValue:)();
  v54 = v74;
  *v52 = v73;
  *(v52 + 1) = v54;
  v31 = v48;
  (*(v47 + 32))(v6, v12, v48);
  *&v6[v50[5]] = v53;
  v55 = &v6[v50[6]];
  *v55 = v23;
  *(v55 + 1) = v46;
  v55[16] = 0;
  *&v6[v51] = v65;
  (*(*(v50 - 1) + 56))(v6, 0, 1, v50);
  v56 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
  swift_beginAccess();
  v40 = &v0[v56];
  v41 = v6;
LABEL_20:
  sub_10006B010(v41, v40, &qword_1011978A8, &qword_100ED6578);
  swift_endAccess();
  v57 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  v58 = v67;
  if (!v57)
  {
    __break(1u);
    goto LABEL_27;
  }

  v59 = *(v57 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  v60 = v69;
  v61 = v66;
  if (!v59)
  {
LABEL_24:
    sub_10004ADFC(v60, v58);

    (*(v71 + 8))(v61, v31);
    return;
  }

  if (*(v59 + OBJC_IVAR____TtC5Music21NowPlayingContentView_pauseArtworkUpdates))
  {
    v62 = sub_1005C405C();
    v63 = v60;
    sub_100427990(v60, 1, 0x4008000000000000, 0);
    sub_10004ADFC(v60, v58);

    goto LABEL_24;
  }

  (*(v71 + 8))(v66, v31);
  sub_10004ADFC(v60, v58);
}

void sub_1005CB484(int a1, int a2)
{
  sub_10010FC20(&qword_1011978A8, &qword_100ED6578);
  __chkstk_darwin();
  v6 = &v222 - v5;
  v7 = type metadata accessor for MorphingMotionArtwork(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v222 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v222 - v11;
  v13 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v14 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (v14)
  {
    LODWORD(v235) = a2;
    v15 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
    swift_beginAccess();
    sub_1000089F8(v2 + v15, v6, &qword_1011978A8, &qword_100ED6578);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000095E8(v6, &qword_1011978A8, &qword_100ED6578);
      return;
    }

    sub_1005EA91C(v6, v12);
    v16 = v14[OBJC_IVAR___MusicNowPlayingControlsViewController_mode];
    v17 = v16 == 3 || v16 == 0;
    if (!v17 || (v14[OBJC_IVAR___MusicNowPlayingControlsViewController_isInTakeoverMode] & 1) != 0 || (v18 = *&v14[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView]) == 0 || (*(v18 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isBeingDonated) & 1) != 0)
    {
      sub_1005EA980(v12, type metadata accessor for MorphingMotionArtwork);
      return;
    }

    v223 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView;
    v230 = v14;
    v229 = a1;
    v19 = v2;
    sub_1005D84C8(a1 & 1);
    sub_1005EA9E0(v12, v10);
    v20 = objc_allocWithZone(sub_10010FC20(&qword_1011978C8, &qword_100ED6658));
    v21 = _UIHostingView.init(rootView:)();
    v22 = UIView.forAutolayout.getter();

    type metadata accessor for MorphingMotionArtworkContainer();
    v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v24 = *(v19 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
    *(v19 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer) = v23;
    v25 = v23;

    v224 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState;
    *&v25[OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer_state] = *(v19 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState);

    v26 = v25;
    v27 = v22;
    v28 = v26;
    v29 = v27;
    v30 = v28;
    v31 = v29;
    v32 = v30;
    v33 = v31;
    v34 = v32;
    v234 = v33;
    [v34 addSubview:?];
    v35 = objc_opt_self();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = a1 & 1;
    *(v36 + 32) = v19;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1005EAA44;
    *(v37 + 24) = v36;
    v228 = v36;
    v240 = sub_10018A020;
    v241 = v37;
    aBlock = _NSConcreteStackBlock;
    v237 = 1107296256;
    v238 = sub_100029B9C;
    v239 = &unk_1010B5E78;
    v38 = _Block_copy(&aBlock);
    v39 = v34;
    v233 = v19;
    v40 = v19;

    v226 = v35;
    [v35 performWithoutAnimation:v38];
    _Block_release(v38);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      __break(1u);
LABEL_129:
      swift_once();
LABEL_82:
      v165 = type metadata accessor for Logger();
      sub_1000060E4(v165, qword_101218A98);
      v166 = Logger.logObject.getter();
      v167 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        *v168 = 0;
        _os_log_impl(&_mh_execute_header, v166, v167, "| 🫥😐 – Showing morphingMotionView: full-screen mode", v168, 2u);
      }

      v169 = *&v35[v38[122]];
      v139 = v233;
      if ((v169 & 0xFF00) == 0x200)
      {
        goto LABEL_106;
      }

      if (v169 > 1u)
      {
        if (v169 != 2)
        {
          goto LABEL_92;
        }

        v170 = "squareToFullscreen";
      }

      else
      {
        v170 = "y";
        if (!v169)
        {
          goto LABEL_92;
        }
      }

      if (0x8000000100E3C4F0 == (v170 | 0x8000000000000000))
      {

LABEL_93:
        v172 = *&v14[v223];
        if (v172)
        {
          v173 = v172[OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates];
          v172[OBJC_IVAR____TtC5Music21NowPlayingContentView_deferArtworkUpdates] = 1;
          v174 = v172;
          v175 = v174;
          if ((v173 & 1) == 0)
          {
            [v174 setNeedsLayout];
          }

          v176 = [v39 superview];

          if (v176)
          {
            [v176 insertSubview:v175 belowSubview:v39];
          }

          v177 = v175;
          [v177 setTranslatesAutoresizingMaskIntoConstraints:1];
          aBlock = 0x3FF0000000000000;
          v237 = 0;
          v238 = 0;
          v239 = 0x3FF0000000000000;
          v240 = 0;
          v241 = 0;
          [v177 setTransform:&aBlock];
          v178 = *(v139 + v13);
          if (v178)
          {
            v179 = *(v178 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide);
            if (v179)
            {
              [v179 layoutFrame];
              [v177 setFrame:?];

              _s4MaskCMa();
              swift_allocObject();
              v180 = sub_1007CDF70(0);
              if (!v180)
              {
LABEL_103:

                sub_100345538(1, v177, 0, 0);
                v198 = Logger.logObject.getter();
                v199 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v198, v199))
                {
                  v200 = swift_slowAlloc();
                  *v200 = 0;
                  _os_log_impl(&_mh_execute_header, v198, v199, "| 🫥😐 – Hiding square artwork", v200, 2u);
                }

                v139 = v233;
LABEL_108:
                v201 = *&v35[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData];
                if (v201)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();

                  static Published.subscript.getter(&aBlock);

                  LOBYTE(v201) = v237;
                  if (v237 == 255)
                  {
                    LOBYTE(v201) = 0;
                  }

                  else
                  {
                    sub_10004ADFC(aBlock, v237);
                  }
                }

                v202 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v203 = swift_allocObject();
                *(v203 + 16) = v202;
                *(v203 + 24) = v201 & 1;
                if ((v229 & 1) != 0 && (v35[v225] & 1) == 0)
                {
                  v213 = swift_allocObject();
                  *(v213 + 16) = v35;
                  v240 = sub_1005EAAB4;
                  v241 = v213;
                  aBlock = _NSConcreteStackBlock;
                  v237 = 1107296256;
                  v238 = sub_10002BC98;
                  v239 = &unk_1010B5F90;
                  v214 = _Block_copy(&aBlock);
                  v215 = v35;

                  swift_unknownObjectWeakInit();
                  swift_unknownObjectWeakDestroy();
                  v216 = swift_allocObject();
                  *(v216 + 16) = sub_1005EAA88;
                  *(v216 + 24) = v203;
                  v240 = sub_100029B6C;
                  v241 = v216;
                  aBlock = _NSConcreteStackBlock;
                  v237 = 1107296256;
                  v238 = sub_1005C3688;
                  v239 = &unk_1010B5FE0;
                  v217 = _Block_copy(&aBlock);

                  [v226 animateWithDuration:v214 animations:v217 completion:0.15];
                  _Block_release(v217);
                  _Block_release(v214);

                  sub_1005EA980(v12, type metadata accessor for MorphingMotionArtwork);

                  return;
                }

                if (v35[OBJC_IVAR____TtC5Music24NowPlayingViewController_isViewTransitioning] != 1)
                {

                  sub_1005D8CD0(v211, v201 & 1);

                  sub_1005EA980(v12, type metadata accessor for MorphingMotionArtwork);

                  v212 = 0;
                  v204 = 0;
LABEL_126:
                  sub_100020438(v212, v204);
                  return;
                }

                v204 = swift_allocObject();
                v205 = v230;
                *(v204 + 16) = v230;
                v206 = swift_allocObject();
                *(v206 + 16) = sub_1005EAA94;
                *(v206 + 24) = v204;
                v240 = sub_10018A020;
                v241 = v206;
                aBlock = _NSConcreteStackBlock;
                v237 = 1107296256;
                v238 = sub_100029B9C;
                v239 = &unk_1010B5F40;
                v207 = _Block_copy(&aBlock);
                v208 = v241;
                v235 = v205;

                [v226 performWithoutAnimation:v207];
                _Block_release(v207);
                isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                if (isEscapingClosureAtFileLocation)
                {
                  __break(1u);
                }

                else
                {
                  v210 = *(v139 + v224);
                  if (v210)
                  {
                    if (v210[42])
                    {
                      swift_getKeyPath();
                      v233 = &v222;
                      __chkstk_darwin();
                      *(&v222 - 2) = v210;
                      *(&v222 - 8) = 0;
                      aBlock = v210;
                      sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState, &unk_100ED64C0);

                      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                    }

                    else
                    {
                      v210[42] = 0;
                    }
                  }

                  v206 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v208 = OBJC_IVAR____TtC5Music24NowPlayingViewController_viewTransitionCompletions;
                  swift_beginAccess();
                  isEscapingClosureAtFileLocation = *&v35[v208];

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *&v35[v208] = isEscapingClosureAtFileLocation;
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_123;
                  }
                }

                isEscapingClosureAtFileLocation = sub_10006429C(0, *(isEscapingClosureAtFileLocation + 16) + 1, 1, isEscapingClosureAtFileLocation);
                *&v35[v208] = isEscapingClosureAtFileLocation;
LABEL_123:
                v220 = *(isEscapingClosureAtFileLocation + 16);
                v219 = *(isEscapingClosureAtFileLocation + 24);
                if (v220 >= v219 >> 1)
                {
                  isEscapingClosureAtFileLocation = sub_10006429C((v219 > 1), v220 + 1, 1, isEscapingClosureAtFileLocation);
                }

                *(isEscapingClosureAtFileLocation + 16) = v220 + 1;
                v221 = isEscapingClosureAtFileLocation + 16 * v220;
                *(v221 + 32) = sub_1005EAA9C;
                *(v221 + 40) = v206;
                *&v35[v208] = isEscapingClosureAtFileLocation;
                swift_endAccess();

                sub_1005EA980(v12, type metadata accessor for MorphingMotionArtwork);

                v212 = sub_1005EAA94;
                goto LABEL_126;
              }

              v181 = v180;
              v182 = v180[2];
              v183 = [v35 view];
              if (v183)
              {
                v184 = v183;
                [v183 bounds];
                v186 = v185;
                v188 = v187;
                v190 = v189;
                v192 = v191;

                [v182 setFrame:{v186, v188, v190, v192}];
                v193 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v194 = swift_allocObject();
                *(v194 + 16) = v177;
                *(v194 + 24) = v193;
                v195 = v181[5];
                v196 = v181[6];
                v181[5] = sub_1005EAB04;
                v181[6] = v194;
                v197 = v177;

                sub_100020438(v195, v196);

                *&v35[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask] = v181;

                [v39 setMaskView:v181[2]];

                goto LABEL_103;
              }

              goto LABEL_143;
            }

            goto LABEL_141;
          }

LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

LABEL_106:

        goto LABEL_107;
      }

LABEL_92:
      v171 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v171 & 1) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_93;
    }

    LOBYTE(aBlock) = 11;
    v41 = sub_100025CE0();
    v42 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v41);
    v227 = v41;
    v232 = v40;
    if (v42)
    {

      v43 = v234;
      v44 = [objc_opt_self() currentDevice];
      v45 = [v44 userInterfaceIdiom];

      v46 = v233;
      if (v45)
      {
        [v39 setTranslatesAutoresizingMaskIntoConstraints:0];

        v47 = [v230 view];
        if (v47)
        {
          v48 = v47;
          LOBYTE(aBlock) = 11;
          if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v41))
          {
            if (*(v232 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground))
            {
              v49 = v232;
LABEL_47:
              v100 = sub_1005C405C();
              goto LABEL_48;
            }

            v98 = *(v233 + v13);
            if (!v98)
            {
LABEL_142:
              __break(1u);
LABEL_143:
              __break(1u);
              goto LABEL_144;
            }

            v99 = *(v98 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
            if (v99)
            {
              v100 = v99;
              v49 = v232;
LABEL_48:
              [v48 insertSubview:v39 aboveSubview:v100];

              v231 = objc_opt_self();
              sub_10010FC20(&qword_101183990, &qword_100EBC750);
              v101 = swift_allocObject();
              *(v101 + 16) = xmmword_100EBDC10;
              v102 = [v39 leadingAnchor];

              v225 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide;
              v103 = [*(v49 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide) leadingAnchor];
              v104 = [v102 constraintEqualToAnchor:v103];

              *(v101 + 32) = v104;
              v105 = [v39 topAnchor];

              v106 = v39;
              v107 = v225;
              v108 = [*(v49 + v225) topAnchor];
              v109 = [v105 constraintEqualToAnchor:v108];

              *(v101 + 40) = v109;
              v110 = [v106 trailingAnchor];

              v111 = [*(v49 + v107) trailingAnchor];
              v112 = [v110 constraintEqualToAnchor:v111];

              *(v101 + 48) = v112;
              v113 = [v106 bottomAnchor];

              v114 = *(v49 + v107);
              v39 = v106;
              v115 = [v114 bottomAnchor];
              v116 = [v113 constraintEqualToAnchor:v115];

              *(v101 + 56) = v116;
              sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v231 activateConstraints:isa];

              goto LABEL_49;
            }
          }

          v49 = v232;
          goto LABEL_47;
        }

        goto LABEL_135;
      }

      v81 = *(v46 + v13);
      if (!v81)
      {
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      v82 = [v81 view];
      if (!v82)
      {
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v83 = v82;
      LOBYTE(aBlock) = 11;
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v41))
      {
        v84 = v232;
        if (*(v232 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground))
        {
LABEL_40:
          v87 = sub_1005C405C();
LABEL_41:
          [v83 insertSubview:v39 aboveSubview:v87];

          v88 = [v84 view];
          if (v88)
          {
            v89 = v88;
            [v88 bounds];
            v91 = v90;
            v93 = v92;
            v95 = v94;
            v97 = v96;

            [v39 setFrame:{v91, v93, v95, v97}];
            [v39 setAutoresizingMask:18];
LABEL_49:
            v231 = objc_opt_self();
            sub_10010FC20(&qword_101183990, &qword_100EBC750);
            v68 = swift_allocObject();
            *(v68 + 16) = xmmword_100EBDC10;
            v118 = v234;
            v119 = [v234 centerXAnchor];

            v120 = [v39 centerXAnchor];
            v121 = [v119 constraintEqualToAnchor:v120];

            *(v68 + 32) = v121;
            v122 = [v118 centerYAnchor];

            v123 = [v39 centerYAnchor];
            v124 = [v122 constraintEqualToAnchor:v123];

            *(v68 + 40) = v124;
            v125 = [v118 widthAnchor];

            v126 = [v39 widthAnchor];
            v127 = [v125 constraintEqualToAnchor:v126];

            *(v68 + 48) = v127;
            v79 = [v118 heightAnchor];

            v80 = [v39 heightAnchor];
            v70 = v39;
LABEL_50:
            v128 = v80;

            v129 = [v79 constraintEqualToAnchor:v128];
            *(v68 + 56) = v129;
            sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
            v130 = Array._bridgeToObjectiveC()().super.isa;

            [v231 activateConstraints:v130];

            LOBYTE(aBlock) = 11;
            v131 = v227;
            v132 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v227);
            v35 = v232;
            if (v132)
            {
              sub_1005C9C48(0, 0, 1, 0.0);
            }

            v133 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v134 = swift_allocObject();
            v135 = v230;
            v231 = v134;
            v134[2] = v133;
            v134[3] = v135;
            v225 = OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition;
            v136 = v35[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition];
            v230 = v135;
            v17 = v136 == 1;
            v137 = v235;
            if (!v17)
            {

              v139 = v233;
              if (v137)
              {

                if (v35[v225])
                {
                  v140 = 3.0;
                }

                else
                {
                  v140 = 0.15;
                }

                v141 = swift_allocObject();
                v142 = v231;
                *(v141 + 16) = sub_1005EAA80;
                *(v141 + 24) = v142;
                v240 = sub_100029B6C;
                v241 = v141;
                aBlock = _NSConcreteStackBlock;
                v237 = 1107296256;
                v238 = sub_10002BC98;
                v239 = &unk_1010B6058;
                v143 = _Block_copy(&aBlock);

                [v226 animateWithDuration:v143 animations:v140];
                _Block_release(v143);
              }

              else if (v35[OBJC_IVAR____TtC5Music24NowPlayingViewController_isViewTransitioning] == 1)
              {

                v144 = swift_allocObject();
                v145 = v231;
                *(v144 + 16) = sub_1005EAA80;
                *(v144 + 24) = v145;
                v146 = OBJC_IVAR____TtC5Music24NowPlayingViewController_viewTransitionCompletions;
                swift_beginAccess();
                v147 = *&v35[v146];

                v148 = swift_isUniquelyReferenced_nonNull_native();
                *&v35[v146] = v147;
                if ((v148 & 1) == 0)
                {
                  v147 = sub_10006429C(0, v147[2] + 1, 1, v147);
                  *&v35[v146] = v147;
                }

                v150 = v147[2];
                v149 = v147[3];
                if (v150 >= v149 >> 1)
                {
                  v147 = sub_10006429C((v149 > 1), v150 + 1, 1, v147);
                }

                v147[2] = v150 + 1;
                v151 = &v147[2 * v150];
                v151[4] = sub_100029B94;
                v151[5] = v144;
                *&v35[v146] = v147;
                swift_endAccess();
              }

              else
              {
                sub_1005D8924(v133, v230);
              }

              goto LABEL_108;
            }

            [v39 setAlpha:1.0];

            LOBYTE(aBlock) = 11;
            v38 = &qword_101197000;
            if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v131))
            {
              v138 = *&v35[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData];
              if ((v138 & 0xFF00) != 0x200)
              {
                if (!v138)
                {

                  goto LABEL_71;
                }

                v152 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v152)
                {
LABEL_71:
                  v153 = v35[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground];

                  if ((v153 & 1) == 0)
                  {

                    if (qword_10117F5C8 != -1)
                    {
                      swift_once();
                    }

                    v154 = type metadata accessor for Logger();
                    sub_1000060E4(v154, qword_101218A98);
                    v155 = Logger.logObject.getter();
                    v156 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v155, v156))
                    {
                      v157 = swift_slowAlloc();
                      *v157 = 0;
                      _os_log_impl(&_mh_execute_header, v155, v156, "| 🫥😐 – Showing morphingMotionView: plain motion mode", v157, 2u);
                    }

                    _s4MaskCMa();
                    swift_allocObject();
                    v158 = sub_1007CDF70(0);
                    if (!v158)
                    {

                      v139 = v233;
                      goto LABEL_108;
                    }

                    v139 = v233;
                    v159 = *(v233 + v13);
                    if (v159)
                    {
                      v160 = v158;
                      v161 = *(v159 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide);
                      if (v161)
                      {
                        [v161 layoutFrame];
                        [v160[2] setFrame:{0.0, 0.0}];
                        v162 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v163 = v160[5];
                        v164 = v160[6];
                        v160[5] = sub_1005EAB0C;
                        v160[6] = v162;

                        sub_100020438(v163, v164);

                        *&v35[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask] = v160;

                        [v39 setMaskView:v160[2]];

LABEL_107:

                        goto LABEL_108;
                      }

LABEL_146:
                      __break(1u);
                      return;
                    }

LABEL_145:
                    __break(1u);
                    goto LABEL_146;
                  }

LABEL_81:
                  sub_100345538(0, v39, 0, 0);
                  if (qword_10117F5C8 == -1)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_129;
                }
              }
            }

            goto LABEL_81;
          }

          goto LABEL_138;
        }

        v85 = *(v233 + v13);
        if (!v85)
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v86 = *(v85 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (v86)
        {
          v87 = v86;
          v84 = v232;
          goto LABEL_41;
        }
      }

      v84 = v232;
      goto LABEL_40;
    }

    v50 = v234;

    v51 = *(v233 + v13);
    if (v51)
    {
      v52 = [v51 view];
      if (v52)
      {
        v53 = v52;
        LOBYTE(aBlock) = 11;
        if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v41))
        {
          v54 = v232;
          if (*(v232 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground))
          {
LABEL_29:
            v57 = sub_1005C405C();
LABEL_30:
            [v53 insertSubview:v39 aboveSubview:v57];

            v58 = [v54 view];
            if (v58)
            {
              v59 = v58;
              [v58 bounds];
              v61 = v60;
              v63 = v62;
              v65 = v64;
              v67 = v66;

              [v39 setFrame:{v61, v63, v65, v67}];
              [v39 setAutoresizingMask:18];
              v231 = objc_opt_self();
              sub_10010FC20(&qword_101183990, &qword_100EBC750);
              v68 = swift_allocObject();
              *(v68 + 16) = xmmword_100EBDC10;
              v69 = [v39 leadingAnchor];

              v70 = v234;
              v71 = [v234 leadingAnchor];

              v72 = [v69 constraintEqualToAnchor:v71];
              *(v68 + 32) = v72;
              v73 = [v39 topAnchor];

              v74 = [v70 topAnchor];
              v75 = [v73 constraintEqualToAnchor:v74];

              *(v68 + 40) = v75;
              v76 = [v39 trailingAnchor];

              v77 = [v70 trailingAnchor];
              v78 = [v76 constraintEqualToAnchor:v77];

              *(v68 + 48) = v78;
              v79 = [v39 bottomAnchor];

              v80 = [v70 bottomAnchor];
              goto LABEL_50;
            }

            goto LABEL_134;
          }

          v55 = *(v233 + v13);
          if (!v55)
          {
LABEL_139:
            __break(1u);
            goto LABEL_140;
          }

          v56 = *(v55 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
          if (v56)
          {
            v57 = v56;
            v54 = v232;
            goto LABEL_30;
          }
        }

        v54 = v232;
        goto LABEL_29;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }
}

void sub_1005CD4F8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_10010FC20(&qword_1011978A8, &qword_100ED6578);
  __chkstk_darwin();
  v5 = &v16 - v4;
  sub_1005C6A74(1);
  sub_1005D84C8(v2);
  sub_1005D90E0(v2);
  v6 = type metadata accessor for MorphingMotionArtwork(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
  swift_beginAccess();
  sub_10006B010(v5, a1 + v7, &qword_1011978A8, &qword_100ED6578);
  swift_endAccess();
  v8 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
  *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer) = 0;

  v9 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v10 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v10)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v11 = *(v10 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v11)
  {
    *&v11[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData] = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData);
    swift_retain_n();
    v12 = v11;

    sub_10006ADD4();

    v10 = *(a1 + v9);
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  v13 = *(v10 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v13 && *&v13[OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData])
  {
    swift_getKeyPath();
    swift_getKeyPath();

    v14 = v13;
    static Published.subscript.getter(&v17);

    v15 = v18;
    if (v18 != 255)
    {
      sub_10004ADFC(v17, v18);
      if ((v15 & 1) == 0)
      {
        sub_10065F284();
        sub_10065D24C();
      }
    }
  }
}

id sub_1005CD758()
{
  v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for BackdropView());
    v6 = sub_100453A34();
    v7 = UIView.forAutolayout.getter();

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *sub_1005CD7DC()
{
  type metadata accessor for LifecyclePatrol();
  swift_allocObject();
  result = LifecyclePatrol.init()();
  off_101197380 = result;
  return result;
}

id sub_1005CD81C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v32 = a3;
  v31 = a2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_initialArtworkImage] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_isAnimatingDismissal] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_isInTransition] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_needsUpdateArtworkTransitionData] = 0;
  v11 = &v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData];
  v11[2] = 0;
  *v11 = 512;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_didReceiveDonatedArtwork] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer] = 0;
  v12 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtwork;
  v13 = type metadata accessor for MorphingMotionArtwork(0);
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState] = 0;
  v14 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide;
  *&v4[v14] = [objc_allocWithZone(UILayoutGuide) init];
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_motionArtworkManager] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_videoArtworksObserver] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_motionKeyframeObserver] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData] = 0;
  v15 = OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionVideoArtwork;
  v16 = type metadata accessor for VideoArtwork();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionBackgroundDataWasReady] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_fullScreenMorphingMotionConstraints] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_regularMorphingMotionConstraints] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_invertColorsStatusDidChangeObserver] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionDynamicConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionFullScreenConstraints] = _swiftEmptyArrayStorage;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground] = 1;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_didViewAppear] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_isViewTransitioning] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewTransitionCompletions] = _swiftEmptyArrayStorage;
  v17 = &v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  *v17 = 0x8000000000000000;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] = 0;
  v18 = &v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlayingSubscription] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_windowEventNotificationObserver] = 0;
  v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldIgnoreFullscreenTimer] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_backgroundObserver] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_didActivateObserver] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_screenTraitCollectionObserver] = 0;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_dismissalObserver] = 0;
  v19 = OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkCachingReference;
  type metadata accessor for Artwork.Caching.Reference();
  *&v4[v19] = swift_allocObject();
  v20 = &v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_previousFrame];
  *v20 = 0u;
  v20[1] = 0u;
  *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_timeLabel] = 0;
  UUID.init()();
  v21 = UUID.uuidString.getter();
  v23 = v22;
  (*(v8 + 8))(v10, v7);
  v34 = 0xD000000000000019;
  v35 = 0x8000000100E51CC0;
  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25 = v35;
  v26 = &v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlayingRequestingID];
  *v26 = v34;
  v26[1] = v25;
  v27 = v31;
  *v18 = a1;
  *(v18 + 1) = v27;
  v18[16] = v32 & 1;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v33, "initWithNibName:bundle:", 0, 0);
  UIViewController.playActivityFeatureIdentifier.setter(18);
  if (qword_10117F930 != -1)
  {
    swift_once();
  }

  v29 = *(*off_101197380 + 96);

  v29(v28);

  return v28;
}

id sub_1005CDDA4()
{
  ObjectType = swift_getObjectType();
  if (qword_10117F930 != -1)
  {
    swift_once();
  }

  v2 = *(*off_101197380 + 104);

  v3 = v0;
  v2();

  v4 = [objc_opt_self() sharedMonitor];
  [v4 unregisterObserver:v3];

  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

void sub_1005CE194()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  v252 = *(v3 - 8);
  v253 = v3;
  __chkstk_darwin();
  v251 = &v249 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v249 = &v249 - v5;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v7 = &v249 - v6;
  v8 = sub_10010FC20(&unk_101183D80, &qword_100EC5830);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v249 - v10;
  v258 = sub_10010FC20(&qword_101189DE0, &qword_100EBD2B0);
  v12 = *(v258 - 8);
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v249 - v14;
  v262.receiver = v1;
  v262.super_class = ObjectType;
  v255 = ObjectType;
  objc_msgSendSuper2(&v262, "viewDidLoad", v13);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  (*(*qword_101218AC8 + 456))();
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  *&v260 = v16;
  v17 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  sub_100020674(&unk_1011A4650, &unk_101183D80, &qword_100EC5830, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000206BC();
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v7, &qword_101182140, &unk_100EBD2A0);

  (*(v9 + 8))(v11, v8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&unk_10118ACC0, &qword_101189DE0, &qword_100EBD2B0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v18 = v258;
  v19 = Publisher<>.sink(receiveValue:)();

  (*(v12 + 8))(v15, v18);
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlayingSubscription] = v19;

  v20 = [v1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_114;
  }

  v21 = v20;
  [v20 setClipsToBounds:1];

  v22 = sub_1005D01F0();
  v23 = [v1 view];
  if (!v23)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v24 = v23;
  [v23 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v33 = &selRef_objectAtIndexedSubscript_;
  [v22 setFrame:{v26, v28, v30, v32}];

  v34 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView;
  [*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView] setAutoresizingMask:18];
  v35 = [v1 view];
  if (!v35)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v36 = v35;
  [v35 addSubview:*&v1[v34]];

  v37 = [objc_allocWithZone(type metadata accessor for NowPlayingControlsViewController(0)) init];
  v38 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v39 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController] = v37;

  v40 = OBJC_IVAR____TtC5Music24NowPlayingViewController_needsUpdateArtworkTransitionData;
  if (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_needsUpdateArtworkTransitionData] == 1)
  {
    sub_1005C4A54();
    v1[v40] = 0;
  }

  LOBYTE(v260) = 11;
  v41 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v41))
  {
    sub_1005C9C48(*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize], *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize + 8], v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize + 16], 0.0);
    v42 = v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground];
    if (v42)
    {
      v43 = 0;
      v44 = 0;
      v45 = -1;
    }

    else
    {
      v49 = Corner.large.unsafeMutableAddressor();
      v43 = *v49;
      v44 = v49[1];
      v45 = *(v49 + 16);
    }

    v50 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
    v51 = v38;
    if (v50)
    {
      v52 = [v50 state] == 2;
    }

    else
    {
      v52 = 0;
    }

    v53 = v42 ^ 1;
    type metadata accessor for MorphingMotionArtworkState(0);
    v54 = swift_allocObject();
    *(v54 + 24) = 0;
    *(v54 + 32) = 0;
    *(v54 + 40) = -1;
    *(v54 + 48) = 0;
    *(v54 + 56) = 0;
    *(v54 + 64) = 1;
    ObservationRegistrar.init()();
    *(v54 + 16) = v53;
    *(v54 + 24) = v43;
    *(v54 + 32) = v44;
    *(v54 + 40) = v45;
    *(v54 + 41) = v52;
    *(v54 + 42) = 1;
    *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState] = v54;

    v55 = [v1 view];
    if (!v55)
    {
      goto LABEL_141;
    }

    v46 = v55;
    [v55 addLayoutGuide:*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide]];
    v38 = v51;
    v33 = &selRef_objectAtIndexedSubscript_;
  }

  else
  {
    v46 = *&v1[v38];
    if (!v46)
    {
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v47 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData];
    if (v47)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v48 = v46;
      static Published.subscript.getter(&v260);

      LOBYTE(v47) = BYTE8(v260);
      if (BYTE8(v260) == 255)
      {
        LOBYTE(v47) = 0;
      }

      else
      {
        sub_10004ADFC(v260, SBYTE8(v260));
      }
    }

    else
    {
      v56 = v46;
    }

    v46[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingShouldShowMotionBackground] = v47 & 1;
    v57 = *&v46[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
    if (v57)
    {
      *(v57 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground) = v47 & 1;
    }
  }

  v58 = &v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize];
  if (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize + 16])
  {
    v59 = *&v1[v38];
    if (!v59)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v60 = [v59 view];
    if (!v60)
    {
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v61 = v60;
    v62 = [v1 view];
    if (!v62)
    {
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v63 = v62;
    [v62 bounds];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    [v61 v33[252]];
    v72 = *&v1[v38];
    if (!v72)
    {
LABEL_147:
      __break(1u);
      goto LABEL_148;
    }

    v73 = [v72 view];
    if (!v73)
    {
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v74 = v73;
    [v73 setAutoresizingMask:18];
  }

  else
  {
    v75 = *&v1[v38];
    if (!v75)
    {
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v77 = *v58;
    v76 = v58[1];
    v78 = [v75 view];
    if (!v78)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v74 = v78;
    [v78 v33[252]];
  }

  v79 = *&v1[v38];
  if (!v79)
  {
    goto LABEL_116;
  }

  *(v79 + OBJC_IVAR___MusicNowPlayingControlsViewController_delegate + 8) = &off_1010B54A0;
  swift_unknownObjectWeakAssign();
  v80 = *&v1[v38];
  if (!v80)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v81 = *(v80 + OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider);
  if (!v81)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = &v81[OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler];
  v84 = *&v81[OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler];
  v85 = *&v81[OBJC_IVAR____TtC5Music12VolumeSlider_volumeChangeHandler + 8];
  *v83 = sub_1005EB8A0;
  v83[1] = v82;

  v86 = v81;
  sub_100020438(v84, v85);

  if (!*&v1[v38])
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  [v1 addChildViewController:?];
  v87 = *&v1[v38];
  if (!v87)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  [v87 didMoveToParentViewController:v1];
  v88 = *&v1[v38];
  if (!v88)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v89 = [v88 view];
  if (!v89)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v90 = v89;
  v91 = sub_1005C405C();
  [v90 insertSubview:v91 atIndex:0];

  v92 = sub_1005CD758();
  [v92 setHidden:1];

  v93 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView;
  v94 = [*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backdropView] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setCaptureOnly:1];

  v257 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView;
  [*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___animatedBackgroundView] addSubview:*&v1[v93]];
  v95 = *&v1[v38];
  if (!v95)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v96 = *(v95 + OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl);
  if (!v96)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v97 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = &v96[OBJC_IVAR____TtC5Music17PlayerTimeControl_scrubbingDidChangeHandler];
  v99 = *&v96[OBJC_IVAR____TtC5Music17PlayerTimeControl_scrubbingDidChangeHandler];
  v100 = *&v96[OBJC_IVAR____TtC5Music17PlayerTimeControl_scrubbingDidChangeHandler + 8];
  *v98 = sub_1005EB8A8;
  v98[1] = v97;

  v101 = v96;
  sub_100020438(v99, v100);

  v102 = *&v1[v38];
  if (!v102)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v254 = v93;
  v103 = *(v102 + OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl);
  if (!v103)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v104 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = &v103[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeDidChangeHandler];
  v106 = *&v103[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeDidChangeHandler];
  v107 = *&v103[OBJC_IVAR____TtC5Music17PlayerTimeControl_timeDidChangeHandler + 8];
  *v105 = sub_1005EB8B0;
  v105[1] = v104;
  v108 = v103;

  sub_100020438(v106, v107);

  v256 = objc_opt_self();
  v109 = [v256 standardUserDefaults];
  v259 = 1;
  v110 = sub_1002B8234();
  v250 = sub_100009838();
  NSUserDefaults.subscript.getter(&v260);

  v111 = v257;
  if (!v261)
  {
    sub_1000095E8(&v260, &unk_101183F30, qword_100EBF960);
    goto LABEL_51;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v259 & 1) == 0)
  {
LABEL_51:
    BagProvider.shared.unsafeMutableAddressor();

    v112 = BagProvider.bag.getter();

    if (v112 && (v113 = String._bridgeToObjectiveC()(), v114 = [v112 BOOLValueForBagKey:v113], v112, v113, v114))
    {
      v115 = Logger.lyrics.unsafeMutableAddressor();
      v117 = v252;
      v116 = v253;
      v252[2](v249, v115, v253);
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v118, v119))
      {
        v121 = v249;
        goto LABEL_59;
      }

      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v118, v119, "NowPlayingViewController: lyricsOnByDefaultDisabled bag key is true, not migrating", v120, 2u);
      v121 = v249;
    }

    else
    {
      v122 = v256;
      v123 = [v256 standardUserDefaults];
      v261 = &type metadata for Int;
      *&v260 = 2;
      v259 = 0;
      v124 = v250;
      NSUserDefaults.subscript.setter(&v260, &v259, &type metadata for NowPlayingViewController.DefaultsKey, v110, v250);

      v125 = [v122 standardUserDefaults];
      v261 = &type metadata for Bool;
      LOBYTE(v260) = 1;
      v259 = 1;
      NSUserDefaults.subscript.setter(&v260, &v259, &type metadata for NowPlayingViewController.DefaultsKey, v110, v124);

      v126 = Logger.lyrics.unsafeMutableAddressor();
      v121 = v251;
      v117 = v252;
      v116 = v253;
      v252[2](v251, v126, v253);
      v118 = Logger.logObject.getter();
      v127 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v118, v127))
      {
LABEL_59:

        (v117[1])(v121, v116);
        v111 = v257;
        goto LABEL_60;
      }

      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&_mh_execute_header, v118, v127, "NowPlayingViewController: making migration to lyrics on by default", v128, 2u);
    }

    goto LABEL_59;
  }

LABEL_60:
  v129 = [v1 view];
  if (!v129)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v130 = v129;
  [v129 bounds];
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v138 = v137;

  v139 = [objc_allocWithZone(UIView) initWithFrame:{v132, v134, v136, v138}];
  [v139 setAutoresizingMask:18];
  v140 = [v1 view];
  if (!v140)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v141 = v140;
  [v140 addSubview:v139];

  v142 = *&v1[v38];
  if (!v142)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v249 = v110;
  v143 = [v142 view];
  if (!v143)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v144 = v143;
  [v139 addSubview:v143];

  v145 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView];
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView] = v139;
  v146 = v139;

  v147 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v148 = type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidEnterBackgroundNotification, 0, 1, 1, sub_1005EB8B8, v147);

  v149 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_didActivateObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UISceneDidActivateNotification, 0, 1, 1, sub_1005EB8C0, v149);

  v150 = UIPresentationControllerDismissalTransitionDidEndNotification;
  v151 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_dismissalObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v150, 0, 1, 1, sub_1005EB8C8, v151);

  v152 = _UIScreenDefaultTraitCollectionDidChangeNotification;
  v153 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v253 = v148;
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_screenTraitCollectionObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v152, 0, 1, 1, sub_1005EB8D0, v153);

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v154 = swift_allocObject();
  *(v154 + 16) = xmmword_100EBEEA0;
  v155 = [*&v1[v111] leadingAnchor];
  v156 = *&v1[v38];
  if (!v156)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v157 = [v156 view];
  if (!v157)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v158 = v157;
  v252 = v146;
  v159 = [v157 leadingAnchor];

  v160 = [v155 constraintEqualToAnchor:v159];
  *(v154 + 32) = v160;
  v161 = [*&v1[v111] trailingAnchor];
  v162 = *&v1[v38];
  if (!v162)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v258 = v38;
  v163 = [v162 view];
  if (!v163)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v164 = v163;
  v165 = [v163 trailingAnchor];

  v166 = [v161 constraintEqualToAnchor:v165];
  *(v154 + 40) = v166;
  v167 = [*&v1[v111] topAnchor];
  v168 = *&v1[v258];
  if (!v168)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v169 = [v168 view];
  if (!v169)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v170 = v169;
  v171 = [v169 topAnchor];

  v172 = [v167 constraintEqualToAnchor:v171];
  *(v154 + 48) = v172;
  v173 = [*&v1[v111] bottomAnchor];
  v174 = *&v1[v258];
  if (!v174)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v175 = [v174 view];
  if (!v175)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v176 = v175;
  v251 = objc_opt_self();
  v177 = [v176 bottomAnchor];

  v178 = [v173 constraintEqualToAnchor:v177];
  *(v154 + 56) = v178;
  v179 = v254;
  v180 = [*&v1[v254] leadingAnchor];
  v181 = v257;
  v182 = [*&v1[v257] leadingAnchor];
  v183 = [v180 constraintEqualToAnchor:v182];

  *(v154 + 64) = v183;
  v184 = [*&v1[v179] trailingAnchor];
  v185 = [*&v1[v181] trailingAnchor];
  v186 = [v184 constraintEqualToAnchor:v185];

  *(v154 + 72) = v186;
  v187 = [*&v1[v179] topAnchor];
  v188 = [*&v1[v181] topAnchor];
  v189 = [v187 constraintEqualToAnchor:v188];

  *(v154 + 80) = v189;
  v190 = [*&v1[v179] bottomAnchor];
  v191 = [*&v1[v181] bottomAnchor];
  v192 = [v190 constraintEqualToAnchor:v191];

  *(v154 + 88) = v192;
  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v251 activateConstraints:isa];

  sub_1005C5B40(0, 0, 1, 0);
  if (sub_1005875D0(7))
  {
    v194 = 0;
    v195 = &selRef_trackNumber;
    v196 = v258;
    v197 = v256;
    goto LABEL_84;
  }

  v198 = NSUserDefaults.mobileiPod.unsafeMutableAddressor();
  v195 = &selRef_trackNumber;
  v196 = v258;
  v197 = v256;
  if (*v198)
  {
    v199 = *v198;
    v200 = String._bridgeToObjectiveC()();
    v201 = [v199 BOOLForKey:v200];

    if (v201)
    {
      v202 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
      if (v202)
      {
        v203 = v202;
        v204 = [v203 tracklist];
        if (v204)
        {
          v205 = v204;
          if ([v204 transitionStyle] == 1)
          {
            v206 = [v205 toggleTransitionsCommand];

            if (v206)
            {
              swift_unknownObjectRelease();
              v194 = 1;
              goto LABEL_84;
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
  }

  v194 = 0;
LABEL_84:
  v207 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
  if (!v207)
  {
LABEL_97:
    v222 = [v197 standardUserDefaults];
    v223 = sub_1005D15BC();

    if (v223 != 2)
    {
      goto LABEL_103;
    }

    sub_1005D31C8(0, v224);
    v225 = *&v1[v196];
    if (!v225)
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v226 = *&v225[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
    if (!v226)
    {
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v227 = v225;
    [v226 setSelected:1];
    v228 = *&v227[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
    if (!v228)
    {
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    [v228 setSelected:0];
    sub_1001C30CC();
    sub_1001C3DB8();
    sub_1001C36E8();
LABEL_102:

LABEL_103:
    v229 = [v1 v195[31]];
    if (v229)
    {
      v230 = v229;
      v231 = AccessibilityIdentifier.nowPlayingView.unsafeMutableAddressor();
      v232 = *v231;
      v233 = v231[1];
      v234 = v231[2];
      v235 = v231[3];
      sub_100009F78(0, &qword_101181620, UIView_ptr);

      UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v232, v233, v234, v235);

      v236 = [objc_opt_self() sharedMonitor];
      [v236 registerObserver:v1];

      v237 = DeviceCapabilities.isInternalInstall.unsafeMutableAddressor();
      v238 = v252;
      if (*v237 != 1)
      {
LABEL_107:
        sub_10010FC20(&unk_101182D80, "ʫ\n");
        v242 = swift_allocObject();
        *(v242 + 16) = xmmword_100EBC6B0;
        *(v242 + 32) = type metadata accessor for UITraitAccessibilityContrast();
        *(v242 + 40) = &protocol witness table for UITraitAccessibilityContrast;
        UIViewController.registerForTraitChanges<A>(_:handler:)();
        swift_unknownObjectRelease();

        v243 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_allocObject();
        v244 = UIAccessibilityInvertColorsStatusDidChangeNotification;

        v245 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v244, 0, 1, 1, sub_1005EB8D8, v243);

        *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_invertColorsStatusDidChangeObserver] = v245;

        return;
      }

      v239 = [objc_allocWithZone(UITapGestureRecognizer) init];
      [v239 setNumberOfTapsRequired:3];
      [v239 setNumberOfTouchesRequired:2];
      [v239 addTarget:v1 action:"handleTimeGesture"];
      v240 = [v1 view];
      if (v240)
      {
        v241 = v240;
        [v240 addGestureRecognizer:v239];

        sub_1005D453C();
        goto LABEL_107;
      }

      goto LABEL_149;
    }

    goto LABEL_139;
  }

  v208 = v207;
  v209 = [v208 tracklist];
  v210 = [v209 playingItem];

  if (!v210)
  {
    v210 = v208;
LABEL_96:

    goto LABEL_97;
  }

  v211 = [v208 playerPath];
  v212 = [v211 isSystemMusicPath];

  if (!v212)
  {

    v195 = &selRef_trackNumber;
    goto LABEL_96;
  }

  v213 = MPCPlayerResponseItem.isLiveContent.getter();

  v195 = &selRef_trackNumber;
  if (v213)
  {
    goto LABEL_97;
  }

  v214 = [v197 standardUserDefaults];
  v215 = sub_1005D15BC();

  if (((v215 != 1) & ~v194) != 0)
  {
    goto LABEL_97;
  }

  v216 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem];
  if (v216)
  {
    v217 = [v216 metadataObject];
    if (v217)
    {
      v218 = v217;
      v219 = [v217 innermostModelObject];

      objc_opt_self();
      v220 = swift_dynamicCastObjCClass();
      if (v220 && [v220 hasVideo])
      {
        v221 = [v197 standardUserDefaults];
        v261 = &type metadata for Int;
        *&v260 = 0;
        v259 = 0;
        NSUserDefaults.subscript.setter(&v260, &v259, &type metadata for NowPlayingViewController.DefaultsKey, v249, v250);

        goto LABEL_103;
      }
    }
  }

  sub_1005D1674(0, v194);
  v246 = *&v1[v196];
  if (!v246)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v247 = *&v246[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
  if (!v247)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v227 = v246;
  [v247 setSelected:1];
  v248 = *&v227[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
  if (v248)
  {
    [v248 setSelected:0];
    sub_1001C30CC();
    sub_1001C36E8();
    sub_1001C3DB8();
    goto LABEL_102;
  }

LABEL_155:
  __break(1u);
}

void sub_1005CFED0(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_isAnimatingDismissal) & 1) == 0)
    {
      v5 = (Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
      v6 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
      if (v6 >> 62)
      {
        v30 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying);
        *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying) = v2;
        v31 = v2;
        sub_1005C40E8(v30);

        v4 = v30;
      }

      else
      {
        v7 = v5[1];
        v8 = v5[2];
        v9 = v5[3];
        v10 = v5[4];
        v11 = v5[5];
        v12 = v5[6];
        v13 = v6;
        v14 = v7;
        v37 = v8;
        v15 = v8;
        v36 = v9;
        v16 = v9;
        v17 = v10;

        v18 = sub_1002DCC7C();
        v19 = swift_allocObject();
        *(v19 + 16) = v4;
        *(v19 + 24) = v2;
        v38 = v7;
        if (v18[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement])
        {
          v34 = v12;
          v35 = v11;
          v20 = swift_allocObject();
          *(v20 + 16) = sub_1005EB99C;
          *(v20 + 24) = v19;
          v21 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementCompletionHandlers;
          swift_beginAccess();
          v22 = *&v18[v21];
          v23 = v2;
          v4 = v4;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v18[v21] = v22;
          v25 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v22 = sub_10006429C(0, v22[2] + 1, 1, v22);
            *&v18[v21] = v22;
          }

          v26 = v10;
          v28 = v22[2];
          v27 = v22[3];
          if (v28 >= v27 >> 1)
          {
            v22 = sub_10006429C((v27 > 1), v28 + 1, 1, v22);
          }

          v22[2] = v28 + 1;
          v29 = &v22[2 * v28];
          v29[4] = sub_10018A020;
          v29[5] = v20;
          *&v25[v21] = v22;
          swift_endAccess();

          sub_10012BB6C(v6, v38, v37, v36, v26, v35, v34);
        }

        else
        {
          v32 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
          *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying] = v2;
          v33 = v2;
          v4 = v4;
          sub_1005C40E8(v32);

          sub_10012BB6C(v6, v38, v37, v36, v10, v11, v12);
        }
      }
    }
  }
}

void sub_1005D0194(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying);
  *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying) = a2;
  v2 = a2;
  sub_1005C40E8(v3);
}

id sub_1005D01F0()
{
  v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController____lazy_storage___backgroundView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1005D0264(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
    v4 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *&v2[v3];
    }

    else
    {
      v5 = 0;
    }

    *&v2[v3] = 0;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1005C4F50(4.0);
  }
}

void sub_1005D031C(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
    v6 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton);
      if (v7)
      {
        v8 = v7;
        if (a1)
        {
          v9 = SliderView.Specs.expandedTransform.unsafeMutableAddressor();
          v11 = *v9;
          v10 = *(v9 + 1);
          v12 = *(v9 + 2);
        }

        else
        {
          v10 = xmmword_100EBEF30;
          v11 = xmmword_100EBEF40;
          v12 = 0uLL;
        }

        v30[0] = v11;
        v30[1] = v10;
        v30[2] = v12;
        [v8 setTransform:v30];

        v13 = *&v4[v5];
        if (v13)
        {
          v14 = [v13 view];
          if (v14)
          {
            v15 = v14;
            [v14 layoutIfNeeded];

            v16 = &v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
            v17 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
            if (v17 >> 62 != 1)
            {
LABEL_16:

              return;
            }

            v18 = *(v16 + 1);
            v19 = *(v16 + 2);
            v20 = *(v16 + 3);
            v21 = *(v16 + 4);
            v22 = *(v16 + 5);
            v23 = *(v16 + 6);
            v24 = (v17 & 0x3FFFFFFFFFFFFFFFLL);
            v25 = *((v17 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
            if ((a1 & 1) == 0)
            {
              if (v25)
              {
                v28 = *((swift_isaMask & *v25) + 0x560);
                sub_10012BAC0(v17, v18, v19, v20, v21, v22, v23);
                v29 = v25;
                v28();

                v18 = v29;
                goto LABEL_15;
              }

LABEL_23:
              __break(1u);
              return;
            }

            if (v25)
            {
              v26 = *((swift_isaMask & *v25) + 0x558);
              sub_10012BAC0(v17, v18, v19, v20, v21, v22, v23);
              v27 = v25;
              v26();

              v4 = v24;
LABEL_15:

              goto LABEL_16;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }
}

void sub_1005D0560(char a1, uint64_t a2, double a3)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v6 = &v25 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
      v10 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
      if (v10 >> 62 == 1 && (v11 = *&v8[OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem]) != 0)
      {
        v12 = *(v9 + 8);
        v13 = (v10 & 0x3FFFFFFFFFFFFFFFLL);
        sub_10012BAC0(v10, v12, *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48));
        v14 = v11;
        [v14 duration];
        v34 = v27;
        v35 = v28;
        v32 = v30;
        v33 = v31;
        static Date.timeIntervalSinceReferenceDate.getter();
        v16 = *&v13[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
        if (v16)
        {
          v17 = v15;
          type metadata accessor for MPCPlayerItemDurationSnapshot(0);
          v28 = v18;
          v29 = &protocol witness table for MPCPlayerItemDurationSnapshot;
          v19 = swift_allocObject();
          v26 = v19;
          *(v19 + 16) = v17;
          *(v19 + 24) = v34;
          *(v19 + 40) = v35;
          *(v19 + 48) = a3;
          *(v19 + 56) = 0;
          *(v19 + 60) = v32;
          *(v19 + 68) = v33;
          v20 = *((swift_isaMask & *v16) + 0x240);
          v21 = v16;
          v20(&v26);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
      }
    }

    else
    {
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
      type metadata accessor for MainActor();
      v23 = static MainActor.shared.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = &protocol witness table for MainActor;
      *(v24 + 32) = a3;
      sub_1001F524C(0, 0, v6, &unk_100ED67C8, v24);
    }
  }
}

uint64_t sub_1005D0848(uint64_t a1, double a2)
{
  *(v2 + 104) = a2;
  *(v2 + 96) = a1;
  type metadata accessor for MainActor();
  *(v2 + 112) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 120) = v4;
  *(v2 + 128) = v3;

  return _swift_task_switch(sub_1005D08E4, v4, v3);
}

uint64_t sub_1005D08E4()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  *(v0 + 40) = &type metadata for Player.JumpCommand;
  *(v0 + 48) = &protocol witness table for Player.JumpCommand;
  *(v0 + 16) = v1;
  *(v0 + 24) = 1;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 0;
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_1005D0A08;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1005D0A08(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1005D0BBC;
  }

  else
  {
    v4[18] = a1;
    sub_1000095E8((v4 + 7), &unk_101183910, &unk_100EBDD00);
    sub_10000959C(v4 + 2);
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1005D0B50;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1005D0B50()
{

  **(v0 + 96) = *(v0 + 144);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005D0BBC()
{

  sub_1000095E8(v0 + 56, &unk_101183910, &unk_100EBDD00);
  sub_10000959C((v0 + 16));
  **(v0 + 96) = 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_1005D0C44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    Notification.object.getter();
    if (v26[3])
    {
      sub_100009F78(0, &qword_101189A30, UIWindowScene_ptr);
      if (swift_dynamicCast())
      {
        v4 = [v3 view];
        if (v4)
        {
          v5 = v4;
          v6 = [v4 window];

          v7 = [v6 windowScene];
          if (v7)
          {
            v8 = v25;
            v9 = static NSObject.== infix(_:_:)();

            if (v9)
            {
              if (qword_10117F938 != -1)
              {
                swift_once();
              }

              v10 = type metadata accessor for Logger();
              sub_1000060E4(v10, qword_1012190C8);
              v11 = v8;
              v12 = Logger.logObject.getter();
              v13 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v12, v13))
              {
                v14 = swift_slowAlloc();
                v15 = swift_slowAlloc();
                v26[0] = v15;
                *v14 = 136446210;
                [v11 activationState];
                type metadata accessor for ActivationState(0);
                v16 = String.init<A>(describing:)();
                v18 = sub_1000105AC(v16, v17, v26);

                *(v14 + 4) = v18;
                _os_log_impl(&_mh_execute_header, v12, v13, "Did Enter Background… scene state=%{public}s", v14, 0xCu);
                sub_10000959C(v15);
              }

              v19 = sub_1005C405C();
              v20 = *&v19[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
              v21 = v20;

              if (v20)
              {
                dispatch thunk of Backdrop.CompositeRenderer.analyzer.setter();
              }

              v22 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
              v23 = *&v3[OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer];
              if (v23)
              {
                [v23 invalidate];
                v24 = *&v3[v22];
              }

              else
              {
                v24 = 0;
              }

              *&v3[v22] = 0;

              sub_1005C6A74(0);
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
          __break(1u);
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1000095E8(v26, &unk_101183F30, qword_100EBF960);
    }
  }
}

void sub_1005D0F78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  Notification.object.getter();
  if (!v27[3])
  {

    sub_1000095E8(v27, &unk_101183F30, qword_100EBF960);
    return;
  }

  sub_100009F78(0, &qword_101189A30, UIWindowScene_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:

    return;
  }

  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 window];

  v7 = [v6 windowScene];
  if (!v7)
  {

    goto LABEL_23;
  }

  v8 = v26;
  v9 = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {

    goto LABEL_23;
  }

  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000060E4(v10, qword_1012190C8);
  v11 = v8;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27[0] = v15;
    *v14 = 136446210;
    [v11 activationState];
    type metadata accessor for ActivationState(0);
    v16 = String.init<A>(describing:)();
    v18 = sub_1000105AC(v16, v17, v27);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Did Activate… scene state=%{public}s", v14, 0xCu);
    sub_10000959C(v15);
  }

  if (*DeviceCapabilities.supportsHighFrameRateLyricsBackground.unsafeMutableAddressor() == 1 && [v11 activationState] != 2)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Backdrop: Setting audioAnalyzer", v21, 2u);
    }

    v22 = sub_1005C405C();
    v23 = *&v22[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
    v24 = v23;

    if (v23)
    {
      if (qword_10117F5F8 != -1)
      {
        v25 = swift_once();
      }

      (*(*qword_101218AC8 + 288))(v25);
      dispatch thunk of Backdrop.CompositeRenderer.analyzer.setter();
    }
  }

  sub_1005C4F50(4.0);
  sub_1005C6A74(0);
}

void sub_1005D1374(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    Notification.object.getter();
    if (v11)
    {
      type metadata accessor for LyricsSharingActivityViewController(0);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_13:

        return;
      }

      v4 = Notification.userInfo.getter();
      if (v4)
      {
        v5 = v4;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        AnyHashable.init<A>(_:)();
        if (*(v5 + 16) && (v6 = sub_1000160B4(v10), (v7 & 1) != 0))
        {
          sub_10000DD18(*(v5 + 56) + 32 * v6, &v12);
          sub_10001621C(v10);

          if (*(&v13 + 1))
          {
            if (swift_dynamicCast() && (v10[0] & 1) != 0 && *&v3[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] >> 62 == 1)
            {
              v8 = sub_1005CD758();
              [v8 setHidden:1];

              return;
            }

            goto LABEL_13;
          }
        }

        else
        {

          sub_10001621C(v10);
          v12 = 0u;
          v13 = 0u;
        }
      }

      else
      {

        v12 = 0u;
        v13 = 0u;
      }

      v9 = &v12;
    }

    else
    {

      v9 = v10;
    }

    sub_1000095E8(v9, &unk_101183F30, qword_100EBF960);
  }
}

void sub_1005D1558(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1005C5B40(0, 0, 1, 1);
  }
}

uint64_t sub_1005D15BC()
{
  LOBYTE(v1) = 0;
  sub_1002B8234();
  sub_100009838();
  NSUserDefaults.subscript.getter(&v2);
  if (!v3)
  {
    sub_1000095E8(&v2, &unk_101183F30, qword_100EBF960);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 == 1;
  }
}

void sub_1005D1674(char a1, char a2)
{
  v3 = &v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  if (!(*&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] >> 62))
  {
    return;
  }

  v4 = v2;
  v250 = objc_opt_self();
  v7 = [v250 standardUserDefaults];
  v8 = sub_1005D15BC();

  v251 = v8;
  v269 = a1;
  v264 = v3;
  if (v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] && v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] != 1)
  {

    v10 = 3;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }
  }

  v274 = v10;
  v11 = OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData;
  v12 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData];
  v261 = a2;
  v252 = v4;
  if (!v12 || ((v13 = v12[7], !(v13 >> 62)) ? (v14 = (v13 & 0xF000000000000007) == 0xF000000000000007) : (v14 = 1), v14))
  {
    if (qword_10117FB00 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000060E4(v15, qword_101219268);
    v16 = v4;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v270 = v16;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v289 = v20;
      *v19 = 136446210;
      v284[0] = *&v4[v11];

      sub_10010FC20(&unk_101197A20, &qword_100ED6798);
      v21 = String.init<A>(describing:)();
      v23 = sub_1000105AC(v21, v22, &v289);

      *(v19 + 4) = v23;
      v16 = v270;
      _os_log_impl(&_mh_execute_header, v17, v18, "presentQueue not reversing %{public}s", v19, 0xCu);
      sub_10000959C(v20);
    }

    v24 = [v16 view];
    if (!v24)
    {
      __break(1u);
      goto LABEL_84;
    }

    v25 = v24;
    [v24 frame];
    v27 = v26;
    v29 = v28;

    v30 = [v16 traitCollection];
    v31 = sub_1005E80C0(v30, v27, v29);

    if (v31)
    {
      if (v31 != 1)
      {
        v53 = 5.0;
        v52 = 10.0;
        v35 = 0.0;
        leading = 52.0;
        v34 = 42.0;
        top = 0.0;
LABEL_29:
        v54 = sub_1005CD758();
        [v54 setHidden:0];

        v55 = [objc_allocWithZone(UIView) init];
        [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v55 setClipsToBounds:1];
        v259 = v55;
        v56 = [v55 layer];
        [v56 setAllowsGroupOpacity:0];

        v57 = *&v16[OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying];
        v58 = objc_allocWithZone(type metadata accessor for NowPlayingQueueViewController(0));
        v59 = v57;
        v60 = sub_1002DF180(v57);
        *(*&v60[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_prefetchingController] + OBJC_IVAR____TtC5Music32old_ArtworkPrefetchingController_cachingReference) = *&v16[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkCachingReference];

        swift_unknownObjectRelease();
        *&v60[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bottomContentInset] = 0x4050000000000000;
        v61 = sub_1002DCC7C();
        [v61 contentSize];
        v63 = v62;
        v65 = v64;

        sub_1002E6958(0, v63, v65);
        v66 = v60;
        v67 = [v66 view];
        if (v67)
        {
          v68 = v67;
          [v67 setDirectionalLayoutMargins:{0.0, v53, 0.0, v52}];

          v69 = [v66 view];
          if (v69)
          {
            v70 = v69;
            [v69 setTranslatesAutoresizingMaskIntoConstraints:0];

            *&v66[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_delegate + 8] = &off_1010B5470;
            swift_unknownObjectWeakAssign();
            v71 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
            v72 = *&v16[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
            if (v72)
            {
              [v72 addChildViewController:v66];
              [v66 didMoveToParentViewController:*&v16[v71]];
              v268 = v71;
              v73 = *&v16[v71];
              if (v73)
              {
                v74 = [v73 view];
                if (v74)
                {
                  v75 = v74;
                  v243 = v11;
                  v76 = sub_1005C405C();
                  [v75 insertSubview:v259 aboveSubview:v76];

                  v277 = v66;
                  v77 = [v66 view];
                  if (v77)
                  {
                    v78 = v77;
                    [v259 addSubview:v77];

                    sub_1005DE184(v274, 0);
                    v79 = *&v16[v268];
                    if (v79)
                    {
                      v80 = v79;
                      sub_1001B6A0C(v274, v269 & 1);

                      type metadata accessor for PassthroughView();
                      v81 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                      v82 = UIView.forAutolayout.getter();

                      v257 = v82;
                      [v259 addSubview:?];
                      v83 = type metadata accessor for BackdropView();
                      v84 = objc_allocWithZone(v83);
                      v85 = sub_100453A34();
                      v86 = v85[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType];
                      v85[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] = 2;
                      sub_100453194(v86);
                      v87 = v85;
                      [v87 setTranslatesAutoresizingMaskIntoConstraints:0];
                      v255 = v87;
                      [v259 addSubview:v87];
                      v88 = objc_allocWithZone(v83);
                      v89 = sub_100453A34();
                      v90 = v89[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType];
                      v89[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] = 1;
                      sub_100453194(v90);
                      v91 = v89;
                      [v91 setTranslatesAutoresizingMaskIntoConstraints:0];
                      [v259 addSubview:v91];
                      v92 = *&v16[v268];
                      if (v92)
                      {
                        v93 = *(v92 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide);
                        if (v93)
                        {
                          v94 = v93;
                          v267 = v91;
                          v95 = [v91 heightAnchor];
                          v253 = [v95 constraintEqualToConstant:64.0];

                          sub_10010FC20(&qword_101183990, &qword_100EBC750);
                          v96 = swift_allocObject();
                          *(v96 + 16) = xmmword_100EBDC10;
                          v97 = [v259 topAnchor];
                          v98 = [v94 topAnchor];
                          v99 = [v97 constraintEqualToAnchor:v98];

                          *(v96 + 32) = v99;
                          v100 = [v259 leadingAnchor];
                          v101 = [v94 leadingAnchor];
                          v102 = [v100 constraintEqualToAnchor:v101 constant:-leading];

                          *(v96 + 40) = v102;
                          v103 = [v259 trailingAnchor];
                          v104 = [v94 trailingAnchor];
                          v105 = [v103 constraintEqualToAnchor:v104 constant:v34];

                          *(v96 + 48) = v105;
                          v106 = [v259 bottomAnchor];
                          v107 = [v94 bottomAnchor];
                          v108 = [v106 constraintEqualToAnchor:v107];

                          v273 = v96;
                          *(v96 + 56) = v108;
                          v109 = swift_allocObject();
                          *(v109 + 16) = xmmword_100EBDC10;
                          v110 = [v66 view];
                          if (v110)
                          {
                            v111 = v110;
                            v112 = [v110 topAnchor];

                            v113 = [v259 topAnchor];
                            v114 = [v112 constraintEqualToAnchor:v113];

                            *(v109 + 32) = v114;
                            v115 = [v66 view];
                            if (v115)
                            {
                              v116 = v115;
                              v117 = [v115 leadingAnchor];

                              v118 = [v259 leadingAnchor];
                              bottom = NSDirectionalEdgeInsetsZero.bottom;
                              trailing = NSDirectionalEdgeInsetsZero.trailing;
                              v121 = leading == NSDirectionalEdgeInsetsZero.leading && top == NSDirectionalEdgeInsetsZero.top;
                              if (!v121 || v35 != bottom || (v122 = 0.0, v34 != trailing))
                              {
                                v122 = leading - v53;
                              }

                              v123 = [v117 constraintEqualToAnchor:v118 constant:v122];

                              *(v109 + 40) = v123;
                              v124 = [v277 view];
                              if (v124)
                              {
                                v125 = v124;
                                v126 = [v124 trailingAnchor];

                                v127 = [v259 trailingAnchor];
                                if (!v121 || v35 != bottom || (v128 = 0.0, v34 != trailing))
                                {
                                  v128 = -(v34 - v52);
                                }

                                v244 = v94;
                                v129 = [v126 constraintEqualToAnchor:v127 constant:v128];

                                *(v109 + 48) = v129;
                                v130 = [v277 view];
                                if (v130)
                                {
                                  v131 = v130;
                                  v132 = [v130 bottomAnchor];

                                  v133 = [v259 bottomAnchor];
                                  v134 = [v132 constraintEqualToAnchor:v133];

                                  *(v109 + 56) = v134;
                                  v135 = v264[1];
                                  v281[0] = *v264;
                                  v281[1] = v135;
                                  v282 = v264[2];
                                  v283 = *(v264 + 6);
                                  v284[0] = v277;
                                  v284[1] = v259;
                                  v284[2] = v257;
                                  v285 = v255;
                                  v286 = v253;
                                  v287 = v273;
                                  v288 = v109;
                                  v292 = v283;
                                  v291 = v282;
                                  v290 = v135;
                                  v289 = v281[0];
                                  v262 = *v264;
                                  v136 = *(v264 + 2);
                                  v246 = *(v264 + 3);
                                  v247 = *(v264 + 1);
                                  v137 = *(v264 + 4);
                                  v245 = *(v264 + 5);
                                  v275 = v109;
                                  v138 = *(v264 + 6);
                                  *v264 = v277;
                                  *(v264 + 1) = v259;
                                  *(v264 + 2) = v257;
                                  *(v264 + 3) = v255;
                                  *(v264 + 4) = v253;
                                  *(v264 + 5) = v273;
                                  *(v264 + 6) = v275;
                                  v139 = v277;
                                  v140 = v259;
                                  v141 = v257;
                                  v142 = v255;
                                  v143 = v253;
                                  swift_bridgeObjectRetain_n();
                                  swift_bridgeObjectRetain_n();
                                  v144 = v139;
                                  v145 = v140;
                                  v146 = v141;
                                  v147 = v142;
                                  v148 = v143;
                                  v149 = v144;
                                  v150 = v147;
                                  v151 = v149;
                                  v152 = v145;
                                  v153 = v146;
                                  v154 = v150;
                                  v155 = v148;
                                  v156 = v152;
                                  v265 = v155;
                                  sub_1005EB280(v281, v280);
                                  sub_1005EB280(&v289, v280);
                                  sub_10012BB6C(v262, v247, v136, v246, v137, v245, v138);
                                  sub_1005D7D3C(&v289);
                                  sub_1005EB2B8(&v289);

                                  v263 = v151;
                                  sub_1005D69B4(v284);
                                  v157 = swift_allocObject();
                                  *(v157 + 16) = xmmword_100ED60A0;
                                  v158 = [v154 leadingAnchor];
                                  v159 = [v156 leadingAnchor];
                                  v160 = [v158 constraintEqualToAnchor:v159];

                                  *(v157 + 32) = v160;
                                  v161 = [v154 trailingAnchor];
                                  v162 = [v156 trailingAnchor];
                                  v163 = [v161 constraintEqualToAnchor:v162];

                                  *(v157 + 40) = v163;
                                  v164 = [v154 heightAnchor];
                                  v165 = [v164 constraintEqualToConstant:64.0];

                                  *(v157 + 48) = v165;
                                  v166 = [v154 bottomAnchor];
                                  v248 = v154;

                                  v167 = [v156 bottomAnchor];
                                  v168 = [v166 constraintEqualToAnchor:v167];

                                  *(v157 + 56) = v168;
                                  v169 = [v267 leadingAnchor];
                                  v170 = [v156 leadingAnchor];
                                  v171 = [v169 constraintEqualToAnchor:v170];

                                  *(v157 + 64) = v171;
                                  v172 = [v267 trailingAnchor];
                                  v173 = [v156 trailingAnchor];
                                  v174 = [v172 constraintEqualToAnchor:v173];

                                  *(v157 + 72) = v174;
                                  v175 = [v267 topAnchor];

                                  v176 = [v156 topAnchor];
                                  v177 = [v175 constraintEqualToAnchor:v176];

                                  *(v157 + 80) = v177;
                                  *(v157 + 88) = v265;
                                  v178 = [v153 leadingAnchor];

                                  v179 = v270;
                                  v180 = [v156 leadingAnchor];
                                  v181 = [v178 constraintEqualToAnchor:v180];

                                  *(v157 + 96) = v181;
                                  v182 = [v153 trailingAnchor];

                                  v183 = [v156 trailingAnchor];
                                  v184 = [v182 constraintEqualToAnchor:v183];

                                  *(v157 + 104) = v184;
                                  v185 = [v153 topAnchor];

                                  v186 = [v156 topAnchor];
                                  v187 = [v185 constraintEqualToAnchor:v186];

                                  *(v157 + 112) = v187;
                                  v188 = [v153 bottomAnchor];

                                  v189 = [v156 bottomAnchor];
                                  v190 = [v188 constraintEqualToAnchor:v189];

                                  *(v157 + 120) = v190;
                                  v279 = v157;
                                  sub_100124054(v273);
                                  sub_100124054(v275);
                                  v191 = objc_opt_self();
                                  sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
                                  isa = Array._bridgeToObjectiveC()().super.isa;
                                  [v191 activateConstraints:isa];

                                  v193 = [v270 view];
                                  if (v193)
                                  {
                                    v194 = v193;
                                    [v193 setNeedsLayout];

                                    v195 = v268;
                                    if (v269)
                                    {

                                      v196 = [v263 view];
                                      if (!v196)
                                      {
LABEL_100:
                                        __break(1u);
                                        goto LABEL_101;
                                      }

                                      sub_1005DC5F4(v196, v281);
                                      v198 = v197;

                                      v199 = v198[7];
                                      v200 = v198[8];
                                      v201 = v198[9];
                                      v202 = v198[10];
                                      v203 = v198[11];
                                      v204 = v198[12];
                                      v205 = v198[13];
                                      v198[7] = v277;
                                      v198[8] = v259;
                                      v198[9] = v257;
                                      v198[10] = v255;
                                      v198[11] = v253;
                                      v198[12] = v273;
                                      v198[13] = v275;
                                      sub_1005EB32C(v199, v200, v201, v202, v203, v204, v205);
                                      v206 = swift_allocObject();
                                      swift_unknownObjectWeakInit();
                                      v207 = swift_allocObject();
                                      v207[2] = v206;
                                      v207[3] = v198;
                                      v207[4] = v156;
                                      v207[5] = v153;
                                      v208 = swift_allocObject();
                                      *(v208 + 16) = sub_1005EB470;
                                      *(v208 + 24) = v207;
                                      swift_beginAccess();
                                      v209 = v198[3];
                                      v210 = v153;

                                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                      v198[3] = v209;
                                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                                      {
                                        v209 = sub_10006429C(0, v209[2] + 1, 1, v209);
                                        v198[3] = v209;
                                      }

                                      v213 = v209[2];
                                      v212 = v209[3];
                                      if (v213 >= v212 >> 1)
                                      {
                                        v209 = sub_10006429C((v212 > 1), v213 + 1, 1, v209);
                                      }

                                      v209[2] = v213 + 1;
                                      v214 = &v209[2 * v213];
                                      v214[4] = sub_10018A020;
                                      v214[5] = v208;
                                      v198[3] = v209;
                                      swift_endAccess();

                                      *&v252[v243] = v198;
                                      swift_retain_n();

                                      v179 = v270;
                                      sub_1005C7034();

                                      v195 = v268;
                                      v215 = v248;
                                      v216 = v265;
                                    }

                                    else
                                    {

                                      v216 = v265;

                                      v215 = v248;
                                      v217 = *&v270[v268];
                                      if (!v217)
                                      {
LABEL_101:
                                        __break(1u);
                                        goto LABEL_102;
                                      }

                                      swift_unknownObjectWeakAssign();
                                      v218 = v217;
                                      sub_1001B63BC();
                                    }

                                    v219 = *&v179[v195];
                                    if (v219)
                                    {
                                      v220 = *(v219 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton);
                                      if (v220)
                                      {
                                        if ([v220 isSelected])
                                        {

                                          sub_1005EB2B8(v281);

                                          v221 = v244;
LABEL_71:

                                          if ((v261 & 1) == 0)
                                          {
                                            return;
                                          }

                                          v226 = [v250 standardUserDefaults];
                                          v280[3] = &type metadata for Int;
                                          v280[0] = v251;
                                          v278 = 0;
                                          v227 = sub_1002B8234();
                                          v228 = sub_100009838();
                                          v229 = v280;
                                          v230 = &v278;
                                          goto LABEL_81;
                                        }

                                        v222 = *&v179[v195];
                                        if (v222)
                                        {
                                          v223 = v222;

                                          v224 = *&v223[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
                                          if (v224)
                                          {
                                            [v224 setSelected:1];
                                            v225 = *&v223[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
                                            v221 = v244;
                                            if (v225)
                                            {
                                              [v225 setSelected:0];
                                              sub_1001C30CC();
                                              sub_1001C36E8();
                                              sub_1001C3DB8();

                                              sub_1005EB2B8(v281);
                                              goto LABEL_71;
                                            }

LABEL_104:
                                            __break(1u);
LABEL_105:
                                            __break(1u);
                                            return;
                                          }

LABEL_103:
                                          __break(1u);
                                          goto LABEL_104;
                                        }

LABEL_102:
                                        __break(1u);
                                        goto LABEL_103;
                                      }

                                      goto LABEL_99;
                                    }

LABEL_98:
                                    __break(1u);
LABEL_99:
                                    __break(1u);
                                    goto LABEL_100;
                                  }

LABEL_97:
                                  __break(1u);
                                  goto LABEL_98;
                                }

LABEL_96:
                                __break(1u);
                                goto LABEL_97;
                              }

LABEL_95:
                              __break(1u);
                              goto LABEL_96;
                            }

LABEL_94:
                            __break(1u);
                            goto LABEL_95;
                          }

LABEL_93:
                          __break(1u);
                          goto LABEL_94;
                        }

LABEL_92:
                        __break(1u);
                        goto LABEL_93;
                      }

LABEL_91:
                      __break(1u);
                      goto LABEL_92;
                    }

LABEL_90:
                    __break(1u);
                    goto LABEL_91;
                  }

LABEL_89:
                  __break(1u);
                  goto LABEL_90;
                }

LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      top = NSDirectionalEdgeInsetsZero.top;
      leading = NSDirectionalEdgeInsetsZero.leading;
      v35 = NSDirectionalEdgeInsetsZero.bottom;
      v34 = NSDirectionalEdgeInsetsZero.trailing;
      *&v36 = 78.0;
    }

    else
    {
      top = NSDirectionalEdgeInsetsZero.top;
      leading = NSDirectionalEdgeInsetsZero.leading;
      v35 = NSDirectionalEdgeInsetsZero.bottom;
      v34 = NSDirectionalEdgeInsetsZero.trailing;
      *&v36 = 32.0;
    }

    v52 = *&v36;
    v53 = *&v36;
    goto LABEL_29;
  }

  v37 = v12[8];
  v38 = v12[9];
  v39 = v12[10];
  v40 = v12[11];
  v41 = v12[12];
  v42 = v12[13];

  v276 = v37;
  v271 = v39;
  v272 = v38;
  v266 = v41;
  sub_1005EB340(v13, v37, v38, v39, v40, v41, v42);
  if (qword_10117FB00 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_1000060E4(v43, qword_101219268);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *&v289 = v47;
    *v46 = 136446210;

    v48 = sub_1006698D4();
    v50 = v49;

    v51 = sub_1000105AC(v48, v50, &v289);

    *(v46 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v44, v45, "presentQueue reversing %{public}s", v46, 0xCu);
    sub_10000959C(v47);
  }

  else
  {
  }

  v231 = v264[1];
  v289 = *v264;
  v290 = v231;
  v291 = v264[2];
  v292 = *(v264 + 6);
  v232 = v292;
  v233 = *(v264 + 1);
  v258 = *(v264 + 2);
  v260 = *v264;
  v256 = *(v264 + 3);
  v254 = *(v264 + 4);
  v249 = *(v264 + 5);
  *v264 = v13;
  *(v264 + 1) = v276;
  *(v264 + 2) = v272;
  *(v264 + 3) = v271;
  *(v264 + 4) = v40;
  *(v264 + 5) = v266;
  *(v264 + 6) = v42;
  sub_10012BAC0(v13, v276, v272, v271, v40, v266, v42);
  sub_1005EB340(v13, v276, v272, v271, v40, v266, v42);
  sub_1005EB280(&v289, v284);
  sub_10012BB6C(v260, v233, v258, v256, v254, v249, v232);
  sub_1005D7D3C(&v289);
  sub_1005EB2B8(&v289);
  sub_1005EB32C(v13, v276, v272, v271, v40, v266, v42);
  v234 = *&v252[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v234)
  {
    goto LABEL_105;
  }

  v235 = v234;
  sub_1001B6A0C(v274, v269 & 1);

  v236 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v237 = swift_allocObject();
  *(v237 + 16) = sub_1005EB47C;
  *(v237 + 24) = v236;
  swift_beginAccess();
  v238 = v12[3];
  swift_retain_n();
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v12[3] = v238;
  if ((v239 & 1) == 0)
  {
    v238 = sub_10006429C(0, v238[2] + 1, 1, v238);
    v12[3] = v238;
  }

  v241 = v238[2];
  v240 = v238[3];
  if (v241 >= v240 >> 1)
  {
    v238 = sub_10006429C((v240 > 1), v241 + 1, 1, v238);
  }

  v238[2] = v241 + 1;
  v242 = &v238[2 * v241];
  v242[4] = sub_10018A020;
  v242[5] = v237;
  v12[3] = v238;
  swift_endAccess();

  sub_100669C5C();
  sub_1005EB32C(v13, v276, v272, v271, v40, v266, v42);

  if (v261)
  {
    v226 = [v250 standardUserDefaults];
    v285 = &type metadata for Int;
    v284[0] = v251;
    LOBYTE(v281[0]) = 0;
    v227 = sub_1002B8234();
    v228 = sub_100009838();
    v229 = v284;
    v230 = v281;
LABEL_81:
    NSUserDefaults.subscript.setter(v229, v230, &type metadata for NowPlayingViewController.DefaultsKey, v227, v228);
  }
}