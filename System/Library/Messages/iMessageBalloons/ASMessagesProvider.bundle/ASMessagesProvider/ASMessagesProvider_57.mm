uint64_t sub_66A1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v117 = a2;
  v114 = a4;
  v125 = sub_766CA0();
  __chkstk_darwin(v125);
  v113 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v100 - v7;
  __chkstk_darwin(v8);
  v111 = &v100 - v9;
  __chkstk_darwin(v10);
  v110 = &v100 - v11;
  __chkstk_darwin(v12);
  v109 = &v100 - v13;
  v14 = sub_7664A0();
  v126 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v17 - 8);
  v104 = &v100 - v18;
  v101 = sub_7623A0();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_BD88(&unk_9457F0, qword_783FD0);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v22 = &v100 - v21;
  v124 = sub_75D850();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v100 - v26;
  v28 = sub_7581D0();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v120 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v116 = &v100 - v32;
  v34 = __chkstk_darwin(v33);
  v36 = &v100 - v35;
  v37 = *(v29 + 16);
  v118 = a1;
  v115 = v29 + 16;
  v108 = v37;
  (v37)(&v100 - v35, a1, v28, v34);
  v119 = v29;
  v38 = *(v29 + 88);
  v107 = (v29 + 88);
  v106 = v38;
  v39 = v38(v36, v28);
  v105 = enum case for AppShowcaseType.large(_:);
  if (v39 != enum case for AppShowcaseType.large(_:) && v39 != enum case for AppShowcaseType.small(_:) && v39 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    (*(v119 + 8))(v36, v28);
  }

  v40 = [v122 traitCollection];
  v41 = sub_769A00();
  v121 = v27;
  if (v41)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v42 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v42 = qword_946938;
  }

  v43 = v124;
  v44 = sub_BE38(v124, v42);
  v45 = v123;
  (*(v123 + 16))(v24, v44, v43);

  v46 = *(v45 + 32);
  v47 = v121;
  v46(v121, v24, v43);
  if (v117)
  {
    v48 = v100;
    v49 = v20;
    v50 = v101;
    (*(v100 + 104))(v49, enum case for OfferButtonSubtitlePosition.below(_:), v101);
    (*(v48 + 56))(v104, 1, 1, v50);
    sub_66D6E4(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);

    sub_760940();
    sub_75D820();

    (*(v102 + 8))(v22, v103);
  }

  else
  {
    sub_75D800();
    sub_75D830();
  }

  v51 = v116;
  v52 = v118;
  v53 = v108;
  v108(v116, v118, v28);
  v54 = v120;
  v53(v120, v52, v28);
  v55 = v106(v54, v28);
  if (v55 == v105)
  {
    (*(v119 + 8))(v51, v28);
    *v16 = UIFontTextStyleFootnote;
    v56 = v126;
    v57 = *(v126 + 104);
    LODWORD(v106) = enum case for FontSource.textStyle(_:);
    v122 = v57;
    v116 = (v126 + 104);
    (v57)(v16);
    v140[3] = v125;
    v140[4] = &protocol witness table for StaticDimension;
    sub_B1B4(v140);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v58 = sub_B1B4(&v137);
    v59 = *(v56 + 16);
    v117 = v56 + 16;
    v59(v58, v16, v14);
    v60 = UIFontTextStyleFootnote;
    sub_766CB0();
    v61 = *(v56 + 8);
    v126 = v56 + 8;
    v108 = v61;
    (v61)(v16, v14);
    if (qword_93DA28 != -1)
    {
      swift_once();
    }

    v62 = sub_7666D0();
    v120 = sub_BE38(v62, qword_99F670);
    v63 = *(v62 - 8);
    v64 = *(v63 + 16);
    v65 = v63 + 16;
    v64(v16, v120, v62);
    v66 = enum case for FontSource.useCase(_:);
    (v122)(v16, enum case for FontSource.useCase(_:), v14);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v67 = sub_B1B4(&v137);
    v59(v67, v16, v14);
    sub_766CB0();
    v68 = v108;
    (v108)(v16, v14);
    v69 = v120;
    v118 = v62;
    v120 = v64;
    v115 = v65;
    v64(v16, v69, v62);
    LODWORD(v119) = v66;
    (v122)(v16, v66, v14);
    v138 = v125;
    v139 = &protocol witness table for StaticDimension;
    sub_B1B4(&v137);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v70 = sub_B1B4(&v134);
    v107 = v59;
    v59(v70, v16, v14);
    sub_766CB0();
    v68(v16, v14);
    if (qword_93DA30 != -1)
    {
      swift_once();
    }

    v71 = v118;
    v72 = sub_BE38(v118, qword_99F688);
    v73 = v120;
    (v120)(v16, v72, v71);
    v74 = v119;
    (v122)(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v75 = sub_B1B4(&v134);
    v76 = v107;
    v107(v75, v16, v14);
    sub_766CB0();
    v77 = v108;
    (v108)(v16, v14);
    v73(v16, v72, v71);
    v78 = v122;
    (v122)(v16, v74, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v79 = sub_B1B4(&v134);
    v76(v79, v16, v14);
    sub_766CB0();
    v77(v16, v14);
    if (qword_93DA38 != -1)
    {
      swift_once();
    }

    v80 = v118;
    v81 = sub_BE38(v118, qword_99F6A0);
    (v120)(v16, v81, v80);
    v78(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v82 = sub_B1B4(&v134);
    v76(v82, v16, v14);
    sub_766CB0();
    v77(v16, v14);
    *v16 = UIFontTextStyleBody;
    v78(v16, v106, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v83 = sub_B1B4(&v134);
    v76(v83, v16, v14);
    v84 = UIFontTextStyleBody;
    sub_766CB0();
    v77(v16, v14);
    if (qword_93DA40 != -1)
    {
      swift_once();
    }

    v85 = v118;
    v106 = sub_BE38(v118, qword_99F6B8);
    v86 = v120;
    (v120)(v16, v106, v85);
    v78(v16, v119, v14);
    v87 = v125;
    v135 = v125;
    v136 = &protocol witness table for StaticDimension;
    sub_B1B4(&v134);
    v132 = v14;
    v133 = &protocol witness table for FontSource;
    v88 = sub_B1B4(&v131);
    v89 = v107;
    v107(v88, v16, v14);
    sub_766CB0();
    v90 = v108;
    (v108)(v16, v14);
    v86(v16, v106, v85);
    v91 = v119;
    v78(v16, v119, v14);
    v132 = v87;
    v133 = &protocol witness table for StaticDimension;
    sub_B1B4(&v131);
    v129 = v14;
    v130 = &protocol witness table for FontSource;
    v92 = sub_B1B4(&v128);
    v89(v92, v16, v14);
    sub_766CB0();
    v90(v16, v14);
    if (qword_93DA48 != -1)
    {
      swift_once();
    }

    v93 = v118;
    v94 = sub_BE38(v118, qword_99F6D0);
    (v120)(v16, v94, v93);
    (v122)(v16, v91, v14);
    v129 = v125;
    v130 = &protocol witness table for StaticDimension;
    sub_B1B4(&v128);
    v127[3] = v14;
    v127[4] = &protocol witness table for FontSource;
    v95 = sub_B1B4(v127);
    v89(v95, v16, v14);
    sub_766CB0();
    v90(v16, v14);
    sub_7585A0();
    return (*(v123 + 8))(v121, v124);
  }

  else
  {
    v97 = v55;
    v98 = enum case for AppShowcaseType.small(_:);
    sub_66B484(v114);
    v99 = *(v119 + 8);
    v99(v51, v28);
    result = (*(v123 + 8))(v47, v124);
    if (v97 != v98 && v97 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      return (v99)(v120, v28);
    }
  }

  return result;
}

uint64_t sub_66B484@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v5 = sub_7664A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_766CA0();
  __chkstk_darwin(v54);
  v63 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = v51 - v11;
  __chkstk_darwin(v12);
  v61 = v51 - v13;
  __chkstk_darwin(v14);
  v60 = v51 - v15;
  __chkstk_darwin(v16);
  v59 = v51 - v17;
  v18 = sub_7581D0();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v22, enum case for AppShowcaseType.smallAlignedLeft(_:), v18, v20);
  sub_66D6E4(&qword_954FB8, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  sub_769430();
  sub_769430();
  if (v82 == v79)
  {
    v53 = 1;
  }

  else
  {
    v53 = sub_76A950();
  }

  (*(v19 + 8))(v22, v18);

  v58 = sub_766970();
  v83 = v58;
  v84 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v82);
  sub_766960();
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  v24 = sub_BE38(v23, qword_99F688);
  v25 = *(v23 - 8);
  v26 = *(v25 + 16);
  v65 = v25 + 16;
  v66 = v23;
  v26(v8, v24, v23);
  v64 = enum case for FontSource.useCase(_:);
  v56 = v6[13];
  v56(v8);
  v80 = v5;
  v81 = &protocol witness table for FontSource;
  v27 = sub_B1B4(&v79);
  v28 = v6 + 2;
  v69 = v6[2];
  v69(v27, v8, v5);
  sub_766CB0();
  v68 = v6[1];
  v68(v8, v5);
  v80 = v58;
  v81 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v79);
  sub_766960();
  v26(v8, v24, v23);
  v29 = v64;
  v30 = v56;
  (v56)(v8, v64, v5);
  v77 = v5;
  v78 = &protocol witness table for FontSource;
  v31 = sub_B1B4(v76);
  v69(v31, v8, v5);
  sub_766CB0();
  v68(v8, v5);
  v52 = v24;
  v67 = v26;
  v26(v8, v24, v66);
  (v30)(v8, v29, v5);
  v77 = v5;
  v78 = &protocol witness table for FontSource;
  v32 = sub_B1B4(v76);
  v69(v32, v8, v5);
  sub_766CB0();
  v57 = v6 + 1;
  v68(v8, v5);
  if (qword_93DA38 != -1)
  {
    swift_once();
  }

  v33 = v66;
  v34 = sub_BE38(v66, qword_99F6A0);
  v67(v8, v34, v33);
  (v30)(v8, v29, v5);
  v77 = v5;
  v78 = &protocol witness table for FontSource;
  v35 = sub_B1B4(v76);
  v36 = v69;
  v69(v35, v8, v5);
  sub_766CB0();
  v37 = v68;
  v68(v8, v5);
  *v8 = UIFontTextStyleBody;
  (v30)(v8, enum case for FontSource.textStyle(_:), v5);
  v77 = v5;
  v78 = &protocol witness table for FontSource;
  v38 = sub_B1B4(v76);
  v36(v38, v8, v5);
  v39 = UIFontTextStyleBody;
  sub_766CB0();
  v37(v8, v5);
  v51[1] = v28;
  v40 = v64;
  if (qword_93DA40 != -1)
  {
    swift_once();
  }

  v41 = v66;
  v42 = sub_BE38(v66, qword_99F6B8);
  v67(v8, v42, v41);
  v43 = v40;
  v44 = v56;
  (v56)(v8, v43, v5);
  v45 = v54;
  v77 = v54;
  v78 = &protocol witness table for StaticDimension;
  sub_B1B4(v76);
  v74 = v5;
  v75 = &protocol witness table for FontSource;
  v46 = sub_B1B4(v73);
  v47 = v69;
  v69(v46, v8, v5);
  sub_766CB0();
  v48 = v68;
  v68(v8, v5);
  v67(v8, v52, v41);
  (v44)(v8, v64, v5);
  v74 = v45;
  v75 = &protocol witness table for StaticDimension;
  sub_B1B4(v73);
  v71 = v5;
  v72 = &protocol witness table for FontSource;
  v49 = sub_B1B4(v70);
  v47(v49, v8, v5);
  sub_766CB0();
  v48(v8, v5);
  v71 = v58;
  v72 = &protocol witness table for ZeroDimension;
  sub_B1B4(v70);
  sub_766960();
  return sub_7585A0();
}

uint64_t sub_66BEB4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_7664F0();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7581D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7585B0();
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7585D0();
  v44 = *(v11 - 8);
  v45 = v11;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76.receiver = v0;
  v76.super_class = ObjectType;
  v47 = ObjectType;
  objc_msgSendSuper2(&v76, "layoutSubviews", v12);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v14], v4);
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerDisplayProperties];

  v42 = v10;
  sub_66A1B4(v7, v15, v0, v10);

  (*(v5 + 8))(v7, v4);
  v16 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView];
  v74 = sub_759210();
  v75 = &protocol witness table for UIView;
  v41 = v16;
  v73 = v16;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v18 = *&v0[v17];
  if (v18)
  {
    v19 = sub_75A030();
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v18;
  v71 = v19;
  v72 = v20;
  v40 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel];
  v21 = v40;
  v22 = sub_75BB20();
  v66 = v22;
  v67 = &protocol witness table for UILabel;
  v64 = &protocol witness table for UILabel;
  v65 = v21;
  v23 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel];
  v63 = v22;
  v62 = v23;
  v24 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerButton];
  v60 = type metadata accessor for OfferButton();
  v61 = &protocol witness table for UIView;
  v25 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel];
  v58 = &protocol witness table for UILabel;
  v59 = v24;
  v57 = v22;
  v55 = &protocol witness table for UILabel;
  v56 = v25;
  v26 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel];
  v54 = v22;
  v52 = &protocol witness table for UILabel;
  v53 = v26;
  v27 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v51 = v22;
  v50 = v27;
  v28 = v41;
  v29 = v18;
  v30 = v40;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v43;
  sub_7585C0();
  sub_75D650();
  v37 = v46;
  sub_758590();
  (*(v48 + 8))(v37, v49);
  return (*(v44 + 8))(v36, v45);
}

uint64_t sub_66C3DC(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_77B6C0;
    v9 = *(v3 + *a2);
    v10 = *(v3 + *a3);
    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
    *(v3 + v4) = v6;
    v11 = v9;
    v12 = v10;
  }

  return v6;
}

double sub_66C488(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v5 = sub_66C3DC(&OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___lockupViews, &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel, &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel);
    v6 = &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___crossLinkViews;
    v7 = &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel;
    v8 = &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel;
  }

  else
  {
    if (([*(v2 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return result;
    }

    v5 = sub_66C3DC(&OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___crossLinkViews, &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel, &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel);
    v6 = &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___lockupViews;
    v7 = &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel;
    v8 = &OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel;
  }

  v9 = sub_66C3DC(v6, v7, v8);
  v10 = v9;
  if ((a2 & 1) == 0)
  {
    if (v5 >> 62)
    {
      v16 = sub_76A860();
    }

    else
    {
      v16 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    }

    if (v16)
    {
      v17 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v18 = sub_76A770();
        }

        else
        {
          if (v17 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_41;
          }

          v18 = *(v5 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_39;
        }

        [v18 setAlpha:0.0];
        [v19 setHidden:1];

        ++v17;
      }

      while (v20 != v16);
    }

    if (v10 >> 62)
    {
      v21 = sub_76A860();
      if (v21)
      {
LABEL_30:
        v5 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v22 = sub_76A770();
          }

          else
          {
            if (v5 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v22 = *(v10 + 8 * v5 + 32);
          }

          v23 = v22;
          v24 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_42;
          }

          [v22 setAlpha:1.0];
          [v23 setHidden:0];

          ++v5;
        }

        while (v24 != v21);
      }
    }

    else
    {
      v21 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      if (v21)
      {
        goto LABEL_30;
      }
    }

    return result;
  }

  if (v9 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_76A770();
      }

      else
      {
        if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_40;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      [v13 setHidden:0];

      ++v12;
      if (v15 == i)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_45:
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = v5;
  *(v26 + 24) = v10;
  v34 = sub_11FA9C;
  v35 = v26;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_23F0CC;
  v33 = &unk_89BD68;
  v27 = _Block_copy(&v30);

  v28 = swift_allocObject();
  *(v28 + 16) = v5;
  v34 = sub_11FAF4;
  v35 = v28;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_3D6D80;
  v33 = &unk_89BDB8;
  v29 = _Block_copy(&v30);

  [v25 animateWithDuration:4 delay:v27 options:v29 animations:0.33 completion:0.0];
  _Block_release(v29);
  _Block_release(v27);
  return result;
}

uint64_t type metadata accessor for AppShowcaseLockupView(uint64_t a1)
{
  result = qword_960A60;
  if (!qword_960A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_66CAB8(uint64_t a1, __n128 a2)
{
  result = sub_7581D0();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_66CB80()
{
  swift_beginAccess();

  return result;
}

double sub_66CBC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id sub_66CC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel];
  v6 = sub_769210();
  [v5 setText:v6];

  v7 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v8 = sub_769210();
  [v7 setText:v8];

  return [v4 setNeedsLayout];
}

uint64_t sub_66CD30(uint64_t a1)
{
  v20 = sub_75DF60();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7581D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v19 = a1;
  sub_758740();
  (*(v6 + 104))(v8, enum case for AppShowcaseType.large(_:), v5);
  sub_66D6E4(&qword_954FB8, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  sub_769430();
  sub_769430();
  if (v22 == v21)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);

LABEL_4:
    sub_758760();
    v16 = sub_764D90();

    v17 = v20;
    (*(v2 + 104))(v4, enum case for ComponentDecoration.arcade(_:), v20);
    v15 = sub_666980(v4, v16);

    (*(v2 + 8))(v4, v17);
    return v15 & 1;
  }

  v13 = sub_76A950();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);

  v15 = 0;
  if (v13)
  {
    goto LABEL_4;
  }

  return v15 & 1;
}

uint64_t sub_66D048()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_66D088(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_66D0A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_66D0D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_95F810, &unk_780110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_66D148()
{
  v1 = v0;
  v43 = sub_760AD0();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView;
  sub_759210();
  *(v0 + v8) = sub_759020();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView) = 0;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel;
  v42 = sub_75BB20();
  *(v1 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel;
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99F688);
  v13 = *(v11 - 8);
  v39 = *(v13 + 16);
  v39(v7, v12, v11);
  v14 = *(v13 + 56);
  v14(v7, 0, 1, v11);
  v15 = v2;
  v16 = enum case for DirectionalTextAlignment.none(_:);
  v40 = *(v15 + 104);
  v41 = v15 + 104;
  v40(v4, enum case for DirectionalTextAlignment.none(_:), v43);
  v17 = objc_allocWithZone(v42);
  *(v1 + v10) = sub_75BB10();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerButton;
  v19 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v18) = sub_1DD00C(0);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel;
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v11, qword_99E758);
  v39(v7, v21, v11);
  v14(v7, 0, 1, v11);
  v40(v4, v16, v43);
  v22 = objc_allocWithZone(v42);
  *(v1 + v20) = sub_75BB10();
  v23 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabelPresenter);
  *v23 = 0u;
  v23[1] = 0u;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerDisplayProperties) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkPresenter) = 0;
  v37 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel;
  v38 = v1;
  if (qword_93DA40 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v11, qword_99F6B8);
  v39(v7, v24, v11);
  v14(v7, 0, 1, v11);
  v25 = v43;
  LODWORD(v39) = v16;
  v26 = v40;
  v40(v4, v16, v43);
  v36 = v14;
  v27 = v42;
  v28 = objc_allocWithZone(v42);
  v29 = sub_75BB10();
  v30 = v7;
  v31 = v38;
  *(v38 + v37) = v29;
  v37 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v36(v30, 1, 1, v11);
  v26(v4, v39, v25);
  v32 = objc_allocWithZone(v27);
  *(v31 + v37) = sub_75BB10();
  v33 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_type;
  v34 = enum case for AppShowcaseType.large(_:);
  v35 = sub_7581D0();
  (*(*(v35 - 8) + 104))(v31 + v33, v34, v35);
  *(v31 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___lockupViews) = 0;
  *(v31 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___crossLinkViews) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_66D6E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_66D734(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_productReviewActionsView;
  type metadata accessor for ProductReviewActionsView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_separatorView;
  type metadata accessor for SeparatorView(0);
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ProductReviewActionsCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_separatorView;
  v14 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_separatorView];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v15 = v14;
  v16 = sub_769FB0();
  [v15 setBackgroundColor:v16];

  [*&v11[v13] setHidden:1];
  v17 = [v11 contentView];
  [v17 addSubview:*&v11[v13]];

  v18 = [v11 contentView];
  [v18 addSubview:*&v11[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_productReviewActionsView]];

  return v11;
}

id sub_66D9E8()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductReviewActionsCell();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_productReviewActionsView] setFrame:{v4, v6, v8, v10}];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  CGRectGetMinX(v14);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetMinY(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  CGRectGetWidth(v16);
  if (qword_93D2C8 != -1)
  {
    swift_once();
  }

  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_separatorView];
  sub_769D20();
  return [v11 setFrame:?];
}

id sub_66DBE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewActionsCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_66DC84(char a1)
{
  v2 = v1;
  v4 = sub_759950();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_76A410();
  v14 = sub_76A3F0();
  v15 = &enum case for SystemImage.speakerSlashFill(_:);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    sub_362208(v13, v10);
    sub_76A420();
    sub_502E14(v13);
  }

  else
  {
    if (a1)
    {
      v16 = &enum case for SystemImage.speakerSlashFill(_:);
    }

    else
    {
      v16 = &enum case for SystemImage.speakerWave3Fill(_:);
    }

    (*(v5 + 104))(v7, *v16, v4);
    sub_759930();
    (*(v5 + 8))(v7, v4);
    sub_76A390();
    sub_76A420();
  }

  if (a1)
  {
    v17 = 0xD00000000000002BLL;
  }

  else
  {
    v17 = 0xD000000000000029;
  }

  if (a1)
  {
    v18._countAndFlagsBits = 0xD00000000000002CLL;
  }

  else
  {
    v18._countAndFlagsBits = 0xD00000000000002ALL;
  }

  if (a1)
  {
    v19 = "upCollectionElementsObserver";
  }

  else
  {
    v15 = &enum case for SystemImage.speakerWave3Fill(_:);
    v19 = "sizeChangeObserver";
  }

  v20 = "on.Unmute.LargeContentTitle";
  if ((a1 & 1) == 0)
  {
    v20 = "on.Mute.LargeContentTitle";
  }

  v18._object = (v20 | 0x8000000000000000);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_75B750(v18, v26);
  v21 = sub_769210();

  [v2 setAccessibilityLabel:v21];

  (*(v5 + 104))(v7, *v15, v4);
  v22 = sub_759930();
  (*(v5 + 8))(v7, v4);
  [v2 setLargeContentImage:v22];

  v25._object = (v19 | 0x8000000000000000);
  v25._countAndFlagsBits = v17;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_75B750(v25, v27);
  v23 = sub_769210();

  [v2 setLargeContentTitle:v23];
}

id sub_66DFD8(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_76A370();
  v11 = sub_76A3F0();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_76A420();
  sub_76A410();
  if ((*(v12 + 48))(v6, 1, v11))
  {
    sub_362208(v6, v9);
    sub_76A420();

    sub_502E14(v6);
  }

  else
  {
    v13 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:a1];
    sub_76A220();
    sub_76A420();
  }

  v14 = v10;
  [v14 setShowsLargeContentViewer:1];
  [v14 setScalesLargeContentImage:1];

  v15 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v14 addInteraction:v15];

  return v14;
}

id sub_66E2E4()
{
  if (qword_93D1B0 != -1)
  {
    swift_once();
  }

  v1 = qword_99DD30;
  qword_9A0690 = qword_99DD30;

  return v1;
}

