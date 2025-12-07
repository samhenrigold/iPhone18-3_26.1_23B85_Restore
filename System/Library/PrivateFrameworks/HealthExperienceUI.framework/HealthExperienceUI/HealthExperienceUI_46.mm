unint64_t sub_1BA3E9BB8(char a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v82 - v10;
  v12 = *v1;
  sub_1B9F48158(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5460;
    v14 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v15 = *MEMORY[0x1E69DDD80];
    if (v12)
    {
      v16 = objc_opt_self();
      v17 = v14;
      v18 = [v16 preferredFontDescriptorWithTextStyle:v15 compatibleWithTraitCollection:0];
      if (v18)
      {
        v19 = v18;
        v20 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
      }

      else
      {
        sub_1BA4A3DD8();
        v33 = v15;
        v34 = sub_1BA4A3E88();
        v35 = sub_1BA4A6FB8();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          LODWORD(v83) = v35;
          v37 = v36;
          v82 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v88 = v84;
          *v37 = 136315906;
          v38 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v40 = sub_1B9F0B82C(v38, v39, &v88);
          v85 = v33;
          v41 = v40;

          *(v37 + 4) = v41;
          *(v37 + 12) = 2080;
          v86 = 0;
          v87 = 1;
          sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
          v42 = sub_1BA4A6808();
          v44 = sub_1B9F0B82C(v42, v43, &v88);

          *(v37 + 14) = v44;
          *(v37 + 22) = 2080;
          LODWORD(v86) = 0;
          type metadata accessor for SymbolicTraits(0);
          v45 = sub_1BA4A6808();
          v47 = sub_1B9F0B82C(v45, v46, &v88);
          v33 = v85;

          *(v37 + 24) = v47;
          *(v37 + 32) = 2112;
          v48 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v37 + 34) = v48;
          v49 = v82;
          *v82 = v48;
          _os_log_impl(&dword_1B9F07000, v34, v83, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v37, 0x2Au);
          sub_1B9F8C6C8(v49);
          MEMORY[0x1BFAF43A0](v49, -1, -1);
          v50 = v84;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v50, -1, -1);
          MEMORY[0x1BFAF43A0](v37, -1, -1);
        }

        (*(v4 + 8))(v11, v3);
        v51 = [v16 preferredFontDescriptorWithTextStyle_];
        v20 = [objc_opt_self() fontWithDescriptor:v51 size:0.0];
      }
    }

    else
    {
      v28 = *MEMORY[0x1E69DB980];
      v29 = v14;
      v20 = sub_1B9F6B774(v15, v28, 0, 0, 0, 0, 1);
    }

    v52 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
    *(inited + 40) = v20;
    v53 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v52;
    *(inited + 72) = v53;
    v54 = objc_opt_self();
    v55 = v53;
    v56 = [v54 secondaryLabelColor];
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BA4B5460;
    v21 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v22 = *MEMORY[0x1E69DDD80];
    if (v12)
    {
      v23 = objc_opt_self();
      v24 = v21;
      v25 = [v23 preferredFontDescriptorWithTextStyle:v22 compatibleWithTraitCollection:0];
      if (v25)
      {
        v26 = v25;
        v27 = [objc_opt_self() fontWithDescriptor:v25 size:0.0];
      }

      else
      {
        sub_1BA4A3DD8();
        v57 = v22;
        v58 = sub_1BA4A3E88();
        v59 = sub_1BA4A6FB8();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v88 = v84;
          *v60 = 136315906;
          v61 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          LODWORD(v82) = v59;
          v63 = sub_1B9F0B82C(v61, v62, &v88);
          v85 = v57;
          v64 = v63;

          *(v60 + 4) = v64;
          *(v60 + 12) = 2080;
          v86 = 0;
          v87 = 1;
          sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
          v65 = sub_1BA4A6808();
          v67 = sub_1B9F0B82C(v65, v66, &v88);

          *(v60 + 14) = v67;
          *(v60 + 22) = 2080;
          LODWORD(v86) = 0;
          type metadata accessor for SymbolicTraits(0);
          v68 = sub_1BA4A6808();
          v70 = sub_1B9F0B82C(v68, v69, &v88);

          *(v60 + 24) = v70;
          v57 = v85;
          *(v60 + 32) = 2112;
          v71 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
          *(v60 + 34) = v71;
          v72 = v83;
          *v83 = v71;
          _os_log_impl(&dword_1B9F07000, v58, v82, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v60, 0x2Au);
          sub_1B9F8C6C8(v72);
          MEMORY[0x1BFAF43A0](v72, -1, -1);
          v73 = v84;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v73, -1, -1);
          MEMORY[0x1BFAF43A0](v60, -1, -1);
        }

        (*(v4 + 8))(v7, v3);
        v74 = [v23 preferredFontDescriptorWithTextStyle_];
        v27 = [objc_opt_self() fontWithDescriptor:v74 size:0.0];
      }

      v32 = &selRef_secondaryLabelColor;
    }

    else
    {
      v30 = *MEMORY[0x1E69DB980];
      v31 = v21;
      v27 = sub_1B9F6B774(v22, v30, 0, 0, 0, 0, 1);
      v32 = &selRef_labelColor;
    }

    v75 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
    *(inited + 40) = v27;
    v76 = *MEMORY[0x1E69DB650];
    *(inited + 64) = v75;
    *(inited + 72) = v76;
    v77 = objc_opt_self();
    v78 = v76;
    v56 = [v77 *v32];
  }

  v79 = v56;
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 80) = v79;
  v80 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  return v80;
}

uint64_t DetailType.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

unint64_t sub_1BA3EA564()
{
  result = qword_1EBBF2258;
  if (!qword_1EBBF2258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF2258);
  }

  return result;
}

id sub_1BA3EA5C8()
{
  sub_1BA1925B0();
  v1 = sub_1BA191D10();
  [v1 addSubview_];

  v2 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView) addSubview_];
  v3 = *(v0 + v2);
  v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel);

  return [v3 addSubview_];
}

void sub_1BA3EA658()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_1BA192798(v2);
  sub_1BA191E60(v3);
  v4 = sub_1BA1946B4();
  sub_1BA19452C(v4);
  v5 = sub_1BA191DB4();
  [v5 setHidden_];

  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___spinner) stopAnimating];
  v6 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_tileContentLabel;
  v7 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_tileContentLabel);
  v8 = sub_1BA191D10();
  v9 = *MEMORY[0x1E69DC5C0];
  v10 = *(MEMORY[0x1E69DC5C0] + 8);
  v11 = *(MEMORY[0x1E69DC5C0] + 16);
  v12 = *(MEMORY[0x1E69DC5C0] + 24);
  [v7 hk:v8 alignHorizontalConstraintsWithView:*MEMORY[0x1E69DC5C0] insets:{v10, v11, v12}];

  v13 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_alertsLabel;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView;
  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_alertsLabel) hk:*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell____lazy_storage___tileContentView) alignHorizontalConstraintsWithView:v9 insets:{v10, v11, v12}];
  v29 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel;
  [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel) hk:*(v0 + v14) alignHorizontalConstraintsWithView:v9 insets:{v10, v11, v12}];
  v28 = objc_opt_self();
  sub_1BA3EE16C(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5890;
  v16 = [*(v0 + v6) topAnchor];
  v17 = [*(v0 + v14) topAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v15 + 32) = v18;
  v19 = [*(v0 + v13) topAnchor];
  v20 = [*(v0 + v6) bottomAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v15 + 40) = v21;
  v22 = [*&v29[v0] topAnchor];
  v23 = [*(v0 + v13) bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v15 + 48) = v24;
  v25 = [*&v29[v0] bottomAnchor];
  v26 = [*(v0 + v14) bottomAnchor];
  v27 = [v25 constraintLessThanOrEqualToAnchor_];

  *(v15 + 56) = v27;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v30 = sub_1BA4A6AE8();

  [v28 activateConstraints_];
}

void sub_1BA3EAA24()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v48 = sub_1BA4A3EA8();
  v2 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v3);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3EE16C(0, &qword_1EBBF22A8, MEMORY[0x1E69E6530], MEMORY[0x1E695C060]);
  v7 = v6;
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v44 - v13;
  sub_1BA3EE024(0);
  v16 = v15;
  v46 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F48158(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v44 - v22;
  sub_1BA193198();
  v24 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v24, v50);
  if (v50[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    type metadata accessor for SummarySharingAcceptedProfileTileItem(0);
    if (swift_dynamicCast())
    {
      v25 = v49;
      v26 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_endSharingRelationshipState;
      swift_beginAccess();
      v48 = v16;
      v27 = MEMORY[0x1E69A33B0];
      sub_1BA3EDBB4(v25 + v26, v23, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
      sub_1BA3EB21C(v23, *(v25 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_disabledState) & 1, 0, 0);
      sub_1BA3EDFB4(v23, &qword_1EBBE97C8, v27);
      v28 = sub_1BA3EC47C();
      swift_beginAccess();
      sub_1BA3EE16C(0, &qword_1EBBF0E68, MEMORY[0x1E69E6530], MEMORY[0x1E695C070]);
      sub_1BA4A4EF8();
      swift_endAccess();

      v29 = *(v25 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___detailsProvider);
      swift_beginAccess();
      v30 = v29;
      sub_1BA4A4EF8();
      swift_endAccess();

      sub_1BA3EE0B8();
      sub_1BA4A4FC8();
      v31 = *(v45 + 8);
      v31(v10, v7);
      v31(v14, v7);
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = v32;
      *(v33 + 24) = v25;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_1BA3EE134;
      *(v34 + 24) = v33;
      sub_1BA3ED604(&qword_1EBBF22C0, sub_1BA3EE024, MEMORY[0x1E695BC68]);

      v35 = v48;
      v36 = sub_1BA4A5148();

      (*(v46 + 8))(v19, v35);
      *(v1 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_cancellable) = v36;

      return;
    }
  }

  else
  {
    sub_1B9F7B644(v50);
  }

  sub_1BA4A3E28();
  v37 = sub_1BA4A3E88();
  v38 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v50[0] = v40;
    *v39 = 136315138;
    v41 = sub_1BA4A85D8();
    v43 = sub_1B9F0B82C(v41, v42, v50);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1B9F07000, v37, v38, "[%s] item is not an SummarySharingAcceptedProfileTileItem", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1BFAF43A0](v40, -1, -1);
    MEMORY[0x1BFAF43A0](v39, -1, -1);
  }

  (*(v2 + 8))(v5, v48);
}

void *sub_1BA3EB0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B9F48158(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v15[-v9];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_endSharingRelationshipState;
    swift_beginAccess();
    v14 = MEMORY[0x1E69A33B0];
    sub_1BA3EDBB4(a4 + v13, v10, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
    sub_1BA3EB21C(v10, *(a4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_disabledState) & 1, a1, a2);

    return sub_1BA3EDFB4(v10, &qword_1EBBE97C8, v14);
  }

  return result;
}

void sub_1BA3EB21C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1BA4A3118();
  if ((*(*(v9 - 8) + 48))(a1, 1, v9) != 1)
  {
    v13 = qword_1EBBE8940;
    v12 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_tileContentLabel);
    if (v13 == -1)
    {
LABEL_6:
      v14 = sub_1BA4A6758();
      [v12 setText_];

      [*(v4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_alertsLabel) setAttributedText_];
      v15 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel);

      [v15 setAttributedText_];
      return;
    }

LABEL_12:
    swift_once();
    goto LABEL_6;
  }

  v10 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_tileContentLabel);
  if (!(a3 | a4))
  {
    v11 = qword_1EBBE8938;
    v12 = v10;
    if (v11 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  [v10 setText_];
  v16 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_alertsLabel);
  v23 = 0;
  v17 = v16;
  v18 = sub_1BA3EDC78(a3, &v23, a2 & 1);
  [v17 setAttributedText_];

  v19 = *(v4 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel);
  v22 = 1;
  v20 = v19;
  v21 = sub_1BA3EDC78(a4, &v22, a2 & 1);
  [v20 setAttributedText_];
}

id sub_1BA3EB474(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setNumberOfLines_];
  v16 = [objc_opt_self() secondaryLabelColor];
  [v15 setTextColor_];

  [v15 setAdjustsFontForContentSizeCategory_];
  v17 = *MEMORY[0x1E69DDD80];
  v18 = objc_opt_self();
  v19 = [v18 preferredFontDescriptorWithTextStyle:v17 compatibleWithTraitCollection:0];
  if (v19)
  {
    v20 = v19;
    v21 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
  }

  else
  {
    v55 = v11;
    sub_1BA4A3DD8();
    v22 = v17;
    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FB8();

    v54 = v24;
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v58 = v52;
      *v25 = 136315906;
      v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v28 = sub_1B9F0B82C(v26, v27, &v58);
      v53 = v22;
      v29 = v28;

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v56 = 0;
      v57 = 1;
      sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v30 = sub_1BA4A6808();
      v32 = sub_1B9F0B82C(v30, v31, &v58);

      *(v25 + 14) = v32;
      *(v25 + 22) = 2080;
      LODWORD(v56) = 0;
      type metadata accessor for SymbolicTraits(0);
      v33 = sub_1BA4A6808();
      v35 = sub_1B9F0B82C(v33, v34, &v58);
      v22 = v53;

      *(v25 + 24) = v35;
      *(v25 + 32) = 2112;
      v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v25 + 34) = v36;
      v37 = v51;
      *v51 = v36;
      _os_log_impl(&dword_1B9F07000, v23, v54, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v25, 0x2Au);
      sub_1B9F8C6C8(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      v38 = v52;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v55 + 8))(v14, v10);
    v39 = [v18 preferredFontDescriptorWithTextStyle_];
    v21 = [objc_opt_self() fontWithDescriptor:v39 size:0.0];
  }

  v40 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_tileContentLabel;
  [v15 setFont_];

  *&v5[v40] = v15;
  v41 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_alertsLabel;
  v42 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  [v42 setNumberOfLines_];
  [v42 setAdjustsFontForContentSizeCategory_];
  LODWORD(v43) = 1148846080;
  [v42 setContentHuggingPriority:1 forAxis:v43];
  LODWORD(v44) = 1148846080;
  [v42 setContentCompressionResistancePriority:1 forAxis:v44];
  *&v5[v41] = v42;
  v45 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel;
  v46 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v46 setTranslatesAutoresizingMaskIntoConstraints_];
  [v46 setNumberOfLines_];
  [v46 setAdjustsFontForContentSizeCategory_];
  LODWORD(v47) = 1148846080;
  [v46 setContentHuggingPriority:1 forAxis:v47];
  LODWORD(v48) = 1148846080;
  [v46 setContentCompressionResistancePriority:1 forAxis:v48];
  *&v5[v45] = v46;
  *&v5[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_cancellable] = 0;
  v49 = type metadata accessor for SummarySharingAcceptedProfileTileCell();
  v59.receiver = v5;
  v59.super_class = v49;
  return objc_msgSendSuper2(&v59, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_1BA3EBA5C(void *a1)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setNumberOfLines_];
  v9 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor_];

  [v8 setAdjustsFontForContentSizeCategory_];
  v10 = *MEMORY[0x1E69DDD80];
  v11 = objc_opt_self();
  v12 = [v11 preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:0];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v15 = v10;
    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53 = v48;
      *v18 = 136315906;
      v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v49 = v15;
      v21 = sub_1B9F0B82C(v19, v20, &v53);
      HIDWORD(v46) = v17;
      v22 = v21;

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v51 = 0;
      v52 = 1;
      sub_1B9F48158(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v53);

      *(v18 + 14) = v25;
      *(v18 + 22) = 2080;
      LODWORD(v51) = 0;
      type metadata accessor for SymbolicTraits(0);
      v26 = sub_1BA4A6808();
      v28 = sub_1B9F0B82C(v26, v27, &v53);
      v15 = v49;

      *(v18 + 24) = v28;
      *(v18 + 32) = 2112;
      v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v18 + 34) = v29;
      v30 = v47;
      *v47 = v29;
      _os_log_impl(&dword_1B9F07000, v16, BYTE4(v46), "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v18, 0x2Au);
      sub_1B9F8C6C8(v30);
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      v31 = v48;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    v32 = [v11 preferredFontDescriptorWithTextStyle_];
    v14 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
  }

  v33 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_tileContentLabel;
  [v8 setFont_];

  *&v2[v33] = v8;
  v34 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_alertsLabel;
  v35 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v35 setTranslatesAutoresizingMaskIntoConstraints_];
  [v35 setNumberOfLines_];
  [v35 setAdjustsFontForContentSizeCategory_];
  LODWORD(v36) = 1148846080;
  [v35 setContentHuggingPriority:1 forAxis:v36];
  LODWORD(v37) = 1148846080;
  [v35 setContentCompressionResistancePriority:1 forAxis:v37];
  *&v2[v34] = v35;
  v38 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_changesLabel;
  v39 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  [v39 setNumberOfLines_];
  [v39 setAdjustsFontForContentSizeCategory_];
  LODWORD(v40) = 1148846080;
  [v39 setContentHuggingPriority:1 forAxis:v40];
  LODWORD(v41) = 1148846080;
  [v39 setContentCompressionResistancePriority:1 forAxis:v41];
  *&v2[v38] = v39;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileCell_cancellable] = 0;
  v42 = type metadata accessor for SummarySharingAcceptedProfileTileCell();
  v54.receiver = v2;
  v54.super_class = v42;
  v43 = v50;
  v44 = objc_msgSendSuper2(&v54, sel_initWithCoder_, v50);

  if (v44)
  {
  }

  return v44;
}

double sub_1BA3EC038()
{

  return result;
}

id sub_1BA3EC098(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SummarySharingAcceptedProfileTileCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1BA3EC184()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray5Color];
  v2 = [v0 tertiarySystemGroupedBackgroundColor];
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v8[4] = sub_1B9FD7F54;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F7EBBC;
  v8[3] = &block_descriptor_111;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

char *sub_1BA3EC2B0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___gradientsProvider;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___gradientsProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___gradientsProvider);
  }

  else
  {
    type metadata accessor for ProfileGradientsProviderFactory();
    swift_initStaticObject();
    v4 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v5 = v4;
    if (v0[14])
    {
      [v4 setProfileIdentifier_];
    }

    [v5 resume];
    v6 = v0[7];
    v7 = __swift_project_boxed_opaque_existential_1(v0 + 4, v6);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7, v7);
    v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = v0;
    v13 = sub_1BA4A1B68();
    (*(v8 + 8))(v11, v6);
    v14 = sub_1B9FE10EC(v5, v13, MEMORY[0x1E69E7CC0]);

    v15 = *(v0 + v1);
    *(v12 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

char *sub_1BA3EC47C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___detailsProvider;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___detailsProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___detailsProvider);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + 56);
    v6 = __swift_project_boxed_opaque_existential_1((v0 + 32), v5);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6, v6);
    v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1BA4A1B68();
    (*(v7 + 8))(v10, v5);
    v12 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
    v13 = v12;
    if (*(v4 + 112))
    {
      [v12 setProfileIdentifier_];
    }

    [v13 resume];
    v14 = sub_1BA4A6F38();

    v15 = objc_allocWithZone(type metadata accessor for SummarySharingProfileTileEscalatedDetailsProvider(0));
    v16 = sub_1BA343120(v11, v14, 0, 0);

    v17 = *(v4 + v1);
    *(v4 + v1) = v16;
    v3 = v16;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

char *sub_1BA3EC638(uint64_t a1, void *a2, void *a3, void *a4, unsigned __int8 *a5)
{
  v6 = v5;
  v93 = a4;
  v95 = a3;
  v96 = a2;
  v9 = *v6;
  v97 = sub_1BA4A33C8();
  v94 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v10);
  v81 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1BA4A3EA8();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v12);
  v91 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2474C0(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = MEMORY[0x1E69A33B0];
  v18 = MEMORY[0x1E69E6720];
  sub_1B9F48158(0, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v84 = MEMORY[0x1E6969530];
  v85 = &v80 - v21;
  sub_1B9F48158(0, &qword_1EDC6E440, MEMORY[0x1E6969530], v18);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v80 - v24;
  v26 = sub_1BA4A1798();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = *a5;
  *(v6 + 14) = 0;
  v31 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_lastUpdatedDate;
  v32 = sub_1BA4A1728();
  (*(*(v32 - 8) + 56))(&v6[v31], 1, 1, v32);
  v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_disabledState] = 2;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___gradientsProvider] = 0;
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem____lazy_storage___detailsProvider] = 0;
  v33 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_endSharingRelationshipState;
  v34 = sub_1BA4A3118();
  (*(*(v34 - 8) + 56))(&v6[v33], 1, 1, v34);
  v80 = v9;
  *&v99 = sub_1BA4A85D8();
  *(&v99 + 1) = v35;
  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  sub_1BA4A3358();
  v36 = sub_1BA4A1748();
  v38 = v37;
  v88 = v30;
  v89 = v27;
  v39 = *(v27 + 8);
  v90 = v26;
  v39(v30, v26);
  MEMORY[0x1BFAF1350](v36, v38);

  v40 = *(&v99 + 1);
  *(v6 + 2) = v99;
  *(v6 + 3) = v40;
  sub_1B9F0A534(v96, (v6 + 32));
  sub_1B9F0A534(v95, (v6 + 72));
  v41 = *(v94 + 16);
  v41(&v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_sharingEntryProfileInformation], a1, v97);
  sub_1BA4A32A8();
  v42 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_lastUpdatedDate;
  swift_beginAccess();
  sub_1BA3EE1BC(v25, &v6[v42], &qword_1EDC6E440, v84);
  swift_endAccess();
  v43 = v85;
  sub_1BA4A3278();
  v44 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_endSharingRelationshipState;
  swift_beginAccess();
  sub_1BA3EE1BC(v43, &v6[v44], &qword_1EBBE97C8, v86);
  swift_endAccess();
  sub_1BA4A32E8();
  sub_1BA246E78(0, &qword_1EBBEADE8, &qword_1EDC5E3D8, 0x1E696C338, MEMORY[0x1E696B370]);
  v46 = v45;
  v47 = *(v45 - 8);
  v48 = (*(v47 + 48))(v17, 1, v45);
  v87 = v41;
  if (v48 == 1)
  {
    sub_1BA3EE23C(v17);
    sub_1BA4A3DD8();
    v49 = v81;
    v50 = v97;
    v41(v81, a1, v97);
    v51 = sub_1BA4A3E88();
    v52 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v98 = v54;
      *v53 = 136315394;
      *&v99 = v80;
      swift_getMetatypeMetadata();
      v55 = sub_1BA4A6808();
      v57 = sub_1B9F0B82C(v55, v56, &v98);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      sub_1BA3ED604(&qword_1EBBE9818, MEMORY[0x1E69A3430], MEMORY[0x1E69A3448]);
      v58 = sub_1BA4A82D8();
      v60 = v59;
      v61 = v49;
      v62 = v94;
      (*(v94 + 8))(v61, v97);
      v63 = sub_1B9F0B82C(v58, v60, &v98);

      *(v53 + 14) = v63;
      _os_log_impl(&dword_1B9F07000, v51, v52, "[%s]: Attempting to display an accepted sharing entry without a profile identifier: %s", v53, 0x16u);
      swift_arrayDestroy();
      v64 = v54;
      v50 = v97;
      MEMORY[0x1BFAF43A0](v64, -1, -1);
      v65 = v53;
      v66 = v62;
      MEMORY[0x1BFAF43A0](v65, -1, -1);
    }

    else
    {

      v66 = v94;
      (*(v94 + 8))(v49, v50);
    }

    (*(v82 + 8))(v91, v83);
    v67 = 0;
  }

  else
  {
    v67 = sub_1BA4A65C8();
    (*(v47 + 8))(v17, v46);
    v50 = v97;
    v66 = v94;
  }

  v68 = *(v6 + 14);
  *(v6 + 14) = v67;
  v69 = v67;

  v70 = v88;
  sub_1BA4A3358();
  v71 = (*(v89 + 32))(&v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_uuid], v70, v90);
  v72 = MEMORY[0x1BFAEDD10](v71);
  v73 = &v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_accountIdentifier];
  v74 = MEMORY[0x1E69A3410];
  *v73 = v72;
  v73[1] = v75;
  v100 = v50;
  v101 = v74;
  v102 = MEMORY[0x1E69A3418];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v99);
  v87(boxed_opaque_existential_1, a1, v50);
  sub_1B9F0ADF8(0, &qword_1EDC5E540, 0x1E695CE18);
  sub_1BA4A6FF8();
  v77 = v93;
  v78 = sub_1BA4A7018();

  __swift_destroy_boxed_opaque_existential_1(&v99);
  sub_1BA4A3348();
  sub_1BA4A79E8();
  v100 = sub_1BA4A2FF8();
  v101 = MEMORY[0x1E69A3390];
  __swift_allocate_boxed_opaque_existential_1(&v99);
  sub_1BA4A2FE8();

  __swift_destroy_boxed_opaque_existential_1(v95);
  __swift_destroy_boxed_opaque_existential_1(v96);
  (*(v66 + 8))(a1, v50);
  sub_1B9F1134C(&v99, (v6 + 120));
  v6[OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_disabledState] = v92;
  return v6;
}

uint64_t sub_1BA3ECFF0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  sub_1BA3EDFB4(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_lastUpdatedDate, &qword_1EDC6E440, MEMORY[0x1E6969530]);

  v1 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_sharingEntryProfileInformation;
  v2 = sub_1BA4A33C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_uuid;
  v4 = sub_1BA4A1798();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1BA3EDFB4(v0 + OBJC_IVAR____TtC18HealthExperienceUI37SummarySharingAcceptedProfileTileItem_endSharingRelationshipState, &qword_1EBBE97C8, MEMORY[0x1E69A33B0]);
  return v0;
}

