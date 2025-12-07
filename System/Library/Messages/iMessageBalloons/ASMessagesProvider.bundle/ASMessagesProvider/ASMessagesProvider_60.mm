uint64_t sub_6C05BC(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_75B660();
  v111 = *(v7 - 8);
  v112 = v7;
  __chkstk_darwin(v7);
  v110 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_764930();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_768C60();
  v108 = *(v10 - 8);
  v109 = v10;
  __chkstk_darwin(v10);
  v102 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v101 = &v88 - v13;
  __chkstk_darwin(v14);
  v107 = &v88 - v15;
  v97 = sub_75DAB0();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v16;
  __chkstk_darwin(v17);
  v93 = &v88 - v18;
  v19 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v19 - 8);
  v90 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v89);
  v113 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_765240();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_BD88(&unk_94F1F0, &qword_782290);
  v104 = *(v24 - 8);
  __chkstk_darwin(v24);
  v100 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v88 - v27;
  v117 = a2;
  sub_75DAA0();
  sub_75A110();
  sub_768900();
  v98 = a3;
  sub_768ED0();
  v114 = v118;
  swift_getKeyPath();
  sub_768750();

  v29 = v118;
  v30 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork;
  v31 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork);

  sub_1935B4(v29, v32);
  *(a1 + v30) = v29;

  sub_1935C8(v31);

  swift_getKeyPath();
  v115 = v24;
  v116 = v28;
  sub_768750();

  v33 = v118;
  v34 = v119;
  v35 = (a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
  v37 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
  v36 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText + 8);

  sub_192F94(v33, v34);
  *v35 = v33;
  v35[1] = v34;

  sub_193028(v37, v36);

  if (*(a1 + v30))
  {
    v38 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView);
    if (v38)
    {

      v39 = v38;
      sub_765260();
      sub_765250();
      sub_765210();
      (*(v91 + 8))(v23, v92);
      sub_765330();
      sub_759210();
      sub_6C4904(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A050();
    }
  }

  swift_getKeyPath();
  sub_768750();

  v40 = v118;
  v41 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork;
  v42 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork);

  sub_193754(v40, v43);
  *(a1 + v41) = v40;

  sub_193868(v42);

  v44 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  sub_768750();

  if (v119)
  {
    v45 = sub_769210();
  }

  else
  {
    v45 = 0;
  }

  [v44 setText:v45];

  v46 = *(a1 + v41);
  if (v46)
  {
    v47 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView);
    if (v47)
    {
      v48 = v113;
      v49.n128_f64[0] = (*&stru_1A8.segname[(swift_isaMask & *a1) + 8])();
      v50 = v90;
      sub_C1D58(v48 + *(v89 + 20), v90, v49);

      v51 = v47;
      sub_6C48A4(v48, type metadata accessor for TitleHeaderView.Style);
      sub_6C27B0(v46, v50, a1);
      sub_6C48A4(v50, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_765250();
      sub_765210();
      (*(v91 + 8))(v23, v92);
      sub_765330();
      sub_759210();
      sub_6C4904(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A050();
    }
  }

  v52 = v96;
  v53 = *(v96 + 16);
  v54 = v93;
  v55 = v117;
  v56 = v97;
  v53(v93, v117, v97);
  v57 = v95;
  v53(v95, v54, v56);
  v58 = (*(v52 + 80) + 24) & ~*(v52 + 80);
  v59 = swift_allocObject();
  v60 = v99;
  *(v59 + 16) = v99;
  (*(v52 + 32))(v59 + v58, v54, v56);
  v61 = (a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines);
  *v61 = sub_6C4838;
  v61[1] = v59;

  [v44 setNumberOfLines:sub_6C2E38()];

  (*(v52 + 8))(v57, v56);
  v62 = v113;
  (*(*v60 + 192))(v55);
  (*&stru_1A8.segname[(swift_isaMask & *a1) + 16])(v62);
  v63 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel);
  if (v63)
  {
    swift_getKeyPath();
    v64 = v63;
    sub_768750();

    if (v119)
    {
      v65 = sub_769210();
    }

    else
    {
      v65 = 0;
    }

    [v64 setText:v65];
  }

  sub_6C14CC(a1, v117, v98);
  v118 = sub_75DA90();
  v66 = sub_76A910();
  v121[3] = &type metadata for String;
  v121[0] = v66;
  v121[1] = v67;
  sub_75DA80();
  v68 = sub_76A6A0();
  v70 = v69;
  sub_1EB60(&v118);
  v120 = &type metadata for String;
  v118 = v68;
  v119 = v70;
  v71 = v102;
  sub_768C30();
  sub_10A2C(&v118, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(v121, &unk_93FBD0, &qword_77DFA0);
  swift_getKeyPath();
  v72 = v103;
  v73 = v115;
  v74 = v116;
  sub_768750();

  v75 = sub_764920();
  v77 = v76;
  (*(v105 + 8))(v72, v106);
  v120 = &type metadata for String;
  v118 = v75;
  v119 = v77;
  v78 = v101;
  sub_768C40();
  v79 = v109;
  v80 = *(v108 + 8);
  v80(v71, v109);
  sub_10A2C(&v118, &unk_93FBD0, &qword_77DFA0);
  swift_getKeyPath();
  sub_768750();

  v81 = *(v121[0] + 16);

  v120 = &type metadata for Int;
  v118 = v81;
  v82 = v107;
  sub_768C40();
  v80(v78, v79);
  sub_10A2C(&v118, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();
  v80(v82, v79);
  v83 = v100;
  sub_75DAA0();
  swift_getKeyPath();
  v84 = v110;
  sub_768750();

  v85 = *(v104 + 8);
  v86.n128_f64[0] = v85(v83, v73);
  [a1 setOverrideUserInterfaceStyle:sub_51DB60(v86)];
  (*(v111 + 8))(v84, v112);
  [a1 setNeedsLayout];

  return (v85)(v74, v73);
}

uint64_t sub_6C14CC(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v47 = a1;
  v4 = sub_768C60();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75DAB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_BD88(&unk_94F1F0, &qword_782290);
  v48 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  if (v49[0])
  {
    v41 = v15;
    v42 = v13;
    v16 = a2;
    sub_6C1BCC(a2, v12);
    v17 = type metadata accessor for Accessory(0);
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
    v18 = v47;
    (*&stru_248.segname[(swift_isaMask & *v47) + 16])(v12, v46);
    sub_10A2C(v12, &qword_93FF90, qword_77ECE0);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v6);
    v20 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    (*(v7 + 32))(v21 + v20, v9, v6);
    v22 = (v18 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
    v23 = *(v18 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
    v24 = *(v18 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction + 8);
    *v22 = sub_6C47C4;
    v22[1] = v21;

    sub_F704(v23, v24);

    v25 = *(v18 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView);
    if (v25)
    {
      v26 = v25;
      v27 = sub_75DA90();
      v50[3] = &type metadata for Int;
      v50[0] = v27;
      sub_75DA80();
      v28 = sub_76A6A0();
      v30 = v29;
      sub_1EB60(v49);
      v49[3] = &type metadata for String;
      v49[0] = v28;
      v49[1] = v30;
      v31 = v43;
      sub_768C30();
      sub_10A2C(v49, &unk_93FBD0, &qword_77DFA0);
      sub_10A2C(v50, &unk_93FBD0, &qword_77DFA0);
      sub_769E70();

      (*(v44 + 8))(v31, v45);
    }

    else
    {
    }

    return (*(v48 + 8))(v41, v42);
  }

  else
  {
    v33 = v46;
    v32 = v47;
    swift_getKeyPath();
    sub_768750();

    if (v49[0])
    {
      *v12 = v49[0];
      *(v12 + 8) = xmmword_7ADC00;
      v34 = type metadata accessor for Accessory(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v34 - 8) + 56))(v12, 0, 1, v34);
      v35 = *&stru_248.segname[(swift_isaMask & *v32) + 16];

      v35(v12, v33);

      sub_10A2C(v12, &qword_93FF90, qword_77ECE0);
      return (*(v48 + 8))(v15, v13);
    }

    else
    {
      v37 = type metadata accessor for Accessory(0);
      (*(*(v37 - 8) + 56))(v12, 1, 1, v37);
      (*&stru_248.segname[(swift_isaMask & *v32) + 16])(v12, v33);
      sub_10A2C(v12, &qword_93FF90, qword_77ECE0);
      (*(v48 + 8))(v15, v13);
      v38 = (v32 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
      v39 = *(v32 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
      v40 = *(v32 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction + 8);
      *v38 = 0;
      v38[1] = 0;
      return sub_F704(v39, v40);
    }
  }
}

double sub_6C1BCC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_BD88(&unk_94F1F0, &qword_782290);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_764A60();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = sub_764C60();
  v23 = v16;
  v24 = v15;
  v25 = a1;
  sub_75DA70();
  sub_764A40();
  sub_6C4904(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v17 = sub_76A520();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  v19 = 0;
  if (v17)
  {
    sub_396E8();
    v19 = sub_769FD0();
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v5 + 8))(v7, v4);
  v20 = v23;
  *a2 = v24;
  *(a2 + 8) = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v26;
  type metadata accessor for Accessory(0);
  swift_storeEnumTagMultiPayload();
  return result;
}

double sub_6C1E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_BD88(&unk_94F1F0, &qword_782290);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    (*(v10 + 8))(v12, v9);
    v16 = v18;
    if (v18)
    {
      v17 = swift_unknownObjectWeakLoadStrong();
      sub_5172EC(v16, v17, *(v15 + 32), a6, a7);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_6C1FFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_6C05BC(a1, a6, a7, v10);
  }

  return v10.n128_f64[0];
}

double sub_6C2078(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_6C4E3C(a1, a6);
  }

  return result;
}

uint64_t sub_6C20EC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_BD88(&unk_94F1F0, &qword_782290);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - v12 + 16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_6C05BC(*&a1[OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_titleView], a6, a7, v15);
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    sub_768900();
    sub_768ED0();
    v16 = v21[0];
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    if (*(*(v16 + 16) + 16))
    {

      sub_663E34(v21, v17);
      if (v18)
      {

        sub_1EB60(v21);

        v21[3] = type metadata accessor for InteractiveTitleHeaderView(0);
        v21[4] = &off_884600;
        v21[0] = a1;
        v19 = a1;
        sub_420A64(v21);

        return sub_10A2C(v21, &unk_94A510, &unk_7AC3D0);
      }
    }

    else
    {
    }

    return sub_1EB60(v21);
  }

  return result;
}

double sub_6C2354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_BD88(&unk_94F1F0, &qword_782290);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    sub_768900();

    sub_768ED0();

    v11 = v16[0];
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    (*(v7 + 8))(v9, v6);
    swift_beginAccess();
    if (*(*(v11 + 16) + 16))
    {

      sub_663E34(v16, v12);
      if (v13)
      {

        sub_1EB60(v16);

        v15[3] = type metadata accessor for InteractiveSectionBackgroundView(0);
        v15[4] = &off_88A558;
        v15[0] = a1;
        v14 = a1;
        sub_420A64(v15);

        sub_10A2C(v15, &unk_94A510, &unk_7AC3D0);
        return result;
      }
    }

    sub_1EB60(v16);
  }

  return result;
}

void sub_6C25A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v5 = sub_BD88(&unk_94F1F0, &qword_782290);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_unknownObjectWeakLoadStrong();
    v12 = *(v10 + 32);

    if (v11)
    {
      ObjectType = swift_getObjectType();
      sub_75DAA0();
      a4(v8, ObjectType, v12);
      swift_unknownObjectRelease();
      (*(v6 + 8))(v8, v5);
    }
  }
}

double sub_6C27B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v22 = a1;
  v21[0] = sub_766690();
  v4 = *(v21[0] - 8);
  __chkstk_darwin(v21[0]);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7664A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_766CA0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for TitleHeaderView.TextConfiguration(0) + 24);
  v16 = sub_7666D0();
  (*(*(v16 - 8) + 16))(v10, a2 + v15, v16);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v23[3] = v7;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_B1B4(v23);
  (*(v8 + 16))(v17, v10, v7);
  sub_766CB0();
  (*(v8 + 8))(v10, v7);
  sub_766C90();
  if (v22)
  {
    sub_765260();
    sub_7666A0();
    sub_766610();
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

double sub_6C2AC0(double a1, double a2)
{
  v4 = sub_BD88(&unk_94F1F0, &qword_782290);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v11 = *(v5 + 8);
  v11(v10, v4);
  if (v29)
  {
    v12 = sub_75DA30();
    sub_764C60();
    v14 = v13;
    if (qword_93C5E0 != -1)
    {
      swift_once();
    }

    v15 = qword_9481A0;
    if (v14)
    {
      v16 = sub_769210();
    }

    else
    {
      v16 = 0;
    }

    [v15 setTitle:v16 forState:0];

    [v15 setImage:0 forState:0];
    v19 = [v15 titleLabel];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
      v22 = [v21 font];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v12];
      }

      else
      {
        v24 = 0;
      }

      [v21 setFont:v24];
    }

    [v15 sizeThatFits:{a1, a2}];
    v26 = v25;

    v18 = v26 + 0.0;
    [v15 setTitle:0 forState:0];
    [v15 setImage:0 forState:0];
  }

  else
  {
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v11(v7, v4);
    if (v29 && (v17 = sub_759880(), , (v17 & 1) != 0))
    {
      return 156.0;
    }

    else
    {
      return 0.0;
    }
  }

  return v18;
}

uint64_t sub_6C2E38()
{
  v0 = sub_BD88(&unk_94F1F0, &qword_782290);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_75DA30();
  v8 = sub_769A00();

  if (v8)
  {
    return 0;
  }

  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v10 = *(v1 + 8);
  v10(v6, v0);
  if (v13)
  {

    return 1;
  }

  else
  {
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    v10(v3, v0);
    if (v13 && (v11 = sub_759880(), , (v11 & 1) != 0))
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_6C3010()
{
  v0 = sub_BD88(&qword_94AFE0, &unk_7ADCD0);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - v1;
  v23 = sub_7656C0();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_94F1F0, &qword_782290);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v13 = *(v7 + 8);
  v13(v12, v6);
  v14 = v25;
  if (!v25)
  {
    return 0;
  }

  v22 = v24;
  sub_75DA60();
  sub_765BE0();
  sub_765630();
  v16 = v15;
  v18 = v17;
  (*(v3 + 8))(v5, v23);
  v19 = sub_75DA30();
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v20 = v13(v9, v6);
  v20.n128_u64[0] = v16;
  sub_651D58(v22, v14, v19, v2, v20, v18);

  sub_10A2C(v2, &qword_94AFE0, &unk_7ADCD0);
  return v16;
}

double *sub_6C330C(uint64_t a1, int *a2)
{
  v2 = COERCE_DOUBLE(sub_6BFEFC(a1, a2));
  if ((v4 & 1) != 0 || ((v5 = v2, v6 = v3, v3 >= v2) ? (v7 = v2) : (v7 = v3), v7 <= 0.0))
  {
    v12 = 0;
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 absoluteDimension:v5];
    v10 = [v8 estimatedDimension:v6];
    v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

    v12 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v11 elementKind:UICollectionElementKindSectionHeader alignment:1];
    v13 = v12;
  }

  v14 = COERCE_DOUBLE(sub_6C3010());
  if ((v16 & 1) != 0 || ((v17 = v14, v18 = v15, v15 >= v14) ? (v19 = v14) : (v19 = v15), v19 <= 0.0))
  {
    v24 = 0;
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 absoluteDimension:v17];
    v22 = [v20 absoluteDimension:v18];
    v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

    v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v23 elementKind:UICollectionElementKindSectionFooter alignment:5];
    v25 = v24;
  }

  v26 = 0;
  v30[4] = v12;
  v30[5] = v24;
  while (v26 != 2)
  {
    v27 = v30[v26++ + 4];
    if (v27)
    {
      v28 = v27;
      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
    }
  }

  sub_BD88(&qword_962308, &qword_7ADCC8);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_6C35F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764960();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double *sub_6C3644(__n128 a1)
{
  v1 = sub_75B660();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_94F1F0, &qword_782290);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - v7;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v6 + 8))(v8, v5);
  v9 = (*(v2 + 88))(v4, v1);
  if (v9 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v2 + 96))(v4, v1);

    v10 = *(sub_BD88(&qword_94B9A8, &qword_78EB00) + 48);
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_77D9F0;
    v12 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    sub_769BC0();
    v13 = sub_769210();

    v14 = [v12 backgroundDecorationItemWithElementKind:v13];

    *(v11 + 32) = v14;
    v15 = sub_75EDA0();
    (*(*(v15 - 8) + 8))(&v4[v10], v15);
  }

  else if (v9 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v2 + 96))(v4, v1);

    v16 = sub_BD88(&qword_94B3C0, &qword_7ADD80);
    v17 = v16[12];
    v18 = v16[16];
    v19 = v16[20];
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_77D9F0;
    v20 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    sub_769BC0();
    v21 = sub_769210();

    v22 = [v20 backgroundDecorationItemWithElementKind:v21];

    *(v11 + 32) = v22;
    v23 = sub_75EDA0();
    (*(*(v23 - 8) + 8))(&v4[v19], v23);
    v24 = sub_763400();
    v25 = *(*(v24 - 8) + 8);
    v25(&v4[v18], v24);
    v25(&v4[v17], v24);
  }

  else if (v9 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v2 + 96))(v4, v1);
    v26 = *(sub_BD88(&qword_959950, &unk_7A2A80) + 48);
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_77D9F0;
    v27 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    sub_769BC0();
    v28 = sub_769210();

    v29 = [v27 backgroundDecorationItemWithElementKind:v28];

    *(v11 + 32) = v29;
    v30 = sub_75EDA0();
    (*(*(v30 - 8) + 8))(&v4[v26], v30);
    v31 = sub_763E10();
    (*(*(v31 - 8) + 8))(v4, v31);
  }

  else if (v9 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else if (v9 == enum case for ShelfBackground.interactive(_:))
  {
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_77D9F0;
    v32 = objc_opt_self();
    type metadata accessor for InteractiveSectionBackgroundView(0);
    sub_769BC0();
    v33 = sub_769210();

    v34 = [v32 backgroundDecorationItemWithElementKind:v33];

    *(v11 + 32) = v34;
  }

  else
  {
    v35 = enum case for ShelfBackground.editorsChoice(_:);
    v36 = v9;
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_77D9F0;
    v37 = objc_opt_self();
    if (v36 == v35)
    {
      type metadata accessor for EditorsChoiceBackgroundView();
      sub_769BC0();
      v38 = sub_769210();

      v39 = [v37 backgroundDecorationItemWithElementKind:v38];

      *(v11 + 32) = v39;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      sub_769BC0();
      v40 = sub_769210();

      v41 = [v37 backgroundDecorationItemWithElementKind:v40];

      *(v11 + 32) = v41;
      (*(v2 + 8))(v4, v1);
    }
  }

  return v11;
}

uint64_t sub_6C3D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for GenericPageShelfSupplementaryProvider();
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 32) = a5;
  swift_unknownObjectWeakAssign();
  *(v7 + 16) = a2;
  return v7;
}

uint64_t sub_6C3DE4(uint64_t a1, void (*a2)(char *, __n128))
{
  v21 = a2;
  v2 = sub_76A920();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_75B660();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0, &qword_782290);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v15(v11, v8);
  if (v22)
  {
    if (sub_759880())
    {
      if (qword_93DCE0 != -1)
      {
        swift_once();
      }

      v16 = sub_766CA0();
      sub_BE38(v16, qword_99FDE8);
      sub_75DA40();
      sub_766470();
      sub_766700();

      swift_unknownObjectRelease();
      (*(v18 + 8))(v4, v19);
    }

    else
    {
    }
  }

  (v21)(v7);
  return (*(v5 + 8))(v7, v20);
}

uint64_t sub_6C4140()
{
  v0 = sub_76A920();
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_75B660();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_94F1F0, &qword_782290);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v13 = *(v7 + 8);
  v13(v12, v6);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v13(v9, v6);
  if (v19)
  {
    if (sub_759880())
    {
      if (qword_93DCE0 != -1)
      {
        swift_once();
      }

      v14 = sub_766CA0();
      sub_BE38(v14, qword_99FDE8);
      sub_75DA40();
      sub_766470();
      sub_766700();

      swift_unknownObjectRelease();
      (*(v16 + 8))(v2, v17);
    }

    else
    {
    }
  }

  return (*(v3 + 8))(v5, v18);
}

double *sub_6C4488(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v19 = a2;
  v6 = sub_75B660();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_94F1F0, &qword_782290);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v11 + 8))(v13, v10);
  v14 = (*(v7 + 88))(v9, v6);
  LODWORD(v11) = enum case for ShelfBackground.interactive(_:);
  (*(v7 + 8))(v9, v6);
  if (v14 != v11)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  sub_768900();
  sub_768ED0();
  v15 = sub_2F318C(a1, v19, a3);
  sub_BD88(&qword_941B08, &unk_7ADD70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_77B6D0;
  v17 = sub_6C4904(&qword_962310, type metadata accessor for InteractiveSectionBackgroundScrollObserver, &unk_79D1D0);
  *(v16 + 32) = v15;
  *(v16 + 40) = v17;

  return v16;
}

uint64_t sub_6C4734@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7649C0();
  *a1 = result;
  return result;
}

uint64_t sub_6C4760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7649D0();
  *a1 = result;
  return result;
}

uint64_t sub_6C478C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6C47DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7649B0();
  *a1 = result;
  return result;
}

uint64_t sub_6C480C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_764990();
  *a1 = result;
  return result;
}

uint64_t sub_6C4838()
{
  sub_75DAB0();

  return sub_6C2E38();
}

uint64_t sub_6C48A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_6C4904(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6C4950()
{
  sub_75DAB0();

  return sub_6C4140();
}

double sub_6C49B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_75DAB0();
  v9 = *(v4 + 16);

  return sub_6C2354(a1, a2, a3, a4, v9);
}