char *sub_66E348()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_isHighlighted] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_showSeparator] = 0;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage] = 0;
  sub_75BB20();
  v7 = sub_7664A0();
  v33[3] = v7;
  v33[4] = &protocol witness table for FontSource;
  v8 = sub_B1B4(v33);
  if (qword_93E048 != -1)
  {
    v31 = v8;
    swift_once();
    v8 = v31;
  }

  v9 = qword_9A0690;
  *v8 = qword_9A0690;
  (*(*(v7 - 8) + 104))();
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v2);
  v10 = v9;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel] = sub_75BA50();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = type metadata accessor for SearchHintView();
  v32.receiver = v1;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel;
  v18 = qword_93D198;
  v19 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel];
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setTextColor:qword_99DD18];

  v20 = *&v16[v17];
  v21 = [v16 traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  v23 = sub_769B20();

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 2;
  }

  [v20 setNumberOfLines:v24];

  sub_BD88(&qword_9477F0, qword_780200);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_77B6D0;
  *(v25 + 32) = sub_767B80();
  *(v25 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();
  swift_unknownObjectRelease();

  [v16 addSubview:*&v16[v17]];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconView;
  v27 = qword_93D1A8;
  v28 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconView];
  if (v27 != -1)
  {
    swift_once();
  }

  [v28 setTintColor:qword_99DD28];

  [v16 addSubview:*&v16[v26]];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView] setHidden:v16[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_showSeparator]];
  [v16 addSubview:*&v16[v29]];

  return v16;
}

void sub_66E8E4(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 traitCollection];
    if (qword_93D1B0 != -1)
    {
      swift_once();
    }

    v7 = [objc_opt_self() configurationWithTextStyle:qword_99DD30 scale:2];
    v8 = [v7 configurationWithTraitCollection:v6];

    v9 = [v5 imageWithConfiguration:v8];
  }

  else
  {
    v9 = 0;
  }

  v11.value.super.isa = v9;
  v11.is_nil = 0;
  sub_7591D0(v11, a3);
}

uint64_t sub_66EA38()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_7664F0();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75C170();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75C150();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for SearchHintView();
  v42.receiver = v0;
  v42.super_class = v14;
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage];
  v16 = v15;
  [v0 layoutMargins];
  sub_66ED7C(v15, v0, v13, v17, v18);

  (*(v8 + 16))(v10, v13, v7);
  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconView];
  v40 = sub_759210();
  v41 = &protocol witness table for UIView;
  v39 = v19;
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel];
  v37 = sub_75BB20();
  v38 = &protocol witness table for UILabel;
  v36 = v20;
  v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView];
  v34 = type metadata accessor for SeparatorView(0);
  v35 = &protocol witness table for UIView;
  v33 = v21;
  v22 = v19;
  v23 = v20;
  v24 = v21;
  sub_75C160();
  [v1 bounds];
  v25 = v28;
  sub_75C120();
  (*(v31 + 8))(v25, v32);
  (*(v29 + 8))(v6, v30);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_66ED7C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, uint64_t a5@<D3>)
{
  v41 = a3;
  v9 = sub_76A920();
  v40 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7664A0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_766CA0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
    v21 = [a2 traitCollection];
    if (qword_93D1B0 != -1)
    {
      swift_once();
    }

    v22 = [objc_opt_self() configurationWithTextStyle:qword_99DD30 scale:2];
    v23 = [v22 configurationWithTraitCollection:v21];

    v24 = [v20 imageWithConfiguration:v23];
    [v24 size];
  }

  else
  {
    v39 = v9;
    v25 = v16;
    if (qword_93E048 != -1)
    {
      swift_once();
    }

    v26 = qword_9A0690;
    *v15 = qword_9A0690;
    (*(v13 + 104))(v15, enum case for FontSource.textStyle(_:), v12);
    v48 = v12;
    v49 = &protocol witness table for FontSource;
    v27 = sub_B1B4(v47);
    (*(v13 + 16))(v27, v15, v12);
    v28 = v26;
    sub_766CB0();
    (*(v13 + 8))(v15, v12);
    sub_766470();
    v16 = v25;
    sub_766700();
    (*(v40 + 8))(v11, v39);
    (*(v17 + 8))(v19, v25);
  }

  v48 = &type metadata for CGFloat;
  v49 = &protocol witness table for CGFloat;
  v47[0] = a4;
  v46[8] = &type metadata for CGFloat;
  v46[9] = &protocol witness table for CGFloat;
  v46[5] = a5;
  if (qword_93E048 != -1)
  {
    swift_once();
  }

  v29 = qword_9A0690;
  *v15 = qword_9A0690;
  v30 = enum case for FontSource.textStyle(_:);
  v31 = *(v13 + 104);
  v31(v15, enum case for FontSource.textStyle(_:), v12);
  v46[3] = v16;
  v46[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v46);
  v44 = v12;
  v45 = &protocol witness table for FontSource;
  v32 = sub_B1B4(v43);
  v40 = v16;
  v33 = *(v13 + 16);
  v33(v32, v15, v12);
  v34 = v29;
  sub_766CB0();
  v35 = *(v13 + 8);
  v35(v15, v12);
  *v15 = v34;
  v31(v15, v30, v12);
  v44 = v40;
  v45 = &protocol witness table for StaticDimension;
  sub_B1B4(v43);
  v42[3] = v12;
  v42[4] = &protocol witness table for FontSource;
  v36 = sub_B1B4(v42);
  v33(v36, v15, v12);
  sub_766CB0();
  v35(v15, v12);
  return sub_75C130();
}

double sub_66F3AC(void *a1, double a2, double a3)
{
  v4 = v3;
  v29[1] = a1;
  v29[2] = swift_getObjectType();
  v30 = sub_75C170();
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75C150();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v29 - v14;
  v16 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage];
  v17 = v16;
  [v4 layoutMargins];
  sub_66ED7C(v16, a1, v15, v18, v19);

  (*(v10 + 16))(v12, v15, v9);
  v20 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconView];
  v38 = sub_759210();
  v39 = &protocol witness table for UIView;
  v37 = v20;
  v21 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel];
  v35 = sub_75BB20();
  v36 = &protocol witness table for UILabel;
  v34 = v21;
  v22 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView];
  v32 = type metadata accessor for SeparatorView(0);
  v33 = &protocol witness table for UIView;
  v31 = v22;
  v23 = v20;
  v24 = v21;
  v25 = v22;
  sub_75C160();
  sub_75C110();
  v27 = v26;
  (*(v6 + 8))(v8, v30);
  (*(v10 + 8))(v15, v9);
  return v27;
}

id sub_66F738(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHintView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_66F7FC(char *a1, id a2)
{
  v3 = [a2 preferredContentSizeCategory];
  v4 = sub_769B20() & 1;

  v5 = [a1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LODWORD(v5) = sub_769B20() & 1;
  if (v4 != v5)
  {
    v7 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel];
    v8 = [a1 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = sub_769B20();

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    [v7 setNumberOfLines:v11];

    [a1 setNeedsLayout];
  }
}

uint64_t sub_66F938(void *a1, void *a2, __n128 a3)
{
  v92 = a1;
  v97 = sub_75C170();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v4;
  __chkstk_darwin(v5);
  v95 = &v71 - v6;
  v91 = sub_766AF0();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v79 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v81 = &v71 - v9;
  __chkstk_darwin(v10);
  v82 = &v71 - v11;
  __chkstk_darwin(v12);
  v84 = &v71 - v13;
  __chkstk_darwin(v14);
  v86 = &v71 - v15;
  v87 = sub_766D70();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_76A920();
  v78 = *(v98 - 8);
  __chkstk_darwin(v98);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_7664A0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = (&v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_766CA0();
  v77 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_75C150();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v80 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v100 = &v71 - v29;
  v99 = a2;
  [a2 pageMarginInsets];
  v31 = v30;
  v33 = v32;
  if (qword_93E048 != -1)
  {
    swift_once();
  }

  v34 = qword_9A0690;
  *v22 = qword_9A0690;
  v73 = enum case for FontSource.textStyle(_:);
  v72 = v20[13];
  v72(v22);
  v71 = v20 + 13;
  v110 = v19;
  v111 = &protocol witness table for FontSource;
  v35 = sub_B1B4(&v109);
  v74 = v20[2];
  v75 = v20 + 2;
  v74(v35, v22, v19);
  v36 = v34;
  sub_766CB0();
  v76 = v20[1];
  v76(v22, v19);
  sub_766470();
  sub_766700();
  v78[1](v18, v98);
  (*(v77 + 8))(v25, v23);
  v110 = &type metadata for CGFloat;
  v111 = &protocol witness table for CGFloat;
  v109 = v31;
  v107 = &type metadata for CGFloat;
  v108 = &protocol witness table for CGFloat;
  v106 = v33;
  v37 = v36;
  *v22 = v36;
  v38 = v73;
  v39 = v72;
  (v72)(v22, v73, v19);
  v105[3] = v23;
  v105[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v105);
  v103 = v19;
  v104 = &protocol witness table for FontSource;
  v40 = sub_B1B4(&v102);
  v41 = v74;
  v74(v40, v22, v19);
  v42 = v37;
  v78 = v42;
  sub_766CB0();
  v43 = v76;
  v76(v22, v19);
  *v22 = v42;
  v39(v22, v38, v19);
  v103 = v23;
  v104 = &protocol witness table for StaticDimension;
  sub_B1B4(&v102);
  v101[3] = v19;
  v101[4] = &protocol witness table for FontSource;
  v44 = sub_B1B4(v101);
  v41(v44, v22, v19);
  sub_766CB0();
  v43(v22, v19);
  sub_75C130();
  sub_75C140();
  v45 = sub_7670D0();
  swift_allocObject();
  v98 = sub_7670B0();
  v46 = v79;
  sub_766AE0();
  v47 = objc_opt_self();
  v48 = v99;
  v49 = [v99 traitCollection];
  v50 = [v47 preferredFontForTextStyle:v78 compatibleWithTraitCollection:v49];

  v51 = v81;
  sub_766AD0();

  v52 = *(v89 + 8);
  v53 = v91;
  v52(v46, v91);
  v54 = v82;
  sub_766A30();
  v52(v51, v53);
  v55 = v84;
  sub_766A90();
  v52(v54, v53);
  v56 = [v48 traitCollection];
  v57 = [v56 preferredContentSizeCategory];
  sub_769B20();

  sub_766AA0();
  v52(v55, v53);
  sub_766D50();
  v58 = v92;
  v59 = v83;
  sub_766DA0();
  sub_766D40();
  (*(v85 + 8))(v59, v87);
  swift_allocObject();
  v60 = sub_7670B0();
  v61 = v88;
  v62 = v90;
  (*(v88 + 16))(v80, v100, v90);
  v107 = v45;
  v108 = &protocol witness table for LayoutViewPlaceholder;
  v106 = v98;
  sub_134D8(&v109, v105);
  v103 = v45;
  v104 = &protocol witness table for LayoutViewPlaceholder;
  v102 = v60;

  v63 = v95;
  sub_75C160();
  v64 = v96;
  v65 = v94;
  v66 = v97;
  (*(v96 + 16))(v94, v63, v97);
  v67 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v68 = swift_allocObject();
  (*(v64 + 32))(v68 + v67, v65, v66);
  swift_allocObject();
  v69 = sub_767090();

  (*(v64 + 8))(v63, v66);
  sub_BEB8(&v109);
  (*(v61 + 8))(v100, v62);
  return v69;
}

uint64_t sub_670538(__n128 a1)
{
  v2 = sub_75C170();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

void sub_670668(void *a1)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_getObjectType();
    v2 = a1;
    sub_761FB0();
  }
}

uint64_t sub_670710(void *a1, uint64_t a2, uint64_t a3)
{
  v60[1] = a3;
  v64 = a1;
  v3 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v3 - 8);
  v60[0] = v60 - v4;
  v63 = sub_75B660();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_764930();
  v6 = *(v65 - 8);
  __chkstk_darwin(v65);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v60 - v10;
  v12 = sub_BD88(&unk_959540, &qword_784830);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v60 - v14;
  v16 = sub_BD88(&unk_94F1F0, &qword_782290);
  v66 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v60 - v17;
  swift_getKeyPath();
  sub_75C7B0();
  v19 = v16;

  sub_75C7E0();
  sub_768760();
  (*(v13 + 8))(v15, v12);
  swift_getKeyPath();
  sub_768750();
  v20 = v65;

  (*(v6 + 32))(v8, v11, v20);
  v21 = (*(v6 + 88))(v8, v20);
  if (v21 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v21 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v6 + 8))(v8, v20);
    swift_getKeyPath();
    v22 = v61;
    sub_768750();

    v24 = sub_51DB60(v23);
    (*(v62 + 8))(v22, v63);
    v25 = v64;
    if ([v64 overrideUserInterfaceStyle] != v24)
    {
      [v25 setOverrideUserInterfaceStyle:v24];
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v25)
    {
      sub_134D8(v71, v69);
      v26 = v25;
      sub_BD88(&unk_944DA0, &unk_77EB70);
      sub_BD88(&unk_952540, &qword_7918A0);
      if (swift_dynamicCast())
      {
        sub_10914(v67, v70);
        sub_B170(v70, v70[3]);
        if (sub_762A10())
        {
          sub_75E5C0();
        }

        swift_getObjectType();
        sub_75D990();

        sub_BEB8(v70);
      }

      else
      {

        v68 = 0;
        memset(v67, 0, sizeof(v67));
        sub_10A2C(v67, &unk_9513E0, &qword_7A38B0);
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v25)
    {
      swift_getObjectType();
      v27 = v25;
      sub_761FA0();
    }

    swift_getObjectType();
    v28 = swift_conformsToProtocol2();
    if (v28 && v25)
    {
      v29 = v28;
      ObjectType = swift_getObjectType();
      v31 = v19;
      v32 = *(v29 + 8);
      v33 = v25;
      v34 = v32(ObjectType, v29);
      v19 = v31;
      v35 = v34;
      v36 = (v34 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
      v37 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
      v38 = v36[1];
      *v36 = 0;
      v36[1] = 0;
      sub_F704(v37, v38);
      [*&v35[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
    }

    v39 = [objc_opt_self() standardUserDefaults];
    v41 = sub_38F8EC(v40);

    if (v41)
    {
      v42 = v64;
      [v64 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v51 = [objc_opt_self() blueColor];
      v52 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
      v53 = sub_6F4BD4(v51, v44, v46, v48, v50);
      v54 = v18;
      sub_B170(v71, v71[3]);
      v55 = v60[0];
      sub_7690D0();
      sub_6F47B4(v55);
      sub_10A2C(v55, &unk_93FF30, &unk_77DB10);
      v56 = [v42 contentView];
      v57 = [v56 viewWithTag:58236912];

      [v57 removeFromSuperview];
      v58 = [v42 contentView];
      [v58 addSubview:v53];

      v18 = v54;
    }
  }

  (*(v66 + 8))(v18, v19);
  return sub_BEB8(v71);
}

void sub_670F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v9 - 8);
  v11 = &v41[-1] - v10;
  v12 = sub_BD88(&unk_94F1F0, &qword_782290);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41[-1] - v14;
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16 && a1)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    sub_13EB80(a2, a5, ObjectType, v17, v19);
  }

  else
  {
    type metadata accessor for TodayDebugSectionBackgroundView();
    if (swift_dynamicCastClass())
    {
      sub_38FDC4(a2, v20);
    }

    else
    {
      v21 = type metadata accessor for InteractiveSectionBackgroundView(0);
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
        v40 = v21;
        sub_768900();
        sub_768ED0();
        sub_2F318C(a2, a4, a5);
        v41[3] = v40;
        v41[4] = &off_88A558;
        v41[0] = v23;
        v24 = a1;
        sub_420A64(v41);

        sub_10A2C(v41, &unk_94A510, &unk_7AC3D0);
      }
    }
  }

  v25 = [objc_opt_self() standardUserDefaults];
  v27 = sub_38F8EC(v26);

  if (v27)
  {
    [a1 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = [objc_opt_self() redColor];
    v37 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
    v38 = sub_6F4BD4(v36, v29, v31, v33, v35);
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    (*(v13 + 8))(v15, v12);
    sub_6F47B4(v11);
    sub_10A2C(v11, &unk_93FF30, &unk_77DB10);
    v39 = [a1 viewWithTag:58236912];
    [v39 removeFromSuperview];

    [a1 addSubview:v38];
  }
}

double sub_67137C(double a1, double a2)
{
  v5 = sub_75D850();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = sub_75CF00();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  v19 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView);
  if (v19)
  {
    v33 = v8;
    v20 = v5;
    v21 = v19;
    sub_11E030(v18);
    [v21 layoutMargins];
    v22 = [v21 traitCollection];
    (*(v13 + 16))(v15, v18, v12);
    v23 = sub_75CE70();
    if ((v25 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_769A00())
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v26 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v26 = qword_946938;
      }

      v28 = sub_BE38(v20, v26);
      v29 = v33;
      (*(v6 + 16))(v33, v28, v20);
      (*(v6 + 32))(v11, v29, v20);
      sub_75D800();
      sub_75D830();
      sub_75CE80();
      (*(v6 + 8))(v11, v20);
    }

    sub_75CDB0();

    v30 = *(v13 + 8);
    v30(v15, v12);

    v30(v18, v12);
  }

  else
  {
    v27 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_arcadeLockupView);
    if (v27)
    {
      [v27 sizeThatFits:{a1, a2}];
    }

    else
    {
      return 0.0;
    }
  }

  return a1;
}

uint64_t sub_671744()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_9A0698);
  sub_BE38(v0, qword_9A0698);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_6718A8(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  sub_75CDE0();
  if (qword_93D508 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v45 = sub_BE38(v6, qword_99E728);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v41 = v6;
  v8(v5, v45, v6);
  v46 = enum case for FontSource.useCase(_:);
  v10 = v3 + 13;
  v48 = v3[13];
  v48(v5);
  v39 = sub_766CA0();
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v11 = sub_B1B4(v49);
  v12 = v3 + 2;
  v36 = v3[2];
  v36(v11, v5, v2);
  sub_766CB0();
  v14 = v3[1];
  v13 = v3 + 1;
  v43 = v14;
  v14(v5, v2);
  sub_75CED0();
  v15 = v6;
  v16 = v8;
  v8(v5, v45, v15);
  v17 = v46;
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v49);
  v19 = v36;
  v36(v18, v5, v2);
  sub_766CB0();
  v43(v5, v2);
  sub_75CEA0();
  v44 = v9;
  v42 = v16;
  v16(v5, v45, v41);
  v20 = v17;
  v21 = v39;
  v45 = v10;
  (v48)(v5, v20, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v49);
  v19(v22, v5, v2);
  sub_766CB0();
  v43(v5, v2);
  sub_75CE90();
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v23 = v41;
  v24 = sub_BE38(v41, qword_99E6E0);
  v42(v5, v24, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v25 = sub_B1B4(v49);
  v19(v25, v5, v2);
  sub_766CB0();
  v38 = v12;
  v26 = v43;
  v43(v5, v2);
  sub_75CEF0();
  v40 = v13;
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v37 = sub_BE38(v23, qword_99E7A0);
  (v42)(v5);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v27 = sub_B1B4(v49);
  v19(v27, v5, v2);
  sub_766CB0();
  v26(v5, v2);
  sub_75CE50();
  if (qword_93D550 != -1)
  {
    swift_once();
  }

  v28 = sub_BE38(v23, qword_99E800);
  v42(v5, v28, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v29 = sub_B1B4(v49);
  v19(v29, v5, v2);
  sub_766CB0();
  v26(v5, v2);
  sub_75CEE0();
  if (qword_93D538 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v23, qword_99E7B8);
  v31 = v42;
  v42(v5, v30, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v32 = sub_B1B4(v49);
  v19(v32, v5, v2);
  sub_766CB0();
  v33 = v43;
  v43(v5, v2);
  sub_75CE60();
  v31(v5, v37, v41);
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v34 = sub_B1B4(v49);
  v19(v34, v5, v2);
  sub_766CB0();
  v33(v5, v2);
  return sub_75CDF0();
}

uint64_t sub_672124()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75D2C0();
  sub_161DC(v4, qword_9A06B0);
  v18 = sub_BE38(v4, qword_9A06B0);
  v25[24] = &protocol witness table for CGFloat;
  v25[23] = &type metadata for CGFloat;
  v25[20] = 0x4048000000000000;
  v25[18] = &type metadata for Double;
  v25[19] = &protocol witness table for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4030000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v16 = sub_BE38(v5, qword_99E7A0);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = sub_766CA0();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_B1B4(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_766CB0();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_B1B4(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_B1B4(v19);
  v9(v11, v3, v0);
  sub_766CB0();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_75D2A0();
}

id sub_672498()
{
  result = [objc_allocWithZone(UIGlassEffect) init];
  qword_960BF0 = result;
  return result;
}

id sub_6724E4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&qword_9498F8, &qword_78AA20);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_arcadeLockupView] = 0;
  v5 = &v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_clickActionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_tapGestureRecognizer] = 0;
  if (qword_93E060 != -1)
  {
    swift_once();
  }

  v9.receiver = v0;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, "initWithEffect:", qword_960BF0);
  sub_767960();
  v7 = sub_767980();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  sub_769F60();
  [v6 setClipsToBounds:1];
  [v6 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v6 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  return v6;
}

void sub_672884()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_arcadeLockupView];
    if (!v3)
    {
      return;
    }

    v1 = v3;
    v2 = 0;
  }

  v4 = v2;
  sub_75D650();
  [v1 sizeThatFits:{v5, v6}];
  v8 = v7;
  sub_75D650();
  MinX = CGRectGetMinX(v12);
  sub_75D650();
  v10 = CGRectGetMidY(v13) + v8 * -0.5;
  sub_75D650();
  [v1 setFrame:{MinX, v10, CGRectGetWidth(v14), v8}];
}

void sub_672B58(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_tapGestureRecognizer;
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_tapGestureRecognizer])
  {
    v4 = a1;
    v5 = a2;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_tapGestureRecognizer] removeTarget:v2 action:"clickActionHandlerTrampoline"];
    a1 = v4;
    a2 = v5;
  }

  v6 = &v2[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_clickActionHandler];
  v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_clickActionHandler];
  v8 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_clickActionHandler + 8];
  *v6 = a1;
  *(v6 + 1) = a2;
  sub_F714(a1, a2);
  sub_F704(v7, v8);
  if (*v6)
  {
    v9 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"clickActionHandlerTrampoline"];
    [v9 setDelegate:v2];
    if (*&v2[v3])
    {
      [v2 removeGestureRecognizer:?];
      v10 = *&v2[v3];
    }

    else
    {
      v10 = 0;
    }

    *&v2[v3] = v9;
    v11 = v9;

    [v2 addGestureRecognizer:v11];
  }
}