uint64_t sub_1BA3ED144()
{
  sub_1BA3ECFF0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SummarySharingAcceptedProfileTileItem(uint64_t a1)
{
  result = qword_1EBBF2290;
  if (!qword_1EBBF2290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA3ED1F0(uint64_t a1)
{
  sub_1B9F48158(319, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BA4A33C8();
    if (v2 <= 0x3F)
    {
      sub_1BA4A1798();
      if (v3 <= 0x3F)
      {
        sub_1B9F48158(319, &qword_1EBBE97C8, MEMORY[0x1E69A33B0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1BA3ED440@<X0>(uint64_t *a1@<X2>, unint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *a1;
  swift_beginAccess();
  return sub_1BA3EDBB4(v8 + v9, a4, a2, a3);
}

uint64_t sub_1BA3ED4B0()
{
  type metadata accessor for SummarySharingAcceptedProfileTileCell();
  sub_1BA3EDC34();
  return sub_1BA4A6808();
}

uint64_t sub_1BA3ED500(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1BA3ED5AC(uint64_t a1)
{
  result = sub_1BA3ED604(&qword_1EBBED548, type metadata accessor for SummarySharingAcceptedProfileTileItem, &unk_1BA4D9568);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BA3ED604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA3ED64C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A1728();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileSharingWithYouTileCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v14, v48);
  if (!v48[3])
  {
    return sub_1B9F7B644(v48);
  }

  v46 = v10;
  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  type metadata accessor for SummarySharingAcceptedProfileTileItem(0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v44 = a1;
  v16 = v47[0];
  v17 = *(v47[0] + 112);
  if (!v17)
  {
    goto LABEL_12;
  }

  v42 = ObjectType;
  v43 = v5;
  v18 = objc_allocWithZone(MEMORY[0x1E696C1C0]);
  v45 = v17;
  v19 = [v18 init];
  v20 = v19;
  if (*(v16 + 112))
  {
    [v19 setProfileIdentifier_];
  }

  sub_1B9F0ADF8(0, &qword_1EDC6E350, 0x1E69E58C0);
  [v20 resume];
  v21 = [v20 profileIdentifier];

  v22 = v45;
  v23 = sub_1BA4A7798();

  if ((v23 & 1) == 0)
  {

    ObjectType = v42;
    v5 = v43;
LABEL_12:
    sub_1BA4A3DD8();

    v31 = sub_1BA4A3E88();
    v32 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47[0] = v46;
      *v33 = 136315394;
      v48[0] = ObjectType;
      swift_getMetatypeMetadata();
      v34 = sub_1BA4A6808();
      v36 = v5;
      v37 = sub_1B9F0B82C(v34, v35, v47);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v48[0] = v16;

      v38 = sub_1BA4A6808();
      v40 = sub_1B9F0B82C(v38, v39, v47);

      *(v33 + 14) = v40;
      _os_log_impl(&dword_1B9F07000, v31, v32, "[%s]: Attempting to tap into an accepted sharing entry without a profile identifier: %s", v33, 0x16u);
      v41 = v46;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      MEMORY[0x1BFAF43A0](v33, -1, -1);

      return (*(v36 + 8))(v8, v4);
    }

    else
    {

      return (*(v5 + 8))(v8, v4);
    }
  }

  sub_1BA4A1718();
  sub_1B9F0ADF8(0, &qword_1EDC6B610, 0x1E695E000);
  v24 = sub_1BA4A70E8();
  sub_1BA4A1628();
  v25 = sub_1BA4A1A08();
  [v24 setValue:v25 forKey:*MEMORY[0x1E696C8A0]];

  v26 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v27 = v26;
  if (*(v16 + 112))
  {
    [v26 setProfileIdentifier_];
  }

  [v27 resume];
  sub_1B9F0A534(v16 + 32, v48);
  v28 = sub_1BA3EC2B0();
  sub_1B9F0A534(v16 + 72, v47);
  v29 = objc_allocWithZone(type metadata accessor for SharedProfileOverviewViewController());
  v30 = sub_1BA1E87F4(v27, v48, v28, v47);

  [v44 showViewController:v30 sender:v44];

  return (*(v46 + 8))(v13, v9);
}

uint64_t sub_1BA3EDBB4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F48158(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1BA3EDC34()
{
  result = qword_1EDC60D00;
  if (!qword_1EDC60D00)
  {
    type metadata accessor for SummarySharingAcceptedProfileTileCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC60D00);
  }

  return result;
}

id sub_1BA3EDC78(uint64_t a1, char *a2, char a3)
{
  if (a1 >= 1)
  {
    v5 = *a2;
    v6 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
    v7 = sub_1BA3E8E8C(a3 & 1);
    [v6 setImage_];

    [v6 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    sub_1B9F0ADF8(0, &qword_1EDC6B520, 0x1E696AD40);
    v8 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    if (v5)
    {
      if (qword_1EBBE8930 == -1)
      {
        goto LABEL_7;
      }
    }

    else if (qword_1EBBE8928 == -1)
    {
LABEL_7:

      sub_1B9F0CF6C(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      v10 = MEMORY[0x1E69E6530];
      *(v9 + 16) = xmmword_1BA4B5480;
      v11 = MEMORY[0x1E69E65A8];
      *(v9 + 56) = v10;
      *(v9 + 64) = v11;
      *(v9 + 32) = a1;
      sub_1BA4A6768();

      sub_1BA3E9BB8(a3 & 1);
      v12 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v13 = sub_1BA4A6758();

      type metadata accessor for Key(0);
      sub_1BA3ED604(&qword_1EDC5E3D0, type metadata accessor for Key, &unk_1BA4B4408);
      v14 = sub_1BA4A6618();

      v15 = [v12 initWithString:v13 attributes:v14];

      v16 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v17 = sub_1BA4A6758();
      v18 = [v16 initWithString_];

      [v8 appendAttributedString_];
      [v8 appendAttributedString_];

      return v8;
    }

    swift_once();
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1BA3EDFB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F48158(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA3EE024(uint64_t a1)
{
  if (!qword_1EBBF22B0)
  {
    sub_1BA3EE16C(255, &qword_1EBBF22A8, MEMORY[0x1E69E6530], MEMORY[0x1E695C060]);
    sub_1BA3EE0B8();
    v1 = sub_1BA4A4A98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBF22B0);
    }
  }
}

unint64_t sub_1BA3EE0B8()
{
  result = qword_1EBBF22B8;
  if (!qword_1EBBF22B8)
  {
    sub_1BA3EE16C(255, &qword_1EBBF22A8, MEMORY[0x1E69E6530], MEMORY[0x1E695C060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF22B8);
  }

  return result;
}

void sub_1BA3EE16C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA3EE1BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F48158(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA3EE23C(uint64_t a1)
{
  sub_1BA2474C0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1BA3EE298(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A2A88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, (v1 + 2));
  type metadata accessor for HeaderDescriptionDataSource(0);
  swift_allocObject();
  v1[7] = HeaderDescriptionDataSource.init()();
  v1[8] = &protocol witness table for MutableArrayDataSource;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1BA4A1B68();
  v10 = *(v5 + 104);
  v10(v8, *MEMORY[0x1E69A31D0], v4);
  v11 = type metadata accessor for HealthChecklistFeatureStatusDataSource(0);
  v12 = objc_allocWithZone(v11);
  v13 = v9;
  v2[9] = sub_1BA3F0BE4(v13, v8);
  v2[10] = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v10(v8, *MEMORY[0x1E69A31D8], v4);
  v14 = objc_allocWithZone(v11);
  v15 = v13;
  v2[11] = sub_1BA3F0BE4(v15, v8);
  v2[12] = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v10(v8, *MEMORY[0x1E69A31C0], v4);
  v16 = objc_allocWithZone(v11);
  v17 = v15;
  v2[13] = sub_1BA3F0BE4(v17, v8);
  v2[14] = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v10(v8, *MEMORY[0x1E69A31B8], v4);
  v18 = objc_allocWithZone(v11);
  v2[15] = sub_1BA3F0BE4(v17, v8);
  v2[16] = &protocol witness table for FetchedResultsControllerDataSource<A>;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1BA3EE4DC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

_OWORD *sub_1BA3EE584()
{
  sub_1B9F1DEA0(0);
  v1 = swift_allocObject();
  v2 = *(v0 + 56);
  v1[1] = xmmword_1BA4B9A90;
  v1[2] = v2;
  v4 = *(v0 + 88);
  v1[3] = *(v0 + 120);
  v1[4] = v4;
  v5 = *(v0 + 104);
  v1[5] = *(v0 + 72);
  v1[6] = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return v1;
}

uint64_t ConfirmDetailsSection.Row.MedicationDetail.rawValue.getter()
{
  if (*v0)
  {
    return 0x636F6C4261746562;
  }

  else
  {
    return 0xD000000000000016;
  }
}

HealthExperienceUI::ConfirmDetailsSection::Row::CorrelatedItem __swiftcall ConfirmDetailsSection.Row.CorrelatedItem.init(valueKey:isInverted:)(HealthExperienceUI::ConfirmDetailsSection::Row::CorrelatedItem valueKey, Swift::Bool isInverted)
{
  *v2 = valueKey.valueKey;
  *(v2 + 16) = isInverted;
  valueKey.isInverted = isInverted;
  return valueKey;
}

void __swiftcall ConfirmDetailsSection.Row.MultiselectDetail.init(title:subtitle:valueKey:correlatedItems:initialValue:canDeselect:accessibilityIdentifierPrefix:)(HealthExperienceUI::ConfirmDetailsSection::Row::MultiselectDetail *__return_ptr retstr, Swift::String title, Swift::String_optional subtitle, Swift::String valueKey, Swift::OpaquePointer correlatedItems, Swift::Bool_optional initialValue, Swift::Bool canDeselect, Swift::String_optional accessibilityIdentifierPrefix)
{
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->valueKey = valueKey;
  retstr->correlatedItems = correlatedItems;
  retstr->initialValue = initialValue;
  retstr->canDeselect = canDeselect;
  retstr->accessibilityIdentifierPrefix = accessibilityIdentifierPrefix;
}

HealthExperienceUI::ConfirmDetailsSection::Row::HealthDetail_optional __swiftcall ConfirmDetailsSection.Row.HealthDetail.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

HealthExperienceUI::ConfirmDetailsSection::Row::MedicationDetail_optional __swiftcall ConfirmDetailsSection.Row.MedicationDetail.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BA3EE744(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x636F6C4261746562;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = 0x80000001BA4E14F0;
  }

  else
  {
    v4 = 0xEC0000007372656BLL;
  }

  if (*a2)
  {
    v5 = 0x636F6C4261746562;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (*a2)
  {
    v6 = 0xEC0000007372656BLL;
  }

  else
  {
    v6 = 0x80000001BA4E14F0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BA4A8338();
  }

  return v8 & 1;
}

void sub_1BA3EE7F8(char *a2@<X8>)
{
  v3 = sub_1BA4A8108();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1BA3EE858(unint64_t *a1@<X8>)
{
  v2 = 0x80000001BA4E14F0;
  v3 = 0xD000000000000016;
  if (*v1)
  {
    v3 = 0x636F6C4261746562;
    v2 = 0xEC0000007372656BLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1BA3EE8A4()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA3EE934(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA3EE9B0(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t static ConfirmDetailsSection.Row.CorrelatedItem.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1BA4A8338();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t ConfirmDetailsSection.Row.CorrelatedItem.hashValue.getter()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A84A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3EEB38()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A84A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3EEBD4(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();
  sub_1BA4A84A8();
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3EEC34(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1BA4A8338();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t ConfirmDetailsSection.Row.MultiselectDetail.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConfirmDetailsSection.Row.MultiselectDetail.subtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ConfirmDetailsSection.Row.MultiselectDetail.valueKey.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ConfirmDetailsSection.Row.MultiselectDetail.accessibilityIdentifierPrefix.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ConfirmDetailsSection.Row.MultiselectDetail.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  sub_1BA4A68C8();
  sub_1BA4A84A8();
  if (v3)
  {
    sub_1BA4A68C8();
  }

  sub_1BA4A68C8();
  sub_1BA34E4B4(a1, v4);
  if (v5 != 2)
  {
    sub_1BA4A84A8();
  }

  sub_1BA4A84A8();
  sub_1BA4A84A8();
  if (!v6)
  {
    return sub_1BA4A84A8();
  }

  sub_1BA4A84A8();

  return sub_1BA4A68C8();
}

void ConfirmDetailsSection.Row.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 7) >> 62;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 2;
      goto LABEL_6;
    }

    MEMORY[0x1BFAF2ED0](3);
    ConfirmDetailsSection.Row.MultiselectDetail.hash(into:)(a1);
  }

  else
  {
    if (!v4)
    {
      v5 = 0;
LABEL_6:
      MEMORY[0x1BFAF2ED0](v5);
      MEMORY[0x1BFAF2ED0](v3);
      return;
    }

    MEMORY[0x1BFAF2ED0](1);
    sub_1BA4A68C8();
  }
}

uint64_t sub_1BA3EF0A4(uint64_t (*a1)(void *))
{
  sub_1BA4A8488();
  a1(v3);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3EF104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1BA4A8488();
  a3(v5);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA3EF168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1BA4A8488();
  a4(v6);
  return sub_1BA4A84D8();
}

uint64_t _s18HealthExperienceUI21ConfirmDetailsSectionV3RowO17MultiselectDetailV2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v18 = *(a1 + 57);
  v15 = a1[9];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v19 = *(a2 + 56);
  v20 = *(a1 + 56);
  v17 = *(a2 + 57);
  v13 = a1[8];
  v14 = *(a2 + 64);
  v16 = *(a2 + 72);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1BA4A8338() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8 || (v2 != v7 || v3 != v8) && (sub_1BA4A8338() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if ((v4 != v9 || v6 != v10) && (sub_1BA4A8338() & 1) == 0 || (sub_1B9FF1188(v5, v11) & 1) == 0)
  {
    return 0;
  }

  if (v20 == 2)
  {
    result = 0;
    if (v19 != 2)
    {
      return result;
    }

LABEL_20:
    if ((v18 ^ v17))
    {
      return result;
    }

    if (v15)
    {
      if (v16 && (v13 == v14 && v15 == v16 || (sub_1BA4A8338() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v16)
    {
      return 1;
    }

    return 0;
  }

  result = 0;
  if (v19 != 2 && ((v19 ^ v20) & 1) == 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s18HealthExperienceUI21ConfirmDetailsSectionV3RowO2eeoiySbAE_AEtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  *&v29[32] = a1[2];
  *&v29[48] = v3;
  v4 = a1[3];
  v30 = a1[4];
  v5 = a1[1];
  *v29 = *a1;
  *&v29[16] = v5;
  v6 = a2[1];
  v7 = a2[3];
  v33 = a2[2];
  v34 = v7;
  v8 = a2[3];
  v35 = a2[4];
  v9 = a2[1];
  v31 = *a2;
  v32 = v9;
  v36[2] = *&v29[32];
  v36[3] = v4;
  v36[0] = *v29;
  v36[1] = v2;
  v36[6] = v6;
  v36[7] = v33;
  v10 = a2[4];
  v36[8] = v8;
  v36[9] = v10;
  v36[4] = a1[4];
  v36[5] = v31;
  v11 = *&v29[56] >> 62;
  if ((*&v29[56] >> 62) > 1)
  {
    if (v11 == 2)
    {
      if (*(&v34 + 1) >> 62 == 2)
      {
LABEL_7:
        sub_1BA3EF99C(v36);
        v13 = v29[0] == v31;
        return v13 & 1;
      }
    }

    else
    {
      if (*(&v34 + 1) >> 62 == 3)
      {
        v27[0] = v29[0];
        *&v27[1] = *&v29[1];
        v27[7] = (*&v29[1] | ((*&v29[5] | (v29[7] << 16)) << 32)) >> 48;
        *&v27[5] = *&v29[5];
        *&v27[8] = *&v29[8];
        *&v27[24] = *&v29[24];
        *&v27[40] = *&v29[40];
        *&v27[56] = *&v29[56] & 0x3FFFFFFFFFFFFFFFLL;
        v28 = v30;
        v23[0] = v31;
        v23[1] = v32;
        v23[2] = v33;
        v24 = v34;
        v25 = *(&v34 + 1) & 0x3FFFFFFFFFFFFFFFLL;
        v26 = v35;
        v13 = _s18HealthExperienceUI21ConfirmDetailsSectionV3RowO17MultiselectDetailV2eeoiySbAG_AGtFZ_0(v27, v23);
        sub_1B9FF3650(&v31, v22);
        sub_1B9FF3650(v29, v22);
        sub_1BA3EF99C(v36);
        return v13 & 1;
      }

      v18 = a1[3];
      *&v27[32] = a1[2];
      *&v27[48] = v18;
      v28 = a1[4];
      v19 = a1[1];
      *v27 = *a1;
      *&v27[16] = v19;
      *&v27[56] &= 0x3FFFFFFFFFFFFFFFuLL;
      sub_1BA0AEED4(v27, v23);
    }

LABEL_27:
    sub_1B9FF3650(&v31, v27);
    sub_1BA3EF99C(v36);
    v13 = 0;
    return v13 & 1;
  }

  v12 = *(&v34 + 1) >> 62;
  if (!v11)
  {
    if (v12)
    {
      goto LABEL_27;
    }

    goto LABEL_7;
  }

  if (v12 != 1)
  {
    goto LABEL_27;
  }

  if (v29[0])
  {
    v14 = 0x636F6C4261746562;
  }

  else
  {
    v14 = 0xD000000000000016;
  }

  if (v29[0])
  {
    v15 = 0xEC0000007372656BLL;
  }

  else
  {
    v15 = 0x80000001BA4E14F0;
  }

  if (v31)
  {
    v16 = 0x636F6C4261746562;
  }

  else
  {
    v16 = 0xD000000000000016;
  }

  if (v31)
  {
    v17 = 0xEC0000007372656BLL;
  }

  else
  {
    v17 = 0x80000001BA4E14F0;
  }

  if (v14 != v16 || v15 != v17)
  {
    v21 = sub_1BA4A8338();

    sub_1BA3EF99C(v36);
    return v21 & 1;
  }

  sub_1BA3EF99C(v36);
  v13 = 1;
  return v13 & 1;
}

unint64_t sub_1BA3EF618()
{
  result = qword_1EBBF22C8;
  if (!qword_1EBBF22C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF22C8);
  }

  return result;
}

unint64_t sub_1BA3EF670()
{
  result = qword_1EBBF22D0;
  if (!qword_1EBBF22D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF22D0);
  }

  return result;
}

unint64_t sub_1BA3EF6C8()
{
  result = qword_1EBBF22D8;
  if (!qword_1EBBF22D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF22D8);
  }

  return result;
}

unint64_t sub_1BA3EF720()
{
  result = qword_1EBBF22E0;
  if (!qword_1EBBF22E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF22E0);
  }

  return result;
}

unint64_t sub_1BA3EF778()
{
  result = qword_1EBBF22E8;
  if (!qword_1EBBF22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF22E8);
  }

  return result;
}

uint64_t sub_1BA3EF7E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56) >> 9;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1BA3EF838(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = -a2 << 9;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      return result;
    }

    *(a1 + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA3EF8F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1BA3EF93C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA3EF99C(uint64_t a1)
{
  sub_1B9FF370C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = a1;
  sub_1B9F0CC30(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v52 - v10;
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *a4;
  v15 = a4[1];
  v52 = v4;
  v16 = (v4 + qword_1EDC84A88);
  v54 = v15;
  v55 = v14;
  *v16 = v14;
  v16[1] = v15;
  sub_1BA4A27B8();
  sub_1B9F0CC30(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v17 = sub_1BA4A1C68();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B5480;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69A3BD0], v17);
  if (v13)
  {
    v21 = sub_1BA4A0FA8();
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    v22 = sub_1BA048494(v55, v54);
    v23 = MEMORY[0x1BFAED020](v20, 0, v11, a2, v22);

    sub_1B9F1C1B0(v11);
    sub_1B9F109F8();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1BA4B7510;
    *(v24 + 32) = v23;
    *(v24 + 40) = v12;
    sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    v25 = v12;
    v26 = v23;
    v27 = sub_1BA4A6AE8();

    v28 = [objc_opt_self() andPredicateWithSubpredicates_];
  }

  else
  {
    sub_1B9F109F8();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BA4B5470;
    *(v29 + 32) = v12;
    v30 = sub_1BA4A0FA8();
    (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    sub_1BA048494(v55, v54);
    v31 = v12;
    v28 = MEMORY[0x1BFAED020](v20, v29, v11, a2);

    sub_1B9F1C1B0(v11);
  }

  sub_1BA4A27B8();
  v32 = v28;
  v33 = MEMORY[0x1BFAED110]();
  [v33 setPredicate_];

  v34 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v35 = sub_1BA4A6758();
  v36 = [v34 initWithKey:v35 ascending:0];

  v37 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v38 = sub_1BA4A6758();
  v39 = [v37 initWithKey:v38 ascending:0];

  sub_1B9F109F8();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1BA4B7510;
  *(v40 + 32) = v36;
  *(v40 + 40) = v39;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v41 = v36;
  v42 = v39;
  v43 = sub_1BA4A6AE8();

  [v33 setSortDescriptors_];

  v44 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v45 = v53;
  v46 = [v44 initWithFetchRequest:v33 managedObjectContext:v53 sectionNameKeyPath:0 cacheName:0];
  v47 = swift_allocObject();
  v48 = v54;
  *(v47 + 16) = v55;
  *(v47 + 24) = v48;
  v49 = (v52 + qword_1EDC61AF0);
  *v49 = sub_1BA3F04CC;
  v49[1] = v47;

  v50 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v46);

  return v50;
}

double sub_1BA3F0024@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + qword_1EDC84A88);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_1BA048494(v4, v5);
}

double sub_1BA3F0078(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + qword_1EDC84A88);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  return sub_1BA220238(v5, v6);
}

double static ArticlesFetchedResultsControllerDataSource.Header.customTitle(with:)@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = [objc_opt_self() categoryWithID_];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 embeddedDisplayName];
    v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v5 = v9;
  }

  else
  {
  }

  sub_1BA3F0744(v3, v4, v5, a2);

  return result;
}

double static ArticlesFetchedResultsControllerDataSource.Header.customTitle(displayCategory:)@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 categoryID];
  v5 = [a1 embeddedDisplayName];
  v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v8 = v7;

  sub_1BA3F0744(v4, v6, v8, a2);

  return result;
}

double sub_1BA3F02EC@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + qword_1EDC84A88);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1BA048494(v4, v5);
}

double sub_1BA3F0344(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + qword_1EDC84A88);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1BA048494(v2, v3);
  return sub_1BA220238(v5, v6);
}

__int128 *sub_1BA3F03C0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v11 = *a1;
  v5 = *(a1 + 2);
  static GridLayoutEngine.articles.getter(&v19);
  v17 = v11;
  v18 = v5;
  v6 = &v19;
  v7 = GridLayoutEngine.layout(for:)(&v17);
  if (v3)
  {
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v12 = v19;
    v13 = v20;
    sub_1B9F5A690(&v12);
  }

  else
  {
    v6 = v7;
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v12 = v19;
    v13 = v20;
    sub_1B9F5A690(&v12);
    if (a3)
    {
      v8 = [objc_opt_self() estimatedDimension_];
      v9 = sub_1B9F5CA58(v8, 2);

      return v9;
    }
  }

  return v6;
}

id ArticlesFetchedResultsControllerDataSource.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ArticlesFetchedResultsControllerDataSource(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t ArticlesFetchedResultsControllerDataSource.supplementaryItem(ofKind:at:)@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v1 + qword_1EDC84A88);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = *v7;
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v11 = sub_1BA4A1318();
      v13 = v12;
      v8 = v10;
      v9 = 1;
    }

    else
    {
      v11 = *v7;
      v13 = v7[1];
    }
  }

  else
  {
    v13 = 0xE000000000000000;
    v11 = 0;
  }

  sub_1BA048494(v8, v9);
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v14 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v11, v13, 0, 0, 0, 0, v6, 0, 0);
  v16 = v15;
  a1[3] = v14;
  result = sub_1BA011754();
  a1[4] = result;
  *a1 = v16;
  return result;
}

void sub_1BA3F0744(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 == 14)
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    v5 = sub_1BA4A1318();
    v7 = v6;
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1B9F0CC30(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1BA4B5480;
    *(v10 + 56) = MEMORY[0x1E69E6158];
    *(v10 + 64) = sub_1B9F1BE20();
    *(v10 + 32) = a2;
    *(v10 + 40) = a3;

    v5 = sub_1BA4A6768();
    v7 = v11;
  }

  *a4 = v5;
  a4[1] = v7;
}

uint64_t type metadata accessor for ArticlesFetchedResultsControllerDataSource(uint64_t a1)
{
  result = qword_1EDC603C8;
  if (!qword_1EDC603C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA3F0AD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA3F0B28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1BA3F0B84(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

char *sub_1BA3F0BE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = qword_1EBC099D0;
  v6 = sub_1BA4A2A88();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3 + v5, a2, v6);
  v8 = sub_1BA4A2C78();
  v10 = v9;
  sub_1BA4A27B8();
  sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = v8;
  v12 = inited + 32;
  *(inited + 40) = v10;
  sub_1B9FF6B78(inited);
  swift_setDeallocating();
  sub_1BA000898(v12);
  v13 = sub_1BA4A2678();

  sub_1BA4A2008();
  v14 = sub_1BA4A2658();

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B7510;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v16 = v13;
  v17 = v14;
  v18 = sub_1BA4A6AE8();

  v19 = [objc_opt_self() andPredicateWithSubpredicates_];

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BA4B5470;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = sub_1BA4A6758();
  v23 = [v21 initWithKey:v22 ascending:0];

  *(v20 + 32) = v23;
  v24 = v19;
  v25 = sub_1BA4A7558();

  v26 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v25);

  (*(v7 + 8))(a2, v6);
  return v26;
}