uint64_t sub_6C4A4C()
{
  v1 = *(sub_75DAB0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_6BE97C(v0 + v2, *(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) + 16));
}

uint64_t sub_6C4AF8()
{
  v1 = sub_75DAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_6C4C6C()
{
  v1 = sub_75DAB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_6C4D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = *(sub_75DAB0() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v5 + 16);
  v13 = *(v5 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, a3, a4, v12, v5 + v11, v13);
}

double sub_6C4E3C(char *a1, uint64_t a2)
{
  v43 = a1;
  v3 = sub_75DAB0();
  v41 = *(v3 - 8);
  v42 = v3;
  __chkstk_darwin(v3);
  v39 = v4;
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75B660();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_94AFE0, &unk_7ADCD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_BD88(&unk_94F1F0, &qword_782290);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v45;
  v35 = v44;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17(v13, v10);
  if (qword_93DFD0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for ShelfFooterView.Style(0);
  v20 = sub_BE38(v19, qword_9A0648);
  v21 = v43;
  sub_652A74(v35, v18, v20, v9, a2);

  sub_10A2C(v9, &qword_94AFE0, &unk_7ADCD0);
  sub_75DAA0();
  swift_getKeyPath();
  v22 = v36;
  sub_768750();

  v23.n128_f64[0] = v17(v16, v10);
  v24 = sub_51DB60(v23);
  (*(v37 + 8))(v22, v38);
  [v21 setOverrideUserInterfaceStyle:v24];
  v25 = swift_allocObject();
  swift_weakInit();
  v27 = v40;
  v26 = v41;
  v28 = v42;
  (*(v41 + 16))(v40, a2, v42);
  v29 = (*(v26 + 80) + 24) & ~*(v26 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v25;
  (*(v26 + 32))(v30 + v29, v27, v28);
  v31 = &v21[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_footerAction];
  v32 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_footerAction];
  v33 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider15ShelfFooterView_footerAction + 8];
  *v31 = sub_6C52F8;
  v31[1] = v30;

  sub_F704(v32, v33);

  return result;
}

void sub_6C53AC(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButtonAction;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButtonAction);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButtonAction) = a1;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton);
    v5 = a1;
    [v4 removeAction:v3 forControlEvents:64];
    v6 = *(v1 + v2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton);
    v8 = v6;
    [v7 addAction:v8 forControlEvents:64];
  }

LABEL_4:
}

char *sub_6C5480(int a1)
{
  v2 = v1;
  LODWORD(v58) = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_75CA40();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = &v53 - v8;
  __chkstk_darwin(v9);
  v59 = &v53 - v10;
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v53 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView;
  *&v2[v18] = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView(0)) init];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton;
  v20 = objc_allocWithZone(type metadata accessor for CardHeaderButton(0));
  *&v2[v19] = sub_4F6BB8(1);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel;
  v22 = sub_7666D0();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = v11;
  v24 = v5;
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v23);
  v25 = objc_allocWithZone(sub_75BB20());
  *&v2[v21] = sub_75BB10();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButtonAction] = 0;
  v26 = *(v5 + 104);
  v26(&v2[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_mediaOverlayStyle], enum case for MediaOverlayStyle.matchSystem(_:), v4);
  v2[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_displayMode] = v58 & 1;
  v65.receiver = v2;
  v65.super_class = ObjectType;
  v58 = ObjectType;
  v27 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setClipsToBounds:1];
  [v31 setUserInteractionEnabled:0];
  v32 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView;
  v33 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView];
  v34 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode];
  *&v33[OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode] = 2;
  v35 = v33;
  if (v34 != &dword_0 + 2)
  {
    sub_217140();
  }

  sub_2175DC();
  sub_2180B4(v34);

  v56 = v32;
  [v31 addSubview:*&v31[v32]];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton;
  v37 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton];
  v38 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_mediaOverlayStyle;
  swift_beginAccess();
  v54 = *(v24 + 16);
  v55 = v38;
  v54(v59, &v31[v38], v4);
  v26(v60, enum case for MediaOverlayStyle.light(_:), v4);
  sub_6C6434();
  v39 = v37;
  sub_769430();
  sub_769430();
  if (v63 == v61 && v64 == v62)
  {
    v40 = v4;
    v41 = 2;
  }

  else
  {
    v40 = v4;
    if (sub_76A950())
    {
      v41 = 2;
    }

    else
    {
      v41 = 1;
    }
  }

  v42 = *(v24 + 8);
  v42(v60, v40);
  v42(v59, v40);

  sub_4F6A4C(v41);

  [v31 addSubview:*&v31[v36]];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel;
  [*&v31[v56] addSubview:*&v31[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel]];
  v44 = v57;
  v54(v57, &v31[v55], v40);
  sub_75CA20();
  v42(v44, v40);
  sub_769240();
  v45 = sub_769210();

  v46 = [*&v31[v43] layer];
  [v46 setCompositingFilter:v45];

  sub_BD88(&qword_9477F0, qword_780200);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_77E280;
  *(v47 + 32) = sub_767890();
  *(v47 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v47 + 48) = sub_767B80();
  *(v47 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();
  swift_unknownObjectRelease();

  v48 = *&v31[v43];
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 secondaryLabelColor];
  [v50 setTextColor:v51];

  sub_6C5B90();
  return v31;
}

id sub_6C5B90()
{
  v1 = v0;
  v2 = sub_75CA40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_mediaOverlayStyle;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v5, v1 + v7, v2);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 24))(v6 + v9, v5, v2);
  swift_endAccess();
  sub_2172D4();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton);
  v8(v5, v1 + v7, v2);
  v12 = sub_75CA30();
  v10(v5, v2);
  [v11 setOverrideUserInterfaceStyle:v12];
  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel);
  v8(v5, v1 + v7, v2);
  v14 = sub_75CA20();
  v10(v5, v2);
  return [v13 setOverrideUserInterfaceStyle:v14];
}

id sub_6C5DD8()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView];
  [v0 bounds];
  [v2 bounds];
  [v2 setBounds:?];
  [v0 bounds];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  MidX = CGRectGetMidX(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  [v2 setCenter:{MidX, CGRectGetMidY(v33)}];
  v8 = [v0 traitCollection];
  v9 = sub_7699D0();

  if (v9)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 20.0;
  }

  [v1 bounds];
  sub_769DA0();
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel];
  [v11 sizeThatFits:?];
  v13 = v12;
  v15 = v14;
  v34.origin.x = v10;
  v34.origin.y = 72.0;
  v34.size.width = v13;
  v34.size.height = v15;
  CGRectGetMaxY(v34);
  [v2 contentSize];
  [v2 setContentSize:?];
  [v11 bounds];
  [v11 setBounds:?];
  v35.origin.x = v10;
  v35.origin.y = 72.0;
  v35.size.width = v13;
  v35.size.height = v15;
  v16 = CGRectGetMidX(v35);
  v36.origin.x = v10;
  v36.origin.y = 72.0;
  v36.size.width = v13;
  v36.size.height = v15;
  [v11 setCenter:{v16, CGRectGetMidY(v36)}];
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton];
  [v1 bounds];
  [v17 sizeThatFits:{v18, v19}];
  v20 = [v1 traitCollection];
  [v1 bounds];
  sub_769CA0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v17 bounds];
  [v17 setBounds:?];
  v37.origin.x = v22;
  v37.origin.y = v24;
  v37.size.width = v26;
  v37.size.height = v28;
  v29 = CGRectGetMidX(v37);
  v38.origin.x = v22;
  v38.origin.y = v24;
  v38.size.width = v26;
  v38.size.height = v28;
  return [v17 setCenter:{v29, CGRectGetMidY(v38)}];
}

uint64_t sub_6C6138()
{
  sub_BD88(&unk_94E620, qword_79B350);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView);
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  *(v1 + 16) = xmmword_77E280;
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_fullProtectionView);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v5 = v4;
  v6 = v3;
  return v1;
}

uint64_t type metadata accessor for AppPromotionLearnMoreView(uint64_t a1)
{
  result = qword_9623D0;
  if (!qword_9623D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6C62F0(uint64_t a1)
{
  result = sub_75CA40();
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

uint64_t sub_6C63BC()
{
  sub_BD88(&unk_94E620, qword_79B350);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77E280;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton);
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = v2;
  v5 = v3;
  return v1;
}

unint64_t sub_6C6434()
{
  result = qword_9623E0;
  if (!qword_9623E0)
  {
    sub_75CA40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9623E0);
  }

  return result;
}

id sub_6C6490(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel];
  if (qword_93DF40 != -1)
  {
    swift_once();
  }

  v3 = qword_9A04F0;
  v4 = *algn_9A04F8;
  v5 = qword_9A0500;
  v6 = [a1 traitCollection];
  if (sub_769A00())
  {
  }

  else
  {
    v7 = sub_7699D0();

    if (v7)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  [v2 setFont:v5];

  return [a1 setNeedsLayout];
}

void sub_6C657C()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_contentView;
  *(v1 + v9) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView(0)) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButton;
  v11 = objc_allocWithZone(type metadata accessor for CardHeaderButton(0));
  *(v1 + v10) = sub_4F6BB8(1);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_learnMoreLabel;
  v13 = sub_7666D0();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_75BB20());
  *(v1 + v12) = sub_75BB10();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_backButtonAction) = 0;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider25AppPromotionLearnMoreView_mediaOverlayStyle;
  v16 = enum case for MediaOverlayStyle.matchSystem(_:);
  v17 = sub_75CA40();
  (*(*(v17 - 8) + 104))(v1 + v15, v16, v17);
  sub_76A840();
  __break(1u);
}

double sub_6C6800(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  return result;
}

id sub_6C6860(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v20 = a2;
  v6 = sub_7656A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v21 = sub_7656C0();
  v13 = *(v21 - 8);
  v14 = __chkstk_darwin(v21);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v12, enum case for PageGrid.Direction.vertical(_:), v6, v14);
  if (a3)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_7;
    }

    v18 = result;
    [result bounds];
  }

  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    (*(v7 + 16))(v9, v12, v6);
    sub_40DC7C(0.0);
    sub_765670();
    (*(v7 + 8))(v12, v6);
    return (*(v13 + 8))(v16, v21);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

char *sub_6C6B40(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_isPresenterLoaded] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents;
  v6 = [objc_allocWithZone(UISegmentedControl) init];
  v7 = sub_BD88(&qword_9624F8, &unk_7AE1D0);
  v8 = objc_allocWithZone(v7);
  *&v8[qword_962468] = v6;
  v32.receiver = v8;
  v32.super_class = v7;
  v9 = v6;
  v10 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 setLayoutMargins:{8.0, 0.0, 8.0, 0.0}];
  [v10 setPreservesSuperviewLayoutMargins:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v9;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 addSubview:v14];

  *&v2[v5] = v10;
  v15 = &v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex];
  *v15 = 0;
  v15[8] = 1;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectCategoryViewController] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_objectGraph] = a2;
  sub_75A110();
  sub_768900();

  sub_768ED0();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_artworkLoader] = v31;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_presenter] = a1;
  v30.receiver = v2;
  v30.super_class = type metadata accessor for TopChartsDiffablePageViewController();

  v16 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  sub_763110();
  if (v17)
  {
    v18 = sub_769210();
  }

  else
  {
    v18 = 0;
  }

  [v16 setTitle:v18];

  v19 = v16;
  v20 = [v19 navigationItem];
  [v20 setLargeTitleDisplayMode:2];

  v21 = *(*&v19[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents] + qword_962468);
  sub_BE70(0, &qword_955FA0, UIAction_ptr);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = v21;

  v24 = sub_76A1F0();
  [v23 addAction:v24 forControlEvents:{4096, 0, 0, 0, sub_6CB008, v22, v30.receiver, v30.super_class}];

  v25 = [v19 navigationItem];
  v26 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v25 setStandardAppearance:v26];

  v27 = [v19 navigationItem];
  v28 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v27 setScrollEdgeAppearance:v28];

  return v19;
}

void sub_6C6F9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents;
    v5 = [*(*(Strong + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents) + qword_962468) selectedSegmentIndex];
    v6 = &v3[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex];
    v7 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex];
    v8 = v3[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex + 8];
    *v6 = v5;
    v6[8] = 0;
    [*(*&v3[v4] + qword_962468) setSelectedSegmentIndex:v5];
    if (v8)
    {
      sub_6C9A74();
    }

    else
    {
      sub_6CA11C(v5, v7);
    }
  }
}

id sub_6C709C()
{
  v1 = v0;
  v2 = sub_7656A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_7656C0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2, v11);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v20 = result;
  [result safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  if (qword_93DFB8 != -1)
  {
    swift_once();
  }

  sub_765670();
  (*(v3 + 8))(v8, v2);
  sub_765550();
  v22 = v21;
  (*(v10 + 8))(v13, v9);
  return (v22 > 1.0);
}

id sub_6C73E0()
{
  v1 = v0;
  v39 = sub_BD88(&qword_962540, &qword_7AE200);
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v31 - v3;
  v38 = sub_BD88(&qword_962548, &qword_7AE208);
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v31 - v6;
  v8 = sub_BD88(&qword_962550, &qword_7AE210);
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v31 - v9;
  v10 = type metadata accessor for TopChartsDiffablePageViewController();
  v42.receiver = v0;
  v42.super_class = v10;
  objc_msgSendSuper2(&v42, "viewDidLoad");
  sub_6C6860(0, 0, 1);
  result = [v0 view];
  if (result)
  {
    v12 = result;
    v32 = v8;
    v33 = v7;
    v34 = v5;
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v13 = sub_76A000();
    [v12 setBackgroundColor:v13];

    v35 = v10;
    v41 = v10;
    v40[0] = v1;
    v14 = v1;
    v15 = sub_769210();
    v16 = v41;
    if (v41)
    {
      v17 = sub_B170(v40, v41);
      v18 = *(v16 - 8);
      v19 = __chkstk_darwin(v17);
      v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      v22 = sub_76A930();
      (*(v18 + 8))(v21, v16);
      sub_BEB8(v40);
    }

    else
    {
      v22 = 0;
    }

    v23 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v15 style:0 target:v22 action:"showCategoriesFor:"];

    swift_unknownObjectRelease();
    v24 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton];
    *&v14[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton] = v23;

    v25 = *&v14[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents];
    [v25 setAutoresizingMask:18];
    [v25 sizeToFit];
    v26 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v25];
    [v26 _setContentViewMarginType:0];
    v27 = [v14 navigationItem];
    v28 = v26;
    [v27 _setBottomPalette:v28];

    swift_unknownObjectWeakAssign();
    sub_6C9274();

    sub_761830();
    sub_BD88(&qword_962558, &qword_7AE218);
    sub_6CC448(&qword_962560, &qword_962558, &qword_7AE218);
    sub_768710();
    v29 = v36;
    sub_768720();

    sub_BEB8(v40);
    (*(v37 + 8))(v29, v32);
    sub_7630F0();
    sub_BD88(&qword_962568, &qword_7AE220);
    sub_6CC448(&qword_962570, &qword_962568, &qword_7AE220);
    sub_768710();
    v30 = v33;
    sub_768720();

    sub_BEB8(v40);
    (*(v34 + 8))(v30, v38);
    sub_763100();
    sub_BD88(&qword_962578, &qword_7AE228);
    sub_6CC448(&qword_962580, &qword_962578, &qword_7AE228);
    sub_768710();
    sub_768720();

    sub_BEB8(v40);
    return (*(v2 + 8))(v4, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*sub_6C7A9C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_6CC584;
}

uint64_t (*sub_6C7B00(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_6CC560;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_B311C;
}

uint64_t (*sub_6C7B90(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_6CC4D4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_6CC530;
}

id sub_6C7E80(uint64_t a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  objc_msgSendSuper2(&v15, "viewWillLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController];
  if (!v2)
  {
    return sub_6C93C0();
  }

  v3 = v2;
  result = [v3 view];
  if (result)
  {
    v5 = result;
    result = [v1 view];
    if (result)
    {
      v6 = result;
      [result bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v5 setFrame:{v8, v10, v12, v14}];
      return sub_6C93C0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_6C815C(void *a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  objc_msgSendSuper2(&v18, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v3 isViewLoaded])
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a2;
    *(v8 + 32) = a3;
    v16 = sub_6CC434;
    v17 = v8;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_6C6800;
    v15 = &unk_89D308;
    v9 = _Block_copy(&v12);

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = sub_6CC440;
    v17 = v10;
    v12 = _NSConcreteStackBlock;
    v13 = 1107296256;
    v14 = sub_6C6800;
    v15 = &unk_89D330;
    v11 = _Block_copy(&v12);

    [a1 animateAlongsideTransition:v9 completion:v11];
    _Block_release(v11);
    _Block_release(v9);
  }
}

id sub_6C8330(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_7656A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = sub_7656C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    (*(v5 + 104))(v10, enum case for PageGrid.Direction.vertical(_:), v4);
    result = [v16 view];
    if (result)
    {
      v17 = result;
      [result safeAreaInsets];

      (*(v5 + 16))(v7, v10, v4);
      sub_40DC7C(0.0);
      sub_765670();

      (*(v5 + 8))(v10, v4);
      return (*(v12 + 8))(v14, v11);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_6C85EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_6C9274();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_6C93C0();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_6C9A74();
  }
}

void sub_6C8718(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_763090();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.completed(_:))
  {
    (*(v6 + 96))(v9, v5);
    v11 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton];
    if (v11)
    {
      [v11 setEnabled:1];
    }

    sub_6CB200();
    v12 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController;
    v13 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController];
    sub_761930();

    v14 = *&v2[v12];
    *&v2[v12] = 0;

    v15 = [v2 view];
    if (v15)
    {
      v16 = v15;
      [v15 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;

      v60 = v18;
      v61 = v20;
      v62 = v22;
      v63 = v24;
      v64 = 0;
      sub_761920();
      if (sub_7617F0())
      {
        sub_75CA90();
      }

      sub_7617E0();

      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.error(_:))
  {
    (*(v6 + 96))(v9, v5);
    v25 = *v9;
    v26 = v9[1];
    v27 = v9[2];
    sub_6CB2F8(v25);
    sub_F704(v26, v27);

    return;
  }

  if (v10 == enum case for TopChartsDiffablePagePresenter.UpdatePhase.started(_:))
  {
    sub_7617E0();
    sub_767130();
    v28 = objc_allocWithZone(sub_767160());
    v29 = sub_767150();
    v30 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController;
    v31 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController];
    sub_761930();

    v32 = *&v2[v30];
    *&v2[v30] = v29;
    v33 = v29;

    v34 = [v2 view];
    if (!v34)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v35 = v34;
    [v34 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;

    v60 = v37;
    v61 = v39;
    v62 = v41;
    v63 = v43;
    v64 = 0;
    sub_761920();

    v44 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton];
    if (v44)
    {
      [v44 setEnabled:0];
    }
  }

  else
  {
    v45 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController;
    v46 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController];
    sub_761930();

    v47 = *&v2[v45];
    *&v2[v45] = 0;

    v48 = [v2 view];
    if (!v48)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v49 = v48;
    [v48 bounds];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    v60 = v51;
    v61 = v53;
    v62 = v55;
    v63 = v57;
    v64 = 0;
    sub_761920();
    v58 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton];
    if (v58)
    {
      [v58 setEnabled:1];
    }

    (*(v6 + 8))(v9, v5);
  }
}

void sub_6C8BC8(unint64_t a1)
{
  v1 = a1;
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  if (v3)
  {
    sub_76A7C0();
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v31 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v2)
    {
      v4 = sub_76A860();
    }

    else
    {
      v4 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    }

    v5 = 0;
    v6 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_objectGraph];
    v7 = v4 & ~(v4 >> 63);
    do
    {
      if (v7 == v5)
      {
        goto LABEL_46;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = sub_76A770();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_50;
        }

        v8 = *(v1 + 8 * v5 + 32);
      }

      v9 = sub_6C709C();
      v10 = v5++ != 0;
      v11 = sub_6CC3B4(&qword_962500, &type metadata accessor for TopChartDiffableSegmentPresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
      v12 = sub_6A0B30(v6, v8, v11, _swiftEmptyArrayStorage, 0x7472616843706F74, 0xEF746E656D676553);
      v13 = objc_allocWithZone(type metadata accessor for TopChartDiffableSegmentViewController(0));
      v13[qword_9586B0] = v9;
      v13[qword_9586B8] = v10;
      v2 = sub_46E5A4(v8, v12);
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
    }

    while (v3 != v5);
  }

  v31 = _swiftEmptyArrayStorage;
  v30 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers;
  v1 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v1 >> 62)
  {
    v14 = sub_76A860();
  }

  else
  {
    v14 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v16 = sub_76A770();
      }

      else
      {
        if (v15 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_48;
        }

        v16 = *(v1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_47;
      }

      v19 = [v16 parentViewController];
      if (v19)
      {
        v2 = v19;
        sub_BE70(0, &qword_9434E0, UIViewController_ptr);
        v20 = v32;
        v21 = sub_76A1C0();

        if (v21)
        {
          [v17 willMoveToParentViewController:0];
          v22 = [v17 view];
          if (!v22)
          {
            __break(1u);
            return;
          }

          v2 = v22;
          [v22 removeFromSuperview];

          [v17 removeFromParentViewController];
        }
      }

      ++v15;
    }

    while (v18 != v14);
  }

  *&v32[v30] = _swiftEmptyArrayStorage;

  sub_6C93C0();
  sub_6C9A74();
  v30 = qword_962468;
  v31 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents];
  [*(v31 + qword_962468) removeAllSegments];
  v23 = sub_7630C0();
  if (v23 >> 62)
  {
    v2 = sub_76A860();
  }

  else
  {
    v2 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
  }

  if (v2 > 1)
  {
    v24 = sub_7630C0();
    v1 = v24;
    if (!(v24 >> 62))
    {
      v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
      if (v25)
      {
LABEL_35:
        v26 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            sub_76A770();
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (v26 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_49;
            }

            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              __break(1u);
LABEL_51:
              v3 = sub_76A860();
              goto LABEL_3;
            }
          }

          v2 = *(v31 + v30);
          sub_763600();
          if (v29)
          {
            v27 = sub_769210();
          }

          else
          {
            v27 = 0;
          }

          [v2 insertSegmentWithTitle:v27 atIndex:v26 animated:{0, v30}];

          ++v26;
          if (v28 == v25)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_55:
    v25 = sub_76A860();
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_56:

    if ((v32[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex + 8] & 1) == 0)
    {
      [*(v31 + v30) setSelectedSegmentIndex:*&v32[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex]];
    }
  }

  sub_6C9274();
}