char *sub_672CA4(void *a1)
{
  v2 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - v3;
  v5 = sub_75CF00();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = [objc_allocWithZone(type metadata accessor for CrossLinkLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_11D37C(a1);
  if (qword_93E050 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v5, qword_9A0698);
  v14 = *(v6 + 16);
  v14(v11, v13, v5);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView;
  v16 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
  v14(v8, v11, v5);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v16[v17], v8, v5);
  swift_endAccess();
  [v16 setNeedsLayout];
  v18 = *(v6 + 8);
  v18(v8, v5);
  v19 = v12;
  [v19 setNeedsLayout];
  v18(v11, v5);
  [v19 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];

  v20 = qword_93D508;
  v21 = *(*&v12[v15] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_7666D0();
  v23 = sub_BE38(v22, qword_99E728);
  v24 = *(v22 - 8);
  v59 = *(v24 + 16);
  v60 = v24 + 16;
  v59(v4, v23, v22);
  v58 = *(v24 + 56);
  v58(v4, 0, 1, v22);
  sub_75BA40();

  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v25 = sub_769FD0();
  v26 = v25;
  v57 = v15;
  v27 = *&v12[v15];
  v28 = *(v27 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor);
  *(v27 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor) = v25;
  v56 = v19;
  if (!v28)
  {
    v32 = v25;
    v30 = 0;
    goto LABEL_9;
  }

  v29 = v25;
  v30 = v28;
  v31 = sub_76A1C0();

  if ((v31 & 1) == 0)
  {
LABEL_9:
    sub_3E31BC();
    v29 = v26;
  }

  v33 = v57;
  v34 = qword_93D530;
  v35 = *(*&v12[v57] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_BE38(v22, qword_99E7A0);
  v59(v4, v36, v22);
  v58(v4, 0, 1, v22);
  sub_75BA40();

  v37 = *(*&v12[v33] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  v38 = sub_769FF0();
  [v37 setTextColor:v38];

  v39 = *(*&v12[v33] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  v40 = v56;
  if (v39)
  {
    v41 = qword_93D550;
    v42 = v39;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_BE38(v22, qword_99E800);
    v59(v4, v43, v22);
    v58(v4, 0, 1, v22);
    sub_75BA40();

    v33 = v57;
    v44 = *(*&v12[v57] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
    if (v44)
    {
      v45 = v44;
      v46 = sub_769FE0();
      [v45 setTextColor:v46];
    }
  }

  v47 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel];
  v48 = sub_769FF0();
  [v47 setTextColor:v48];

  v49 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel];
  v50 = sub_769FD0();
  [v49 setTextColor:v50];

  v51 = *(*&v12[v33] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  v52 = qword_93D538;
  v53 = v51;
  if (v52 != -1)
  {
    swift_once();
  }

  v54 = sub_BE38(v22, qword_99E7B8);
  v59(v4, v54, v22);
  v58(v4, 0, 1, v22);
  sub_75BA40();

  return v40;
}

uint64_t sub_6733AC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView);
  if (!v3)
  {
    v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_arcadeLockupView);
    if (!v8)
    {
LABEL_9:
      v12 = 1;
      return v12 & 1;
    }

    v4 = v8;
    v9 = [a1 view];
    if (v9)
    {
      v6 = v9;
      v7 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButton];
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v4 = v3;
  v5 = [a1 view];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = *(*&v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
LABEL_7:
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v10 = v7;
  v11 = sub_76A1C0();

  v12 = v11 ^ 1;
  return v12 & 1;
}

id sub_6734C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_contentViewController] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController] = 0;
  v3[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_startedAsFlowPreview] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_presenter] = a1;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph] = a2;
  v10.receiver = v3;
  v10.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  sub_67571C(qword_960CA0, &unk_7AC55C);
  v8 = v7;
  sub_75EB40();

  return v8;
}

void sub_673654()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  sub_75A160();
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_contentViewController];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v1 view];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v6 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v8 insertSubview:v9 atIndex:0];

LABEL_6:
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v24 = v16;
  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = 0;
  sub_761920();
}

void sub_673870()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_contentViewController];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v11 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 setFrame:{v4, v6, v8, v10}];

LABEL_5:
  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController];
  if (!v14)
  {
    return;
  }

  v15 = [v14 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 setFrame:{v4, v6, v8, v10}];
}

void sub_673A54(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_contentViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_contentViewController];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 removeFromSuperview];

  v7 = *&v1[v3];
  if (v7)
  {
    [v7 removeFromParentViewController];
    v8 = *&v1[v3];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  *&v1[v3] = a1;
  v13 = a1;

  if (!a1)
  {
    return;
  }

  [v1 addChildViewController:v13];
  if ([v1 isViewLoaded])
  {
    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v13 view];
      if (v11)
      {
        v12 = v11;
        [v10 insertSubview:v11 atIndex:0];

        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
      return;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
}

uint64_t sub_673BAC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = sub_760280();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = type metadata accessor for FlowPresentationHints(0);
  __chkstk_darwin(v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_9442D0, &unk_780660);
  __chkstk_darwin(v13 - 8);
  v15 = v27 - v14;
  v16 = type metadata accessor for FlowDestination(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_38EE0(a2, v30);

  sub_146CF0(v20, v30, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10A2C(v15, &unk_9442D0, &unk_780660);
    return 0;
  }

  sub_61AE8(v15, v19, v21);
  sub_758AA0();
  sub_758A90();
  v22 = [v27[1] traitCollection];
  sub_D2028(v9);

  sub_68DF8(v12, type metadata accessor for FlowPresentationHints);
  sub_68DF8(v19, type metadata accessor for FlowDestination);
  v24 = v28;
  v23 = v29;
  (*(v28 + 32))(v6, v9, v29);
  v25 = (*(v24 + 88))(v6, v23);
  result = 1;
  if (v25 != enum case for FlowPresentationContext.presentModal(_:) && v25 != enum case for FlowPresentationContext.presentModalFormSheet(_:) && v25 != enum case for FlowPresentationContext.presentModalPageSheet(_:) && v25 != enum case for FlowPresentationContext.presentModalFullScreen(_:))
  {
    (*(v24 + 8))(v6, v23);
    return 0;
  }

  return result;
}

void sub_673F44(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_7687B0();
  __chkstk_darwin(v4 - 8);
  v79 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75A3A0();
  v77 = *(v6 - 8);
  __chkstk_darwin(v6);
  v78 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v8 - 8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v80 = &v73 - v12;
  __chkstk_darwin(v13);
  v15 = &v73 - v14;
  __chkstk_darwin(v16);
  v75 = &v73 - v17;
  v18 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v18 - 8);
  v20 = &v73 - v19;
  v21 = sub_BD88(&unk_9442D0, &unk_780660);
  __chkstk_darwin(v21 - 8);
  v23 = &v73 - v22;
  v24 = type metadata accessor for FlowDestination(0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = v2;
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_startedAsFlowPreview] == 1)
  {
    v74 = sub_758B20();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v29 = v28;
      sub_38EE0(v81, &v83);
      swift_retain_n();
      sub_146CF0(v29, &v83, v23);
      if ((*(v25 + 48))(v23, 1, v24) == 1)
      {
        sub_10A2C(v23, &unk_9442D0, &unk_780660);
        if (qword_93DF00 != -1)
        {
          swift_once();
        }

        v31 = sub_768FF0();
        sub_BE38(v31, qword_9A0430);
        sub_BD88(&qword_93FD00, &unk_77DF10);
        sub_7685F0();
        *(swift_allocObject() + 16) = xmmword_77DC20;
        *(&v84 + 1) = ObjectType;
        *&v83 = v82;
        v32 = v82;
        sub_7685C0();
        sub_10A2C(&v83, &unk_93FBD0, &qword_77DFA0);
        sub_768540();
        *(&v84 + 1) = v74;
        *&v83 = v29;

        sub_7685E0();
        sub_10A2C(&v83, &unk_93FBD0, &qword_77DFA0);
        sub_768EA0();
      }

      else
      {
        sub_61AE8(v23, v27, v30);
        v53 = v82;
        v54 = [v82 traitCollection];
        v55 = sub_758A60();
        v57 = v56;
        sub_758A80();
        v85 = 0;
        v83 = 0u;
        v84 = 0u;
        v58 = sub_471418(v27, v54, v55, v57, v20, &v83, *&v53[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph], 1);

        sub_10A2C(&v83, &unk_9442E0, &unk_783C10);
        sub_10A2C(v20, &unk_944FF0, &unk_783C00);
        sub_673A54(v58);

        sub_68DF8(v27, type metadata accessor for FlowDestination);
      }

      return;
    }
  }

  sub_758B20();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;

    goto LABEL_9;
  }

  sub_75AB10();
  if (!swift_dynamicCastClass())
  {
LABEL_39:
    v70 = *&v82[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph];
    v71 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v72 = *(v71 - 8);
    if ((*(v72 + 48))(v10, 1, v71) != 1)
    {
      sub_32A6C0(a1, 1, v70, v10);

      (*(v72 + 8))(v10, v71);
      return;
    }

    v44 = v10;
LABEL_41:
    sub_10A2C(v44, &unk_93F980, &qword_77EDA0);
    return;
  }

  v45 = sub_75AB00();
  if (!(v45 >> 62))
  {
    if (*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_17;
    }

LABEL_38:

    goto LABEL_39;
  }

  v68 = v45;
  v69 = sub_76A860();
  v45 = v68;
  if (!v69)
  {
    goto LABEL_38;
  }

LABEL_17:
  if ((v45 & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }
  }

  v46 = swift_dynamicCastClass();
  if (!v46)
  {

    goto LABEL_39;
  }

  v34 = v46;
LABEL_9:

  v35 = v82;
  if ((sub_673BAC(v34, v81, v36) & 1) == 0)
  {
    (*(v77 + 104))(v78, enum case for NavigationTab.infer(_:), v6);
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_77D9F0;
    *(v47 + 32) = a1;

    sub_768790();
    sub_75B6B0();
    swift_allocObject();
    v48 = sub_75B690();
    v49 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph];
    v50 = sub_BD88(&unk_93F630, &unk_77E230);
    v51 = v80;
    sub_768860();
    v52 = *(v50 - 8);
    if ((*(v52 + 48))(v51, 1, v50) != 1)
    {
      sub_32ACB0(v48, 1, v49, v51);

      (*(v52 + 8))(v51, v50);
      return;
    }

    v44 = v51;
    goto LABEL_41;
  }

  v37 = [v35 tabBarController];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 transientViewController];
    if (v39)
    {

      [v38 setTransientViewController:0 animated:0];
      v40 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph];
      v41 = sub_BD88(&unk_93F630, &unk_77E230);
      v42 = v75;
      sub_768860();
      v43 = *(v41 - 8);
      if ((*(v43 + 48))(v42, 1, v41) != 1)
      {
        sub_32A6C0(a1, 1, v40, v42);

        (*(v43 + 8))(v42, v41);
        return;
      }

      v44 = v42;
      goto LABEL_41;
    }
  }

  v59 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph];
  v60 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v15, 1, v60) == 1)
  {
    sub_10A2C(v15, &unk_93F980, &qword_77EDA0);
  }

  else
  {
    sub_32A6C0(a1, 1, v59, v15);

    (*(v61 + 8))(v15, v60);
  }

  v62 = [v35 navigationController];
  v63 = [v62 topViewController];

  if (v63)
  {
    sub_3C80C();
    v64 = v35;
    v65 = sub_76A1C0();

    if (v65)
    {
      v66 = [v64 navigationController];
      if (v66)
      {
        v67 = v66;
      }
    }
  }
}

void sub_674BA8()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  sub_767130();
  v3 = objc_allocWithZone(sub_767160());
  v4 = sub_767150();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController];
  sub_761930();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    sub_761920();
  }

  else
  {
    __break(1u);
  }
}

void sub_674D00()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController];
  if (v2)
  {
    sub_767160();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_761930();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_761920();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_674DE4(uint64_t a1)
{
  v1 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v1 - 8);
  v47 = &v37 - v2;
  v3 = sub_75A3A0();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v46 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_758B40();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75F340();
  v41 = *(v7 - 8);
  v42 = v7;
  __chkstk_darwin(v7);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_760280();
  v9 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = sub_765490();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_767210();
  __chkstk_darwin(v22 - 8);
  sub_767200();
  v37 = sub_767230();
  v23 = objc_allocWithZone(v37);
  swift_errorRetain();
  v24 = sub_767220();
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  (*(v19 + 104))(v21, enum case for FlowPage.viewController(_:), v18);
  v25 = sub_7570A0();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = sub_759E30();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v51 = 0u;
  v52 = 0u;
  sub_768790();
  (*(v9 + 104))(v38, enum case for FlowPresentationContext.push(_:), v39);
  (*(v41 + 104))(v40, enum case for FlowAnimationBehavior.never(_:), v42);
  (*(v44 + 104))(v43, enum case for FlowOrigin.inapp(_:), v45);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v27 = sub_758AD0();
  *(&v54 + 1) = v37;
  *&v53 = v24;
  v28 = v24;
  v29 = v47;
  v30 = v28;
  sub_758A70();
  sub_10A2C(&v53, &unk_93FBD0, &qword_77DFA0);
  (*(v48 + 104))(v46, enum case for NavigationTab.infer(_:), v49);
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_77D9F0;
  *(v31 + 32) = v27;

  sub_768790();
  sub_75B6B0();
  swift_allocObject();
  v32 = sub_75B690();
  v33 = *(v50 + OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph);
  v34 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v29, 1, v34) == 1)
  {

    return sub_10A2C(v29, &unk_93F980, &qword_77EDA0);
  }

  else
  {
    sub_32ACB0(v32, 1, v33, v29);

    return (*(v35 + 8))(v29, v34);
  }
}