uint64_t sub_1BA3F0F08()
{
  v1 = qword_1EBC099D0;
  v2 = sub_1BA4A2A88();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id HealthChecklistFeatureStatusDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthChecklistFeatureStatusDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for HealthChecklistFeatureStatusDataSource(uint64_t a1)
{
  result = qword_1EBBF22F0;
  if (!qword_1EBBF22F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA3F0FF4(uint64_t a1)
{
  v2 = qword_1EBC099D0;
  v3 = sub_1BA4A2A88();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

unint64_t HealthChecklistFeatureStatusDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v56 = a2;
  v57 = a3;
  v53 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A3EA8();
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BA4A2A88();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v47 - v21;
  v23 = qword_1EBC099D0;
  v24 = *(v14 + 16);
  v24(&v47 - v21, &v4[qword_1EBC099D0], v13, v20);
  v25 = (*(v14 + 88))(v22, v13);
  if (v25 == *MEMORY[0x1E69A31D0])
  {
    if (qword_1EDC5E100 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v25 == *MEMORY[0x1E69A31D8])
  {
    if (qword_1EDC5E100 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v25 == *MEMORY[0x1E69A31C8] || v25 == *MEMORY[0x1E69A31C0])
  {
    if (qword_1EDC5E100 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  if (v25 == *MEMORY[0x1E69A31B8])
  {
    if (qword_1EDC5E100 == -1)
    {
LABEL_16:
      v27 = sub_1BA4A1318();
      v29 = v28;
      goto LABEL_17;
    }

LABEL_22:
    swift_once();
    goto LABEL_16;
  }

  sub_1BA4A3DD8();

  v49 = v4;
  v51 = sub_1BA4A3E88();
  v50 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v51, v50))
  {
    v49 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v58 = v48;
    *v49 = 136446722;
    v35 = sub_1BA4A85D8();
    v47 = v36;
    ObjectType = sub_1B9F0B82C(v35, v36, &v58);

    v37 = v49;
    v38 = v53;
    *(v49 + 4) = ObjectType;
    *(v37 + 6) = 2082;
    v39 = sub_1B9F0B82C(v38, v56, &v58);
    v40 = v49;
    *(v49 + 14) = v39;
    *(v40 + 11) = 2082;
    (v24)(v17, &v4[v23], v13);
    v41 = sub_1BA4A6808();
    v43 = sub_1B9F0B82C(v41, v42, &v58);

    v44 = v49;
    *(v49 + 3) = v43;
    v45 = v51;
    _os_log_impl(&dword_1B9F07000, v51, v50, "%{public}s Supplementary Item %{public}s for keyword %{public}s isn't valid!", v44, 0x20u);
    v46 = v48;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v46, -1, -1);
    MEMORY[0x1BFAF43A0](v44, -1, -1);
  }

  else
  {
  }

  (*(v54 + 8))(v12, v55);
  (*(v14 + 8))(v22, v13);
  v27 = 0;
  v29 = 0xE000000000000000;
LABEL_17:
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v30 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v27, v29, 0, 0, 0, 0, v8, 0, 0);
  v32 = v31;
  v33 = v57;
  v57[3] = v30;
  result = sub_1BA011754();
  v33[4] = result;
  *v33 = v32;
  return result;
}

id sub_1BA3F1744(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v38[4] = xmmword_1EDC6D3C8;
  v38[5] = unk_1EDC6D3D8;
  v38[6] = xmmword_1EDC6D3E8;
  v38[7] = unk_1EDC6D3F8;
  v38[0] = xmmword_1EDC6D388;
  v38[1] = xmmword_1EDC6D398;
  v38[2] = xmmword_1EDC6D3A8;
  v38[3] = xmmword_1EDC6D3B8;
  v36 = xmmword_1EDC6D398;
  v30 = xmmword_1EDC6D3B8;
  v31 = xmmword_1EDC6D3C8;
  v2 = *(&xmmword_1EDC6D388 + 1);
  v3 = xmmword_1EDC6D388;
  v37 = xmmword_1EDC6D3A8;
  v4 = BYTE1(xmmword_1EDC6D3A8);
  v34 = *(&xmmword_1EDC6D3A8 + 2);
  v35 = WORD3(xmmword_1EDC6D3A8);
  v5 = *(&xmmword_1EDC6D3A8 + 1);
  v32 = unk_1EDC6D3D8;
  v33 = xmmword_1EDC6D3E8;
  v6 = qword_1EDC6D400;
  sub_1B9F1D9A4(v38, &v22);
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  LOBYTE(v7) = sub_1BA4A7528();
  if (v7)
  {
    v9 = *(&v38[0] + 1);
    v2 = [objc_opt_self() estimatedDimension_];
  }

  *&v14 = v3;
  if (v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = v4;
  }

  *(&v14 + 1) = v2;
  v15 = v36;
  LOBYTE(v16) = v37;
  BYTE1(v16) = v10;
  *(&v16 + 2) = v34;
  WORD3(v16) = v35;
  *(&v16 + 1) = v5;
  v19 = v32;
  v20 = v33;
  v17 = v30;
  v18 = v31;
  *&v21 = v3;
  *(&v21 + 1) = v6;
  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v26 = v18;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  sub_1B9F1D9A4(&v14, &v13);
  v11 = sub_1B9F293A8(&v22);
  *&v22 = v3;
  *(&v22 + 1) = v2;
  v23 = v36;
  LOBYTE(v24) = v37;
  BYTE1(v24) = v10;
  *(&v24 + 2) = v34;
  WORD3(v24) = v35;
  *(&v24 + 1) = v5;
  v27 = v32;
  v28 = v33;
  v25 = v30;
  v26 = v31;
  *&v29 = v3;
  *(&v29 + 1) = v6;
  sub_1B9F1DA58(&v22);
  return v11;
}

uint64_t sub_1BA3F19C0(uint64_t a1)
{
  result = sub_1BA4A2A88();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double CGFloat.rounded(_:toScaleOf:)(uint64_t a1, void *a2, double a3)
{
  swift_getObjectType();

  return sub_1BA3F1D18(a1, a2, a3);
}

double CGFloat.rounded(_:toScale:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_1BA4A82F8();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 * a3;
  v18 = v12;
  (*(v7 + 16))(v11, a1, v6, v9);
  v13 = (*(v7 + 88))(v11, v6);
  if (v13 == *MEMORY[0x1E69E7038])
  {
    v14 = round(v12);
  }

  else if (v13 == *MEMORY[0x1E69E7030])
  {
    v14 = rint(v12);
  }

  else if (v13 == *MEMORY[0x1E69E7040])
  {
    v14 = ceil(v12);
  }

  else if (v13 == *MEMORY[0x1E69E7048])
  {
    v14 = floor(v12);
  }

  else if (v13 == *MEMORY[0x1E69E7020])
  {
    v14 = trunc(v12);
  }

  else if (v13 == *MEMORY[0x1E69E7028])
  {
    v14 = ceil(v12);
    v15 = floor(v12);
    if (v12 < 0.0)
    {
      v14 = v15;
    }
  }

  else
  {
    sub_1BA4A6CD8();
    (*(v7 + 8))(v11, v6);
    v14 = v18;
  }

  return v14 / a2;
}

double CGFloat.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3)
{
  [a2 displayScale];

  return CGFloat.rounded(_:toScale:)(a1, v5, a3);
}

double sub_1BA3F1D18(uint64_t a1, id a2, double a3)
{
  v5 = [a2 traitCollection];
  [v5 displayScale];
  v7 = CGFloat.rounded(_:toScale:)(a1, v6, a3);

  return v7;
}

Swift::Void __swiftcall SummarySharingSelectedDataTypesDelegate.selectedItemsDidUpdate(with:)(Swift::OpaquePointer with)
{
  (*(v1 + 8))();

  sub_1BA0DF96C(v2);
}

void SummarySharingSelectedDataTypesDelegate.selectedItemsDidUpdate(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 8))(a2, a3);
  if (*(a1 + 49) == 1)
  {
    sub_1BA0E11F0(a1);
  }

  else
  {
    sub_1BA3F1F4C(0);
    v4 = *(type metadata accessor for SummarySharingSelectableDataTypeItem(0) - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BA4B5480;
    sub_1BA025290(a1, v6 + v5);
    sub_1BA0E17CC(v6);

    swift_setDeallocating();
    swift_arrayDestroy();

    swift_deallocClassInstance();
  }
}

void sub_1BA3F1F4C(uint64_t a1)
{
  if (!qword_1EBBEA670)
  {
    type metadata accessor for SummarySharingSelectableDataTypeItem(255);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEA670);
    }
  }
}