void sub_6C9138(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton;
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton];
  if (v4 && (!a2 ? (v5 = v4, v6 = 0) : (v5 = v4, v6 = sub_769210()), ([v5 setTitle:v6], v5, v6, (v7 = *&v2[v3]) != 0) && (v8 = objc_msgSend(v7, "title")) != 0))
  {

    v10 = [v2 navigationItem];
    v9 = *&v2[v3];
    [v10 setRightBarButtonItem:v9];
  }

  else
  {
    v10 = [v2 navigationItem];
    [v10 setRightBarButtonItem:0];
  }
}

void sub_6C9274()
{
  v1 = sub_6C709C();
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents);
  if (v1 || [*&v2[qword_962468] numberOfSegments] <= 0 && (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_isPresenterLoaded) & 1) != 0)
  {
    [v2 setHidden:1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong setPreferredHeight:0.0];
    }
  }

  else
  {
    [v2 sizeToFit];
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v2 frame];
      [v5 setPreferredHeight:CGRectGetHeight(v8)];
    }

    [v2 setHidden:0];
  }
}

id sub_6C93C0()
{
  v1 = v0;
  v2 = sub_7656A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = sub_7656C0();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = __chkstk_darwin(v9);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2, v10);
  v12 = &selRef_setTextAlignment_;
  result = [v1 view];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;

  result = [v1 view];
  if (!result)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v19 = result;
  v66 = v16;
  v67 = v18;
  [result safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  if (qword_93DFB8 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {

    v20 = v68;
    sub_765670();
    (*(v3 + 8))(v8, v2);
    v2 = v20;
    sub_765650();
    v22 = v21;
    v61 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers;
    v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers];
    v23 = v1;
    if (!(v3 >> 62))
    {
      v66 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
LABEL_6:
      v67 = v3 & 0xFFFFFFFFFFFFFF8;
      v24 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_7;
    }

    v66 = sub_76A860();
    v3 = *&v1[v61];
    if (!(v3 >> 62))
    {
      goto LABEL_6;
    }

    v67 = v3 & 0xFFFFFFFFFFFFFF8;
    v24 = sub_76A860();
LABEL_7:

    if (!v24)
    {
      break;
    }

    v25 = 0;
    v64 = v3;
    v65 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v65)
      {
        v26 = sub_76A770();
      }

      else
      {
        if (v25 >= *(v67 + 16))
        {
          goto LABEL_36;
        }

        v26 = *(v3 + 8 * v25 + 32);
      }

      v1 = v26;
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = sub_6C709C();
      sub_4FE738(v28, v25 != 0);
      if (v66 == 1)
      {
        sub_765BE0();
      }

      sub_765630();
      v30 = v29;
      result = [v1 v12[28]];
      if (!result)
      {
        goto LABEL_44;
      }

      v31 = result;
      result = [v23 v12[28]];
      if (!result)
      {
        goto LABEL_45;
      }

      v8 = v23;
      v32 = v12;
      v33 = result;
      [result bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v69.origin.x = v35;
      v69.origin.y = v37;
      v69.size.width = v39;
      v69.size.height = v41;
      MinY = CGRectGetMinY(v69);
      v43 = v32;
      result = [v8 v32[28]];
      if (!result)
      {
        goto LABEL_46;
      }

      v44 = result;
      v23 = v8;
      [result bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v70.origin.x = v46;
      v70.origin.y = v48;
      v70.size.width = v50;
      v70.size.height = v52;
      [v31 setFrame:{v22, MinY, v30, CGRectGetHeight(v70)}];

      v2 = v8;
      if (sub_6C709C())
      {
        v2 = v68;
        sub_7655F0();
        v54 = v53;

        v22 = v22 + v30 + v54;
      }

      else
      {
      }

      ++v25;
      v12 = v43;
      v3 = v64;
      if (v27 == v24)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_24:

  if (sub_6C709C())
  {
    goto LABEL_25;
  }

  v55 = &v23[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex];
  if (v23[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex + 8])
  {
    goto LABEL_25;
  }

  v56 = *v55;
  if (*v55 < 0)
  {
    goto LABEL_25;
  }

  v57 = *&v23[v61];
  if (v57 >> 62)
  {
    result = sub_76A860();
    if (v56 >= result)
    {
      goto LABEL_25;
    }

LABEL_31:
    v58 = *&v23[v61];
    if ((v58 & 0xC000000000000001) != 0)
    {

      v59 = sub_76A770();

      goto LABEL_34;
    }

    if (v56 < *(&dword_10 + (v58 & 0xFFFFFFFFFFFFFF8)))
    {
      v59 = *(v58 + 8 * v56 + 32);
LABEL_34:
      v60 = [v59 collectionView];

      [v23 setContentScrollView:v60 forEdge:15];
      return (*(v62 + 8))(v68, v63);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFFF8));
  if (v56 < result)
  {
    goto LABEL_31;
  }

LABEL_25:
  [v23 setContentScrollView:0 forEdge:{15, v61}];
  return (*(v62 + 8))(v68, v63);
}

void sub_6C9A74()
{
  v1 = v0;
  v2 = sub_7656A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v55 = sub_7656C0();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v11 >> 62)
  {
LABEL_32:
    v12 = sub_76A860();
  }

  else
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex;

  if (v12)
  {
    v14 = 0;
    v42 = &v1[v13];
    v52 = v11 & 0xFFFFFFFFFFFFFF8;
    v53 = v11 & 0xC000000000000001;
    v51 = enum case for PageGrid.Direction.vertical(_:);
    v49 = (v3 + 16);
    v50 = (v3 + 104);
    v47 = (v9 + 1);
    v48 = (v3 + 8);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    v9 = &selRef_setTextAlignment_;
    v43 = v11;
    v44 = v12;
    v56 = v1;
    while (1)
    {
      if (v53)
      {
        v15 = sub_76A770();
      }

      else
      {
        if (v14 >= *(v52 + 16))
        {
          goto LABEL_31;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v57 = v14 + 1;
      (*v50)(v8, v51, v2);
      v17 = [v1 v9[28]];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      [v17 bounds];

      v19 = [v1 v9[28]];
      if (!v19)
      {
        goto LABEL_34;
      }

      v20 = v19;
      [v19 safeAreaInsets];

      (*v49)(v5, v8, v2);
      if (qword_93DFB8 != -1)
      {
        swift_once();
      }

      v21 = v54;
      sub_765670();
      (*v48)(v8, v2);
      v3 = v21;
      sub_765550();
      v23 = v22;
      (*v47)(v21, v55);
      if (v23 > 1.0 || (v42[8] & 1) == 0 && v14 == *v42)
      {
        v24 = v16;
        v25 = [v24 parentViewController];
        v9 = &selRef_setTextAlignment_;
        if (!v25 || (v26 = v25, sub_BE70(0, &qword_9434E0, UIViewController_ptr), v27 = v8, v28 = v5, v29 = v2, v30 = v56, v31 = sub_76A1C0(), v26, v30, v2 = v29, v5 = v28, v8 = v27, v9 = &selRef_setTextAlignment_, (v31 & 1) == 0))
        {
          v32 = v56;
          [v56 addChildViewController:v24];
          v33 = [v32 v9[28]];
          if (!v33)
          {
            goto LABEL_36;
          }

          v34 = v33;
          v35 = [v24 v9[28]];
          if (!v35)
          {
            goto LABEL_37;
          }

          v36 = v35;
          [v34 addSubview:v35];

          [v24 didMoveToParentViewController:v32];
        }

        v3 = [v24 v9[28]];

        v11 = v43;
        if (!v3)
        {
          goto LABEL_35;
        }

        [v3 setAlpha:1.0];

        v1 = v56;
      }

      else
      {
        v37 = [v16 parentViewController];
        v9 = &selRef_setTextAlignment_;
        v1 = v56;
        if (v37)
        {
          v38 = v37;
          sub_BE70(0, &qword_9434E0, UIViewController_ptr);
          v39 = v1;
          v3 = sub_76A1C0();

          v11 = v43;
          if (v3)
          {
            [v16 willMoveToParentViewController:0];
            v40 = [v16 view];
            if (!v40)
            {
              goto LABEL_38;
            }

            v3 = v40;
            [v40 removeFromSuperview];

            [v16 removeFromParentViewController];
          }
        }
      }

      ++v14;
      if (v57 == v44)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void sub_6CA11C(unint64_t a1, unint64_t a2)
{
  if (a2 != a1)
  {
    v4 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers;
    v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers];
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) > a2)
      {
        v6 = *(v5 + 8 * a2 + 32);
        if ((v5 & 0xC000000000000001) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_21;
    }

    v6 = sub_76A770();

    v5 = *&v2[v4];
    if ((v5 & 0xC000000000000001) == 0)
    {
LABEL_6:
      if ((a1 & 0x8000000000000000) == 0)
      {
        if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) > a1)
        {
          v7 = *(v5 + 8 * a1 + 32);
          goto LABEL_9;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_18:

    v25 = sub_76A770();

    v7 = v25;
LABEL_9:
    v8 = v7;
    v9 = [v8 parentViewController];
    if (!v9 || (v10 = v9, sub_BE70(0, &qword_9434E0, UIViewController_ptr), v11 = v2, v12 = sub_76A1C0(), v10, v11, (v12 & 1) == 0))
    {
      [v2 addChildViewController:v8];
      v13 = [v2 view];
      if (!v13)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v13;
      v15 = [v8 view];
      if (!v15)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v16 = v15;
      [v14 addSubview:v15];

      [v8 didMoveToParentViewController:v2];
    }

    v17 = [v8 view];

    if (v17)
    {
      [v17 setAlpha:0.0];

      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = v6;
      *(v19 + 24) = v8;
      v30 = sub_6CC318;
      v31 = v19;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_23F0CC;
      v29 = &unk_89D290;
      v20 = _Block_copy(&v26);
      v21 = v8;
      v22 = v6;

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_6CC338;
      v31 = v23;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_3D6D80;
      v29 = &unk_89D2B8;
      v24 = _Block_copy(&v26);

      [v18 animateWithDuration:v20 animations:v24 completion:0.3];
      _Block_release(v24);
      _Block_release(v20);

      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void sub_6CA4CC(void *a1, void *a2)
{
  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setAlpha:0.0];

  v5 = [a2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setAlpha:1.0];
}

void sub_6CA570(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_6C9A74();
  }
}

id sub_6CA654(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_6CA800(double a1, double a2)
{
  v3 = v2;
  v5 = sub_7656A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = sub_7656C0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v5, v14);
  (*(v6 + 16))(v8, v11, v5);
  sub_40DC7C(0.0);
  sub_765670();
  (*(v6 + 8))(v11, v5);
  sub_765620();
  (*(v13 + 8))(v16, v12);
  sub_769DA0();
  [*&v3[qword_962468] sizeThatFits:?];
  [v3 layoutMargins];
  sub_769DC0();
  return a1;
}

double sub_6CAACC(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_6CA800(a2, a3);

  return v6;
}

void sub_6CAB20()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = sub_7656A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = sub_7656C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PaletteContentView(0, *(&stru_20.filesize + (v3 & v2)), v15, v16);
  v26.receiver = v1;
  v26.super_class = v17;
  objc_msgSendSuper2(&v26, "layoutSubviews");
  [v1 bounds];
  (*(v5 + 104))(v10, enum case for PageGrid.Direction.vertical(_:), v4);
  (*(v5 + 16))(v7, v10, v4);
  sub_40DC7C(0.0);
  sub_765670();
  (*(v5 + 8))(v10, v4);
  sub_765620();
  v19 = v18;
  (*(v12 + 8))(v14, v11);
  [v1 bounds];
  sub_769DA0();
  v21 = v20;
  [*&v1[qword_962468] sizeThatFits:?];
  v23 = v22;
  v24 = *&v1[qword_962468];
  [v1 layoutMargins];
  [v24 setFrame:{v19, v25, v21, v23}];
}

void sub_6CAE74(void *a1)
{
  v1 = a1;
  sub_6CAB20();
}

id sub_6CAEE4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for PaletteContentView(0, *(&stru_20.filesize + (swift_isaMask & *v5)), a4, a5);
  v8.receiver = v5;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, "dealloc");
}

unint64_t sub_6CAF7C()
{
  result = qword_9624F0;
  if (!qword_9624F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9624F0);
  }

  return result;
}

uint64_t sub_6CAFD0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_6CB010()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_isPresenterLoaded) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents;
  v2 = [objc_allocWithZone(UISegmentedControl) init];
  v3 = sub_BD88(&qword_9624F8, &unk_7AE1D0);
  v4 = objc_allocWithZone(v3);
  *&v4[qword_962468] = v2;
  v12.receiver = v4;
  v12.super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setLayoutMargins:{8.0, 0.0, 8.0, 0.0}];
  [v6 setPreservesSuperviewLayoutMargins:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v5;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v6 addSubview:v10];

  *(v0 + v1) = v6;
  v11 = v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_segmentViewControllers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectCategoryViewController) = 0;
  sub_76A840();
  __break(1u);
}

void sub_6CB200()
{
  v1 = v0;
  sub_763110();
  if (v2)
  {
    v3 = sub_769210();
  }

  else
  {
    v3 = 0;
  }

  [v0 setTitle:v3];

  v4 = sub_7630E0();
  v5 = &v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex];
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex];
  v7 = v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectedSegmentIndex + 8];
  *v5 = v4;
  v5[8] = 0;
  [*(*&v1[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_paletteContents] + qword_962468) setSelectedSegmentIndex:v4];
  if (v7)
  {

    sub_6C9A74();
  }

  else
  {

    sub_6CA11C(v4, v6);
  }
}

void sub_6CB2F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_768CD0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_768670();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_768940();
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_7630C0();
  if (v17 >> 62)
  {
    v45 = v5;
    v24 = sub_76A860();
    v5 = v45;

    if (v24)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));

    if (v18)
    {
LABEL_3:
      if (qword_93DEF8 != -1)
      {
        swift_once();
      }

      v19 = sub_768FF0();
      sub_BE38(v19, qword_9A0418);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77DC20;
      v53 = type metadata accessor for TopChartsDiffablePageViewController();
      v52[0] = v2;
      v20 = v2;
      sub_7685C0();
      sub_10A2C(v52, &unk_93FBD0, &qword_77DFA0);
      sub_768540();
      swift_getErrorValue();
      v21 = v50;
      v22 = v51;
      v53 = v51;
      v23 = sub_B1B4(v52);
      (*(*(v22 - 8) + 16))(v23, v21, v22);
      sub_7685E0();
      sub_10A2C(v52, &unk_93FBD0, &qword_77DFA0);
      sub_768EA0();

      return;
    }
  }

  v45 = v5;
  v43 = v4;
  sub_767230();
  sub_6CC3B4(&qword_962508, &type metadata accessor for TopChartsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  swift_errorRetain();

  v44 = a1;
  v25 = sub_7671F0();
  v26 = OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController;
  v27 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_overlayViewController];
  sub_761930();

  v28 = *&v2[v26];
  *&v2[v26] = v25;
  v29 = v25;

  v30 = [v2 view];
  if (v30)
  {
    v31 = v30;
    [v30 bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v52[0] = v33;
    v52[1] = v35;
    v52[2] = v37;
    v53 = v39;
    v54 = 0;
    sub_761920();

    sub_763130();
    v40 = sub_7570A0();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v16, 1, v40) == 1)
    {
      sub_10A2C(v16, &unk_93FD30, qword_77F240);
    }

    else
    {
      sub_757020();
      (*(v41 + 8))(v16, v40);
    }

    sub_75BE60();
    swift_allocObject();
    swift_errorRetain();
    sub_75BE50();
    sub_761800();
    sub_759D10();
    sub_768CB0();
    sub_768930();

    (*(v45 + 8))(v7, v43);
    (*(v48 + 8))(v10, v49);
    (*(v46 + 8))(v13, v47);
  }

  else
  {
    __break(1u);
  }
}

void *sub_6CB9C8(void *a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_BD88(&qword_962510, &qword_7AE1E0);
  __chkstk_darwin(v7 - 8);
  v53 = v45 - v8;
  v9 = sub_BD88(&qword_962518, &qword_7AE1E8);
  __chkstk_darwin(v9 - 8);
  v11 = v45 - v10;
  v48 = sub_BD88(&qword_962520, &qword_7AE1F0);
  __chkstk_darwin(v48);
  v13 = v45 - v12;
  v14 = sub_757640();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v52 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v45 - v19;
  v21 = &a3[OBJC_IVAR____TtC18ASMessagesProvider28SelectCategoryViewController_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v57.receiver = a3;
  v57.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v57, "initWithNibName:bundle:", 0, 0, v18);
  v23 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  v47 = v22;
  v51 = v20;
  sub_757630();
  v24 = a1[5];
  v54 = a1;
  sub_B170(a1 + 2, v24);
  sub_762AE0();
  v25 = v53;
  sub_6CC344(v11, v53);
  v49 = *(v15 + 16);
  v50 = v15 + 16;
  v49(v13, v25, v14);
  v26 = *(sub_BD88(&qword_962528, &qword_7AE1F8) + 36);
  sub_6CC3B4(&qword_962530, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  sub_7696F0();
  v28 = *(v15 + 8);
  v27 = v15 + 8;
  v46 = v28;
  v28(v25, v14);
  sub_7696C0();
  if (*&v13[v26] == v55[0])
  {
    v36 = 0;
    goto LABEL_10;
  }

  v45[1] = v27;
  v53 = sub_6CC3B4(&qword_962538, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v29 = 0;
  while (1)
  {
    sub_769180();
    v33 = sub_769710();
    v35 = *v34;
    v33(v55, 0);
    v36 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v29)
    {
      v37 = v35;
      v38 = v51;
      sub_757600(v37);
      v39 = v52;
      v49(v52, v38, v14);
      v40 = objc_allocWithZone(type metadata accessor for CategoryListViewController(0));
      v41 = v54;

      sub_71CDE4(v41, a2, v39, v40);

      sub_769440();
      if (*(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v56 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
LABEL_8:
        sub_7694C0();
      }
    }

    else
    {
      v30 = v54;

      v31 = v52;
      sub_757630();
      v32 = objc_allocWithZone(type metadata accessor for CategoryListViewController(0));
      sub_71CDE4(v30, a2, v31, v32);

      sub_769440();
      if (*(&dword_10 + (v56 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v56 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        goto LABEL_8;
      }
    }

    sub_769500();
    v23 = v56;
    sub_7696C0();
    ++v29;
    if (*&v13[v26] == v55[0])
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  *&v13[*(v48 + 36)] = v36;
  sub_10A2C(v13, &qword_962520, &qword_7AE1F0);

  v42 = v47;
  sub_141B3C(v23);

  sub_BE70(0, &qword_9434E0, UIViewController_ptr);
  isa = sub_769450().super.isa;

  [v42 setViewControllers:isa];

  v46(v51, v14);
  return v42;
}

void sub_6CBFD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_presenter);
  sub_757630();
  v25 = sub_763140();
  v26 = &protocol witness table for TopChartsDiffablePagePresenter;
  *&v24 = v8;
  v9 = *(v5 + 8);

  v9(v7, v4);
  type metadata accessor for TopChartsCategoriesDataSource();
  v10 = swift_allocObject();
  sub_10914(&v24, (v10 + 2));
  sub_75A110();
  swift_allocObject();

  v11 = sub_75A0F0();
  v12 = objc_allocWithZone(type metadata accessor for SelectCategoryViewController());
  v13 = sub_6CB9C8(v10, v11, v12);

  v14 = v13;
  v27._object = 0x80000000007F1540;
  v27._countAndFlagsBits = 0xD000000000000015;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_75B750(v27, v28);
  v15 = sub_769210();

  [v14 setTitle:v15];

  v16 = (v14 + OBJC_IVAR____TtC18ASMessagesProvider28SelectCategoryViewController_selectionHandler);
  v17 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider28SelectCategoryViewController_selectionHandler);
  v18 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider28SelectCategoryViewController_selectionHandler + 8);
  *v16 = sub_6CC340;
  v16[1] = v8;
  swift_retain_n();
  sub_F704(v17, v18);
  sub_71BA40();

  v19 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_categoriesBarButton);
  v20 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_objectGraph);
  v21 = v19;
  sub_71CF94(v19, v20);

  v22 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectCategoryViewController);
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider35TopChartsDiffablePageViewController_selectCategoryViewController) = v14;
}

uint64_t sub_6CC2D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_6CC320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_6CC344(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_962510, &qword_7AE1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6CC3B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6CC3FC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6CC448(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_133D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_6CC49C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6CC4F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_6CC5CC()
{
  sub_396E8();
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.929411765 green:0.964705882 blue:1.0 alpha:1.0];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.11372549 green:0.137254902 blue:0.176470588 alpha:1.0];
  v2.super.isa = v0;
  qword_9A0850 = sub_76A0C0(v2, v1).super.isa;
}

void sub_6CC670()
{
  sub_396E8();
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.07];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.05];

  v5.super.isa = v2;
  v6.super.isa = v4;
  qword_9A0858 = sub_76A0C0(v5, v6).super.isa;
}