uint64_t sub_67571C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LoadingPageViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_675800(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v212 = a2;
  v213 = a3;
  v205 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v205);
  v189 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v196 = &v174 - v6;
  v211 = sub_75CFE0();
  v204 = *(v211 - 8);
  __chkstk_darwin(v211);
  v201 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v210 = &v174 - v9;
  v10 = sub_BD88(&qword_9439D8, &qword_799160);
  __chkstk_darwin(v10 - 8);
  v200 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v199 = &v174 - v13;
  __chkstk_darwin(v14);
  v209 = &v174 - v15;
  __chkstk_darwin(v16);
  v208 = &v174 - v17;
  v18 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v18 - 8);
  v188 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v187 = &v174 - v21;
  __chkstk_darwin(v22);
  v195 = &v174 - v23;
  __chkstk_darwin(v24);
  v194 = &v174 - v25;
  v26 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v202 = *(v26 - 8);
  v203 = v26;
  __chkstk_darwin(v26);
  v186 = &v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v185 = &v174 - v29;
  __chkstk_darwin(v30);
  v184 = &v174 - v31;
  __chkstk_darwin(v32);
  v198 = &v174 - v33;
  __chkstk_darwin(v34);
  v193 = &v174 - v35;
  __chkstk_darwin(v36);
  v192 = &v174 - v37;
  __chkstk_darwin(v38);
  v191 = &v174 - v39;
  __chkstk_darwin(v40);
  v207 = &v174 - v41;
  v42 = sub_BD88(&unk_948010, qword_789590);
  __chkstk_darwin(v42 - 8);
  v176 = &v174 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v179 = &v174 - v45;
  __chkstk_darwin(v46);
  v178 = &v174 - v47;
  __chkstk_darwin(v48);
  v181 = &v174 - v49;
  __chkstk_darwin(v50);
  v197 = &v174 - v51;
  __chkstk_darwin(v52);
  v175 = &v174 - v53;
  __chkstk_darwin(v54);
  v177 = &v174 - v55;
  __chkstk_darwin(v56);
  v180 = &v174 - v57;
  __chkstk_darwin(v58);
  v183 = &v174 - v59;
  __chkstk_darwin(v60);
  v182 = &v174 - v61;
  __chkstk_darwin(v62);
  v206 = &v174 - v63;
  v64 = sub_75B660();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v174 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v70 = &v174 - v69;
  v71 = sub_75AEF0();
  v72 = 0;
  if (v71)
  {
    v72 = sub_75AFE0();
  }

  v214 = v72;
  sub_75B000();
  v74 = v73;
  if (v73)
  {
  }

  v190 = v74;
  sub_75B010();
  v76 = v75;
  if (v75)
  {
  }

  sub_75AF00();
  (*(v65 + 104))(v67, enum case for ShelfBackground.interactive(_:), v64);
  v77 = sub_75B650();
  v78 = *(v65 + 8);
  v78(v67, v64);
  v78(v70, v64);
  v79 = v212;
  v80 = sub_67C9EC(a1, v212);
  v81 = sub_67C7C8(a1, v79);
  if (v77)
  {
    sub_36492C(v76 != 0, v213);

    return;
  }

  v82 = v76;
  v174 = v76;
  if (v80)
  {
    if (v214)
    {

      v83 = sub_764AF0();

      v84 = v191;
      v85 = v206;
      if (v83)
      {
        sub_759820();

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
      v84 = v191;
      v85 = v206;
    }

    v90 = sub_759810();
    v91 = *(v90 - 8);
    (*(v91 + 56))(v85, v86, 1, v90);
    v92 = sub_75CFD0();
    v201 = *(v92 - 1);
    (*(v201 + 7))(v208, 1, 1, v92);
    v212 = v92;
    if (v82)
    {
      v93 = (v91 + 48);
      v94 = v85;
      if (v80 == 1)
      {
        v95 = v182;
        sub_1ED18(v94, v182, &unk_948010, qword_789590);
        if ((*v93)(v95, 1, v90) == 1)
        {
          sub_10A2C(v95, &unk_948010, qword_789590);
          v96 = 0;
        }

        else
        {
          v96 = sub_7597B0();
          (*(v91 + 8))(v95, v90);
        }

        v106 = v203;
        v107 = v194;
        sub_5E740C(v96, v207);

        if (qword_93DE80 != -1)
        {
          swift_once();
        }

        v108 = qword_9A0298;
      }

      else
      {
        v100 = v183;
        sub_1ED18(v94, v183, &unk_948010, qword_789590);
        if ((*v93)(v100, 1, v90) == 1)
        {
          sub_10A2C(v100, &unk_948010, qword_789590);
          v101 = 0;
        }

        else
        {
          v101 = sub_7597B0();
          (*(v91 + 8))(v100, v90);
        }

        v106 = v203;
        v107 = v194;
        sub_5E740C(v101, v207);

        if (qword_93DE70 != -1)
        {
          swift_once();
        }

        v108 = qword_9A0268;
      }

      v109 = sub_BE38(v106, v108);
      sub_C1D58(v109, v84, v110);
      if (qword_93DE30 != -1)
      {
        swift_once();
      }

      v111 = 0;
      v112 = qword_9A01A8;
      v113 = v107;
    }

    else
    {
      if (v80 == 1)
      {
        v97 = v85;
        v98 = v180;
        sub_1ED18(v97, v180, &unk_948010, qword_789590);
        if ((*(v91 + 48))(v98, 1, v90) == 1)
        {
          sub_10A2C(v98, &unk_948010, qword_789590);
          v99 = 0;
        }

        else
        {
          v99 = sub_7597B0();
          (*(v91 + 8))(v98, v90);
        }

        v106 = v203;
        v107 = v194;
        sub_5E740C(v99, v207);

        if (qword_93DE78 != -1)
        {
          swift_once();
        }

        v111 = 1;
        v112 = qword_9A0280;
      }

      else
      {
        v102 = (v91 + 48);
        if (v190)
        {
          v103 = v85;
          v104 = v177;
          sub_1ED18(v103, v177, &unk_948010, qword_789590);
          if ((*v102)(v104, 1, v90) == 1)
          {
            sub_10A2C(v104, &unk_948010, qword_789590);
            v105 = 0;
          }

          else
          {
            v105 = sub_7597B0();
            (*(v91 + 8))(v104, v90);
          }

          v106 = v203;
          v107 = v194;
          sub_5E7414(v105, v207);

          if (qword_93DE68 != -1)
          {
            swift_once();
          }

          v111 = 1;
          v112 = qword_9A0250;
        }

        else
        {
          v130 = v85;
          v131 = v175;
          sub_1ED18(v130, v175, &unk_948010, qword_789590);
          if ((*v102)(v131, 1, v90) == 1)
          {
            sub_10A2C(v131, &unk_948010, qword_789590);
            v132 = 0;
          }

          else
          {
            v132 = sub_7597B0();
            (*(v91 + 8))(v131, v90);
          }

          v106 = v203;
          v107 = v194;
          sub_5E740C(v132, v207);

          if (qword_93DE60 != -1)
          {
            swift_once();
          }

          v111 = 1;
          v112 = qword_9A0238;
        }
      }

      v113 = v84;
    }

    LODWORD(v203) = v82 != 0;
    v156 = sub_BE38(v106, v112);
    sub_C1D58(v156, v113, v157);
    v158.n128_f64[0] = (*(v202 + 56))(v107, v111, 1, v106);
    v159 = v207;
    v160 = v192;
    sub_C1D58(v207, v192, v158);
    v161 = v193;
    sub_C1D58(v84, v193, v162);
    v163 = v195;
    sub_1ED18(v107, v195, &qword_9439E0, &unk_787AB0);
    v164 = v208;
    sub_1ED18(v208, v209, &qword_9439D8, &qword_799160);
    v165 = v204;
    v166 = v211;
    (*(v204 + 104))(v210, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v211);
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v202 = sub_769FB0();

    sub_10A2C(v164, &qword_9439D8, &qword_799160);
    sub_10A2C(v107, &qword_9439E0, &unk_787AB0);
    sub_15CFA0(v84, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_15CFA0(v159, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10A2C(v206, &unk_948010, qword_789590);
    v167 = v205;
    v168 = *(v205 + 32);
    v169 = v196;
    sub_C1E18(v160, v196, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_C1E18(v161, v169 + v167[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_109C4(v163, v169 + v167[6], &qword_9439E0, &unk_787AB0);
    *(v169 + v167[7]) = 0;
    *(v169 + v168) = 0;
    *(v169 + v167[9]) = v203;
    *(v169 + v167[14]) = 0x4030000000000000;
    *(v169 + v167[12]) = 0;
    *(v169 + v167[13]) = v202;
    v170 = v209;
    (*(v165 + 32))(v169 + v167[11], v210, v166);
    v171 = v201;
    v172 = v212;
    if ((*(v201 + 6))(v170, 1, v212) == 1)
    {
      sub_10A2C(v170, &qword_9439D8, &qword_799160);
      if (v174)
      {
        v173 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
      }

      else
      {
        v173 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
      }

      (*(v171 + 13))(v169 + v167[10], *v173, v172);
    }

    else
    {
      (*(v171 + 4))(v169 + v167[10], v170, v172);
    }

    v155 = v169;
    goto LABEL_103;
  }

  LODWORD(v212) = v81;
  if (v214)
  {

    v87 = sub_764AF0();

    v88 = v197;
    if (v87)
    {
      sub_759820();

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
    v88 = v197;
  }

  v114 = sub_759810();
  v115 = *(v114 - 8);
  (*(v115 + 56))(v88, v89, 1, v114);
  v116 = sub_75CFD0();
  v209 = *(v116 - 8);
  (*(v209 + 56))(v199, 1, 1, v116);
  v117 = (v115 + 48);
  v210 = v116;
  if (v190)
  {
    if (v82)
    {
      v118 = v181;
      sub_1ED18(v88, v181, &unk_948010, qword_789590);
      if ((*v117)(v118, 1, v114) == 1)
      {
        sub_10A2C(v118, &unk_948010, qword_789590);
        v119 = 0;
      }

      else
      {
        v119 = sub_7597B0();
        (*(v115 + 8))(v118, v114);
      }

      v124 = v203;
      v125 = v187;
      v126 = v184;
      sub_5E740C(v119, v198);

      if (qword_93DE58 != -1)
      {
        swift_once();
      }

      v127 = qword_9A0220;
LABEL_68:
      v133 = sub_BE38(v124, v127);
      sub_C1D58(v133, v126, v134);
      if (qword_93DE30 != -1)
      {
        swift_once();
      }

      v135 = 0;
      v136 = qword_9A01A8;
      v137 = v125;
      goto LABEL_84;
    }

    v122 = v178;
    sub_1ED18(v88, v178, &unk_948010, qword_789590);
    if ((*v117)(v122, 1, v114) == 1)
    {
      sub_10A2C(v122, &unk_948010, qword_789590);
      v123 = 0;
    }

    else
    {
      v123 = sub_7597B0();
      (*(v115 + 8))(v122, v114);
    }

    v124 = v203;
    v125 = v187;
    v126 = v184;
    sub_5E740C(v123, v198);

    if (qword_93DE40 != -1)
    {
      swift_once();
    }

    v135 = 1;
    v136 = qword_9A01D8;
  }

  else
  {
    if (v82)
    {
      v120 = v179;
      sub_1ED18(v88, v179, &unk_948010, qword_789590);
      if ((*v117)(v120, 1, v114) == 1)
      {
        sub_10A2C(v120, &unk_948010, qword_789590);
        v121 = 0;
      }

      else
      {
        v121 = sub_7597B0();
        (*(v115 + 8))(v120, v114);
      }

      v124 = v203;
      v125 = v187;
      v126 = v184;
      sub_5E740C(v121, v198);

      if (qword_93DE50 != -1)
      {
        swift_once();
      }

      v127 = qword_9A0208;
      goto LABEL_68;
    }

    v128 = v176;
    sub_1ED18(v88, v176, &unk_948010, qword_789590);
    if ((*v117)(v128, 1, v114) == 1)
    {
      sub_10A2C(v128, &unk_948010, qword_789590);
      v129 = 0;
    }

    else
    {
      v129 = sub_7597B0();
      (*(v115 + 8))(v128, v114);
    }

    v124 = v203;
    v125 = v187;
    v126 = v184;
    sub_5E740C(v129, v198);

    if (qword_93DE38 != -1)
    {
      swift_once();
    }

    v135 = 1;
    v136 = qword_9A01C0;
  }

  v137 = v126;
LABEL_84:
  LODWORD(v208) = v82 != 0;
  v138 = sub_BE38(v124, v136);
  sub_C1D58(v138, v137, v139);
  v140.n128_f64[0] = (*(v202 + 56))(v125, v135, 1, v124);
  v141 = v198;
  v142 = v185;
  sub_C1D58(v198, v185, v140);
  v143 = v186;
  sub_C1D58(v126, v186, v144);
  v145 = v188;
  sub_1ED18(v125, v188, &qword_9439E0, &unk_787AB0);
  v146 = v199;
  sub_1ED18(v199, v200, &qword_9439D8, &qword_799160);
  v147 = v204;
  (*(v204 + 104))(v201, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v211);
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v207 = sub_769FB0();

  sub_10A2C(v146, &qword_9439D8, &qword_799160);
  sub_10A2C(v125, &qword_9439E0, &unk_787AB0);
  sub_15CFA0(v126, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CFA0(v141, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10A2C(v197, &unk_948010, qword_789590);
  v148 = v205;
  v149 = *(v205 + 32);
  v150 = v189;
  sub_C1E18(v142, v189, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v143, v150 + v148[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_109C4(v145, v150 + v148[6], &qword_9439E0, &unk_787AB0);
  *(v150 + v148[7]) = v212 & 1;
  *(v150 + v149) = 0;
  *(v150 + v148[9]) = v208;
  *(v150 + v148[14]) = 0x4030000000000000;
  *(v150 + v148[12]) = 0;
  *(v150 + v148[13]) = v207;
  (*(v147 + 32))(v150 + v148[11], v201, v211);
  v151 = v200;
  v153 = v209;
  v152 = v210;
  if ((*(v209 + 48))(v200, 1, v210) == 1)
  {
    sub_10A2C(v151, &qword_9439D8, &qword_799160);
    if (v174)
    {
      v154 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v154 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v153 + 104))(v150 + v148[10], *v154, v152);
  }

  else
  {
    (*(v153 + 32))(v150 + v148[10], v151, v152);
  }

  v155 = v150;
LABEL_103:
  sub_C1E18(v155, v213, type metadata accessor for TitleHeaderView.Style);
}

void *sub_677158()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return v0;
}

void sub_6771B0(void *a1)
{
  v3 = sub_757500();
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
    v14 = sub_75AF30();
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
        sub_68755C(&qword_960E10, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
        sub_76A590();
        do
        {
          aBlock[6] = v13;
          sub_76A540();
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
        *(v21 + 16) = sub_687668;
        *(v21 + 24) = v20;
        aBlock[4] = sub_2EC28;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1EB578;
        aBlock[3] = &unk_89C038;
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

id sub_677594(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v49 = a4;
  v50 = a2;
  v51 = a3;
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = 0;
  if (sub_75AEE0())
  {
    return v14;
  }

  sub_75AF10();
  v45 = a1;
  v15 = sub_75AED0();
  v16 = *(v6 + 16);
  v16(v10, v13, v5);
  v46 = v5;
  v47 = v6;
  v17 = *(v6 + 88);
  v18 = v17(v10, v5);
  v19 = v18 == enum case for Shelf.ContentType.smallLockup(_:) || v18 == enum case for Shelf.ContentType.mediumLockup(_:);
  v20 = v50;
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
            (*(v47 + 8))(v10, v46);
            goto LABEL_41;
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_10:
  v21 = sub_3AC688();
  if (v21)
  {
    v23 = v45;
    v24 = v51;
    v25 = sub_681330(v45, v20, v21, v22, v51, v49);
    v27 = v46;
    v26 = v47;
    goto LABEL_46;
  }

LABEL_41:
  v31 = v48;
  v27 = v46;
  v16(v48, v13, v46);
  v32 = v17(v31, v27);
  if (v32 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v33 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v34 = &off_89D438;
    v26 = v47;
LABEL_45:
    v23 = v45;
    [v20 bounds];
    v35 = v34;
    v24 = v51;
    v25 = sub_68164C(v23, v36, v37, v13, v33, v35, v51, v49);
    goto LABEL_46;
  }

  v26 = v47;
  if (v32 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v33 = type metadata accessor for InformationRibbonCollectionViewCell(0);
    v34 = &off_8924D0;
    goto LABEL_45;
  }

  v42 = *(v47 + 8);
  v42(v31, v27);
  v43 = sub_3AC688();
  v23 = v45;
  if (v43)
  {
    sub_6819A4(v45, v13, v43, v44, v51, v20, v49);
    if (!v25)
    {
      v42(v13, v27);
      return 0;
    }

    v24 = v51;
LABEL_46:
    v14 = v25;
    [v14 setContentInsets:{sub_679978(v23, v24)}];
    sub_677EA8(v23, v24, v20);
    sub_BE70(0, &unk_956240, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = sub_769450().super.isa;

    [v14 setBoundarySupplementaryItems:isa];

    sub_682808(v23, v39);
    sub_BE70(0, &unk_957FA0, NSCollectionLayoutDecorationItem_ptr);
    v40 = sub_769450().super.isa;

    [v14 setDecorationItems:v40];

    (*(v26 + 8))(v13, v27);
    return v14;
  }

  v53 = 0;
  v54 = 0xE000000000000000;
  sub_76A730(62);
  v55._object = 0x80000000007F05F0;
  v55._countAndFlagsBits = 0xD00000000000002ELL;
  sub_769370(v55);
  sub_76A7F0();
  v56._countAndFlagsBits = 0x7463657320746120;
  v56._object = 0xEC000000206E6F69;
  sub_769370(v56);
  v52 = v23;
  v57._countAndFlagsBits = sub_76A910();
  sub_769370(v57);

  result = sub_76A840();
  __break(1u);
  return result;
}

id sub_677CC4(void *a1)
{
  if (*(v1 + 80) != 1)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v3 = sub_766CA0();
  sub_BE38(v3, qword_99FE18);
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_77D9F0;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = sub_7671E0();
  sub_7666E0();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension:1.0];
  v11 = [v9 absoluteDimension:v8];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:UICollectionElementKindSectionFooter alignment:5];
  return v13;
}

double *sub_677EA8(uint64_t a1, void *a2, void *a3)
{
  sub_75AFF0();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  [a3 bounds];
  v8 = v7;
  sub_67A694(a1, a2, a3);
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 absoluteDimension:v8];
  v13 = [v11 absoluteDimension:v10];
  v14 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v14 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_77D9F0;
  *(v16 + 32) = v15;

  return v16;
}

uint64_t (*sub_678058(uint64_t a1, void *a2, void *a3, uint64_t a4))(uint64_t a1, uint64_t a2, double a3)
{
  v5 = v4;
  v43 = a2;
  v9 = *v4;
  v10 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_BD88(&qword_93FFC0, &qword_77F490);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_679978(a1, a3);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_761120();
  sub_768900();
  sub_768ED0();
  v44 = v47;
  sub_75E3E0();
  sub_7688F0();
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

  v30 = sub_205CFC(a1, v29, v26, a4, v16, v18, v20, v22, v25, v23, v27, v28);

  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v5[8];
  v5[8] = 0x8000000000000000;
  sub_459B54(v30, a1, isUniquelyReferenced_nonNull_native);
  v5[8] = v46;
  swift_endAccess();
  sub_75AFE0();
  sub_764A70();

  v32 = sub_768AB0();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v12, 1, v32) == 1)
  {
    sub_10A2C(v12, &unk_93FF30, &unk_77DB10);
    v34 = 1;
  }

  else
  {
    sub_768A90();
    (*(v33 + 8))(v12, v32);
    v34 = 0;
  }

  v35 = sub_768A80();
  (*(*(v35 - 8) + 56))(v15, v34, 1, v35);
  v36 = v44;
  v37 = v44;
  v38 = v45;
  v39 = sub_678C3C(v15, v36, v45, v30);

  sub_10A2C(v15, &qword_93FFC0, &qword_77F490);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = &protocol witness table for CompoundScrollObserver;
  return sub_6874D8;
}

uint64_t sub_67847C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_768AB0();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = v1[2];
  v13 = *(v2 + 80);
  v45 = *(v2 + 96);
  result = sub_75AF30();
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
      sub_75AFE0();
      sub_764A70();
      if ((*v44)(v5, 1, v6) == 1)
      {

        sub_10A2C(v5, &unk_93FF30, &unk_77DB10);
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
        v23 = sub_663D5C(v15);
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
          result = sub_76A9B0();
          __break(1u);
          return result;
        }

        v27 = v22;
        if (v20[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_45C108();
          }
        }

        else
        {
          sub_456470(v26, isUniquelyReferenced_nonNull_native);
          v28 = sub_663D5C(v15);
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

void sub_678898(uint64_t a1)
{
  if (a1)
  {
    __chkstk_darwin(a1);
    v2 = v1;

    sub_BD88(&qword_9467C0, &qword_790FA0);
    sub_2A3AD4();
    sub_768610();
  }
}

uint64_t sub_678974(double a1, double a2, double a3, double a4)
{
  v5 = sub_768A80();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_768AB0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764A70();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10A2C(v11, &unk_93FF30, &unk_77DB10);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    if (*(v4 + 112))
    {

      sub_75F4B0();

      if (*(v4 + 112))
      {

        sub_768A90();
        v16 = sub_75F4A0();

        (*(v6 + 8))(v8, v5);
        (*(v13 + 8))(v15, v12);
        return v16;
      }
    }

    (*(v13 + 8))(v15, v12);
  }

  return 0;
}

uint64_t sub_678C3C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v7 = sub_BD88(&qword_93FFC0, &qword_77F490);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_768A80();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v17 = objc_allocWithZone(sub_75FA60());
  v18 = sub_75FA50();
  if (!*(v4 + 112))
  {
LABEL_4:
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1ED18(a1, v9, &qword_93FFC0, &qword_77F490);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10A2C(v9, &qword_93FFC0, &qword_77F490);
    goto LABEL_4;
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 16))(v13, v16, v10);
  sub_761C40();
  swift_allocObject();
  swift_retain_n();
  sub_761C50();
  sub_75FA40();

  (*(v11 + 8))(v16, v10);
  if (a2)
  {
LABEL_5:
    sub_7624B0();
    swift_allocObject();
    v19 = a2;
    sub_7624C0();
    sub_75FA40();
  }

LABEL_6:
  v21 = v24;
  v20 = v25;
  if (v24)
  {
    sub_75FED0();
    swift_allocObject();
    v22 = v21;
    sub_75FEE0();
    sub_75FA40();
  }

  if (v20)
  {
    sub_68755C(&qword_960D28, type metadata accessor for InteractiveSectionBackgroundScrollCoordinator, &unk_78B948);

    sub_75FA40();
  }

  return v18;
}

double sub_679008(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v47 = a4;
  v44 = a3;
  v43[1] = a2;
  v50 = a1;
  v49 = sub_75B660();
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v43[0] = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v43 - v7;
  v9 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v9 - 8);
  v11 = v43 - v10;
  v12 = sub_764930();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v43 - v17;
  v50 = sub_75AFE0();
  v51 = v18;
  sub_764940();
  v48 = v8;
  v45 = v11;
  if (v44)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    v19 = v46;
    v20 = v49;
    (*(v46 + 104))(v8, enum case for ShelfBackground.none(_:), v49);
  }

  else
  {
    sub_75AF10();
    (*(v13 + 56))(v11, 0, 1, v12);
    sub_75AF00();
    v20 = v49;
    v19 = v46;
  }

  v21 = v51;
  (*(v13 + 16))(v15, v51, v12);
  v22 = (*(v13 + 88))(v15, v12);
  v23 = v45;
  v24 = v47;
  if (v22 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v25 = &off_89D438;
  }

  else
  {
    if (v22 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v13 + 8))(v15, v12);
      v27 = v48;
      goto LABEL_11;
    }

    type metadata accessor for InformationRibbonCollectionViewCell(0);
    v25 = &off_8924D0;
  }

  v26 = (v25[2])();
  v27 = v48;
  v21 = v51;
  if ((v28 & 1) == 0)
  {
    v29 = *&v26;

    v30 = v29;
    (*(v19 + 8))(v27, v20);
    sub_10A2C(v23, &qword_951BE0, &unk_782280);
    (*(v13 + 8))(v21, v12);
    return v30;
  }

LABEL_11:
  v46 = v12;
  v31 = sub_3AC688();
  if (v31)
  {
    v33 = v31;
    v34 = v32;
    v35 = v43[0];
    sub_7648F0();
    *&v36 = COERCE_DOUBLE((*(v34 + 48))(v23, v27, v35, v24, v33, v34));
    v38 = v37;

    v39 = *(v19 + 8);
    v40 = v35;
    v41 = v49;
    v39(v40, v49);
    v39(v27, v41);
    sub_10A2C(v23, &qword_951BE0, &unk_782280);
    (*(v13 + 8))(v51, v46);
    v30 = 0.0;
    if ((v38 & 1) == 0)
    {
      return *&v36;
    }
  }

  else
  {

    (*(v19 + 8))(v27, v20);
    sub_10A2C(v23, &qword_951BE0, &unk_782280);
    (*(v13 + 8))(v21, v46);
    return 0.0;
  }

  return v30;
}

double sub_67957C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v35 = a4;
  LODWORD(v33) = a3;
  v31 = *v4;
  v5 = v31;
  v32 = a2;
  v6 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_764930();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = *(v5 + 80);
  v17 = sub_75AFE0();
  sub_764940();
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
    sub_75AF10();
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_75AFF0();
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
    v22 = &off_89D438;
  }

  else
  {
    if (v21 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v10 + 8))(v12, v9);
      goto LABEL_14;
    }

    type metadata accessor for InformationRibbonCollectionViewCell(0);
    v22 = &off_8924D0;
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
  if (sub_3AC688())
  {
    v23 = (*(v25 + 40))(v8, v18, v19);
    if ((v26 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v27 = sub_6855A0(v19);

LABEL_18:
  sub_10A2C(v8, &qword_951BE0, &unk_782280);
  (*(v10 + 8))(v15, v9);
  return v27;
}

double sub_679978(uint64_t a1, void *a2)
{
  v5 = sub_764930();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v34 = &v33 - v8;
  v9 = sub_76A920();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_75AF30() > a1)
  {
    if (qword_93DD18 != -1)
    {
      swift_once();
    }

    v13 = sub_75E080();
    sub_BE38(v13, qword_99FE90);
    sub_766470();
    sub_75E070();
    (*(v10 + 8))(v12, v9);
    sub_75AFF0();
    if (v15)
    {

      top = 0.0;
    }

    else
    {
      if (a1 >= 1)
      {
        v17 = a1 - 1;
      }

      else
      {
        v17 = 0;
      }

      top = sub_679008(a1, v17, a1 < 1, a2, v14);
    }

    v19 = v35;
    v18 = v36;
    v20 = v34;
    v21 = sub_75AF30();
    if (a1 + 1 < v21)
    {
      v22 = a1 + 1;
    }

    else
    {
      v22 = 0;
    }

    (*(*v2 + 536))(a1, v22, a1 + 1 >= v21, a2);
    sub_75AF10();
    if (sub_683E8C(a1))
    {
      goto LABEL_46;
    }

    v23 = sub_3AC688();
    if (!v23)
    {
      top = UIEdgeInsetsZero.top;
LABEL_46:
      (*(v19 + 8))(v20, v18);
      return top;
    }

    v25 = v23;
    v36 = v24;
    [a2 pageMarginInsets];
    v27 = v26;
    v28 = sub_75AED0();
    v29 = v33;
    (*(v19 + 16))(v33, v20, v18);
    v30 = (*(v19 + 88))(v29, v18);
    if (v30 != enum case for Shelf.ContentType.smallLockup(_:) && v30 != enum case for Shelf.ContentType.mediumLockup(_:))
    {
      if (v30 == enum case for Shelf.ContentType.largeLockup(_:))
      {
LABEL_19:
        v31 = 1;
LABEL_45:
        (*(v36 + 32))(v31 & 1, a2, v25, v27, v27);
        goto LABEL_46;
      }

      if (v30 != enum case for Shelf.ContentType.inAppPurchaseLockup(_:) && v30 != enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) && v30 != enum case for Shelf.ContentType.action(_:))
      {
        if (v30 == enum case for Shelf.ContentType.ribbonBar(_:))
        {
          goto LABEL_19;
        }

        if (v30 != enum case for Shelf.ContentType.editorialCard(_:) && v30 != enum case for Shelf.ContentType.videoCard(_:))
        {
          v31 = 1;
          if (v30 == enum case for Shelf.ContentType.brick(_:) || v30 == enum case for Shelf.ContentType.categoryBrick(_:))
          {
            goto LABEL_45;
          }

          if (v30 != enum case for Shelf.ContentType.reviews(_:) && v30 != enum case for Shelf.ContentType.appTrailerLockup(_:) && v30 != enum case for Shelf.ContentType.framedVideo(_:) && v30 != enum case for Shelf.ContentType.screenshotsLockup(_:) && v30 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v30 != enum case for Shelf.ContentType.smallBreakout(_:))
          {
            if (v30 == enum case for Shelf.ContentType.editorialStoryCard(_:))
            {
              goto LABEL_19;
            }

            if (v30 != enum case for Shelf.ContentType.mixedMediaLockup(_:) && v30 != enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) && v30 != enum case for Shelf.ContentType.largeGameCenterPlayer(_:) && v30 != enum case for Shelf.ContentType.posterLockup(_:) && v30 != enum case for Shelf.ContentType.smallContactCard(_:))
            {
              if (v30 != enum case for Shelf.ContentType.informationRibbon(_:))
              {
                v31 = v28;
                if (v30 != enum case for Shelf.ContentType.appPromotion(_:))
                {
                  (*(v19 + 8))(v29, v18);
                  v31 = 0;
                }

                goto LABEL_45;
              }

              goto LABEL_19;
            }
          }
        }
      }
    }

    v31 = v28;
    goto LABEL_45;
  }

  return UIEdgeInsetsZero.top;
}