uint64_t sub_1BA3F2008()
{
  sub_1B9FAB600(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA3F206C()
{
  sub_1B9F0ADF8(0, &qword_1EDC6B610, 0x1E695E000);
  result = sub_1BA4A70E8();
  qword_1EBBF2300 = result;
  return result;
}

id static URLRouter.userDefaults.getter()
{
  if (qword_1EBBE8948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBF2300;

  return v1;
}

uint64_t static URLRouter.handleURL(_:options:rootViewController:)(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  v4 = *(a3 + 16);
  v6[0] = *a3;
  v6[1] = v4;
  v7 = v3;
  return sub_1BA3F7B90(a1, a2, v6) & 1;
}

uint64_t sub_1BA3F2160(__n128 a1)
{
  v2 = v1;
  v3 = sub_1BA4A3878();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BA4A15D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA4A3818();
  v13 = sub_1BA4A1528();
  v14 = *(v9 + 8);
  v14(v12, v8);
  if (v13[2] == 2 && (v13[4] == 47 ? (v15 = v13[5] == 0xE100000000000000) : (v15 = 0), v15 || (sub_1BA4A8338() & 1) != 0))
  {
    v41 = v3;
    v42 = v4;
    v16 = v13[6];
    v17 = v13[7];

    v18 = sub_1BA4A6758();
    v19 = HKDisplayCategoryIdentifierFromString();

    if (v19 != -1)
    {

      return v19;
    }

    v40 = v16;
    if (qword_1EBBE88C8 != -1)
    {
      swift_once();
    }

    v21 = sub_1BA4A3EA8();
    __swift_project_value_buffer(v21, qword_1EBC09940);
    v22 = v41;
    v23 = v42;
    (*(v42 + 16))(v7, v2, v41);

    v24 = sub_1BA4A3E88();
    v25 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v38 = v25;
      v27 = v23;
      v28 = v26;
      v39 = swift_slowAlloc();
      v43 = v39;
      *v28 = 136315651;
      *(v28 + 4) = sub_1B9F0B82C(0x4C52554148, 0xE500000000000000, &v43);
      *(v28 + 12) = 2082;
      v29 = sub_1B9F0B82C(v40, v17, &v43);
      v40 = v24;
      v30 = v29;

      *(v28 + 14) = v30;
      *(v28 + 22) = 2081;
      sub_1BA4A3818();
      v31 = sub_1BA4A1518();
      v33 = v32;
      v14(v12, v8);
      (*(v27 + 8))(v7, v22);
      v34 = sub_1B9F0B82C(v31, v33, &v43);

      *(v28 + 24) = v34;
      v35 = v40;
      _os_log_impl(&dword_1B9F07000, v40, v38, "%s Invalid category identifier %{public}s provided in URL %{private}s", v28, 0x20u);
      v36 = v39;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v36, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v7, v22);
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1BA3F2580(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[4];
  v7 = sub_1BA4A3678();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A3898();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v17, a1, v12, v15);
  v18 = (*(v13 + 88))(v17, v12);
  if (v18 != *MEMORY[0x1E69A2CC8])
  {
    if (v18 == *MEMORY[0x1E69A2CB8] || v18 == *MEMORY[0x1E69A2D38])
    {
      ObjectType = swift_getObjectType();
      v40 = v5;
      (*(v8 + 104))(v11, *MEMORY[0x1E69A2C70], v7);
      (*(v6 + 8))(v11, ObjectType, v6);
      (*(v8 + 8))(v11, v7);
      v40 = v5;
      v30 = (*(v6 + 24))(ObjectType, v6);
      _s18HealthExperienceUI21ProfileDeepLinkRouterV7openURL24presentingViewController7urlTypeySo06UIViewL0C_0A11AppServices7URLTypeOtFZ_0(v30, a1);

      return 1;
    }

    (*(v13 + 8))(v17, v12);
    return 0;
  }

  (*(v13 + 96))(v17, v12);
  v20 = *v17;
  v19 = v17[1];
  v21 = swift_getObjectType();
  v40 = v5;
  (*(v8 + 104))(v11, *MEMORY[0x1E69A2C28], v7);
  (*(v6 + 8))(v11, v21, v6);
  (*(v8 + 8))(v11, v7);
  if (qword_1EBBE8948 != -1)
  {
    swift_once();
  }

  v22 = 0xD000000000000012;
  v23 = qword_1EBBF2300;
  v24 = sub_1BA4A6758();
  v25 = [v23 stringForKey_];

  if (v25)
  {
    v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v27 = v26;

    if (!a2)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v27 = 0x80000001BA506D00;
    if (!a2)
    {
LABEL_18:

LABEL_19:

      return 0;
    }
  }

  v32 = [a2 sourceApplication];
  if (!v32)
  {
    goto LABEL_18;
  }

  v33 = v32;
  v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v36 = v35;

  if (v34 == v22 && v36 == v27)
  {
  }

  else
  {
    v37 = sub_1BA4A8338();

    if ((v37 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v40 = v5;
  v38 = (*(v6 + 24))(v21, v6);
  sub_1BA24A2A0(v38, v20, v19);

  return 1;
}

uint64_t sub_1BA3F2A24(uint64_t a1, void *a2, void **a3)
{
  v102 = *a3;
  v4 = a3[4];
  v100 = a2;
  v101 = v4;
  v5 = sub_1BA4A15D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v95 - v12;
  v14 = sub_1BA4A3EA8();
  v15 = *(v14 - 8);
  v103 = v14;
  v104 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v95 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v96 = &v95 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v95 = &v95 - v28;
  v29 = sub_1BA4A3678();
  v98 = *(v29 - 8);
  v99 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v97 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3F7E50(0, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = (&v95 - v34);
  sub_1BA4A3538();
  v36 = sub_1BA4A3898();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_1BA3F801C(v35, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
LABEL_11:
    sub_1BA4A3E28();
    (*(v6 + 16))(v9, a1, v5);
    v46 = sub_1BA4A3E88();
    v47 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v107[0] = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v107);
      *(v48 + 12) = 2080;
      sub_1BA3F7EEC();
      v50 = sub_1BA4A82D8();
      v52 = v51;
      (*(v6 + 8))(v9, v5);
      v53 = sub_1B9F0B82C(v50, v52, v107);

      *(v48 + 14) = v53;
      _os_log_impl(&dword_1B9F07000, v46, v47, "[%s] Invalid URL %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v49, -1, -1);
      MEMORY[0x1BFAF43A0](v48, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    (*(v104 + 8))(v18, v103);
    return 0;
  }

  if ((*(v37 + 88))(v35, v36) != *MEMORY[0x1E69A2D00])
  {
    (*(v37 + 8))(v35, v36);
    goto LABEL_11;
  }

  (*(v37 + 96))(v35, v36);
  v39 = *v35;
  v38 = v35[1];
  v40 = sub_1BA4A1598();
  if (!v41)
  {

    sub_1BA4A3E28();
    (*(v6 + 16))(v13, a1, v5);
    v55 = sub_1BA4A3E88();
    v56 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v107[0] = v58;
      *v57 = 136315394;
      *(v57 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v107);
      *(v57 + 12) = 2080;
      sub_1BA3F7EEC();
      v59 = sub_1BA4A82D8();
      v61 = v60;
      (*(v6 + 8))(v13, v5);
      v62 = sub_1B9F0B82C(v59, v61, v107);

      *(v57 + 14) = v62;
      _os_log_impl(&dword_1B9F07000, v55, v56, "[%s] URL did not have a host: %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v58, -1, -1);
      MEMORY[0x1BFAF43A0](v57, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v13, v5);
    }

    (*(v104 + 8))(v22, v103);
    return 0;
  }

  v42 = v40;
  v43 = v41;
  if (!v100 || (v44 = [v100 sourceApplication]) == 0)
  {
    v44 = 0;
  }

  if (v38)
  {

    v45 = sub_1BA4A6758();
  }

  else
  {
    v45 = 0;
  }

  v63 = [objc_opt_self() canOpenLinkWithSourceIdentifier:v44 destinationIdentifier:v45];

  v107[0] = v42;
  v107[1] = v43;
  v64 = [objc_opt_self() sharingOverviewHostName];
  v65 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v67 = v66;

  v105 = v65;
  v106 = v67;
  sub_1B9F252FC();
  LOBYTE(v64) = sub_1BA4A7B88();

  if ((v64 & 1) == 0)
  {
    v79 = v102;
    ObjectType = swift_getObjectType();
    v107[0] = v79;
    v82 = v97;
    v81 = v98;
    v83 = v99;
    (*(v98 + 104))(v97, *MEMORY[0x1E69A2C28], v99);
    v84 = v101;
    v101[1](v82, ObjectType, v101);
    (*(v81 + 8))(v82, v83);
    if (v63)
    {
      v107[0] = v79;
      v85 = (v84[3])(ObjectType, v84);
      sub_1BA24A2A8(v85, v39, v38);

      return 1;
    }

    v86 = v96;
    sub_1BA4A3E28();
    v87 = sub_1BA4A3E88();
    v88 = sub_1BA4A6FA8();
    if (!os_log_type_enabled(v87, v88))
    {
      goto LABEL_36;
    }

    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v107[0] = v90;
    *v89 = 136315138;
    *(v89 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v107);
    v91 = "[%s] [Authorization] Health Profile: Application not allowed to open authorization page";
    goto LABEL_35;
  }

  v68 = v101;
  v69 = v102;
  if (!v63)
  {

    v86 = v95;
    sub_1BA4A3E28();
    v87 = sub_1BA4A3E88();
    v88 = sub_1BA4A6FA8();
    if (!os_log_type_enabled(v87, v88))
    {
LABEL_36:

      (*(v104 + 8))(v86, v103);
      return 0;
    }

    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v107[0] = v90;
    *v89 = 136315138;
    *(v89 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v107);
    v91 = "[%s] [Authorization] Health Sharing: Application not allowed to open authorization page";
LABEL_35:
    _os_log_impl(&dword_1B9F07000, v87, v88, v91, v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v90);
    MEMORY[0x1BFAF43A0](v90, -1, -1);
    MEMORY[0x1BFAF43A0](v89, -1, -1);
    goto LABEL_36;
  }

  v70 = swift_getObjectType();
  v107[0] = v69;
  v72 = v97;
  v71 = v98;
  v73 = v99;
  (*(v98 + 104))(v97, *MEMORY[0x1E69A2C30], v99);
  v68[1](v72, v70, v68);
  (*(v71 + 8))(v72, v73);
  v107[0] = v69;
  v74 = (v68[3])(v70, v68);
  v75 = UIViewController.resolvedHealthStore.getter();
  v76 = v75;
  if (!v75 || (v77 = [v75 viewControllerFactory]) == 0)
  {
    v77 = [v69 resolvedHealthToolbox];
  }

  if (v38)
  {
    v78 = sub_1BA4A6758();
  }

  else
  {
    v78 = 0;
  }

  v92 = [v77 createSingleAppAuthorizationViewControllerUsingInsetStyling:1 restorationApplicationBundleIdentifier:v78];

  v93 = [v74 navigationController];
  if (v93)
  {
    v94 = v93;
    [v93 pushViewController:v92 animated:0];
  }

  return 1;
}

uint64_t sub_1BA3F35DC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[4];
  v5 = sub_1BA4A3678();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3898();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a1, v10, v13);
  v16 = (*(v11 + 88))(v15, v10);
  if (v16 != *MEMORY[0x1E69A2D18])
  {
    if (v16 == *MEMORY[0x1E69A2D08])
    {
      ObjectType = swift_getObjectType();
      v22 = v3;
      v18 = MEMORY[0x1E69A2C48];
      goto LABEL_13;
    }

    if (v16 == *MEMORY[0x1E69A2CD0] || v16 == *MEMORY[0x1E69A2CE0])
    {
      ObjectType = swift_getObjectType();
      v22 = v3;
      v18 = MEMORY[0x1E69A2C30];
      goto LABEL_13;
    }

    if (v16 == *MEMORY[0x1E69A2D30])
    {
      ObjectType = swift_getObjectType();
      v22 = v3;
      v18 = MEMORY[0x1E69A2C68];
      goto LABEL_13;
    }

    if (v16 != *MEMORY[0x1E69A2CD8])
    {
      (*(v11 + 8))(v15, v10);
      return 0;
    }
  }

  ObjectType = swift_getObjectType();
  v22 = v3;
  v18 = MEMORY[0x1E69A2C58];
LABEL_13:
  (*(v6 + 104))(v9, *v18, v5);
  (*(v4 + 8))(v9, ObjectType, v4);
  (*(v6 + 8))(v9, v5);
  return 1;
}

id sub_1BA3F38B8(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v548 = a2;
  v5 = *(a3 + 8);
  v582 = *a3;
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  v559 = v5;
  v560 = v7;
  v561 = v6;
  v578 = *(a3 + 32);
  sub_1BA3F7E50(0, &qword_1EDC6ACC8, MEMORY[0x1E69A2C88]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v536 = &v522 - v10;
  sub_1BA3F7E50(0, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v544 = &v522 - v13;
  sub_1BA3F7E50(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v547 = &v522 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v573 = &v522 - v19;
  sub_1BA3F7E50(0, &qword_1EDC6E440, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v566 = &v522 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v572 = &v522 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v552 = &v522 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v562 = &v522 - v31;
  v565 = sub_1BA4A1728();
  v563 = *(v565 - 8);
  MEMORY[0x1EEE9AC00](v565, v32);
  v546 = &v522 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v545 = &v522 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v553 = &v522 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v564 = &v522 - v42;
  sub_1BA3F7E50(0, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v558 = &v522 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v579 = &v522 - v48;
  v49 = sub_1BA4A35F8();
  v538 = *(v49 - 8);
  v539 = v49;
  MEMORY[0x1EEE9AC00](v49, v50);
  v537 = &v522 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1BA4A3678();
  v568 = *(v52 - 8);
  v569 = v52;
  MEMORY[0x1EEE9AC00](v52, v53);
  v567 = &v522 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1BA4A3878();
  v56 = *(v55 - 8);
  v570 = v55;
  v571 = v56;
  MEMORY[0x1EEE9AC00](v55, v57);
  v581 = &v522 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v543 = &v522 - v61;
  v62 = sub_1BA4A35A8();
  v550 = *(v62 - 8);
  v551 = v62;
  MEMORY[0x1EEE9AC00](v62, v63);
  v549 = &v522 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3F7E50(0, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
  MEMORY[0x1EEE9AC00](v65 - 8, v66);
  v587 = (&v522 - v67);
  v590 = sub_1BA4A3898();
  v591 = *(v590 - 8);
  MEMORY[0x1EEE9AC00](v590, v68);
  v588 = (&v522 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v70, v71);
  v73 = &v522 - v72;
  v74 = sub_1BA4A15D8();
  v75 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v76);
  v576 = &v522 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v78, v79);
  v529 = &v522 - v80;
  MEMORY[0x1EEE9AC00](v81, v82);
  v527 = &v522 - v83;
  MEMORY[0x1EEE9AC00](v84, v85);
  v533 = &v522 - v86;
  MEMORY[0x1EEE9AC00](v87, v88);
  v534 = &v522 - v89;
  MEMORY[0x1EEE9AC00](v90, v91);
  v531 = &v522 - v92;
  MEMORY[0x1EEE9AC00](v93, v94);
  v557 = &v522 - v95;
  MEMORY[0x1EEE9AC00](v96, v97);
  v540 = &v522 - v98;
  MEMORY[0x1EEE9AC00](v99, v100);
  v586 = &v522 - v101;
  MEMORY[0x1EEE9AC00](v102, v103);
  v105 = &v522 - v104;
  v106 = sub_1BA4A3EA8();
  v107 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v108);
  v555 = &v522 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v110, v111);
  v583 = &v522 - v112;
  MEMORY[0x1EEE9AC00](v113, v114);
  v528 = &v522 - v115;
  MEMORY[0x1EEE9AC00](v116, v117);
  v525 = &v522 - v118;
  MEMORY[0x1EEE9AC00](v119, v120);
  v524 = &v522 - v121;
  MEMORY[0x1EEE9AC00](v122, v123);
  v526 = &v522 - v124;
  MEMORY[0x1EEE9AC00](v125, v126);
  v532 = &v522 - v127;
  MEMORY[0x1EEE9AC00](v128, v129);
  v535 = &v522 - v130;
  MEMORY[0x1EEE9AC00](v131, v132);
  v530 = &v522 - v133;
  MEMORY[0x1EEE9AC00](v134, v135);
  v556 = &v522 - v136;
  MEMORY[0x1EEE9AC00](v137, v138);
  v554 = &v522 - v139;
  MEMORY[0x1EEE9AC00](v140, v141);
  v541 = &v522 - v142;
  MEMORY[0x1EEE9AC00](v143, v144);
  v542 = &v522 - v145;
  MEMORY[0x1EEE9AC00](v146, v147);
  v149 = &v522 - v148;
  sub_1BA4A3E28();
  v593 = v75;
  v150 = v75[2];
  v589 = a1;
  v151 = a1;
  v152 = v74;
  v150(v105, v151, v74);
  v153 = sub_1BA4A3E88();
  v575 = sub_1BA4A6FC8();
  v154 = os_log_type_enabled(v153, v575);
  v592 = v106;
  v584 = v150;
  v585 = v75 + 2;
  if (v154)
  {
    v155 = swift_slowAlloc();
    v574 = v107;
    v156 = v155;
    v523 = swift_slowAlloc();
    *&v608[0] = v523;
    *v156 = 136446466;
    *&v600 = &type metadata for URLRouter;
    sub_1BA3F7EA4();
    v157 = sub_1BA4A6808();
    v159 = sub_1B9F0B82C(v157, v158, v608);
    v577 = v73;
    v160 = v159;

    *(v156 + 4) = v160;
    *(v156 + 12) = 2082;
    v150(v586, v105, v152);
    v161 = sub_1BA4A6858();
    v163 = v162;
    v580 = *(v593 + 1);
    v580(v105, v152);
    v164 = v161;
    v165 = v590;
    v73 = v577;
    v166 = sub_1B9F0B82C(v164, v163, v608);

    *(v156 + 14) = v166;
    _os_log_impl(&dword_1B9F07000, v153, v575, "[%{public}s]: attempting to open URL %{public}s", v156, 0x16u);
    v167 = v523;
    swift_arrayDestroy();
    v168 = v167;
    v169 = v591;
    MEMORY[0x1BFAF43A0](v168, -1, -1);
    v170 = v156;
    v107 = v574;
    MEMORY[0x1BFAF43A0](v170, -1, -1);

    v171 = v169;
    v172 = *(v107 + 8);
    v172(v149, v592);
    v173 = v152;
    v174 = v165;
  }

  else
  {

    v580 = *(v593 + 1);
    v580(v105, v152);
    v172 = *(v107 + 8);
    v172(v149, v106);
    v173 = v152;
    v171 = v591;
    v174 = v590;
  }

  v175 = v587;
  v176 = v589;
  sub_1BA4A3538();
  v177 = (*(v171 + 48))(v175, 1, v174);
  v178 = v588;
  if (v177 == 1)
  {
    sub_1BA3F801C(v175, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
    v179 = v583;
    sub_1BA4A3E28();
    v180 = v576;
    v584(v576, v176, v173);
    v181 = sub_1BA4A3E88();
    v182 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v587 = v172;
      v185 = v184;
      *&v608[0] = v184;
      *v183 = 136446466;
      *&v600 = &type metadata for URLRouter;
      sub_1BA3F7EA4();
      v186 = sub_1BA4A6808();
      v188 = v180;
      v189 = sub_1B9F0B82C(v186, v187, v608);

      *(v183 + 4) = v189;
      *(v183 + 12) = 2082;
      sub_1BA3F7EEC();
      v190 = sub_1BA4A82D8();
      v192 = v191;
      v580(v188, v173);
      v193 = sub_1B9F0B82C(v190, v192, v608);

      *(v183 + 14) = v193;
      _os_log_impl(&dword_1B9F07000, v181, v182, "[%{public}s]: asked to open a URL that we don't understand: %{public}s", v183, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v185, -1, -1);
      MEMORY[0x1BFAF43A0](v183, -1, -1);

      v587(v583, v592);
    }

    else
    {

      v580(v180, v173);
      v172(v179, v592);
    }

    goto LABEL_48;
  }

  v194 = v175;
  v195 = v73;
  (*(v171 + 32))(v73, v194, v174);
  (*(v171 + 16))(v178, v73, v174);
  v196 = (*(v171 + 88))(v178, v174);
  if (v196 == *MEMORY[0x1E69A2D28])
  {
    v587 = v172;
    v577 = v73;
    (*(v171 + 96))(v178, v174);
    sub_1BA3F7FB0(v178, v579, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
    v197 = v176;
    v198 = v582;
    ObjectType = swift_getObjectType();
    *&v608[0] = v198;
    v201 = v568;
    v200 = v569;
    v202 = v174;
    v203 = v567;
    (*(v568 + 104))(v567, *MEMORY[0x1E69A2C00], v569);
    v204 = *(v578 + 8);
    v583 = ObjectType;
    v204(v203, ObjectType);
    (*(v201 + 8))(v203, v200);
    v205 = v584;
    v584(v586, v197, v173);
    sub_1BA4A3828();
    v588 = sub_1BA4A37C8();
    if (v588)
    {
      v574 = v107;
      v206 = v562;
      sub_1BA4A3868();
      v207 = v563;
      v208 = *(v563 + 48);
      v209 = v565;
      if (v208(v206, 1, v565) != 1)
      {
        v210 = *(v207 + 32);
        v210(v564, v206, v209);
        v206 = v552;
        sub_1BA4A3858();
        if (v208(v206, 1, v209) != 1)
        {
          v261 = v553;
          v210(v553, v206, v209);
          v262 = *(v207 + 16);
          v262(v545, v564, v209);
          v262(v546, v261, v209);
          v263 = v573;
          sub_1BA4A0F68();
          v264 = sub_1BA4A0FA8();
          (*(*(v264 - 8) + 56))(v263, 0, 1, v264);
          (*(v207 + 56))(v572, 1, 1, v209);
          v265 = MEMORY[0x1E6968130];
          v266 = v263;
          v267 = v547;
          sub_1BA3F7F44(v266, v547, &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
          v593 = type metadata accessor for ChartContext(0);
          v268 = objc_allocWithZone(v593);
          v269 = &v268[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
          *v269 = 0;
          v269[8] = 1;
          v270 = v207;
          v271 = &v268[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
          *v271 = 0;
          v271[8] = 1;
          v272 = &v268[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
          *v272 = 0;
          v272[8] = 1;
          v273 = MEMORY[0x1E6969530];
          v274 = v572;
          sub_1BA3F7F44(v572, &v268[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, MEMORY[0x1E6969530]);
          sub_1BA3F7F44(v267, &v268[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, v265);
          *v269 = 0;
          v269[8] = 1;
          *v271 = 0;
          v271[8] = 0;
          *v272 = 0;
          v272[8] = 0;
          v594.receiver = v268;
          v594.super_class = v593;
          v222 = objc_msgSendSuper2(&v594, sel_init);
          sub_1BA3F801C(v267, &qword_1EDC6E2A0, v265);
          sub_1BA3F801C(v274, &qword_1EDC6E440, v273);
          sub_1BA3F801C(v573, &qword_1EDC6E2A0, v265);
          v275 = *(v270 + 8);
          v276 = v565;
          v275(v553, v565);
          v275(v564, v276);
          goto LABEL_29;
        }

        (*(v207 + 8))(v564, v209);
      }

      v211 = MEMORY[0x1E6969530];
      sub_1BA3F801C(v206, &qword_1EDC6E440, MEMORY[0x1E6969530]);
      v212 = v572;
      sub_1BA4A3838();
      v213 = v566;
      sub_1BA3F7F44(v212, v566, &qword_1EDC6E440, v211);
      v214 = sub_1BA4A0FA8();
      (*(*(v214 - 8) + 56))(v573, 1, 1, v214);
      v215 = type metadata accessor for ChartContext(0);
      v216 = objc_allocWithZone(v215);
      v217 = &v216[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_preferredOverlayRawValue];
      *v217 = 0;
      v217[8] = 1;
      v218 = &v216[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
      *v218 = 0;
      v218[8] = 1;
      v219 = &v216[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_chartOptionsRawValue];
      *v219 = 0;
      v219[8] = 1;
      sub_1BA3F7F44(v213, &v216[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_date], &qword_1EDC6E440, v211);
      v220 = MEMORY[0x1E6968130];
      v221 = v573;
      sub_1BA3F7F44(v573, &v216[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_dateInterval], &qword_1EDC6E2A0, MEMORY[0x1E6968130]);
      *v217 = 0;
      v217[8] = 1;
      *v218 = 0;
      v218[8] = 0;
      *v219 = 0;
      v219[8] = 0;
      v611.receiver = v216;
      v611.super_class = v215;
      v222 = objc_msgSendSuper2(&v611, sel_init);
      sub_1BA3F801C(v572, &qword_1EDC6E440, v211);
      sub_1BA3F801C(v221, &qword_1EDC6E2A0, v220);
      sub_1BA3F801C(v566, &qword_1EDC6E440, v211);
LABEL_29:
      v277 = v581;
      v278 = sub_1BA4A37D8();
      v279 = v582;
      v280 = v579;
      if (v281)
      {
        v282 = 0;
      }

      else
      {
        v282 = HADataTypeDetailTrendOverlay.trendActive.getter(v278);
      }

      v283 = v591;
      v284 = &v222[OBJC_IVAR____TtC18HealthExperienceUI12ChartContext_trendActiveRawValue];
      *v284 = v282;
      v284[8] = 0;
      UIViewController.resolvedHealthExperienceStore.getter(v617);
      v285 = UIViewController.resolvedHealthStore.getter();
      if (v285)
      {
        v286 = v285;
        v287 = [v285 profileIdentifier];
        LOBYTE(v608[0]) = 15;
        v288 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v287, v608);

        UIViewController.resolvedPinnedContentManager.getter(v610);
        sub_1B9F0A534(v617, v607);
        sub_1B9F0A534(v610, v606);
        sub_1B9F0A534(v607, &v600);
        *(&v602 + 1) = v286;
        LOBYTE(v603) = v288;
        sub_1BA4A2488();
        swift_allocObject();
        v289 = v286;
        v593 = v222;
        *(&v603 + 1) = sub_1BA4A2468();
        sub_1BA10F7B4(v606, &v595);
        if (v596)
        {

          sub_1BA10F728(v606);
          __swift_destroy_boxed_opaque_existential_1(v607);
          sub_1B9F25598(&v595, &v597);
          v290 = v558;
        }

        else
        {
          v301 = sub_1BA4A22B8();
          v302 = sub_1BA4A22A8();
          v599 = MEMORY[0x1E69A3CF8];
          v598 = v301;
          *&v597 = v302;
          sub_1BA10F728(v606);
          __swift_destroy_boxed_opaque_existential_1(v607);
          v290 = v558;
          if (v596)
          {
            sub_1BA10F728(&v595);
          }
        }

        sub_1B9F25598(&v597, v604);
        *(&v605 + 1) = v222;
        v609 = 0;
        v608[4] = v604[0];
        v608[5] = v604[1];
        v608[0] = v600;
        v608[1] = v601;
        v608[2] = v602;
        v608[3] = v603;
        v608[6] = v605;
        v303 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)(v588, v608);
        *&v600 = v279;
        v304 = (*(v578 + 24))(v583);
        v305 = [v304 navigationController];
        if (v305)
        {
          v306 = v305;
          [v305 pushViewController:v303 animated:0];
        }

        sub_1BA3F7F44(v280, v290, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
        v307 = sub_1BA4A3888();
        v308 = *(v307 - 8);
        if ((*(v308 + 48))(v290, 1, v307) == 1)
        {

          sub_1BA114E30(v608);
          __swift_destroy_boxed_opaque_existential_1(v610);
          __swift_destroy_boxed_opaque_existential_1(v617);
          (*(v571 + 8))(v581, v570);
          v309 = MEMORY[0x1E69A2CF0];
          sub_1BA3F801C(v280, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
          (*(v283 + 8))(v577, v590);
          sub_1BA3F801C(v290, &qword_1EBBF2308, v309);
          v243 = 1;
          return (v243 & 1);
        }

        if ((*(v308 + 88))(v290, v307) != *MEMORY[0x1E69A2CE8])
        {

          sub_1BA114E30(v608);
          __swift_destroy_boxed_opaque_existential_1(v610);
          __swift_destroy_boxed_opaque_existential_1(v617);
          (*(v571 + 8))(v581, v570);
          sub_1BA3F801C(v280, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
          (*(v283 + 8))(v577, v590);
          (*(v308 + 8))(v290, v307);
          v243 = 1;
          return (v243 & 1);
        }

        (*(v308 + 96))(v290, v307);
        v312 = v290;
        v313 = v544;
        sub_1BA3F7FB0(v312, v544, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
        swift_getObjectType();
        v314 = swift_conformsToProtocol2();
        if (v314 && v303)
        {
          v315 = v314;
          v316 = swift_getObjectType();
          (*(v315 + 8))(v313, v316, v315);
        }

        else
        {
        }

        sub_1BA3F801C(v313, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
        sub_1BA114E30(v608);
        __swift_destroy_boxed_opaque_existential_1(v610);
        __swift_destroy_boxed_opaque_existential_1(v617);
        (*(v571 + 8))(v581, v570);
        sub_1BA3F801C(v280, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
LABEL_66:
        (*(v283 + 8))(v577, v590);
        v243 = 1;
        return (v243 & 1);
      }

      v291 = v554;
      sub_1BA4A3E28();
      v292 = sub_1BA4A3E88();
      v293 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v292, v293))
      {
        v294 = swift_slowAlloc();
        v295 = swift_slowAlloc();
        *&v608[0] = v295;
        *v294 = 136446210;
        *&v600 = &type metadata for URLRouter;
        sub_1BA3F7EA4();
        v296 = sub_1BA4A6808();
        v298 = sub_1B9F0B82C(v296, v297, v608);

        *(v294 + 4) = v298;
        _os_log_impl(&dword_1B9F07000, v292, v293, "[%{public}s]: Could Not Process URL: No Health Store Found", v294, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v295);
        MEMORY[0x1BFAF43A0](v295, -1, -1);
        MEMORY[0x1BFAF43A0](v294, -1, -1);

        v587(v554, v592);
        __swift_destroy_boxed_opaque_existential_1(v617);
        (*(v571 + 8))(v277, v570);
        v299 = MEMORY[0x1E69A2CF0];
        v300 = v579;
      }

      else
      {

        v587(v291, v592);
        __swift_destroy_boxed_opaque_existential_1(v617);
        (*(v571 + 8))(v277, v570);
        v299 = MEMORY[0x1E69A2CF0];
        v300 = v280;
      }

      sub_1BA3F801C(v300, &qword_1EBBF2308, v299);
      goto LABEL_47;
    }

    v244 = v556;
    sub_1BA4A3E28();
    v245 = v557;
    v205(v557, v197, v173);
    v246 = sub_1BA4A3E88();
    LODWORD(v589) = sub_1BA4A6FA8();
    v247 = os_log_type_enabled(v246, v589);
    v248 = v592;
    if (!v247)
    {

      v580(v245, v173);
      v587(v244, v248);
      (*(v571 + 8))(v581, v570);
      sub_1BA3F801C(v579, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
      (*(v591 + 8))(v577, v202);
LABEL_48:
      v243 = 0;
      return (v243 & 1);
    }

    v249 = swift_slowAlloc();
    v574 = v107;
    v250 = v249;
    v251 = swift_slowAlloc();
    v588 = v246;
    v252 = v251;
    *&v608[0] = v251;
    *v250 = 136446466;
    *&v600 = &type metadata for URLRouter;
    sub_1BA3F7EA4();
    v253 = sub_1BA4A6808();
    v255 = sub_1B9F0B82C(v253, v254, v608);

    *(v250 + 4) = v255;
    *(v250 + 12) = 2082;
    v205(v586, v245, v173);
    v256 = sub_1BA4A6858();
    v258 = v257;
    v580(v245, v173);
    v259 = sub_1B9F0B82C(v256, v258, v608);

    *(v250 + 14) = v259;
    v260 = v588;
    _os_log_impl(&dword_1B9F07000, v588, v589, "[%{public}s]: No Object Type Found: %{public}s", v250, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v252, -1, -1);
    MEMORY[0x1BFAF43A0](v250, -1, -1);

    v587(v244, v592);
    (*(v571 + 8))(v581, v570);
    sub_1BA3F801C(v579, &qword_1EBBF2308, MEMORY[0x1E69A2CF0]);
LABEL_22:
    (*(v591 + 8))(v577, v590);
    goto LABEL_48;
  }

  v223 = v171;
  if (v196 == *MEMORY[0x1E69A2D10])
  {
    (*(v171 + 96))(v178, v174);
    isa = v178->isa;
    v225 = v178[1].isa;
    v226 = v582;
    v227 = swift_getObjectType();
    *&v608[0] = v226;
    (*(v578 + 16))(isa, v225, v227);

    (*(v171 + 8))(v195, v174);
LABEL_19:
    v243 = 1;
    return (v243 & 1);
  }

  if (v196 == *MEMORY[0x1E69A2D40])
  {
    (*(v171 + 96))(v178, v174);
    v229 = v550;
    v228 = v551;
    v230 = v174;
    v231 = v549;
    (*(v550 + 32))(v549, v178, v551);
    type metadata accessor for PluginDeepLinkRouter();
    v232 = v176;
    v233 = swift_allocObject();
    v234 = v582;
    v235 = v559;
    v236 = v560;
    *(v233 + 16) = v582;
    *(v233 + 24) = v235;
    v237 = v561;
    *(v233 + 32) = v236;
    *(v233 + 40) = v237;
    *(v233 + 48) = v578;
    v238 = v234;
    PluginDeepLinkRouter.launchPluginFromURL(_:pluginType:)(v232, v231, v239);
    swift_setDeallocating();

    swift_deallocClassInstance();
    (*(v229 + 8))(v231, v228);
    v240 = *(v223 + 8);
    v241 = v195;
    v242 = v230;
LABEL_18:
    v240(v241, v242);
    goto LABEL_19;
  }

  if (v196 == *MEMORY[0x1E69A2CC8])
  {
    (*(v171 + 8))(v178, v174);
LABEL_26:
    v612[0] = v582;
    v612[1] = v559;
    v612[2] = v560;
    v612[3] = v561;
    v612[4] = v578;
    v243 = sub_1BA3F2580(v195, v548, v612);
    (*(v171 + 8))(v195, v174);
    return (v243 & 1);
  }

  if (v196 == *MEMORY[0x1E69A2D00])
  {
    v310 = *(v171 + 8);
    v310(v178, v174);
    v613[0] = v582;
    v613[1] = v559;
    v613[2] = v560;
    v613[3] = v561;
    v613[4] = v578;
    v243 = sub_1BA3F2A24(v589, v548, v613);
    v310(v195, v174);
    return (v243 & 1);
  }

  if (v196 == *MEMORY[0x1E69A2D18])
  {
    goto LABEL_55;
  }

  if (v196 == *MEMORY[0x1E69A2D20])
  {
    v319 = UIViewController.resolvedHealthStore.getter();
    if (!v319)
    {
      v341 = v541;
      sub_1BA4A3E28();
      v342 = sub_1BA4A3E88();
      v343 = sub_1BA4A6FA8();
      if (!os_log_type_enabled(v342, v343))
      {

        v172(v341, v592);
        (*(v171 + 8))(v195, v590);
        goto LABEL_48;
      }

      v344 = swift_slowAlloc();
      v574 = v107;
      v345 = v344;
      v346 = swift_slowAlloc();
      *&v608[0] = v346;
      *v345 = 136446210;
      *&v600 = &type metadata for URLRouter;
      sub_1BA3F7EA4();
      v347 = sub_1BA4A6808();
      v577 = v195;
      v349 = v172;
      v283 = v171;
      v350 = sub_1B9F0B82C(v347, v348, v608);

      *(v345 + 4) = v350;
      _os_log_impl(&dword_1B9F07000, v342, v343, "[%{public}s]: Could Not Process URL: No Health Store Found", v345, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v346);
      MEMORY[0x1BFAF43A0](v346, -1, -1);
      MEMORY[0x1BFAF43A0](v345, -1, -1);

      v349(v341, v592);
      goto LABEL_47;
    }

    v588 = v319;
    v320 = v172;
    v321 = v589;
    v322 = v584;
    v584(v586, v589, v173);
    sub_1BA4A3828();
    v324 = sub_1BA3F2160(v323);
    if ((v325 & 1) == 0)
    {
      v351 = v324;
      v353 = v567;
      v352 = v568;
      v354 = v569;
      (*(v568 + 104))(v567, *MEMORY[0x1E69A2C60], v569);
      v355 = sub_1BA4A35B8();
      (*(v352 + 8))(v353, v354);
      v356 = [v355 userInfo];
      if (v356)
      {
        v357 = v351;
        v358 = v195;
        v359 = v356;
        v360 = sub_1BA4A6628();

        v361 = v537;
        v362 = v538;
        v363 = v539;
        (*(v538 + 104))(v537, *MEMORY[0x1E69A2B98], v539);
        v364 = sub_1BA4A35E8();
        v366 = v365;
        (*(v362 + 8))(v361, v363);
        *&v600 = v364;
        *(&v600 + 1) = v366;
        sub_1BA4A7D58();
        *(&v601 + 1) = MEMORY[0x1E69E6530];
        *&v600 = v357;
        sub_1B9F46920(&v600, v617);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v610[0] = v360;
        sub_1B9FF1AE4(v617, v608, isUniquelyReferenced_nonNull_native);
        sub_1B9FDC768(v608);
        v368 = v591;
        if (v610[0])
        {
          v369 = sub_1BA4A6618();
        }

        else
        {
          v369 = 0;
        }

        [v355 setUserInfo_];
      }

      else
      {
        [v355 setUserInfo_];
        v368 = v591;
        v358 = v195;
      }

      v389 = v588;
      v390 = [v588 profileIdentifier];
      sub_1BA4A7098();

      [v582 restoreUserActivityState_];
      (*(v571 + 8))(v543, v570);
      (*(v368 + 8))(v358, v590);
      v243 = 1;
      return (v243 & 1);
    }

    sub_1BA4A3E28();
    v326 = v540;
    v322(v540, v321, v173);
    v327 = sub_1BA4A3E88();
    v328 = sub_1BA4A6FA8();
    if (!os_log_type_enabled(v327, v328))
    {

      v580(v326, v173);
      v320(v542, v592);
      (*(v571 + 8))(v543, v570);
      (*(v591 + 8))(v195, v590);
      goto LABEL_48;
    }

    v329 = swift_slowAlloc();
    v574 = v107;
    v330 = v329;
    v331 = swift_slowAlloc();
    v577 = v195;
    v589 = v331;
    *&v608[0] = v331;
    *v330 = 136446466;
    *&v600 = &type metadata for URLRouter;
    sub_1BA3F7EA4();
    v332 = sub_1BA4A6808();
    v587 = v320;
    v334 = v326;
    v335 = sub_1B9F0B82C(v332, v333, v608);

    *(v330 + 4) = v335;
    *(v330 + 12) = 2082;
    v322(v586, v334, v173);
    v336 = sub_1BA4A6858();
    v338 = v337;
    v580(v334, v173);
    v339 = sub_1B9F0B82C(v336, v338, v608);

    *(v330 + 14) = v339;
    _os_log_impl(&dword_1B9F07000, v327, v328, "[%{public}s]: No Category Type Found: %{public}s", v330, 0x16u);
    v340 = v589;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v340, -1, -1);
    MEMORY[0x1BFAF43A0](v330, -1, -1);

    v587(v542, v592);
    (*(v571 + 8))(v543, v570);
    goto LABEL_22;
  }

  if (v196 == *MEMORY[0x1E69A2D08])
  {
LABEL_55:
    v614[0] = v582;
    v614[1] = v559;
    v614[2] = v560;
    v614[3] = v561;
    v614[4] = v578;
    v317 = v614;
LABEL_56:
    v318 = sub_1BA3F35DC(v195, v317);
LABEL_57:
    v243 = v318;
    (*(v171 + 8))(v195, v174);
    return (v243 & 1);
  }

  if (v196 == *MEMORY[0x1E69A2CD0])
  {
    v615[0] = v582;
    v615[1] = v559;
    v615[2] = v560;
    v615[3] = v561;
    v615[4] = v578;
    v317 = v615;
    goto LABEL_56;
  }

  if (v196 == *MEMORY[0x1E69A2CE0])
  {
    v616[0] = v582;
    v616[1] = v559;
    v616[2] = v560;
    v616[3] = v561;
    v616[4] = v578;
    v318 = sub_1BA3FA330(v589, v616);
    goto LABEL_57;
  }

  v370 = *MEMORY[0x1E69A2CC0];
  v371 = v589;
  v574 = v107;
  if (v196 == v370)
  {
    v587 = v172;
    v372 = v536;
    sub_1BA4A3768();
    v373 = sub_1BA4A3778();
    v374 = *(v373 - 8);
    if ((*(v374 + 48))(v372, 1, v373) == 1)
    {
      sub_1BA3F801C(v372, &qword_1EDC6ACC8, MEMORY[0x1E69A2C88]);
      v375 = v535;
      sub_1BA4A3E28();
      v376 = v534;
      v584(v534, v371, v173);
      v377 = sub_1BA4A3E88();
      v378 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v377, v378))
      {
        v379 = v376;
        v380 = swift_slowAlloc();
        v381 = swift_slowAlloc();
        v577 = v195;
        v382 = v381;
        *&v608[0] = v381;
        *v380 = 136315394;
        *(v380 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v608);
        *(v380 + 12) = 2080;
        sub_1BA3F7EEC();
        v383 = sub_1BA4A82D8();
        v385 = v384;
        v580(v379, v173);
        v386 = sub_1B9F0B82C(v383, v385, v608);

        *(v380 + 14) = v386;
        _os_log_impl(&dword_1B9F07000, v377, v378, "[%s] URL did not have a restoration type: %s", v380, 0x16u);
        swift_arrayDestroy();
        v387 = v382;
        v195 = v577;
        MEMORY[0x1BFAF43A0](v387, -1, -1);
        MEMORY[0x1BFAF43A0](v380, -1, -1);

        v388 = v535;
      }

      else
      {

        v580(v376, v173);
        v388 = v375;
      }

      v587(v388, v592);
      v434 = v582;
      v435 = swift_getObjectType();
      *&v608[0] = v434;
      v436 = v567;
      v437 = v568;
      v438 = v569;
      (*(v568 + 104))(v567, *MEMORY[0x1E69A2C30], v569);
      (*(v578 + 8))(v436, v435);
      (*(v437 + 8))(v436, v438);
      (*(v223 + 8))(v195, v590);
      goto LABEL_48;
    }

    v415 = sub_1BA4A3728();
    (*(v374 + 8))(v372, v373);
    v416 = v582;
    v417 = swift_getObjectType();
    [v416 restoreUserActivityState_];
    *&v608[0] = v416;
    v418 = (*(v578 + 24))(v417);

    v240 = *(v171 + 8);
    v241 = v195;
    goto LABEL_92;
  }

  if (v196 == *MEMORY[0x1E69A2D30])
  {
    v588 = v173;
    v577 = v195;
    v391 = v582;
    v392 = swift_getObjectType();
    v393 = UIViewController.resolvedHealthStore.getter();
    if (v393)
    {
      v394 = v393;
      *&v608[0] = v391;
      v396 = v567;
      v395 = v568;
      v397 = v569;
      (*(v568 + 104))(v567, *MEMORY[0x1E69A2C68], v569);
      v398 = v578;
      (*(v578 + 8))(v396, v392, v578);
      (*(v395 + 8))(v396, v397);
      *&v608[0] = v391;
      v399 = (*(v398 + 24))(v392, v398);
      v400 = v394;
      UIViewController.resolvedHealthExperienceStore.getter(v608);
      UIViewController.resolvedPresentation.getter(&v618);
      v401 = objc_allocWithZone(type metadata accessor for AllTrendsViewController());
      *&v401[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_cancellables] = MEMORY[0x1E69E7CD0];
      *&v401[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthStore] = v400;
      sub_1B9F0A534(v608, &v401[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_healthExperienceStore]);
      *&v401[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_provenance] = xmmword_1BA4D9CE0;
      sub_1B9F0A534(v608, &v600);
      type metadata accessor for AllTrendsDataSource(0);
      swift_allocObject();
      sub_1B9F0A534(&v600, v617);
      type metadata accessor for AllTrendsHeaderDataSource(0);
      swift_allocObject();
      v402 = v400;
      v403 = sub_1BA297AC0(v402, v617, &v618);

      sub_1B9F0A534(&v600, v617);
      type metadata accessor for AllTrendsSectionedDataSource(0);
      swift_allocObject();
      v404 = v402;
      v405 = sub_1BA296558(v404, v617, MEMORY[0x1E69E7CC0]);
      type metadata accessor for NoDataDataSource(0);
      swift_allocObject();

      v406 = NoDataDataSource.init()();
      sub_1BA1E8DB4(0);
      swift_allocObject();
      v408 = sub_1BA063C54(v407, v405, v406);

      swift_beginAccess();
      v408[5] = sub_1BA29613C;
      v408[6] = 0;

      sub_1B9F1DEA0(0);
      v409 = swift_allocObject();
      *(v409 + 16) = xmmword_1BA4B5460;
      *(v409 + 32) = v403;
      *(v409 + 40) = &protocol witness table for MutableArrayDataSource;
      *(v409 + 48) = v408;
      *(v409 + 56) = &protocol witness table for PrimarySecondaryDataSource<A, B>;
      v410 = CompoundSectionedDataSource.init(_:)(v409);

      __swift_destroy_boxed_opaque_existential_1(&v600);
      *&v401[OBJC_IVAR____TtC18HealthExperienceUI23AllTrendsViewController_trendDataSource] = v410;

      v412 = CompoundDataSourceCollectionViewController.init(dataSource:)(v411);

      __swift_destroy_boxed_opaque_existential_1(v608);
      v413 = [v399 navigationController];
      if (!v413)
      {
        (*(v223 + 8))(v577, v590);

        v243 = 1;
        return (v243 & 1);
      }

      v414 = v413;
      [v413 pushViewController:v412 animated:0];

      v240 = *(v223 + 8);
      v241 = v577;
LABEL_92:
      v242 = v590;
      goto LABEL_18;
    }

    v587 = v172;
    sub_1BA4A3E28();
    v584(v533, v589, v588);
    v457 = sub_1BA4A3E88();
    v458 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v457, v458))
    {
      v459 = swift_slowAlloc();
      v460 = swift_slowAlloc();
      *&v608[0] = v460;
      *v459 = 136315394;
      *(v459 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v608);
      *(v459 + 12) = 2082;
      v461 = v533;
      v462 = v588;
      v584(v586, v533, v588);
      v463 = sub_1BA4A6858();
      v465 = v464;
      v580(v461, v462);
      v466 = sub_1B9F0B82C(v463, v465, v608);

      *(v459 + 14) = v466;
      _os_log_impl(&dword_1B9F07000, v457, v458, "[%s] Could not resolve a health store for %{public}s", v459, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v460, -1, -1);
      MEMORY[0x1BFAF43A0](v459, -1, -1);
    }

    else
    {

      v580(v533, v588);
    }

    v467 = v532;
    v468 = v592;
LABEL_130:
    v587(v467, v468);
    v283 = v591;
LABEL_47:
    (*(v283 + 8))(v577, v590);
    goto LABEL_48;
  }

  if (v196 == *MEMORY[0x1E69A2CB8])
  {
    if ((sub_1BA4A3548() & 1) == 0)
    {
      goto LABEL_26;
    }

    v587 = v172;
    v419 = v592;
    v577 = v195;
    v420 = swift_getObjectType();
    v421 = UIViewController.resolvedHealthStore.getter();
    if (v421)
    {
      v422 = v421;
      v423 = v582;
      UIViewController.resolvedHealthExperienceStore.getter(v608);
      sub_1B9F0A534(v608, &v600);
      v424 = objc_allocWithZone(type metadata accessor for ProfileCharacteristicsWithAutoAvatarImageViewController());
      v425 = v422;
      v426 = sub_1BA06F854(v425, &v600);

      v427 = objc_allocWithZone(MEMORY[0x1E69A4420]);
      v428 = v426;
      v429 = [v427 initWithRootViewController_];
      v430 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:0 action:0];
      sub_1B9F0ADF8(0, &unk_1EDC5E0B0, 0x1E69DC628);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v431 = sub_1BA4A77E8();
      [v430 setPrimaryAction_];

      v432 = [v428 navigationItem];
      [v432 setLeftBarButtonItem_];

      *&v600 = v423;
      v433 = (*(v578 + 24))(v420);
      v243 = 1;
      [v433 presentViewController:v429 animated:1 completion:0];

LABEL_103:
      __swift_destroy_boxed_opaque_existential_1(v608);
      (*(v591 + 8))(v577, v590);
      return (v243 & 1);
    }

    sub_1BA4A3E28();
    v584(v531, v589, v173);
    v476 = sub_1BA4A3E88();
    v477 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v476, v477))
    {
      v478 = swift_slowAlloc();
      v479 = swift_slowAlloc();
      *&v608[0] = v479;
      *v478 = 136315394;
      *(v478 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v608);
      *(v478 + 12) = 2082;
      v480 = v531;
      v584(v586, v531, v173);
      v481 = sub_1BA4A6858();
      v483 = v482;
      v580(v480, v173);
      v484 = sub_1B9F0B82C(v481, v483, v608);

      *(v478 + 14) = v484;
      _os_log_impl(&dword_1B9F07000, v476, v477, "[%s] Could not resolve a health store for %{public}s", v478, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v479, -1, -1);
      MEMORY[0x1BFAF43A0](v478, -1, -1);
    }

    else
    {

      v580(v531, v173);
    }

    v467 = v530;
    goto LABEL_129;
  }

  if (v196 == *MEMORY[0x1E69A2D38])
  {
    goto LABEL_26;
  }

  v587 = v172;
  v419 = v592;
  v577 = v195;
  if (v196 == *MEMORY[0x1E69A2CF8])
  {
    v439 = swift_getObjectType();
    v440 = UIViewController.resolvedHealthStore.getter();
    if (v440)
    {
      v441 = v440;
      v442 = v582;
      *&v608[0] = v582;
      v444 = v567;
      v443 = v568;
      v445 = v569;
      (*(v568 + 104))(v567, *MEMORY[0x1E69A2C40], v569);
      v446 = v578;
      v447 = *(v578 + 8);
      v588 = v439;
      v447(v444, v439, v578);
      (*(v443 + 8))(v444, v445);
      UIViewController.resolvedHealthExperienceStore.getter(v608);
      sub_1BA4A22B8();
      v448 = v441;
      v449 = sub_1BA4A22A8();
      sub_1B9F0A534(v608, &v600);
      v450 = objc_allocWithZone(type metadata accessor for NotificationSettingsViewController());
      v451 = NotificationSettingsViewController.init(healthExperienceStore:)(&v600);
      v452 = objc_allocWithZone(type metadata accessor for ProfileViewController());
      v453 = v448;

      v454 = sub_1BA249DB8(v453, v449, v452);

      v455 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
      v456 = [v455 navigationBar];
      v243 = 1;
      [v456 setPrefersLargeTitles_];

      [v455 pushViewController:v451 animated:0];
      *&v600 = v442;
      v433 = (*(v446 + 24))(v588, v446);
      [v433 presentViewController:v455 animated:1 completion:0];

      goto LABEL_103;
    }

    sub_1BA4A3E28();
    v584(v527, v589, v173);
    v497 = sub_1BA4A3E88();
    v498 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v497, v498))
    {
      v499 = swift_slowAlloc();
      v500 = swift_slowAlloc();
      *&v608[0] = v500;
      *v499 = 136315394;
      *(v499 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v608);
      *(v499 + 12) = 2082;
      v501 = v527;
      v584(v586, v527, v173);
      v502 = sub_1BA4A6858();
      v504 = v503;
      v580(v501, v173);
      v505 = sub_1B9F0B82C(v502, v504, v608);

      *(v499 + 14) = v505;
      _os_log_impl(&dword_1B9F07000, v497, v498, "[%s] Could not resolve a health store for %{public}s", v499, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v500, -1, -1);
      MEMORY[0x1BFAF43A0](v499, -1, -1);
    }

    else
    {

      v580(v527, v173);
    }

    v467 = v526;
LABEL_129:
    v468 = v419;
    goto LABEL_130;
  }

  if (v196 != *MEMORY[0x1E69A2CD8])
  {
    sub_1BA4A3E28();
    v584(v529, v589, v173);
    v485 = sub_1BA4A3E88();
    v486 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v485, v486))
    {
      v487 = swift_slowAlloc();
      v488 = swift_slowAlloc();
      *&v608[0] = v488;
      *v487 = 136446466;
      *&v600 = &type metadata for URLRouter;
      sub_1BA3F7EA4();
      v489 = sub_1BA4A6808();
      v491 = sub_1B9F0B82C(v489, v490, v608);

      *(v487 + 4) = v491;
      *(v487 + 12) = 2080;
      v492 = v529;
      v584(v586, v529, v173);
      v493 = sub_1BA4A6858();
      v495 = v494;
      v580(v492, v173);
      v496 = sub_1B9F0B82C(v493, v495, v608);

      *(v487 + 14) = v496;
      _os_log_impl(&dword_1B9F07000, v485, v486, "[%{public}s]: unknown URL type received: %s", v487, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v488, -1, -1);
      MEMORY[0x1BFAF43A0](v487, -1, -1);
    }

    else
    {

      v580(v529, v173);
    }

    v587(v528, v419);
    v506 = *(v591 + 8);
    v506(v577, v590);
    v506(v588, v590);
    goto LABEL_48;
  }

  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v469 = result;
    v470 = [result isAppleInternalInstall];

    if (v470)
    {
      v471 = v582;
      v620[0] = v582;
      v620[1] = v559;
      v620[2] = v560;
      v620[3] = v561;
      v472 = v578;
      v620[4] = v578;
      sub_1BA3F35DC(v577, v620);
      v473 = swift_getObjectType();
      *&v608[0] = v471;
      v474 = (*(v472 + 24))(v473, v472);
      v619 = &unk_1F387F108;
      v475 = swift_dynamicCastObjCProtocolConditional();
      if (v475)
      {
        [v475 onInternalSettingsGesture];

        v283 = v591;
        goto LABEL_66;
      }

      sub_1BA4A3E28();
      v511 = v474;
      v512 = sub_1BA4A3E88();
      v513 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v512, v513))
      {
        v514 = swift_slowAlloc();
        v515 = swift_slowAlloc();
        *&v608[0] = v515;
        *v514 = 136446466;
        *(v514 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v608);
        *(v514 + 12) = 2080;
        v516 = v511;
        v517 = [v516 description];
        v518 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v520 = v519;

        v521 = sub_1B9F0B82C(v518, v520, v608);

        *(v514 + 14) = v521;
        _os_log_impl(&dword_1B9F07000, v512, v513, "[%{public}s]: %s is not a internal settings feature handler", v514, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v515, -1, -1);
        MEMORY[0x1BFAF43A0](v514, -1, -1);
      }

      else
      {
      }

      v467 = v524;
    }

    else
    {
      sub_1BA4A3E28();
      v507 = sub_1BA4A3E88();
      v508 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v507, v508))
      {
        v509 = swift_slowAlloc();
        v510 = swift_slowAlloc();
        *&v608[0] = v510;
        *v509 = 136446210;
        *(v509 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v608);
        _os_log_impl(&dword_1B9F07000, v507, v508, "[%{public}s]: Internal settings prohibited from being shown on non-internal install", v509, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v510);
        MEMORY[0x1BFAF43A0](v510, -1, -1);
        MEMORY[0x1BFAF43A0](v509, -1, -1);
      }

      v467 = v525;
    }

    goto LABEL_129;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BA3F7B90(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  v8 = *(a3 + 32);
  v34 = a2;
  v35 = v8;
  v9 = sub_1BA4A15D8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BA4A3878();
  v14 = *(v36 - 8);
  v16 = MEMORY[0x1EEE9AC00](v36, v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9, v16);
  sub_1BA4A3828();
  v19 = sub_1BA4A37F8();
  if (v19)
  {
    v21 = v19;
    if ([v19 type] != 1)
    {
      v37[0] = v4;
      v37[1] = v5;
      v37[2] = v7;
      v37[3] = v6;
      v37[4] = v35;
      v31 = static SharingProfileDeepLinkRouter.handleURL(_:rootViewController:profileIdentifier:)(a1, v37, v21);

      goto LABEL_18;
    }
  }

  v38[0] = v4;
  v38[1] = v5;
  v38[2] = v7;
  v38[3] = v6;
  v38[4] = v35;
  if (sub_1BA3F38B8(a1, v34, v38, v20))
  {
    v22 = sub_1BA4A3848();
    v24 = v23;
    v25 = [objc_opt_self() externalSourceAssistantService];
    v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v28 = v27;

    if (v24)
    {
      if (v22 == v26 && v24 == v28)
      {
      }

      else
      {
        v30 = sub_1BA4A8338();

        if ((v30 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      sub_1BA1FA864();
    }

    else
    {
    }

LABEL_17:
    v31 = 1;
    goto LABEL_18;
  }

  v31 = 0;
LABEL_18:
  (*(v14 + 8))(v18, v36);
  return v31 & 1;
}

void sub_1BA3F7E50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BA3F7EA4()
{
  result = qword_1EDC5F908;
  if (!qword_1EDC5F908)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC5F908);
  }

  return result;
}

unint64_t sub_1BA3F7EEC()
{
  result = qword_1EBBF0B10;
  if (!qword_1EBBF0B10)
  {
    sub_1BA4A15D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBF0B10);
  }

  return result;
}

uint64_t sub_1BA3F7F44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA3F7E50(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA3F7FB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA3F7E50(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1BA3F801C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA3F7E50(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA3F80B0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA3F8110()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA3F815C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA3F8214()
{
  sub_1BA142B40(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_categoriesDataSource) + OBJC_IVAR____TtC18HealthExperienceUI27ProfileCategoriesDataSource_profileInformationDataSource) + qword_1EDC6A560);
  v7 = MEMORY[0x1E695BF98];
  sub_1BA3F8490(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
  sub_1BA3F851C(&qword_1EDC6B730, &qword_1EDC6B720, v7, MEMORY[0x1E695BFB0]);
  v12 = sub_1BA4A4F98();
  v8 = MEMORY[0x1E695BED0];
  sub_1BA3F8490(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
  sub_1B9F1B310(0, &qword_1EDC6E1E0, &qword_1EDC6E1F0, MEMORY[0x1E69A3208], MEMORY[0x1E69E6720]);
  sub_1BA3F851C(&qword_1EDC6B740, &qword_1EDC6B738, v8, MEMORY[0x1E695BED8]);
  sub_1BA4A4FE8();
  sub_1BA2FA06C(&qword_1EBBEC7C0, sub_1BA142B40, MEMORY[0x1E695BD60]);
  v9 = sub_1BA4A4F98();

  (*(v3 + 8))(v6, v2);
  return v9;
}

void sub_1BA3F8490(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA3F9DDC(255, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA3F851C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA3F8490(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *ProfileCategoriesViewController.__allocating_init(healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1BA3F9C88(a1, a2, a3);

  return v8;
}

char *ProfileCategoriesViewController.init(healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, void *a3)
{
  v4 = sub_1BA3F9C88(a1, a2, a3);

  return v4;
}

void sub_1BA3F86A8()
{
  v1 = v0;
  sub_1B9F36938();
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  sub_1B9FF515C();

  v4 = [v1 collectionView];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  sub_1B9FF5190();

  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  sub_1B9FF578C();
}

void sub_1BA3F87D4(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ProfileCategoriesViewController();
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F834(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    type metadata accessor for ProfileNavigationBarView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        sub_1BA17C820();
        v11 = v10;
        [v9 contentOffset];
        v13 = v12;
        [v9 adjustedContentInset];
        v15 = v14;

        if (v11 >= v13 + v15)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = 1.0;
        }

        [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
        if (v16 == v17)
        {
        }

        else
        {
          v18 = swift_allocObject();
          *(v18 + 16) = v6;
          *(v18 + 24) = v16;
          v19 = objc_opt_self();
          aBlock[4] = sub_1BA090900;
          aBlock[5] = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B9F0B040;
          aBlock[3] = &block_descriptor_112;
          v20 = _Block_copy(aBlock);
          v21 = v7;

          [v19 animateWithDuration:v20 animations:0.2];

          _Block_release(v20);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BA3F8A74(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ProfileCategoriesViewController();
  objc_msgSendSuper2(&v23, sel_scrollViewDidScroll_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F834(1);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    type metadata accessor for ProfileNavigationBarView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      v7 = v4;
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        sub_1BA17C820();
        v11 = v10;
        [v9 contentOffset];
        v13 = v12;
        [v9 adjustedContentInset];
        v15 = v14;

        if (v11 >= v13 + v15)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = 1.0;
        }

        [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
        if (v16 == v17)
        {
        }

        else
        {
          v18 = swift_allocObject();
          *(v18 + 16) = v6;
          *(v18 + 24) = v16;
          v19 = objc_opt_self();
          aBlock[4] = sub_1BA091E04;
          aBlock[5] = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B9F0B040;
          aBlock[3] = &block_descriptor_7_1;
          v20 = _Block_copy(aBlock);
          v21 = v7;

          [v19 animateWithDuration:v20 animations:0.2];

          _Block_release(v20);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1BA3F8D10()
{
  v24 = sub_1BA4A3678();
  v1 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3F9DDC(0, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v23 - v7;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v23 = sub_1BA4A1318();
  sub_1B9F1B310(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5480;
  v10 = v0;
  v11 = *(**(*&v0[OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_categoriesDataSource] + OBJC_IVAR____TtC18HealthExperienceUI27ProfileCategoriesDataSource_profileInformationDataSource) + 760);

  v11(v12);

  v13 = sub_1BA4A2888();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    sub_1BA3F9E30(v8, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = sub_1BA4A2AE8();
    v16 = v17;
    (*(v14 + 8))(v8, v13);
  }

  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1B9F1BE20();
  if (v16)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (v16)
  {
    v19 = v16;
  }

  *(v9 + 32) = v18;
  *(v9 + 40) = v19;
  sub_1BA4A67D8();

  v20 = v24;
  (*(v1 + 104))(v4, *MEMORY[0x1E69A2C20], v24);
  v21 = [*&v10[OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthStore] profileIdentifier];
  v22 = sub_1BA4A35B8();

  (*(v1 + 8))(v4, v20);
  [v10 setUserActivity_];
}

id sub_1BA3F9138(void *a1)
{
  ObjectType = swift_getObjectType();
  v65 = sub_1BA4A3EA8();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v2);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v61 = &v57 - v7;
  v60 = sub_1BA4A35F8();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3F9DDC(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v57 - v13;
  v15 = sub_1BA4A3678();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x1EEE9AC00](v20, v21).n128_u64[0];
  v24 = &v57 - v23;
  v62 = a1;
  v25 = [a1 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v24, v14, v15);
    (*(v16 + 16))(v19, v24, v15);
    v34 = (*(v16 + 88))(v19, v15);
    v35 = v24;
    if (v34 != *MEMORY[0x1E69A2C20])
    {
      if (v34 != *MEMORY[0x1E69A2C60] && v34 != *MEMORY[0x1E69A2C00])
      {
        v36 = *(v16 + 8);
        v36(v24, v15);
        return (v36)(v19, v15);
      }

      v37 = v59;
      v38 = v60;
      (*(v59 + 104))(v10, *MEMORY[0x1E69A2B98], v60);
      sub_1BA2FA06C(&qword_1EDC6ACD8, MEMORY[0x1E69A2BC0], MEMORY[0x1E69A2BD8]);
      v39 = v62;
      sub_1BA4A70C8();
      (*(v37 + 8))(v10, v38);
      if (*(&v72 + 1))
      {
        v40 = swift_dynamicCast();
        v41 = v61;
        if (v40)
        {
          result = [objc_opt_self() categoryWithID_];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v42 = result;
          static HKTypeGroup.typeGroup(for:)(v71);

          v68[0] = v71[0];
          v68[1] = v71[1];
          v69 = v72;
          v70 = v73;
          v43 = v58;
          v44 = *&v58[OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthStore];
          sub_1B9F0A534(&v58[OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthExperienceStore], v67);
          sub_1B9F0A534(v43 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_pinnedContentManager, v66);
          v45 = objc_allocWithZone(type metadata accessor for CategoryViewController());
          v46 = v44;
          v47 = sub_1BA2F93F4(v68, v46, v67, v66);

          v48 = [v43 navigationController];
          if (v48)
          {
            v49 = v48;
            [v48 pushViewController:v47 animated:0];
          }

          [v47 restoreUserActivityState_];

          return (*(v16 + 8))(v35, v15);
        }
      }

      else
      {
        sub_1B9F23224(v71);
        v41 = v61;
      }

      _s18HealthExperienceUI0A44ChecklistStagedFeatureStatusFeedItemProviderPAAE6logger2os6LoggerVvg_0();
      v50 = sub_1BA4A3E88();
      v51 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v68[0] = v53;
        *v52 = 136446210;
        v71[0] = ObjectType;
        swift_getMetatypeMetadata();
        v54 = sub_1BA4A6808();
        v56 = sub_1B9F0B82C(v54, v55, v68);

        *(v52 + 4) = v56;
        _os_log_impl(&dword_1B9F07000, v50, v51, "[%{public}s]: Category state restoration requested, but no category found!", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x1BFAF43A0](v53, -1, -1);
        MEMORY[0x1BFAF43A0](v52, -1, -1);

        (*(v64 + 8))(v41, v65);
        return (*(v16 + 8))(v35, v15);
      }

      (*(v64 + 8))(v41, v65);
    }

    return (*(v16 + 8))(v35, v15);
  }

  sub_1BA3F9E30(v14, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  sub_1BA4A3E48();
  v26 = sub_1BA4A3E88();
  v27 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v68[0] = v29;
    *v28 = 136446210;
    v71[0] = ObjectType;
    swift_getMetatypeMetadata();
    v30 = sub_1BA4A6808();
    v32 = sub_1B9F0B82C(v30, v31, v68);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1B9F07000, v26, v27, "[%{public}s] user activity passed in does not have a valid activity type", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1BFAF43A0](v29, -1, -1);
    MEMORY[0x1BFAF43A0](v28, -1, -1);
  }

  return (*(v64 + 8))(v4, v65);
}

id ProfileCategoriesViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

void sub_1BA3F9AC4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthExperienceStore));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_pinnedContentManager));
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView);
}

id ProfileCategoriesViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProfileCategoriesViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_1BA3F9C88(void *a1, void *a2, void *a3)
{
  v4 = v3;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView) = 0;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthStore;
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthStore) = a1;
  sub_1B9F0A534(a2, v4 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_providedHealthExperienceStore);
  sub_1B9F0A534(a3, v4 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_pinnedContentManager);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v9 = a1;
  v10 = sub_1BA4A1B68();
  v11 = *(v4 + v8);
  sub_1B9F0A534(a2, v16);
  type metadata accessor for ProfileCategoriesDataSource(0);
  swift_allocObject();
  v12 = sub_1BA03A58C(v10, v11, v16);

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_categoriesDataSource) = v12;

  v14 = CompoundDataSourceCollectionViewController.init(dataSource:)(v13);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

void sub_1BA3F9DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA3F9E30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA3F9DDC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static DataSourceBuilder.buildExpression<A>(_:)()
{
  nullsub_1();

  return swift_unknownObjectRetain();
}

uint64_t static DataSourceBuilder.buildBlock<A>(_:)()
{
  nullsub_1();

  return swift_unknownObjectRetain();
}

uint64_t sub_1BA3FA020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  type metadata accessor for _ConditionalDataSource(0, &v9);
  v9 = a1;
  LOBYTE(v10) = a6;
  swift_unknownObjectRetain();
  return _ConditionalDataSource.__allocating_init(storage:)(&v9);
}

uint64_t sub_1BA3FA08C(uint64_t a1)
{
  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();

  return CompoundSectionedDataSource.init(_:)(v1);
}

uint64_t static DataSourceBuilder.buildBlock()()
{
  type metadata accessor for EmptyDataSource(0);
  swift_allocObject();
  return EmptyDataSource.init()();
}

uint64_t static DataSourceBuilder.buildBlock<each A>(_:)(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
    v6 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v7 = (a4 & 0xFFFFFFFFFFFFFFFELL);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *v6;
      v10 = *v7;
      v11 = **a1;
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_1B9F1E00C();
        v16 = v8;
      }

      v13 = *(v8 + 16);
      if (v13 >= *(v8 + 24) >> 1)
      {
        v14 = *(v8 + 16);
        v8 = sub_1B9F1E00C();
        v13 = v14;
        v16 = v8;
      }

      sub_1BA1BA008(v13, v11, &v16, v9, v10);
      ++a1;
      ++v7;
      ++v6;
      --v4;
    }

    while (v4);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for CompoundSectionedDataSource(0);
  swift_allocObject();
  return CompoundSectionedDataSource.init(_:)(v8);
}

uint64_t static DataSourceBuilder.buildOptional<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = a2;
    v7 = type metadata accessor for EmptyDataSource(255);
    v8 = a3;
    v9 = &protocol witness table for EmptyDataSource;
    type metadata accessor for _ConditionalDataSource(0, &v6);
    v6 = a1;
    LOBYTE(v7) = 0;
    swift_unknownObjectRetain();
  }

  else
  {
    v6 = a2;
    v7 = type metadata accessor for EmptyDataSource(255);
    v8 = a3;
    v9 = &protocol witness table for EmptyDataSource;
    type metadata accessor for _ConditionalDataSource(0, &v6);
    swift_allocObject();
    v6 = EmptyDataSource.init()();
    LOBYTE(v7) = 1;
  }

  return _ConditionalDataSource.__allocating_init(storage:)(&v6);
}

uint64_t sub_1BA3FA330(uint64_t a1, uint64_t a2)
{
  v130 = a1;
  v2 = *a2;
  v132 = *(a2 + 32);
  sub_1BA3FFB10(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v124 = &v111 - v5;
  sub_1BA3FFCF4(0, &qword_1EBBEA760, MEMORY[0x1E69E6530], MEMORY[0x1E695C000]);
  v116 = v6;
  v114 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v112 = &v111 - v8;
  sub_1BA02DF24(0);
  v117 = v9;
  v115 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v113 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E124(0);
  v120 = v12;
  v119 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v118 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E1C8(0);
  v123 = v15;
  v122 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v121 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E25C(0);
  v127 = v18;
  v126 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v125 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA4A15D8();
  v129 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v111 - v27;
  v29 = sub_1BA4A3EA8();
  v30 = *(v29 - 8);
  v133 = v29;
  v134 = v30;
  MEMORY[0x1EEE9AC00](v29, v31);
  v111 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v131 = &v111 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v128 = &v111 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v111 - v41;
  v43 = sub_1BA4A3678();
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v111 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v49 = UIViewController.resolvedHealthStore.getter();
  if (!v49)
  {
    sub_1BA4A3E28();
    v65 = v129;
    v66 = *(v129 + 16);
    v66(v28, v130, v21);
    v67 = sub_1BA4A3E88();
    v68 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v138[0] = v132;
      *v69 = 136315394;
      *(v69 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v138);
      *(v69 + 12) = 2082;
      v66(v24, v28, v21);
      v70 = sub_1BA4A6858();
      v72 = v71;
      (*(v65 + 8))(v28, v21);
      v73 = sub_1B9F0B82C(v70, v72, v138);

      *(v69 + 14) = v73;
      _os_log_impl(&dword_1B9F07000, v67, v68, "[%s] Could not resolve a health store for %{public}s", v69, 0x16u);
      v74 = v132;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v74, -1, -1);
      MEMORY[0x1BFAF43A0](v69, -1, -1);
    }

    else
    {

      (*(v65 + 8))(v28, v21);
    }

    (*(v134 + 8))(v42, v133);
    return 0;
  }

  v50 = v49;
  v138[0] = v2;
  (*(v44 + 104))(v47, *MEMORY[0x1E69A2C38], v43);
  v51 = v132;
  (*(v132 + 8))(v47, ObjectType, v132);
  (*(v44 + 8))(v47, v43);
  v138[0] = v2;
  v52 = (*(v51 + 24))(ObjectType, v51);
  type metadata accessor for SharingOverviewViewController();
  v53 = swift_dynamicCastClass();
  if (!v53)
  {

    v75 = v128;
    sub_1BA4A3E28();
    v76 = v2;
    v77 = sub_1BA4A3E88();
    v78 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v138[0] = v80;
      *v79 = 136315394;
      *(v79 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v138);
      *(v79 + 12) = 2082;
      *&v135[0] = v76;
      WitnessTable = swift_getWitnessTable();
      v82 = sub_1BA02E38C(v135, ObjectType, WitnessTable);
      v84 = sub_1B9F0B82C(v82, v83, v138);

      *(v79 + 14) = v84;
      _os_log_impl(&dword_1B9F07000, v77, v78, "[%s] View controller is not SharingOverviewViewController: %{public}s", v79, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v80, -1, -1);
      MEMORY[0x1BFAF43A0](v79, -1, -1);
    }

    else
    {
    }

    (*(v134 + 8))(v75, v133);
    return 0;
  }

  v54 = v53;
  v55 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1BA119178(v54 + v55, v138);
  v56 = v138[3];
  sub_1BA3FFC2C(v138);
  if (!v56)
  {
    [v54 viewDidLoad];
  }

  v57 = sub_1BA0030EC();
  v58 = v131;
  if (v59)
  {
    v60 = v111;
    sub_1BA4A3E28();
    v61 = sub_1BA4A3E88();
    v62 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v138[0] = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_1B9F0B82C(0x6574756F524C5255, 0xE900000000000072, v138);
      _os_log_impl(&dword_1B9F07000, v61, v62, "[%s] Could not get number of outgoing relationships", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1BFAF43A0](v64, -1, -1);
      MEMORY[0x1BFAF43A0](v63, -1, -1);
    }

    else
    {
    }

    (*(v134 + 8))(v60, v133);
    return 0;
  }

  v85 = v57;
  UIViewController.resolvedHealthExperienceStore.getter(v138);
  sub_1BA4A3DD8();
  v86 = sub_1BA4A3E88();
  v87 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&v135[0] = v89;
    *v88 = 136315138;
    *(v88 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, v135);
    _os_log_impl(&dword_1B9F07000, v86, v87, "[%s]: Checking criteria for Sharing onboaring", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v89);
    MEMORY[0x1BFAF43A0](v89, -1, -1);
    MEMORY[0x1BFAF43A0](v88, -1, -1);
  }

  (*(v134 + 8))(v58, v133);
  *&v135[0] = sub_1BA02E420();
  v137 = v85;
  v90 = v112;
  sub_1BA4A4E78();
  sub_1BA4A4D08();
  sub_1BA02DF60(0);
  sub_1BA02E060();
  sub_1BA3FFBE4(&qword_1EBBEA0F8, sub_1BA02DF60, MEMORY[0x1E695BED8]);
  v91 = v113;
  v92 = v116;
  sub_1BA4A5168();
  (*(v114 + 8))(v90, v92);
  sub_1BA3FFBE4(&qword_1EBBEA7B0, sub_1BA02DF24, MEMORY[0x1E695BE40]);
  v93 = v117;
  v94 = sub_1BA4A4F98();
  (*(v115 + 8))(v91, v93);
  v137 = v94;
  v95 = v50;
  v136 = sub_1BA2B1C48(v50);
  v96 = v118;
  sub_1BA4A4AB8();
  sub_1BA3FFBE4(&qword_1EBBEA798, sub_1BA02E124, MEMORY[0x1E695BC70]);
  v97 = v121;
  v98 = v120;
  sub_1BA4A5038();
  (*(v119 + 8))(v96, v98);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v99 = sub_1BA4A7308();
  *&v135[0] = v99;
  v100 = sub_1BA4A72A8();
  v101 = v124;
  (*(*(v100 - 8) + 56))(v124, 1, 1, v100);
  sub_1BA3FFBE4(&qword_1EBBEA7A8, sub_1BA02E1C8, MEMORY[0x1E695BDB8]);
  sub_1B9F3DC80();
  v102 = v125;
  v103 = v123;
  sub_1BA4A50A8();
  sub_1BA3FFC98(v101, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  (*(v122 + 8))(v97, v103);

  v104 = swift_allocObject();
  *(v104 + 16) = v54;
  *(v104 + 24) = v54;
  sub_1B9F0A534(v138, v135);
  v105 = swift_allocObject();
  *(v105 + 16) = v54;
  *(v105 + 24) = v54;
  *(v105 + 32) = v95;
  sub_1B9F25598(v135, v105 + 40);
  *(v105 + 80) = 256;
  v106 = swift_allocObject();
  *(v106 + 16) = sub_1BA3FFE30;
  *(v106 + 24) = v105;
  sub_1BA3FFBE4(&qword_1EBBEA7B8, sub_1BA02E25C, MEMORY[0x1E695BE98]);
  v107 = v52;
  v108 = v95;
  v109 = v127;
  sub_1BA4A4F88();

  (*(v126 + 8))(v102, v109);
  __swift_destroy_boxed_opaque_existential_1(v138);
  return 1;
}