uint64_t sub_6CC744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_75ACC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7677A0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6, v12);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 != enum case for ItemBackground.ad(_:))
  {
    if (v15 != enum case for ItemBackground.insetAd(_:))
    {
      if (v15 == enum case for ItemBackground.clearAdWithSeparator(_:))
      {
        (*(v11 + 56))(a3, 1, 1, v10);
        return (*(v7 + 8))(v9, v6);
      }

      goto LABEL_12;
    }

LABEL_5:
    (*(v7 + 8))(v9, v6);
    sub_767790();
    if (qword_93E100 != -1)
    {
      swift_once();
    }

    v17 = qword_9A0850;
    sub_767760();
    sub_767760();
    if (qword_93E108 != -1)
    {
      swift_once();
    }

    v18 = qword_9A0858;
    sub_767720();
    sub_767730();
    sub_767740();
    goto LABEL_15;
  }

  sub_765550();
  if (v16 > 1.0)
  {
    goto LABEL_5;
  }

LABEL_12:
  sub_767790();
  if (qword_93E100 != -1)
  {
    swift_once();
  }

  v20 = qword_9A0850;
  sub_767760();
  (*(v7 + 8))(v9, v6);
LABEL_15:
  sub_6CCC04(a1, a2);
  sub_767770();
  (*(v11 + 32))(a3, v14, v10);
  return (*(v11 + 56))(a3, 0, 1, v10);
}

uint64_t sub_6CCAD8(uint64_t a1)
{
  sub_767790();
  if (qword_93E100 != -1)
  {
    swift_once();
  }

  v1 = qword_9A0850;
  sub_767760();
  sub_767760();
  if (qword_93E108 != -1)
  {
    swift_once();
  }

  v2 = qword_9A0858;
  sub_767720();
  sub_767730();
  sub_767740();
  return sub_767770();
}

double sub_6CCC04(uint64_t a1, uint64_t a2)
{
  v3 = sub_75ACC0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765550();
  if (v7 <= 1.0)
  {
    (*(v4 + 16))(v6, a2, v3);
    if ((*(v4 + 88))(v6, v3) == enum case for ItemBackground.insetAd(_:))
    {
      return -10.0;
    }

    else
    {
      sub_765570();
      v9 = v10 * -0.5;
      sub_765620();
      sub_765570();
      sub_765620();
      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    sub_765570();
    v9 = v8 * -0.5;
    sub_7655F0();
    sub_765570();
    sub_7655F0();
  }

  return v9;
}

double sub_6CCDF8()
{
  sub_75F8F0();
  sub_6CCF3C(&qword_962590, &type metadata accessor for ArcadeDownloadPackCard, &protocol conformance descriptor for ArcadeDownloadPackCard);
  sub_75C750();
  if (!v6)
  {
    return 0.0;
  }

  v0 = sub_75F8D0();
  if (v1)
  {
    v2 = sub_75F8E0();
    if (v2 >> 62)
    {
      v3 = sub_76A860();
    }

    else
    {
      v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    }
  }

  else
  {
    v3 = v0;
  }

  swift_getKeyPath();
  sub_75C7B0();

  v4 = sub_755CB8(v3, v6);

  return v4;
}

uint64_t sub_6CCF3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_6CCF98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (v2 != 2)
  {
    return v4 != 2 && ((v4 ^ v2) & 1) == 0;
  }

  return v4 == 2;
}

uint64_t sub_6CCFFC()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_962598);
  sub_BE38(v4, qword_962598);
  if (qword_93DAB8 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F820);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

void sub_6CD1D4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_7666D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v55 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760AD0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v54 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  if (qword_93DAB0 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v10, qword_99F808);
  v22 = *(v11 + 16);
  v22(v19, v21, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v23 = objc_allocWithZone(sub_75BB20());
  *&v5[v20] = sub_75BB10();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons] = _swiftEmptyArrayStorage;
  v24 = &v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v24 = 0;
  v24[8] = 1;
  v25 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  *&v5[v25] = [objc_allocWithZone(CALayer) init];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton;
  sub_75C560();
  if (qword_93DAB8 != -1)
  {
    swift_once();
  }

  v27 = sub_BE38(v10, qword_99F820);
  v22(v55, v27, v10);
  *&v5[v26] = sub_75C550();
  v28 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_buttonContainer;
  *&v5[v28] = [objc_allocWithZone(type metadata accessor for SubmitButtonContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_hasDivider] = 1;
  v29 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_dividerView;
  *&v5[v29] = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted] = 0;
  v30 = &v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  v32 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  *v31 = 0;
  v31[1] = 0;
  v56.receiver = v5;
  v56.super_class = v32;
  v33 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  v34 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  v35 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
  v36 = v33;
  [v35 setTextAlignment:1];
  v37 = v36;
  v38 = [v37 contentView];
  [v38 addSubview:*&v33[v34]];

  v39 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  v40 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
  v41 = [v37 tintColor];

  if (v41)
  {
    v42 = [v41 CGColor];

    [v40 setBackgroundColor:v42];
    [*&v37[v39] setCornerRadius:20.0];
    v43 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton;
    v44 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton];
    v57._countAndFlagsBits = 0x465F54494D425553;
    v57._object = 0xEF4B434142444545;
    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    sub_75B750(v57, v58);
    v45 = sub_769210();

    [v44 setTitle:v45 forState:0];

    [*&v37[v43] addTarget:v37 action:"didTapSubmitButton:" forControlEvents:64];
    [*&v37[v43] setEnabled:0];
    v46 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_buttonContainer;
    [*&v37[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_buttonContainer] setLayoutMargins:{5.0, 10.0, 5.0, 10.0}];
    v47 = *&v37[v46];
    v48 = *&v37[v43];
    v49 = *&v47[OBJC_IVAR____TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer_submitButton];
    *&v47[OBJC_IVAR____TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer_submitButton] = v48;
    v50 = v48;
    v51 = v47;

    [v51 addSubview:v50];
    [v51 setNeedsLayout];

    v52 = [v37 contentView];
    [v52 addSubview:*&v37[v46]];

    v53 = [v37 contentView];
    [v53 addSubview:*&v37[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_dividerView]];
  }

  else
  {
    __break(1u);
  }
}

void sub_6CD8AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v4 >> 62)
  {
    v5 = sub_76A860();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_76A770();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = a1;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    v10 = sub_76A860();
    if (v10)
    {
LABEL_12:
      if (v10 >= 1)
      {

        v11 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_76A770();
          }

          else
          {
            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          ++v11;
          v14 = [v1 contentView];
          [v14 addSubview:v13];

          [v13 addTarget:v1 action:"feedbackButtonSelectedWithFeedbackOptioButton:" forControlEvents:64];
        }

        while (v10 != v11);

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return;
    }
  }

  else
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  [v1 setNeedsLayout];
}

uint64_t sub_6CDA9C()
{
  v76 = sub_7664F0();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_76A920();
  v2 = *(v73 - 8);
  __chkstk_darwin(v73);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_767050();
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v70 - v8;
  v79 = sub_767070();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_766F00();
  v103 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_766F20();
  v11 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_766F30();
  v85 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_766F50();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_766F70();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  v119.receiver = v0;
  v119.super_class = v20;
  v81 = v20;
  objc_msgSendSuper2(&v119, "layoutSubviews");
  (*(v15 + 104))(v17, enum case for VerticalStackLayout.Alignment.center(_:), v14);
  v117 = sub_766970();
  v118 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v116);
  sub_766960();
  v100 = v19;
  sub_766F60();
  v21 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  if (v21 >> 62)
  {
    goto LABEL_32;
  }

  v98 = v21 & 0xFFFFFFFFFFFFFF8;
  for (i = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    v72 = v2;
    v23 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex;

    v24 = &protocol witness table for UIView;
    v71 = v6;
    v80 = v0;
    if (!i)
    {
      break;
    }

    v25 = 0;
    v70 = 0;
    v102 = (v0 + v23);
    v91 = v21 & 0xC000000000000001;
    v89 = enum case for VerticalStackLayout.Child.Alignment.center(_:);
    v88 = (v11 + 104);
    v87 = (v103 + 8);
    v86 = (v11 + 8);
    ++v85;
    v90 = v21;
    while (1)
    {
      if (v91)
      {
        v26 = sub_76A770();
      }

      else
      {
        if (v25 >= *(v98 + 16))
        {
          goto LABEL_31;
        }

        v26 = *(v21 + 8 * v25 + 32);
      }

      v0 = v26;
      v2 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v11 = i;
      v27 = v4;
      [v26 setLayoutMargins:{5.0, 10.0, 5.0, 10.0}];
      v28 = v24;
      v117 = type metadata accessor for FeedbackButton(0);
      v118 = v24;
      v116 = v0;
      v29 = qword_93E110;
      v103 = v0;
      if (v29 != -1)
      {
        swift_once();
      }

      v30 = sub_766CA0();
      v31 = sub_BE38(v30, qword_962598);
      v114 = v30;
      v115 = &protocol witness table for StaticDimension;
      v32 = sub_B1B4(&v113);
      (*(*(v30 - 8) + 16))(v32, v31, v30);
      v33 = v94;
      v34 = v95;
      (*v88)(v94, v89, v95);
      v110 = _swiftEmptyArrayStorage;
      sub_6D1B30(&qword_9626D8, &type metadata accessor for VerticalStackLayout.ExclusionCondition, &protocol conformance descriptor for VerticalStackLayout.ExclusionCondition);
      sub_BD88(&qword_9626E0, &qword_7AE3A0);
      sub_6D1B78();
      v35 = v96;
      v36 = v97;
      sub_76A5A0();
      v37 = v92;
      sub_766F10();
      (*v87)(v35, v36);
      (*v86)(v33, v34);
      sub_BEB8(&v113);
      sub_BEB8(&v116);
      sub_766F40();
      (*v85)(v37, v93);
      if ((*(v102 + 8) & 1) != 0 || v25 != *v102)
      {

        ++v25;
        i = v11;
        v4 = v27;
        v6 = v99;
        v0 = v101;
        v24 = v28;
        v21 = v90;
        if (v2 == v11)
        {
          v103 = v70;
          goto LABEL_19;
        }
      }

      else
      {

        ++v25;
        v70 = v103;
        i = v11;
        v4 = v27;
        v6 = v99;
        v0 = v101;
        v24 = v28;
        v21 = v90;
        if (v2 == v11)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v98 = v21 & 0xFFFFFFFFFFFFFF8;
  }

  v103 = 0;
  v6 = v99;
  v0 = v101;
LABEL_19:

  v38 = v84;
  v117 = v84;
  v118 = &protocol witness table for VerticalStackLayout;
  v39 = sub_B1B4(&v116);
  (*(v83 + 16))(v39, v100, v38);
  v40 = v80;
  v41 = *&v80[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
  v114 = sub_75BB20();
  v115 = v24;
  v113 = v41;
  v42 = v24;
  v43 = enum case for FlankedVerticalLayout.Alignment.center(_:);
  v44 = v0[13];
  v101 = v0 + 13;
  v44(v82, enum case for FlankedVerticalLayout.Alignment.center(_:), v6);
  v45 = qword_93DCE0;
  v46 = v41;
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = sub_766CA0();
  sub_BE38(v47, qword_99FDE8);
  sub_766470();
  sub_766700();
  v49 = v48;
  v50 = v73;
  v102 = *(v72 + 8);
  v102(v4, v73);
  v111 = &type metadata for CGFloat;
  v112 = &protocol witness table for CGFloat;
  v110 = v49;
  v51 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_buttonContainer];
  v52 = type metadata accessor for SubmitButtonContainer();
  v109 = v42;
  v108 = v52;
  v107 = v51;
  v44(v71, v43, v6);
  v53 = qword_93DCF0;
  v54 = v51;
  if (v53 != -1)
  {
    swift_once();
  }

  sub_BE38(v47, qword_99FE18);
  sub_766470();
  sub_766700();
  v56 = v55;
  v102(v4, v50);
  v105 = &type metadata for CGFloat;
  v106 = &protocol witness table for CGFloat;
  v104 = v56;
  v57 = v77;
  sub_767060();
  v58 = [v40 traitCollection];
  sub_767500();
  v60 = v59;

  sub_75D650();
  v61 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_hasDivider;
  if (v40[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_hasDivider] == 1)
  {
    sub_766470();
    sub_766700();
    v102(v4, v50);
  }

  v62 = v74;
  sub_767040();
  (*(v75 + 8))(v62, v76);
  v63 = v103;
  if (v103)
  {
    v64 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
    v65 = v103;
    [v64 setAnchorPoint:{0.0, 0.0}];
    [v65 frame];
    sub_769D50();
    [v64 setFrame:?];
  }

  if (v40[v61] == 1)
  {
    v66 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_dividerView];
    sub_75D650();
    MinX = CGRectGetMinX(v120);
    sub_75D650();
    v68 = CGRectGetMaxY(v121) - v60;
    sub_75D650();
    [v66 setFrame:{MinX, v68, CGRectGetWidth(v122), v60}];
  }

  (*(v78 + 8))(v57, v79);
  return (*(v83 + 8))(v100, v84);
}

id sub_6CE9CC(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  objc_msgSendSuper2(&v14, "prepareForReuse");
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground] removeFromSuperlayer];
  v2 = &v1[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v2 = 0;
  v2[8] = 1;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton] setEnabled:0];
  v13 = v1;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = sub_76A770();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((v2[8] & 1) != 0 || v5 != *v2)
      {
        v6 = [v9 tintColor];
        v7 = v10;
        v8 = v6;
      }

      else
      {
        v6 = [objc_opt_self() whiteColor];
        v7 = v6;
        v8 = v10;
      }

      [v10 setTitleColor:v6 forState:0];

      ++v5;
      if (v11 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:

  return [v13 setNeedsLayout];
}

id sub_6CEBF8(unint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_41:
    v4 = sub_76A860();
  }

  else
  {
    v4 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      v3 = 0;
      goto LABEL_15;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_76A770();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_39;
      }

      v6 = *(v2 + v5 + 4);
    }

    v7 = v6;
    sub_BE70(0, &qword_94AB00, NSObject_ptr);
    v8 = sub_76A1C0();

    if (v8)
    {
      break;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_40;
    }
  }

  v3 = v5;
LABEL_15:

  v10 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
  [v10 removeFromSuperlayer];
  v11 = &v25[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v11 = v3;
  v11[8] = v4 == v5;
  if (v4 != v5)
  {
    v2 = [v25 contentView];
    v12 = [v2 layer];

    [v12 insertSublayer:v10 atIndex:0];
  }

  [*&v25[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton] setEnabled:v4 != v5];
  v13 = *&v25[v24];
  if (v13 >> 62)
  {
    v14 = sub_76A860();
  }

  else
  {
    v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
  }

  if (v14)
  {
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = sub_76A770();
      }

      else
      {
        if (v15 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_38;
        }

        v18 = *(v13 + 8 * v15 + 32);
      }

      v19 = v18;
      v3 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ((v11[8] & 1) != 0 || v15 != *v11)
      {
        v16 = [v18 tintColor];
        v17 = v19;
        v2 = v16;
      }

      else
      {
        v16 = [objc_opt_self() whiteColor];
        v17 = v16;
        v2 = v19;
      }

      [v19 setTitleColor:v16 forState:0];

      ++v15;
      if (v3 == v14)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_31:

  result = [v25 setNeedsLayout];
  if ((v11[8] & 1) == 0)
  {
    v21 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
    if (v21)
    {
      v22 = *v11;
      v23 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption + 8];

      v21(v22);

      return sub_F704(v21, v23);
    }
  }

  return result;
}

uint64_t sub_6CF04C(uint64_t a1)
{
  sub_BD88(&qword_9626C8, &unk_7AE390);
  sub_6D1A3C();
  return sub_768AF0();
}

uint64_t sub_6CF0C4(char a1)
{
  sub_BD88(&qword_9626C8, &unk_7AE390);
  sub_6D1A3C();
  return sub_768AF0();
}

id sub_6CF13C()
{
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription] setText:0];
  sub_6CD8AC(_swiftEmptyArrayStorage);
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground] removeFromSuperlayer];
  v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v1 = 0;
  v1[8] = 1;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton];
  [v2 setEnabled:0];
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  v20 = v2;
  v21 = v0;
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = sub_76A770();
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((v1[8] & 1) != 0 || v5 != *v1)
      {
        v6 = [v9 tintColor];
        v7 = v10;
        v8 = v6;
      }

      else
      {
        v6 = [objc_opt_self() whiteColor];
        v7 = v6;
        v8 = v10;
      }

      [v10 setTitleColor:v6 forState:{0, v20}];

      ++v5;
      if (v11 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_15:

  [v21 setNeedsLayout];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted;
  *(v21 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted) = 0;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v21;
  aBlock[4] = sub_6D282C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_89D530;
  v15 = _Block_copy(aBlock);
  v16 = v21;

  [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
  _Block_release(v15);
  [v16 setUserInteractionEnabled:(*(v21 + v12) & 1) == 0];
  if (*(v21 + v12) == 1)
  {
    v17._countAndFlagsBits = 0x455454494D425553;
    v17._object = 0xE900000000000044;
  }

  else
  {
    v17._countAndFlagsBits = 0x465F54494D425553;
    v17._object = 0xEF4B434142444545;
  }

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_75B750(v17, v23);
  v18 = sub_769210();

  [v20 setTitle:v18 forState:0];

  [v20 setEnabled:(*(v21 + v12) & 1) == 0];
  [v20 setNeedsLayout];
  v16[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_hasDivider] = 1;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_dividerView] setHidden:0];
  return [v16 setNeedsLayout];
}

uint64_t type metadata accessor for FeedbackButton(uint64_t a1)
{
  result = qword_962648;
  if (!qword_962648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6CF650(uint64_t a1)
{
  sub_2F1CA0(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_6CF9A0()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SubmitButtonContainer();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer_submitButton];
  if (v1)
  {
    v2 = v1;
    sub_75D650();
    [v2 measurementsWithFitting:v0 in:{v3, v4}];
    v5 = v2;
    sub_75D650();
    [v5 setFrame:?];
  }
}

id sub_6CFACC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_6CFB38(uint64_t a1)
{
  v1 = sub_764AD0();
  if (*(v1 + 16))
  {
    sub_134D8(v1 + 32, v4);

    sub_BD88(&unk_944DA0, &unk_77EB70);
    sub_762FD0();
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
  }

  return 0;
}

double sub_6CFBD0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, double a6, double a7)
{
  v83 = a4;
  v77 = a3;
  v104 = a2;
  v103 = a1;
  v85 = sub_76A920();
  v8 = *(v85 - 8);
  __chkstk_darwin(v85);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_766F00();
  v75 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_766F20();
  v74 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_766F30();
  v73 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_766F50();
  v14 = *(v87 - 1);
  __chkstk_darwin(v87);
  v88 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_766F70();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v105 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_762D10();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93DAB0 != -1)
  {
    swift_once();
  }

  v82 = v10;
  v84 = v8;
  v22 = sub_7666D0();
  sub_BE38(v22, qword_99F808);
  v23 = [a5 traitCollection];
  v24 = sub_769E10();

  v25 = sub_7653B0();
  v113 = v25;
  v99 = sub_6D1B30(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v114 = v99;
  v26 = sub_B1B4(&v112);
  v27 = *(v25 - 8);
  v28 = *(v27 + 104);
  v98 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v100 = v25;
  v97 = v28;
  v96 = v27 + 104;
  v28(v26);
  v29 = v21;
  v30 = v24;
  sub_765C30();
  sub_BEB8(&v112);

  v79 = v30;
  sub_762D00();
  sub_762CE0();
  v31 = *(v18 + 8);
  v101 = v20;
  v104 = v17;
  v103 = v18 + 8;
  v95 = v31;
  v31(v20, v17);
  if (qword_93DAB8 != -1)
  {
    swift_once();
  }

  v32 = sub_BE38(v22, qword_99F820);
  v86 = a5;
  v33 = [a5 traitCollection];
  v76 = v32;
  v78 = v29;
  v102 = sub_769E10();

  (*(v14 + 104))(v88, enum case for VerticalStackLayout.Alignment.center(_:), v87);
  v110 = sub_766970();
  v111 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v109);
  sub_766960();
  sub_766F60();
  v34 = *(v77 + 16);
  if (v34)
  {
    LODWORD(v88) = enum case for VerticalStackLayout.Child.Alignment.left(_:);
    v87 = (v74 + 104);
    v35 = (v75 + 8);
    v36 = (v74 + 8);
    v37 = (v73 + 8);
    v38 = v77 + 40;
    v39 = v91;
    do
    {
      v40 = v100;
      v110 = v100;
      v111 = v99;
      v41 = sub_B1B4(&v109);
      v97(v41, v98, v40);

      v42 = v102;
      sub_765C30();
      sub_BEB8(&v109);
      v43 = v101;
      sub_762D00();
      sub_762CE0();
      v95(v43, v104);
      v44 = v110;
      v45 = v111;
      v46 = sub_B170(&v109, v110);
      v108[3] = v44;
      v108[4] = v45[1];
      v47 = sub_B1B4(v108);
      (*(*(v44 - 8) + 16))(v47, v46, v44);
      if (qword_93E110 != -1)
      {
        swift_once();
      }

      v48 = sub_766CA0();
      v49 = sub_BE38(v48, qword_962598);
      v107[3] = v48;
      v107[4] = &protocol witness table for StaticDimension;
      v50 = sub_B1B4(v107);
      (*(*(v48 - 8) + 16))(v50, v49, v48);
      v51 = v92;
      (*v87)(v39, v88, v92);
      v106 = _swiftEmptyArrayStorage;
      sub_6D1B30(&qword_9626D8, &type metadata accessor for VerticalStackLayout.ExclusionCondition, &protocol conformance descriptor for VerticalStackLayout.ExclusionCondition);
      sub_BD88(&qword_9626E0, &qword_7AE3A0);
      sub_6D1B78();
      v52 = v93;
      v53 = v94;
      sub_76A5A0();
      v54 = v89;
      sub_766F10();
      (*v35)(v52, v53);
      (*v36)(v39, v51);
      sub_BEB8(v107);
      sub_BEB8(v108);
      sub_BEB8(&v109);
      sub_766F40();
      (*v37)(v54, v90);
      v38 += 16;
      --v34;
    }

    while (v34);
  }

  v55 = v86;
  [v86 pageMarginInsets];
  v94 = v56;
  sub_769DA0();
  sub_B170(&v112, v113);
  sub_7665B0();
  v57 = v81;
  sub_7665A0();
  v58 = [v55 traitCollection];
  v59 = sub_769E10();

  v115._countAndFlagsBits = 0x465F54494D425553;
  v115._object = 0xEF4B434142444545;
  v116._countAndFlagsBits = 0;
  v116._object = 0xE000000000000000;
  sub_75B750(v115, v116);
  v60 = v100;
  v110 = v100;
  v111 = v99;
  v61 = sub_B1B4(&v109);
  v97(v61, v98, v60);
  v62 = v59;
  sub_765C30();
  sub_BEB8(&v109);
  v63 = v101;
  sub_762D00();
  sub_762CE0();
  v95(v63, v104);
  sub_B170(&v109, v110);
  sub_7665B0();
  sub_769DC0();
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v64 = sub_766CA0();
  sub_BE38(v64, qword_99FDE8);
  v65 = v82;
  sub_766470();
  sub_766700();
  v66 = *(v84 + 8);
  v67 = v85;
  v66(v65, v85);
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  sub_BE38(v64, qword_99FE18);
  sub_766470();
  sub_766700();
  v66(v65, v67);
  if (v83)
  {
    sub_766470();
    sub_766700();
    v66(v65, v67);
    v68 = [v55 traitCollection];
    sub_767500();
  }

  sub_769DC0();
  v70 = v69;

  (*(v80 + 8))(v105, v57);
  sub_BEB8(&v109);
  sub_BEB8(&v112);
  return v70;
}