double sub_679FB8(uint64_t a1, void *a2)
{
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  v12 = 0.0;
  if (sub_75AF30() > a1)
  {
    sub_75AF10();
    if (!sub_683E8C(a1))
    {
      v21[1] = swift_getObjectType();
      v13 = [a2 traitCollection];
      v14 = (*(*v2 + 696))(v11, v13);

      if (v14)
      {
        v15 = [a2 traitCollection];
        v16 = sub_684040(a1, v15);

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

uint64_t sub_67A2B0(uint64_t a1, __n128 a2)
{
  v3 = sub_75B660();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  if (sub_75AF30() <= a1)
  {
    v12 = 0;
  }

  else
  {
    sub_75AF00();
    (*(v4 + 104))(v6, enum case for ShelfBackground.none(_:), v3);
    sub_68755C(&qword_9439F8, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
    v10 = sub_7691C0();
    v11 = *(v4 + 8);
    v11(v6, v3);
    v11(v9, v3);
    v12 = v10 ^ 1;
  }

  return v12 & 1;
}

double sub_67A49C(uint64_t a1, void *a2, __n128 a3)
{
  v5 = sub_75B660();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_75AF30() > a1)
  {
    sub_75AF00();
    if ((*(v6 + 88))(v8, v5) == enum case for ShelfBackground.color(_:))
    {
      (*(v6 + 96))(v8, v5);

      v9 = *(sub_BD88(&unk_959640, qword_78DD60) + 48);
      v10 = sub_75EDA0();
      (*(*(v10 - 8) + 8))(v8 + v9, v10);
      return sub_679978(a1, a2);
    }

    (*(v6 + 8))(v8, v5);
  }

  return UIEdgeInsetsZero.top;
}

double sub_67A694(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0.0;
  if (sub_75AF30() <= a1)
  {
    return 0.0;
  }

  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = sub_75AFF0();
  if (v17)
  {
    v55 = v16;
    v56 = v17;
    v18 = sub_75AF40();
    v57 = v10;
    if (v18)
    {
      v51 = sub_764C60();
      v20 = v19;
      ObjectType = [a2 traitCollection];
      if (qword_93C5E0 != -1)
      {
        swift_once();
      }

      v21 = qword_9481A0;
      v52 = a2;
      v53 = v20;
      if (v20)
      {
        v20 = sub_769210();
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

    v40 = v32.n128_f64[0] + sub_679008(a1, v39, a1 < 1, a2, v32);
    v41 = sub_75AF50();
    v53 = type metadata accessor for TitleHeaderView(0);
    v42 = sub_75B000();
    v44 = v43;
    v45 = sub_75AF90();
    v46 = sub_684270(v41 != 0, a2);
    v47 = v57;
    (*(*v4 + 632))(a1, a2);
    sub_1995E0(v42, v44, v45, v55, v56, v41, 0, 0, v13, v15, v28, v11, v40, v34, v36, v38, 0, 0, v46, v47, 1, a2);
    v13 = v48;

    sub_15CFA0(v47, type metadata accessor for TitleHeaderView.Style);
  }

  return v13;
}

id sub_67AB6C(uint64_t a1, void *a2, __n128 a3, uint64_t a4, void *a5)
{
  v34 = a5;
  v7 = sub_75B660();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_76A950() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000000007D87A0 == a2 || (sub_76A950() & 1) != 0)
  {
    v11 = sub_769210();
    v12 = sub_769210();
    v13.super.isa = sub_757550().super.isa;
    v14 = [v34 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v12 forIndexPath:v13.super.isa];
LABEL_5:
    v15 = v14;

LABEL_6:
    return v15;
  }

  if (sub_769240() == a1 && v17 == a2)
  {

    goto LABEL_20;
  }

  v19 = sub_76A950();

  if (v19)
  {
LABEL_20:
    sub_7575D0();
    sub_75AF00();
    v21 = (*(v8 + 88))(v10, v7);
    v22 = enum case for ShelfBackground.interactive(_:);
    v11 = sub_769210();
    if (v21 == v22)
    {
      type metadata accessor for InteractiveTitleHeaderView(0);
      sub_769BD0();
      v12 = sub_769210();

      v13.super.isa = sub_757550().super.isa;
      v14 = [v34 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v12 forIndexPath:v13.super.isa];
      goto LABEL_5;
    }

    type metadata accessor for TitleHeaderView(0);
    sub_769BD0();
    v23 = sub_769210();

    isa = sub_757550().super.isa;
    v25 = [v34 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v23 forIndexPath:isa];

    (*(v8 + 8))(v10, v7);
    return v25;
  }

  if (sub_769240() == a1 && v20 == a2)
  {

LABEL_24:
    v27 = sub_769210();
    type metadata accessor for InfiniteScrollFooterView();
    sub_769BD0();
    v28 = sub_769210();

    v13.super.isa = sub_757550().super.isa;
    v15 = [v34 dequeueReusableSupplementaryViewOfKind:v27 withReuseIdentifier:v28 forIndexPath:v13.super.isa];

    goto LABEL_6;
  }

  v26 = sub_76A950();

  if (v26)
  {
    goto LABEL_24;
  }

  v37._countAndFlagsBits = 0xD00000000000001CLL;
  v37._object = 0x80000000007F0580;
  if (sub_7693C0(v37))
  {
    type metadata accessor for AdBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = sub_769210();
    sub_769BD0();
    v31 = sub_769210();

    v32 = v34;
    [v34 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v30 withReuseIdentifier:v31];

    v11 = sub_769210();
    sub_769BD0();
    v12 = sub_769210();

    v13.super.isa = sub_757550().super.isa;
    v14 = [v32 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v12 forIndexPath:v13.super.isa];
    goto LABEL_5;
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_76A730(29);

  v35 = 0xD00000000000001BLL;
  v36 = 0x80000000007F05D0;
  v38._countAndFlagsBits = a1;
  v38._object = a2;
  sub_769370(v38);
  result = sub_76A840();
  __break(1u);
  return result;
}

void sub_67B160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, __n128 a7)
{
  v8 = v7;
  v173 = a5;
  v181 = a4;
  v177 = a1;
  v11 = *v7;
  v179 = a6;
  v180 = v11;
  v12 = sub_75B660();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v18 = (&v157 - v17);
  __chkstk_darwin(v19);
  v21 = &v157 - v20;
  v22 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v22 - 8);
  v172 = (&v157 - v23);
  v165 = sub_764A60();
  v164 = *(v165 - 8);
  __chkstk_darwin(v165);
  v163 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v162 = &v157 - v26;
  v171 = sub_765240();
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v169 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v28 - 8);
  v168 = &v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v161);
  v178 = &v157 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_769240() == a2 && v31 == a3)
  {

LABEL_5:
    v33 = type metadata accessor for InteractiveTitleHeaderView(0);
    v34 = v177;
    v157 = v33;
    v35 = swift_dynamicCastClass();
    v159 = v12;
    v158 = v13;
    v160 = v21;
    if (v35)
    {
      v167 = v35;
      v36 = *(v35 + OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_titleView);
      v37 = v34;
    }

    else
    {
      type metadata accessor for TitleHeaderView(0);
      v36 = swift_dynamicCastClassUnconditional();
      v167 = 0;
    }

    sub_75A110();
    sub_768900();
    v38 = v36;
    sub_768ED0();
    v175 = v8;
    v176 = v182[0];
    v39 = v8[2];
    v40 = v180[10];
    v41 = v180[12];
    v42 = sub_75AF90();
    v43 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork;
    v44 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork);

    sub_1935B4(v42, v45);
    *(v38 + v43) = v42;

    sub_1935C8(v44);

    v177 = v39;
    v46 = sub_75B000();
    v48 = v47;
    v49 = (v38 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
    v50 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
    v51 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText + 8);

    sub_192F94(v46, v48);
    *v49 = v46;
    v49[1] = v48;

    sub_193028(v50, v51);

    v52 = *(v38 + v43);

    if (v52)
    {
      v53 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView);
      if (v53)
      {
        v54 = *(v38 + v43);
        v55 = v178;
        v56.n128_f64[0] = (*&stru_1A8.segname[(swift_isaMask & *v38) + 8])();
        v57 = v168;
        sub_C1D58(v55, v168, v56);

        v58 = v53;
        sub_15CFA0(v55, type metadata accessor for TitleHeaderView.Style);
        sub_6C27B0(v54, v57, v38);

        sub_15CFA0(v57, type metadata accessor for TitleHeaderView.TextConfiguration);
        v59 = v169;
        sub_765250();
        sub_765210();
        (*(v170 + 8))(v59, v171);
        sub_765330();
        sub_759210();
        sub_68755C(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_75A050();
      }
    }

    v61 = sub_75AF50();
    v62 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork;
    v63 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork);

    sub_193754(v61, v64);
    *(v38 + v62) = v61;

    sub_193868(v63);

    v166 = *(v38 + v62);
    v65 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel;
    v66 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel);
    sub_75AFF0();
    if (v67)
    {
      v68 = sub_769210();
    }

    else
    {
      v68 = 0;
    }

    [v66 setText:v68];

    v69 = *(v38 + v62);
    if (v69)
    {
      v70 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView);
      if (v70)
      {
        v71 = v178;
        v72.n128_f64[0] = (*&stru_1A8.segname[(swift_isaMask & *v38) + 8])();
        v73 = v168;
        sub_C1D58(v71 + *(v161 + 20), v168, v72);

        v74 = v70;
        sub_15CFA0(v71, type metadata accessor for TitleHeaderView.Style);
        sub_6C27B0(v69, v73, v38);
        sub_15CFA0(v73, type metadata accessor for TitleHeaderView.TextConfiguration);
        v75 = v169;
        sub_765250();
        sub_765210();
        (*(v170 + 8))(v75, v171);
        sub_765330();
        sub_759210();
        sub_68755C(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_75A050();
      }
    }

    v76 = v166 != 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v40;
    v78 = v180;
    v79 = v180[11];
    *(v77 + 24) = v79;
    *(v77 + 32) = v41;
    *(v77 + 40) = v76;
    *(v77 + 48) = v78;
    v80 = (v38 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines);
    *v80 = sub_68741C;
    v80[1] = v77;

    [*(v38 + v65) setNumberOfLines:{sub_684270(v76, v38)}];

    v81 = v181;
    v82 = sub_75AF40();
    v174 = v40;
    if (v82)
    {
      v180 = v79;
      sub_75AFE0();
      v83 = v162;
      sub_764A80();

      v84 = v163;
      sub_764A40();
      sub_68755C(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      v85 = v165;
      v86 = sub_76A520();
      v87 = *(v164 + 8);
      v87(v84, v85);
      v87(v83, v85);
      if (v86)
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        v88 = sub_769FD0();
        v89 = v88;
      }

      else
      {
        v88 = 0;
      }

      v98 = v38;
      v99 = sub_764C60();
      v100 = v172;
      *v172 = v99;
      v100[1] = v101;
      v100[2] = v88;
      v102 = type metadata accessor for Accessory(0);
      v100[3] = 0;
      v100[4] = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v102 - 8) + 56))(v100, 0, 1, v102);
      (*&stru_248.segname[(swift_isaMask & *v98) + 16])(v100, v179);

      sub_10A2C(v100, &qword_93FF90, qword_77ECE0);
      v103 = swift_allocObject();
      v97 = v175;
      swift_weakInit();
      v104 = swift_allocObject();
      v105 = v180;
      v104[2] = v174;
      v104[3] = v105;
      v104[4] = v41;
      v104[5] = v103;
      v106 = v181;
      v104[6] = v181;
      v107 = (v98 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
      v81 = v106;
      v108 = *v107;
      v109 = v107[1];
      *v107 = sub_687474;
      v107[1] = v104;

      sub_F704(v108, v109);
    }

    else
    {
      v90 = type metadata accessor for Accessory(0);
      v91 = v172;
      (*(*(v90 - 8) + 56))(v172, 1, 1, v90);
      v92 = *&stru_248.segname[(swift_isaMask & *v38) + 16];
      v93 = v38;
      v92(v91, v179);
      sub_10A2C(v91, &qword_93FF90, qword_77ECE0);
      v94 = (v93 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
      v95 = *(v93 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
      v96 = *(v93 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction + 8);
      *v94 = 0;
      v94[1] = 0;
      sub_F704(v95, v96);
      v97 = v175;
    }

    v110 = v178;
    v111 = v173;
    (*(*v97 + 632))(v81, v173);
    (*&stru_1A8.segname[(swift_isaMask & *v38) + 16])(v110);
    v112 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel);
    v113 = v112;

    v114 = v167;
    if (v112)
    {
      sub_75B010();
      if (v115)
      {
        v116 = sub_769210();
      }

      else
      {
        v116 = 0;
      }

      [v113 setText:v116];

      v97 = v175;
    }

    if (v114)
    {
      swift_beginAccess();
      if (*(v97[8] + 16))
      {
        sub_663D5C(v81);
        if (v117)
        {
          v183 = v157;
          v184 = &off_884600;
          v182[0] = v114;
          v114 = v114;

          sub_2035D0(v182);

          sub_10A2C(v182, &unk_94A510, &unk_7AC3D0);
        }
      }
    }

    else
    {
      v118 = v160;
      sub_75AF00();
      [v38 setOverrideUserInterfaceStyle:sub_51DB60(v119)];
      (*(v158 + 8))(v118, v159);
    }

    [v111 pageMarginInsets];
    v122 = v121;
    v124 = v123;
    v126 = v125;
    if (v81 >= 1)
    {
      v127 = v81 - 1;
    }

    else
    {
      v127 = 0;
    }

    v128 = v120.n128_f64[0] + sub_679008(v81, v127, v81 < 1, v111, v120);
    [v38 setLayoutMargins:{v128, v122, v124, v126}];
    v129 = (v38 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorInset);
    *v129 = v128;
    v129[1] = v122;
    v129[2] = v124;
    v129[3] = v126;
    [v38 setNeedsLayout];
    [v38 setNeedsLayout];

    return;
  }

  v32 = sub_76A950();

  if (v32)
  {
    goto LABEL_5;
  }

  if (sub_769240() == a2 && v60 == a3)
  {

LABEL_43:
    type metadata accessor for InfiniteScrollFooterView();
    v131 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC18ASMessagesProvider24InfiniteScrollFooterView_activityIndicator);

    [v131 startAnimating];
    return;
  }

  v160 = v21;
  v130 = sub_76A950();

  if (v130)
  {
    goto LABEL_43;
  }

  type metadata accessor for MaterialGradientSectionBackgroundView();
  if (sub_769BC0() == a2 && v132 == a3)
  {
    goto LABEL_48;
  }

  v133 = sub_76A950();

  if (v133)
  {
    goto LABEL_50;
  }

  type metadata accessor for GradientSectionBackgroundView();
  if (sub_769BC0() == a2 && v140 == a3)
  {
    goto LABEL_48;
  }

  v141 = sub_76A950();

  if (v141)
  {
    goto LABEL_50;
  }

  type metadata accessor for ArtworkSectionBackgroundView();
  if (sub_769BC0() == a2 && v142 == a3)
  {
LABEL_48:

LABEL_50:
    v134 = v177;
    swift_getObjectType();
    v135 = swift_conformsToProtocol2();
    if (v135 && v134)
    {
      v136 = v135;
      ObjectType = swift_getObjectType();
      v138 = v134;
      v139 = v160;
      sub_75AF00();
      (*(v136 + 8))(v139, v179, ObjectType, v136, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);

      (*(v13 + 8))(v139, v12);
    }

    return;
  }

  v143 = sub_76A950();

  if (v143)
  {
    goto LABEL_50;
  }

  v144 = type metadata accessor for InteractiveSectionBackgroundView(0);
  if (sub_769BC0() == a2 && v145 == a3)
  {
  }

  else
  {
    v146 = sub_76A950();

    if ((v146 & 1) == 0)
    {
      if (a2 == 0x676B636142706F74 && a3 == 0xED0000646E756F72 || (sub_76A950() & 1) != 0)
      {
        sub_75AF00();
        if ((*(v13 + 88))(v18, v12) != enum case for ShelfBackground.color(_:))
        {
          (*(v13 + 8))(v18, v12);
          return;
        }

        (*(v13 + 96))(v18, v12);
        v152 = *v18;
        v153 = *(sub_BD88(&unk_959640, qword_78DD60) + 48);
        v154 = sub_75EDA0();
        (*(*(v154 - 8) + 8))(v18 + v153, v154);
      }

      else
      {
        if ((a2 != 0xD000000000000010 || 0x80000000007D87A0 != a3) && (sub_76A950() & 1) == 0 || sub_75AF30() < 1)
        {
          return;
        }

        if (__OFSUB__(sub_75AF30(), 1))
        {
          __break(1u);
          return;
        }

        sub_75AF00();
        if ((*(v13 + 88))(v15, v12) != enum case for ShelfBackground.color(_:))
        {
          (*(v13 + 8))(v15, v12);
          return;
        }

        (*(v13 + 96))(v15, v12);
        v152 = *v15;
        v155 = *(sub_BD88(&unk_959640, qword_78DD60) + 48);
        v156 = sub_75EDA0();
        (*(*(v156 - 8) + 8))(v15 + v155, v156);
      }

      [v177 setBackgroundColor:v152];

      return;
    }
  }

  v147 = v177;
  v148 = swift_dynamicCastClass();
  if (v148)
  {
    v149 = v148;
    swift_beginAccess();
    if (*(v8[8] + 16))
    {
      sub_663D5C(v181);
      if (v150)
      {
        v183 = v144;
        v184 = &off_88A558;
        v182[0] = v149;
        v151 = v147;

        sub_2035D0(v182);

        sub_10A2C(v182, &unk_94A510, &unk_7AC3D0);
      }
    }
  }
}