uint64_t sub_1BA3FB398(uint64_t a1, uint64_t a2)
{
  v130 = a1;
  v2 = *a2;
  v132 = *(a2 + 32);
  sub_1BA3FFB10(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v124 = &v111 - v5;
  sub_1BA3FFCF4(0, &qword_1EBBEA760, MEMORY[0x1E69E6530], MEMORY[0x1E695C000]);
  v116 = v6;
  v114 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v112 = &v111 - v8;
  sub_1BA02DF24(0);
  v117 = v9;
  v115 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v113 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E124(0);
  v120 = v12;
  v119 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v118 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E1C8(0);
  v123 = v15;
  v122 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v121 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA02E25C(0);
  v127 = v18;
  v126 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v125 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BA4A15D8();
  v129 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v111 - v27;
  v29 = sub_1BA4A3EA8();
  v30 = *(v29 - 8);
  v133 = v29;
  v134 = v30;
  MEMORY[0x1EEE9AC00](v29, v31);
  v111 = &v111 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v131 = &v111 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v128 = &v111 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v111 - v41;
  v43 = sub_1BA4A3678();
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v111 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v49 = UIViewController.resolvedHealthStore.getter();
  if (!v49)
  {
    sub_1BA4A3E28();
    v65 = v129;
    v66 = *(v129 + 16);
    v66(v28, v130, v21);
    v67 = sub_1BA4A3E88();
    v68 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v138[0] = v132;
      *v69 = 136315394;
      *(v69 + 4) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4D9DB0, v138);
      *(v69 + 12) = 2082;
      v66(v24, v28, v21);
      v70 = sub_1BA4A6858();
      v72 = v71;
      (*(v65 + 8))(v28, v21);
      v73 = sub_1B9F0B82C(v70, v72, v138);

      *(v69 + 14) = v73;
      _os_log_impl(&dword_1B9F07000, v67, v68, "[%s] Could not resolve a health store for %{public}s", v69, 0x16u);
      v74 = v132;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v74, -1, -1);
      MEMORY[0x1BFAF43A0](v69, -1, -1);
    }

    else
    {

      (*(v65 + 8))(v28, v21);
    }

    (*(v134 + 8))(v42, v133);
    return 0;
  }

  v50 = v49;
  v138[0] = v2;
  (*(v44 + 104))(v47, *MEMORY[0x1E69A2C38], v43);
  v51 = v132;
  (*(v132 + 8))(v47, ObjectType, v132);
  (*(v44 + 8))(v47, v43);
  v138[0] = v2;
  v52 = (*(v51 + 24))(ObjectType, v51);
  type metadata accessor for SharingOverviewViewController();
  v53 = swift_dynamicCastClass();
  if (!v53)
  {

    v75 = v128;
    sub_1BA4A3E28();
    v76 = v2;
    v77 = sub_1BA4A3E88();
    v78 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v138[0] = v80;
      *v79 = 136315394;
      *(v79 + 4) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4D9DB0, v138);
      *(v79 + 12) = 2082;
      *&v135[0] = v76;
      WitnessTable = swift_getWitnessTable();
      v82 = sub_1BA02E38C(v135, ObjectType, WitnessTable);
      v84 = sub_1B9F0B82C(v82, v83, v138);

      *(v79 + 14) = v84;
      _os_log_impl(&dword_1B9F07000, v77, v78, "[%s] View controller is not SharingOverviewViewController: %{public}s", v79, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v80, -1, -1);
      MEMORY[0x1BFAF43A0](v79, -1, -1);
    }

    else
    {
    }

    (*(v134 + 8))(v75, v133);
    return 0;
  }

  v54 = v53;
  v55 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceProvider;
  swift_beginAccess();
  sub_1BA119178(v54 + v55, v138);
  v56 = v138[3];
  sub_1BA3FFC2C(v138);
  if (!v56)
  {
    [v54 viewDidLoad];
  }

  v57 = sub_1BA0030EC();
  v58 = v131;
  if (v59)
  {
    v60 = v111;
    sub_1BA4A3E28();
    v61 = sub_1BA4A3E88();
    v62 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v138[0] = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4D9DB0, v138);
      _os_log_impl(&dword_1B9F07000, v61, v62, "[%s] Could not get number of outgoing relationships", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      MEMORY[0x1BFAF43A0](v64, -1, -1);
      MEMORY[0x1BFAF43A0](v63, -1, -1);
    }

    else
    {
    }

    (*(v134 + 8))(v60, v133);
    return 0;
  }

  v85 = v57;
  UIViewController.resolvedHealthExperienceStore.getter(v138);
  sub_1BA4A3DD8();
  v86 = sub_1BA4A3E88();
  v87 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&v135[0] = v89;
    *v88 = 136315138;
    *(v88 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4E0E60, v135);
    _os_log_impl(&dword_1B9F07000, v86, v87, "[%s]: Checking criteria for Sharing onboaring", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v89);
    MEMORY[0x1BFAF43A0](v89, -1, -1);
    MEMORY[0x1BFAF43A0](v88, -1, -1);
  }

  (*(v134 + 8))(v58, v133);
  *&v135[0] = sub_1BA02E420();
  v137 = v85;
  v90 = v112;
  sub_1BA4A4E78();
  sub_1BA4A4D08();
  sub_1BA02DF60(0);
  sub_1BA02E060();
  sub_1BA3FFBE4(&qword_1EBBEA0F8, sub_1BA02DF60, MEMORY[0x1E695BED8]);
  v91 = v113;
  v92 = v116;
  sub_1BA4A5168();
  (*(v114 + 8))(v90, v92);
  sub_1BA3FFBE4(&qword_1EBBEA7B0, sub_1BA02DF24, MEMORY[0x1E695BE40]);
  v93 = v117;
  v94 = sub_1BA4A4F98();
  (*(v115 + 8))(v91, v93);
  v137 = v94;
  v95 = v50;
  v136 = sub_1BA2B1C48(v50);
  v96 = v118;
  sub_1BA4A4AB8();
  sub_1BA3FFBE4(&qword_1EBBEA798, sub_1BA02E124, MEMORY[0x1E695BC70]);
  v97 = v121;
  v98 = v120;
  sub_1BA4A5038();
  (*(v119 + 8))(v96, v98);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v99 = sub_1BA4A7308();
  *&v135[0] = v99;
  v100 = sub_1BA4A72A8();
  v101 = v124;
  (*(*(v100 - 8) + 56))(v124, 1, 1, v100);
  sub_1BA3FFBE4(&qword_1EBBEA7A8, sub_1BA02E1C8, MEMORY[0x1E695BDB8]);
  sub_1B9F3DC80();
  v102 = v125;
  v103 = v123;
  sub_1BA4A50A8();
  sub_1BA3FFC98(v101, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  (*(v122 + 8))(v97, v103);

  v104 = swift_allocObject();
  *(v104 + 16) = v54;
  *(v104 + 24) = v54;
  sub_1B9F0A534(v138, v135);
  v105 = swift_allocObject();
  *(v105 + 16) = v54;
  *(v105 + 24) = v54;
  *(v105 + 32) = v95;
  sub_1B9F25598(v135, v105 + 40);
  *(v105 + 80) = 256;
  v106 = swift_allocObject();
  *(v106 + 16) = sub_1BA3FFC94;
  *(v106 + 24) = v105;
  sub_1BA3FFBE4(&qword_1EBBEA7B8, sub_1BA02E25C, MEMORY[0x1E695BE98]);
  v107 = v52;
  v108 = v95;
  v109 = v127;
  sub_1BA4A4F88();

  (*(v126 + 8))(v102, v109);
  __swift_destroy_boxed_opaque_existential_1(v138);
  return 1;
}