void sub_6D0AFC(uint64_t a1, void *a2, double a3, double a4)
{
  if (!sub_6CFB38(a1))
  {
    return;
  }

  v7 = sub_762FB0();
  v9 = v8;
  v10 = sub_762FC0();
  v11 = v10;
  if (v10 >> 62)
  {
    v12 = sub_76A860();
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_15:

LABEL_16:
    v20 = sub_762FA0();
    sub_6CFBD0(v7, v9, _swiftEmptyArrayStorage, v20 & 1, a2, a3, a4);

    return;
  }

  v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_4:
  sub_143CDC(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v21 = v7;
    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
      }

      v14 = sub_763C80();
      v16 = v15;

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (*&v18 >= *&v17 >> 1)
      {
        sub_143CDC((*&v17 > 1uLL), *&v18 + 1, 1);
      }

      ++v13;
      *&_swiftEmptyArrayStorage[2] = *&v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * *&v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
    }

    while (v12 != v13);

    v7 = v21;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_6D0CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v82 = a3;
  v83 = a4;
  v89 = a2;
  v8 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v8 - 8);
  v91 = v78 - v9;
  v10 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v10 - 8);
  v12 = v78 - v11;
  v13 = sub_BD88(&unk_944D90, &qword_783300);
  __chkstk_darwin(v13 - 8);
  v81 = v78 - v14;
  v87 = sub_BD88(&qword_9626C8, &unk_7AE390);
  v15 = *(v87 - 8);
  v16 = v15[8];
  __chkstk_darwin(v87);
  __chkstk_darwin(v17);
  v88 = v78 - v18;
  result = sub_6CFB38(a1);
  if (result)
  {
    v78[1] = v16;
    v79 = v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v86 = v5;
    v20 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
    v21 = result;
    v22 = v20;
    sub_762FB0();
    v23 = sub_769210();

    [v22 setText:v23];

    v85 = v21;
    v24 = sub_762FC0();
    v25 = v24;
    if (v24 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
    {
      v84 = v15;
      v80 = a5;
      if (i)
      {
        aBlock = _swiftEmptyArrayStorage;
        result = sub_76A7C0();
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v27 = 0;
        v90 = v25 & 0xC000000000000001;
        do
        {
          if (v90)
          {
            v28 = sub_76A770();
          }

          else
          {
            v28 = *(v25 + 8 * v27 + 32);
          }

          v29 = sub_763C90();
          v30 = type metadata accessor for FeedbackButton(0);
          v31 = objc_allocWithZone(v30);
          if (v29)
          {
            v93 = v29;
            sub_764C80();
            v92 = v28;
            sub_768900();
            sub_6D1B30(&qword_951430, &type metadata accessor for Action, &protocol conformance descriptor for Action);
            sub_768820();
            v32 = 0;
          }

          else
          {
            v32 = 1;
          }

          v33 = sub_BD88(&unk_950960, &qword_793110);
          (*(*(v33 - 8) + 56))(v12, v32, 1, v33);
          sub_6D183C(v12, v31 + qword_962630);
          v100.receiver = v31;
          v100.super_class = v30;
          v34 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

          v35 = qword_93DAB8;
          v36 = v34;
          if (v35 != -1)
          {
            swift_once();
          }

          ++v27;
          v37 = sub_7666D0();
          v38 = sub_BE38(v37, qword_99F820);
          v39 = *(v37 - 8);
          v40 = v91;
          (*(v39 + 16))(v91, v38, v37);
          (*(v39 + 56))(v40, 0, 1, v37);
          sub_75C540();

          sub_763C80();
          v41 = sub_769210();

          [v36 setTitle:v41 forState:0];

          sub_76A7A0();
          sub_76A7D0();
          sub_76A7E0();
          sub_76A7B0();
        }

        while (i != v27);

        v42 = aBlock;
        v15 = v84;
      }

      else
      {

        v42 = _swiftEmptyArrayStorage;
      }

      v43 = v86;
      sub_6CD8AC(v42);
      swift_getObjectType();
      sub_761BB0();
      v44 = v88;
      sub_768B30();
      v92 = v15[2];
      v45 = v79;
      v46 = v44;
      v47 = v87;
      (v92)(v79, v46, v87);
      v12 = ((*(v15 + 80) + 16) & ~*(v15 + 80));
      v48 = swift_allocObject();
      v49 = v15[4];
      v15 += 4;
      a5 = v49;
      (v49)(&v12[v48], v45, v47);
      v50 = &v43[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
      v51 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
      v52 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption + 8];
      *v50 = sub_6D18B0;
      v50[1] = v48;
      sub_F704(v51, v52);
      (v92)(v45, v88, v47);
      v53 = swift_allocObject();
      (v49)(&v12[v53], v45, v47);
      v54 = &v43[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
      v55 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
      v56 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton + 8];
      *v54 = sub_6D19C0;
      v54[1] = v53;
      sub_F704(v55, v56);
      v57 = sub_762FA0();
      v43[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_hasDivider] = v57 & 1;
      [*&v43[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_dividerView] setHidden:(v57 & 1) == 0];
      [v43 setNeedsLayout];
      [v80 pageMarginInsets];
      [v43 setLayoutMargins:?];
      v91 = sub_6D1A3C();
      sub_768B00();
      v58 = aBlock;
      v59 = v95;
      v60 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
      [v60 removeFromSuperlayer];
      v61 = &v43[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex];
      *v61 = v58;
      v61[8] = v59;
      if ((v59 & 1) == 0)
      {
        v62 = [v43 contentView];
        v63 = [v62 layer];

        [v63 insertSublayer:v60 atIndex:0];
      }

      v92 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton];
      [v92 setEnabled:v59 ^ 1u];
      v64 = *&v43[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
      v25 = v64 >> 62 ? sub_76A860() : *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8));

      if (!v25)
      {
        break;
      }

      v65 = 0;
      while (1)
      {
        if ((v64 & 0xC000000000000001) != 0)
        {
          v67 = sub_76A770();
        }

        else
        {
          if (v65 >= *(&dword_10 + (v64 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_40;
          }

          v67 = *(v64 + 8 * v65 + 32);
        }

        v68 = v67;
        v12 = (v65 + 1);
        if (__OFADD__(v65, 1))
        {
          break;
        }

        if ((v61[8] & 1) != 0 || v65 != *v61)
        {
          v66 = [v67 tintColor];
          a5 = v68;
          v15 = v66;
        }

        else
        {
          v66 = [objc_opt_self() whiteColor];
          a5 = v66;
          v15 = v68;
        }

        [v68 setTitleColor:v66 forState:0];

        ++v65;
        if (v12 == v25)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

LABEL_34:

    v69 = v86;
    [v86 setNeedsLayout];
    sub_768B00();
    v70 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted;
    v69[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted] = BYTE1(v95) & 1;
    v71 = objc_opt_self();
    v72 = swift_allocObject();
    *(v72 + 16) = v69;
    v98 = sub_6D1AC8;
    v99 = v72;
    aBlock = _NSConcreteStackBlock;
    v95 = 1107296256;
    v96 = sub_23F0CC;
    v97 = &unk_89D4E0;
    v73 = _Block_copy(&aBlock);
    v74 = v69;

    [v71 animateWithDuration:4 delay:v73 options:0 animations:0.2 completion:0.0];
    _Block_release(v73);
    [v74 setUserInteractionEnabled:(v69[v70] & 1) == 0];
    if (v69[v70])
    {
      v75._countAndFlagsBits = 0x455454494D425553;
      v75._object = 0xE900000000000044;
    }

    else
    {
      v75._countAndFlagsBits = 0x465F54494D425553;
      v75._object = 0xEF4B434142444545;
    }

    v101._countAndFlagsBits = 0;
    v101._object = 0xE000000000000000;
    sub_75B750(v75, v101);
    v76 = sub_769210();

    v77 = v92;
    [v92 setTitle:v76 forState:0];

    [v77 setEnabled:(v69[v70] & 1) == 0];
    [v77 setNeedsLayout];
    [v74 setNeedsLayout];

    return v84[1](v88, v87);
  }

  return result;
}

uint64_t sub_6D183C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94EC40, &unk_793120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6D18B0(uint64_t a1)
{
  sub_BD88(&qword_9626C8, &unk_7AE390);

  return sub_6CF04C(a1);
}

uint64_t sub_6D192C()
{
  v1 = sub_BD88(&qword_9626C8, &unk_7AE390);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_6D19C0(char a1)
{
  sub_BD88(&qword_9626C8, &unk_7AE390);

  return sub_6CF0C4(a1);
}

unint64_t sub_6D1A3C()
{
  result = qword_9626D0;
  if (!qword_9626D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9626D0);
  }

  return result;
}

uint64_t sub_6D1A90()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_6D1AC8()
{
  v1 = *(v0 + 16);
  v2 = 0.6;
  if (!v1[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted])
  {
    v2 = 1.0;
  }

  return [v1 setAlpha:v2];
}

double sub_6D1AFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_6D1B20(uint64_t result)
{
  *result = *(v1 + 16);
  *(result + 8) = 0;
  return result;
}

uint64_t sub_6D1B30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_6D1B78()
{
  result = qword_9626E8;
  if (!qword_9626E8)
  {
    sub_133D8(&qword_9626E0, &qword_7AE3A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9626E8);
  }

  return result;
}

void sub_6D1BDC()
{
  v1 = v0;
  v2 = sub_7666D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  if (qword_93DAB0 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v2, qword_99F808);
  v14 = *(v3 + 16);
  v14(v11, v13, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v15 = objc_allocWithZone(sub_75BB20());
  *(v1 + v12) = sub_75BB10();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons) = _swiftEmptyArrayStorage;
  v16 = v1 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  *(v1 + v17) = [objc_allocWithZone(CALayer) init];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton;
  sub_75C560();
  if (qword_93DAB8 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v2, qword_99F820);
  v14(v25, v19, v2);
  *(v1 + v18) = sub_75C550();
  v20 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_buttonContainer;
  *(v1 + v20) = [objc_allocWithZone(type metadata accessor for SubmitButtonContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_hasDivider) = 1;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_dividerView;
  *(v1 + v21) = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted) = 0;
  v22 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton);
  *v23 = 0;
  v23[1] = 0;
  sub_76A840();
  __break(1u);
}

void sub_6D1FE0()
{
  v1 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  v4 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_BD88(&unk_950960, &qword_793110);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex + 8])
  {
    return;
  }

  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v13 >> 62)
  {
    if (v11 >= sub_76A860())
    {
      return;
    }
  }

  else if (v11 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
  {
    return;
  }

  v14 = *&v0[v12];
  if ((v14 & 0xC000000000000001) != 0)
  {

    v15 = sub_76A770();

    goto LABEL_8;
  }

  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v11 >= *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_23:
    __break(1u);
    return;
  }

  v15 = *(v14 + 8 * v11 + 32);
LABEL_8:
  sub_358A74(v15 + qword_962630, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &qword_94EC40, &unk_793120);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_75B460();
    v16 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();

    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v3, 1, v16) == 1)
    {
      (*(v8 + 8))(v10, v7);
      sub_10A2C(v3, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      sub_75B470();
      v18 = sub_75B460();
      sub_32A6C0(aBlock[0], 1, v18, v3);

      (*(v8 + 8))(v10, v7);

      (*(v17 + 8))(v3, v16);
    }
  }

  v19 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted;
  v0[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_isSubmitted] = 1;
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v0;
  aBlock[4] = sub_6D282C;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_89D580;
  v22 = _Block_copy(aBlock);
  v23 = v0;

  [v20 animateWithDuration:4 delay:v22 options:0 animations:0.2 completion:0.0];
  _Block_release(v22);
  [v23 setUserInteractionEnabled:(v0[v19] & 1) == 0];
  if (v0[v19] == 1)
  {
    v24._countAndFlagsBits = 0x455454494D425553;
    v24._object = 0xE900000000000044;
  }

  else
  {
    v24._countAndFlagsBits = 0x465F54494D425553;
    v24._object = 0xEF4B434142444545;
  }

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_75B750(v24, v31);
  v25 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_submitButton];
  v26 = sub_769210();

  [v25 setTitle:v26 forState:0];

  [v25 setEnabled:(v0[v19] & 1) == 0];
  [v25 setNeedsLayout];
  v27 = &v23[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  v28 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  if (v28)
  {
    v29 = *(v27 + 1);

    v28(1);
    sub_F704(v28, v29);
  }
}

double sub_6D25A0()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_9A283CDB21D4766BFE4A1C51D15B048821SubmitButtonContainer_submitButton];
  if (!v1)
  {
    return JUMeasurementsZero[0];
  }

  v2 = v1;
  [v0 layoutMargins];
  sub_769DA0();
  [v2 measurementsWithFitting:v0 in:?];
  [v0 layoutMargins];
  sub_769DC0();
  v4 = v3;
  [v0 layoutMargins];
  [v0 layoutMargins];

  return v4;
}

uint64_t initializeBufferWithCopyOfBuffer for PersonalizationFeedbackCollectionViewCell.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationFeedbackCollectionViewCell.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalizationFeedbackCollectionViewCell.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_6D2770()
{
  result = qword_9626F0;
  if (!qword_9626F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9626F0);
  }

  return result;
}

unint64_t sub_6D27C8()
{
  result = qword_9626F8;
  if (!qword_9626F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9626F8);
  }

  return result;
}

char *sub_6D283C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_navController;
  *&v4[v9] = [objc_allocWithZone(UINavigationController) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_presenter] = a1;
  v10 = &v4[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_completionCallback];
  *v10 = a2;
  *(v10 + 1) = a3;
  v16.receiver = v4;
  v16.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", 0, 0);
  if (*(a1 + 16) > 1u)
  {
    if (*(a1 + 16) != 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_6;
    }
  }

  v12 = 2;
LABEL_6:
  v13 = v11;
  [v13 setModalPresentationStyle:v12];
  if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      v14 = 0;
LABEL_11:
      [*&v13[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_navController] setModalPresentationStyle:v14];
      [v13 setModalInPresentation:1];

      return v13;
    }

LABEL_10:
    v14 = 2;
    goto LABEL_11;
  }

  if (*(a1 + 16) == 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  result = sub_76A840();
  __break(1u);
  return result;
}

double sub_6D2A74()
{
  qword_9A0868 = 0;
  swift_unknownObjectWeakInit();
  return result;
}

void sub_6D2A98()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_navController];
  [v4 setNavigationBarHidden:1 animated:0];
  [v0 addChildViewController:v4];
  v5 = [v4 view];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v0 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame:{v10, v12, v14, v16}];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v19 = [v4 view];
  if (v19)
  {
    v20 = v19;
    [v18 addSubview:v19];

    [v4 didMoveToParentViewController:v0];
    sub_6D2C8C();
    return;
  }

LABEL_11:
  __break(1u);
}

void sub_6D2C8C()
{
  v1 = v0;
  v2 = sub_7685A0();
  __chkstk_darwin(v2 - 8);
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_presenter];
  swift_beginAccess();
  v4 = *(v3 + 32);
  if (*(v4 + 16))
  {
    sub_134D8(v4 + 32, v15);
    v5 = sub_6D347C(v15);
    if (v5)
    {
      v6 = v5;
      if (qword_93DF18 != -1)
      {
        swift_once();
      }

      v7 = sub_768FF0();
      sub_BE38(v7, qword_9A0478);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768590();
      v17._countAndFlagsBits = 0x69746E6573657250;
      v17._object = 0xEB0000000020676ELL;
      sub_768580(v17);
      v14 = sub_BE70(0, &qword_9434E0, UIViewController_ptr);
      v13[0] = v6;
      v8 = v6;
      sub_768560();
      sub_10A2C(v13, &unk_93FBD0, &qword_77DFA0);
      v18._countAndFlagsBits = 0x65747320726F6620;
      v18._object = 0xEA00000000002070;
      sub_768580(v18);
      v9 = v16;
      v10 = sub_B170(v15, v16);
      v14 = v9;
      v11 = sub_B1B4(v13);
      (*(*(v9 - 8) + 16))(v11, v10, v9);
      sub_768560();
      sub_10A2C(v13, &unk_93FBD0, &qword_77DFA0);
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      sub_768580(v19);
      sub_7685B0();
      sub_768E80();

      [v8 preferredContentSize];
      [v1 setPreferredContentSize:?];
      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_navController] showViewController:v8 sender:v1];
    }

    else
    {
      sub_1626C(v15, 0xD00000000000002ALL, 0x80000000007F1950);
      sub_6D2C8C();
    }

    sub_BEB8(v15);
  }

  else
  {
    if (qword_93DF18 != -1)
    {
      swift_once();
    }

    v12 = sub_768FF0();
    sub_BE38(v12, qword_9A0478);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    (*&v0[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_completionCallback])(v0);
    if (qword_93E118 != -1)
    {
      swift_once();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_73989C();
      swift_unknownObjectRelease();
    }
  }
}

double sub_6D31D0(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_presenter];
  swift_beginAccess();
  v5 = *(v4 + 32);
  if (*(v5 + 16))
  {
    sub_134D8(v5 + 32, v8);
    sub_10A2C(v8, &unk_962740, qword_7AE4B0);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_10A2C(v8, &unk_962740, qword_7AE4B0);
    if (qword_93DF18 != -1)
    {
      swift_once();
    }

    v7 = sub_768FF0();
    sub_BE38(v7, qword_9A0478);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    (*&v2[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_completionCallback])(v2);
    if (qword_93E118 != -1)
    {
      swift_once();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_73989C();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_6D347C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_75F850();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  sub_134D8(a1, v43);
  sub_BD88(&qword_93F348, &qword_77DFB0);
  if (swift_dynamicCast())
  {
    v17 = *(v5 + 16);
    v17(v13, v16, v4);
    if (*(*&v2[OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_presenter] + 16) == 2)
    {
      v19 = sub_6D3A4C(v18);
      v20 = *(v5 + 8);
      v20(v13, v4);
      v20(v16, v4);
      goto LABEL_8;
    }

    v39 = v7;
    v40 = v2;
    v22 = *(v5 + 8);
    v22(v13, v4);
    (*(v5 + 32))(v10, v16, v4);
    v23 = v39;
    v17(v39, v10, v4);
    v24 = sub_75A730();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(type metadata accessor for OnboardingWelcomeViewController(0));

    v19 = sub_20B138(v23, v24 & 1, sub_6D488C, v25);

    v22(v10, v4);
    v2 = v40;
LABEL_7:

    goto LABEL_8;
  }

  type metadata accessor for AdPrivacyOnboardingStep();
  if (swift_dynamicCast())
  {
    v19 = sub_6D3DFC(v21);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    sub_174E4(aBlock);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = objc_allocWithZone(type metadata accessor for OnboardingLocationPrivacyViewController());
    v19 = sub_28A02C(sub_6D4854, v32, sub_6D4884, v33);
  }

  else
  {
    type metadata accessor for JourneyDrivenOnboardingStep();
    if (!swift_dynamicCast())
    {
      goto LABEL_20;
    }

    v35 = v41;
    v19 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider27JourneyDrivenOnboardingStep_engagementViewController];
    if (!v19)
    {

      sub_BEB8(v43);
      return v19;
    }

    v36 = [v19 startEngagement];
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_6D4834;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151A34;
    aBlock[3] = &unk_89D650;
    v38 = _Block_copy(aBlock);

    [v36 addFinishBlock:v38];
    _Block_release(v38);
  }

LABEL_8:
  sub_BEB8(v43);
  v26 = [v19 view];
  if (v26)
  {
    v27 = v26;
    v28 = [v2 view];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 tintColor];

      [v27 setTintColor:v30];
      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  result = sub_76A840();
  __break(1u);
  return result;
}