uint64_t sub_67C7C8(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_BD88(&qword_951BE0, &unk_782280);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_764930();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  sub_75AF10();
  v10 = sub_3AC688();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (v16 < 1)
    {
      v13 = 1;
    }

    else
    {
      sub_75AF10();
      v13 = 0;
    }

    (*(v7 + 56))(v5, v13, 1, v6);
    v14 = (*(v12 + 96))(v5, v17, v10, v12);
    sub_10A2C(v5, &qword_951BE0, &unk_782280);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_67C9EC(uint64_t a1, void *a2)
{
  v4 = sub_BD88(&qword_9439F0, &qword_7ACF90);
  __chkstk_darwin(v4);
  v6 = &v55 - v5;
  v7 = sub_75B660();
  v65 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v66 = &v55 - v13;
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  if (a1 < 1)
  {
    return 0;
  }

  v60 = a2;
  v61 = v16;
  v63 = v15;
  if (sub_75AF30() < 1)
  {
    return 0;
  }

  sub_75AF00();
  v19 = v66;
  sub_75AF00();
  v20 = *(v4 + 48);
  v21 = v65;
  v22 = *(v65 + 16);
  v22(v6, v18, v7);
  v62 = v20;
  v22(&v6[v20], v19, v7);
  v23 = v21[11];
  v24 = v23(v6, v7);
  v64 = v18;
  if (v24 != enum case for ShelfBackground.color(_:))
  {
LABEL_9:
    v40 = enum case for ShelfBackground.none(_:);
    v41 = v21[13];
    v41(v9, enum case for ShelfBackground.none(_:), v7);
    v65 = sub_68755C(&qword_9439F8, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
    v42 = sub_7691C0();
    v43 = v21[1];
    v43(v9, v7);
    if ((v42 & 1) == 0)
    {
      v41(v9, v40, v7);
      v44 = sub_75B650();
      v43(v9, v7);
      if (v44)
      {
        v43(v66, v7);
        v43(v64, v7);
LABEL_14:
        v43(&v6[v62], v7);
        v43(v6, v7);
        return 2;
      }
    }

    v41(v9, v40, v7);
    v45 = v64;
    v46 = sub_75B650();
    v43(v9, v7);
    if (v46)
    {
      v41(v9, v40, v7);
      v47 = v66;
      v48 = sub_7691C0();
      v43(v9, v7);
      v43(v47, v7);
      v43(v45, v7);
      if ((v48 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v43(v66, v7);
      v43(v45, v7);
    }

    sub_10A2C(v6, &qword_9439F0, &qword_7ACF90);
    return 0;
  }

  v25 = v24;
  v26 = v63;
  v22(v63, v6, v7);
  v56 = v21[12];
  v56(v26, v7);
  v57 = *v26;
  v55 = sub_BD88(&unk_959640, qword_78DD60);
  v58 = *(v55 + 48);
  v59 = v6;
  if (v23(&v6[v62], v7) != v25)
  {
    v39 = sub_75EDA0();
    (*(*(v39 - 8) + 8))(v26 + v58, v39);

    goto LABEL_8;
  }

  v28 = v61;
  v27 = v62;
  v22(v61, &v59[v62], v7);
  v56(v28, v7);
  v29 = *v28;
  v56 = *(v55 + 48);
  v30 = v60;
  v31 = [v60 traitCollection];
  v32 = v57;
  v33 = [v57 resolvedColorWithTraitCollection:v31];

  v34 = [v30 traitCollection];
  v35 = v27;
  v36 = [v29 resolvedColorWithTraitCollection:v34];

  sub_BE70(0, &qword_93E540, UIColor_ptr);
  LOBYTE(v34) = sub_76A1C0();

  if (v34)
  {
    v37 = sub_75EDA0();
    v38 = *(*(v37 - 8) + 8);
    v38(v56 + v28, v37);
    v38(v63 + v58, v37);
LABEL_8:
    v6 = v59;
    v21 = v65;
    goto LABEL_9;
  }

  v50 = *(v65 + 8);
  v50(v66, v7);
  v50(v64, v7);
  v51 = sub_75EDA0();
  v52 = v35;
  v53 = *(*(v51 - 8) + 8);
  v53(v56 + v28, v51);
  v53(v63 + v58, v51);
  v54 = v59;
  v50(&v59[v52], v7);
  v50(v54, v7);
  return 2;
}

double sub_67D1CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v83 = a4;
  v95 = a3;
  v89 = a2;
  v79 = sub_764A60();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v70 - v8;
  v9 = sub_BD88(&unk_955F20, &unk_77EB30);
  __chkstk_darwin(v9 - 8);
  v84 = &v70 - v10;
  v11 = sub_75FA00();
  v87 = *(v11 - 8);
  v88 = v11;
  __chkstk_darwin(v11);
  v94 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v93 = &v70 - v14;
  __chkstk_darwin(v15);
  v96 = &v70 - v16;
  v82 = sub_757640();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  __chkstk_darwin(v19 - 8);
  v81 = &v70 - v20;
  v21 = sub_BD88(&qword_946810, &qword_783360);
  v85 = *(v21 - 8);
  v86 = v21;
  __chkstk_darwin(v21);
  v92 = &v70 - v22;
  v23 = sub_764930();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7575D0();
  sub_75AF10();
  v27 = sub_3AC688();
  if (v27)
  {
    v72 = v28;
    v73 = v27;
    v91 = v26;
    v74 = v24;
    v75 = v23;
    sub_7575D0();
    if (sub_75AEF0())
    {
      v29 = sub_7575D0();
      v30 = sub_6850C8(v29);
    }

    else
    {
      v30 = 0;
    }

    sub_7575D0();
    if (sub_75AEF0())
    {
      sub_7575D0();
      v90 = sub_75AFE0();
    }

    else
    {
      v90 = 0;
    }

    v71 = v30;
    v32 = v95;
    sub_684370(v91, 0, v30, v95, v83);
    v34 = v33;
    v36 = v35;
    sub_75AFD0();
    (*(v80 + 16))(v18, a1, v82);
    sub_769080();
    v97 = *(v4 + 24);

    sub_BD88(&qword_9467C0, &qword_790FA0);
    sub_2A3AD4();
    sub_769020();
    sub_75F9F0();
    v37 = sub_681104(a1, v32);
    v39 = v87;
    v38 = v88;
    if (v37)
    {
      v40 = v94;
      sub_75F9B0();
      v41 = v93;
      sub_295EC4(v93, v40);
      v42 = *(v39 + 8);
      v42(v40, v38);
      v42(v41, v38);
    }

    v43 = v84;
    sub_75AFA0();
    v44 = sub_75ACC0();
    v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
    sub_10A2C(v43, &unk_955F20, &unk_77EB30);
    if (v45 != 1)
    {
      v46 = v94;
      sub_75F990();
      v47 = v93;
      sub_295EC4(v93, v46);
      v48 = *(v39 + 8);
      v48(v46, v38);
      v48(v47, v38);
    }

    v49 = [v95 traitCollection];
    v50 = sub_7699D0();

    v51 = v75;
    v52 = v74;
    if (v50)
    {
      v53 = v94;
      sub_75F9E0();
      v54 = v93;
      sub_295EC4(v93, v53);
      v55 = *(v39 + 8);
      v55(v53, v38);
      v55(v54, v38);
    }

    if (!sub_7575D0())
    {
      v56 = v94;
      sub_75F9A0();
      v57 = v93;
      sub_295EC4(v93, v56);
      v58 = *(v39 + 8);
      v58(v56, v38);
      v58(v57, v38);
    }

    if (v90)
    {

      v59 = v76;
      sub_764A80();

      v60 = v77;
      sub_764A20();
      sub_68755C(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      v61 = v79;
      v62 = sub_76A520();
      v63 = *(v78 + 8);
      v63(v60, v61);
      v63(v59, v61);
      if (v62)
      {
        v64 = v94;
        sub_75F9D0();
        v65 = v93;
        sub_295EC4(v93, v64);
        v66 = *(v39 + 8);
        v66(v64, v38);
        v66(v65, v38);
      }
    }

    v67 = v92;
    v68 = v96;
    v31 = (*(v72 + 72))(v98, v71, v92, v89, v96, v95, v34, v36);

    (*(v39 + 8))(v68, v38);
    (*(v85 + 8))(v67, v86);
    sub_BEB8(v98);
    (*(v52 + 8))(v91, v51);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    return 0.0;
  }

  return v31;
}

id sub_67DB9C(uint64_t a1, void *a2)
{
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_7575D0();
  sub_75AF10();
  v8 = sub_764910();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v2 + 72);
  if (*(v11 + 16) && (, v12 = sub_3DF2F8(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v12);

    v16 = sub_764910();
    v18 = v17;
    swift_beginAccess();
    isa = sub_20623C(v16, v18);
    swift_endAccess();
  }

  else
  {

    sub_764910();
    v20 = sub_769210();

    isa = sub_757550().super.isa;
    v15 = [a2 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:isa];
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

void sub_67DDE4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v265 = a6;
  v296 = a5;
  v295 = a4;
  v286 = a3;
  v300 = a2;
  v297 = *v6;
  v284 = sub_768A80();
  v283 = *(v284 - 8);
  __chkstk_darwin(v284);
  v252 = &v245 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_768AB0();
  v287 = *(v291 - 1);
  __chkstk_darwin(v291);
  v257 = &v245 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v278 = &v245 - v11;
  __chkstk_darwin(v12);
  v275 = &v245 - v13;
  __chkstk_darwin(v14);
  v254 = &v245 - v15;
  __chkstk_darwin(v16);
  v255 = &v245 - v17;
  v260 = sub_757500();
  v259 = *(v260 - 8);
  __chkstk_darwin(v260);
  v258 = &v245 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_75B660();
  v273 = *(v274 - 8);
  __chkstk_darwin(v274);
  v272 = &v245 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_764A60();
  v270 = *(v271 - 8);
  __chkstk_darwin(v271);
  v269 = &v245 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&unk_955F20, &unk_77EB30);
  __chkstk_darwin(v21 - 8);
  v23 = &v245 - v22;
  v289 = sub_75FA00();
  v288 = *(v289 - 8);
  __chkstk_darwin(v289);
  v25 = &v245 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v268 = &v245 - v27;
  __chkstk_darwin(v28);
  v290 = &v245 - v29;
  v30 = sub_757640();
  v280 = *(v30 - 8);
  __chkstk_darwin(v30);
  v264 = v31;
  v279 = &v245 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  __chkstk_darwin(v32 - 8);
  v277 = sub_BD88(&unk_944D90, &qword_783300);
  v276 = *(v277 - 8);
  __chkstk_darwin(v277);
  v285 = &v245 - v33;
  v294 = sub_764930();
  v293 = *(v294 - 8);
  __chkstk_darwin(v294);
  v35 = &v245 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v281 = &v245 - v37;
  __chkstk_darwin(v38);
  v40 = &v245 - v39;
  v41 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v41 - 8);
  v261 = &v245 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v267 = &v245 - v44;
  __chkstk_darwin(v45);
  v266 = &v245 - v46;
  __chkstk_darwin(v47);
  v253 = &v245 - v48;
  __chkstk_darwin(v49);
  v256 = &v245 - v50;
  __chkstk_darwin(v51);
  v53 = &v245 - v52;
  v54 = sub_BD88(&qword_93FFC0, &qword_77F490);
  __chkstk_darwin(v54 - 8);
  v262 = &v245 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v263 = &v245 - v57;
  *&v59 = __chkstk_darwin(v58).n128_u64[0];
  v61 = &v245 - v60;
  [a1 setBackgroundColor:{0, v59}];
  swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  v298 = v6;
  v299 = *(v6 + 16);
  if (!v62 || !a1)
  {
    v250 = v30;
    v282 = a1;
    v75 = v297[10];
    v76 = v300;
    v292 = v297[12];
    if ((sub_75AF80() & 1) == 0)
    {
      return;
    }

    swift_getObjectType();
    v249 = swift_conformsToProtocol2();
    if (!v249)
    {
      __break(1u);
      return;
    }

    sub_75AFD0();
    v77 = *(v280 + 16);
    v247 = v280 + 16;
    v246 = v77;
    v77(v279, v76, v250);
    sub_769080();
    v306 = *(v298 + 24);

    sub_BD88(&qword_9467C0, &qword_790FA0);
    sub_2A3AD4();
    v78 = v300;
    sub_768AE0();
    sub_75F9F0();
    v79 = sub_680BD0(v78, v295);
    v80 = v268;
    if (v79)
    {
      sub_75F9B0();
      sub_295EC4(v80, v25);
      v81 = *(v288 + 8);
      v82 = v289;
      v81(v25, v289);
      v81(v80, v82);
    }

    sub_75AFA0();
    v83 = sub_75ACC0();
    v84 = (*(*(v83 - 8) + 48))(v23, 1, v83);
    sub_10A2C(v23, &unk_955F20, &unk_77EB30);
    if (v84 != 1)
    {
      sub_75F990();
      sub_295EC4(v80, v25);
      v85 = *(v288 + 8);
      v86 = v289;
      v85(v25, v289);
      v85(v80, v86);
    }

    if (!sub_7575D0())
    {
      sub_75F9A0();
      sub_295EC4(v80, v25);
      v87 = *(v288 + 8);
      v88 = v289;
      v87(v25, v289);
      v87(v80, v88);
    }

    sub_7575D0();
    v89 = v281;
    sub_75AF10();
    sub_7575D0();
    v251 = v75;
    v90 = sub_75AED0();
    v91 = v293;
    v92 = v89;
    v93 = v294;
    (*(v293 + 16))(v35, v92, v294);
    v94 = (*(v91 + 88))(v35, v93);
    v95 = v296;
    if (v94 == enum case for Shelf.ContentType.smallLockup(_:) || v94 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      goto LABEL_38;
    }

    if (v94 != enum case for Shelf.ContentType.largeLockup(_:))
    {
      if (v94 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v94 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v94 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_38;
      }

      if (v94 != enum case for Shelf.ContentType.ribbonBar(_:))
      {
        if (v94 == enum case for Shelf.ContentType.editorialCard(_:) || v94 == enum case for Shelf.ContentType.videoCard(_:))
        {
          goto LABEL_38;
        }

        if (v94 == enum case for Shelf.ContentType.brick(_:) || v94 == enum case for Shelf.ContentType.categoryBrick(_:))
        {
          goto LABEL_39;
        }

        if (v94 == enum case for Shelf.ContentType.reviews(_:) || v94 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v94 == enum case for Shelf.ContentType.framedVideo(_:) || v94 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v94 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v94 == enum case for Shelf.ContentType.smallBreakout(_:))
        {
          goto LABEL_38;
        }

        if (v94 != enum case for Shelf.ContentType.editorialStoryCard(_:))
        {
          if (v94 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v94 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v94 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v94 == enum case for Shelf.ContentType.posterLockup(_:) || v94 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            goto LABEL_38;
          }

          if (v94 != enum case for Shelf.ContentType.informationRibbon(_:))
          {
            if (v94 != enum case for Shelf.ContentType.appPromotion(_:))
            {
              (*(v293 + 8))(v35, v294);
              goto LABEL_43;
            }

LABEL_38:
            if (v90)
            {
              goto LABEL_39;
            }

LABEL_43:
            v111 = [v295 traitCollection];
            v112 = sub_7699D0();

            if ((v112 & 1) == 0)
            {
              v248 = 0;
              v115 = v290;
LABEL_46:
              v119 = v282;
              ObjectType = swift_getObjectType();
              sub_7575D0();
              sub_75AFE0();
              v121 = v269;
              sub_764A80();

              (*(v249 + 80))(&v308, v285, v95, v115, v121, v295, ObjectType);
              (*(v270 + 8))(v121, v271);
              sub_7575D0();
              v122 = v272;
              sub_75AF00();
              v124 = sub_51DB60(v123);
              (*(v273 + 8))(v122, v274);
              if ([v119 overrideUserInterfaceStyle] != v124)
              {
                [v119 setOverrideUserInterfaceStyle:v124];
              }

              sub_134D8(&v308, &v306);
              *(&v304 + 1) = sub_BE70(0, &qword_93FF60, UICollectionViewCell_ptr);
              *&v303 = v119;
              v125 = v119;
              sub_758EF0();
              sub_10A2C(&v306, &unk_963040, &qword_77F400);
              sub_BEB8(&v303);
              swift_getObjectType();
              v126 = swift_conformsToProtocol2();
              if (v126 && v119)
              {
                v127 = v126;
                v128 = swift_getObjectType();
                v129 = *(v127 + 8);
                v130 = v125;
                v131 = v129(v128, v127);
                v119 = v282;
                v132 = v131;
                v133 = (v131 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
                v134 = *(v131 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
                v135 = v133[1];
                *v133 = 0;
                v133[1] = 0;
                sub_F704(v134, v135);
                [*&v132[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
              }

              swift_getObjectType();
              v136 = swift_conformsToProtocol2();
              v137 = v275;
              if (v136 && v119)
              {
                v138 = swift_allocObject();
                swift_weakInit();
                v139 = v279;
                v140 = v250;
                v246(v279, v300, v250);
                v141 = v280;
                v142 = (*(v280 + 80) + 40) & ~*(v280 + 80);
                v143 = (v264 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
                v144 = swift_allocObject();
                *(v144 + 2) = v251;
                v145 = v292;
                *(v144 + 3) = v297[11];
                *(v144 + 4) = v145;
                (*(v141 + 32))(&v144[v142], v139, v140);
                v119 = v282;
                *&v144[v143] = v138;
                v146 = &v125[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler];
                v147 = *&v125[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler];
                v148 = *&v125[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler + 8];
                *v146 = sub_68734C;
                v146[1] = v144;
                v149 = v125;

                sub_F704(v147, v148);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                sub_761120();
                sub_768900();
                v150 = v125;
                sub_768ED0();
                v151 = v306;
                swift_getObjectType();
                v152 = sub_75EF20();
                v153 = v150;
                sub_761100();

                v119 = v282;
              }

              *&v301[0] = v125;
              *(&v301[0] + 1) = v249;
              v154 = v125;
              sub_BD88(&qword_95CD80, "v(\a");
              sub_BD88(&qword_95CD88, &unk_7AC6D0);
              if (swift_dynamicCast())
              {
                sub_10914(&v303, &v306);
                sub_761120();
                sub_768900();
                sub_768ED0();
                v155 = v303;
                sub_B170(&v306, v307);
                sub_761530();

                sub_BEB8(&v306);
              }

              else
              {
                v305 = 0;
                v304 = 0u;
                v303 = 0u;
                sub_10A2C(&v303, &unk_95CD90, "v(\a");
              }

              v156 = v248;
              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                sub_75E3E0();
                v157 = v154;
                sub_7688F0();
                v158 = v306;
                if (v306)
                {
                  v159 = v157;
                  v160 = v158;
                  sub_75E3D0();

                  v157 = v160;
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                sub_134D8(&v308, &v303);
                v161 = v154;
                sub_BD88(&unk_944DA0, &unk_77EB70);
                sub_BD88(&unk_952540, &qword_7918A0);
                if (swift_dynamicCast())
                {
                  sub_10914(v301, &v306);
                  sub_B170(&v306, v307);
                  if (sub_762A10())
                  {
                    sub_75E5C0();
                  }

                  v119 = v282;
                  swift_getObjectType();
                  sub_75D990();

                  sub_BEB8(&v306);
                }

                else
                {

                  v302 = 0;
                  memset(v301, 0, sizeof(v301));
                  sub_10A2C(v301, &unk_9513E0, &qword_7A38B0);
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                swift_getObjectType();
                v162 = v154;
                sub_761FA0();
              }

              sub_7575D0();
              sub_75AFE0();
              if (v156)
              {
                v163 = [v265 collectionViewLayout];
                type metadata accessor for BaseCollectionCompositionalLayout();
                v164 = swift_dynamicCastClass();
                if (v164)
                {
                  v165 = v164;
                  v166 = [v164 _orthogonalScrollingSections];
                  v167 = v258;
                  sub_7574D0();

                  v119 = v282;
                  v168 = sub_7575D0();
                  v169 = sub_7574F0(v168);
                  (*(v259 + 8))(v167, v260);
                  if (v169)
                  {
                    [v154 frame];
                    v171 = v170;
                    v173 = v172;
                    v175 = v174;
                    v177 = v176;
                    v178 = v256;
                    sub_764A70();
                    v179 = v287;
                    v180 = *(v287 + 48);
                    v181 = v291;
                    if (v180(v178, 1, v291) == 1)
                    {

                      (*(v293 + 8))(v281, v294);
                      (*(v288 + 8))(v290, v289);
                      (*(v276 + 8))(v285, v277);
                      sub_BEB8(&v308);
                      sub_10A2C(v178, &unk_93FF30, &unk_77DB10);
                      return;
                    }

                    v213 = v255;
                    v299 = *(v179 + 32);
                    v299(v255, v178, v181);
                    sub_134D8(&v308, &v306);
                    sub_B170(&v306, v307);
                    v214 = v253;
                    sub_7690D0();
                    if (v180(v214, 1, v181) == 1)
                    {

                      (*(v287 + 8))(v213, v181);
                      (*(v293 + 8))(v281, v294);
                      (*(v288 + 8))(v290, v289);
                      (*(v276 + 8))(v285, v277);
                      sub_BEB8(&v308);
                      v194 = v214;
                      goto LABEL_92;
                    }

                    v295 = v173;
                    v296 = v171;
                    v299(v254, v214, v181);
                    [v165 _layoutFrameForSection:sub_7575D0()];
                    v216 = v215;
                    v218 = v217;
                    v220 = v219;
                    v222 = v221;
                    [v165 _offsetForOrthogonalScrollingSection:sub_7575D0()];
                    v224 = v298;
                    v225 = *(v298 + 112);
                    v226 = v290;
                    if (v225)
                    {
                      v227 = v223;

                      v228 = v255;
                      v229 = v216;
                      sub_75F4B0();

                      v230 = v287;
                      v231 = v218;
                      if (*(v224 + 112))
                      {

                        v232 = v252;
                        sub_768A90();
                        v303 = v227;
                        *&v304 = v220;
                        *(&v304 + 1) = v222;
                        LOBYTE(v305) = 0;
                        v225 = sub_75F490();

                        (*(v283 + 8))(v232, v284);
                      }

                      else
                      {
                        v225 = 0;
                      }

                      v233 = v277;
                      v234 = v276;
                      v235 = *&v296;
                    }

                    else
                    {
                      v229 = v216;
                      v230 = v287;
                      v233 = v277;
                      v234 = v276;
                      v228 = v255;
                      v235 = *&v296;
                      v231 = v218;
                    }

                    v236 = *&v295;
                    v309.origin.x = v229;
                    v309.origin.y = v231;
                    v309.size.width = v220;
                    v309.size.height = v222;
                    v237 = -CGRectGetMinY(v309);
                    v310.origin.x = v235;
                    v310.origin.y = v236;
                    v310.size.width = v175;
                    v310.size.height = v177;
                    v311 = CGRectOffset(v310, 0.0, v237);
                    x = v311.origin.x;
                    y = v311.origin.y;
                    width = v311.size.width;
                    height = v311.size.height;
                    v242 = v254;
                    if (v225)
                    {

                      sub_75F4B0();
                    }

                    sub_685CF4(&v306, v225, x, y, width, height);

                    v243 = *(v230 + 8);
                    v244 = v291;
                    v243(v242, v291);
                    v243(v228, v244);
                    (*(v293 + 8))(v281, v294);
                    (*(v288 + 8))(v226, v289);
                    (*(v234 + 8))(v285, v233);
                    goto LABEL_102;
                  }
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                v182 = v154;
                [v182 frame];
                sub_678974(v183, v184, v185, v186);
                swift_getObjectType();
                sub_7633C0();
              }

              v187 = v266;
              sub_764A70();
              v188 = v287;
              v189 = *(v287 + 48);
              v190 = v291;
              if (v189(v187, 1, v291) == 1)
              {
                v191 = v187;
                v192 = v290;
                sub_10A2C(v191, &unk_93FF30, &unk_77DB10);
              }

              else
              {
                (*(v188 + 32))(v137, v187, v190);
                if (*(v298 + 112))
                {

                  [v154 frame];
                  sub_75F500();
                }

                v192 = v290;
                (*(v188 + 8))(v137, v190);
              }

              sub_134D8(&v308, &v306);
              sub_B170(&v306, v307);
              v193 = v267;
              sub_7690D0();
              if (v189(v193, 1, v190) == 1)
              {

                (*(v293 + 8))(v281, v294);
                (*(v288 + 8))(v192, v289);
                (*(v276 + 8))(v285, v277);
                sub_BEB8(&v308);
                v194 = v193;
LABEL_92:
                sub_10A2C(v194, &unk_93FF30, &unk_77DB10);
LABEL_103:
                sub_BEB8(&v306);
                return;
              }

              v195 = v190;
              (*(v188 + 32))(v278, v193, v190);
              v196 = v261;
              sub_764A70();
              if (v189(v196, 1, v190) == 1)
              {
                sub_10A2C(v196, &unk_93FF30, &unk_77DB10);
                v197 = 1;
                v198 = v284;
                v199 = v283;
                v200 = v263;
              }

              else
              {
                v200 = v263;
                sub_768A90();
                (*(v188 + 8))(v196, v195);
                v197 = 0;
                v198 = v284;
                v199 = v283;
              }

              v201 = v262;
              (*(v199 + 56))(v200, v197, 1, v198);
              if (*(v298 + 112))
              {
                sub_1ED18(v200, v201, &qword_93FFC0, &qword_77F490);
                v202 = (*(v199 + 48))(v201, 1, v198);

                if (v202 == 1)
                {
                  sub_10A2C(v201, &qword_93FFC0, &qword_77F490);
                }

                else
                {
                  sub_768A70();
                  (*(v199 + 8))(v201, v198);
                }

                v203 = v257;
                sub_768A40();

                [v154 frame];
                sub_75F4B0();

                (*(v188 + 8))(v203, v291);
              }

              [v154 frame];
              v205 = v204;
              v207 = v206;
              v209 = v208;
              v211 = v210;
              v212 = *(v298 + 112);

              sub_685CF4(&v306, v212, v205, v207, v209, v211);

              sub_10A2C(v200, &qword_93FFC0, &qword_77F490);
              (*(v188 + 8))(v278, v291);
              (*(v293 + 8))(v281, v294);
              (*(v288 + 8))(v192, v289);
              (*(v276 + 8))(v285, v277);
LABEL_102:
              sub_BEB8(&v308);
              goto LABEL_103;
            }

            sub_75F9E0();
            v248 = 0;
LABEL_45:
            v113 = v80;
            v114 = v80;
            v115 = v290;
            sub_295EC4(v113, v25);
            v116 = *(v288 + 8);
            v117 = v25;
            v118 = v289;
            v116(v117, v289);
            v116(v114, v118);
            goto LABEL_46;
          }
        }
      }
    }

LABEL_39:
    sub_75F9C0();
    v248 = 1;
    goto LABEL_45;
  }

  v292 = v62;
  v63 = a1;
  sub_7575D0();
  v64 = v297[10];
  v288 = v297[12];
  v65 = sub_75AFE0();
  v290 = v63;
  [v63 frame];
  v289 = sub_678974(v66, v67, v68, v69);
  sub_761120();
  sub_768900();
  sub_768ED0();
  v70 = v308;
  sub_75E3E0();
  sub_7688F0();
  v71 = v308;
  sub_764A70();
  v72 = v287;
  v73 = v291;
  if ((*(v287 + 48))(v53, 1, v291) == 1)
  {
    sub_10A2C(v53, &unk_93FF30, &unk_77DB10);
    v74 = 1;
  }

  else
  {
    sub_768A90();
    (*(v72 + 8))(v53, v73);
    v74 = 0;
  }

  (*(v283 + 56))(v61, v74, 1, v284);
  v96 = v70;
  v291 = v96;
  v97 = v298;
  v98 = sub_678C3C(v61, v70, v71, 0);

  sub_10A2C(v61, &qword_93FFC0, &qword_77F490);
  type metadata accessor for ShelfComponentContainerDelegate(0, v64, v297[11], v288);
  v297 = v71;
  v99 = v299;
  swift_unknownObjectRetain();
  v100 = sub_7575D0();
  sub_764940();
  v101 = sub_764900();
  (*(v293 + 8))(v40, v294);
  v102 = *(v97 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  v287 = v98;
  v104 = sub_51FBD0(v99, v100, v101 & 1, v102, v98, &protocol witness table for CompoundScrollObserver, v289, Strong);

  swift_unknownObjectRetain();

  v105 = v290;
  v106 = swift_getObjectType();
  v107 = sub_7575D0();
  WitnessTable = swift_getWitnessTable();
  v109 = v292;
  v110 = *(v292 + 32);

  v110(v65, v107, v286, v296, v104, WitnessTable, v295, v106, v109);

  swift_unknownObjectRelease();
}

void sub_680594(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v35 = a3;
  v8 = *v4;
  v9 = sub_757640();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  __chkstk_darwin(v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  __chkstk_darwin(v13 - 8);
  v14 = sub_BD88(&unk_944D90, &qword_783300);
  v36 = *(v14 - 8);
  v37 = v14;
  __chkstk_darwin(v14);
  v16 = v32 - v15;
  isa = sub_757550().super.isa;
  v18 = [a4 cellForItemAtIndexPath:isa];

  if (v18)
  {
    v34 = a4;
    swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = v19;
      v21 = v5[2];
      v22 = *(v8 + 96);
      v32[1] = *(v8 + 80);
      v32[2] = v21;
      v32[0] = v22;
      sub_75AFD0();
      v33 = *(v39 + 2);
      v33(v12, a1, v38);
      sub_769080();
      v40 = v5[3];

      sub_BD88(&qword_9467C0, &qword_790FA0);
      sub_2A3AD4();
      sub_768AE0();
      ObjectType = swift_getObjectType();
      v24 = (*(v20 + 88))(v41, v16, v35, ObjectType, v20);
      v25 = v24;
      if (v24)
      {
        sub_75AF60();
        v26 = v34;
        if ((v25 & 2) == 0)
        {
LABEL_5:
          if ((v25 & 4) == 0)
          {
LABEL_7:

            (*(v36 + 8))(v16, v37);
            sub_BEB8(v41);
            return;
          }

LABEL_6:
          sub_BD88(&unk_941A18, &qword_78A3D0);
          v27 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_77B6D0;
          v33((v28 + v27), a1, v38);
          v29 = sub_769450().super.isa;

          [v26 reloadItemsAtIndexPaths:v29];

          v18 = v29;
          goto LABEL_7;
        }
      }

      else
      {
        v26 = v34;
        if ((v24 & 2) == 0)
        {
          goto LABEL_5;
        }
      }

      v31 = sub_757550().super.isa;
      [v26 deselectItemAtIndexPath:v31 animated:1];

      if ((v25 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    a4 = v34;
  }

  sub_75AF60();
  v39 = sub_757550().super.isa;
  [a4 deselectItemAtIndexPath:v39 animated:1];
  v30 = v39;
}

uint64_t sub_680A04(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_764930();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  result = 0;
  if (v12 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v12 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v11, v7);
    swift_getObjectType();
    v15 = [a3 traitCollection];
    v16 = (*(*v3 + 696))(a1, v15);

    if (v16)
    {
      return sub_3AD19C(a2, a3, a1);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_680BD0(uint64_t a1, void *a2)
{
  v38 = a2;
  v4 = *v2;
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v36 - v9;
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  v14 = v2[2];
  sub_7575D0();
  v15 = *(v4 + 80);
  sub_75AF10();
  sub_7575D0();
  v39 = v15;
  v40 = v14;
  v16 = sub_75AED0();
  (*(v6 + 16))(v10, v13, v5);
  v17 = (*(v6 + 88))(v10, v5);
  if (v17 == enum case for Shelf.ContentType.smallLockup(_:) || v17 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v33 = v17 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v17 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v33 || v17 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_8;
  }

  if (v17 == enum case for Shelf.ContentType.editorialCard(_:) || v17 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_6;
  }

  v19 = 1;
  if (v17 == enum case for Shelf.ContentType.brick(_:) || v17 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.reviews(_:) || v17 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v17 == enum case for Shelf.ContentType.framedVideo(_:) || v17 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v17 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v17 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v17 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v17 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v17 == enum case for Shelf.ContentType.posterLockup(_:) || v17 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_6:
    v19 = v16;
    goto LABEL_9;
  }

  if (v17 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v19 = v16;
    if (v17 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v6 + 8))(v10, v5);
      v19 = 0;
    }
  }

LABEL_9:
  v22 = *(v6 + 8);
  v20 = v6 + 8;
  v21 = v22;
  v22(v13, v5);
  v23 = sub_7575D0();
  if (v19)
  {
    v24 = sub_75AF70();
    result = sub_7575C0();
    if (!__OFADD__(result, 1))
    {
      if (v24)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v24 != -1)
        {
          return (result + 1) % v24 == 0;
        }

        goto LABEL_58;
      }

      goto LABEL_54;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v26 = sub_6850C8(v23);
  v36[1] = v20;
  v27 = v26;
  sub_7575D0();
  v28 = v37;
  sub_75AF10();
  v36[0] = a1;
  sub_7575D0();
  v29 = sub_75AF20();
  v30 = sub_680A04(v28, v29, v38);
  result = v21(v28, v5);
  if (__OFSUB__(v27, 1))
  {
    goto LABEL_53;
  }

  if (!v30)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v27 == 0x8000000000000001 && v30 == -1)
  {
    goto LABEL_59;
  }

  v31 = (v27 - 1) % v30;
  v32 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
    goto LABEL_56;
  }

  result = sub_7575C0();
  if (__OFSUB__(v27, v32))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  return result >= v27 - v32;
}

uint64_t sub_681104(uint64_t a1, void *a2)
{
  v14 = a2;
  v2 = sub_764930();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7575D0();
  v6 = sub_75AF20();
  sub_7575D0();
  sub_75AF10();
  sub_7575D0();
  v7 = sub_75AF20();
  v8 = sub_680A04(v5, v7, v14);
  result = (*(v3 + 8))(v5, v2);
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 == 0x8000000000000001 && v8 == -1)
  {
    goto LABEL_14;
  }

  v11 = (v6 - 1) % v8;
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    result = sub_7575C0();
    if (!__OFSUB__(v6, v12))
    {
      return result >= v6 - v12;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_6812D4(void *a1@<X0>, NSIndexSet *a2@<X8>)
{
  sub_7574C0(a2);
  v4 = v3;
  [a1 insertSections:v3];
}

id sub_681330(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a4;
  v29 = a3;
  v34 = a2;
  v32 = sub_764A60();
  v8 = *(v32 - 8);
  *&v9 = __chkstk_darwin(v32).n128_u64[0];
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 bounds];
  v13 = v12;
  v15 = v14;
  v33 = a1;
  sub_75AFE0();
  v16 = sub_764AD0();

  v17 = sub_75AF70();
  sub_75AFE0();
  sub_764A80();

  v19 = v30;
  v18 = v31;
  v20 = (*(v28 + 64))(v16, v17, v11, v31, v30, v13, v15);

  (*(v8 + 8))(v11, v32);
  v21 = [objc_opt_self() sectionWithGroup:v20];
  v22 = [objc_opt_self() standardUserDefaults];
  v23 = sub_769820();

  [v21 setOrthogonalScrollingBehavior:v23];
  swift_getObjectType();
  PageTraitEnvironment.pageColumnMargin.getter();
  [v21 setInterGroupSpacing:?];
  sub_678058(v33, v34, v19, v18);
  aBlock[4] = sub_6874D8;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4E4820;
  aBlock[3] = &unk_89BFC0;
  v25 = _Block_copy(aBlock);

  [v21 setVisibleItemsInvalidationHandler:v25];
  _Block_release(v25);

  return v21;
}

id sub_68164C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  type metadata accessor for ShelfComponentContainerDelegate(0, *(*v9 + 80), *(*v9 + 88), *(*v9 + 96));
  v13 = v8[2];
  swift_unknownObjectRetain();
  v14 = sub_764900();
  v16 = v9[3];
  v15 = v9[4];
  v17 = v9[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = sub_51FBD0(v13, a1, v14 & 1, v16, v15, v17, 0, Strong);

  swift_unknownObjectRetain();

  v20 = sub_75AFE0();
  WitnessTable = swift_getWitnessTable();
  v22 = *(a6 + 24);

  v23 = v22(a1, v20, a8, v19, WitnessTable, a7, a2, a3);
  v25 = v24;

  v26 = objc_opt_self();
  v27 = [v26 absoluteDimension:v23];
  v28 = [v26 absoluteDimension:v25];
  v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

  v30 = [objc_opt_self() itemWithLayoutSize:v29];
  v31 = objc_opt_self();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_77D9F0;
  *(v32 + 32) = v30;
  sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);
  v33 = v30;
  isa = sub_769450().super.isa;

  v35 = [v31 verticalGroupWithLayoutSize:v29 subitems:isa];

  v36 = [objc_opt_self() sectionWithGroup:v35];
  [v36 setOrthogonalScrollingBehavior:0];

  return v36;
}

void sub_6819A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v105 = a7;
  v104 = a6;
  v125 = a5;
  v117 = sub_764930();
  v13 = *(v117 - 8);
  __chkstk_darwin(v117);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_960D30, qword_7AC700);
  __chkstk_darwin(v16 - 8);
  v119 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v98 - v19;
  v124 = sub_BD88(&qword_941BD0, &qword_7811F0);
  v112 = *(v124 - 8);
  __chkstk_darwin(v124);
  v110 = &v98 - v21;
  v126 = sub_757640();
  v22 = *(v126 - 8);
  __chkstk_darwin(v126);
  v127 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v109 = &v98 - v25;
  v111 = a1;
  v26 = sub_6850C8(a1);
  if (v26 < 1)
  {
    return;
  }

  v120 = v13;
  v27 = v26;
  v28 = v125;
  [v125 pageMarginInsets];
  (*(a4 + 32))(0, v28, a3, a4, v29);
  v30 = sub_680A04(a2, v27, v28);
  v106 = v27;
  v31 = ceil(v27 / v30);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v99 = v31;
  if (v31 >= 1)
  {
    v32 = v30;
    v129 = _swiftEmptyArrayStorage;
    if ((v30 & 0x8000000000000000) == 0)
    {
      v100 = 0;
      v103 = (v22 + 16);
      v123 = (v22 + 8);
      v121 = (v112 + 48);
      v122 = (v112 + 56);
      v115 = (v120 + 16);
      v116 = (v22 + 32);
      v114 = (v120 + 88);
      v113 = enum case for Shelf.ContentType.privacyType(_:);
      v107 = (v120 + 8);
      v102 = xmmword_77E280;
      v33 = 0.0;
      v118 = v15;
      v34 = v119;
      v35 = v124;
      v108 = v30;
      v101 = a2;
      while (1)
      {
        if (v32)
        {
          v46 = v100 * v32;
          if ((v100 * v32) >> 64 != (v100 * v32) >> 63)
          {
            goto LABEL_60;
          }

          v47 = 0;
          v48 = 0.0;
          v49 = _swiftEmptyArrayStorage;
          v50 = v106;
          while (1)
          {
            v51 = v46 + v47;
            if (__OFADD__(v46, v47))
            {
              break;
            }

            if (v51 < v50)
            {
              sub_BD88(&qword_95B250, "hq\b");
              v52 = swift_allocObject();
              *(v52 + 16) = v102;
              *(v52 + 32) = v111;
              *(v52 + 40) = v51;
              v53 = v109;
              sub_757540();
              v54 = sub_67D1CC(v53, v105, v125, v104);
              v56 = v55;
              v57 = (v110 + *(v35 + 48));
              (*v103)();
              *v57 = v54;
              v57[1] = v56;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v49 = sub_7C15C(0, *(v49 + 2) + 1, 1, v49);
              }

              v59 = *(v49 + 2);
              v58 = *(v49 + 3);
              v32 = v108;
              if (v59 >= v58 >> 1)
              {
                v49 = sub_7C15C((v58 > 1), v59 + 1, 1, v49);
              }

              (*v123)(v109, v126);
              *(v49 + 2) = v59 + 1;
              sub_109C4(v110, v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v59, &qword_941BD0, &qword_7811F0);
              if (v48 <= v56)
              {
                v48 = v56;
              }

              v35 = v124;
              v50 = v106;
            }

            if (v32 == ++v47)
            {
              goto LABEL_26;
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
          goto LABEL_63;
        }

        v48 = 0.0;
        v49 = _swiftEmptyArrayStorage;
LABEL_26:
        v60 = 0;
        ++v100;
        v61 = _swiftEmptyArrayStorage;
        v128 = _swiftEmptyArrayStorage;
        v62 = *(v49 + 2);
        v63 = v48;
        v64 = v101;
        v120 = v62;
        if (v62)
        {
LABEL_27:
          if (v60 < *(v49 + 2))
          {
            sub_1ED18(v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v60, v34, &qword_941BD0, &qword_7811F0);
            v65 = 0;
            ++v60;
            goto LABEL_30;
          }

          goto LABEL_59;
        }

        while (1)
        {
          v65 = 1;
          v60 = v62;
LABEL_30:
          (*v122)(v34, v65, 1, v35);
          sub_109C4(v34, v20, &unk_960D30, qword_7AC700);
          if ((*v121)(v20, 1, v35) == 1)
          {
            break;
          }

          v66 = &v20[*(v35 + 48)];
          v67 = *v66;
          v68 = v66[1];
          (*v116)(v127, v20, v126);
          v69 = v117;
          (*v115)(v15, v64, v117);
          v70 = (*v114)(v15, v69);
          if (v70 == v113)
          {
            v71 = [v125 traitCollection];
            v72 = sub_7699E0();

            if (v72)
            {
              v63 = v48;
              v68 = v48;
            }
          }

          else
          {
            (*v107)(v15, v69);
          }

          v73 = objc_opt_self();
          v74 = [v73 absoluteDimension:v67];
          v75 = [v73 absoluteDimension:v68];
          v76 = [objc_opt_self() sizeWithWidthDimension:v74 heightDimension:v75];

          v77 = v76;
          sub_682E10(v127, v67, v68);
          sub_BE70(0, &unk_956250, NSCollectionLayoutSupplementaryItem_ptr);
          isa = sub_769450().super.isa;

          v79 = [objc_opt_self() itemWithLayoutSize:v77 supplementaryItems:isa];

          if (v32 == 1)
          {
            sub_679978(v111, v125);
            if (v81 == 0.0 && v80 == 0.0)
            {
              v82 = objc_opt_self();
              v83 = [v82 flexibleSpacing:0.0];
              v84 = [v82 flexibleSpacing:0.0];
              v85 = v8;
              v86 = [objc_opt_self() spacingForLeading:v83 top:0 trailing:v84 bottom:0];

              [v79 setEdgeSpacing:v86];
              v8 = v85;
              v32 = v108;
              v64 = v101;
            }
          }

          v87 = v79;
          sub_769440();
          if (*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v128 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();

          (*v123)(v127, v126);
          v61 = v128;
          v15 = v118;
          v34 = v119;
          v35 = v124;
          v62 = v120;
          if (v60 != v120)
          {
            goto LABEL_27;
          }
        }

        if (v61 >> 62)
        {
          if (sub_76A860() != 1 || !sub_76A860())
          {
LABEL_8:
            v36 = objc_opt_self();
            v37 = objc_opt_self();
            v38 = [v37 fractionalWidthDimension:1.0];
            v39 = [v37 estimatedDimension:v63];
            v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

            sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);
            v41 = sub_769450().super.isa;

            v42 = [v36 horizontalGroupWithLayoutSize:v40 subitems:v41];

            v43 = sub_679FB8(v111, v125);
            v44 = [objc_opt_self() fixedSpacing:v43];
            [v42 setInterItemSpacing:v44];

            v45 = v42;
            sub_769440();
            if (*(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v129 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_7694C0();
            }

            sub_769500();
            v15 = v118;
            v34 = v119;
            v35 = v124;
            goto LABEL_11;
          }
        }

        else if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)) != 1)
        {
          goto LABEL_8;
        }

        if ((v61 & 0xC000000000000001) != 0)
        {
          v88 = sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_61;
          }

          v88 = *(v61 + 32);
        }

        v89 = v88;

        v45 = v89;
        sub_769440();
        if (*(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v129 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
LABEL_11:

        v33 = v33 + v63 + 0.0;
        if (v100 == v99)
        {
          v90 = objc_opt_self();
          v91 = [v90 fractionalWidthDimension:1.0];
          v92 = [v90 estimatedDimension:v33];
          v93 = [objc_opt_self() sizeWithWidthDimension:v91 heightDimension:v92];

          v94 = objc_opt_self();
          sub_BE70(0, &qword_957F90, NSCollectionLayoutItem_ptr);
          v95 = sub_769450().super.isa;

          v96 = [v94 verticalGroupWithLayoutSize:v93 subitems:v95];

          v97 = [objc_opt_self() fixedSpacing:0.0];
          [v96 setInterItemSpacing:v97];

          [objc_opt_self() sectionWithGroup:v96];
          return;
        }
      }
    }

    goto LABEL_65;
  }
}

double *sub_682808(uint64_t a1, __n128 a2)
{
  v2 = sub_75B660();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AF00();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v3 + 96))(v5, v2);

    v7 = *(sub_BD88(&qword_94B9A8, &qword_78EB00) + 48);
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_77D9F0;
    v9 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    sub_769BC0();
    v10 = sub_769210();

    v11 = [v9 backgroundDecorationItemWithElementKind:v10];

    *(v8 + 32) = v11;
    v12 = sub_75EDA0();
    (*(*(v12 - 8) + 8))(&v5[v7], v12);
  }

  else if (v6 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v3 + 96))(v5, v2);

    v13 = sub_BD88(&qword_94B3C0, &qword_7ADD80);
    v14 = v13[12];
    v15 = v13[16];
    v16 = v13[20];
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_77D9F0;
    v17 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    sub_769BC0();
    v18 = sub_769210();

    v19 = [v17 backgroundDecorationItemWithElementKind:v18];

    *(v8 + 32) = v19;
    v20 = sub_75EDA0();
    (*(*(v20 - 8) + 8))(&v5[v16], v20);
    v21 = sub_763400();
    v22 = *(*(v21 - 8) + 8);
    v22(&v5[v15], v21);
    v22(&v5[v14], v21);
  }

  else if (v6 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v3 + 96))(v5, v2);
    v23 = *(sub_BD88(&qword_959950, &unk_7A2A80) + 48);
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_77D9F0;
    v24 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    sub_769BC0();
    v25 = sub_769210();

    v26 = [v24 backgroundDecorationItemWithElementKind:v25];

    *(v8 + 32) = v26;
    v27 = sub_75EDA0();
    (*(*(v27 - 8) + 8))(&v5[v23], v27);
    v28 = sub_763E10();
    (*(*(v28 - 8) + 8))(v5, v28);
  }

  else if (v6 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v29 = enum case for ShelfBackground.interactive(_:);
    v30 = v6;
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_77D9F0;
    v31 = objc_opt_self();
    if (v30 == v29)
    {
      type metadata accessor for InteractiveSectionBackgroundView(0);
      sub_769BC0();
      v32 = sub_769210();

      v33 = [v31 backgroundDecorationItemWithElementKind:v32];

      *(v8 + 32) = v33;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      sub_769BC0();
      v34 = sub_769210();

      v35 = [v31 backgroundDecorationItemWithElementKind:v34];

      *(v8 + 32) = v35;
      (*(v3 + 8))(v5, v2);
    }
  }

  return v8;
}

double *sub_682E10(uint64_t a1, double a2, double a3)
{
  v5 = sub_BD88(&unk_955F20, &unk_77EB30);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_75ACC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  sub_75AFA0();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10A2C(v7, &unk_955F20, &unk_77EB30);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    v15 = (*(v9 + 88))(v11, v8);
    if (v15 == enum case for ItemBackground.ad(_:) || v15 == enum case for ItemBackground.insetAd(_:) || v15 == enum case for ItemBackground.clearAdWithSeparator(_:))
    {
      v18 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{-8.0, -8.0}];
      v19 = objc_opt_self();
      v20 = [v19 absoluteDimension:a2 + 16.0];
      v21 = [v19 absoluteDimension:a3];
      v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

      v23 = v22;
      sub_305A2C(v24);
      v25 = v18;
      v26 = sub_769210();

      v27 = [objc_opt_self() supplementaryItemWithLayoutSize:v23 elementKind:v26 containerAnchor:v25];

      [v27 setZIndex:-1];
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_77D9F0;
      *(v28 + 32) = v27;

      (*(v9 + 8))(v14, v8);
      return v28;
    }

    v30 = *(v9 + 8);
    v30(v14, v8);
    v30(v11, v8);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_68321C(uint64_t a1, uint64_t a2)
{
  v45 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33[-v3];
  v4 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v4 - 8);
  v43 = &v33[-v5];
  v48 = sub_768AB0();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v33[-v9];
  v10 = sub_7574A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_BD88(&qword_94D5B0, &unk_790FA8);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  sub_7574B0();
  swift_beginAccess();
  sub_757500();
  sub_68755C(&qword_94D5B8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v46 = (v11 + 8);
  v36 = v6 + 16;
  v35 = v6 + 32;
  v34 = (v6 + 8);
  v42 = (v6 + 56);
  v40 = v6;
  ++v41;
  v37 = v10;
  while (1)
  {
    v18 = v47;
    sub_7696F0();
    sub_68755C(&qword_94D5C0, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v19 = sub_7691C0();
    (*v46)(v18, v10);
    if (v19)
    {
      break;
    }

    v20 = sub_769710();
    v22 = *v21;
    v20(v49, 0);
    sub_769700();
    v23 = *(a2 + 56);
    if (*(v23 + 16))
    {
      v24 = sub_663D5C(v22);
      if (v25)
      {
        v26 = v39;
        v27 = v40;
        v28 = *(v23 + 56) + *(v40 + 72) * v24;
        v29 = v48;
        (*(v40 + 16))(v39, v28, v48);
        v30 = *(v27 + 32);
        v31 = v38;
        v30(v38, v26, v29);
        if (*(a2 + 112))
        {

          sub_75F4D0();
        }

        (*v34)(v31, v48);
        v10 = v37;
      }
    }

    v16 = v43;
    (*v42)(v43, 1, 1, v48);
    swift_beginAccess();
    sub_452008(v16, v22);
    swift_endAccess();
    v50 = v22;
    sub_76A6E0();
    v17 = v44;
    sub_769090();
    sub_768C70();
    (*v41)(v17, v45);
  }

  return sub_10A2C(v15, &qword_94D5B0, &unk_790FA8);
}

uint64_t sub_6837B4(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v23 = sub_7574A0();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_94D5B0, &unk_790FA8);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  sub_7574B0();
  sub_757500();
  sub_68755C(&qword_94D5B8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    sub_7696F0();
    sub_68755C(&qword_94D5C0, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v12 = v23;
    v13 = sub_7691C0();
    (*v10)(v6, v12);
    if (v13)
    {
      break;
    }

    v14 = sub_769710();
    v16 = *v15;
    v14(v24, 0);
    sub_769700();
    v24[6] = v16;
    sub_76A6E0();
    v17 = v20;
    sub_769090();
    sub_768C70();
  }

  return sub_10A2C(v9, &qword_94D5B0, &unk_790FA8);
}

void sub_683AF8(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_BD88(&unk_9467B0, &qword_7A2E60);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = sub_757640();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_BE70(0, &qword_93FF60, UICollectionViewCell_ptr);
  v11 = sub_769460();

  if (!(v11 >> 62))
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v12 = sub_76A860();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v28 = (v3 + 8);
    v29 = (v5 + 32);
    v27 = (v5 + 8);
    v30 = v11 & 0xC000000000000001;
    v15 = v33;
    do
    {
      if (v14)
      {
        v16 = sub_76A770();
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v17 && (v18 = [v37 indexPathForCell:v17]) != 0)
      {
        v19 = v32;
        v20 = v18;
        sub_757590();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = sub_7575D0();
        sub_76A6E0();
        v23 = v34;
        sub_769090();
        sub_768C70();

        v24 = v23;
        v14 = v30;
        (*v28)(v24, v35);
        v25 = v22;
        v11 = v21;
        (*v27)(v25, v15);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

BOOL sub_683E8C(uint64_t a1)
{
  v1 = sub_764930();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_75AF10();
  (*(v2 + 32))(v4, v7, v1);
  v8 = (*(v2 + 88))(v4, v1);
  if (v8 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v9 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  }

  else if (v8 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v9 = type metadata accessor for InformationRibbonCollectionViewCell(0);
  }

  else
  {
    (*(v2 + 8))(v4, v1);
    v9 = 0;
  }

  return v9 != 0;
}

uint64_t sub_684040(uint64_t a1, uint64_t a2)
{
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  if (sub_75AF30() > a1)
  {
    sub_75AF10();
    if (!sub_683E8C(a1) && ((*(*v2 + 696))(v11, a2) & 1) != 0)
    {
      (*(v6 + 32))(v8, v11, v5);
      v12 = (*(v6 + 88))(v8, v5);
      v13 = v12 == enum case for Shelf.ContentType.annotation(_:) || v12 == enum case for Shelf.ContentType.productCapability(_:);
      v14 = v13 || v12 == enum case for Shelf.ContentType.productPageLink(_:);
      v15 = v14 || v12 == enum case for Shelf.ContentType.privacyType(_:);
      v11 = v8;
      if (v15)
      {
        return 1;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  return 0;
}

uint64_t sub_684270(char a1, id a2)
{
  v3 = [a2 traitCollection];
  v4 = sub_769A00();

  v5 = 1;
  if ((a1 & 1) == 0)
  {
    v5 = 2;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

double sub_6842D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    sub_75AFB0();
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_684370(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = sub_764930();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a5 bounds];
  [a5 safeAreaInsets];
  sub_769DA0();
  if ((a2 & 1) == 0)
  {
    v17 = sub_3AC688();
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
        v23 = sub_680A04(a1, a3, a4);
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

uint64_t sub_68466C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_95B250, "hq\b");
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_77E280;
  *(v11 + 32) = sub_7575D0();
  *(v11 + 40) = a1;
  sub_757540();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    sub_75AFC0();
    swift_unknownObjectRelease();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_6847E8(uint64_t a1)
{
  v2 = sub_764930();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 != enum case for Shelf.ContentType.artwork(_:) && v7 != enum case for Shelf.ContentType.ribbonBar(_:) && v7 != enum case for Shelf.ContentType.ribbonFlow(_:) && v7 != enum case for Shelf.ContentType.paragraph(_:) && v7 != enum case for Shelf.ContentType.footnote(_:) && v7 != enum case for Shelf.ContentType.titledParagraph(_:) && v7 != enum case for Shelf.ContentType.reviewsContainer(_:) && v7 != enum case for Shelf.ContentType.reviewSummary(_:) && v7 != enum case for Shelf.ContentType.editorialLink(_:) && v7 != enum case for Shelf.ContentType.quote(_:) && v7 != enum case for Shelf.ContentType.framedArtwork(_:) && v7 != enum case for Shelf.ContentType.screenshots(_:) && v7 != enum case for Shelf.ContentType.appShowcase(_:) && v7 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v7 != enum case for Shelf.ContentType.linkableText(_:) && v7 != enum case for Shelf.ContentType.framedVideo(_:) && v7 != enum case for Shelf.ContentType.productDescription(_:) && v7 != enum case for Shelf.ContentType.banner(_:) && v7 != enum case for Shelf.ContentType.roundedButton(_:) && v7 != enum case for Shelf.ContentType.titledButtonStack(_:) && v7 != enum case for Shelf.ContentType.smallStoryCard(_:) && v7 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v7 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v7 != enum case for Shelf.ContentType.upsellBreakout(_:) && v7 != enum case for Shelf.ContentType.smallBreakout(_:) && v7 != enum case for Shelf.ContentType.arcadeFooter(_:) && v7 != enum case for Shelf.ContentType.editorialQuote(_:) && v7 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v7 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v7 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v7 != enum case for Shelf.ContentType.privacyHeader(_:) && v7 != enum case for Shelf.ContentType.privacyFooter(_:) && v7 != enum case for Shelf.ContentType.privacyCategory(_:) && v7 != enum case for Shelf.ContentType.privacyDefinition(_:) && v7 != enum case for Shelf.ContentType.heroCarousel(_:) && v7 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    (*(v3 + 8))(v6, v2);
    if (sub_7699E0())
    {
      v8 = sub_769A00() ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

uint64_t sub_684BDC()
{
  sub_677158();

  return swift_deallocClassInstance();
}

double sub_684C28(uint64_t a1)
{
  sub_768C80();
  if (*(v1 + 112))
  {

    sub_75F4E0();
  }

  return result;
}

uint64_t sub_684C84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_960E40, &unk_7AC6F0);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_757500();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v24 = a1;
  sub_1ED18(a1, v9, &unk_960E40, &unk_7AC6F0);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_10A2C(v9, &unk_960E40, &unk_7AC6F0);
    if (v2[14])
    {

      sub_75F4E0();
    }

    swift_beginAccess();
    v2[7] = _swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = (*(v11 + 32))(v15, v9, v10);
    v21[1] = v21;
    v26[0] = v2[3];
    __chkstk_darwin(v17);
    v22 = v16;
    v21[-2] = v15;
    v21[-1] = v2;

    sub_BD88(&qword_9467C0, &qword_790FA0);
    v21[0] = 0;
    sub_2A3AD4();
    v16 = v22;
    sub_768610();

    (*(v11 + 8))(v15, v10);
  }

  sub_67847C();
  sub_1ED18(v24, v6, &unk_960E40, &unk_7AC6F0);
  if (v16(v6, 1, v10) == 1)
  {
    return sub_10A2C(v6, &unk_960E40, &unk_7AC6F0);
  }

  v19 = v23;
  v20 = (*(v11 + 32))(v23, v6, v10);
  v25 = v2[3];
  __chkstk_darwin(v20);
  v21[-2] = v19;
  v21[-1] = v2;

  sub_BD88(&qword_9467C0, &qword_790FA0);
  sub_2A3AD4();
  sub_768610();

  return (*(v11 + 8))(v19, v10);
}

uint64_t sub_6850C8(uint64_t a1)
{
  if (sub_75AF30() <= a1 || (sub_75AEE0() & 1) != 0)
  {
    return 0;
  }

  v3 = sub_75AF20();
  if (sub_683E8C(a1))
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

void sub_685184(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = sub_764930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v32[-v7];
  __chkstk_darwin(v9);
  v39 = &v32[-v10];
  v11 = sub_768390();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  v15 = sub_7699A0();
  v16 = v14;
  v17 = v8;
  (*(v12 + 8))(v16, v11);
  sub_47E01C(v15, a1);

  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v37 = v4 + 32;
  v38 = v4 + 16;
  v36 = v4 + 88;
  v35 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
  v33 = enum case for Shelf.ContentType.informationRibbon(_:);
  v40 = a1;
  v41 = (v4 + 8);

  v23 = 0;
  v34 = v4;
  while (v21)
  {
LABEL_10:
    v25 = v39;
    v26 = *(v4 + 16);
    v26(v39, *(v40 + 48) + *(v4 + 72) * (__clz(__rbit64(v21)) | (v23 << 6)), v3);
    (*(v4 + 32))(v17, v25, v3);
    v27 = v42;
    v26(v42, v17, v3);
    v28 = (*(v4 + 88))(v27, v3);
    if (v28 == v35)
    {
      type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    }

    else if (v28 == v33)
    {
      type metadata accessor for InformationRibbonCollectionViewCell(0);
    }

    else
    {
      (*v41)(v42, v3);
      if (!sub_3AC688())
      {
        goto LABEL_4;
      }
    }

    if (v43)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_764910();
      v30 = v17;
      v31 = sub_769210();

      [v43 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v31];

      v17 = v30;
      v4 = v34;
    }

LABEL_4:
    v21 &= v21 - 1;
    (*v41)(v17, v3);
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      return;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
}

double sub_6855A0(void *a1)
{
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v2 = sub_766CA0();
  sub_BE38(v2, qword_99FE18);
  v3 = [a1 traitCollection];
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_77D9F0;
  *(v4 + 32) = v3;
  v5 = v3;
  v6 = sub_7671E0();
  sub_7666E0();
  v8 = v7;

  return v8;
}

void sub_6856BC(void *a1)
{
  [a1 reloadData];

  sub_678898(a1);
}

uint64_t sub_685700(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0, &qword_77F490);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_768AB0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_134D8(a1, v53);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_BD88(&qword_956658, &qword_79F6B0);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v19 = sub_7601B0();
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
          sub_134D8(v21, v53);
          sub_B170(v53, v53[3]);
          v23 = v48;
          sub_7690D0();
          sub_BEB8(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10A2C(v23, &unk_93FF30, &unk_77DB10);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_B170(v44, v44[3]);
            sub_7690D0();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10A2C(v10, &unk_93FF30, &unk_77DB10);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              sub_768A90();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = sub_768A80();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_1ED18(v27, v40, &qword_93FFC0, &qword_77F490);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10A2C(v31, &qword_93FFC0, &qword_77F490);
              }

              else
              {
                sub_768A70();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              sub_768A40();

              sub_75F4D0();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10A2C(v32, &qword_93FFC0, &qword_77F490);
              v35(v34, v37);
            }

            else
            {
              sub_10A2C(v27, &qword_93FFC0, &qword_77F490);
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

    return sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10A2C(v51, &qword_956660, &unk_7AC6E0);
  }
}

uint64_t sub_685CF4(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v51 = a2;
  v7 = sub_BD88(&qword_93FFC0, &qword_77F490);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v43 - v11;
  v12 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = sub_768AB0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v45 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v53 = &v43 - v22;
  v48 = a1;
  sub_134D8(a1, v57);
  sub_BD88(&unk_944DA0, &unk_77EB70);
  sub_BD88(&qword_956658, &qword_79F6B0);
  if (swift_dynamicCast())
  {
    v52 = v17;
    v44 = v9;
    sub_10914(v55, v58);
    sub_B170(v58, v58[3]);
    v23 = sub_7601B0();
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
          sub_134D8(v25, v57);
          sub_B170(v57, v57[3]);
          v27 = v52;
          sub_7690D0();
          sub_BEB8(v57);
          v28 = *v26;
          v29 = v54;
          if ((*v26)(v27, 1, v54) == 1)
          {
            sub_10A2C(v27, &unk_93FF30, &unk_77DB10);
          }

          else
          {
            (*v46)(v53, v27, v29);
            sub_B170(v48, v48[3]);
            sub_7690D0();
            if (v28(v14, 1, v29) == 1)
            {
              sub_10A2C(v14, &unk_93FF30, &unk_77DB10);
              v30 = 1;
              v31 = v50;
            }

            else
            {
              v32 = v14;
              v31 = v50;
              sub_768A90();
              (*v49)(v32, v29);
              v30 = 0;
            }

            v33 = sub_768A80();
            v34 = *(v33 - 8);
            (*(v34 + 56))(v31, v30, 1, v33);
            if (v51)
            {
              v35 = v44;
              sub_1ED18(v31, v44, &qword_93FFC0, &qword_77F490);
              if ((*(v34 + 48))(v35, 1, v33) == 1)
              {
                v36 = v31;
                sub_10A2C(v35, &qword_93FFC0, &qword_77F490);
              }

              else
              {
                sub_768A70();
                (*(v34 + 8))(v35, v33);
                v36 = v50;
              }

              v37 = v45;
              v38 = v53;
              sub_768A40();

              sub_75F4B0();
              v39 = *v49;
              v40 = v37;
              v41 = v54;
              (*v49)(v40, v54);
              sub_10A2C(v36, &qword_93FFC0, &qword_77F490);
              v39(v38, v41);
            }

            else
            {
              sub_10A2C(v31, &qword_93FFC0, &qword_77F490);
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

    return sub_BEB8(v58);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    return sub_10A2C(v55, &qword_956660, &unk_7AC6E0);
  }
}

void sub_68634C(void *a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v105 = *v4;
  v8 = sub_BD88(&qword_93FFC0, &qword_77F490);
  __chkstk_darwin(v8 - 8);
  v93 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = v89 - v11;
  v12 = sub_764930();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v99 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v101 = v89 - v16;
  v17 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v17 - 8);
  v94 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v100 = v89 - v20;
  __chkstk_darwin(v21);
  v98 = v89 - v22;
  v23 = sub_768AB0();
  v102 = *(v23 - 8);
  v103 = v23;
  __chkstk_darwin(v23);
  v92 = v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v95 = v89 - v26;
  __chkstk_darwin(v27);
  v97 = v89 - v28;
  if (sub_7575E0() >= 2)
  {
    v91 = v13;
    v89[3] = v4[2];
    v29 = *(v105 + 96);
    v89[2] = *(v105 + 80);
    v89[1] = v29;
    v30 = sub_75AF80();
    v31 = sub_BE70(0, &qword_93FF60, UICollectionViewCell_ptr);
    v110 = v31;
    v109[0] = a1;
    v32 = a1;
    v90 = v30;
    sub_760910();
    sub_BEB8(v109);
    swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    v104 = a2;
    if (v33 && v32)
    {
      sub_761120();
      sub_768900();
      v34 = v32;
      v89[0] = v31;
      v35 = v34;
      sub_768ED0();
      v36 = v109[0];
      swift_getObjectType();
      v37 = sub_75EF20();
      v38 = v35;
      sub_7610C0();
    }

    v108 = v32;
    v39 = v32;
    sub_BD88(&qword_95CD88, &unk_7AC6D0);
    if (swift_dynamicCast())
    {
      sub_10914(v106, v109);
      sub_761120();
      sub_768900();
      sub_768ED0();
      v40 = *&v106[0];
      sub_B170(v109, v110);
      sub_761540();

      sub_BEB8(v109);
    }

    else
    {
      v107 = 0;
      memset(v106, 0, sizeof(v106));
      sub_10A2C(v106, &unk_95CD90, "v(\a");
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v32)
    {
      sub_75E3E0();
      v41 = v39;
      sub_7688F0();
      v42 = v109[0];
      if (v109[0])
      {
        v43 = v41;
        v44 = v42;
        sub_75E390();

        v41 = v44;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v32)
    {
      swift_getObjectType();
      v45 = v39;
      sub_761FB0();
    }

    swift_getObjectType();
    v46 = swift_conformsToProtocol2();
    v47 = v91;
    if (v46 && v32)
    {
      v48 = v46;
      ObjectType = swift_getObjectType();
      v50 = *(v48 + 8);
      v51 = v39;
      v50(ObjectType, v48);
    }

    if (v90)
    {
      swift_getObjectType();
      v52 = swift_conformsToProtocol2();
      if (v52 && v32)
      {
        v53 = v52;
        v54 = swift_getObjectType();
        v55 = *(v53 + 40);
        v56 = v39;
        v55(v54, v53);
      }

      v57 = sub_7575D0();
      v58 = sub_683E8C(v57);
      sub_7575D0();
      if (v58)
      {
        sub_75AFE0();
        v59 = v98;
        sub_764A70();
        v61 = v102;
        v60 = v103;
        if ((*(v102 + 48))(v59, 1, v103) == 1)
        {

          sub_10A2C(v59, &unk_93FF30, &unk_77DB10);
        }

        else
        {
          v73 = v97;
          (*(v61 + 32))(v97, v59, v60);
          if (v5[14])
          {

            sub_75F4D0();
          }

          (*(v61 + 8))(v73, v60);
        }

        return;
      }

      v62 = v101;
      sub_75AF10();
      sub_7575D0();
      v63 = sub_75AED0();
      v64 = v99;
      (*(v47 + 16))(v99, v62, v12);
      v65 = (*(v47 + 88))(v64, v12);
      v66 = v100;
      if (v65 == enum case for Shelf.ContentType.smallLockup(_:) || v65 == enum case for Shelf.ContentType.mediumLockup(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.largeLockup(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v65 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v65 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.editorialCard(_:) || v65 == enum case for Shelf.ContentType.videoCard(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.brick(_:) || v65 == enum case for Shelf.ContentType.categoryBrick(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.reviews(_:) || v65 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v65 == enum case for Shelf.ContentType.framedVideo(_:) || v65 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v65 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v65 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v65 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v65 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v65 == enum case for Shelf.ContentType.posterLockup(_:) || v65 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.appPromotion(_:))
      {
LABEL_51:
        if (v63)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v88 = v100;
        (*(v47 + 8))(v64, v12);
        v66 = v88;
      }

      v67 = v66;
      v68 = sub_75AF30();
      if (sub_7575D0() < v68)
      {
        v69 = sub_7575C0();
        sub_7575D0();
        if (v69 < sub_75AF20())
        {
          sub_75AFD0();
          sub_B170(v109, v110);
          sub_7690D0();
          v70 = v67;
          v71 = v102;
          v72 = v103;
          v104 = *(v102 + 48);
          if (v104(v70, 1, v103) == 1)
          {
            (*(v47 + 8))(v62, v12);
            sub_10A2C(v70, &unk_93FF30, &unk_77DB10);
          }

          else
          {
            (*(v71 + 32))(v95, v70, v72);
            sub_7575D0();
            sub_75AFE0();
            v74 = v94;
            sub_764A70();
            v75 = v5;
            if (v104(v74, 1, v72) == 1)
            {
              sub_10A2C(v74, &unk_93FF30, &unk_77DB10);
              v76 = 1;
              v77 = v96;
            }

            else
            {
              v78 = v96;
              sub_768A90();
              v77 = v78;
              (*(v71 + 8))(v74, v72);
              v76 = 0;
            }

            v79 = sub_768A80();
            v80 = *(v79 - 8);
            (*(v80 + 56))(v77, v76, 1, v79);
            if (v75[14])
            {
              v81 = v93;
              sub_1ED18(v77, v93, &qword_93FFC0, &qword_77F490);
              v82 = (*(v80 + 48))(v81, 1, v79);

              if (v82 == 1)
              {
                sub_10A2C(v81, &qword_93FFC0, &qword_77F490);
              }

              else
              {
                sub_768A70();
                (*(v80 + 8))(v81, v79);
              }

              v87 = v92;
              v86 = v95;
              sub_768A40();

              sub_75F4D0();

              v85 = v102;
              v84 = v103;
              (*(v102 + 8))(v87, v103);
              v83 = v75[14];
            }

            else
            {
              v83 = 0;
              v85 = v102;
              v84 = v103;
              v86 = v95;
            }

            sub_685700(v109, v83);

            sub_10A2C(v96, &qword_93FFC0, &qword_77F490);
            (*(v85 + 8))(v86, v84);
            (*(v47 + 8))(v101, v12);
          }

          sub_BEB8(v109);
          return;
        }
      }

LABEL_56:
      (*(v47 + 8))(v62, v12);
    }
  }
}

uint64_t sub_687278()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6872B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 8, v5 | 7);
}

uint64_t sub_68734C(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(sub_757640() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_68466C(a1, v2 + v8, v9, v4, v5, v6);
}

uint64_t sub_68743C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_6874A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

double sub_687544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_68755C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6875A4()
{
  v1 = sub_757500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_687668()
{
  v1 = *(sub_757500() - 8);
  v2 = *(v0 + 16);
  sub_7574C0(((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = v3;
  [v2 insertSections:v3];
}

double sub_68779C()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = (swift_isaMask & *v0);
  v4 = sub_BD88(&unk_960E40, &unk_7AC6F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = *&stru_3D8.segname[v2 & v1];
  v8 = *(&stru_3D8.reloff + (v2 & v1));
  v9 = sub_75AF30();
  v10 = [v0 collectionView];
  [v10 reloadData];

  v11 = *(&stru_3D8.size + (v2 & v1));
  if (sub_75EB70())
  {
    sub_75CA90();
  }

  v12 = sub_68B888();
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 2) = v7;
    *(v15 + 3) = v3[126];
    *(v15 + 4) = v3[127];
    *(v15 + 5) = v11;
    *(v15 + 6) = v3[129];
    *(v15 + 7) = v8;
    *(v15 + 8) = v14;
    v16 = &v13[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v17 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v18 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v16 = sub_68DBF0;
    v16[1] = v15;

    sub_F704(v17, v18);
  }

  v19 = sub_68B888();
  v20 = sub_757500();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  sub_684C84(v6);

  sub_10A2C(v6, &unk_960E40, &unk_7AC6F0);
  sub_75EB60();

  return result;
}

void sub_687A58(uint64_t a1, uint64_t a2)
{
  v3 = sub_7572A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + qword_960D80))
  {

    sub_757290();
    sub_75B580();

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_687B40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_7572A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7587B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_13468(v3 + v12, v16);
  if (v17)
  {
    sub_134D8(v16, v15);
    sub_10A2C(v16, &qword_93FED0, &unk_77DCE0);
    sub_B170(v15, v15[3]);
    (*(v9 + 104))(v11, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v8);
    sub_7587C0();
    (*(v9 + 8))(v11, v8);
    result = sub_BEB8(v15);
  }

  else
  {
    result = sub_10A2C(v16, &qword_93FED0, &unk_77DCE0);
  }

  if (*(v3 + qword_960D80))
  {

    sub_757290();
    sub_75B570();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

double sub_687DB0(uint64_t a1)
{
  *(v1 + qword_960D80) = a1;

  return result;
}

uint64_t sub_687DC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v27 = a3;
  v7 = sub_764930();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_764940();
  v14 = sub_3AC688();
  if (v14)
  {
    v16 = v14;
    v26 = v15;
    if (sub_75AEF0())
    {
      v25 = sub_6850C8(a2);
    }

    else
    {
      v25 = 0;
    }

    v17 = sub_764970();
    (*(v8 + 16))(v10, v13, v7);
    v18 = (*(v8 + 88))(v10, v7);
    if (v18 != enum case for Shelf.ContentType.smallLockup(_:) && v18 != enum case for Shelf.ContentType.mediumLockup(_:))
    {
      if (v18 == enum case for Shelf.ContentType.largeLockup(_:))
      {
LABEL_12:
        v20 = 1;
        goto LABEL_13;
      }

      if (v18 != enum case for Shelf.ContentType.inAppPurchaseLockup(_:) && v18 != enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) && v18 != enum case for Shelf.ContentType.action(_:))
      {
        if (v18 == enum case for Shelf.ContentType.ribbonBar(_:))
        {
          goto LABEL_12;
        }

        if (v18 != enum case for Shelf.ContentType.editorialCard(_:) && v18 != enum case for Shelf.ContentType.videoCard(_:))
        {
          v20 = 1;
          if (v18 == enum case for Shelf.ContentType.brick(_:) || v18 == enum case for Shelf.ContentType.categoryBrick(_:))
          {
            goto LABEL_13;
          }

          if (v18 != enum case for Shelf.ContentType.reviews(_:) && v18 != enum case for Shelf.ContentType.appTrailerLockup(_:) && v18 != enum case for Shelf.ContentType.framedVideo(_:) && v18 != enum case for Shelf.ContentType.screenshotsLockup(_:) && v18 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v18 != enum case for Shelf.ContentType.smallBreakout(_:))
          {
            if (v18 == enum case for Shelf.ContentType.editorialStoryCard(_:))
            {
              goto LABEL_13;
            }

            if (v18 != enum case for Shelf.ContentType.mixedMediaLockup(_:) && v18 != enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) && v18 != enum case for Shelf.ContentType.largeGameCenterPlayer(_:) && v18 != enum case for Shelf.ContentType.posterLockup(_:) && v18 != enum case for Shelf.ContentType.smallContactCard(_:))
            {
              if (v18 != enum case for Shelf.ContentType.informationRibbon(_:))
              {
                v20 = v17;
                if (v18 != enum case for Shelf.ContentType.appPromotion(_:))
                {
                  (*(v8 + 8))(v10, v7);
                  v20 = 0;
                }
              }

              goto LABEL_13;
            }
          }
        }
      }
    }

    v20 = v17;
LABEL_13:
    sub_684370(v13, v20 & 1, v25, v4, v27);
    (*(v26 + 24))(a1, v20 & 1, v4, *&v4[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_artworkLoader], v16);
  }

  return (*(v8 + 8))(v13, v7);
}

double *sub_68822C(__n128 a1)
{
  v2 = swift_isaMask & *v1;
  v3 = sub_75B660();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __chkstk_darwin(v7);
  v10 = (&v35 - v9);
  v11 = _swiftEmptyArrayStorage;
  v36 = _swiftEmptyArrayStorage;
  v12 = (*(v2 + 1248))(v8);
  v13 = sub_2A3B54(v12);
  if (v13)
  {
    v14 = v13;
    sub_769440();
    if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v11 = v36;
  }

  v15 = sub_677CC4(v1);
  if (v15)
  {
    v16 = v15;
    sub_769440();
    if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v11 = v36;
  }

  if (sub_75AF30() < 1)
  {
    goto LABEL_14;
  }

  sub_75AF00();
  if ((*(v4 + 88))(v10, v3) != enum case for ShelfBackground.color(_:))
  {
    (*(v4 + 8))(v10, v3);
    goto LABEL_14;
  }

  (*(v4 + 96))(v10, v3);

  v17 = *(sub_BD88(&unk_959640, qword_78DD60) + 48);
  v18 = sub_75EDA0();
  (*(*(v18 - 8) + 8))(v10 + v17, v18);
  v19 = objc_opt_self();
  v20 = [v19 fractionalWidthDimension:1.0];
  v21 = [v19 absoluteDimension:2000.0];
  v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

  v23 = sub_769210();
  v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v22 elementKind:v23 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v24 setExtendsBoundary:0];
  v10 = v24;
  sub_769440();
  if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    sub_769500();

    v11 = v36;
LABEL_14:
    if (sub_75AF30() < 1)
    {
      break;
    }

    if (!__OFSUB__(sub_75AF30(), 1))
    {
      sub_75AF00();
      if ((*(v4 + 88))(v6, v3) == enum case for ShelfBackground.color(_:))
      {
        (*(v4 + 96))(v6, v3);

        v25 = *(sub_BD88(&unk_959640, qword_78DD60) + 48);
        v26 = sub_75EDA0();
        (*(*(v26 - 8) + 8))(v6 + v25, v26);
        v27 = objc_opt_self();
        v28 = [v27 fractionalWidthDimension:1.0];
        v29 = [v27 absoluteDimension:2000.0];
        v30 = [objc_opt_self() sizeWithWidthDimension:v28 heightDimension:v29];

        v31 = sub_769210();
        v32 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v30 elementKind:v31 alignment:5 absoluteOffset:{0.0, 2000.0}];

        [v32 setExtendsBoundary:0];
        v33 = v32;
        sub_769440();
        if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();

        return v36;
      }

      else
      {
        (*(v4 + 8))(v6, v3);
      }

      return v11;
    }

    __break(1u);
LABEL_23:
    sub_7694C0();
  }

  return v11;
}