void sub_1BA3FC404()
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v9 = sub_1BA4A8108();

  if (v9 > 1)
  {
    v12 = v0;
    sub_1BA4A3E28();
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6F98();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B9F07000, v13, v14, "Encountered an activity type that we didn't recognize when migrating to the new NSUserActivity format, assuming it's new and passing along", v15, 2u);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v16 = v12;
  }

  else
  {
    v10 = sub_1BA3FC600();
    if (!v1)
    {
      v11 = sub_1BA3FC770(v10);

      sub_1BA3FC8F4(v11);
    }
  }
}

uint64_t sub_1BA3FC600()
{
  sub_1B9F0ADF8(0, &qword_1EDC6B618, 0x1E696B090);
  v0 = sub_1BA4A36B8();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_1BA4A7D58();
  if (!*(v1 + 16) || (v2 = sub_1B9FDA8E4(v6), (v3 & 1) == 0))
  {

    sub_1B9FDC768(v6);
LABEL_8:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_9;
  }

  sub_1B9F0AD9C(*(v1 + 56) + 32 * v2, &v7);
  sub_1B9FDC768(v6);

  if (!*(&v8 + 1))
  {
LABEL_9:
    sub_1B9F23224(&v7);
    goto LABEL_10;
  }

  sub_1BA3737D0(0);
  if (swift_dynamicCast())
  {
    return v6[0];
  }

LABEL_10:
  sub_1BA3734D4();
  swift_allocError();
  *v5 = 0xD000000000000049;
  v5[1] = 0x80000001BA5030D0;
  return swift_willThrow();
}

char *sub_1BA3FC770(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 < 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = v1 - 1;
  v4 = a1 + 40;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {

    sub_1BA3FD71C(v6);
    v8 = v7;

    if (!v8)
    {
      break;
    }

    sub_1BA3FD71C(v9);
    v11 = v10;

    if (!v11)
    {

      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1BA280C6C(0, *(v5 + 2) + 1, 1, v5);
    }

    v13 = *(v5 + 2);
    v12 = *(v5 + 3);
    if (v13 >= v12 >> 1)
    {
      v5 = sub_1BA280C6C((v12 > 1), v13 + 1, 1, v5);
    }

    v2 += 2;
    *(v5 + 2) = v13 + 1;
    v14 = &v5[16 * v13];
    *(v14 + 4) = v8;
    *(v14 + 5) = v11;
    v4 += 16;
    if (v2 >= v3)
    {
      return v5;
    }
  }

  v5 = 0x80000001BA503080;
  sub_1BA3734D4();
  swift_allocError();
  *v15 = 0xD00000000000004ELL;
  v15[1] = 0x80000001BA503080;
  swift_willThrow();
  return v5;
}

void sub_1BA3FC8F4(uint64_t a1)
{
  v2 = sub_1BA4A35F8();
  v3 = *(v2 - 8);
  v137 = v2;
  v138 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v136 = (&v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v132 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v134 = (&v132 - v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  v135 = &v132 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v132 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v132 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v132 - v26;
  v28 = sub_1BA4A3678();
  v140 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v132 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v132 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v141 = &v132 - v38;
  v149 = a1;

  v39 = sub_1BA372E3C();
  if (v39 == 5)
  {

    v146 = 0;
    v147 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v146 = 0xD000000000000017;
    v147 = 0x80000001BA502F30;
    if (*(a1 + 16))
    {
      v41 = 0x6E676F6365726E75;
    }

    else
    {
      v41 = 0x6E756F6620746F4ELL;
    }

    if (*(a1 + 16))
    {
      v42 = 0xEC00000064657A69;
    }

    else
    {
      v42 = 0xE900000000000064;
    }

    MEMORY[0x1BFAF1350](v41, v42);

    v43 = v146;
    v44 = v147;
    sub_1BA3734D4();
    swift_allocError();
    *v45 = v43;
    v45[1] = v44;
    goto LABEL_9;
  }

  v46 = v39;
  v133 = v40;
  v47 = sub_1B9FDB524(MEMORY[0x1E69E7CC0]);
  v148 = v47;
  if (v46 <= 1u)
  {
    if (v46)
    {

      v61 = v140;
      v77 = v141;
      (*(v140 + 104))(v141, *MEMORY[0x1E69A2C60], v28);
      v78 = v137;
      v79 = v138;
      (*(v138 + 104))(v27, *MEMORY[0x1E69A2B98], v137);
      v80 = sub_1BA4A35E8();
      v82 = v81;
      (*(v79 + 8))(v27, v78);
      *&v144 = v80;
      *(&v144 + 1) = v82;
      sub_1BA4A7D58();
      v145 = MEMORY[0x1E69E6530];
      *&v144 = v133;
      sub_1B9F46920(&v144, v143);
      v83 = v148;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v142 = v83;
      sub_1B9FF1AE4(v143, &v146, isUniquelyReferenced_nonNull_native);
      sub_1B9FDC768(&v146);
      v148 = v142;
    }

    else
    {

      v60 = v139;
      sub_1BA3FDB00(v133, v35);
      v61 = v140;
      if (v60)
      {
        goto LABEL_20;
      }

      v77 = v141;
      (*(v140 + 32))(v141, v35, v28);
    }

    goto LABEL_35;
  }

  v132 = v47;
  if (v46 == 2)
  {

    v62 = v140;
    (*(v140 + 104))(v141, *MEMORY[0x1E69A2C00], v28);
    v63 = *MEMORY[0x1E69A2B88];
    v65 = v137;
    v64 = v138;
    v136 = *(v138 + 104);
    (v136)(v23, v63, v137);
    v66 = sub_1BA4A35E8();
    v68 = v67;
    v138 = *(v64 + 8);
    (v138)(v23, v65);
    *&v144 = v66;
    *(&v144 + 1) = v68;
    sub_1BA4A7D58();
    v69 = v133;
    v70 = v139;
    sub_1BA3FD988(v133);
    if (v70)
    {
      sub_1B9FDC768(&v146);
      (*(v62 + 8))(v141, v28);
      goto LABEL_20;
    }

    v85 = v71;
    v86 = sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
    v145 = v86;
    *&v144 = v85;
    sub_1B9F46920(&v144, v143);
    v87 = v148;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v142 = v87;
    sub_1B9FF1AE4(v143, &v146, v88);
    sub_1B9FDC768(&v146);
    v148 = v142;
    (v136)(v9, *MEMORY[0x1E69A2B98], v65);
    v89 = sub_1BA4A35E8();
    v91 = v90;
    (v138)(v9, v65);
    *&v144 = v89;
    *(&v144 + 1) = v91;
    sub_1BA4A7D58();
    v92 = sub_1BA3736A0(v69);
    if (v92)
    {
      v145 = v86;
LABEL_31:
      *&v144 = v92;
      sub_1B9F46920(&v144, v143);
      v101 = v148;
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v142 = v101;
      sub_1B9FF1AE4(v143, &v146, v102);
      sub_1B9FDC768(&v146);
      v148 = v142;
LABEL_34:
      v61 = v140;
      v77 = v141;
      goto LABEL_35;
    }

LABEL_33:
    sub_1BA0F6614(&v146, v143);
    sub_1B9F23224(v143);
    sub_1B9FDC768(&v146);
    goto LABEL_34;
  }

  v48 = v139;
  v49 = v28;
  if (v46 == 3)
  {

    v51 = v140;
    v50 = v141;
    (*(v140 + 104))(v141, *MEMORY[0x1E69A2C00], v49);
    v52 = *MEMORY[0x1E69A2B88];
    v53 = v138;
    v135 = v49;
    v54 = v137;
    v134 = *(v138 + 104);
    v134(v19, v52, v137);
    v55 = sub_1BA4A35E8();
    v57 = v56;
    v138 = *(v53 + 8);
    (v138)(v19, v54);
    *&v144 = v55;
    *(&v144 + 1) = v57;
    sub_1BA4A7D58();
    v58 = v133;
    sub_1BA3FD988(v133);
    if (v48)
    {
      sub_1B9FDC768(&v146);
      (*(v51 + 8))(v50, v135);
LABEL_20:

      return;
    }

    v28 = v135;
    v93 = v59;
    v94 = sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
    v145 = v94;
    *&v144 = v93;
    sub_1B9F46920(&v144, v143);
    v95 = v148;
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v142 = v95;
    sub_1B9FF1AE4(v143, &v146, v96);
    sub_1B9FDC768(&v146);
    v148 = v142;
    v97 = v136;
    v134(v136, *MEMORY[0x1E69A2B98], v54);
    v98 = sub_1BA4A35E8();
    v100 = v99;
    (v138)(v97, v54);
    *&v144 = v98;
    *(&v144 + 1) = v100;
    sub_1BA4A7D58();
    v92 = sub_1BA3736A0(v58);
    if (v92)
    {
      v145 = v94;
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  v72 = sub_1BA372E3C();
  v74 = v73;

  v75 = v138;
  if (v72 == 5)
  {
    goto LABEL_44;
  }

  if (v72 <= 1u)
  {
    goto LABEL_40;
  }

  if (v72 == 2)
  {
    v76 = "_HealthPushCategoryActivityKey";
  }

  else
  {
    if (v72 != 3)
    {
      goto LABEL_40;
    }

    v76 = "PushDataActivityKey";
  }

  if ((v76 | 0x8000000000000000) != 0x80000001BA4E1310)
  {
LABEL_40:
    v103 = sub_1BA4A8338();

    if (v103)
    {
      goto LABEL_41;
    }

LABEL_44:

    sub_1BA3734D4();
    swift_allocError();
    *v105 = 0xD000000000000076;
    v105[1] = 0x80000001BA502F50;
LABEL_9:
    swift_willThrow();
    return;
  }

LABEL_41:
  if (v133 == 2)
  {
    v136 = v74;
    v104 = MEMORY[0x1E69A2C10];
  }

  else
  {
    if (v133 != 1)
    {
      v146 = 0;
      v147 = 0xE000000000000000;
      v115 = v133;
      sub_1BA4A7DF8();
      MEMORY[0x1BFAF1350](0xD000000000000042, 0x80000001BA502FD0);
      *&v144 = v115;
      v116 = sub_1BA4A82D8();
      MEMORY[0x1BFAF1350](v116);

      v117 = v146;
      v118 = v147;
      sub_1BA3734D4();
      swift_allocError();
      *v119 = v117;
      v119[1] = v118;
      swift_willThrow();
      goto LABEL_20;
    }

    v136 = v74;
    v104 = MEMORY[0x1E69A2C08];
  }

  v106 = v140;
  (*(v140 + 104))(v31, *v104, v49);
  (*(v106 + 32))(v141, v31, v49);
  v107 = *MEMORY[0x1E69A2B88];
  v108 = v135;
  v109 = v137;
  v133 = *(v75 + 104);
  v133(v135, v107, v137);
  v110 = sub_1BA4A35E8();
  v112 = v111;
  v138 = *(v75 + 8);
  (v138)(v108, v109);
  *&v144 = v110;
  *(&v144 + 1) = v112;
  sub_1BA4A7D58();
  v113 = v136;
  sub_1BA3FD988(v136);
  if (v48)
  {
    sub_1B9FDC768(&v146);
    (*(v106 + 8))(v141, v49);
    goto LABEL_20;
  }

  v120 = v114;
  v135 = v49;
  v121 = sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
  v145 = v121;
  *&v144 = v120;
  sub_1B9F46920(&v144, v143);
  v122 = v148;
  v123 = swift_isUniquelyReferenced_nonNull_native();
  v142 = v122;
  sub_1B9FF1AE4(v143, &v146, v123);
  sub_1B9FDC768(&v146);
  v148 = v142;
  v124 = v134;
  v125 = v137;
  v133(v134, *MEMORY[0x1E69A2B98], v137);
  v126 = sub_1BA4A35E8();
  v128 = v127;
  (v138)(v124, v125);
  *&v144 = v126;
  *(&v144 + 1) = v128;
  sub_1BA4A7D58();
  v129 = sub_1BA3736A0(v113);
  if (v129)
  {
    v145 = v121;
    *&v144 = v129;
    sub_1B9F46920(&v144, v143);
    v130 = v148;
    v131 = swift_isUniquelyReferenced_nonNull_native();
    v142 = v130;
    sub_1B9FF1AE4(v143, &v146, v131);
    sub_1B9FDC768(&v146);
    v148 = v142;
  }

  else
  {
    sub_1BA0F6614(&v146, v143);
    sub_1B9F23224(v143);
    sub_1B9FDC768(&v146);
  }

  v61 = v140;
  v77 = v141;
  v28 = v135;
LABEL_35:
  sub_1BA4A3658();
  sub_1B9F0ADF8(0, &qword_1EDC6B618, 0x1E696B090);
  sub_1BA4A36C8();
  (*(v61 + 8))(v77, v28);
}

void sub_1BA3FD71C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1BA3FFD44(0, &qword_1EDC5DFE0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6EC8]);
    v2 = sub_1BA4A8098();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_1B9F0AD9C(*(a1 + 56) + 32 * v10, v24);
    *&v23 = v12;
    *(&v23 + 1) = v13;
    v21[2] = v23;
    v22[0] = v24[0];
    v22[1] = v24[1];
    v14 = v23;
    sub_1B9F46920(v22, v21);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v15 = sub_1B9F24A34(v14, *(&v14 + 1));
    if (v16)
    {
      *(v2[6] + 16 * v15) = v14;
      v8 = v15;

      *(v2[7] + 8 * v8) = v20;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v2[6] + 16 * v15) = v14;
      *(v2[7] + 8 * v15) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v9 = v7;
  }
}

void sub_1BA3FD988(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
  v3 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v6 = [v4 displayTypeWithIdentifier_];

    if (v6)
    {
      v7 = [v6 objectType];
      v8 = [v7 code];

      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      return;
    }
  }

  sub_1BA3734D4();
  swift_allocError();
  *v9 = 0xD000000000000014;
  v9[1] = 0x80000001BA503060;
  swift_willThrow();
}

uint64_t sub_1BA3FDB00@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v3 = MEMORY[0x1E69A2C18];
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v3 = MEMORY[0x1E69A2C70];
      goto LABEL_11;
    }

LABEL_8:
    sub_1BA3734D4();
    swift_allocError();
    *v4 = 0xD000000000000033;
    v4[1] = 0x80000001BA503020;
    return swift_willThrow();
  }

  if (!a1)
  {
    v3 = MEMORY[0x1E69A2C58];
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v3 = MEMORY[0x1E69A2BF0];
LABEL_11:
  v6 = *v3;
  v7 = sub_1BA4A3678();
  return (*(*(v7 - 8) + 104))(a2, v6, v7);
}