id sub_6D3A4C(__n128 a1)
{
  v2 = v1;
  v3 = sub_7573C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  sub_75F800();
  isa = sub_769450().super.isa;

  v9 = [v7 linkWithBundleIdentifiers:isa];

  if (v9)
  {
    v10 = v9;
    [v10 setModalPresentationStyle:{objc_msgSend(v2, "modalPresentationStyle")}];

    v11 = v10;
    sub_757390();
    sub_7572F0();
    (*(v4 + 8))(v6, v3);
    v12 = sub_769210();

    [v11 setDisplayLanguage:v12];
  }

  v13 = sub_56E958(0xD000000000000017, 0x80000000007F1A40, 0);
  v25._countAndFlagsBits = 0xD00000000000001FLL;
  v25._object = 0x80000000007F1A60;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_75B750(v25, v28);
  v26._countAndFlagsBits = 0xD000000000000025;
  v26._object = 0x80000000007F1A80;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_75B750(v26, v29);
  v23[1] = v2;
  v27._object = 0x80000000007F1AB0;
  v27._countAndFlagsBits = 0xD000000000000013;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  sub_75B750(v27, v30);
  v14 = objc_allocWithZone(AMSUIOnboardingViewController);
  v15 = v9;
  v16 = sub_769210();

  v17 = sub_769210();

  v18 = sub_769210();

  v19 = [v14 initWithHeaderImage:v13 titleText:v16 descriptionText:v17 primaryButtonText:v18 privacyLinkController:v15];

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_6D48DC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_123860;
  aBlock[3] = &unk_89D678;
  v21 = _Block_copy(aBlock);

  [v19 setPrimaryButtonCallback:v21];

  _Block_release(v21);
  return v19;
}

id sub_6D3DFC(__n128 a1)
{
  v1 = sub_7573C0();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_4F1860(v3);
  sub_7573B0();
  v7 = sub_7572F0();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v10 = sub_75A8D0();
  v17[0] = v7;
  v17[1] = v9;
  v16 = v17;
  v11 = sub_4F1408(sub_2C59DC, v15, v10);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = objc_allocWithZone(type metadata accessor for OnboardingAdPrivacyViewController());
  return sub_31E040(v6, (v11 & 1) == 0, sub_6D48BC, v12);
}

void sub_6D3FAC(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v4 = Strong;

    sub_16770();
  }

  else
  {
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = v5;

    sub_16778();
  }

LABEL_7:
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_6D2C8C();
  }
}

void sub_6D4094(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    a3();
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_6D2C8C();
  }
}

void sub_6D4140(uint64_t a1, uint64_t a2)
{
  v2 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-v3];
  v5 = sub_7570A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;

    sub_1685C();
  }

  sub_757090();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10A2C(v4, &unk_93FD30, qword_77F240);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v11 = [objc_opt_self() defaultWorkspace];
    if (!v11)
    {
      __break(1u);
      return;
    }

    v13 = v11;
    sub_757040(v12);
    v15 = v14;
    [v13 openSensitiveURL:v14 withOptions:0];

    (*(v6 + 8))(v8, v5);
  }

  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    sub_6D2C8C();
  }
}

uint64_t sub_6D43AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_768380();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7683C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v12 = sub_769970();
  aBlock[4] = sub_6D48C4;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_89D6A0;
  v13 = _Block_copy(aBlock);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_6D462C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider24OnboardingViewController_presenter);
    v3 = Strong;

    swift_beginAccess();
    v4 = *(v2 + 32);
    if (*(v4 + 16))
    {
      sub_134D8(v4 + 32, v8);
      sub_BD88(&qword_93F348, &qword_77DFB0);
      type metadata accessor for JourneyDrivenOnboardingStep();
      if (swift_dynamicCast())
      {
        sub_17220(v7, v2);
      }
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_6D2C8C();
  }
}

uint64_t sub_6D47FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_6D483C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_6D48E0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_haveFlashedScrollIndicators;
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView);
    [v2 contentSize];
    v4 = v3;
    [v2 bounds];
    if (CGRectGetHeight(v7) < v4 || (v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardScrollView), [v2 contentSize], v6 = v5, objc_msgSend(v2, "bounds"), CGRectGetHeight(v8) < v6))
    {
      [v2 flashScrollIndicators];
      *(v0 + v1) = 1;
    }
  }
}

void sub_6D49AC(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoBackgroundColor;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoBackgroundColor);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoBackgroundColor) = a1;
  v7 = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v1 + v2);
    [v5 setBackgroundColor:v6];
  }
}

void sub_6D4A6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_760AD0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93E530, &unk_77C5F0);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v39 - v12;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel;
  v15 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel];
  if (!v15 || (v16 = [v15 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v40 = v7;
  v17 = v3;
  v18 = a1;
  v19 = v16;
  v20 = sub_769240();
  v22 = v21;

  if (!a2)
  {

    v3 = v17;
    v7 = v40;
    if (*&v3[v14])
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  if (v20 != v18 || v22 != a2)
  {
    v24 = sub_76A950();

    v3 = v17;
    v7 = v40;
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (*&v3[v14])
    {
LABEL_12:

LABEL_34:
      [v3 setNeedsLayout];
      return;
    }

LABEL_14:
    v25 = sub_7666D0();
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
    v26 = objc_allocWithZone(sub_75BB20());
    v27 = sub_75BB10();
    v28 = [v3 traitCollection];
    v29 = sub_7699E0();

    if (v29)
    {
      if (qword_93E1A0 != -1)
      {
        swift_once();
      }

      v30 = &qword_9627A8;
    }

    else
    {
      if (qword_93E1C0 != -1)
      {
        swift_once();
      }

      v30 = &qword_9627C8;
    }

    [v27 setFont:*v30];
    if (a2)
    {
      v31 = sub_769210();
    }

    else
    {
      v31 = 0;
    }

    [v27 setText:v31];

    v32 = *&v3[v14];
    *&v3[v14] = v27;
    v33 = v27;

    v34 = [v3 traitCollection];
    if (sub_769A00())
    {
      v35 = sub_7699D0();

      if (v35)
      {
        [*&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView] addSubview:v33];
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        v36 = v33;
        v37 = sub_769FF0();
LABEL_33:
        v38 = v37;
        [v36 setTextColor:v37];

        goto LABEL_34;
      }
    }

    else
    {
    }

    [*&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView] addSubview:v33];
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v36 = v33;
    v37 = sub_769FD0();
    goto LABEL_33;
  }

LABEL_19:
}

double sub_6D4F1C(uint64_t a1, __n128 a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupArtwork);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupArtwork) = a1;
  if (a1)
  {
    if (v3)
    {
      sub_765390();
      sub_6DDA3C(&qword_947FE0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
      swift_retain_n();
      v4 = sub_7691C0();

      if (v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkLoader);

    sub_64EAF0(v6, v5);

LABEL_9:

    return result;
  }

  if (v3)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_6D5058(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButtonPresenter);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButtonPresenter) = a1;
  if (v2)
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);
    if (v4)
    {
      [v4 invalidate];
      v5 = *(v2 + v3);
    }

    else
    {
      v5 = 0;
    }

    *(v2 + v3) = 0;
  }
}

uint64_t sub_6D50EC()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_9A0878);
  sub_BE38(v0, qword_9A0878);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_6D5250(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  v36 = a1;
  sub_75CE20();
  if (qword_93D5A0 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E8F0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = sub_766CA0();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  sub_766CB0();
  v14 = v3[1];
  v14(v5, v2);
  sub_75CEE0();
  if (qword_93D598 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v6, qword_99E8D8);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v38);
  v34(v15, v5, v2);
  sub_766CB0();
  v14(v5, v2);
  sub_75CE60();
  v32 = v14;
  if (qword_93D588 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v6, qword_99E8A8);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v38);
  v34(v18, v5, v2);
  sub_766CB0();
  v32(v5, v2);
  sub_75CE00();
  v19 = v11;
  if (qword_93D590 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v6, qword_99E8C0);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  sub_766CB0();
  v24 = v32;
  v32(v5, v2);
  sub_75CEF0();
  sub_75CE40();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_B1B4(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_B1B4(v38);
  v23(v25, v5, v2);
  sub_766CB0();
  v24(v5, v2);
  return sub_75CE50();
}

uint64_t sub_6D5838()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_9A0890);
  sub_BE38(v0, qword_9A0890);
  if (qword_93E128 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A0878);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_6D599C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766690();
  v77 = *(v4 - 8);
  v78 = v4;
  __chkstk_darwin(v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_161DC(v7, qword_9A08A8);
  v74 = v7;
  v75 = sub_BE38(v7, qword_9A08A8);
  v76 = v6;
  sub_7666A0();
  v167 = &type metadata for Double;
  v168 = &protocol witness table for Double;
  v165 = &protocol witness table for Double;
  *&v166 = 0x4030000000000000;
  v164 = &type metadata for Double;
  *&v163 = 0x4030000000000000;
  if (qword_93E168 != -1)
  {
    swift_once();
  }

  v8 = qword_962770;
  *v3 = qword_962770;
  v80 = enum case for FontSource.textStyle(_:);
  v82 = v1[13];
  v82(v3);
  v81 = sub_766CA0();
  v161 = v81;
  v162 = &protocol witness table for StaticDimension;
  sub_B1B4(&v160);
  v158 = v0;
  v159 = &protocol witness table for FontSource;
  v9 = sub_B1B4(&v157);
  v10 = v1[2];
  v10(v9, v3, v0);
  v11 = v8;
  sub_766CB0();
  v12 = v1[1];
  v12(v3, v0);
  v158 = &type metadata for Double;
  v159 = &protocol witness table for Double;
  *&v157 = 0x4030000000000000;
  v156 = &protocol witness table for Double;
  v155 = &type metadata for Double;
  *&v154 = 0x4030000000000000;
  v13 = sub_766970();
  v152 = v13;
  v153 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v151);
  sub_766960();
  v73 = v13;
  v149 = v13;
  v150 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v148);
  sub_766960();
  v14 = qword_962770;
  *v3 = qword_962770;
  v86 = v1 + 13;
  (v82)(v3, v80, v0);
  v146 = v81;
  v147 = &protocol witness table for StaticDimension;
  sub_B1B4(&v145);
  v143 = v0;
  v144 = &protocol witness table for FontSource;
  v15 = sub_B1B4(&v142);
  v83 = v10;
  v84 = v1 + 2;
  v10(v15, v3, v0);
  v16 = v14;
  sub_766CB0();
  v85 = v1 + 1;
  v79 = v12;
  v12(v3, v0);
  if (qword_93E170 != -1)
  {
    swift_once();
  }

  v17 = qword_962778;
  *v3 = qword_962778;
  v18 = v80;
  v19 = v82;
  (v82)(v3, v80, v0);
  v143 = v81;
  v144 = &protocol witness table for StaticDimension;
  sub_B1B4(&v142);
  v140 = v0;
  v141 = &protocol witness table for FontSource;
  v20 = sub_B1B4(&v139);
  v21 = v83;
  v83(v20, v3, v0);
  v22 = v17;
  sub_766CB0();
  v23 = v79;
  v79(v3, v0);
  v141 = &protocol witness table for Double;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v24 = qword_962770;
  *v3 = qword_962770;
  v19(v3, v18, v0);
  v25 = v81;
  v137 = v81;
  v138 = &protocol witness table for StaticDimension;
  sub_B1B4(&v136);
  v134 = v0;
  v135 = &protocol witness table for FontSource;
  v26 = sub_B1B4(&v133);
  v21(v26, v3, v0);
  v27 = v24;
  sub_766CB0();
  v23(v3, v0);
  v28 = v73;
  v134 = v73;
  v135 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v133);
  sub_766960();
  v131 = v28;
  v132 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v130);
  sub_766960();
  v128 = v28;
  v129 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v127);
  sub_766960();
  if (qword_93E178 != -1)
  {
    swift_once();
  }

  v29 = qword_962780;
  *v3 = qword_962780;
  v30 = v80;
  v31 = v82;
  (v82)(v3, v80, v0);
  v125 = v25;
  v126 = &protocol witness table for StaticDimension;
  sub_B1B4(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v32 = sub_B1B4(&v121);
  v83(v32, v3, v0);
  v33 = v29;
  sub_766CB0();
  v79(v3, v0);
  v34 = qword_962780;
  *v3 = qword_962780;
  v31(v3, v30, v0);
  v35 = v81;
  v122 = v81;
  v123 = &protocol witness table for StaticDimension;
  sub_B1B4(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v36 = sub_B1B4(&v118);
  v83(v36, v3, v0);
  v37 = v34;
  sub_766CB0();
  v38 = v79;
  v79(v3, v0);
  v39 = qword_962780;
  *v3 = qword_962780;
  v31(v3, v30, v0);
  v119 = v35;
  v120 = &protocol witness table for StaticDimension;
  sub_B1B4(&v118);
  v116 = v0;
  v117 = &protocol witness table for FontSource;
  v40 = sub_B1B4(&v115);
  v83(v40, v3, v0);
  v41 = v39;
  sub_766CB0();
  v38(v3, v0);
  if (qword_93E180 != -1)
  {
    swift_once();
  }

  v42 = qword_962788;
  *v3 = qword_962788;
  (v82)(v3, v30, v0);
  v116 = v35;
  v117 = &protocol witness table for StaticDimension;
  sub_B1B4(&v115);
  v113 = v0;
  v114 = &protocol witness table for FontSource;
  v43 = sub_B1B4(&v112);
  v83(v43, v3, v0);
  v44 = v42;
  sub_766CB0();
  v45 = v79;
  v79(v3, v0);
  v46 = qword_962788;
  *v3 = qword_962788;
  (v82)(v3, v30, v0);
  v113 = v35;
  v114 = &protocol witness table for StaticDimension;
  sub_B1B4(&v112);
  v110 = v0;
  v111 = &protocol witness table for FontSource;
  v47 = sub_B1B4(&v109);
  v48 = v83;
  v83(v47, v3, v0);
  v49 = v46;
  sub_766CB0();
  v45(v3, v0);
  v111 = &protocol witness table for Double;
  v110 = &type metadata for Double;
  *&v109 = 0x4032000000000000;
  v50 = v80;
  v51 = qword_962788;
  *v3 = qword_962788;
  (v82)(v3, v50, v0);
  v107 = v81;
  v108 = &protocol witness table for StaticDimension;
  sub_B1B4(&v106);
  v104 = v0;
  v105 = &protocol witness table for FontSource;
  v52 = sub_B1B4(&v103);
  v48(v52, v3, v0);
  v53 = v48;
  v54 = v51;
  sub_766CB0();
  v55 = v79;
  v79(v3, v0);
  v105 = &protocol witness table for Double;
  v104 = &type metadata for Double;
  v102 = &protocol witness table for Double;
  *&v103 = 0x4032000000000000;
  v101 = &type metadata for Double;
  *&v100 = 0x4024000000000000;
  v56 = qword_962788;
  *v3 = qword_962788;
  v57 = v82;
  (v82)(v3, v50, v0);
  v98 = v81;
  v99 = &protocol witness table for StaticDimension;
  sub_B1B4(&v97);
  v95 = v0;
  v96 = &protocol witness table for FontSource;
  v58 = sub_B1B4(&v94);
  v53(v58, v3, v0);
  v59 = v56;
  sub_766CB0();
  v55(v3, v0);
  v60 = qword_962788;
  *v3 = qword_962788;
  v57(v3, v50, v0);
  v61 = v81;
  v95 = v81;
  v96 = &protocol witness table for StaticDimension;
  sub_B1B4(&v94);
  v92 = v0;
  v93 = &protocol witness table for FontSource;
  v62 = sub_B1B4(&v91);
  v53(v62, v3, v0);
  v63 = v60;
  sub_766CB0();
  v55(v3, v0);
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  *&v91 = 0x4024000000000000;
  if (qword_93E158 != -1)
  {
    swift_once();
  }

  v64 = qword_962760;
  *v3 = qword_962760;
  v57(v3, v80, v0);
  v89 = v61;
  v90 = &protocol witness table for StaticDimension;
  sub_B1B4(&v88);
  v87[3] = v0;
  v87[4] = &protocol witness table for FontSource;
  v65 = sub_B1B4(v87);
  v83(v65, v3, v0);
  v66 = v64;
  sub_766CB0();
  v55(v3, v0);
  v67 = v75;
  (*(v77 + 32))(v75, v76, v78);
  v68 = v74;
  sub_10914(&v166, v67 + v74[5]);
  sub_10914(&v163, v67 + v68[6]);
  sub_10914(&v160, v67 + v68[7]);
  sub_10914(&v157, v67 + v68[8]);
  sub_10914(&v154, v67 + v68[9]);
  v69 = (v67 + v68[10]);
  *v69 = 0;
  v69[1] = 0;
  sub_10914(&v151, v67 + v68[11]);
  sub_10914(&v148, v67 + v68[12]);
  sub_10914(&v145, v67 + v68[13]);
  sub_10914(&v142, v67 + v68[14]);
  sub_10914(&v139, v67 + v68[15]);
  sub_10914(&v136, v67 + v68[16]);
  v70 = (v67 + v68[17]);
  *v70 = 0;
  v70[1] = 0;
  sub_10914(&v133, v67 + v68[18]);
  sub_10914(&v130, v67 + v68[19]);
  sub_10914(&v127, v67 + v68[20]);
  sub_10914(&v124, v67 + v68[21]);
  sub_10914(&v121, v67 + v68[22]);
  sub_10914(&v118, v67 + v68[23]);
  sub_10914(&v115, v67 + v68[24]);
  sub_10914(&v112, v67 + v68[25]);
  sub_10914(&v109, v67 + v68[26]);
  sub_10914(&v106, v67 + v68[27]);
  sub_10914(&v103, v67 + v68[28]);
  sub_10914(&v100, v67 + v68[29]);
  sub_10914(&v97, v67 + v68[30]);
  sub_10914(&v94, v67 + v68[31]);
  sub_10914(&v91, v67 + v68[32]);
  return sub_10914(&v88, v67 + v68[33]);
}

uint64_t sub_6D67F0()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_766690();
  v55 = *(v4 - 8);
  v56 = v4;
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_161DC(v7, qword_9A08C0);
  v52 = v7;
  v53 = sub_BE38(v7, qword_9A08C0);
  v54 = v6;
  sub_7666A0();
  v143 = &type metadata for Double;
  v144 = &protocol witness table for Double;
  v141 = &protocol witness table for Double;
  *&v142 = 0x4034000000000000;
  v140 = &type metadata for Double;
  *&v139 = 0x4034000000000000;
  v8 = sub_766970();
  v137 = v8;
  v138 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v136);
  sub_766960();
  v134 = &type metadata for Double;
  v135 = &protocol witness table for Double;
  *&v133 = 0x4034000000000000;
  v132 = &protocol witness table for Double;
  v131 = &type metadata for Double;
  *&v130 = 0x4034000000000000;
  v58 = v8;
  v128 = v8;
  v129 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v127);
  sub_766960();
  if (qword_93E148 != -1)
  {
    swift_once();
  }

  v9 = qword_962750;
  *v3 = qword_962750;
  v63 = enum case for FontSource.textStyle(_:);
  v10 = v1[13];
  v10(v3);
  v62 = sub_766CA0();
  v125 = v62;
  v126 = &protocol witness table for StaticDimension;
  sub_B1B4(&v124);
  v122 = v0;
  v123 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v121);
  v12 = v1[2];
  v12(v11, v3, v0);
  v13 = v9;
  sub_766CB0();
  v14 = v1[1];
  v14(v3, v0);
  v15 = qword_962750;
  *v3 = qword_962750;
  v61 = v10;
  v59 = v1 + 13;
  (v10)(v3, v63, v0);
  v122 = v62;
  v123 = &protocol witness table for StaticDimension;
  sub_B1B4(&v121);
  v119 = v0;
  v120 = &protocol witness table for FontSource;
  v16 = sub_B1B4(&v118);
  v60 = v1 + 2;
  v12(v16, v3, v0);
  v17 = v12;
  v18 = v15;
  sub_766CB0();
  v14(v3, v0);
  v120 = &protocol witness table for Double;
  v119 = &type metadata for Double;
  *&v118 = 0x4000000000000000;
  v117 = &protocol witness table for Double;
  v116 = &type metadata for Double;
  *&v115 = 0x4034000000000000;
  v19 = v58;
  v113 = v58;
  v114 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v112);
  sub_766960();
  if (qword_93E150 != -1)
  {
    swift_once();
  }

  v20 = qword_962758;
  *v3 = qword_962758;
  v61(v3, v63, v0);
  v110 = v62;
  v111 = &protocol witness table for StaticDimension;
  sub_B1B4(&v109);
  v107 = v0;
  v108 = &protocol witness table for FontSource;
  v21 = sub_B1B4(&v106);
  v12(v21, v3, v0);
  v22 = v20;
  sub_766CB0();
  v14(v3, v0);
  v107 = v19;
  v108 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v106);
  sub_766960();
  v104 = v19;
  v105 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v103);
  sub_766960();
  if (qword_93E158 != -1)
  {
    swift_once();
  }

  v23 = qword_962760;
  *v3 = qword_962760;
  v61(v3, v63, v0);
  v101 = v62;
  v102 = &protocol witness table for StaticDimension;
  sub_B1B4(&v100);
  v98 = v0;
  v99 = &protocol witness table for FontSource;
  v24 = sub_B1B4(&v97);
  v12(v24, v3, v0);
  v25 = v23;
  sub_766CB0();
  v14(v3, v0);
  v98 = v19;
  v99 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v97);
  sub_766960();
  v95 = v19;
  v96 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v94);
  sub_766960();
  v93 = &protocol witness table for Double;
  v92 = &type metadata for Double;
  v90 = &protocol witness table for ZeroDimension;
  *&v91 = 0x4022000000000000;
  v89 = v19;
  sub_B1B4(&v88);
  sub_766960();
  v26 = v1 + 1;
  v51 = v14;
  if (qword_93E160 != -1)
  {
    swift_once();
  }

  v27 = qword_962768;
  *v3 = qword_962768;
  v28 = v63;
  v29 = v61;
  v61(v3, v63, v0);
  v30 = v29;
  v86 = v62;
  v87 = &protocol witness table for StaticDimension;
  sub_B1B4(&v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v31 = sub_B1B4(&v82);
  v17(v31, v3, v0);
  v32 = v27;
  sub_766CB0();
  v33 = v51;
  v51(v3, v0);
  v57 = v26;
  v83 = v58;
  v84 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v82);
  sub_766960();
  v34 = qword_962768;
  *v3 = qword_962768;
  v30(v3, v28, v0);
  v35 = v62;
  v80 = v62;
  v81 = &protocol witness table for StaticDimension;
  sub_B1B4(&v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v36 = sub_B1B4(&v76);
  v17(v36, v3, v0);
  v37 = v34;
  sub_766CB0();
  v33(v3, v0);
  v38 = qword_962768;
  *v3 = qword_962768;
  v61(v3, v63, v0);
  v77 = v35;
  v78 = &protocol witness table for StaticDimension;
  sub_B1B4(&v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v39 = sub_B1B4(&v73);
  v17(v39, v3, v0);
  v40 = v38;
  sub_766CB0();
  v33(v3, v0);
  v41 = v58;
  v74 = v58;
  v75 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v73);
  sub_766960();
  v71 = v41;
  v72 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v70);
  sub_766960();
  v42 = qword_962768;
  *v3 = qword_962768;
  v61(v3, v63, v0);
  v68 = v62;
  v69 = &protocol witness table for StaticDimension;
  sub_B1B4(&v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v43 = sub_B1B4(&v64);
  v17(v43, v3, v0);
  v44 = v42;
  sub_766CB0();
  v33(v3, v0);
  v65 = v41;
  v66 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v64);
  sub_766960();
  v45 = v53;
  (*(v55 + 32))(v53, v54, v56);
  v46 = v52;
  sub_10914(&v142, v45 + v52[5]);
  sub_10914(&v139, v45 + v46[6]);
  sub_10914(&v136, v45 + v46[7]);
  sub_10914(&v133, v45 + v46[8]);
  sub_10914(&v130, v45 + v46[9]);
  v47 = (v45 + v46[10]);
  *v47 = 0;
  v47[1] = 0;
  sub_10914(&v127, v45 + v46[11]);
  sub_10914(&v124, v45 + v46[12]);
  sub_10914(&v121, v45 + v46[13]);
  sub_10914(&v118, v45 + v46[14]);
  sub_10914(&v115, v45 + v46[15]);
  sub_10914(&v112, v45 + v46[16]);
  v48 = (v45 + v46[17]);
  *v48 = 0;
  v48[1] = 0;
  sub_10914(&v109, v45 + v46[18]);
  sub_10914(&v106, v45 + v46[19]);
  sub_10914(&v103, v45 + v46[20]);
  sub_10914(&v100, v45 + v46[21]);
  sub_10914(&v97, v45 + v46[22]);
  sub_10914(&v94, v45 + v46[23]);
  sub_10914(&v91, v45 + v46[24]);
  sub_10914(&v88, v45 + v46[25]);
  sub_10914(&v85, v45 + v46[26]);
  sub_10914(&v82, v45 + v46[27]);
  sub_10914(&v79, v45 + v46[28]);
  sub_10914(&v76, v45 + v46[29]);
  sub_10914(&v73, v45 + v46[30]);
  sub_10914(&v70, v45 + v46[31]);
  sub_10914(&v67, v45 + v46[32]);
  return sub_10914(&v64, v45 + v46[33]);
}