uint64_t static UserActivityRouter.handleUserActivity(rootViewController:userActivity:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v47 = *a1;
  v44 = v3;
  v4 = a1[3];
  v45 = a1[2];
  v46 = v4;
  v48 = a1[4];
  sub_1BA3FFB10(0, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v43 - v11;
  v13 = sub_1BA4A3678();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v43 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  v25 = sub_1BA4A70A8();
  if (v25)
  {
    v26 = v25;
    if ([v25 type] == 3)
    {
      v27 = v47;
      ObjectType = swift_getObjectType();
      v49 = v27;
      (*(v14 + 104))(v24, *MEMORY[0x1E69A2C48], v13);
      v29 = v48;
      (*(v48 + 8))(v24, ObjectType, v48);
      (*(v14 + 8))(v24, v13);
      v49 = v27;
      v30 = (*(v29 + 24))(ObjectType, v29);
      [v30 restoreUserActivityState_];

      v31 = 1;
      return v31 & 1;
    }

    if ([v26 type] == 1)
    {
    }

    else
    {
      *&v50 = v47;
      *(&v50 + 1) = v44;
      v51 = v45;
      v52 = v46;
      v53 = v48;
      v32 = sub_1BA32FD64(a2, &v50, v26);

      if (v32)
      {
        v31 = 1;
        return v31 & 1;
      }
    }
  }

  v33 = [a2 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  v34 = *(v14 + 48);
  if (v34(v12, 1, v13) == 1)
  {
    sub_1BA3FFC98(v12, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    sub_1BA3FE69C();
    if (v35)
    {
      v36 = v35;
      sub_1B9F0ADF8(0, &qword_1EDC6B618, 0x1E696B090);
      v37 = sub_1BA4A36D8();

      v38 = [v37 activityType];
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

      sub_1BA4A3688();
      if (v34(v8, 1, v13) != 1)
      {
        v41 = v43;
        (*(v14 + 32))(v43, v8, v13);
        *&v58 = v47;
        *(&v58 + 1) = v44;
        v59 = v45;
        v60 = v46;
        v61 = v48;
        v31 = sub_1BA3FE464(&v58, v37, v41);

        (*(v14 + 8))(v41, v13);
        return v31 & 1;
      }

      sub_1BA3FFC98(v8, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
    }

    sub_1B9F0ADF8(0, &qword_1EDC6B618, 0x1E696B090);
    v39 = sub_1BA4A36D8();
    v62[0] = v47;
    v62[1] = v44;
    v62[2] = v45;
    v62[3] = v46;
    v62[4] = v48;
    v31 = sub_1BA3FE8A0(v62, v39);
  }

  else
  {
    (*(v14 + 32))(v20, v12, v13);
    sub_1B9F0ADF8(0, &qword_1EDC6B618, 0x1E696B090);
    v40 = sub_1BA4A36D8();
    *&v54 = v47;
    *(&v54 + 1) = v44;
    v55 = v45;
    v56 = v46;
    v57 = v48;
    v31 = sub_1BA3FE464(&v54, v40, v20);

    (*(v14 + 8))(v20, v13);
  }

  return v31 & 1;
}

uint64_t sub_1BA3FE204@<X0>(uint64_t a1@<X8>)
{
  sub_1BA3FFB10(0, &qword_1EBBF2338, MEMORY[0x1E69681B8]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v20 - v4;
  v6 = sub_1BA4A10B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v20 - v13;
  sub_1BA4A1028();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BA3FFC98(v5, &qword_1EBBF2338, MEMORY[0x1E69681B8]);
    v15 = sub_1BA4A15D8();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  else
  {
    (*(v7 + 32))(v14, v5, v6);
    sub_1BA4A10A8();
    sub_1BA4A1088();
    sub_1BA4A1098();
    v17 = sub_1BA4A1048();
    MEMORY[0x1BFAEBA90](v17);
    v18 = sub_1BA4A1068();
    MEMORY[0x1BFAEBAB0](v18);
    sub_1BA4A1038();
    v19 = *(v7 + 8);
    v19(v10, v6);
    return (v19)(v14, v6);
  }
}

uint64_t sub_1BA3FE464(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v22 = a1[1];
  v23 = v5;
  v6 = *(a1 + 4);
  v7 = sub_1BA4A3678();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a3, v7, v10);
  v13 = (*(v8 + 88))(v12, v7);
  if (v13 != *MEMORY[0x1E69A2C28] && v13 != *MEMORY[0x1E69A2C70])
  {
    if (v13 == *MEMORY[0x1E69A2C50])
    {
      type metadata accessor for PluginDeepLinkRouter();
      inited = swift_initStackObject();
      v19 = v22;
      v18 = v23;
      *(inited + 16) = v23;
      *(inited + 32) = v19;
      *(inited + 48) = v6;
      v20 = v18;
      PluginDeepLinkRouter.launchPluginFromNSUA(activity:)(a2);
      swift_setDeallocating();

      return 1;
    }

    if (v13 != *MEMORY[0x1E69A2C18])
    {
      [v23 restoreUserActivityState_];
      (*(v8 + 8))(v12, v7);
      return 1;
    }
  }

  ObjectType = swift_getObjectType();
  v24 = v23;
  (*(v6 + 8))(a3, ObjectType, v6);
  v24 = v23;
  v16 = (*(v6 + 24))(ObjectType, v6);
  _s18HealthExperienceUI21ProfileDeepLinkRouterV07restoreD8Activity04userI024presentingViewControllerySo06NSUserI0C_So06UIViewM0CtFZ_0(a2, v16);

  return 1;
}

void sub_1BA3FE69C()
{
  v0 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v0, v1);
  sub_1BA3FC404();
}

uint64_t sub_1BA3FE8A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v152 = *a1;
  v145 = v3;
  v4 = *(a1 + 24);
  v146 = *(a1 + 16);
  v147 = v4;
  v153 = *(a1 + 32);
  v150 = sub_1BA4A3678();
  v143 = *(v150 - 1);
  MEMORY[0x1EEE9AC00](v150, v5);
  v7 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1BA4A3878();
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v8);
  v139 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_1BA4A35A8();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v10);
  v135 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA3FFB10(0, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v154 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v157 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v162 = &v134 - v20;
  v155 = sub_1BA4A15D8();
  v21 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v22);
  v149 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v134 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v144 = &v134 - v30;
  sub_1BA3FFB10(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
  v151 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v142 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v134 - v36;
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v134 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v148 = &v134 - v44;
  v161 = sub_1BA4A3EA8();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161, v45);
  v156 = &v134 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = MEMORY[0x1EEE9AC00](v47, v48).n128_u64[0];
  v51 = &v134 - v50;
  v52 = a2;
  v158 = [a2 activityType];
  v53 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v55 = v54;
  v56 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v159 = v55;
  if (v56 == v53 && v57 == v55)
  {

    goto LABEL_5;
  }

  v58 = sub_1BA4A8338();

  if ((v58 & 1) == 0)
  {

    v70 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v72 = v159;
    if (v70 != v53 || v71 != v159)
    {
      v119 = sub_1BA4A8338();

      if (v119)
      {
        goto LABEL_29;
      }

      if (_sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() != v53 || v130 != v72)
      {
        v131 = sub_1BA4A8338();

        v106 = 0;
        if ((v131 & 1) == 0)
        {
          return v106 & 1;
        }

        goto LABEL_30;
      }
    }

LABEL_29:

LABEL_30:
    v120 = v152;
    ObjectType = swift_getObjectType();
    v167 = v120;
    v122 = v143;
    v123 = v150;
    (*(v143 + 104))(v7, *MEMORY[0x1E69A2C48], v150);
    v124 = v153;
    (v153)[1](v7, ObjectType, v153);
    (*(v122 + 8))(v7, v123);
    v167 = v120;
    v125 = (v124[3])(ObjectType, v124);
    [v125 restoreUserActivityState_];

    goto LABEL_31;
  }

LABEL_5:
  sub_1BA4A3DD8();
  v59 = v52;
  v60 = sub_1BA4A3E88();
  v61 = sub_1BA4A6FC8();

  v62 = os_log_type_enabled(v60, v61);
  v150 = v59;
  if (v62)
  {
    v63 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v167 = v143;
    *v63 = 136315394;
    *(v63 + 4) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4D9DB0, &v167);
    *(v63 + 12) = 2080;
    v64 = [v59 webpageURL];
    v138 = v27;
    if (v64)
    {
      v65 = v64;
      sub_1BA4A1588();

      v66 = 0;
    }

    else
    {
      v66 = 1;
    }

    v68 = v21;
    v73 = *(v21 + 56);
    v69 = v155;
    v73(v37, v66, 1, v155);
    sub_1BA12BCA4(v37, v41);
    if ((*(v68 + 48))(v41, 1, v69))
    {
      sub_1BA3FFC98(v41, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
      v73(v148, 1, 1, v69);
    }

    else
    {
      v74 = v144;
      (*(v68 + 16))(v144, v41, v69);
      sub_1BA3FFC98(v41, &qword_1EDC6AE90, MEMORY[0x1E6968FB0]);
      sub_1BA3FE204(v148);
      (*(v68 + 8))(v74, v69);
    }

    v27 = v138;
    v75 = sub_1BA4A6808();
    v77 = sub_1B9F0B82C(v75, v76, &v167);

    *(v63 + 14) = v77;
    _os_log_impl(&dword_1B9F07000, v60, v61, "[%s] Resolving url %s", v63, 0x16u);
    v78 = v143;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v78, -1, -1);
    MEMORY[0x1BFAF43A0](v63, -1, -1);

    v67 = *(v160 + 8);
    v67(v51, v161);
  }

  else
  {

    v67 = *(v160 + 8);
    v67(v51, v161);
    v68 = v21;
    v69 = v155;
  }

  v79 = v150;
  v80 = [v150 webpageURL];
  v81 = v157;
  v82 = v156;
  if (v80)
  {
    v83 = v80;

    sub_1BA4A1588();
    v84 = v162;
    sub_1BA4A3538();
    sub_1BA3FFB64(v84, v81);
    v85 = sub_1BA4A3898();
    v86 = *(v85 - 8);
    if ((*(v86 + 48))(v81, 1, v85) == 1)
    {
LABEL_19:
      sub_1BA4A3DD8();
      v87 = v149;
      (*(v68 + 16))(v149, v27, v69);
      v88 = sub_1BA4A3E88();
      v89 = v27;
      v90 = v69;
      v91 = sub_1BA4A6FC8();
      if (os_log_type_enabled(v88, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v159 = v67;
        v94 = v93;
        v167 = v93;
        *v92 = 136315394;
        *(v92 + 4) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4D9DB0, &v167);
        *(v92 + 12) = 2080;
        v138 = v89;
        sub_1BA3FE204(v142);
        v95 = sub_1BA4A6808();
        v97 = v96;
        v98 = *(v68 + 8);
        v98(v87, v90);
        v99 = sub_1B9F0B82C(v95, v97, &v167);

        *(v92 + 14) = v99;
        _os_log_impl(&dword_1B9F07000, v88, v91, "[%s] Could not resolve URL type %s", v92, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v94, -1, -1);
        MEMORY[0x1BFAF43A0](v92, -1, -1);

        v159(v156, v161);
        sub_1BA3FFC98(v162, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
        v98(v138, v90);
        v81 = v157;
      }

      else
      {

        v107 = *(v68 + 8);
        v107(v87, v90);
        v67(v82, v161);
        sub_1BA3FFC98(v162, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
        v107(v89, v90);
      }

      sub_1BA3FFC98(v81, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
      v106 = 0;
      return v106 & 1;
    }

    v100 = v154;
    sub_1BA3FFB64(v81, v154);
    v101 = (*(v86 + 88))(v100, v85);
    if (v101 == *MEMORY[0x1E69A2D28])
    {
      (*(v68 + 16))(v144, v27, v69);
      v102 = v139;
      sub_1BA4A3828();
      v103 = sub_1BA4A37F8();
      v104 = v69;
      if (v103)
      {
        v105 = v103;
        v165[0] = v152;
        v165[1] = v145;
        v165[2] = v146;
        v165[3] = v147;
        v165[4] = v153;
        v106 = static SharingProfileDeepLinkRouter.handleURL(_:rootViewController:profileIdentifier:)(v27, v165, v103);
      }

      else
      {
        v166[0] = v152;
        v166[1] = v145;
        v166[2] = v146;
        v166[3] = v147;
        v166[4] = v153;
        v106 = sub_1BA3F7B90(v27, 0, v166);
      }

      (*(v140 + 8))(v102, v141);
      v127 = MEMORY[0x1E69A2D48];
      sub_1BA3FFC98(v162, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
      (*(v68 + 8))(v27, v104);
      (*(v86 + 8))(v154, v85);
      v128 = v81;
      v129 = v127;
LABEL_43:
      sub_1BA3FFC98(v128, &qword_1EDC6ACC0, v129);
      return v106 & 1;
    }

    if (v101 != *MEMORY[0x1E69A2D40])
    {
      if (v101 == *MEMORY[0x1E69A2CE0])
      {
        v163[0] = v152;
        v163[1] = v145;
        v163[2] = v146;
        v163[3] = v147;
        v163[4] = v153;
        v126 = sub_1BA3FB398(v27, v163);
      }

      else
      {
        if (v101 != *MEMORY[0x1E69A2CC0])
        {
          (*(v86 + 8))(v154, v85);
          goto LABEL_19;
        }

        v164[0] = v152;
        v164[1] = v145;
        v164[2] = v146;
        v164[3] = v147;
        v164[4] = v153;
        v126 = sub_1BA3F7B90(v27, 0, v164);
      }

      v106 = v126;
      v132 = MEMORY[0x1E69A2D48];
      sub_1BA3FFC98(v162, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
      (*(v68 + 8))(v27, v69);
      v128 = v81;
      v129 = v132;
      goto LABEL_43;
    }

    v108 = v154;
    (*(v86 + 96))(v154, v85);
    v109 = v136;
    v110 = v135;
    v111 = v137;
    (*(v136 + 32))(v135, v108, v137);
    type metadata accessor for PluginDeepLinkRouter();
    inited = swift_initStackObject();
    v113 = v152;
    v114 = v145;
    *(inited + 16) = v152;
    *(inited + 24) = v114;
    v115 = v147;
    *(inited + 32) = v146;
    *(inited + 40) = v115;
    *(inited + 48) = v153;
    v116 = v113;
    PluginDeepLinkRouter.launchPluginFromWebBrowsingActivity(activity:pluginType:)(v79, v110, v117);
    swift_setDeallocating();

    (*(v109 + 8))(v110, v111);
    v118 = MEMORY[0x1E69A2D48];
    sub_1BA3FFC98(v162, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
    (*(v68 + 8))(v27, v69);
    sub_1BA3FFC98(v81, &qword_1EDC6ACC0, v118);
LABEL_31:
    v106 = 1;
    return v106 & 1;
  }

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

void sub_1BA3FFB10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA3FFB64(uint64_t a1, uint64_t a2)
{
  sub_1BA3FFB10(0, &qword_1EDC6ACC0, MEMORY[0x1E69A2D48]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA3FFBE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA3FFC2C(uint64_t a1)
{
  sub_1BA02E3B8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA3FFC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA3FFB10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA3FFCF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA3FFD44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t objectdestroy_6Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 82, 7);
}

char *sub_1BA3FFE3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI19SwitchTableViewCell_toggleSwitch] = v6;
  if (a3)
  {
    v7 = sub_1BA4A6758();
  }

  else
  {
    v7 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SwitchTableViewCell();
  v8 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, a1, v7);

  v9 = v8;
  [v9 setSelectionStyle_];
  [v9 setAccessoryView_];

  return v9;
}

id sub_1BA3FFFCC(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SwitchTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA400100()
{
  v1 = v0;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = *MEMORY[0x1E69DDCF8];
  v7 = [v5 preferredFontForTextStyle_];
  [v7 pointSize];
  v9 = v8;

  v10 = [objc_opt_self() configurationWithPointSize_];
  v11 = sub_1BA4A6758();
  v12 = [objc_opt_self() systemImageNamed_];

  v61 = v10;
  if (v12)
  {
    v13 = [v12 imageWithConfiguration_];

    v14 = [objc_opt_self() systemBlueColor];
    v15 = [v13 imageWithTintColor:v14 renderingMode:1];
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  v60 = v15;
  [v16 setImage_];
  sub_1B9F0ADF8(0, &qword_1EDC6B520, 0x1E696AD40);
  v59 = v16;
  v17 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  MEMORY[0x1BFAF1350](v2, v4);

  v18 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v19 = sub_1BA4A6758();

  v20 = [v18 initWithString_];

  [v17 appendAttributedString_];
  type metadata accessor for MultilineButton();
  v21 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = v21;
  [v22 setAttributedTitle:v17 forState:0];
  v23 = [v22 titleLabel];
  if (v23)
  {
    v24 = v23;
    v25 = [v5 preferredFontForTextStyle_];
    [v24 setFont_];
  }

  v26 = [v22 titleLabel];

  if (v26)
  {
    [v26 setNumberOfLines_];
  }

  [v22 setContentHorizontalAlignment_];
  [v22 addTarget:v1 action:sel_didTapLearnMore_ forControlEvents:64];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 addSubview_];
  v28 = [v1 contentView];
  [v28 addSubview_];

  v58 = objc_opt_self();
  sub_1B9F109F8();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4BBC90;
  v30 = [v22 topAnchor];
  v31 = [v27 topAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v29 + 32) = v32;
  v33 = [v27 bottomAnchor];
  v34 = [v22 bottomAnchor];
  v35 = [v33 &selRef:v34 numberWithInteger:? + 5];

  *(v29 + 40) = v35;
  v36 = [v22 leadingAnchor];
  v37 = [v27 &selRef__totalDistance + 1];
  v38 = [v36 &selRef:v37 numberWithInteger:? + 5];

  *(v29 + 48) = v38;
  v39 = [v27 trailingAnchor];
  v40 = [v22 &selRef_cloudSyncObserverSyncCompleted_ + 4];

  v41 = [v39 constraintGreaterThanOrEqualToAnchor_];
  *(v29 + 56) = v41;
  v42 = [v27 topAnchor];
  v43 = [v1 contentView];
  v44 = [v43 topAnchor];

  v45 = [v42 constraintEqualToAnchor_];
  *(v29 + 64) = v45;
  v46 = [v27 bottomAnchor];
  v47 = [v1 contentView];
  v48 = [v47 bottomAnchor];

  v49 = [v46 constraintEqualToAnchor_];
  *(v29 + 72) = v49;
  v50 = [v27 leadingAnchor];
  v51 = [v1 contentView];
  v52 = [v51 leadingAnchor];

  v53 = [v50 constraintEqualToAnchor_];
  *(v29 + 80) = v53;
  v54 = [v27 trailingAnchor];
  v55 = [v1 contentView];
  v56 = [v55 trailingAnchor];

  v57 = [v54 constraintEqualToAnchor_];
  *(v29 + 88) = v57;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v62 = sub_1BA4A6AE8();

  [v58 activateConstraints_];
}

double sub_1BA400A34()
{
  v1 = sub_1BA4A6478();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A64C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A6488();
  v12 = *(v11 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v11, v13).n128_u64[0];
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 dismissViewControllerAnimated:1 completion:{0, v14}];
  v18 = &v0[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_flow];
  v19 = v0[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_flow + 8];
  if (v19 <= 1)
  {
    v26 = v7;
    v20 = *v18;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v25 = v6;
    (*(v12 + 104))(v16, *MEMORY[0x1E69E7F88], v11);
    sub_1BA02040C(v20, v19);
    v21 = sub_1BA4A7338();
    (*(v12 + 8))(v16, v11);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    aBlock[4] = sub_1BA020420;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_30_1;
    v23 = _Block_copy(aBlock);
    sub_1BA4A64A8();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1B9F3F378(0);
    sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v10, v5, v23);
    _Block_release(v23);

    (*(v2 + 8))(v5, v1);
    (*(v26 + 8))(v10, v25);
  }

  return result;
}

void sub_1BA400E78()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v1 = [objc_opt_self() boldButton];
  v2 = sub_1BA4A6758();

  [v1 setTitle:v2 forState:0];

  [v1 addTarget:v0 action:sel_didTapShare_ forControlEvents:64];
  sub_1BA4A1318();
  v3 = [objc_opt_self() linkButton];
  v4 = sub_1BA4A6758();

  [v3 setTitle:v4 forState:0];

  [v3 addTarget:v0 action:sel_didTapDontShare_ forControlEvents:64];
  v5 = [v0 buttonTray];
  v6 = v1;
  [v5 addButton_];

  v7 = [v0 buttonTray];
  [v7 addButton_];

  v8 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_shareButton];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_shareButton] = v6;

  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_dontShareButton];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_dontShareButton] = v3;
}

double sub_1BA40110C(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_shareButton);
  v5 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_dontShareButton);
  if (v4)
  {
    v6 = v5;
    [v4 setEnabled_];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = v5;
  if (v5)
  {
LABEL_3:
    [v5 setEnabled_];
  }

LABEL_4:
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = sub_1BA4A2958();
  v9 = swift_allocObject();
  v10 = a1 & 1;
  *(v9 + 16) = a1 & 1;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = sub_1BA4022E4;
  *(v11 + 32) = v7;
  *(v11 + 40) = ObjectType;

  sub_1BA2058E0(sub_1BA4022EC, v9, sub_1BA4022FC, v11);

  return result;
}

uint64_t sub_1BA40129C(void *a1, uint64_t a2)
{
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A64C8();
  v10 = *(v9 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v9, v11).n128_u64[0];
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v15 = [a1 isDisabled] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v16 = sub_1BA4A7308();
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = v15;
  aBlock[4] = sub_1BA402310;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_113;
  v18 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AF18(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B9F3F378(0);
  sub_1B9F0AF18(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v14, v8, v18);
  _Block_release(v18);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v14, v9);
}

void sub_1BA4015B0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v4 = Strong;
  v5 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_shareButton);
  v6 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_dontShareButton);
  if (!v5)
  {
    v10 = v6;
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v7 = v6;
  [v5 setEnabled_];
  if (v6)
  {
LABEL_4:
    [v6 setEnabled_];
  }

LABEL_5:

LABEL_6:
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_1BA401A64(a2 & 1);
  }
}

uint64_t sub_1BA40169C(void *a1, char a2, int a3, uint64_t (*a4)(void), uint64_t a5, void *a6)
{
  v46 = a5;
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v43 - v18;
  if (a2)
  {
    sub_1BA4A3E28();
    v20 = a1;
    v21 = sub_1BA4A3E88();
    v22 = sub_1BA4A6FB8();
    sub_1BA336520(a1);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v45 = v12;
      v24 = a3;
      v25 = v23;
      v26 = swift_slowAlloc();
      v47 = v26;
      v48 = a6;
      *v25 = 136446723;
      swift_getMetatypeMetadata();
      v27 = sub_1BA4A6808();
      v44 = a4;
      v29 = sub_1B9F0B82C(v27, v28, &v47);

      *(v25 + 4) = v29;
      *(v25 + 12) = 1025;
      *(v25 + 14) = v24 & 1;
      *(v25 + 18) = 2082;
      v48 = a1;
      v30 = a1;
      sub_1B9FED358();
      v31 = sub_1BA4A6808();
      v33 = sub_1B9F0B82C(v31, v32, &v47);
      a4 = v44;

      *(v25 + 20) = v33;
      _os_log_impl(&dword_1B9F07000, v21, v22, "[%{public}s]: Failed to update medical ID to share state %{BOOL,private}d: %{public}s", v25, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);

      (*(v45 + 8))(v15, v11);
    }

    else
    {

      (*(v12 + 8))(v15, v11);
    }

    a1 = 0;
  }

  else
  {
    LODWORD(v44) = a3;
    v45 = v12;
    sub_1BA4A3E28();
    v34 = sub_1BA4A3E88();
    v35 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      v48 = a6;
      *v36 = 136446467;
      swift_getMetatypeMetadata();
      v38 = sub_1BA4A6808();
      v40 = a4;
      v41 = sub_1B9F0B82C(v38, v39, &v47);

      *(v36 + 4) = v41;
      a4 = v40;
      *(v36 + 12) = 1025;
      *(v36 + 14) = v44 & 1;
      _os_log_impl(&dword_1B9F07000, v34, v35, "[%{public}s]: Updated medical ID to share state: %{BOOL,private}d", v36, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
      MEMORY[0x1BFAF43A0](v36, -1, -1);
    }

    (*(v45 + 8))(v19, v11);
  }

  return a4(a1);
}