void sub_6D7440()
{
  v0 = objc_opt_self();
  if (qword_93E150 != -1)
  {
    swift_once();
  }

  v1 = qword_962758;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_962798 = v2;
}

void sub_6D751C()
{
  v0 = objc_opt_self();
  if (qword_93E160 != -1)
  {
    swift_once();
  }

  v1 = qword_962768;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_9627A8 = v2;
}

void sub_6D7624(uint64_t a1, void *a2, id *a3, void *a4, uint64_t a5)
{
  v8 = objc_opt_self();
  if (*a2 != -1)
  {
    swift_once();
  }

  v9 = *a3;
  v10 = [v8 _preferredFontForTextStyle:v9 weight:UIFontWeightSemibold];

  *a4 = v10;
}

void sub_6D7704(uint64_t a1, void *a2, id *a3, void *a4, uint64_t a5)
{
  v8 = objc_opt_self();
  if (*a2 != -1)
  {
    swift_once();
  }

  v9 = *a3;
  v10 = [v8 preferredFontForTextStyle:v9];

  *a4 = v10;
}

void sub_6D77A0()
{
  v0 = objc_opt_self();
  if (qword_93E180 != -1)
  {
    swift_once();
  }

  v1 = qword_962788;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightMedium];

  qword_9627C8 = v2;
}

void sub_6D7850()
{
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  qword_9627D0 = sub_76A0C0(v3, v2).super.isa;
}

id sub_6D78E4()
{
  result = [objc_opt_self() blackColor];
  qword_9627D8 = result;
  return result;
}

uint64_t sub_6D7920()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_76A3F0();
  sub_161DC(v4, qword_9627E0);
  sub_BE38(v4, qword_9627E0);
  sub_76A3A0();
  sub_76A2C0();
  v5 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle3 scale:2];
  sub_76A220();
  (*(v1 + 104))(v3, enum case for SystemImage.squareAndArrowUp(_:), v0);
  sub_759930();
  (*(v1 + 8))(v3, v0);
  return sub_76A390();
}

id sub_6D7AA0()
{
  v1 = v0;
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_7699D0();

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView];
    [v10 contentSize];
    v12 = v11;
    [v10 bounds];
    v9 = v12 <= CGRectGetHeight(v51);
  }

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardScrollView] setAlwaysBounceVertical:v9];
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardContentView];
  v14 = [v1 traitCollection];
  v15 = sub_7699E0();

  if (v15)
  {
    if (qword_93E1D0 != -1)
    {
      swift_once();
    }

    v16 = &qword_9627D8;
  }

  else
  {
    if (qword_93E1C8 != -1)
    {
      swift_once();
    }

    v16 = &qword_9627D0;
  }

  [v13 setBackgroundColor:*v16];
  v17 = [v1 traitCollection];
  sub_7699E0();

  v18 = enum case for CornerStyle.continuous(_:);
  v19 = *(v3 + 104);
  v19(v6, enum case for CornerStyle.continuous(_:), v2);
  sub_75CCD0();
  v20 = *(v3 + 8);
  v20(v6, v2);
  v19(v6, v18, v2);
  sub_758E70();
  v20(v6, v2);
  v19(v6, v18, v2);
  sub_75CCD0();
  v20(v6, v2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    [Strong _setCornerRadius:26.0];
  }

  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_kindLabel];
  v24 = [v1 traitCollection];
  v25 = sub_7699E0();

  if (v25)
  {
    if (qword_93E188 != -1)
    {
      swift_once();
    }

    v26 = &qword_962790;
  }

  else
  {
    if (qword_93E1A8 != -1)
    {
      swift_once();
    }

    v26 = &qword_9627B0;
  }

  [v23 setFont:*v26];
  v27 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_titleLabel];
  v28 = [v1 traitCollection];
  v29 = sub_7699E0();

  if (v29)
  {
    if (qword_93E190 != -1)
    {
      swift_once();
    }

    v30 = &qword_962798;
  }

  else
  {
    if (qword_93E1B0 != -1)
    {
      swift_once();
    }

    v30 = &qword_9627B8;
  }

  [v27 setFont:*v30];
  v31 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_detailLabel];
  v32 = [v1 traitCollection];
  v33 = sub_7699E0();

  if (v33)
  {
    if (qword_93E198 != -1)
    {
      swift_once();
    }

    v34 = &qword_9627A0;
  }

  else
  {
    if (qword_93E1B8 != -1)
    {
      swift_once();
    }

    v34 = &qword_9627C0;
  }

  [v31 setFont:*v34];
  v35 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel];
  if (v35)
  {
    v36 = v35;
    v37 = [v1 traitCollection];
    v38 = sub_7699E0();

    if (v38)
    {
      if (qword_93E1A0 != -1)
      {
        swift_once();
      }

      v39 = &qword_9627A8;
    }

    else
    {
      if (qword_93E1C0 != -1)
      {
        swift_once();
      }

      v39 = &qword_9627C8;
    }

    [v36 setFont:*v39];
  }

  v40 = [v1 traitCollection];
  v41 = sub_7699E0();

  v42 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_gradientBlurView;
  v43 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_gradientBlurView];
  if (v41)
  {
    if (v43)
    {
      [v43 setHidden:1];
    }

    sub_6D9854();
    sub_6DBB90();
  }

  else
  {
    if (v43 || (v47 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView()), v48 = sub_4AA654(0), sub_6DE0B0(v48), v48, (v49 = *&v1[v42]) != 0) && ([v49 setUserInteractionEnabled:0], (v43 = *&v1[v42]) != 0))
    {
      [v43 setHidden:0];
    }

    v44 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView];
    if (v44)
    {
      [v44 setHidden:1];
    }

    v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentBackgroundBlurView];
    if (v45)
    {
      [v45 setHidden:1];
    }
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_6D81C0()
{
  v1 = v0;
  v2 = sub_75CF00();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_769A00();
  v46 = v2;
  if ((v8 & 1) == 0)
  {

    goto LABEL_8;
  }

  v9 = sub_7699D0();

  if ((v9 & 1) == 0)
  {
LABEL_8:
    v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView];
    v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_detailLabel];
    [v16 addSubview:{v17, v46}];
    v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton];
    [v16 addSubview:v18];
    [v16 addSubview:*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_separatorView]];
    v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView];
    [v16 addSubview:v13];
    v19 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel;
    if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel])
    {
      [v16 addSubview:?];
    }

    v20 = *(v18 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style);
    *(v18 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style) = 1;
    if (v20 == 1)
    {
      v21 = v6;
    }

    else
    {
      v21 = v6;
      v22 = sub_76A950();

      if ((v22 & 1) == 0)
      {
        sub_6990AC();
      }
    }

    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v23 = sub_769FD0();
    v24 = [v23 colorWithAlphaComponent:0.7];

    [v17 setTextColor:v24];
    v25 = *&v1[v19];
    if (!v25)
    {
      v29 = v21;
      v28 = &selRef_setTextAlignment_;
      v30 = &selRef_setSpeed_;
      goto LABEL_23;
    }

    v26 = v25;
    v27 = sub_769FD0();
    [v26 setTextColor:v27];
    v28 = &selRef_setTextAlignment_;
    goto LABEL_22;
  }

  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView];
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_detailLabel];
  [v10 addSubview:v11];
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton];
  [v10 addSubview:v12];
  [v10 addSubview:*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_separatorView]];
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView];
  [v10 addSubview:v13];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel])
  {
    [v10 addSubview:?];
  }

  v15 = *(v12 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style);
  *(v12 + OBJC_IVAR____TtC18ASMessagesProvider14NotifyMeButton_style) = 2;
  if (v15 > 1)
  {
    v21 = v6;
  }

  else
  {
    v21 = v6;
    v31 = sub_76A950();

    if ((v31 & 1) == 0)
    {
      sub_6990AC();
    }
  }

  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v32 = sub_769FD0();
  [v11 setTextColor:v32];

  v33 = *&v1[v14];
  v28 = &selRef_setTextAlignment_;
  if (v33)
  {
    v26 = v33;
    v27 = sub_769FF0();
    [v26 setTextColor:v27];
LABEL_22:
    v30 = &selRef_setSpeed_;

    v29 = v21;
    goto LABEL_23;
  }

  v29 = v21;
  v30 = &selRef_setSpeed_;
LABEL_23:
  v34 = [v1 v28[23]];
  v35 = sub_7699D0();
  v36 = v46;
  if (v35)
  {
    v37 = [v34 preferredContentSizeCategory];
    v38 = sub_769B50();

    if (v38)
    {
      v39 = &OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView;
      goto LABEL_28;
    }
  }

  else
  {
  }

  v39 = &OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView;
LABEL_28:
  [*&v1[*v39] v30[349]];
  v40 = [v1 v28[23]];
  v41 = sub_769A00();

  if (v41)
  {
    if (qword_93E130 != -1)
    {
      swift_once();
    }

    v42 = qword_9A0890;
  }

  else
  {
    if (qword_93E128 != -1)
    {
      swift_once();
    }

    v42 = qword_9A0878;
  }

  v43 = sub_BE38(v36, v42);
  (*(v3 + 16))(v29, v43, v36);
  v44 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v13[v44], v29, v36);
  swift_endAccess();
  [v13 setNeedsLayout];
  return (*(v3 + 8))(v29, v36);
}

void sub_6D8828()
{
  v1 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView] traitCollection];
  [v1 userInterfaceStyle];

  sub_769240();
  v15 = sub_769210();

  v2 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_separatorView] layer];
  [v2 setCompositingFilter:v15];

  v3 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_kindLabel] layer];
  [v3 setCompositingFilter:v15];

  v4 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_detailLabel] layer];
  [v4 setCompositingFilter:v15];

  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView];
  v6 = [*(v5 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) layer];
  [v6 setCompositingFilter:v15];

  v7 = [*(*(v5 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton) + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_subtitleLabel) layer];
  [v7 setCompositingFilter:v15];

  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton];
  if (v8)
  {
    v9 = [v8 imageView];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 layer];

      [v11 setCompositingFilter:v15];
    }
  }

  if (v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_includeBorderInDarkMode] == 1)
  {
    v12 = [v0 traitCollection];
    v13 = [v12 userInterfaceStyle];

    v14 = v13 != &dword_0 + 2;
  }

  else
  {
    v14 = 1;
  }

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_borderView] setHidden:v14];
  sub_6990AC();
}

void sub_6D8B24(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureRecognizer])
  {
    [v1 removeGestureRecognizer:?];
    v4 = *&v1[v3];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v3] = a1;
  v5 = a1;

  if (a1)
  {
    v6 = v5;
    [v6 addTarget:v1 action:"dismissTapGestureRecognized:"];
    [v6 setDelegate:v1];

    [v1 addGestureRecognizer:v6];
  }
}

void sub_6D8C10()
{
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureActionBlock])
  {
    v1 = [objc_allocWithZone(UITapGestureRecognizer) init];

    sub_6D8B24(v1);
  }

  else
  {
    v2 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureRecognizer;
    if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureRecognizer])
    {
      [v0 removeGestureRecognizer:?];
      v3 = *&v0[v2];
    }

    else
    {
      v3 = 0;
    }

    *&v0[v2] = 0;
  }
}

void sub_6D8CB0(void *a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v8 = *a2;
  if (*(v4 + *a2))
  {
    [*(v4 + *a3) removeGestureRecognizer:?];
    v9 = *(v4 + v8);
  }

  else
  {
    v9 = 0;
  }

  *(v4 + v8) = a1;
  v10 = a1;

  if (a1)
  {
    v11 = *a4;
    v12 = v10;
    [v12 addTarget:v4 action:v11];
    [v12 setDelegate:v4];

    [*(v4 + *a3) addGestureRecognizer:v12];
  }
}

void sub_6D8DB0()
{
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureActionBlock))
  {
    sub_6D8CB0([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureRecognizer, &OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView, &selRef_lockupTapGestureRecognized_);
  }

  else
  {
    v1 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureRecognizer;
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureRecognizer))
    {
      [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView) removeGestureRecognizer:?];
      v2 = *(v0 + v1);
    }

    else
    {
      v2 = 0;
    }

    *(v0 + v1) = 0;
  }
}

void sub_6D8E64(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3 & 1;
  v8 = sub_765240();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkViewSize];
  v17 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkViewSize];
  v18 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkViewSize + 8];
  v19 = v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkViewSize + 16];
  *v16 = *&a1;
  v16[1] = *&a2;
  *(v16 + 16) = v7;
  if ((a3 & 1) == 0)
  {
    if ((v19 & 1) != 0 || (v17 == *&a1 ? (v20 = v18 == *&a2) : (v20 = 0), !v20))
    {
      if ((*&a1 != 0.0 || *&a2 != 0.0) && (v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_isCollapsing] & 1) == 0 && *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mainArtwork] && *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkLoader] != 0)
      {
        v22 = v13;
        v23 = v3;
        v24 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView];
        swift_retain_n();
        swift_retain_n();
        v25 = sub_7651A0();
        if (!v25)
        {
          sub_BE70(0, &qword_93E540, UIColor_ptr);
          v25 = sub_76A030();
        }

        v26 = v25;
        [v24 setBackgroundColor:v25];

        v27 = [v23 traitCollection];
        v28 = sub_7699E0();

        if (v28)
        {
          if (qword_93E140 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_9A08C0;
        }

        else
        {
          if (qword_93E138 != -1)
          {
            swift_once();
          }

          v29 = v22;
          v30 = qword_9A08A8;
        }

        v31 = sub_BE38(v29, v30);
        sub_2BE534(v31, v15);
        [v23 bounds];
        sub_766660();
        [v23 bounds];
        sub_765250();
        v32 = sub_765210();
        (*(v9 + 8))(v11, v8);
        sub_765330();
        [*&v23[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkView] setContentMode:v32];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v34 = Strong;
          type metadata accessor for VideoView(0);
          sub_6DDA3C(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
          sub_75A050();
        }

        else
        {
          sub_BE70(0, &qword_949D90, UIImageView_ptr);
          sub_1EE5B8();
          sub_75A050();
        }

        sub_6DE1FC(v15, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }
    }
  }
}

id sub_6D92BC()
{
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_formattedDateView) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_kindLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_titleLabel) setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_detailLabel) setAlpha:0.0];
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel);
  if (v1)
  {
    [v1 setAlpha:0.0];
  }

  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton);
  if (v2)
  {
    [v2 setAlpha:0.0];
  }

  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton) setAlpha:0.0];
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_separatorView);

  return [v3 setAlpha:0.0];
}

void sub_6D93C8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_75CA40();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v8 = *(v4 + 16);
  v8(v6, v1 + v7, v3);
  sub_6DDA3C(&qword_953438, &type metadata accessor for MediaOverlayStyle, &protocol conformance descriptor for MediaOverlayStyle);
  v9 = sub_7691C0();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if ((v9 & 1) == 0)
  {
    v11 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView);
    v8(v6, v2 + v7, v3);
    v12 = sub_75CA20();
    v10(v6, v3);
    [v11 setOverrideUserInterfaceStyle:v12];
    v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView);
    v8(v6, v2 + v7, v3);
    v14 = sub_75CA20();
    v10(v6, v3);
    [v13 setOverrideUserInterfaceStyle:v14];
    v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_formattedDateView);
    v8(v6, v2 + v7, v3);
    v16 = sub_75CA30();
    v10(v6, v3);
    [v15 setOverrideUserInterfaceStyle:v16];
    v17 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentBackgroundBlurView);
    if (v17)
    {
      v8(v6, v2 + v7, v3);
      v18 = v17;
      v19 = sub_75CA20();
      v10(v6, v3);
      [v18 setOverrideUserInterfaceStyle:v19];
    }

    sub_6D8828();
  }
}

void sub_6D96AC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkView];
    v6 = Strong;
    [v3 setHidden:1];
    v6[qword_99A208] = 1;
    *&v6[qword_940578 + 8] = &off_89D738;
    swift_unknownObjectWeakAssign();
    v4 = [v0 traitCollection];
    sub_7699E0();

    [v6 _setCornerRadius:26.0];
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView] insertSubview:v6 aboveSubview:v3];
    sub_6D8CB0([objc_allocWithZone(UITapGestureRecognizer) init], &OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoTapGestureRecognizer, &OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView, &selRef_videoTapGestureRecognized_);
    v5 = [v1 traitCollection];
    LOBYTE(v3) = sub_7699E0();

    if (v3)
    {
      sub_6D9854();
    }

    [v1 setNeedsLayout];
  }
}

id sub_6D9854()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView;
    if (!*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView] || (type metadata accessor for VideoMirrorView(), !swift_dynamicCastClass()))
    {
      v10 = *&CATransform3DIdentity.m33;
      v52 = *&CATransform3DIdentity.m31;
      v53 = v10;
      v11 = *&CATransform3DIdentity.m43;
      v54 = *&CATransform3DIdentity.m41;
      v55 = v11;
      v12 = *&CATransform3DIdentity.m13;
      v48 = *&CATransform3DIdentity.m11;
      v49 = v12;
      v13 = *&CATransform3DIdentity.m23;
      v50 = *&CATransform3DIdentity.m21;
      v51 = v13;
      objc_allocWithZone(type metadata accessor for VideoMirrorView());
      v14 = v3;
      v15 = sub_69A56C(v3, &v48, 1.0, 0.0);
      v16 = *&v1[v4];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v1[v4];
      }

      else
      {
        v17 = 0;
      }

      *&v1[v4] = v15;
      v44 = v15;

      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
      [v1 setNeedsLayout];

      goto LABEL_22;
    }
  }

  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkView];
  v6 = [v5 isHidden];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView;
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView];
  if (v6)
  {
    if (!v8)
    {
      v9 = 0;
LABEL_17:
      *&v1[v7] = 0;

      [v1 setNeedsLayout];
      goto LABEL_23;
    }

LABEL_16:
    [v8 removeFromSuperview];
    v9 = *&v1[v7];
    goto LABEL_17;
  }

  if (v8)
  {
    type metadata accessor for VideoMirrorView();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_16;
    }
  }

  v18 = type metadata accessor for MirrorView();
  v19 = objc_allocWithZone(v18);
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer;
  v21 = objc_allocWithZone(CALayer);
  v22 = v5;
  *&v19[v20] = [v21 init];
  v23 = v22;
  *&v19[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageKVOContext] = 0;
  v19[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_imageObserversAdded] = 0;
  swift_unknownObjectWeakAssign();
  *&v19[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsScaleFactor] = 0x3FF0000000000000;
  *&v19[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_contentsVerticalOffset] = 0;
  v47.receiver = v19;
  v47.super_class = v18;
  v24 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v24 setClipsToBounds:1];
  [v24 setUserInteractionEnabled:0];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer;
  [*&v24[OBJC_IVAR____TtC18ASMessagesProvider10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
  LODWORD(v26) = 1.0;
  [*&v24[v25] setOpacity:v26];
  [*&v24[v25] setAnchorPoint:{0.5, 0.5}];
  v27 = qword_93C498;
  v28 = *&v24[v25];
  if (v27 != -1)
  {
    swift_once();
  }

  sub_BD88(&qword_9452F0, qword_78B4B0);
  isa = sub_7690E0().super.isa;
  [v28 setActions:isa];

  v30 = *&v24[v25];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 mainScreen];
  [v33 scale];
  v35 = v34;

  [v32 setContentsScale:v35];
  [*&v24[v25] setMasksToBounds:1];
  v36 = *&v24[v25];
  v37 = *&CATransform3DIdentity.m33;
  v52 = *&CATransform3DIdentity.m31;
  v53 = v37;
  v38 = *&CATransform3DIdentity.m43;
  v54 = *&CATransform3DIdentity.m41;
  v55 = v38;
  v39 = *&CATransform3DIdentity.m13;
  v48 = *&CATransform3DIdentity.m11;
  v49 = v39;
  v40 = *&CATransform3DIdentity.m23;
  v50 = *&CATransform3DIdentity.m21;
  v51 = v40;
  [v36 setTransform:&v48];
  sub_15F084();
  v41 = [v24 layer];

  [v41 addSublayer:*&v24[v25]];
  v42 = *&v1[v7];
  if (v42)
  {
    [v42 removeFromSuperview];
    v43 = *&v1[v7];
  }

  else
  {
    v43 = 0;
  }

  *&v1[v7] = v24;
  v44 = v24;

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView] insertSubview:v44 atIndex:0];
  [v1 setNeedsLayout];
LABEL_22:

LABEL_23:
  v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView];
  if (v45)
  {
    [v45 setHidden:0];
  }

  return [v1 setNeedsLayout];
}

void (*sub_6D9D98(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_6D9DEC;
}

void sub_6D9DEC(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_6DDACC();
    swift_unknownObjectWeakAssign();
    sub_6D96AC();
  }

  else
  {
    v2 = *a1;
    sub_6DDACC();
    swift_unknownObjectWeakAssign();
    sub_6D96AC();
  }
}

uint64_t sub_6D9E70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_76A920();
  v234 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7664F0();
  v236 = *(v6 - 1);
  v237 = v6;
  __chkstk_darwin(v6);
  v235 = &v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppEventDetailPageLayout(0);
  __chkstk_darwin(v8);
  v10 = (&v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  __chkstk_darwin(v11);
  v239 = &v192 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v192 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v192 - v18;
  v273.receiver = v1;
  v273.super_class = ObjectType;
  objc_msgSendSuper2(&v273, "layoutSubviews", v17);
  [v1 bounds];
  result = CGRectIsEmpty(v274);
  if ((result & 1) == 0)
  {
    v195 = v5;
    v196 = v3;
    sub_75D650();
    v238 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoView;
    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = [v1 traitCollection];
    v22 = sub_7699E0();

    if (v22)
    {
      if (qword_93E140 != -1)
      {
        swift_once();
      }

      v23 = qword_9A08C0;
    }

    else
    {
      if (qword_93E138 != -1)
      {
        swift_once();
      }

      v23 = qword_9A08A8;
    }

    v24 = sub_BE38(v11, v23);
    sub_2BE534(v24, v15);
    *&v15[*(v11 + 40)] = vdupq_n_s64(0x4046000000000000uLL);
    if (qword_93E1D8 != -1)
    {
      swift_once();
    }

    v231 = ObjectType;
    v25 = sub_76A3F0();
    sub_BE38(v25, qword_9627E0);
    swift_beginAccess();
    v26 = sub_76A380();
    v233 = v19;
    if (v26)
    {
      v27 = v26;
      v28 = v11;
      swift_endAccess();
      swift_beginAccess();
      v29 = sub_76A210();
      if (v29)
      {
        v30 = v29;
        swift_endAccess();
        v31 = [v27 imageWithConfiguration:v30];
        [v31 size];
        v32 = &v15[v28[17]];
        *v32 = v33;
        *(v32 + 1) = v34;
        [v31 contentInsets];
        v271 = &type metadata for CGFloat;
        v272 = &protocol witness table for CGFloat;
        *&v270 = v35;
        v36 = v28[20];
        sub_BEB8(&v15[v36]);
        sub_10914(&v270, &v15[v36]);
        v37 = [v1 traitCollection];
        LODWORD(v230) = sub_7699F0();

        [v31 contentInsets];
        v39 = v38;
        v41 = v40;
        v271 = &type metadata for CGFloat;
        v272 = &protocol witness table for CGFloat;

        if (v230)
        {
          *&v270 = v41;
        }

        else
        {
          *&v270 = v39;
        }

        v42 = v28[19];
        sub_BEB8(&v15[v42]);
        sub_10914(&v270, &v15[v42]);
        v19 = v233;
      }

      else
      {
        swift_endAccess();
      }

      v11 = v28;
    }

    else
    {
      swift_endAccess();
    }

    v43 = [v1 traitCollection];
    v44 = sub_7699D0();

    if (v44)
    {
      if (Strong)
      {
        v271 = &type metadata for Double;
        v272 = &protocol witness table for Double;

        *&v270 = 0x404E000000000000;
        v45 = *(v11 + 44);
        sub_BEB8(&v15[v45]);
        sub_10914(&v270, &v15[v45]);
      }
    }

    else
    {
    }

    v194 = v11;
    sub_2BEEE4(v15, v19);
    sub_2BE534(v19, v239);
    v46 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shadowView];
    v271 = sub_758E80();
    v272 = &protocol witness table for UIView;
    v229 = v46;
    *&v270 = v46;
    v47 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardContentView];
    v268 = sub_75CD70();
    v269 = &protocol witness table for UIView;
    *&v267 = v47;
    v48 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_borderView];
    v266 = &protocol witness table for UIView;
    v265 = v268;
    v227 = v48;
    v228 = v47;
    *&v264 = v48;
    v49 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentContainerView];
    v50 = sub_BE70(0, &qword_93E550, UIView_ptr);
    v263 = &protocol witness table for UIView;
    v262 = v50;
    *&v261 = v49;
    v51 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaContainerView];
    v260 = &protocol witness table for UIView;
    v259 = v50;
    v225 = v51;
    v226 = v49;
    *&v258 = v51;
    v52 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkView];
    v53 = sub_BE70(0, &qword_949D90, UIImageView_ptr);
    v257 = &protocol witness table for UIView;
    v256 = v53;
    v224 = v52;
    *&v255 = v52;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v211 = type metadata accessor for VideoView(0);
      v219 = &protocol witness table for UIView;
    }

    else
    {
      Strong = 0;
      v211 = 0;
      v219 = 0;
    }

    v230 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_gradientBlurView;
    v223 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_gradientBlurView];
    if (v223)
    {
      v54 = type metadata accessor for MediaOverlayGradientBlurView();
      v217 = &protocol witness table for UIView;
    }

    else
    {
      v54 = 0;
      v217 = 0;
    }

    v222 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView];
    if (v222)
    {
      v214 = type metadata accessor for MirrorView();
      v213 = &protocol witness table for UIView;
    }

    else
    {
      v213 = 0;
      v214 = 0;
    }

    v55 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView];
    v56 = type metadata accessor for OverlayContentContainerView();
    v254 = &protocol witness table for UIView;
    v253 = v56;
    *&v252 = v55;
    v57 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentBackgroundBlurView];
    v220 = v55;
    v221 = v57;
    if (v57)
    {
      v207 = sub_BE70(0, &unk_944FA0, UIVisualEffectView_ptr);
      v206 = &protocol witness table for UIView;
    }

    else
    {
      v206 = 0;
      v207 = 0;
    }

    v218 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_formattedDateView];
    v58 = v218;
    v59 = type metadata accessor for AppPromotionFormattedDateView();
    v251 = &protocol witness table for UIView;
    v250 = v59;
    *&v249 = v58;
    v205 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton];
    v60 = sub_BE70(0, &qword_960F00, UIButton_ptr);
    v199 = v60;
    v216 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_kindLabel];
    v61 = v216;
    v62 = sub_75BB20();
    v63 = &protocol witness table for UILabel;
    v247 = v62;
    v248 = &protocol witness table for UILabel;
    v245 = &protocol witness table for UILabel;
    *&v246 = v61;
    v215 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_titleLabel];
    v193 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton;
    v64 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton];
    v200 = v64;
    v244 = v62;
    v242 = &protocol witness table for UILabel;
    *&v243 = v215;
    if (v64)
    {
      v65 = v60;
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v66 = &protocol witness table for UIView;
    }

    else
    {
      v66 = 0;
    }

    v201 = v66;
    v202 = v65;
    v212 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_detailLabel];
    v241 = v62;
    *&v240 = v212;
    v67 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel];
    if (v67)
    {
      v68 = v62;
    }

    else
    {
      v68 = 0;
    }

    if (!v67)
    {
      v63 = 0;
    }

    v203 = v63;
    v204 = v68;
    v69 = v10 + v8[23];
    v210 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButton];
    v70 = v210;
    *(v69 + 3) = type metadata accessor for NotifyMeButton();
    *(v69 + 4) = &protocol witness table for UIView;
    v71 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_separatorView];
    *v69 = v70;
    v72 = v10 + v8[24];
    *(v72 + 3) = v50;
    *(v72 + 4) = &protocol witness table for UIView;
    *v72 = v71;
    v208 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupView];
    v73 = v208;
    v209 = v71;
    v74 = v10 + v8[25];
    *(v74 + 3) = type metadata accessor for SmallLockupView(0);
    *(v74 + 4) = &protocol witness table for UIView;
    *v74 = v73;
    v197 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_isCollapsing;
    v198 = v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_isCollapsing];
    sub_2BEEE4(v239, v10);
    sub_10914(&v270, v10 + v8[5]);
    sub_10914(&v267, v10 + v8[6]);
    sub_10914(&v264, v10 + v8[7]);
    sub_10914(&v261, v10 + v8[8]);
    sub_10914(&v258, v10 + v8[9]);
    sub_10914(&v255, v10 + v8[10]);
    v75 = v10 + v8[11];
    *v75 = Strong;
    *(v75 + 1) = 0;
    v76 = v211;
    *(v75 + 2) = 0;
    *(v75 + 3) = v76;
    *(v75 + 4) = v219;
    v77 = v10 + v8[12];
    v78 = v222;
    v79 = v223;
    *v77 = v223;
    *(v77 + 1) = 0;
    *(v77 + 2) = 0;
    *(v77 + 3) = v54;
    *(v77 + 4) = v217;
    v80 = v10 + v8[13];
    *v80 = v78;
    *(v80 + 1) = 0;
    v81 = v213;
    v82 = v214;
    *(v80 + 2) = 0;
    *(v80 + 3) = v82;
    *(v80 + 4) = v81;
    sub_10914(&v252, v10 + v8[14]);
    v83 = v10 + v8[15];
    v84 = v221;
    *v83 = v221;
    *(v83 + 1) = 0;
    v85 = v206;
    v86 = v207;
    *(v83 + 2) = 0;
    *(v83 + 3) = v86;
    *(v83 + 4) = v85;
    sub_10914(&v249, v10 + v8[16]);
    v87 = v10 + v8[17];
    v88 = v205;
    *v87 = v205;
    *(v87 + 3) = v199;
    *(v87 + 4) = &protocol witness table for UIView;
    sub_10914(&v246, v10 + v8[18]);
    sub_10914(&v243, v10 + v8[19]);
    v89 = v10 + v8[20];
    v90 = v200;
    *v89 = v200;
    *(v89 + 1) = 0;
    v91 = v201;
    v92 = v202;
    *(v89 + 2) = 0;
    *(v89 + 3) = v92;
    *(v89 + 4) = v91;
    sub_10914(&v240, v10 + v8[21]);
    v93 = v10 + v8[22];
    *v93 = v67;
    *(v93 + 1) = 0;
    v94 = v203;
    v95 = v204;
    *(v93 + 2) = 0;
    *(v93 + 3) = v95;
    *(v93 + 4) = v94;
    *(v10 + v8[26]) = v198;
    v96 = v67;
    v97 = v229;
    v98 = v228;
    v99 = v227;
    v100 = v226;
    v227 = v225;
    v239 = v224;
    Strong = v220;
    v226 = v218;
    v228 = v88;
    v101 = v216;
    v102 = v215;
    v103 = v212;
    v104 = v210;
    v105 = v209;
    v229 = v208;
    v106 = v79;
    v107 = v78;
    v108 = v84;
    v109 = v90;
    sub_75D650();
    v110 = v235;
    AppEventDetailPageLayout.placeChildren(relativeTo:in:)(v1, v111, v112, v113, v114);
    v236[1](v110, v237);
    v115 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_cardScrollView];
    [v100 bounds];
    [v115 setContentSize:{v116, v117}];
    [v1 bounds];
    [v115 setBounds:{0.0, 0.0}];
    [v1 bounds];
    v118 = CGRectGetWidth(v275) * 0.5;
    [v1 bounds];
    Height = CGRectGetHeight(v276);
    v237 = v115;
    [v115 setCenter:{v118, Height * 0.5}];
    v120 = *&v1[v230];
    if (v120 && (v1[v197] & 1) == 0)
    {
      v121 = v101;
      v122 = v120;
      [v122 frame];
      v123 = CGRectGetHeight(v277);
      v124 = [v1 traitCollection];
      v125 = sub_769A00();

      if (v125)
      {
        if (*&v1[v193])
        {
          v121 = *&v1[v193];
        }

        else
        {
          v121 = v226;
        }
      }

      v126 = v121;
      v236 = v126;
      [v227 frame];
      v127 = CGRectGetHeight(v278);
      [v126 frame];
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;

      v279.origin.x = v129;
      v279.origin.y = v131;
      v279.size.width = v133;
      v279.size.height = v135;
      v136 = v123 - (v127 - CGRectGetMinY(v279));
      v137 = (v136 + -100.0) / v123;
      v138 = (v136 + 30.0) / v123;
      v139 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY;
      *&v122[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientStartY] = v137;
      v140 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView;
      v141 = [*&v122[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_colorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v143 = v142;

      v144 = *&v122[v139];
      v145 = [*&v122[v140] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v146 = [*&v122[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v143, v144}];

      v147 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY;
      *&v122[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientStartY] = v137;
      v148 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView;
      v149 = [*&v122[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientMaskView] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() startPoint];
      v151 = v150;

      v152 = *&v122[v147];
      v153 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v151, v152}];

      sub_4A9908(v138);
      v154 = OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY;
      *&v122[OBJC_IVAR____TtC18ASMessagesProvider28MediaOverlayGradientBlurView_blurGradientEndY] = v138;
      v155 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() endPoint];
      v157 = v156;

      v158 = *&v122[v154];
      v159 = [*&v122[v148] layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v157, v158}];
    }

    v160 = [v1 traitCollection];
    v161 = sub_7699E0();

    if (v161)
    {
      v236 = v10;
      [v229 frame];
      MaxY = CGRectGetMaxY(v280);
      v163 = v233;
      v164 = &v233[*(v194 + 128)];
      v165 = *(v164 + 3);
      sub_B170(v164, v165);
      v166 = v195;
      sub_33964(v165);
      sub_766700();
      v168 = v167;
      (*(v234 + 8))(v166, v196);
      v169 = Strong;
      [Strong bounds];
      [v169 setContentSize:{CGRectGetWidth(v281), MaxY + v168 * 0.8}];
      v170 = [v1 traitCollection];
      v171 = sub_7699D0();

      if (v171)
      {
        v172 = 1;
      }

      else
      {
        [v169 contentSize];
        v178 = v177;
        [v169 bounds];
        v172 = v178 <= CGRectGetHeight(v282);
      }

      v176 = v239;
      [v237 setAlwaysBounceVertical:v172];
      v10 = v236;
    }

    else
    {
      v173 = Strong;
      [Strong bounds];
      [v173 setContentSize:{v174, v175}];
      v163 = v233;
      v176 = v239;
    }

    [v176 bounds];
    sub_6D8E64(v179, v180, 0);
    v181 = swift_unknownObjectWeakLoadStrong();
    if (v181)
    {
      v182 = v181;
      v183 = [v1 traitCollection];
      v184 = sub_7699D0();

      if ((v184 & 1) == 0)
      {
        sub_6DE1FC(v10, type metadata accessor for AppEventDetailPageLayout);

        return sub_6DE1FC(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
      }

      [v228 frame];
      v186 = v185;
      [v182 frame];
      v188.f64[0] = v187 + -53.0;
      v189 = &v182[qword_99A1B0];
      v190 = *&v182[qword_99A1B0];
      v191 = *&v182[qword_99A1B0 + 16];
      *v189 = xmmword_79D2B0;
      *(v189 + 2) = *&v188.f64[0];
      *(v189 + 3) = v186 + 25.0;
      v188.f64[1] = v186 + 25.0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(xmmword_79D2B0, v190), vceqq_f64(v188, v191)))) & 1) == 0)
      {
        sub_54EB4();
      }
    }

    sub_6DE1FC(v10, type metadata accessor for AppEventDetailPageLayout);
    return sub_6DE1FC(v163, type metadata accessor for AppEventDetailPageLayout.Metrics);
  }

  return result;
}

void sub_6DB154(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButtonPresenter);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer;
    v8 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider23NotifyMeButtonPresenter_displayTimeReachedTimer);

    if (v8)
    {
      [v8 invalidate];
      v8 = *(v6 + v7);
    }

    *(v6 + v7) = 0;
  }

  sub_268E5C();
  v9 = v4 + *a2;
  v10 = *v9;
  if (*v9)
  {
    v11 = *(v9 + 8);

    v10(a1);

    sub_F704(v10, v11);
  }
}

uint64_t sub_6DB254(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_76A510();
  swift_unknownObjectRelease();
  sub_6DB154(v8, a4);

  return sub_BEB8(v8);
}

uint64_t sub_6DB2CC(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_768430();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  [a1 bounds];
  LOBYTE(v45[0]) = 1;
  *&v27 = a1;
  *(&v27 + 1) = v10;
  *&v28 = v11;
  *(&v28 + 1) = v12;
  *&v29 = v13;
  BYTE8(v29) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v30 = _Q0;
  v31 = _Q0;
  v32 = 15;
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  v19 = a1;
  *v9 = sub_769970();
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  LOBYTE(a1) = sub_768460();
  result = (*(v6 + 8))(v9, v5);
  if (a1)
  {
    v35 = xmmword_94DD18;
    v36 = xmmword_94DD28;
    v37 = xmmword_94DD38;
    v33 = xmmword_94DCF8;
    v34 = xmmword_94DD08;
    v41 = v29;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v45[0] = xmmword_94DCF8;
    v45[1] = xmmword_94DD08;
    v45[3] = xmmword_94DD28;
    v45[4] = xmmword_94DD38;
    v38 = qword_94DD48;
    v44 = v32;
    v46 = qword_94DD48;
    v45[2] = xmmword_94DD18;
    sub_1781E4(&v33, v25);
    xmmword_94DD18 = v41;
    xmmword_94DD28 = v42;
    xmmword_94DD38 = v43;
    qword_94DD48 = v44;
    xmmword_94DCF8 = v39;
    xmmword_94DD08 = v40;
    sub_6DE194(v45);
    v21 = v3 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButtonActionBlock;
    v22 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButtonActionBlock);
    if (v22)
    {
      v23 = *(v21 + 8);
      sub_45C2C(&v27, v25);
      v24 = sub_F714(v22, v23);
      v22(v24);
      sub_F704(v22, v23);
    }

    else
    {
      sub_45C2C(&v27, v25);
    }

    v25[2] = xmmword_94DD18;
    v25[3] = xmmword_94DD28;
    v25[4] = xmmword_94DD38;
    v26 = qword_94DD48;
    v25[0] = xmmword_94DCF8;
    v25[1] = xmmword_94DD08;
    xmmword_94DCF8 = v33;
    xmmword_94DD08 = v34;
    xmmword_94DD18 = v35;
    xmmword_94DD28 = v36;
    xmmword_94DD38 = v37;
    qword_94DD48 = v38;
    sub_6DE194(v25);
    return sub_45C88(&v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_6DB5FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *&Strong[qword_9405B8];
    if (v2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6[4] = sub_1EEC04;
      v6[5] = v3;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 1107296256;
      v6[2] = sub_509F0;
      v6[3] = &unk_89D8B8;
      v4 = _Block_copy(v6);
      v5 = v2;

      [v5 enterFullScreenAnimated:1 completionHandler:v4];

      _Block_release(v4);
    }

    else
    {
    }
  }

  sub_6DB734(0, 0);
}

void sub_6DB734(char a1, char a2)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = sub_7699E0();

  if ((v7 & 1) == 0)
  {
    if (a1)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoBackgroundColor];
      [v10 setBackgroundColor:v11];

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v8;
      v14 = sub_6DE004;
      if (a2)
      {
LABEL_7:
        v15 = v14;
        v16 = objc_opt_self();
        v23[4] = v15;
        v23[5] = v13;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 1107296256;
        v23[2] = sub_23F0CC;
        v23[3] = &unk_89D7A0;
        v17 = _Block_copy(v23);

        [v16 animateWithDuration:4 delay:v17 options:0 animations:0.3 completion:0.0];

        _Block_release(v17);
        return;
      }
    }

    else
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v18;
      *(v13 + 24) = v8;
      v14 = sub_6DF250;
      if (a2)
      {
        goto LABEL_7;
      }
    }

    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = *(v19 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_overlayContentContainerView);
      v21 = v19;

      [v20 setAlpha:v8];
      v22 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButton];
      [v22 setAlpha:v8];
    }
  }
}