void sub_1BA401A64(char a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EmergencyAccessUserStatus(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v46 - v14;
  v16 = &v2[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_flow];
  v17 = v2[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_flow + 8];
  if (v17 == 1)
  {
LABEL_4:
    sub_1BA4A3DD8();
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48 = v22;
      *v21 = 136315138;
      v23 = sub_1BA4A85D8();
      v25 = sub_1B9F0B82C(v23, v24, &v48);
      v46 = v4;
      v26 = v2;
      v27 = v25;

      *(v21 + 4) = v27;
      v2 = v26;
      _os_log_impl(&dword_1B9F07000, v19, v20, "[%s] User reached EmergencyAccessBuddyShareMedicalIDViewController in a review flow. This should not have happened.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1BFAF43A0](v22, -1, -1);
      MEMORY[0x1BFAF43A0](v21, -1, -1);

      (v47)[1](v7, v46);
    }

    else
    {

      (v47)[1](v7, v4);
    }

    v41 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_healthStore];
    v43 = v16[8];
    v48 = *v16;
    v42 = v48;
    v49 = v43;
    sub_1BA020470(&v2[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_emergencyStatus], v11);
    objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyDoneViewController(0));
    v44 = v41;
    sub_1BA02040C(v42, v43);
    sub_1BA337850(v44, &v48, v11);
    v40 = v45;
LABEL_13:
    [v2 showViewController:v40 sender:{v2, v46}];

    return;
  }

  if (v17 == 2)
  {
    v18 = *v16;
    if (*v16 == 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v18 = *v16;
  }

  v28 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_healthStore];
  sub_1BA020470(&v2[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_emergencyStatus], &v46 - v14);
  v29 = type metadata accessor for EmergencyAccessBuddyLockScreenMedicalIDViewController(0);
  v30 = objc_allocWithZone(v29);
  *&v30[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_switchCell] = 0;
  *&v30[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_diffableDataSource] = 0;
  *&v30[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_tableViewHeight] = 0;
  *&v30[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController____lazy_storage___tableViewHeightLayoutConstraint] = 0;
  v31 = &v30[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_flow];
  *v31 = v18;
  v31[8] = v17;
  sub_1BA020470(v15, &v30[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_emergencyStatus]);
  *&v30[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_healthStore] = v28;
  sub_1BA4A2998();
  v32 = v28;
  sub_1BA02040C(v18, v17);
  v47 = v32;
  *&v30[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_medicalIDCache] = MEMORY[0x1BFAED380](v32);
  v30[OBJC_IVAR____TtC18HealthExperienceUI53EmergencyAccessBuddyLockScreenMedicalIDViewController_initialShowWhenLocked] = a1 & 1;
  type metadata accessor for EmergencyAccessBuddyStartViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass_];
  v35 = sub_1BA4A6758();
  v36 = [objc_opt_self() imageNamed:v35 inBundle:v34];

  if (v36)
  {
    v46 = v2;
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    sub_1BA4A1318();
    v37 = sub_1BA4A6758();

    v38 = sub_1BA4A6758();

    v50.receiver = v30;
    v50.super_class = v29;
    v39 = objc_msgSendSuper2(&v50, sel_initWithTitle_detailText_icon_adoptTableViewScrollView_, v37, v38, v36, 0);

    v40 = v39;
    sub_1BA44B870();

    sub_1BA0204E8(v15);
    v2 = v46;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1BA402038(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA40110C(a4);

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

id sub_1BA40210C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessBuddyShareMedicalIDViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmergencyAccessBuddyShareMedicalIDViewController(uint64_t a1)
{
  result = qword_1EBBF2370;
  if (!qword_1EBBF2370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA40222C(uint64_t a1)
{
  result = type metadata accessor for EmergencyAccessUserStatus(319);
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

void sub_1BA40231C(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a2;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_shareButton] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_dontShareButton] = 0;
  v8 = *(a2 + 8);
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_flow];
  *v9 = v7;
  v9[8] = v8;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_healthStore] = a1;
  sub_1BA020470(a3, &v4[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_emergencyStatus]);
  sub_1BA4A2998();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI48EmergencyAccessBuddyShareMedicalIDViewController_medicalIDCache] = MEMORY[0x1BFAED380](a1);
  type metadata accessor for EmergencyAccessBuddyStartViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_1BA4A6758();
  v13 = [objc_opt_self() imageNamed:v12 inBundle:v11];

  if (v13)
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    [objc_opt_self() hasPairedWatch];
    sub_1BA4A1318();
    v14 = sub_1BA4A6758();

    v15 = sub_1BA4A6758();

    v19.receiver = v4;
    v19.super_class = type metadata accessor for EmergencyAccessBuddyShareMedicalIDViewController(0);
    v16 = objc_msgSendSuper2(&v19, sel_initWithTitle_detailText_icon_contentLayout_, v14, v15, v13, 2, 0xE000000000000000);

    v17 = v16;
    v18 = [v17 headerView];
    [v18 setAllowFullWidthIcon_];

    sub_1BA0204E8(a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t HeaderFooterDataSourceWithLayout.__allocating_init(headerDataSource:mainDataSource:footerDataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_allocObject();
  v17 = sub_1B9F384A0(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v17;
}

uint64_t HeaderFooterDataSourceWithLayout.__allocating_init(headerTitle:mainDataSource:footerItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v36 = a5;
  v34 = a3;
  sub_1BA403554(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContentConfigurationItem(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = _s18HealthExperienceUI32HeaderFooterDataSourceWithLayoutC06created4ItemfG04with06customI11ConstructorAA13SupplementaryCyAA012MutableArrayfghI0CGSS_So012NSCollectionI7SectionCSgSi_So0rI11Environment_ptcSgtFZ_0(a1, a2, 0, 0);

    v20 = sub_1BA40387C(&qword_1EBBF2390, qword_1EDC693A8, type metadata accessor for Supplementary, &protocol conformance descriptor for <> Supplementary<A>);
    v21 = &protocol witness table for Supplementary<A>;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
  }

  sub_1BA403588(a6, v13, sub_1BA403554);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BA403984(v13, sub_1BA403554);
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    sub_1BA058CEC(v13, v18);
    type metadata accessor for MutableArrayDataSourceWithLayout(0);
    v25 = MEMORY[0x1E69E6F90];
    sub_1B9F3558C(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v33 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1B9F3558C(0, &qword_1EDC5DCA0, sub_1B9F32244, v25);
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 56) = v14;
    *(v27 + 64) = sub_1BA001B20(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v27 + 32));
    sub_1BA403588(v18, boxed_opaque_existential_1, type metadata accessor for ContentConfigurationItem);
    *(inited + 32) = v27;
    v29 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 1, sub_1B9F5AEA0, 0);
    sub_1BA4038D8(0, &qword_1EDC69040, type metadata accessor for CellRegistering);
    v22 = swift_allocObject();
    v22[4] = v29;
    v22[5] = sub_1B9F405BC;
    v22[6] = 0;
    v30 = *(v29 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
    v22[2] = *(v29 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
    v22[3] = v30;

    sub_1BA403984(v18, type metadata accessor for ContentConfigurationItem);
    v23 = sub_1BA40387C(&qword_1EBBF2388, &qword_1EDC69040, type metadata accessor for CellRegistering, &protocol conformance descriptor for <> CellRegistering<A>);
    v24 = &protocol witness table for CellRegistering<A>;
  }

  v31 = (*(v6 + 408))(v19, v20, v21, v34, v35, v36, v22, v23, v24);
  sub_1BA403984(a6, sub_1BA403554);
  return v31;
}

void *static HeaderFooterDataSourceWithLayout.createContentConfigurationItemFooterDataSource(with:)(uint64_t a1)
{
  type metadata accessor for MutableArrayDataSourceWithLayout(0);
  v2 = MEMORY[0x1E69E6F90];
  sub_1B9F3558C(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F3558C(0, &qword_1EDC5DCA0, sub_1B9F32244, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5480;
  *(v4 + 56) = type metadata accessor for ContentConfigurationItem(0);
  *(v4 + 64) = sub_1BA001B20(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  sub_1BA403588(a1, boxed_opaque_existential_1, type metadata accessor for ContentConfigurationItem);
  *(inited + 32) = v4;
  v6 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 1, sub_1B9F5AEA0, 0);
  sub_1BA4038D8(0, &qword_1EDC69040, type metadata accessor for CellRegistering);
  v7 = swift_allocObject();
  v7[4] = v6;
  v7[5] = sub_1B9F405BC;
  v7[6] = 0;
  v8 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v7[2] = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v7[3] = v8;

  return v7;
}

uint64_t HeaderFooterDataSourceWithLayout.__allocating_init(headerTitle:mainDataSource:customFooterDataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  if (a2)
  {
    v16 = _s18HealthExperienceUI32HeaderFooterDataSourceWithLayoutC06created4ItemfG04with06customI11ConstructorAA13SupplementaryCyAA012MutableArrayfghI0CGSS_So012NSCollectionI7SectionCSgSi_So0rI11Environment_ptcSgtFZ_0(a1, a2, 0, 0);

    a2 = sub_1BA40387C(&qword_1EBBF2390, qword_1EDC693A8, type metadata accessor for Supplementary, &protocol conformance descriptor for <> Supplementary<A>);
    v17 = &protocol witness table for Supplementary<A>;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  return (*(v9 + 408))(v16, a2, v17, a3, a4, a5, a6, a7, a8);
}

uint64_t HeaderFooterDataSourceWithLayout.__allocating_init(customHeaderDataSource:mainDataSource:footerItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a4;
  v36 = a5;
  sub_1BA403554(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContentConfigurationItem(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA403588(a7, v16, sub_1BA403554);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1BA403984(v16, sub_1BA403554);
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    sub_1BA058CEC(v16, v21);
    type metadata accessor for MutableArrayDataSourceWithLayout(0);
    v34 = a6;
    v25 = MEMORY[0x1E69E6F90];
    sub_1B9F3558C(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v33 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    sub_1B9F3558C(0, &qword_1EDC5DCA0, sub_1B9F32244, v25);
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 56) = v17;
    *(v27 + 64) = sub_1BA001B20(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v27 + 32));
    sub_1BA403588(v21, boxed_opaque_existential_1, type metadata accessor for ContentConfigurationItem);
    *(inited + 32) = v27;
    v29 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 1, sub_1B9F5AEA0, 0);
    sub_1BA4038D8(0, &qword_1EDC69040, type metadata accessor for CellRegistering);
    v22 = swift_allocObject();
    v22[4] = v29;
    v22[5] = sub_1B9F405BC;
    v22[6] = 0;
    v30 = *(v29 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
    v22[2] = *(v29 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
    v22[3] = v30;

    sub_1BA403984(v21, type metadata accessor for ContentConfigurationItem);
    a6 = v34;
    v23 = sub_1BA40387C(&qword_1EBBF2388, &qword_1EDC69040, type metadata accessor for CellRegistering, &protocol conformance descriptor for <> CellRegistering<A>);
    v24 = &protocol witness table for CellRegistering<A>;
  }

  v31 = (*(v7 + 408))(a1, a2, a3, v35, v36, a6, v22, v23, v24);
  sub_1BA403984(a7, sub_1BA403554);
  return v31;
}

void *sub_1BA40324C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  v8 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    v13 = a3(a1, a2);
    sub_1B9F0E30C(a3, a4);
  }

  else
  {
    if (qword_1EDC6CBB0 != -1)
    {
      v16 = v10;
      swift_once();
      v10 = v16;
    }

    v14 = __swift_project_value_buffer(v10, qword_1EDC6CBB8);
    sub_1BA403588(v14, v12, type metadata accessor for ListLayoutConfiguration);
    *(v12 + 8) = 0;
    v13 = ListLayoutConfiguration.layout(for:)(a2);
    sub_1BA403984(v12, type metadata accessor for ListLayoutConfiguration);
  }

  return v13;
}

uint64_t sub_1BA4033CC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t HeaderFooterDataSourceWithLayout.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t HeaderFooterDataSourceWithLayout.__deallocating_deinit()
{
  HeaderFooterDataSourceWithLayout.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA403588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *_s18HealthExperienceUI32HeaderFooterDataSourceWithLayoutC06created4ItemfG04with06customI11ConstructorAA13SupplementaryCyAA012MutableArrayfghI0CGSS_So012NSCollectionI7SectionCSgSi_So0rI11Environment_ptcSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v12 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(a1, a2, 0, 0, 0, 0, v11, 0, 0);
  v14 = v13;
  type metadata accessor for MutableArrayDataSourceWithLayout(0);
  sub_1B9F3558C(0, &qword_1EDC5DBF0, sub_1B9F32148, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  *(inited + 32) = MEMORY[0x1E69E7CC0];
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  sub_1B9F0F1B8(a3, a4);
  v17 = MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(inited, 0, sub_1BA40397C, v16);
  v24[3] = v12;
  v24[4] = sub_1BA001B20(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  v24[0] = v14;
  sub_1B9F0A534(v24, v23);
  v18 = swift_allocObject();
  sub_1B9F25598(v23, v18 + 16);
  sub_1BA4038D8(0, qword_1EDC693A8, type metadata accessor for Supplementary);
  v19 = swift_allocObject();
  v19[4] = v17;
  v19[5] = sub_1B9F79BC8;
  v19[6] = v18;
  v20 = *(v17 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier + 8);
  v19[2] = *(v17 + OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_identifier);
  v19[3] = v20;

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v19;
}

uint64_t sub_1BA40387C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, _UNKNOWN **), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA4038D8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA4038D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, _UNKNOWN **))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MutableArrayDataSourceWithLayout(255);
    v7 = a3(a1, v6, &protocol witness table for MutableArrayDataSource);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA403984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *DataTypeDetailChartCell.Item.restorationUserActivity.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *DataTypeDetailChartCell.Item.trendModel.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void DataTypeDetailChartCell.Item.init(dataType:restorationUserActivity:)(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1BA4B5460;
  v7 = [a1 identifier];
  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v10 = v9;

  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  *(v6 + 48) = 0x7472616843;
  *(v6 + 56) = 0xE500000000000000;
  v11 = sub_1BA4A6AE8();

  v12 = HKUIJoinStringsForAutomationIdentifier();

  if (v12)
  {
    v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *a3 = a1;
  a3[1] = a2;
  a3[2] = 0;
  a3[3] = v13;
  a3[4] = v15;
}

uint64_t DataTypeDetailChartCell.Item.baseIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void DataTypeDetailChartCell.Item.baseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t DataTypeDetailChartCell.Item.reuseIdentifier.getter()
{
  type metadata accessor for DataTypeDetailChartCell();
  sub_1BA403C4C();
  return sub_1BA4A6808();
}

unint64_t sub_1BA403C4C()
{
  result = qword_1EDC66C90;
  if (!qword_1EDC66C90)
  {
    type metadata accessor for DataTypeDetailChartCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC66C90);
  }

  return result;
}

unint64_t DataTypeDetailChartCell.Item.uniqueIdentifier.getter()
{
  v1 = *v0;
  sub_1BA4A7DF8();

  v2 = [v1 identifier];
  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  MEMORY[0x1BFAF1350](v3, v5);

  return 0xD00000000000001ELL;
}

uint64_t sub_1BA403D64()
{
  type metadata accessor for DataTypeDetailChartCell();
  sub_1BA403C4C();
  return sub_1BA4A6808();
}

void *sub_1BA403D9C()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *sub_1BA403DC4()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1BA403DEC()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_1BA403E1C(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_1BA403E78(uint64_t a1)
{
  v2 = sub_1BA406908();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

void sub_1BA403F0C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA403F68(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

void sub_1BA404000(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA404060()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA4040AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA404164(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v8);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  swift_beginAccess();
  sub_1B9F68124(v3 + v4, v7);
  swift_beginAccess();
  sub_1B9F63E74(v8, v3 + v4);
  swift_endAccess();
  sub_1BA404238(v7);
  v5 = MEMORY[0x1E69A3348];
  sub_1B9F43A50(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  return sub_1B9F43A50(v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v5);
}

uint64_t sub_1BA404238(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, &v13);
  if (*(&v14 + 1))
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC6C3F0, &protocol descriptor for DataTypeDetailChartCellItem);
    if (swift_dynamicCast())
    {
      if (*(&v17 + 1))
      {
        sub_1B9F1134C(&v16, v19);
        sub_1B9F68124(a1, v11);
        if (v12)
        {
          if (swift_dynamicCast())
          {
            if (*(&v14 + 1))
            {
              v4 = v1;
              sub_1B9F1134C(&v13, &v16);
              v5 = *(&v17 + 1);
              v6 = v18;
              __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
              if (DataTypeDetailChartCellItem.isDifferent(from:)(v19, v5, v6))
              {
                (*((*MEMORY[0x1E69E7D40] & *v4) + 0xB8))();
              }

              __swift_destroy_boxed_opaque_existential_1(v19);
              v7 = &v16;
              return __swift_destroy_boxed_opaque_existential_1(v7);
            }
          }

          else
          {
            v15 = 0;
            v13 = 0u;
            v14 = 0u;
          }
        }

        else
        {
          sub_1B9F43A50(v11, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
          v13 = 0u;
          v14 = 0u;
          v15 = 0;
        }

        v8 = sub_1B9F43A50(&v13, &qword_1EDC6C3E8, &qword_1EDC6C3F0, &protocol descriptor for DataTypeDetailChartCellItem);
        (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB8))(v8);
        v7 = v19;
        return __swift_destroy_boxed_opaque_existential_1(v7);
      }
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(&v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
  }

  sub_1B9F43A50(&v16, &qword_1EDC6C3E8, &qword_1EDC6C3F0, &protocol descriptor for DataTypeDetailChartCellItem);
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v16 = 0xD000000000000011;
  *(&v16 + 1) = 0x80000001BA4F5100;
  sub_1B9F68124(v1 + v3, v19);
  sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  v10 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v10);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1BA404578@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA4045D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v3, v6);
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA404238(v6);
  v4 = MEMORY[0x1E69A3348];
  sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v4);
}

void (*sub_1BA404698(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_1B9F68124(v1 + v5, v4);
  return sub_1BA404730;
}

void sub_1BA404730(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_1B9F68124(*a1, v2 + 40);
    sub_1B9F68124(v3 + v4, v2 + 80);
    swift_beginAccess();
    sub_1B9F63E74(v2 + 40, v3 + v4);
    swift_endAccess();
    sub_1BA404238(v2 + 80);
    v5 = MEMORY[0x1E69A3348];
    sub_1B9F43A50(v2 + 80, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  }

  else
  {
    sub_1B9F68124(v3 + v4, v2 + 40);
    swift_beginAccess();
    sub_1B9F63E74(v2, v3 + v4);
    swift_endAccess();
    sub_1BA404238(v2 + 40);
    v5 = MEMORY[0x1E69A3348];
  }

  sub_1B9F43A50(v2 + 40, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v5);
  sub_1B9F43A50(v2, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v5);

  free(v2);
}

uint64_t sub_1BA40486C()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258), sub_1B9F0D950(0, &unk_1EDC6CCE0, &protocol descriptor for ChartContextProviding), (swift_dynamicCast() & 1) != 0))
  {
    v0 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      v1 = v6;
      __swift_project_boxed_opaque_existential_1(&v4, *(&v5 + 1));
      v2 = (*(v1 + 8))(v0, v1);
      __swift_destroy_boxed_opaque_existential_1(&v4);
      return v2;
    }
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
  }

  sub_1B9F43A50(&v4, &qword_1EBBF23B0, &unk_1EDC6CCE0, &protocol descriptor for ChartContextProviding);
  return 0;
}

uint64_t sub_1BA404990()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v7, &v71);
  if (*(&v72 + 1))
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC6C3F0, &protocol descriptor for DataTypeDetailChartCellItem);
    if (swift_dynamicCast())
    {
      if (*(&v75 + 1))
      {
        sub_1B9F1134C(&v74, v77);
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          sub_1BA4A3DD8();
          v22 = v1;
          v23 = sub_1BA4A3E88();
          v24 = sub_1BA4A6FA8();

          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *&v74 = v68;
            *v25 = 136446210;
            v26 = v22;
            v27 = [v26 description];
            v28 = v3;
            v29 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v31 = v30;

            v32 = sub_1B9F0B82C(v29, v31, &v74);

            *(v25 + 4) = v32;
            _os_log_impl(&dword_1B9F07000, v23, v24, "[%{public}s] Skipping chart creation due to no HealthToolbox", v25, 0xCu);
            v33 = v68;
            __swift_destroy_boxed_opaque_existential_1(v68);
            MEMORY[0x1BFAF43A0](v33, -1, -1);
            MEMORY[0x1BFAF43A0](v25, -1, -1);

            (*(v28 + 8))(v6, v2);
          }

          else
          {

            (*(v3 + 8))(v6, v2);
          }

          return __swift_destroy_boxed_opaque_existential_1(v77);
        }

        v9 = Strong;
        v10 = [Strong resolvedHealthToolbox];

        v11 = v78;
        v12 = v79;
        __swift_project_boxed_opaque_existential_1(v77, v78);
        v13 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
        swift_beginAccess();
        v68 = v13;
        v14 = *(v13 + v1);
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          *&v71 = v15;
          sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258);
          sub_1B9F0D950(0, &unk_1EDC6CCE0, &protocol descriptor for ChartContextProviding);
          v16 = v14;
          if (swift_dynamicCast())
          {
            v17 = *(&v75 + 1);
            if (*(&v75 + 1))
            {
              v67 = v10;
              v18 = v76;
              __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
              v19 = *(v18 + 8);
              v20 = v18;
              v10 = v67;
              v21 = v19(v17, v20);
              __swift_destroy_boxed_opaque_existential_1(&v74);
              goto LABEL_14;
            }
          }

          else
          {
            v76 = 0;
            v74 = 0u;
            v75 = 0u;
          }
        }

        else
        {
          v76 = 0;
          v74 = 0u;
          v75 = 0u;
          v16 = v14;
        }

        sub_1B9F43A50(&v74, &qword_1EBBF23B0, &unk_1EDC6CCE0, &protocol descriptor for ChartContextProviding);
        v21 = 0;
LABEL_14:
        v34 = (*(v12 + 48))(v14, v21, v11, v12);

        if (v34)
        {
          v35 = v78;
          v36 = v79;
          v37 = __swift_project_boxed_opaque_existential_1(v77, v78);
          v38 = *(v68 + v1);
          v67 = v38;
          v39 = [v10 chartFactory];
          v40 = swift_unknownObjectWeakLoadStrong();
          v41 = v10;
          if (v40 && (*&v71 = v40, sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258), sub_1B9F0D950(0, &unk_1EDC6CCE0, &protocol descriptor for ChartContextProviding), (swift_dynamicCast() & 1) != 0))
          {
            v42 = *(&v75 + 1);
            if (*(&v75 + 1))
            {
              v66 = v37;
              v43 = v76;
              __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
              v44 = (*(v43 + 8))(v42, v43);
              __swift_destroy_boxed_opaque_existential_1(&v74);
LABEL_25:
              (*(v36 + 56))(v38, v39, v44, v35, v36);

              v10 = v41;
LABEL_29:
              v56 = swift_unknownObjectWeakLoadStrong();
              if (v56 && (*&v74 = v56, sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258), sub_1B9F0D950(0, &qword_1EDC65130, &protocol descriptor for ChartImageProviderProviding), (swift_dynamicCast() & 1) != 0))
              {
                if (*(&v72 + 1))
                {
                  sub_1B9F1134C(&v71, &v74);
                  v57 = *(&v75 + 1);
                  v58 = v76;
                  __swift_mutable_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
                  v59 = *(v58 + 16);
                  v60 = swift_unknownObjectRetain();
                  v59(v60, &protocol witness table for DataTypeDetailChartCell, v57, v58);
                  __swift_destroy_boxed_opaque_existential_1(&v74);
LABEL_35:
                  v61 = swift_unknownObjectWeakLoadStrong();
                  if (v61)
                  {
                    v70 = v61;
                    sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258);
                    sub_1B9F0D950(0, qword_1EDC64F50, &protocol descriptor for DataTypeDetailChartDelegate);
                    if (swift_dynamicCast())
                    {
                      if (*(&v72 + 1))
                      {
                        sub_1B9F1134C(&v71, &v74);
                        if (*(v68 + v1))
                        {
                          v69 = &unk_1F388B8A0;
                          if (swift_dynamicCastObjCProtocolConditional())
                          {
                            v62 = *(&v75 + 1);
                            v63 = v76;
                            __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
                            (*(v63 + 8))(v1, v62, v63);
                          }
                        }

                        __swift_destroy_boxed_opaque_existential_1(&v74);
                        return __swift_destroy_boxed_opaque_existential_1(v77);
                      }
                    }

                    else
                    {
                      v73 = 0;
                      v71 = 0u;
                      v72 = 0u;
                    }
                  }

                  else
                  {

                    v73 = 0;
                    v71 = 0u;
                    v72 = 0u;
                  }

                  sub_1B9F43A50(&v71, &qword_1EBBF23B8, qword_1EDC64F50, &protocol descriptor for DataTypeDetailChartDelegate);
                  return __swift_destroy_boxed_opaque_existential_1(v77);
                }
              }

              else
              {
                v73 = 0;
                v71 = 0u;
                v72 = 0u;
              }

              sub_1B9F43A50(&v71, &qword_1EBBEA288, &qword_1EDC65130, &protocol descriptor for ChartImageProviderProviding);
              goto LABEL_35;
            }
          }

          else
          {
            v76 = 0;
            v74 = 0u;
            v75 = 0u;
          }

          sub_1B9F43A50(&v74, &qword_1EBBF23B0, &unk_1EDC6CCE0, &protocol descriptor for ChartContextProviding);
          v44 = 0;
          goto LABEL_25;
        }

        v45 = v68;
        v46 = [*(v68 + v1) view];
        [v46 removeFromSuperview];

        [*(v45 + v1) removeFromParentViewController];
        v47 = v78;
        v48 = v79;
        __swift_project_boxed_opaque_existential_1(v77, v78);
        v49 = [v10 chartFactory];
        v50 = swift_unknownObjectWeakLoadStrong();
        if (v50 && (*&v71 = v50, sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258), sub_1B9F0D950(0, &unk_1EDC6CCE0, &protocol descriptor for ChartContextProviding), (swift_dynamicCast() & 1) != 0))
        {
          v51 = *(&v75 + 1);
          if (*(&v75 + 1))
          {
            v52 = v76;
            __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
            v53 = (*(v52 + 8))(v51, v52);
            __swift_destroy_boxed_opaque_existential_1(&v74);
LABEL_28:
            v54 = (*(v48 + 40))(v49, v53, v47, v48);

            v55 = *(v68 + v1);
            *(v68 + v1) = v54;

            sub_1BA40546C();
            goto LABEL_29;
          }
        }

        else
        {
          v76 = 0;
          v74 = 0u;
          v75 = 0u;
        }

        sub_1B9F43A50(&v74, &qword_1EBBF23B0, &unk_1EDC6CCE0, &protocol descriptor for ChartContextProviding);
        v53 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(&v71, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v74 = 0u;
    v75 = 0u;
    v76 = 0;
  }

  sub_1B9F43A50(&v74, &qword_1EDC6C3E8, &qword_1EDC6C3F0, &protocol descriptor for DataTypeDetailChartCellItem);
  v77[0] = 0;
  v77[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  *&v74 = 0xD000000000000011;
  *(&v74 + 1) = 0x80000001BA4F5100;
  sub_1B9F68124(v1 + v7, v77);
  sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  v65 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v65);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

void sub_1BA40546C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      [v5 setTranslatesAutoresizingMaskIntoConstraints_];

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong addChildViewController_];
      v8 = [v1 contentView];
      v9 = [v4 view];
      if (v9)
      {
        v10 = v9;
        [v8 addSubview_];

        if (Strong)
        {
          [v4 didMoveToParentViewController_];
        }

        sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1BA4B5890;
        v12 = [v4 view];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 leadingAnchor];

          v15 = [v1 contentView];
          v16 = [v15 leadingAnchor];

          v17 = [v14 constraintEqualToAnchor_];
          *(v11 + 32) = v17;
          v18 = [v4 view];
          if (v18)
          {
            v19 = v18;
            v20 = [v18 trailingAnchor];

            v21 = [v1 contentView];
            v22 = [v21 trailingAnchor];

            v23 = [v20 constraintEqualToAnchor_];
            *(v11 + 40) = v23;
            v24 = [v4 view];
            if (v24)
            {
              v25 = v24;
              v26 = [v24 topAnchor];

              v27 = [v1 contentView];
              v28 = [v27 topAnchor];

              v29 = [v26 constraintEqualToAnchor_];
              *(v11 + 48) = v29;
              v30 = [v4 view];
              if (v30)
              {
                v31 = v30;
                v32 = objc_opt_self();
                v33 = [v31 bottomAnchor];

                v34 = [v1 &selRef_fetchSources];
                v35 = [v34 bottomAnchor];

                v36 = [v33 constraintEqualToAnchor_];
                *(v11 + 56) = v36;
                sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
                v37 = sub_1BA4A6AE8();

                [v32 activateConstraints_];

                return;
              }

LABEL_17:
              __break(1u);
              return;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

id DataTypeDetailChartCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DataTypeDetailChartCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item];
  v10 = type metadata accessor for DataTypeDetailChartCell();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id DataTypeDetailChartCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DataTypeDetailChartCell.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController] = 0;
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item];
  v4 = type metadata accessor for DataTypeDetailChartCell();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id DataTypeDetailChartCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeDetailChartCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1BA405D64(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1BA404698(v2);
  return sub_1B9FCDD98;
}