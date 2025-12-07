uint64_t sub_45EC94()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider35InformationRibbonCollectionViewCell_informationRibbon);
  if (v1)
  {
    swift_beginAccess();

    v3 = sub_452DE4(v2);

    if (v3 >> 62)
    {
      v1 = sub_76A860();
    }

    else
    {
      v1 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    }
  }

  return v1;
}

uint64_t sub_45ED50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_45ED90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_45EDA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_45EDF8()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D850 != -1)
  {
    swift_once();
  }

  v4 = sub_7666D0();
  v5 = sub_BE38(v4, qword_99F0E8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v9 = enum case for FontSource.useCase(_:);
  v10 = v1 + 13;
  v28 = v1[13];
  v28(v3, enum case for FontSource.useCase(_:), v0);
  v27 = sub_766CA0();
  v37 = v27;
  v38 = &protocol witness table for StaticDimension;
  sub_B1B4(&v36);
  v34 = v0;
  v35 = &protocol witness table for FontSource;
  v11 = sub_B1B4(&v33);
  v26 = v1[2];
  v26(v11, v3, v0);
  sub_766CB0();
  v12 = v1[1];
  v24 = v1 + 1;
  v25 = v12;
  v12(v3, v0);
  if (qword_93D858 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v4, qword_99F100);
  v21[0] = v7;
  v21[1] = v8;
  v7(v3, v13, v4);
  v14 = v28;
  v28(v3, v9, v0);
  v23 = v10;
  v15 = v27;
  v34 = v27;
  v35 = &protocol witness table for StaticDimension;
  sub_B1B4(&v33);
  v22 = v9;
  v31 = v0;
  v32 = &protocol witness table for FontSource;
  v16 = sub_B1B4(&v30);
  v17 = v26;
  v26(v16, v3, v0);
  sub_766CB0();
  v18 = v25;
  v25(v3, v0);
  (v21[0])(v3, v13, v4);
  v14(v3, v22, v0);
  v31 = v15;
  v32 = &protocol witness table for StaticDimension;
  sub_B1B4(&v30);
  v29[3] = v0;
  v29[4] = &protocol witness table for FontSource;
  v19 = sub_B1B4(v29);
  v17(v19, v3, v0);
  sub_766CB0();
  v18(v3, v0);
  xmmword_99DBA0 = vdupq_n_s64(0x4044000000000000uLL);
  *algn_99DBB0 = xmmword_799AC0;
  xmmword_99DBC0 = xmmword_79E380;
  sub_34698(&v33, &unk_99DBF8);
  sub_34698(&v36, &unk_99DBD0);
  return sub_34698(&v30, &unk_99DC20);
}

char *sub_45F228(double a1, double a2, double a3, double a4)
{
  v9 = sub_7593D0();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v83 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_7674E0();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v79 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_767510();
  v81 = *(v12 - 8);
  v82 = v12;
  __chkstk_darwin(v12);
  v78 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v80 = &v71 - v15;
  v16 = sub_760AD0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v20 - 8);
  v22 = &v71 - v21;
  v23 = OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v24 = sub_75C840();
  (*(*(v24 - 8) + 56))(&v4[v23], 1, 1, v24);
  v25 = OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_93D158 != -1)
  {
    swift_once();
  }

  v74 = v17;
  v75 = xmmword_99DBA0;
  *&v4[v25] = xmmword_99DBA0;
  v73 = OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_alias;
  v86 = v4;
  if (qword_93D850 != -1)
  {
    swift_once();
  }

  v26 = sub_7666D0();
  v27 = sub_BE38(v26, qword_99F0E8);
  v28 = *(v26 - 8);
  v72 = *(v28 + 16);
  v72(v22, v27, v26);
  v71 = *(v28 + 56);
  v71(v22, 0, 1, v26);
  v29 = enum case for DirectionalTextAlignment.none(_:);
  v30 = *(v74 + 104);
  v30(v19, enum case for DirectionalTextAlignment.none(_:), v16);
  v31 = sub_75BB20();
  v74 = v16;
  v32 = v31;
  v33 = objc_allocWithZone(v31);
  *&v86[v73] = sub_75BB10();
  v73 = OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_displayName;
  if (qword_93D858 != -1)
  {
    swift_once();
  }

  v34 = sub_BE38(v26, qword_99F100);
  v72(v22, v34, v26);
  v71(v22, 0, 1, v26);
  v30(v19, v29, v74);
  v35 = objc_allocWithZone(v32);
  v36 = sub_75BB10();
  v37 = v86;
  *&v86[v73] = v36;
  v38 = &v37[OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_insets];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v38 = UIEdgeInsetsZero.top;
  v38[1] = left;
  v38[2] = bottom;
  v38[3] = right;
  v42 = OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_separatorView;
  (*(v76 + 104))(v79, enum case for Separator.Position.bottom(_:), v77);
  v88[3] = sub_766970();
  v88[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v88);
  sub_766960();
  v43 = v78;
  sub_7674F0();
  v44 = v80;
  sub_7674B0();
  v46 = v81;
  v45 = v82;
  (*(v81 + 8))(v43, v82);
  v47 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v48 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v49 = *(v46 + 40);
  v50 = v47;
  v49(&v47[v48], v44, v45);
  swift_endAccess();

  *&v37[v42] = v50;
  *&v37[OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_artworkView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v51 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell(0);
  v87.receiver = v37;
  v87.super_class = v51;
  v52 = objc_msgSendSuper2(&v87, "initWithFrame:", a1, a2, a3, a4);
  v53 = OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_artworkView;
  v54 = *&v52[OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_artworkView];
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v55 = v52;
  v56 = v54;
  sub_76A030();
  sub_759070();

  v57 = *&v52[v53];
  v58 = v83;
  sub_75CD20();
  sub_759200();

  (*(v84 + 8))(v58, v85);
  v59 = [v55 contentView];
  [v59 addSubview:*&v52[v53]];

  v60 = OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_alias;
  v61 = *&v55[OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_alias];
  v62 = sub_769FD0();
  [v61 setTextColor:v62];

  v63 = [v55 contentView];
  [v63 addSubview:*&v55[v60]];

  v64 = OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_displayName;
  v65 = *&v55[OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_displayName];
  v66 = sub_769FF0();
  [v65 setTextColor:v66];

  v67 = [v55 contentView];
  [v67 addSubview:*&v55[v64]];

  v68 = [v55 contentView];
  [v68 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v69 = [v55 contentView];
  [v69 addSubview:*&v55[OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_separatorView]];

  return v55;
}

uint64_t sub_45FC04()
{
  v1 = v0;
  v2 = sub_7664F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_767510();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SmallGameCenterPlayerCollectionViewCell(0);
  v40.receiver = v1;
  v40.super_class = v10;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_separatorView];
  [v1 bounds];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  (*(v7 + 16))(v9, &v11[v12], v6);
  sub_7674C0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  [v11 setFrame:{v14, v16, v18, v20}];
  v21 = [v1 contentView];
  sub_BE70(0, &qword_93E550, UIView_ptr);
  sub_75D650();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  if (qword_93D158 != -1)
  {
    swift_once();
  }

  sub_26F9C(&xmmword_99DBA0, v37);
  v30 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_artworkView];
  v37[24] = sub_759210();
  v37[25] = &protocol witness table for UIView;
  v37[21] = v30;
  v31 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_alias];
  v38 = sub_75BB20();
  v39 = &protocol witness table for UILabel;
  v32 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_displayName];
  v37[30] = &protocol witness table for UILabel;
  v37[31] = v31;
  v37[29] = v38;
  v37[26] = v32;
  v33 = v30;
  v34 = v31;
  v35 = v32;
  SmallGameCenterPlayerLayout.placeChildren(relativeTo:in:)(v1, v5, v23, v25, v27, v29);
  (*(v3 + 8))(v5, v2);
  return sub_26FF8(v37);
}

id sub_45FFB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallGameCenterPlayerCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmallGameCenterPlayerCollectionViewCell(uint64_t a1)
{
  result = qword_955998;
  if (!qword_955998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4600BC(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_460198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1D6CAC(a1, a2, a3, WitnessTable);
}

void sub_460204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1D6BD8(a1, a2, a3, WitnessTable);
}

unint64_t sub_460270(uint64_t a1)
{
  result = sub_460298();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_460298()
{
  result = qword_9559A8;
  if (!qword_9559A8)
  {
    type metadata accessor for SmallGameCenterPlayerCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9559A8);
  }

  return result;
}

void sub_4602F0()
{
  v1 = sub_7674E0();
  v46 = *(v1 - 8);
  v47 = v1;
  __chkstk_darwin(v1);
  v49 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_767510();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v41 - v6;
  v7 = sub_760AD0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_itemLayoutContext;
  v14 = sub_75C840();
  v15 = *(*(v14 - 8) + 56);
  v54 = v0;
  v15(v0 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_preferredArtworkSize;
  if (qword_93D158 != -1)
  {
    swift_once();
  }

  v43 = xmmword_99DBA0;
  *(v54 + v16) = xmmword_99DBA0;
  v42 = OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_alias;
  if (qword_93D850 != -1)
  {
    swift_once();
  }

  v17 = sub_7666D0();
  v18 = sub_BE38(v17, qword_99F0E8);
  v19 = *(v17 - 8);
  v41 = *(v19 + 16);
  v41(v12, v18, v17);
  v20 = *(v19 + 56);
  v20(v12, 0, 1, v17);
  v21 = enum case for DirectionalTextAlignment.none(_:);
  v22 = *(v8 + 104);
  v44 = v8 + 104;
  v45 = v7;
  v22(v53, enum case for DirectionalTextAlignment.none(_:), v7);
  v23 = sub_75BB20();
  v24 = objc_allocWithZone(v23);
  *(v54 + v42) = sub_75BB10();
  v25 = OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_displayName;
  if (qword_93D858 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v17, qword_99F100);
  v41(v12, v26, v17);
  v20(v12, 0, 1, v17);
  v22(v53, v21, v45);
  v27 = objc_allocWithZone(v23);
  v28 = sub_75BB10();
  v29 = v54;
  *(v54 + v25) = v28;
  v30 = (v29 + OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_insets);
  v31 = *&UIEdgeInsetsZero.bottom;
  *v30 = *&UIEdgeInsetsZero.top;
  v30[1] = v31;
  v32 = OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_separatorView;
  (*(v46 + 104))(v49, enum case for Separator.Position.bottom(_:), v47);
  v55[3] = sub_766970();
  v55[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v55);
  sub_766960();
  v33 = v48;
  sub_7674F0();
  v34 = v50;
  sub_7674B0();
  v36 = v51;
  v35 = v52;
  (*(v51 + 8))(v33, v52);
  v37 = [objc_allocWithZone(type metadata accessor for SeparatorView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_separator;
  swift_beginAccess();
  v39 = *(v36 + 40);
  v40 = v37;
  v39(&v37[v38], v34, v35);
  swift_endAccess();

  *(v29 + v32) = v40;
  sub_76A840();
  __break(1u);
}

char *sub_460924(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_eventCardView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for CondensedAppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_interRowSpacing] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for CondensedAppEventContentView();
  v11 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_lockupView]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_eventCardView]];

  return v15;
}

void sub_460B74()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for CondensedAppEventContentView();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  sub_75D650();
  v3 = v2;
  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_lockupView];
  v7 = [v0 traitCollection];
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_77D9F0;
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = sub_7671E0();
  [v6 measurementsWithFitting:v10 in:{v3, v5}];

  v11 = [v1 traitCollection];
  sub_769CA0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v6 setFrame:{v13, v15, v17, v19}];
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_eventCardView];
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v23 = v1;
    v24 = sub_76A1C0();

    if (v24)
    {
      sub_461548();
      [v20 setBounds:{0.0, 0.0}];
      [v20 setCenter:sub_461714()];
    }
  }
}

uint64_t sub_460E08()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_lockupView);
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  sub_7591D0(v20, v4);

  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_descriptionLabel];
  v6 = [v5 superview];
  if (!v6 || (v7 = v6, sub_BE70(0, &qword_93E550, UIView_ptr), v8 = v2, v9 = sub_76A1C0(), v7, v8, (v9 & 1) == 0))
  {
    [v2 addSubview:v5];
  }

  [v5 setHidden:1];
  [v5 setText:0];
  [v2 setNeedsLayout];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton;
  v11 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchAdTransparencyButton];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v2[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v2[v10] = 0;

  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_eventCardView);
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  sub_7591D0(v21, v14);
  [*(v13 + OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_titleLabel) setText:0];
  sub_268FDC(_swiftEmptyArrayStorage);
  v15 = (v13 + OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventViewTappedAction);
  v16 = *(v13 + OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventViewTappedAction);
  v17 = *(v13 + OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventViewTappedAction + 8);
  *v15 = 0;
  v15[1] = 0;

  return sub_F704(v16, v17);
}

void sub_460FE4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93F620, &unk_77E220);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  sub_7583C0();
  sub_463E94(&qword_93F5B0, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_75C750();
  v13 = v31;
  if (v31)
  {
    v30 = a1;
    v14 = sub_7583B0();
    v15 = sub_75C840();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_223E1C(v14, v12, a2);

    sub_10A2C(v12, &unk_93F620, &unk_77E220);
    v16 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_eventCardView];
    sub_7583A0();
    v17 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_titleLabel];
    sub_7586C0();
    v18 = sub_769210();
    v29 = v6;
    v19 = v18;

    [v17 setText:v19];

    v20 = sub_758660();
    [v16 setNeedsLayout];

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 2) = v21;
    *(v22 + 3) = v13;
    *(v22 + 4) = a2;
    v23 = &v16[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventViewTappedAction];
    v24 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventViewTappedAction];
    v25 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider25CondensedAppEventCardView_appEventViewTappedAction + 8];
    *v23 = sub_463F60;
    v23[1] = v22;

    sub_F704(v24, v25);

    swift_getKeyPath();
    sub_75C7B0();

    sub_765570();
    v27 = v26;
    (*(v7 + 8))(v9, v29);
    *&v3[OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_interRowSpacing] = v27;
    [v3 setNeedsLayout];
  }
}

void sub_461388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_7583A0();
    v9 = sub_758780();

    if (v9)
    {
      v10 = sub_BD88(&unk_93F630, &unk_77E230);
      sub_768860();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_10A2C(v6, &unk_93F980, &qword_77EDA0);
      }

      else
      {
        sub_32A6C0(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_461548()
{
  v1 = v0;
  v2 = sub_7578C0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_lockupView] frame];
  CGRectGetMaxY(v13);
  v7 = [v0 traitCollection];
  v8 = sub_769A00();

  if ((v8 & 1) == 0)
  {
    sub_7578B0();
    sub_7578A0();
    (*(v3 + 8))(v6, v2);
    sub_B170(v12, v12[3]);
    v9 = [v1 traitCollection];
    sub_766710();

    sub_BEB8(v12);
  }

  type metadata accessor for CondensedAppEventContentView();
  sub_75D650();
  CGRectGetHeight(v14);
  sub_75D650();
  CGRectGetWidth(v15);
  return 0.0;
}

CGFloat sub_461714()
{
  v1 = v0;
  v2 = sub_7578C0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_lockupView] frame];
  CGRectGetMaxY(v13);
  v7 = [v0 traitCollection];
  v8 = sub_769A00();

  if ((v8 & 1) == 0)
  {
    sub_7578B0();
    sub_7578A0();
    (*(v3 + 8))(v6, v2);
    sub_B170(v12, v12[3]);
    v9 = [v1 traitCollection];
    sub_766710();

    sub_BEB8(v12);
  }

  type metadata accessor for CondensedAppEventContentView();
  sub_75D650();
  CGRectGetHeight(v14);
  [v1 bounds];
  return CGRectGetWidth(v15) * 0.5;
}

id sub_461904(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CondensedAppEventContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_461A08(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_463E94(&qword_9559F8, a2, type metadata accessor for CondensedAppEventContentView, &unk_79E4DC);
  result = sub_463E94(qword_955A00, v3, type metadata accessor for CondensedAppEventContentView, &unk_79E50C);
  *(a1 + 32) = result;
  return result;
}

void sub_461A8C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  sub_134D8(a1, v17);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_7583C0();
  if (swift_dynamicCast())
  {
    sub_7583A0();
    v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_lockupView);
    v6 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
    v7 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    v18.value.super.isa = 0;
    v18.is_nil = 0;
    sub_7591D0(v18, v8);

    v9 = *(v5 + v6);
    sub_759210();
    sub_463E94(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v10 = v9;
    sub_75A0C0();

    v19.value.super.isa = 0;
    v19.is_nil = 0;
    sub_7591D0(v19, v11);
    sub_75A0C0();
    sub_7583B0();
    v12 = sub_764EE0();

    if (v12)
    {
      v13 = qword_93C668;
      v14 = *(v5 + v6);
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = sub_75CF00();
      sub_BE38(v15, qword_99B898);
      sub_75CDD0();
      [v14 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v14 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();
      v16 = *(v5 + v6);
      sub_75A050();
    }

    sub_14F84C();
  }
}

double sub_461DE8()
{
  v0 = sub_76A920();
  v116 = *(v0 - 8);
  v117 = v0;
  __chkstk_darwin(v0);
  v115 = &v83 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_7578C0();
  v113 = *(v2 - 8);
  v114 = v2;
  __chkstk_darwin(v2);
  v112 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_760840();
  v110 = *(v4 - 8);
  v111 = v4;
  __chkstk_darwin(v4);
  v109 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_760D90();
  v119 = *(v6 - 8);
  v120 = v6;
  __chkstk_darwin(v6);
  v85 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_762D10();
  v101 = *(v8 - 8);
  v102 = v8;
  __chkstk_darwin(v8);
  v100 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75D850();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v83 - v15;
  v17 = sub_760820();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v103 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v125 = &v83 - v21;
  v22 = sub_BD88(&unk_94AE30, qword_7864D0);
  __chkstk_darwin(v22 - 8);
  v84 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v124 = &v83 - v25;
  swift_getKeyPath();
  sub_75C7B0();

  v122 = v162[0];
  v26 = sub_7583B0();
  v27 = sub_764EF0();
  v91 = v28;
  v92 = v27;
  v29 = sub_764F70();
  v93 = v30;
  v94 = v29;
  if (sub_764E90() && (v31 = sub_75E5C0(), , v31))
  {
    v32 = sub_765720();
    v95 = v33;
    v96 = v32;
  }

  else
  {
    v95 = 0;
    v96 = 0;
  }

  v121 = sub_75BC90();
  (*(v119 + 56))(v124, 1, 1, v120);
  sub_75BCD0();
  v34 = [v122 traitCollection];
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v35 = sub_BE38(v17, qword_99B150);
  v97 = *(v18 + 16);
  v98 = v18 + 16;
  v97(v125, v35, v17);
  v36 = sub_769A00();
  v123 = v17;
  v104 = v26;
  v105 = v18;
  if (v36)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v37 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v37 = qword_946938;
  }

  v38 = sub_BE38(v10, v37);
  (*(v11 + 16))(v13, v38, v10);
  v107 = v11;
  v108 = v10;
  (*(v11 + 32))(v16, v13, v10);
  v39 = [v34 preferredContentSizeCategory];
  sub_769B20();
  v118 = v34;

  sub_75D800();
  v106 = v16;
  sub_75D830();
  sub_760810();
  sub_760800();
  v90 = sub_7670D0();
  swift_allocObject();
  v99 = sub_7670B0();
  v40 = objc_opt_self();
  v88 = v40;
  v41 = [v40 preferredFontForTextStyle:UIFontTextStyleBody];
  v42 = sub_7653B0();
  v163 = v42;
  v43 = sub_463E94(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v164 = v43;
  v87 = v43;
  v44 = sub_B1B4(v162);
  v45 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v89 = *(*(v42 - 8) + 104);
  v86 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v89(v44, enum case for Feature.measurement_with_labelplaceholder(_:), v42);
  sub_765C30();
  sub_BEB8(v162);
  v46 = v100;
  sub_762D00();
  sub_762CE0();
  v47 = v102;
  v101 = *(v101 + 8);
  (v101)(v46, v102);
  v48 = [v40 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v161[3] = v42;
  v161[4] = v43;
  v49 = sub_B1B4(v161);
  v50 = v45;
  v51 = v89;
  v89(v49, v50, v42);
  sub_765C30();
  sub_BEB8(v161);
  sub_762D00();
  sub_762CE0();
  v52 = v101;
  (v101)(v46, v47);
  v53 = [v88 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v160[3] = v42;
  v160[4] = v87;
  v54 = sub_B1B4(v160);
  v51(v54, v86, v42);
  sub_765C30();
  sub_BEB8(v160);
  sub_762D00();
  sub_762CE0();
  v52(v46, v47);
  v55 = v121;
  if ((sub_246DC() & (v55 != 0)) == 1)
  {
    v56 = v90;
    LODWORD(v102) = 1;
    v57 = objc_allocWithZone(sub_7671D0());
    v58 = v118;
    v59 = sub_7671C0();
    v60 = v84;
    sub_133294(v124, v84);
    v62 = v119;
    v61 = v120;
    v63 = *(v119 + 48);
    if (v63(v60, 1, v120) == 1)
    {
      v64 = v85;
      _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
      if (v63(v60, 1, v61) != 1)
      {
        sub_10A2C(v60, &unk_94AE30, qword_7864D0);
      }
    }

    else
    {
      v64 = v85;
      (*(v62 + 32))(v85, v60, v61);
    }

    v66 = v59;
    sub_2185C(v55, v64, v66, 0.0, 0.0);

    (*(v62 + 8))(v64, v61);
    swift_allocObject();
    v65 = sub_7670A0();
  }

  else
  {
    v56 = v90;
    swift_allocObject();
    v65 = sub_7670B0();
  }

  sub_246DC();
  swift_allocObject();
  v67 = sub_7670B0();
  v97(v103, v125, v123);
  v159 = &protocol witness table for LayoutViewPlaceholder;
  v158 = v56;
  v157 = v99;
  v156 = 0;
  *&v154[40] = 0u;
  v155 = 0u;
  sub_134D8(v162, v154);
  sub_134D8(v161, &v153);
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v149 = 0;
  v147 = 0u;
  v148 = 0u;

  v68 = sub_7670C0();
  v146 = &protocol witness table for LayoutViewPlaceholder;
  v145 = v56;
  v144 = v68;
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  v137 = 0;
  v135 = 0u;
  v136 = 0u;
  v134 = 0;
  v133 = 0u;
  *&v132[40] = 0u;
  sub_134D8(v160, v132);
  v130 = v56;
  v131 = &protocol witness table for LayoutViewPlaceholder;
  v128 = &protocol witness table for LayoutViewPlaceholder;
  v129 = v65;
  v127 = v56;
  v126 = v67;
  v69 = v109;
  sub_760830();
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_77D9F0;
  v71 = v118;
  *(v70 + 32) = v118;
  v72 = v71;
  v73 = sub_7671E0();
  sub_463E94(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v74 = v111;
  sub_7665A0();
  v76 = v75;

  (*(v110 + 8))(v69, v74);
  sub_BEB8(v160);
  sub_BEB8(v161);
  sub_BEB8(v162);
  (*(v107 + 8))(v106, v108);
  (*(v105 + 8))(v125, v123);
  sub_10A2C(v124, &unk_94AE30, qword_7864D0);
  v77 = v112;
  sub_7578B0();
  sub_7578A0();
  (*(v113 + 8))(v77, v114);
  v78 = v163;
  sub_B170(v162, v163);
  v79 = v115;
  sub_33964(v78);
  sub_766700();
  v81 = v80;

  swift_unknownObjectRelease();
  (*(v116 + 8))(v79, v117);
  sub_BEB8(v162);
  return v76 + v81;
}

double sub_462CB8(uint64_t a1)
{
  v2 = sub_7578C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v94[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_760840();
  v122 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_760D90();
  v126 = *(v9 - 8);
  v127 = v9;
  __chkstk_darwin(v9);
  v117 = &v94[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_762D10();
  v119 = *(v11 - 8);
  v120 = v11;
  __chkstk_darwin(v11);
  v118 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_75D850();
  v130 = *(v13 - 8);
  v131 = v13;
  __chkstk_darwin(v13);
  v15 = &v94[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v129 = &v94[-v17];
  v135 = sub_760820();
  v128 = *(v135 - 8);
  __chkstk_darwin(v135);
  v121 = &v94[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v94[-v20];
  v22 = sub_BD88(&unk_94AE30, qword_7864D0);
  __chkstk_darwin(v22 - 8);
  v116 = &v94[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v133 = &v94[-v25];
  sub_7583C0();
  sub_463E94(&qword_93F5B0, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_75C750();
  if (!v172[0])
  {
    return 0.0;
  }

  v132 = v21;
  v114 = v3;
  v109 = v172[0];
  v26 = sub_7583B0();
  swift_getKeyPath();
  sub_75C7B0();

  v134 = v172[0];

  v27 = sub_764EF0();
  v100 = v28;
  v101 = v27;
  v29 = sub_764F70();
  v102 = v30;
  v103 = v29;
  v31 = sub_764E90();
  v125 = v26;

  if (v31 && (v32 = sub_75E5C0(), , v32))
  {
    v33 = sub_765720();
    v104 = v34;
    v105 = v33;
  }

  else
  {
    v104 = 0;
    v105 = 0;
  }

  v35 = v132;
  v124 = sub_75BC90();
  (*(v126 + 56))(v133, 1, 1, v127);
  sub_75BCD0();
  if (qword_93C3F8 != -1)
  {
    swift_once();
  }

  v36 = v135;
  v37 = sub_BE38(v135, qword_99B150);
  v106 = *(v128 + 16);
  v107 = v128 + 16;
  v106(v35, v37, v36);
  v38 = sub_769A00();
  v115 = v2;
  v112 = a1;
  v113 = v5;
  v110 = v8;
  v111 = v6;
  if (v38)
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v39 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v39 = qword_946938;
  }

  v41 = v131;
  v42 = sub_BE38(v131, v39);
  v43 = v130;
  (*(v130 + 16))(v15, v42, v41);
  (*(v43 + 32))(v129, v15, v41);
  v44 = [v134 preferredContentSizeCategory];
  sub_769B20();

  sub_75D800();
  sub_75D830();
  sub_760810();
  sub_760800();
  v99 = sub_7670D0();
  swift_allocObject();
  v108 = sub_7670B0();
  v45 = objc_opt_self();
  v97 = v45;
  v46 = [v45 preferredFontForTextStyle:UIFontTextStyleBody];
  v47 = sub_7653B0();
  v173 = v47;
  v123 = sub_463E94(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v174 = v123;
  v48 = sub_B1B4(v172);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(v47 - 8);
  v98 = *(v50 + 104);
  v51 = v50 + 104;
  v95 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v98(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v47);
  v96 = v51;
  sub_765C30();
  sub_BEB8(v172);
  v52 = v118;
  sub_762D00();
  sub_762CE0();
  v53 = v120;
  v54 = *(v119 + 8);
  v54(v52, v120);
  v55 = [v45 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v171[3] = v47;
  v171[4] = v123;
  v56 = sub_B1B4(v171);
  v57 = v49;
  v58 = v98;
  v98(v56, v57, v47);
  sub_765C30();
  sub_BEB8(v171);
  sub_762D00();
  sub_762CE0();
  v54(v52, v53);
  v59 = [v97 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v170[3] = v47;
  v170[4] = v123;
  v60 = sub_B1B4(v170);
  v58(v60, v95, v47);
  sub_765C30();
  sub_BEB8(v170);
  sub_762D00();
  sub_762CE0();
  v54(v52, v53);
  v61 = v124;
  LODWORD(v123) = sub_246DC() & (v61 != 0);
  if (v123 == 1)
  {
    v62 = v99;
    v63 = objc_allocWithZone(sub_7671D0());
    v64 = v134;
    v65 = sub_7671C0();
    v66 = v116;
    sub_133294(v133, v116);
    v68 = v126;
    v67 = v127;
    v69 = *(v126 + 48);
    if (v69(v66, 1, v127) == 1)
    {
      v70 = v117;
      _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
      if (v69(v66, 1, v67) != 1)
      {
        sub_10A2C(v66, &unk_94AE30, qword_7864D0);
      }
    }

    else
    {
      v70 = v117;
      (*(v68 + 32))(v117, v66, v67);
    }

    v72 = v65;
    sub_2185C(v61, v70, v72, 0.0, 0.0);

    (*(v68 + 8))(v70, v67);
    swift_allocObject();
    v71 = sub_7670A0();
  }

  else
  {
    v62 = v99;
    swift_allocObject();
    v71 = sub_7670B0();
  }

  v73 = v71;
  v74 = v110;

  sub_246DC();
  swift_allocObject();
  v75 = sub_7670B0();
  v106(v121, v132, v135);
  v169 = &protocol witness table for LayoutViewPlaceholder;
  v168 = v62;
  v167 = v108;
  v166 = 0;
  *&v164[40] = 0u;
  v165 = 0u;
  sub_134D8(v172, v164);
  sub_134D8(v171, &v163);
  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v159 = 0;
  v157 = 0u;
  v158 = 0u;

  v76 = sub_7670C0();
  v156 = &protocol witness table for LayoutViewPlaceholder;
  v155 = v62;
  v154 = v76;
  v153 = 0;
  v151 = 0u;
  v152 = 0u;
  v150 = 0;
  v148 = 0u;
  v149 = 0u;
  v147 = 0;
  v145 = 0u;
  v146 = 0u;
  v144 = 0;
  v143 = 0u;
  *&v142[40] = 0u;
  sub_134D8(v170, v142);
  v140 = v62;
  v141 = &protocol witness table for LayoutViewPlaceholder;
  v138 = &protocol witness table for LayoutViewPlaceholder;
  v139 = v73;
  v137 = v62;
  v136 = v75;
  sub_760830();
  sub_7671D0();
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_77D9F0;
  v78 = v134;
  *(v77 + 32) = v134;
  v79 = v78;
  v80 = sub_7671E0();
  sub_463E94(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v81 = v111;
  sub_7665A0();
  v83 = v82;

  (*(v122 + 8))(v74, v81);
  sub_BEB8(v170);
  sub_BEB8(v171);
  sub_BEB8(v172);
  (*(v130 + 8))(v129, v131);
  (*(v128 + 8))(v132, v135);
  sub_10A2C(v133, &unk_94AE30, qword_7864D0);
  swift_getKeyPath();
  sub_75C7B0();

  v84 = v172[0];
  if (sub_769A00())
  {
    v85 = sub_6913F4();
  }

  else
  {
    v85 = sub_692450();
  }

  v86 = v85;
  v88 = v114;
  v87 = v115;
  v89 = v113;

  v90 = v83 + v86;
  sub_7578B0();
  sub_7578A0();
  (*(v88 + 8))(v89, v87);
  sub_B170(v172, v173);
  sub_766710();
  v92 = v91;

  v40 = v90 + v92;
  sub_BEB8(v172);
  return v40;
}

double sub_463B9C()
{
  sub_7583C0();
  sub_463E94(&qword_93F5B0, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_75C750();
  if (v5)
  {
    sub_7583B0();
    v1 = sub_764EE0();

    if (v1)
    {
      if (qword_93C668 != -1)
      {
        swift_once();
      }

      v2 = sub_75CF00();
      sub_BE38(v2, qword_99B898);
      sub_75CDD0();
      sub_765330();
      sub_769440();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
    }

    sub_7583A0();
    sub_527DE4();
    v3 = sub_14FA90();

    swift_unknownObjectRelease();
    sub_10A0E4(v3);
    v4._rawValue = _swiftEmptyArrayStorage;
    sub_75A070(v4);
  }

  return result;
}

uint64_t sub_463D80()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28CondensedAppEventContentView_lockupView);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  sub_7591D0(v9, v4);

  v5 = *(v1 + v2);
  sub_759210();
  sub_463E94(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v6 = v5;
  sub_75A0C0();

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_7591D0(v10, v7);
  return sub_75A0C0();
}

uint64_t sub_463E94(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_463EE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_463F18()
{

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_463FD8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v49 = swift_isaMask & *v4;
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  v50 = v10;
  v51 = v11;
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_760AD0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v18 - 8);
  v20 = &v42 - v19;
  v21 = &v5[qword_99DC90];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[qword_99DC98];
  *v22 = 0;
  *(v22 + 1) = 0;
  swift_weakInit();
  if (qword_93D9A0 != -1)
  {
    swift_once();
  }

  v23 = sub_7666D0();
  v24 = sub_BE38(v23, qword_99F4D8);
  v25 = *(v23 - 8);
  v48 = *(v25 + 16);
  v48(v20, v24, v23);
  v47 = *(v25 + 56);
  v47(v20, 0, 1, v23);
  v26 = *(v15 + 104);
  v42 = v15 + 104;
  v46 = enum case for DirectionalTextAlignment.none(_:);
  v45 = v26;
  v26(v17);
  v44 = sub_75BB20();
  v27 = objc_allocWithZone(v44);
  v43 = v14;
  v28 = sub_75BB10();
  *&v5[qword_99DC80] = v28;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v29 = v28;
  sub_768C10();
  sub_10A2C(&v53, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v55, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v30 = *(v51 + 8);
  v51 += 8;
  v30(v13, v50);
  if (qword_93D9A8 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v23, qword_99F4F0);
  v48(v20, v31, v23);
  v47(v20, 0, 1, v23);
  v45(v17, v46, v43);
  v32 = objc_allocWithZone(v44);
  v33 = sub_75BB10();
  *&v5[qword_99DC88] = v33;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v34 = v33;
  sub_768C10();
  sub_10A2C(&v53, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(&v55, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  v30(v13, v50);
  v37 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(v49 + 640), v35, v36);
  v52.receiver = v5;
  v52.super_class = v37;
  v38 = objc_msgSendSuper2(&v52, "initWithFrame:", a1, a2, a3, a4);
  v39 = [v38 contentView];
  [v39 addSubview:*&v38[qword_99DC80]];

  v40 = [v38 contentView];
  [v40 addSubview:*&v38[qword_99DC88]];

  return v38;
}

uint64_t sub_464618(uint64_t result, char a2)
{
  v3 = v2 + qword_99DC90;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

double sub_464634(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_99DC98);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRelease();
  return result;
}

double sub_464660()
{
  v1 = sub_76A920();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) == 1)
  {
    v6 = [v0 traitCollection];
    v7 = sub_7F204(v6, v0);
  }

  else
  {
    if (qword_93C290 != -1)
    {
      swift_once();
    }

    v8 = sub_766CA0();
    sub_BE38(v8, qword_99A370);
    sub_766470();
    sub_766700();
    v7 = v9;
    (*(v2 + 8))(v5, v1);
  }

  return v7;
}

double sub_4647E8()
{
  v0 = sub_76A920();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C2A0 != -1)
  {
    swift_once();
  }

  v4 = sub_766CA0();
  sub_BE38(v4, qword_99A3A0);
  sub_766470();
  sub_766700();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_464928()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v8 - 8);
  v10 = v36 - v9 + 16;
  v13 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(&stru_248.reloff + (v3 & v2)), v11, v12);
  v39.receiver = v1;
  v39.super_class = v13;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v14 = [v1 contentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v36[0] = v16;
  v36[1] = v18;
  v37 = v20;
  v38 = v22;
  sub_464D2C(v36);
  v23 = [v1 contentView];
  [v23 layoutMargins];
  v25 = v24;
  v27 = v26;

  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) == 1)
  {
    v28 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_5FC64(v1 + v28, v10);
    if ((*(v5 + 48))(v10, 1, v4))
    {
      sub_10A2C(v10, &unk_955AA0, &qword_783ED0);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      sub_10A2C(v10, &unk_955AA0, &qword_783ED0);
      v29 = [v1 traitCollection];
      sub_765650();
      sub_765650();
      [v29 layoutDirection];
      sub_769BB0();
      v25 = v30;
      v27 = v31;

      (*(v5 + 8))(v7, v4);
    }
  }

  v36[0] = v16 + v25;
  v37 = v20 - (v27 + v25);
  v32.n128_f64[0] = sub_465198(v36);
  v33 = (*&stru_338.sectname[swift_isaMask & *v1])(v36, v32);
  return (*&stru_1A8.sectname[swift_isaMask & *v1])(v33);
}

void sub_464CE4(void *a1)
{
  v1 = a1;
  sub_464928();
}

void sub_464D2C(CGFloat *a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  if (*&v1[qword_99DC98])
  {
    v7 = *&v1[qword_99DC98 + 8];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v50 = v9(ObjectType, v7);
    v10 = v9(ObjectType, v7);
    v11 = [v10 isHidden];

    if (v11)
    {
      swift_unknownObjectRelease();
      v12 = v50;
    }

    else
    {
      if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) == 1)
      {
        if ((*(v7 + 72))(ObjectType, v7))
        {
          sub_283514();
          v14 = v13;
          v16 = v15;
        }

        else
        {
          v29 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          sub_5FC64(v2 + v29, v6);
          v30 = [v2 traitCollection];
          sub_28377C(v6, v30);
          v14 = v31;
          v16 = v32;

          sub_10A2C(v6, &unk_955AA0, &qword_783ED0);
        }

        v33 = [v2 traitCollection];
        v34 = sub_7699F0();

        [v50 layoutMargins];
        [v50 setLayoutMargins:?];
        [v50 layoutMargins];
        if ((v34 & 1) == 0)
        {
          v14 = v16;
        }
      }

      else
      {
        v17 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_5FC64(v2 + v17, v6);
        LOBYTE(v17) = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory);
        v18 = [v2 traitCollection];
        sub_28423C(v6, v17, v18);
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v14 = v25;

        sub_10A2C(v6, &unk_955AA0, &qword_783ED0);
        v26 = v24;
        v27 = v22;
        v28 = v20;
      }

      [v50 setLayoutMargins:{v28, v27, v26, v14}];
      v35 = [v2 contentView];
      [v35 bounds];
      v37 = v36;
      v39 = v38;

      [v50 sizeThatFits:{v37, v39}];
      v41 = v40;
      v42 = *a1;
      v43 = a1[1];
      v44 = a1[2];
      v45 = a1[3];
      v52.origin.x = *a1;
      v52.origin.y = v43;
      v52.size.width = v44;
      v52.size.height = v45;
      MinX = CGRectGetMinX(v52);
      v53.origin.x = v42;
      v53.origin.y = v43;
      v53.size.width = v44;
      v53.size.height = v45;
      v47 = CGRectGetMaxY(v53) - v41;
      v54.origin.x = v42;
      v54.origin.y = v43;
      v54.size.width = v44;
      v54.size.height = v45;
      Width = CGRectGetWidth(v54);
      [v50 setFrame:{MinX, v47, Width, v41}];
      v55.origin.x = MinX;
      v55.origin.y = v47;
      v55.size.width = Width;
      v55.size.height = v41;
      Height = CGRectGetHeight(v55);
      swift_unknownObjectRelease();

      a1[3] = v45 - Height;
    }
  }
}

double sub_465198(CGFloat *a1)
{
  v3 = sub_464660();
  v36 = sub_4647E8();
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    sub_283514();
    v9 = v8;
  }

  else
  {
    v10 = [v1 contentView];
    [v10 layoutMargins];
    v9 = v11;
  }

  v12 = v7 - v9;
  v13 = *&v1[qword_99DC80];
  [v13 measurementsWithFitting:v1 in:{v12, v6}];
  v15 = v14;
  v17 = v16;
  v34 = v18;
  v37.origin.x = v5;
  v37.origin.y = v4;
  v37.size.width = v12;
  v37.size.height = v6;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v5;
  v38.origin.y = v4;
  v38.size.width = v12;
  v38.size.height = v6;
  v20 = CGRectGetMinY(v38) + v3 - v17;
  v39.origin.x = v5;
  v39.origin.y = v4;
  v39.size.width = v12;
  v39.size.height = v6;
  Width = CGRectGetWidth(v39);
  [v1 bounds];
  sub_769D20();
  [v13 setFrame:?];
  v40.origin.x = MinX;
  v40.origin.y = v20;
  v40.size.width = Width;
  v40.size.height = v15;
  v22 = CGRectGetMaxY(v40) - v34;
  v23 = *&v1[qword_99DC88];
  v41.origin.x = v5;
  v41.origin.y = v4;
  v41.size.width = v12;
  v41.size.height = v6;
  v24 = CGRectGetWidth(v41);
  v42.origin.x = v5;
  v42.origin.y = v4;
  v42.size.width = v12;
  v42.size.height = v6;
  [v23 measurementsWithFitting:v1 in:{v24, CGRectGetHeight(v42) - v22}];
  v26 = v25;
  v28 = v27;
  v35 = v29;
  v43.origin.x = v5;
  v43.origin.y = v4;
  v43.size.width = v12;
  v43.size.height = v6;
  v30 = CGRectGetMinX(v43);
  v44.origin.x = v5;
  v44.origin.y = v4;
  v44.size.width = v12;
  v44.size.height = v6;
  v31 = CGRectGetWidth(v44);
  [v1 bounds];
  sub_769D20();
  [v23 setFrame:?];
  v45.origin.x = v30;
  v45.origin.y = v22 + v36 - v28;
  v45.size.width = v31;
  v45.size.height = v26;
  v32 = CGRectGetMaxY(v45) - v35;
  a1[1] = v4 + v32;
  result = v6 - v32;
  a1[3] = result;
  return result;
}

uint64_t sub_465428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(&stru_248.reloff + (swift_isaMask & *v4)), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, "prepareForReuse");
  return sub_42E108(v5, &off_892708);
}

void sub_4654A0(void *a1)
{
  v4 = a1;
  sub_465428(v4, v1, v2, v3);
}

void sub_4654E8()
{
  sub_28399C();
  if (*(v0 + qword_99DC98))
  {
    v1 = *(v0 + qword_99DC98 + 8);
    ObjectType = swift_getObjectType();
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded);
    v4 = *(v1 + 32);
    swift_unknownObjectRetain();
    v4(v3, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  if (*(v0 + qword_99DC98))
  {
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 20.0;
    }

    v6 = *(v0 + qword_99DC98 + 8);
    v7 = swift_getObjectType();
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    v9 = v8(v7, v6);
    swift_unknownObjectRelease();
    [v9 _setContinuousCornerRadius:v5];
  }
}

id sub_465654(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a4;
  v57 = swift_isaMask & *v4;
  v9 = sub_765B10();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v13 - 8);
  v15 = &v56 - v14;
  v16 = sub_7656C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v59 = a3;
  v18(v15, a3, v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_A8F3C(v15, &v5[v19]);
  swift_endAccess();
  sub_28026C(a2);
  v20 = [v5 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_765A30();
    if (!v22)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v22 = sub_76A060();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v58 = a2;
  v24 = *&v5[qword_99DC80];
  sub_765B50();
  if (v25)
  {
    v26 = sub_769210();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  sub_765B30();
  v27 = sub_765AD0();
  v28 = *(v10 + 8);
  v28(v12, v9);
  [v24 setTextColor:v27];

  v29 = a1;
  v30 = UIAccessibilityTraitButton;
  [v24 setAccessibilityTraits:UIAccessibilityTraitButton];
  v31 = *&v5[qword_99DC88];
  v32 = v29;
  sub_765B40();
  if (v33)
  {
    v34 = sub_769210();
  }

  else
  {
    v34 = 0;
  }

  v35 = v58;
  [v31 setText:v34];

  sub_765B30();
  v36 = sub_765AC0();
  v28(v12, v9);
  [v31 setTextColor:v36];

  [v31 setAccessibilityTraits:v30];
  v37 = [v5 backgroundView];
  v38 = v59;
  if (v37)
  {
    v39 = v37;
    v40 = sub_765A30();
    if (!v40)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v40 = sub_76A060();
    }

    v41 = v40;
    [v39 setBackgroundColor:v40];
  }

  v42 = [v5 contentView];
  v43 = [v5 traitCollection];
  if (v35 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [v43 layoutDirection];
  sub_769BB0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  [v42 setLayoutMargins:{v45, v47, v49, v51}];
  v54 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(v57 + 640), v52, v53);
  return [v5 setNeedsLayout];
}

void sub_465BC0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_BD88(&unk_955AA0, &qword_783ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - v9;
  if ((a3 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v12 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_A8F3C(v10, &v4[v12]);
    swift_endAccess();
    v13 = (*(a2 + 160))(ObjectType, a2);
    v4[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] = v13;
    if (v13 == 4)
    {
      v14 = [v4 contentView];
      [v14 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v15 = (*(a2 + 136))(ObjectType, a2);
    sub_28026C(v15);
  }

  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + qword_99DC98);
    if (v18 && *&v4[qword_99DC98])
    {
      v46 = *(v16 + qword_99DC98 + 8);
      v19 = *&v4[qword_99DC98 + 8];
      v20 = swift_getObjectType();
      v21 = *(v19 + 120);
      v22 = a1;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21(v18, v46, a3 & 1, v20, v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (a3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = a1;
      if (a3)
      {
LABEL_14:

        return;
      }
    }

    v24 = qword_99DC80;
    v25 = *&v4[qword_99DC80];
    v26 = [*&v17[qword_99DC80] text];
    [v25 setText:v26];

    v27 = [*&v17[v24] textColor];
    [v25 setTextColor:v27];

    v28 = qword_99DC88;
    v29 = *&v4[qword_99DC88];
    v30 = [*&v17[qword_99DC88] text];
    [v29 setText:v30];

    v31 = [*&v17[v28] textColor];
    [v29 setTextColor:v31];

    v32 = [v4 backgroundView];
    if (v32)
    {
      v33 = v32;
      v34 = [v17 backgroundView];
      v35 = [v34 backgroundColor];

      [v33 setBackgroundColor:v35];
    }

    v36 = [v4 contentView];
    v37 = [v17 contentView];
    [v37 layoutMargins];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    [v36 setLayoutMargins:{v39, v41, v43, v45}];
    [v4 setNeedsLayout];
    goto LABEL_14;
  }
}

double sub_466000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_134D8(a1, v9);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_765B70();
  if (swift_dynamicCast())
  {
    v5 = sub_765B60();
    if (v5)
    {
      v6 = v5;
      v7 = *(v3 + qword_99DC98);
      if (v7)
      {
        v9[3] = sub_75C250();
        v9[4] = sub_42E6EC();
        v9[0] = v6;
        v8[3] = swift_getObjectType();
        v8[0] = v7;
        swift_unknownObjectRetain_n();

        sub_758EF0();
        swift_unknownObjectRelease();

        sub_BEB8(v8);
        sub_10A2C(v9, &unk_963040, &qword_77F400);
        return result;
      }
    }
  }

  return result;
}

double sub_466148(uint64_t a1)
{
  if (*(v1 + qword_99DC98))
  {
    v3 = *(v1 + qword_99DC98 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v5(a1, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_4661EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(&stru_248.reloff + (swift_isaMask & *v4)), a3, a4);
  v13.receiver = v4;
  v13.super_class = v6;
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v7 = [v4 traitCollection];
  v8 = [v7 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v8 != result))
  {
    if (qword_93C298 != -1)
    {
      swift_once();
    }

    v10 = sub_BD88(&unk_93F8F0, &qword_78CC50);
    sub_BE38(v10, qword_99A388);
    v11 = v4;
    sub_7592B0();

    sub_76A150();
    if (qword_93C2A8 != -1)
    {
      swift_once();
    }

    sub_BE38(v10, qword_99A3B8);
    v12 = v11;
    sub_7592B0();

    return sub_76A150();
  }

  return result;
}

void sub_4663C0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v8 = a1;
  sub_4661EC(a3, v8, v6, v7);
}

void sub_46642C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = &selRef_setSpeed_;
  v9 = &selRef_absoluteDimension_;
  if (a3)
  {
    ObjectType = swift_getObjectType();
    v12 = *(a4 + 16);
    v13 = v12(ObjectType, a4);
    [v13 removeFromSuperview];

    v14 = swift_getObjectType();
    v15 = v12(v14, a4);
    [v15 _setContinuousCornerRadius:0.0];

    v9 = &selRef_absoluteDimension_;
    v16 = v12(v14, a4);
    v17 = [v16 layer];

    [v17 setMaskedCorners:15];
    v8 = &selRef_setSpeed_;
  }

  if (a1)
  {
    v18 = v8;
    v19 = swift_getObjectType();
    v20 = *(a2 + 16);
    swift_unknownObjectRetain();
    v21 = v20(v19, a2);
    v22 = v21;
    v23 = 20.0;
    if (v5[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v23 = 0.0;
    }

    [v21 v18[346]];
    v24 = [v22 v9[1]];
    [v24 setMaskedCorners:12];

    v25 = [v5 contentView];
    [v25 addSubview:v22];
    swift_unknownObjectRelease();
  }
}

void sub_46664C()
{
  sub_281340();
  v1 = [v0 contentView];
  v2 = [*&v0[qword_99DC80] text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_769240();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v33 = v4;
  v34 = v6;
  v7 = [*&v0[qword_99DC88] text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_769240();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v35 = v9;
  v36 = v11;
  if (*&v0[qword_99DC98])
  {
    v12 = *&v0[qword_99DC98 + 8];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 16);
    swift_unknownObjectRetain();
    v15 = v14(ObjectType, v12);
    swift_unknownObjectRelease();
    v16 = [v15 accessibilityLabel];

    if (v16)
    {
      v17 = sub_769240();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v37 = v17;
    v38 = v19;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
LABEL_14:
  if (v20 <= 3)
  {
    v22 = 3;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 + 1;
  v24 = 16 * v20 + 40;
  while (1)
  {
    if (v20 == 3)
    {
      sub_BD88(&qword_941BA0, &qword_7811C0);
      swift_arrayDestroy();
      sub_BD88(&unk_947FF0, &unk_7801F0);
      sub_5FBA8();
      sub_7691A0();

      v31 = sub_769210();

      [v1 setAccessibilityLabel:v31];

      return;
    }

    if (v23 == ++v20)
    {
      break;
    }

    v25 = v24 + 16;
    v26 = *&v32[v24];
    v24 += 16;
    if (v26)
    {
      v27 = *&v32[v25 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_7B5CC(0, *(v21 + 2) + 1, 1, v21);
      }

      v29 = *(v21 + 2);
      v28 = *(v21 + 3);
      if (v29 >= v28 >> 1)
      {
        v21 = sub_7B5CC((v28 > 1), v29 + 1, 1, v21);
      }

      *(v21 + 2) = v29 + 1;
      v30 = &v21[2 * v29];
      *(v30 + 4) = v27;
      *(v30 + 5) = v26;
      goto LABEL_14;
    }
  }

  __break(1u);
}

Class sub_466954(void *a1)
{
  v1 = a1;
  v2 = sub_4669C4();

  if (v2)
  {
    v3.super.isa = sub_769450().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t sub_4669C4()
{
  sub_BD88(&qword_941C10, &qword_781230);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77B6D0;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_BE70(0, &qword_93E550, UIView_ptr);
  *(v1 + 32) = v2;
  if (*&v0[qword_99DC98] && (v3 = *&v0[qword_99DC98 + 8], ObjectType = swift_getObjectType(), v5 = *(v3 + 144), swift_unknownObjectRetain(), v6 = v5(ObjectType, v3), swift_unknownObjectRelease(), v6))
  {
    v7 = v6;
  }

  else
  {

    v7 = _swiftEmptyArrayStorage;
  }

  sub_10A4D4(v7);
  return v1;
}

void sub_466AE4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_769460();
  }

  else
  {
    v4 = 0;
  }

  v7 = a1;
  sub_466B5C(v4, v7, v5, v6);
}

void sub_466B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_isaMask & *v4;
  if (a1)
  {
    v6.super.isa = sub_769450().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(v5 + 640), a3, a4);
  v8.receiver = v4;
  v8.super_class = v7;
  objc_msgSendSuper2(&v8, "setAccessibilityElements:", v6.super.isa);
}

uint64_t sub_466C14()
{
  swift_unknownObjectRelease();

  return swift_weakDestroy();
}

id sub_466C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LegacyTodayCardCollectionViewCell(0, *(&stru_248.reloff + (swift_isaMask & *v4)), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_466CD0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_weakDestroy();
}

double sub_466D78()
{
  sub_466DEC();
  swift_unknownObjectRetain();
  return result;
}

double sub_466DAC(uint64_t a1)
{
  sub_466E00(a1);

  return result;
}

char *sub_466E14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_9593A0) = 0x409F400000000000;
  v8 = qword_9593A8;
  sub_7646B0();
  swift_allocObject();
  *(v2 + v8) = sub_7646A0();
  v9 = qword_9593B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_757640();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_9593B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_9593C0) = 0;
  *(v3 + qword_9593C8) = 0;
  sub_764530();
  *(v3 + qword_99E1B0) = 0;
  *(v3 + qword_99E1C8) = 0;
  *(v3 + qword_9593D0) = 0;
  *(v3 + qword_9593D8) = 0;
  *(v3 + qword_99E1D0) = 0;
  v17 = qword_99E1D8;
  v18 = objc_allocWithZone(sub_75FA60());
  *(v3 + v17) = sub_75FA50();
  v19 = qword_99E1E0;
  sub_BD88(&qword_955DB0, &qword_79E790);
  swift_allocObject();
  *(v3 + v19) = sub_75FC30();
  *(v3 + qword_99E1E8) = 1;
  *(v3 + qword_9593E8) = 0;
  *(v3 + qword_99E1F0) = 0;
  v20 = qword_99E1F8;
  sub_75EA00();
  swift_allocObject();
  *(v3 + v20) = sub_75E9F0();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10D150(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_768490();
  v22 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_99E1A8) = v47;

  sub_761840();
  sub_75F510();

  sub_75A110();
  sub_768880();
  *(v3 + qword_99E1B8) = v48[0];
  sub_762C90();
  sub_768880();
  *(v3 + qword_99E1C0) = v48[0];
  sub_75F520();
  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v3 + qword_9593E0) = sub_761500();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_7212CC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_99E1E0] = sub_75FC30();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v29 = v48[0];
  sub_7610F0();

  sub_75E3E0();

  sub_768ED0();

  v30 = v48[0];
  sub_75E3A0();

  v48[3] = sub_763920();
  v48[4] = sub_479258(&qword_955DB8, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_45A2C(v48, &v27[v31]);
  swift_endAccess();
  sub_479258(&qword_955DC0, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_75EBC0();

  v32 = qword_99E1D8;
  v33 = *&v27[qword_99E1D8];

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v34 = *&v27[v32];

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v35 = *&v27[v32];
  sub_478864(&qword_955DC8, &qword_955DB0, &qword_79E790);
  v36 = v35;

  sub_75FA40();

  v37 = *&v27[v32];

  sub_75FA40();

  v38 = *&v27[v32];
  v39 = qword_9593B8;
  sub_479258(&qword_955DA8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A36E0);
  v40 = v38;

  sub_75FA40();

  v41 = *&v27[qword_99E1C0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_762C70();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_895208;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_467808(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_9593A0) = 0x409F400000000000;
  v8 = qword_9593A8;
  sub_7646B0();
  swift_allocObject();
  *(v2 + v8) = sub_7646A0();
  v9 = qword_9593B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_757640();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_9593B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_9593C0) = 0;
  *(v3 + qword_9593C8) = 0;
  sub_764530();
  *(v3 + qword_99E1B0) = 0;
  *(v3 + qword_99E1C8) = 0;
  *(v3 + qword_9593D0) = 0;
  *(v3 + qword_9593D8) = 0;
  *(v3 + qword_99E1D0) = 0;
  v17 = qword_99E1D8;
  v18 = objc_allocWithZone(sub_75FA60());
  *(v3 + v17) = sub_75FA50();
  v19 = qword_99E1E0;
  sub_BD88(&qword_955D80, &unk_79E780);
  swift_allocObject();
  *(v3 + v19) = sub_75FC30();
  *(v3 + qword_99E1E8) = 1;
  *(v3 + qword_9593E8) = 0;
  *(v3 + qword_99E1F0) = 0;
  v20 = qword_99E1F8;
  sub_75EA00();
  swift_allocObject();
  *(v3 + v20) = sub_75E9F0();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10D150(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_768490();
  v22 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_99E1A8) = v47;

  sub_761840();
  sub_75F510();

  sub_75A110();
  sub_768880();
  *(v3 + qword_99E1B8) = v48[0];
  sub_762C90();
  sub_768880();
  *(v3 + qword_99E1C0) = v48[0];
  sub_75F520();
  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v3 + qword_9593E0) = sub_761500();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_7212CC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_99E1E0] = sub_75FC30();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v29 = v48[0];
  sub_7610F0();

  sub_75E3E0();

  sub_768ED0();

  v30 = v48[0];
  sub_75E3A0();

  v48[3] = sub_762960();
  v48[4] = sub_479258(&unk_955D88, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_45A2C(v48, &v27[v31]);
  swift_endAccess();
  sub_479258(&qword_955D98, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_75EBC0();

  v32 = qword_99E1D8;
  v33 = *&v27[qword_99E1D8];

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v34 = *&v27[v32];

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v35 = *&v27[v32];
  sub_478864(&qword_955DA0, &qword_955D80, &unk_79E780);
  v36 = v35;

  sub_75FA40();

  v37 = *&v27[v32];

  sub_75FA40();

  v38 = *&v27[v32];
  v39 = qword_9593B8;
  sub_479258(&qword_955DA8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A36E0);
  v40 = v38;

  sub_75FA40();

  v41 = *&v27[qword_99E1C0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_762C70();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_895208;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_4681FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_9593A0) = 0x409F400000000000;
  v8 = qword_9593A8;
  sub_7646B0();
  swift_allocObject();
  *(v2 + v8) = sub_7646A0();
  v9 = qword_9593B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_757640();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_9593B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_9593C0) = 0;
  *(v3 + qword_9593C8) = 0;
  sub_764530();
  *(v3 + qword_99E1B0) = 0;
  *(v3 + qword_99E1C8) = 0;
  *(v3 + qword_9593D0) = 0;
  *(v3 + qword_9593D8) = 0;
  *(v3 + qword_99E1D0) = 0;
  v17 = qword_99E1D8;
  v18 = objc_allocWithZone(sub_75FA60());
  *(v3 + v17) = sub_75FA50();
  v19 = qword_99E1E0;
  sub_BD88(&qword_955DF0, &qword_79E7A0);
  swift_allocObject();
  *(v3 + v19) = sub_75FC30();
  *(v3 + qword_99E1E8) = 1;
  *(v3 + qword_9593E8) = 0;
  *(v3 + qword_99E1F0) = 0;
  v20 = qword_99E1F8;
  sub_75EA00();
  swift_allocObject();
  *(v3 + v20) = sub_75E9F0();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10D150(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_768490();
  v22 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_99E1A8) = v47;

  sub_761840();
  sub_75F510();

  sub_75A110();
  sub_768880();
  *(v3 + qword_99E1B8) = v48[0];
  sub_762C90();
  sub_768880();
  *(v3 + qword_99E1C0) = v48[0];
  sub_75F520();
  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v3 + qword_9593E0) = sub_761500();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_7212CC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_99E1E0] = sub_75FC30();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v29 = v48[0];
  sub_7610F0();

  sub_75E3E0();

  sub_768ED0();

  v30 = v48[0];
  sub_75E3A0();

  v48[3] = sub_764500();
  v48[4] = sub_479258(&qword_955DF8, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_45A2C(v48, &v27[v31]);
  swift_endAccess();
  sub_479258(&qword_955E00, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_75EBC0();

  v32 = qword_99E1D8;
  v33 = *&v27[qword_99E1D8];

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v34 = *&v27[v32];

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v35 = *&v27[v32];
  sub_478864(&qword_955E08, &qword_955DF0, &qword_79E7A0);
  v36 = v35;

  sub_75FA40();

  v37 = *&v27[v32];

  sub_75FA40();

  v38 = *&v27[v32];
  v39 = qword_9593B8;
  sub_479258(&qword_955DA8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A36E0);
  v40 = v38;

  sub_75FA40();

  v41 = *&v27[qword_99E1C0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_762C70();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_895208;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_468BF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_9593A0) = 0x409F400000000000;
  v8 = qword_9593A8;
  sub_7646B0();
  swift_allocObject();
  *(v2 + v8) = sub_7646A0();
  v9 = qword_9593B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_757640();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_9593B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_9593C0) = 0;
  *(v3 + qword_9593C8) = 0;
  sub_764530();
  *(v3 + qword_99E1B0) = 0;
  *(v3 + qword_99E1C8) = 0;
  *(v3 + qword_9593D0) = 0;
  *(v3 + qword_9593D8) = 0;
  *(v3 + qword_99E1D0) = 0;
  v17 = qword_99E1D8;
  v18 = objc_allocWithZone(sub_75FA60());
  *(v3 + v17) = sub_75FA50();
  v19 = qword_99E1E0;
  sub_BD88(&qword_955E10, &qword_79E7A8);
  swift_allocObject();
  *(v3 + v19) = sub_75FC30();
  *(v3 + qword_99E1E8) = 1;
  *(v3 + qword_9593E8) = 0;
  *(v3 + qword_99E1F0) = 0;
  v20 = qword_99E1F8;
  sub_75EA00();
  swift_allocObject();
  *(v3 + v20) = sub_75E9F0();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10D150(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_768490();
  v22 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_99E1A8) = v47;

  sub_761840();
  sub_75F510();

  sub_75A110();
  sub_768880();
  *(v3 + qword_99E1B8) = v48[0];
  sub_762C90();
  sub_768880();
  *(v3 + qword_99E1C0) = v48[0];
  sub_75F520();
  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v3 + qword_9593E0) = sub_761500();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_7212CC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_99E1E0] = sub_75FC30();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v29 = v48[0];
  sub_7610F0();

  sub_75E3E0();

  sub_768ED0();

  v30 = v48[0];
  sub_75E3A0();

  v48[3] = sub_762060();
  v48[4] = sub_479258(&qword_955E18, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_45A2C(v48, &v27[v31]);
  swift_endAccess();
  sub_479258(&qword_955E20, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_75EBC0();

  v32 = qword_99E1D8;
  v33 = *&v27[qword_99E1D8];

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v34 = *&v27[v32];

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v35 = *&v27[v32];
  sub_478864(&qword_955E28, &qword_955E10, &qword_79E7A8);
  v36 = v35;

  sub_75FA40();

  v37 = *&v27[v32];

  sub_75FA40();

  v38 = *&v27[v32];
  v39 = qword_9593B8;
  sub_479258(&qword_955DA8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A36E0);
  v40 = v38;

  sub_75FA40();

  v41 = *&v27[qword_99E1C0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_762C70();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_895208;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_4695E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_9593A0) = 0x409F400000000000;
  v8 = qword_9593A8;
  sub_7646B0();
  swift_allocObject();
  *(v2 + v8) = sub_7646A0();
  v9 = qword_9593B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_757640();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_9593B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_9593C0) = 0;
  *(v3 + qword_9593C8) = 0;
  sub_764530();
  *(v3 + qword_99E1B0) = 0;
  *(v3 + qword_99E1C8) = 0;
  *(v3 + qword_9593D0) = 0;
  *(v3 + qword_9593D8) = 0;
  *(v3 + qword_99E1D0) = 0;
  v17 = qword_99E1D8;
  v18 = objc_allocWithZone(sub_75FA60());
  *(v3 + v17) = sub_75FA50();
  v19 = qword_99E1E0;
  sub_BD88(&qword_955E30, &unk_79E7B0);
  swift_allocObject();
  *(v3 + v19) = sub_75FC30();
  *(v3 + qword_99E1E8) = 1;
  *(v3 + qword_9593E8) = 0;
  *(v3 + qword_99E1F0) = 0;
  v20 = qword_99E1F8;
  sub_75EA00();
  swift_allocObject();
  *(v3 + v20) = sub_75E9F0();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10D150(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_768490();
  v22 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_99E1A8) = v47;

  sub_761840();
  sub_75F510();

  sub_75A110();
  sub_768880();
  *(v3 + qword_99E1B8) = v48[0];
  sub_762C90();
  sub_768880();
  *(v3 + qword_99E1C0) = v48[0];
  sub_75F520();
  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v3 + qword_9593E0) = sub_761500();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_7212CC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_99E1E0] = sub_75FC30();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v29 = v48[0];
  sub_7610F0();

  sub_75E3E0();

  sub_768ED0();

  v30 = v48[0];
  sub_75E3A0();

  v48[3] = sub_763F00();
  v48[4] = sub_479258(&qword_955E38, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_45A2C(v48, &v27[v31]);
  swift_endAccess();
  sub_479258(&qword_955E40, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_75EBC0();

  v32 = qword_99E1D8;
  v33 = *&v27[qword_99E1D8];

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v34 = *&v27[v32];

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v35 = *&v27[v32];
  sub_478864(&unk_955E48, &qword_955E30, &unk_79E7B0);
  v36 = v35;

  sub_75FA40();

  v37 = *&v27[v32];

  sub_75FA40();

  v38 = *&v27[v32];
  v39 = qword_9593B8;
  sub_479258(&qword_955DA8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A36E0);
  v40 = v38;

  sub_75FA40();

  v41 = *&v27[qword_99E1C0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_762C70();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_895208;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_469FD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_9593A0) = 0x409F400000000000;
  v8 = qword_9593A8;
  sub_7646B0();
  swift_allocObject();
  *(v2 + v8) = sub_7646A0();
  v9 = qword_9593B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_757640();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_9593B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_9593C0) = 0;
  *(v3 + qword_9593C8) = 0;
  sub_764530();
  *(v3 + qword_99E1B0) = 0;
  *(v3 + qword_99E1C8) = 0;
  *(v3 + qword_9593D0) = 0;
  *(v3 + qword_9593D8) = 0;
  *(v3 + qword_99E1D0) = 0;
  v17 = qword_99E1D8;
  v18 = objc_allocWithZone(sub_75FA60());
  *(v3 + v17) = sub_75FA50();
  v19 = qword_99E1E0;
  sub_BD88(&qword_955F30, &qword_79E7F8);
  swift_allocObject();
  *(v3 + v19) = sub_75FC30();
  *(v3 + qword_99E1E8) = 1;
  *(v3 + qword_9593E8) = 0;
  *(v3 + qword_99E1F0) = 0;
  v20 = qword_99E1F8;
  sub_75EA00();
  swift_allocObject();
  *(v3 + v20) = sub_75E9F0();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10D150(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_768490();
  v22 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_99E1A8) = v47;

  sub_761840();
  sub_75F510();

  sub_75A110();
  sub_768880();
  *(v3 + qword_99E1B8) = v48[0];
  sub_762C90();
  sub_768880();
  *(v3 + qword_99E1C0) = v48[0];
  sub_75F520();
  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v3 + qword_9593E0) = sub_761500();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_7212CC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_99E1E0] = sub_75FC30();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v29 = v48[0];
  sub_7610F0();

  sub_75E3E0();

  sub_768ED0();

  v30 = v48[0];
  sub_75E3A0();

  v48[3] = sub_7627A0();
  v48[4] = sub_479258(&qword_955F38, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_45A2C(v48, &v27[v31]);
  swift_endAccess();
  sub_479258(&qword_955F40, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_75EBC0();

  v32 = qword_99E1D8;
  v33 = *&v27[qword_99E1D8];

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v34 = *&v27[v32];

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v35 = *&v27[v32];
  sub_478864(&qword_955F48, &qword_955F30, &qword_79E7F8);
  v36 = v35;

  sub_75FA40();

  v37 = *&v27[v32];

  sub_75FA40();

  v38 = *&v27[v32];
  v39 = qword_9593B8;
  sub_479258(&qword_955DA8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A36E0);
  v40 = v38;

  sub_75FA40();

  v41 = *&v27[qword_99E1C0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_762C70();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_895208;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_46A9CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v46 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_9593A0) = 0x409F400000000000;
  v8 = qword_9593A8;
  sub_7646B0();
  swift_allocObject();
  *(v2 + v8) = sub_7646A0();
  v9 = qword_9593B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_757640();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_9593B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_9593C0) = 0;
  *(v3 + qword_9593C8) = 0;
  sub_764530();
  *(v3 + qword_99E1B0) = 0;
  *(v3 + qword_99E1C8) = 0;
  *(v3 + qword_9593D0) = 0;
  *(v3 + qword_9593D8) = 0;
  *(v3 + qword_99E1D0) = 0;
  v17 = qword_99E1D8;
  v18 = objc_allocWithZone(sub_75FA60());
  *(v3 + v17) = sub_75FA50();
  v19 = qword_99E1E0;
  sub_BD88(&qword_955E58, &qword_79E7C0);
  swift_allocObject();
  *(v3 + v19) = sub_75FC30();
  *(v3 + qword_99E1E8) = 1;
  *(v3 + qword_9593E8) = 0;
  *(v3 + qword_99E1F0) = 0;
  v20 = qword_99E1F8;
  sub_75EA00();
  swift_allocObject();
  *(v3 + v20) = sub_75E9F0();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10D150(_swiftEmptyArrayStorage);
  v50[0] = v21;
  sub_768490();
  v22 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  v23 = v46;
  *(v3 + qword_99E1A8) = v46;

  sub_761840();
  sub_75F510();

  sub_75A110();
  sub_768880();
  *(v3 + qword_99E1B8) = v50[0];
  sub_762C90();
  sub_768880();
  *(v3 + qword_99E1C0) = v50[0];
  sub_75F520();
  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v3 + qword_9593E0) = sub_761500();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v48 = v22;

  v25 = sub_7212CC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];
  (*(ObjectType + 800))();

  swift_allocObject();
  *&v27[qword_99E1E0] = sub_75FC30();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v29 = v50[0];
  sub_7610F0();

  sub_75E3E0();

  sub_768ED0();

  v30 = v50[0];
  sub_75E3A0();

  v50[3] = sub_761F50();
  v50[4] = sub_479258(&qword_955E60, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v50[0] = v23;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_45A2C(v50, &v27[v31]);
  swift_endAccess();
  sub_479258(&qword_955E68, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_75EBC0();

  v32 = qword_99E1D8;
  v33 = *&v27[qword_99E1D8];

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v34 = *&v27[v32];

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v35 = *&v27[v32];
  sub_478864(&qword_955E70, &qword_955E58, &qword_79E7C0);
  v36 = v35;

  sub_75FA40();

  v37 = *&v27[v32];

  sub_75FA40();

  v38 = *&v27[v32];
  v39 = qword_9593B8;
  sub_479258(&qword_955DA8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A36E0);
  v40 = v38;

  sub_75FA40();

  v41 = *&v27[qword_99E1C0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_762C70();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_895208;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_46B3E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_9593A0) = 0x409F400000000000;
  v8 = qword_9593A8;
  sub_7646B0();
  swift_allocObject();
  *(v2 + v8) = sub_7646A0();
  v9 = qword_9593B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_757640();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_9593B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_9593C0) = 0;
  *(v3 + qword_9593C8) = 0;
  sub_764530();
  *(v3 + qword_99E1B0) = 0;
  *(v3 + qword_99E1C8) = 0;
  *(v3 + qword_9593D0) = 0;
  *(v3 + qword_9593D8) = 0;
  *(v3 + qword_99E1D0) = 0;
  v17 = qword_99E1D8;
  v18 = objc_allocWithZone(sub_75FA60());
  *(v3 + v17) = sub_75FA50();
  v19 = qword_99E1E0;
  sub_BD88(&qword_955E80, &qword_79E7C8);
  swift_allocObject();
  *(v3 + v19) = sub_75FC30();
  *(v3 + qword_99E1E8) = 1;
  *(v3 + qword_9593E8) = 0;
  *(v3 + qword_99E1F0) = 0;
  v20 = qword_99E1F8;
  sub_75EA00();
  swift_allocObject();
  *(v3 + v20) = sub_75E9F0();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10D150(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_768490();
  v22 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_99E1A8) = v47;

  sub_761840();
  sub_75F510();

  sub_75A110();
  sub_768880();
  *(v3 + qword_99E1B8) = v48[0];
  sub_762C90();
  sub_768880();
  *(v3 + qword_99E1C0) = v48[0];
  sub_75F520();
  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v3 + qword_9593E0) = sub_761500();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_7212CC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_99E1E0] = sub_75FC30();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v29 = v48[0];
  sub_7610F0();

  sub_75E3E0();

  sub_768ED0();

  v30 = v48[0];
  sub_75E3A0();

  v48[3] = sub_7625B0();
  v48[4] = sub_479258(&qword_955E88, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_45A2C(v48, &v27[v31]);
  swift_endAccess();
  sub_479258(&qword_955E90, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_75EBC0();

  v32 = qword_99E1D8;
  v33 = *&v27[qword_99E1D8];

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v34 = *&v27[v32];

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v35 = *&v27[v32];
  sub_478864(&qword_955E98, &qword_955E80, &qword_79E7C8);
  v36 = v35;

  sub_75FA40();

  v37 = *&v27[v32];

  sub_75FA40();

  v38 = *&v27[v32];
  v39 = qword_9593B8;
  sub_479258(&qword_955DA8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A36E0);
  v40 = v38;

  sub_75FA40();

  v41 = *&v27[qword_99E1C0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_762C70();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_895208;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_46BDD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_9593A0) = 0x409F400000000000;
  v8 = qword_9593A8;
  sub_7646B0();
  swift_allocObject();
  *(v2 + v8) = sub_7646A0();
  v9 = qword_9593B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_757640();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_9593B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_9593C0) = 0;
  *(v3 + qword_9593C8) = 0;
  sub_764530();
  *(v3 + qword_99E1B0) = 0;
  *(v3 + qword_99E1C8) = 0;
  *(v3 + qword_9593D0) = 0;
  *(v3 + qword_9593D8) = 0;
  *(v3 + qword_99E1D0) = 0;
  v17 = qword_99E1D8;
  v18 = objc_allocWithZone(sub_75FA60());
  *(v3 + v17) = sub_75FA50();
  v19 = qword_99E1E0;
  sub_BD88(&qword_955EA0, &qword_79E7D0);
  swift_allocObject();
  *(v3 + v19) = sub_75FC30();
  *(v3 + qword_99E1E8) = 1;
  *(v3 + qword_9593E8) = 0;
  *(v3 + qword_99E1F0) = 0;
  v20 = qword_99E1F8;
  sub_75EA00();
  swift_allocObject();
  *(v3 + v20) = sub_75E9F0();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10D150(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_768490();
  v22 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_99E1A8) = v47;

  sub_761840();
  sub_75F510();

  sub_75A110();
  sub_768880();
  *(v3 + qword_99E1B8) = v48[0];
  sub_762C90();
  sub_768880();
  *(v3 + qword_99E1C0) = v48[0];
  sub_75F520();
  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v3 + qword_9593E0) = sub_761500();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_7212CC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_99E1E0] = sub_75FC30();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v29 = v48[0];
  sub_7610F0();

  sub_75E3E0();

  sub_768ED0();

  v30 = v48[0];
  sub_75E3A0();

  v48[3] = sub_762A00();
  v48[4] = sub_479258(&qword_955EA8, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_45A2C(v48, &v27[v31]);
  swift_endAccess();
  sub_479258(&qword_955EB0, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_75EBC0();

  v32 = qword_99E1D8;
  v33 = *&v27[qword_99E1D8];

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v34 = *&v27[v32];

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v35 = *&v27[v32];
  sub_478864(&qword_955EB8, &qword_955EA0, &qword_79E7D0);
  v36 = v35;

  sub_75FA40();

  v37 = *&v27[v32];

  sub_75FA40();

  v38 = *&v27[v32];
  v39 = qword_9593B8;
  sub_479258(&qword_955DA8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A36E0);
  v40 = v38;

  sub_75FA40();

  v41 = *&v27[qword_99E1C0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_762C70();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_895208;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_46C7C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_9593A0) = 0x409F400000000000;
  v8 = qword_9593A8;
  sub_7646B0();
  swift_allocObject();
  *(v2 + v8) = sub_7646A0();
  v9 = qword_9593B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_757640();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_9593B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_9593C0) = 0;
  *(v3 + qword_9593C8) = 0;
  sub_764530();
  *(v3 + qword_99E1B0) = 0;
  *(v3 + qword_99E1C8) = 0;
  *(v3 + qword_9593D0) = 0;
  *(v3 + qword_9593D8) = 0;
  *(v3 + qword_99E1D0) = 0;
  v17 = qword_99E1D8;
  v18 = objc_allocWithZone(sub_75FA60());
  *(v3 + v17) = sub_75FA50();
  v19 = qword_99E1E0;
  sub_BD88(&qword_955EC0, &qword_79E7D8);
  swift_allocObject();
  *(v3 + v19) = sub_75FC30();
  *(v3 + qword_99E1E8) = 1;
  *(v3 + qword_9593E8) = 0;
  *(v3 + qword_99E1F0) = 0;
  v20 = qword_99E1F8;
  sub_75EA00();
  swift_allocObject();
  *(v3 + v20) = sub_75E9F0();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10D150(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_768490();
  v22 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_99E1A8) = v47;

  sub_761840();
  sub_75F510();

  sub_75A110();
  sub_768880();
  *(v3 + qword_99E1B8) = v48[0];
  sub_762C90();
  sub_768880();
  *(v3 + qword_99E1C0) = v48[0];
  sub_75F520();
  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v3 + qword_9593E0) = sub_761500();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_7212CC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_99E1E0] = sub_75FC30();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v29 = v48[0];
  sub_7610F0();

  sub_75E3E0();

  sub_768ED0();

  v30 = v48[0];
  sub_75E3A0();

  v48[3] = sub_760C70();
  v48[4] = sub_479258(&qword_955EC8, &type metadata accessor for MSODiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_45A2C(v48, &v27[v31]);
  swift_endAccess();
  sub_479258(&qword_955ED0, &type metadata accessor for MSODiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_75EBC0();

  v32 = qword_99E1D8;
  v33 = *&v27[qword_99E1D8];

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v34 = *&v27[v32];

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v35 = *&v27[v32];
  sub_478864(&qword_955ED8, &qword_955EC0, &qword_79E7D8);
  v36 = v35;

  sub_75FA40();

  v37 = *&v27[v32];

  sub_75FA40();

  v38 = *&v27[v32];
  v39 = qword_9593B8;
  sub_479258(&qword_955DA8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A36E0);
  v40 = v38;

  sub_75FA40();

  v41 = *&v27[qword_99E1C0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_762C70();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_895208;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_46D1BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_9593A0) = 0x409F400000000000;
  v8 = qword_9593A8;
  sub_7646B0();
  swift_allocObject();
  *(v2 + v8) = sub_7646A0();
  v9 = qword_9593B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_757640();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_9593B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_9593C0) = 0;
  *(v3 + qword_9593C8) = 0;
  sub_764530();
  *(v3 + qword_99E1B0) = 0;
  *(v3 + qword_99E1C8) = 0;
  *(v3 + qword_9593D0) = 0;
  *(v3 + qword_9593D8) = 0;
  *(v3 + qword_99E1D0) = 0;
  v17 = qword_99E1D8;
  v18 = objc_allocWithZone(sub_75FA60());
  *(v3 + v17) = sub_75FA50();
  v19 = qword_99E1E0;
  sub_BD88(&qword_955F70, &qword_79E808);
  swift_allocObject();
  *(v3 + v19) = sub_75FC30();
  *(v3 + qword_99E1E8) = 1;
  *(v3 + qword_9593E8) = 0;
  *(v3 + qword_99E1F0) = 0;
  v20 = qword_99E1F8;
  sub_75EA00();
  swift_allocObject();
  *(v3 + v20) = sub_75E9F0();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10D150(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_768490();
  v22 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_99E1A8) = v47;

  sub_761840();
  sub_75F510();

  sub_75A110();
  sub_768880();
  *(v3 + qword_99E1B8) = v48[0];
  sub_762C90();
  sub_768880();
  *(v3 + qword_99E1C0) = v48[0];
  sub_75F520();
  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v3 + qword_9593E0) = sub_761500();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_7212CC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_99E1E0] = sub_75FC30();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v29 = v48[0];
  sub_7610F0();

  sub_75E3E0();

  sub_768ED0();

  v30 = v48[0];
  sub_75E3A0();

  v48[3] = sub_7639B0();
  v48[4] = sub_479258(&qword_955F78, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_45A2C(v48, &v27[v31]);
  swift_endAccess();
  sub_479258(&qword_955F80, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_75EBC0();

  v32 = qword_99E1D8;
  v33 = *&v27[qword_99E1D8];

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v34 = *&v27[v32];

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v35 = *&v27[v32];
  sub_478864(&qword_955F88, &qword_955F70, &qword_79E808);
  v36 = v35;

  sub_75FA40();

  v37 = *&v27[v32];

  sub_75FA40();

  v38 = *&v27[v32];
  v39 = qword_9593B8;
  sub_479258(&qword_955DA8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A36E0);
  v40 = v38;

  sub_75FA40();

  v41 = *&v27[qword_99E1C0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_762C70();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_895208;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_46DBB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_9593A0) = 0x409F400000000000;
  v8 = qword_9593A8;
  sub_7646B0();
  swift_allocObject();
  *(v2 + v8) = sub_7646A0();
  v9 = qword_9593B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_757640();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_9593B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_9593C0) = 0;
  *(v3 + qword_9593C8) = 0;
  sub_764530();
  *(v3 + qword_99E1B0) = 0;
  *(v3 + qword_99E1C8) = 0;
  *(v3 + qword_9593D0) = 0;
  *(v3 + qword_9593D8) = 0;
  *(v3 + qword_99E1D0) = 0;
  v17 = qword_99E1D8;
  v18 = objc_allocWithZone(sub_75FA60());
  *(v3 + v17) = sub_75FA50();
  v19 = qword_99E1E0;
  sub_BD88(&qword_955DD0, &qword_79E798);
  swift_allocObject();
  *(v3 + v19) = sub_75FC30();
  *(v3 + qword_99E1E8) = 1;
  *(v3 + qword_9593E8) = 0;
  *(v3 + qword_99E1F0) = 0;
  v20 = qword_99E1F8;
  sub_75EA00();
  swift_allocObject();
  *(v3 + v20) = sub_75E9F0();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10D150(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_768490();
  v22 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_99E1A8) = v47;

  sub_761840();
  sub_75F510();

  sub_75A110();
  sub_768880();
  *(v3 + qword_99E1B8) = v48[0];
  sub_762C90();
  sub_768880();
  *(v3 + qword_99E1C0) = v48[0];
  sub_75F520();
  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v3 + qword_9593E0) = sub_761500();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_7212CC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_99E1E0] = sub_75FC30();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v29 = v48[0];
  sub_7610F0();

  sub_75E3E0();

  sub_768ED0();

  v30 = v48[0];
  sub_75E3A0();

  v48[3] = sub_7635F0();
  v48[4] = sub_479258(&qword_955DD8, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_45A2C(v48, &v27[v31]);
  swift_endAccess();
  sub_479258(&qword_955DE0, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_75EBC0();

  v32 = qword_99E1D8;
  v33 = *&v27[qword_99E1D8];

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v34 = *&v27[v32];

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v35 = *&v27[v32];
  sub_478864(&qword_955DE8, &qword_955DD0, &qword_79E798);
  v36 = v35;

  sub_75FA40();

  v37 = *&v27[v32];

  sub_75FA40();

  v38 = *&v27[v32];
  v39 = qword_9593B8;
  sub_479258(&qword_955DA8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A36E0);
  v40 = v38;

  sub_75FA40();

  v41 = *&v27[qword_99E1C0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_762C70();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_895208;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_46E5A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_7684B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_9593A0) = 0x409F400000000000;
  v8 = qword_9593A8;
  sub_7646B0();
  swift_allocObject();
  *(v2 + v8) = sub_7646A0();
  v9 = qword_9593B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_757640();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_9593B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_9593C0) = 0;
  *(v3 + qword_9593C8) = 0;
  sub_764530();
  *(v3 + qword_99E1B0) = 0;
  *(v3 + qword_99E1C8) = 0;
  *(v3 + qword_9593D0) = 0;
  *(v3 + qword_9593D8) = 0;
  *(v3 + qword_99E1D0) = 0;
  v17 = qword_99E1D8;
  v18 = objc_allocWithZone(sub_75FA60());
  *(v3 + v17) = sub_75FA50();
  v19 = qword_99E1E0;
  sub_BD88(&qword_955F50, &qword_79E800);
  swift_allocObject();
  *(v3 + v19) = sub_75FC30();
  *(v3 + qword_99E1E8) = 1;
  *(v3 + qword_9593E8) = 0;
  *(v3 + qword_99E1F0) = 0;
  v20 = qword_99E1F8;
  sub_75EA00();
  swift_allocObject();
  *(v3 + v20) = sub_75E9F0();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10D150(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_768490();
  v22 = sub_7688C0();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_99E1A8) = v47;

  sub_761840();
  sub_75F510();

  sub_75A110();
  sub_768880();
  *(v3 + qword_99E1B8) = v48[0];
  sub_762C90();
  sub_768880();
  *(v3 + qword_99E1C0) = v48[0];
  sub_75F520();
  sub_7688F0();
  sub_7614F0();
  swift_allocObject();
  *(v3 + qword_9593E0) = sub_761500();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_7212CC(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_99E1E0] = sub_75FC30();

  sub_761120();
  sub_768900();

  sub_768ED0();

  v29 = v48[0];
  sub_7610F0();

  sub_75E3E0();

  sub_768ED0();

  v30 = v48[0];
  sub_75E3A0();

  v48[3] = sub_763610();
  v48[4] = sub_479258(&qword_955F58, &type metadata accessor for TopChartDiffableSegmentPresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_45A2C(v48, &v27[v31]);
  swift_endAccess();
  sub_479258(&qword_955F60, &type metadata accessor for TopChartDiffableSegmentPresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_75EBC0();

  v32 = qword_99E1D8;
  v33 = *&v27[qword_99E1D8];

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v34 = *&v27[v32];

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v35 = *&v27[v32];
  sub_478864(&qword_955F68, &qword_955F50, &qword_79E800);
  v36 = v35;

  sub_75FA40();

  v37 = *&v27[v32];

  sub_75FA40();

  v38 = *&v27[v32];
  v39 = qword_9593B8;
  sub_479258(&qword_955DA8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A36E0);
  v40 = v38;

  sub_75FA40();

  v41 = *&v27[qword_99E1C0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_762C70();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_895208;
  swift_unknownObjectWeakAssign();

  return v42;
}

uint64_t sub_46EF98@<X0>(uint64_t a2@<X1>, char *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v10 = sub_757640();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v18 = Strong;
  v19 = [Strong collectionView];

  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = [v19 indexPathForItemAtPoint:{a5, a6}];
  if (!v20)
  {

    goto LABEL_10;
  }

  v21 = v20;
  sub_757590();

  isa = sub_757550().super.isa;
  v23 = [v19 cellForItemAtIndexPath:isa];

  v25 = sub_46F3B0(v16, a2, v24);
  if (!v23 || (swift_getObjectType(), !swift_conformsToProtocol2()))
  {

    v30 = *(v11 + 32);
    v30(v13, v16, v10);
    v30(a4, v13, v10);
    v31 = type metadata accessor for PreviewItem(0);
    v32 = v31;
    *&a4[*(v31 + 20)] = v23;
LABEL_20:
    *&a4[*(v31 + 24)] = v25;
    return (*(*(v31 - 8) + 56))(a4, 0, 1, v32);
  }

  v26 = v19;
  v27 = sub_470BAC(v26, v23, a5, a6);
  v29 = v28;

  if (v29)
  {
    (*(v11 + 8))(v16, v10);

LABEL_10:
    v33 = type metadata accessor for PreviewItem(0);
    return (*(*(v33 - 8) + 56))(a4, 1, 1, v33);
  }

  sub_BD88(&qword_95B250, "hq\b");
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_77E280;
  *(v35 + 32) = sub_7575D0();
  *(v35 + 40) = v27;
  sub_757540();
  v36 = OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v37 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (!(v37 >> 62))
  {
    result = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
    if (v27 < result)
    {
      goto LABEL_13;
    }

LABEL_18:

    v39 = 0;
    goto LABEL_19;
  }

  result = sub_76A860();
  if (v27 >= result)
  {
    goto LABEL_18;
  }

LABEL_13:
  v38 = *&v23[v36];
  if ((v38 & 0xC000000000000001) != 0)
  {

    v39 = sub_76A770();

    goto LABEL_19;
  }

  if (v27 < 0)
  {
    __break(1u);
  }

  else if (v27 < *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)))
  {
    v39 = *(v38 + 8 * v27 + 32);

LABEL_19:
    (*(v11 + 8))(v16, v10);
    v31 = type metadata accessor for PreviewItem(0);
    v32 = v31;
    *&a4[*(v31 + 20)] = v39;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

id sub_46F3B0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = sub_75B660();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_BD88(&unk_955F20, &unk_77EB30);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  result = 0;
  if (!v14 || !a2)
  {
    return result;
  }

  v35 = v7;
  v16 = v4;
  v37 = v5;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v36 = ObjectType;
  sub_75AFA0();
  v18 = sub_75ACC0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_10A2C(v13, &unk_955F20, &unk_77EB30);
  }

  else
  {
    v20 = sub_75ACA0();
    (*(v19 + 8))(v13, v18);
    if (v20)
    {
      if (qword_93E100 != -1)
      {
        swift_once();
      }

      v21 = qword_9A0850;
      swift_unknownObjectRelease();
      return v21;
    }
  }

  sub_75AEC0();
  v22 = v37;
  v23 = *(v37 + 88);
  v24 = v23(v10, v16);
  v25 = enum case for ShelfBackground.color(_:);
  if (v24 == enum case for ShelfBackground.color(_:))
  {
    swift_unknownObjectRelease();
    (*(v22 + 96))(v10, v16);
    v26 = *v10;
    v27 = *(sub_BD88(&unk_959640, qword_78DD60) + 48);
    v28 = sub_75EDA0();
    (*(*(v28 - 8) + 8))(&v10[v27], v28);
    return v26;
  }

  v33 = *(v22 + 8);
  v34 = v22 + 8;
  v33(v10, v16);
  sub_7575D0();
  v29 = v35;
  sub_75AF00();
  swift_unknownObjectRelease();
  if (v23(v29, v16) == v25)
  {
    (*(v22 + 96))(v29, v16);
    v26 = *v29;
    v30 = *(sub_BD88(&unk_959640, qword_78DD60) + 48);
    v31 = sub_75EDA0();
    (*(*(v31 - 8) + 8))(&v29[v30], v31);
    return v26;
  }

  v33(v29, v16);
  return 0;
}

BOOL sub_46F83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_479258(a4, a5, a6);
  }

  while ((sub_7691C0() & 1) == 0);
  return v10 != v11;
}

char *sub_46F944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_960D40) = 0x409F400000000000;
  v7 = qword_960D58;
  v8 = objc_allocWithZone(sub_75FA60());
  *(v3 + v7) = sub_75FA50();
  *(v3 + qword_960D68) = 1;
  *(v3 + qword_960D78) = 0;
  *(v3 + qword_960D80) = 0;
  *(v3 + qword_960D48) = a1;
  *(v3 + qword_960D50) = a2;
  sub_BD88(&unk_955EF0, &qword_79E7E0);
  swift_allocObject();
  swift_retain_n();

  *(v3 + qword_960D60) = sub_75FC30();
  sub_75F520();
  sub_7688F0();
  if (v26[0])
  {

    sub_75F510();
  }

  *(a2 + 112) = v26[0];

  sub_7614F0();
  swift_allocObject();

  *(v3 + qword_960D70) = sub_761500();
  v9 = [objc_allocWithZone(UICollectionViewLayout) init];

  v10 = sub_6BB1D4(v9, a3);
  swift_unknownObjectWeakAssign();
  v26[3] = sub_75EB10();
  v26[4] = &protocol witness table for BasePresenter;
  v26[0] = a1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  v12 = v10;

  v13 = v12;
  sub_45A2C(v26, v10 + v11);
  swift_endAccess();
  sub_479258(&qword_94D5E0, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);

  sub_75EBC0();

  v14 = sub_BD88(&qword_955F00, &unk_79E7E8);

  v15 = sub_4710BC(v13, a1, a3, v14);
  v16 = *&v13[qword_960D78];
  *&v13[qword_960D78] = v15;

  v17 = qword_960D58;
  v18 = *&v13[qword_960D58];
  sub_761120();
  sub_768900();
  v19 = v18;

  sub_768ED0();

  sub_7624B0();
  swift_allocObject();
  sub_7624C0();
  sub_75FA40();

  v20 = *&v13[v17];
  sub_75E3E0();
  v21 = v20;

  sub_768ED0();

  sub_75FED0();
  swift_allocObject();
  sub_75FEE0();
  sub_75FA40();

  v22 = *&v13[v17];
  sub_478864(&qword_955F08, &unk_955EF0, &qword_79E7E0);
  v23 = v22;

  sub_75FA40();

  v24 = *&v13[v17];

  sub_75FA40();

  return v13;
}

uint64_t sub_46FE8C(uint64_t a1)
{
  v3 = objc_allocWithZone(sub_75FA60());
  *(v1 + 32) = sub_75FA50();
  *(v1 + 40) = &protocol witness table for CompoundScrollObserver;
  swift_unknownObjectWeakInit();
  *(v1 + 56) = sub_10D808(_swiftEmptyArrayStorage);
  *(v1 + 64) = sub_10D9E4(_swiftEmptyArrayStorage);
  *(v1 + 72) = sub_10D9F8(_swiftEmptyArrayStorage);
  *(v1 + 80) = 0;
  *(v1 + 88) = xmmword_79E6C0;
  *(v1 + 104) = 0xC020000000000000;
  *(v1 + 112) = 0;
  *(v1 + 16) = a1;
  sub_BD88(&qword_9467C0, &qword_790FA0);
  swift_allocObject();
  *(v1 + 24) = sub_768C90();
  return v1;
}

void sub_46FF78(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentingViewController];

    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_470238(void *a1, char a2)
{
  if (a1)
  {
    v3 = [a1 presentingViewController];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = a2 & 1;
      *(v6 + 24) = v5;
      v8[4] = sub_4788F0;
      v8[5] = v6;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_23F0CC;
      v8[3] = &unk_892A10;
      v7 = _Block_copy(v8);

      [v4 dismissViewControllerAnimated:1 completion:v7];
      _Block_release(v7);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_470360(char a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_955F90, qword_79E810);
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v26 - v4;
  v6 = sub_BD88(&unk_93F630, &unk_77E230);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v9 = sub_7687B0();
  __chkstk_darwin(v9 - 8);
  v10 = sub_75B9A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      sub_765390();
      v16 = sub_293280(0x6E65537473616F54, 0xE900000000000074, 90.0, 90.0);
      v27 = v3;
      v17 = v16;
      v31._object = 0x80000000007E26D0;
      v31._countAndFlagsBits = 0xD000000000000012;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v18 = sub_75B750(v31, v33);
      v26[2] = v19;
      v26[3] = v18;
      v32._countAndFlagsBits = 0xD000000000000018;
      v32._object = 0x80000000007E26F0;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      sub_75B750(v32, v34);
      v26[1] = v20;
      (*(v11 + 104))(v13, enum case for AlertActionStyle.toast(_:), v10);
      v26[4] = v17;

      sub_768790();
      v21 = sub_758F90();
      swift_allocObject();
      v22 = sub_758F60();
      sub_768900();

      sub_768ED0();

      v30[3] = v21;
      v30[4] = sub_479258(&qword_94FBC8, &type metadata accessor for AlertAction, &protocol conformance descriptor for Action);
      v30[0] = v22;
      v23 = v29;
      v24 = v27;
      (*(v29 + 104))(v5, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v27);

      sub_768980();

      (*(v23 + 8))(v5, v24);
      (*(v28 + 8))(v8, v6);
      sub_BEB8(v30);
      v25 = *&v15[OBJC_IVAR____TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF21ComposeReviewDelegate_selfReference];
      *&v15[OBJC_IVAR____TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF21ComposeReviewDelegate_selfReference] = 0;
    }
  }
}

id sub_4708D4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_4709E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph;
    v9 = sub_BD88(&unk_93F630, &unk_77E230);
    v10 = v7;

    sub_768860();

    v11 = *(v9 - 8);
    if ((*(v11 + 48))(v5, 1, v9) == 1)
    {

      return sub_10A2C(v5, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      v12 = *&v7[v8];

      sub_32A6C0(a1, 1, v12, v5);

      return (*(v11 + 8))(v5, v9);
    }
  }

  return result;
}

unint64_t sub_470BAC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  if (v7 >> 62)
  {
LABEL_16:
    v8 = sub_76A860();
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = sub_76A770();
    }

    else
    {
      if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_15;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    [v11 convertPoint:a1 fromCoordinateSpace:{a3, a4}];
    v13 = [v12 pointInside:0 withEvent:?];

    v9 = v10 + 1;
    if (v13)
    {
      v14 = v10;
      goto LABEL_13;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

char *sub_470CF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_768940();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  sub_75E340();
  swift_allocObject();
  v10 = sub_75E330();
  sub_760E40();
  sub_BD88(&qword_94DC10, &qword_791AD0);
  sub_7684B0();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_77E280;
  (*(v4 + 16))(v6, v9, v3);
  sub_768490();
  sub_75F3B0();
  swift_allocObject();
  v16[1] = sub_75F3A0();
  sub_768490();
  v12 = sub_6A0B30(a2, 0, 0, v11, 0x686372616573, 0xE600000000000000);

  v13 = objc_allocWithZone(type metadata accessor for MessagesSearchViewController(0));
  v14 = sub_2B2F84(v10, v12);

  (*(v4 + 8))(v9, v3);
  return v14;
}

id sub_470F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_479258(&unk_955F10, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  v9 = sub_BD88(&qword_955F00, &unk_79E7E8);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_944108];
  *&v10[qword_944108 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_944100];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  *&v10[qword_944118] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_4710BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_479258(&unk_955F10, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = v8;
  v10[5] = a4;

  v12 = sub_470F80(v11, a1, sub_478858, v10, a3);

  return v12;
}

id sub_4711B8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v27[3] = a5(0);
  v27[4] = sub_479258(a6, a7, a8);
  v27[0] = a1;
  *&a4[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_overflowTransitioning] = 0;
  if (sub_3AC688())
  {
    v18 = v17;
    *&a4[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_objectGraph] = a3;
    sub_BD88(&qword_9467C0, &qword_790FA0);
    swift_allocObject();

    *&a4[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_stateStore] = sub_768C90();
    sub_134D8(v27, &a4[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_model]);
    v19 = [objc_allocWithZone(UIScrollView) init];
    *&a4[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_scrollView] = v19;
    v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v21 = &a4[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_componentView];
    *v21 = v20;
    *(v21 + 1) = v18;
    sub_75A110();
    sub_768900();
    sub_768ED0();
    *&a4[OBJC_IVAR____TtC18ASMessagesProvider35ComponentViewOverflowViewController_artworkLoader] = v26;
    v25.receiver = a4;
    v25.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
    v23 = sub_764930();
    (*(*(v23 - 8) + 8))(a2, v23);
    sub_BEB8(v27);
    return v22;
  }

  else
  {
    result = sub_76A840();
    __break(1u);
  }

  return result;
}

char *sub_471418(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v616 = a8;
  v643 = a6;
  v644 = a5;
  v658 = a4;
  v657 = a3;
  v617 = a2;
  v662 = a1;
  v9 = sub_BD88(&qword_955BD8, qword_79F3A0);
  __chkstk_darwin(v9 - 8);
  v615 = &v567 - v10;
  v11 = sub_BD88(&unk_955BE0, &unk_79E740);
  __chkstk_darwin(v11 - 8);
  v613 = &v567 - v12;
  v608 = sub_765E80();
  v607 = *(v608 - 8);
  __chkstk_darwin(v608);
  v609 = &v567 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v612 = sub_757640();
  v611 = *(v612 - 8);
  __chkstk_darwin(v612);
  v610 = &v567 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v640 = sub_764930();
  v639 = *(v640 - 8);
  __chkstk_darwin(v640);
  v642 = &v567 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&qword_943F30, &qword_7837A8);
  __chkstk_darwin(v16 - 8);
  v606 = &v567 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v614 = &v567 - v19;
  v646 = sub_75C190();
  v645 = *(v646 - 8);
  __chkstk_darwin(v646);
  v620 = &v567 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v641 = &v567 - v22;
  v579 = sub_756D80();
  v578 = *(v579 - 8);
  __chkstk_darwin(v579);
  v570 = &v567 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v576 = sub_758E20();
  v575 = *(v576 - 8);
  __chkstk_darwin(v576);
  v574 = &v567 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v577 = sub_756D00();
  v580 = *(v577 - 8);
  __chkstk_darwin(v577);
  v571 = &v567 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v618 = &v567 - v27;
  v28 = sub_BD88(&qword_955BF0, &unk_79E750);
  __chkstk_darwin(v28 - 8);
  v619 = &v567 - v29;
  v602 = sub_7580D0();
  v601 = *(v602 - 8);
  __chkstk_darwin(v602);
  v604 = &v567 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v631 = sub_764CF0();
  v630 = *(v631 - 8);
  __chkstk_darwin(v631);
  v629 = &v567 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v627 = sub_75ED10();
  v626 = *(v627 - 8);
  __chkstk_darwin(v627);
  v603 = &v567 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v568 = sub_768E70();
  __chkstk_darwin(v568);
  v569 = &v567 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v625 = sub_7684B0();
  v650 = *(v625 - 8);
  __chkstk_darwin(v625);
  v624 = &v567 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v600 = sub_75C3F0();
  v599 = *(v600 - 8);
  __chkstk_darwin(v600);
  v589 = &v567 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v637 = &v567 - v37;
  v597 = sub_75AA40();
  v596 = *(v597 - 8);
  __chkstk_darwin(v597);
  v587 = &v567 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v595 = &v567 - v40;
  v41 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v41 - 8);
  v586 = &v567 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v636 = &v567 - v44;
  __chkstk_darwin(v45);
  v573 = &v567 - v46;
  __chkstk_darwin(v47);
  v585 = &v567 - v48;
  __chkstk_darwin(v49);
  v605 = &v567 - v50;
  __chkstk_darwin(v51);
  v653 = &v567 - v52;
  __chkstk_darwin(v53);
  v654 = &v567 - v54;
  v591 = sub_758B40();
  v590 = *(v591 - 8);
  __chkstk_darwin(v591);
  v584 = &v567 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v588 = &v567 - v57;
  v58 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v58 - 8);
  v638 = &v567 - v59;
  v594 = sub_7628A0();
  v593 = *(v594 - 8);
  __chkstk_darwin(v594);
  v598 = &v567 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v635 = sub_75A740();
  v634 = *(v635 - 8);
  __chkstk_darwin(v635);
  v633 = &v567 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v659 = sub_7570A0();
  v656 = *(v659 - 8);
  __chkstk_darwin(v659);
  v621 = &v567 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v628 = &v567 - v64;
  __chkstk_darwin(v65);
  v572 = &v567 - v66;
  __chkstk_darwin(v67);
  v652 = &v567 - v68;
  __chkstk_darwin(v69);
  v655 = &v567 - v70;
  __chkstk_darwin(v71);
  v592 = &v567 - v72;
  __chkstk_darwin(v73);
  v648 = &v567 - v74;
  v661 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v661);
  v76 = (&v567 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_7685A0();
  __chkstk_darwin(v77 - 8);
  v78 = sub_768940();
  v669 = *(v78 - 8);
  __chkstk_darwin(v78);
  v581 = &v567 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v583 = &v567 - v81;
  __chkstk_darwin(v82);
  v84 = &v567 - v83;
  v85 = sub_BE70(0, &qword_959CF0, ACAccountStore_ptr);
  sub_768900();
  v623 = v85;
  sub_768ED0();
  v663 = v682[0];
  v649 = sub_BD88(&unk_944300, &qword_77DEE0);
  sub_768ED0();
  v664 = v682[0];
  v647 = v682[1];
  sub_761230();
  sub_768ED0();
  v665 = v682[0];
  v632 = sub_75A920();
  sub_768ED0();
  v670 = v682[0];
  sub_763810();
  sub_768ED0();
  v666 = v682[0];
  v672 = v84;
  v668 = v78;
  sub_768ED0();
  sub_762400();
  sub_7688F0();
  v667 = v682[0];
  v622 = sub_BD88(&qword_955BF8, &qword_79E760);
  sub_768ED0();
  v86 = sub_759E40();
  v660 = a7;
  v582 = v86;
  sub_768ED0();
  v671 = v679;
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v87 = sub_768FF0();
  sub_BE38(v87, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  v88 = swift_allocObject();
  v651 = xmmword_77B6D0;
  *(v88 + 16) = xmmword_77B6D0;
  sub_768590();
  v683._countAndFlagsBits = 0xD000000000000049;
  v683._object = 0x80000000007E2360;
  sub_768580(v683);
  v89 = v662;
  v90 = sub_CFD44();
  *(&v680 + 1) = &type metadata for String;
  *&v679 = v90;
  *(&v679 + 1) = v91;
  sub_768560();
  sub_10A2C(&v679, &unk_93FBD0, &qword_77DFA0);
  v684._countAndFlagsBits = 0;
  v684._object = 0xE000000000000000;
  sub_768580(v684);
  sub_7685B0();
  sub_768E80();

  sub_61B4C(v89, v76, v92);
  v94 = v76;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v293 = *(sub_BD88(&qword_955D60, &qword_783800) + 48);
      v294 = v656;
      v295 = v655;
      v296 = v659;
      (*(v656 + 32))(v655, v76, v659);
      v297 = v590;
      v298 = v588;
      v299 = v591;
      (*(v590 + 32))(v588, v76 + v293, v591);
      (*(v294 + 16))(v652, v295, v296);
      v300 = v584;
      (*(v297 + 104))(v584, enum case for FlowOrigin.external(_:), v299);
      sub_758B30();
      v662 = *(v297 + 8);
      v662(v300, v299);
      sub_1ED18(v644, v638, &unk_944FF0, &unk_783C00);
      sub_75EB50();
      swift_allocObject();
      v301 = v660;

      v302 = sub_75EB30();

      sub_75A180();
      v303 = sub_479258(&qword_955D68, &type metadata accessor for LoadingPagePresenter, &protocol conformance descriptor for BasePresenter);

      v304 = sub_6A0B30(v301, v302, v303, _swiftEmptyArrayStorage, 0x50676E6964616F6CLL, 0xEB00000000656761);

      v305 = objc_allocWithZone(type metadata accessor for LoadingPageViewController());
      v105 = sub_6734C8(v302, v304);

      swift_unknownObjectRelease();

      v662(v298, v299);
      (*(v294 + 8))(v655, v296);
      goto LABEL_87;
    case 2u:
      v270 = v76;
      v271 = v656;
      v272 = v655;
      v273 = v659;
      (*(v656 + 32))(v655, v270, v659);
      v274 = v652;
      (*(v271 + 16))(v652, v272, v273);
      v275 = sub_6A0B30(v660, 0, 0, _swiftEmptyArrayStorage, 0x77656956626577, 0xE700000000000000);
      v276 = objc_allocWithZone(type metadata accessor for WebViewController());
      v105 = sub_606C84(v274, v275);

      swift_unknownObjectRelease();

      (*(v271 + 8))(v272, v273);
      goto LABEL_87;
    case 3u:
      v281 = *(v76 + *(sub_BD88(&qword_943FC8, &qword_7837F8) + 48));
      v282 = v656;
      v283 = v655;
      v284 = v659;
      (*(v656 + 32))(v655, v94, v659);
      v285 = v652;
      (*(v282 + 16))(v652, v283, v284);
      v286 = v658;

      v287 = sub_6A0B30(v660, 0, 0, _swiftEmptyArrayStorage, 0x5063696D616E7964, 0xEB00000000656761);
      v288 = objc_allocWithZone(type metadata accessor for DynamicViewController());
      v105 = sub_529800(v285, v281, v657, v286, v287);

      swift_unknownObjectRelease();

      (*(v282 + 8))(v283, v284);
      goto LABEL_87;
    case 4u:
      sub_61BB0(v76, v93);
      v210 = v672;
      v105 = sub_470CF0(v672, v660);

      swift_unknownObjectRelease();

      sub_BEB8(v682);
      (*(v669 + 8))(v210, v668);
      return v105;
    case 5u:

      v342 = sub_BD88(&qword_943FC0, &qword_7837F0);
      v343 = v654;
      sub_109C4(v76 + *(v342 + 48), v654, &unk_93FD30, qword_77F240);
      sub_1ED18(v343, v653, &unk_93FD30, qword_77F240);
      sub_764500();
      swift_allocObject();
      v344 = v660;

      v345 = sub_7644E0();
      v346 = sub_479258(&unk_955D50, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
      v347 = sub_6A0B30(v344, v345, v346, _swiftEmptyArrayStorage, 0xD00000000000001DLL, 0x80000000007E2660);
      v348 = objc_allocWithZone(type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController(0));

      v349 = sub_4681FC(v345, v347);
      v349[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 1;
      v105 = v349;
      v350 = [v105 navigationItem];
      [v350 setLargeTitleDisplayMode:1];

      swift_unknownObjectRelease();

      goto LABEL_52;
    case 6u:
      v366 = *v76;
      v367 = sub_6A0B30(v660, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000013, 0x80000000007E2640);
      v368 = objc_allocWithZone(type metadata accessor for GalleryViewController());
      v126 = sub_659480(v366, v367);
      goto LABEL_84;
    case 7u:
      sub_BD88(&unk_955D40, &qword_7837E8);

      v289 = v656;
      v290 = v655;
      v291 = v94;
      v292 = v659;
      (*(v656 + 32))(v655, v291, v659);
      v105 = sub_65C2C4(v290);

      swift_unknownObjectRelease();

      (*(v289 + 8))(v290, v292);
      goto LABEL_87;
    case 8u:
      v387 = sub_BD88(&qword_940A50, &qword_782590);
      v388 = v654;
      sub_109C4(v76 + *(v387 + 48), v654, &unk_93FD30, qword_77F240);
      sub_1ED18(v388, v653, &unk_93FD30, qword_77F240);
      sub_7627A0();
      swift_allocObject();

      v389 = v660;

      v390 = sub_762790();

      sub_761870();
      v391 = sub_479258(&qword_955C20, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v392 = sub_6A0B30(v389, v390, v391, _swiftEmptyArrayStorage, 0x50636972656E6567, 0xEB00000000656761);

      v393 = objc_allocWithZone(type metadata accessor for GenericDiffablePageViewController(0));
      v105 = sub_4D40F0(v390, v392);

      swift_unknownObjectRelease();

      v123 = v388;
      goto LABEL_60;
    case 9u:
      v224 = sub_BD88(&qword_955CE0, &qword_7837E0);
      v225 = v654;
      sub_109C4(v76 + *(v224 + 48), v654, &unk_93FD30, qword_77F240);
      sub_1ED18(v225, v653, &unk_93FD30, qword_77F240);
      sub_763140();
      swift_allocObject();

      v226 = v660;

      v227 = sub_7630A0();
      v228 = sub_479258(&qword_955CE8, &type metadata accessor for TopChartsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v229 = sub_6A0B30(v226, v227, v228, _swiftEmptyArrayStorage, 0x7472616843706F74, 0xED00006567615073);

      v230 = objc_allocWithZone(type metadata accessor for TopChartsDiffablePageViewController());
      v105 = sub_6C6B40(v227, v229);

      swift_unknownObjectRelease();

      v123 = v225;
      goto LABEL_60;
    case 0xAu:
      v374 = *v76;
      v375 = v76[1];
      v376 = sub_BD88(&qword_955C60, &qword_780678);
      v377 = v645;
      v378 = v94 + *(v376 + 64);
      v379 = v641;
      v380 = v646;
      (*(v645 + 32))(v641, v378, v646);
      v381 = v620;
      (*(v377 + 16))(v620, v379, v380);
      v382 = (*(v377 + 88))(v381, v380);
      if (v382 == enum case for ShareSheetAction.ShareSheetStyle.expanded(_:))
      {
        v383 = 0;
        v384 = v669;
        v385 = v668;
        v386 = v666;
      }

      else
      {
        v384 = v669;
        v385 = v668;
        v386 = v666;
        if (v382 != enum case for ShareSheetAction.ShareSheetStyle.collapsed(_:))
        {
          (*(v645 + 8))(v620, v646);
        }

        v383 = 1;
      }

      v506 = sub_6A0B30(v660, 0, 0, _swiftEmptyArrayStorage, 0x6568536572616873, 0xEA00000000007465);
      v507 = objc_allocWithZone(type metadata accessor for ActivityViewController());
      v105 = sub_5D658(v374, v375, v383, v506);

      swift_unknownObjectRelease();

      (*(v645 + 8))(v641, v646);
      sub_BEB8(v682);
      (*(v384 + 8))(v672, v385);
      return v105;
    case 0xBu:
      v197 = *v76;
      v198 = v76[1];
      v199 = v76[2];
      v200 = v76[3];
      sub_BE70(0, &qword_955C58, off_872870);
      v201 = sub_6A0B30(v660, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000000007E24F0);
      v202 = v197;
      v203 = v198;
      v204 = v199;
      v205 = v200;
      v206 = 0;
      goto LABEL_28;
    case 0xCu:
      v220 = *v76;
      v221 = v76[1];
      v222 = v76[2];
      v223 = v76[3];
      sub_BE70(0, &qword_955C58, off_872870);
      v201 = sub_6A0B30(v660, 0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x80000000007E24D0);
      v202 = v220;
      v203 = v221;
      v204 = v222;
      v205 = v223;
      v206 = 1;
LABEL_28:
      v126 = sub_3DD7FC(v202, v203, v204, v205, v206, v201);
      goto LABEL_84;
    case 0xDu:
      v356 = sub_BD88(&qword_955D30, qword_780320);
      v357 = v596;
      v358 = v595;
      v359 = v597;
      (*(v596 + 32))(v595, v76 + *(v356 + 48), v597);
      v360 = v665;
      sub_75A720();
      (*(v357 + 16))(v587, v358, v359);
      sub_762060();
      swift_allocObject();

      v361 = v660;

      v362 = sub_762000();

      sub_761870();
      v363 = sub_479258(&qword_955D38, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v364 = sub_6A0B30(v361, v362, v363, _swiftEmptyArrayStorage, 0x6150656461637261, 0xEA00000000006567);

      v365 = objc_allocWithZone(type metadata accessor for ArcadeDiffablePageViewController(0));
      v105 = sub_A19F4(v362, v364);

      swift_unknownObjectRelease();

      (*(v357 + 8))(v358, v359);
      goto LABEL_87;
    case 0xEu:
      v178 = *(v76 + *(sub_BD88(&qword_955D10, &unk_783810) + 64));
      v179 = v654;
      sub_109C4(v76, v654, &unk_93FD30, qword_77F240);
      sub_1ED18(v179, v653, &unk_93FD30, qword_77F240);
      sub_760A50();
      swift_allocObject();

      v180 = v660;

      v181 = v665;
      v182 = sub_760A10();

      sub_75A180();
      v183 = sub_479258(&qword_955D18, &type metadata accessor for ArcadeSubscribePresenter, &protocol conformance descriptor for BasePresenter);

      v184 = sub_6A0B30(v180, v182, v183, _swiftEmptyArrayStorage, 0xD000000000000013, 0x80000000007E2600);

      v185 = objc_allocWithZone(type metadata accessor for ArcadeSubscribeViewController());
      sub_326294(v182, v178, v184);
      v105 = v186;

      swift_unknownObjectRelease();

      goto LABEL_77;
    case 0xFu:
      v277 = *v76;
      v278 = v658;

      v279 = sub_6A0B30(v660, 0, 0, _swiftEmptyArrayStorage, 0x6E6974656B72616DLL, 0xED00006D65744967);
      v280 = objc_allocWithZone(type metadata accessor for MarketingItemViewController());
      v126 = sub_484F0(v277, v657, v278, v279);
      goto LABEL_84;
    case 0x10u:

      v153 = sub_BD88(&qword_955D20, &qword_7837D8);
      v154 = v656;
      v155 = v76 + *(v153 + 48);
      v156 = v655;
      v157 = v659;
      (*(v656 + 32))(v655, v155, v659);
      sub_75E340();
      swift_allocObject();
      sub_75E330();
      v158 = v583;
      sub_760E40();
      (*(v154 + 16))(v652, v156, v157);
      v159 = v669;
      v160 = v668;
      (*(v669 + 16))(v581, v158, v668);
      sub_763F00();
      swift_allocObject();
      v161 = v660;

      v162 = sub_763E60();
      v163 = sub_479258(&qword_955D28, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
      sub_BD88(&qword_94DC10, &qword_791AD0);
      v164 = swift_allocObject();
      *(v164 + 16) = v651;

      sub_7684A0();
      v165 = sub_6A0B30(v161, v162, v163, v164, 0xD000000000000015, 0x80000000007E2620);

      v166 = objc_allocWithZone(type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController(0));
      v105 = sub_166060(v162, v165);

      swift_unknownObjectRelease();

      v167 = *(v159 + 8);
      v167(v158, v160);
      (*(v154 + 8))(v655, v659);
      sub_BEB8(v682);
      v167(v672, v160);
      return v105;
    case 0x11u:
      v311 = sub_BD88(&qword_955D00, &unk_7834A0);
      v312 = *(v311 + 64);
      v313 = v599;
      v314 = v637;
      v315 = v600;
      (*(v599 + 32))(v637, v76 + *(v311 + 48), v600);
      v316 = v656;
      v317 = v655;
      v318 = v659;
      (*(v656 + 32))(v655, v76 + v312, v659);
      (*(v313 + 16))(v589, v314, v315);
      (*(v316 + 16))(v652, v317, v318);
      sub_761A60();
      swift_allocObject();

      v319 = v660;

      v320 = sub_761A40();
      v321 = sub_479258(&qword_955D08, &type metadata accessor for ArcadeWelcomePagePresenter, &protocol conformance descriptor for BasePresenter);

      v322 = sub_6A0B30(v319, v320, v321, _swiftEmptyArrayStorage, 0xD000000000000011, 0x80000000007E25E0);

      v323 = objc_allocWithZone(type metadata accessor for ArcadeWelcomeViewController());
      v105 = sub_33ABA4(v320, v322);

      swift_unknownObjectRelease();

      (*(v316 + 8))(v317, v318);
      (*(v313 + 8))(v637, v315);
      goto LABEL_87;
    case 0x12u:
      sub_764150();
      swift_allocObject();
      v369 = v660;

      v370 = sub_764100();
      v371 = sub_479258(&qword_955CF8, &type metadata accessor for ArcadeDownloadPackCategoriesPagePresenter, &protocol conformance descriptor for BasePresenter);

      v372 = sub_6A0B30(v369, v370, v371, _swiftEmptyArrayStorage, 0xD000000000000020, 0x80000000007E25B0);

      v373 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackCategoriesViewController());
      v126 = sub_28E96C(v370, v372);
      goto LABEL_84;
    case 0x13u:

      swift_unknownObjectRelease();

      sub_BEB8(v682);
      (*(v669 + 8))(v672, v668);
      return *v76;
    case 0x14u:
      v324 = v656;
      (*(v656 + 32))(v655, v76, v659);
      v325 = v660;
      sub_768ED0();
      v326 = sub_75A760();

      v327 = v634;
      v328 = v633;
      v329 = v635;
      (*(v634 + 104))(v633, enum case for ASKBagContract.AdPlacementBagValue.today(_:), v635);
      sub_46F83C(v328, v326, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_955E78, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &protocol conformance descriptor for ASKBagContract.AdPlacementBagValue);

      (*(v327 + 8))(v328, v329);
      v330 = sub_764360();
      swift_allocObject();
      v331 = sub_764350();
      *(&v680 + 1) = v330;
      v681 = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
      *&v679 = v331;
      sub_7634F0();
      swift_allocObject();

      v332 = sub_7634D0();
      v662 = v332;
      sub_BD88(&qword_94DC10, &qword_791AD0);
      v333 = swift_allocObject();
      *(v333 + 16) = v651;
      *&v679 = v332;
      sub_7684A0();
      sub_761EB0();
      sub_768ED0();
      v334 = v654;
      v335 = v655;
      v336 = v659;
      (*(v324 + 16))(v654, v655, v659);
      (*(v324 + 56))(v334, 0, 1, v336);
      *(&v680 + 1) = v330;
      v681 = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
      *&v679 = v331;
      sub_761F50();
      swift_allocObject();

      v337 = v663;

      v338 = sub_761EE0();

      sub_761870();
      v339 = sub_479258(&qword_955CA8, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v340 = sub_6A0B30(v325, v338, v339, v333, 0x6761507961646F74, 0xE900000000000065);

      v341 = objc_allocWithZone(type metadata accessor for TodayDiffablePageViewController(0));
      v105 = sub_393E68(v338, v340);

      swift_unknownObjectRelease();

      (*(v324 + 8))(v335, v659);
      goto LABEL_87;
    case 0x15u:
      v351 = sub_BD88(&qword_955C90, &unk_780680);
      v343 = v654;
      sub_109C4(v76 + *(v351 + 48), v654, &unk_93FD30, qword_77F240);
      sub_1ED18(v343, v653, &unk_93FD30, qword_77F240);
      sub_7625B0();
      swift_allocObject();

      v352 = v660;

      v353 = sub_762520();

      sub_761870();

      v354 = sub_479258(&unk_955C98, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v355 = sub_6A0B30(v352, v353, v354, _swiftEmptyArrayStorage, 0x50656C6369747261, 0xEB00000000656761);

      v105 = sub_B26E8(v353, v355, v616 & 1);

      swift_unknownObjectRelease();

LABEL_52:

      v123 = v343;
      goto LABEL_60;
    case 0x16u:
      v421 = *v76;
      sub_768ED0();
      v422 = v679;
      v423 = sub_75A7A0();
      if (v421)
      {
        v662 = v422;
        sub_BD88(&unk_93F5C0, &unk_77C600);
        v424 = swift_allocObject();
        *(v424 + 1) = xmmword_77D9F0;
        *(v424 + 4) = v421;
        v425 = v421;
LABEL_106:
        v659 = v421;
        v658 = v425;
        v521 = v660;
        sub_768ED0();
        sub_BD88(&qword_955CC0, &unk_79E770);
        v677[0] = v424;
        v522 = v624;
        sub_768490();
        sub_7688C0();
        v523 = *(v650 + 8);
        v524 = v625;
        v523(v522, v625);
        type metadata accessor for ASDPurchaseHistoryContext(0);
        v677[0] = 1;
        sub_768490();
        sub_7688C0();

        v523(v522, v524);
        LOBYTE(v677[0]) = 1;
        sub_768490();
        v525 = sub_7688C0();
        v661 = v525;

        v523(v522, v524);
        v526 = sub_1362C(v525);
        v657 = v527;
        sub_768ED0();
        v528 = v677[0];
        sub_134D8(&v679, v677);
        sub_BD88(&qword_955CB0, &qword_79E768);
        v529 = v626;
        v530 = *(v626 + 72);
        v531 = (*(v626 + 80) + 32) & ~*(v626 + 80);
        v532 = swift_allocObject();
        *(v532 + 16) = xmmword_77E280;
        v533 = v532 + v531;
        v534 = *(v529 + 104);
        v535 = v627;
        v534(v533, enum case for PurchasesContentMode.all(_:), v627);
        v534(v533 + v530, enum case for PurchasesContentMode.notOnDevice(_:), v535);
        sub_7616C0();
        swift_allocObject();

        v536 = v658;
        v537 = v528;
        swift_unknownObjectRetain();
        v538 = v657;
        v539 = sub_761610();
        v540 = sub_479258(&qword_955CB8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for BasePresenter);
        sub_BD88(&qword_94DC10, &qword_791AD0);
        v541 = swift_allocObject();
        *(v541 + 16) = v651;
        v677[0] = v526;
        v677[1] = v538;

        sub_7684A0();
        v542 = sub_6A0B30(v521, v539, v540, v541, 0x6573616863727570, 0xED00006567615073);

        v543 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
        sub_5AB0B4(v539, v542, v544);
        v105 = v545;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_BEB8(&v679);
        goto LABEL_87;
      }

      if ((v423 & 1) == 0)
      {
        v662 = v422;
        v425 = 0;
        v424 = _swiftEmptyArrayStorage;
        goto LABEL_106;
      }

      v516 = v660;
      sub_768ED0();
      sub_75D980();
      swift_allocObject();

      v517 = sub_75D960();
      v518 = sub_479258(&unk_955CC8, &type metadata accessor for PurchasesPresenter, &protocol conformance descriptor for BasePresenter);
      v519 = sub_6A0B30(v516, v517, v518, _swiftEmptyArrayStorage, 0xD000000000000014, 0x80000000007E2570);
      v520 = objc_allocWithZone(type metadata accessor for PurchasesLoadingViewController());
      v105 = sub_6091B0(v517, v519);

      swift_unknownObjectRelease();

LABEL_65:

LABEL_86:

      goto LABEL_87;
    case 0x17u:
      v440 = *v76;
      v441 = v76[1];
      v442 = v76[2];
      v443 = sub_6A0B30(v660, 0, 0, _swiftEmptyArrayStorage, 0x6761506775626564, 0xE900000000000065);
      v444 = objc_allocWithZone(type metadata accessor for DebugMenuViewController());
      v126 = sub_6ABD00(v443, v440, v441, v442);
      goto LABEL_84;
    case 0x18u:
      sub_BD88(&qword_955C80, &qword_7837D0);
      v261 = v656;
      v262 = v655;
      v263 = v659;
      (*(v656 + 32))(v655, v76, v659);
      v264 = v660;
      sub_768ED0();
      (*(v261 + 16))(v652, v262, v263);
      sub_757ED0();
      swift_allocObject();

      swift_unknownObjectRetain();

      v265 = sub_757E90();
      v266 = sub_479258(&qword_955C88, &type metadata accessor for InAppPurchaseInstallPagePresenter, &protocol conformance descriptor for BasePresenter);

      v267 = sub_6A0B30(v264, v265, v266, _swiftEmptyArrayStorage, 0xD000000000000018, 0x80000000007E2530);

      v268 = objc_allocWithZone(type metadata accessor for InAppPurchaseInstallPageViewController(0));
      sub_59F7D8(v265, v267);
      v105 = v269;

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      (*(v261 + 8))(v262, v263);
      goto LABEL_87;
    case 0x19u:
      v231 = *(sub_BD88(&unk_955C70, &unk_783C30) + 48);
      v232 = v656;
      v233 = *(v656 + 32);
      v234 = v628;
      v235 = v76;
      v236 = v659;
      (v233)(v628, v235, v659);
      (*(v630 + 32))(v629, v94 + v231, v631);
      sub_768ED0();
      v237 = v621;
      (*(v232 + 16))(v621, v234, v236);
      swift_getObjectType();
      sub_758330();
      swift_getObjectType();
      v238 = v604;
      sub_758220();
      v239 = v601;
      v240 = v602;
      if ((*(v601 + 88))(v238, v602) != enum case for LegacyAppState.openable(_:))
      {
        (*(v239 + 8))(v238, v240);
        goto LABEL_114;
      }

      v662 = v233;
      (*(v239 + 96))(v238, v240);
      v241 = *&v238[*(sub_BD88(&unk_94DE40, &qword_78C080) + 48)];
      v242 = sub_75E270();
      (*(*(v242 - 8) + 8))(v238, v242);
      v243 = v619;
      sub_756D20();
      v244 = v575;
      v245 = v574;
      v246 = v576;
      (*(v575 + 104))(v574, enum case for RateAction.Parameter.version(_:), v576);
      sub_758E10();
      (*(v244 + 8))(v245, v246);
      v247 = [v241 stringValue];
      sub_769240();

      v248 = v243;
      sub_756CF0();

      v249 = *(v578 + 48);
      v250 = v579;
      v251 = v249(v243, 1, v579);
      v252 = v577;
      if (!v251)
      {
        v253 = sub_756D10();
        if (*v254)
        {
          v255 = v254;
          v661 = v253;
          (*(v580 + 16))(v571, v618, v252);
          v256 = *v255;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v255 = v256;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v256 = sub_7B828(0, *(v256 + 2) + 1, 1, v256);
            *v255 = v256;
          }

          v259 = *(v256 + 2);
          v258 = *(v256 + 3);
          v260 = (v259 + 1);
          if (v259 >= v258 >> 1)
          {
            v658 = (v259 + 1);
            v566 = sub_7B828((v258 > 1), v259 + 1, 1, v256);
            v260 = v658;
            v256 = v566;
            *v255 = v566;
          }

          v250 = v579;
          *(v256 + 2) = v260;
          (*(v580 + 32))(v256 + ((*(v580 + 80) + 32) & ~*(v580 + 80)) + *(v580 + 72) * v259, v571, v252);
          v661(&v679, 0);
        }

        else
        {
          v253(&v679, 0);
          v250 = v579;
        }

        v248 = v619;
      }

      if (v249(v248, 1, v250))
      {
        (*(v580 + 8))(v618, v252);

        v546 = v573;
        (*(v656 + 56))(v573, 1, 1, v659);
LABEL_112:
        sub_10A2C(v546, &unk_93FD30, qword_77F240);
        v237 = v621;
        goto LABEL_113;
      }

      v547 = v578;
      v548 = v570;
      (*(v578 + 16))(v570, v248, v250);
      v549 = v573;
      sub_756D30();

      v550 = v250;
      v546 = v549;
      (*(v547 + 8))(v548, v550);
      (*(v580 + 8))(v618, v252);
      v551 = v656;
      v552 = v659;
      if ((*(v656 + 48))(v549, 1, v659) == 1)
      {
        goto LABEL_112;
      }

      v237 = v621;
      (*(v551 + 8))(v621, v552);
      (v662)(v237, v549, v552);
LABEL_113:
      sub_10A2C(v619, &qword_955BF0, &unk_79E750);
LABEL_114:
      v553 = objc_allocWithZone(type metadata accessor for ComposeReviewViewController());
      sub_757040(v554);
      v556 = v555;
      v105 = [v553 initWithCompositionURL:v555];

      if (!v105)
      {
        __break(1u);
        JUMPOUT(0x4786F0);
      }

      v557 = v105;
      v558 = sub_6A0B30(v660, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000010, 0x80000000007E2510);
      v559 = type metadata accessor for ComposeReviewDelegate();
      v560 = objc_allocWithZone(v559);
      *&v560[OBJC_IVAR____TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF21ComposeReviewDelegate_selfReference] = 0;
      *&v560[OBJC_IVAR____TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF21ComposeReviewDelegate_objectGraph] = v558;
      v678.receiver = v560;
      v678.super_class = v559;
      v561 = objc_msgSendSuper2(&v678, "init");
      v562 = *(v561 + OBJC_IVAR____TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF21ComposeReviewDelegate_selfReference);
      *(v561 + OBJC_IVAR____TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF21ComposeReviewDelegate_selfReference) = v561;
      v563 = v561;

      [v557 setDelegate:v563];
      [v557 prepareWithCompletionBlock:0];

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v564 = *(v656 + 8);
      v565 = v659;
      v564(v237, v659);
      (*(v630 + 8))(v629, v631);
      v564(v628, v565);
LABEL_87:
      sub_BEB8(v682);
      (*(v669 + 8))(v672, v668);
      return v105;
    case 0x1Au:
      sub_762A00();
      swift_allocObject();
      v474 = v660;

      v475 = sub_762970();

      sub_761870();
      v476 = sub_479258(&qword_955C68, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v477 = sub_6A0B30(v474, v475, v476, _swiftEmptyArrayStorage, 0x5073776569766572, 0xEB00000000656761);

      v478 = objc_allocWithZone(type metadata accessor for ReviewsDiffablePageViewController(0));
      v105 = sub_1B565C(v475, v477);
      goto LABEL_80;
    case 0x1Bu:
      v136 = v605;
      sub_109C4(v76, v605, &unk_93FD30, qword_77F240);
      v137 = v585;
      sub_1ED18(v136, v585, &unk_93FD30, qword_77F240);
      v138 = v656;
      v139 = v659;
      if ((*(v656 + 48))(v137, 1, v659) == 1)
      {
        sub_10A2C(v137, &unk_93FD30, qword_77F240);
        v140 = sub_758000();
        swift_allocObject();
        swift_unknownObjectRetain();
        v141 = v663;
        v142 = sub_757FF0();
        *(&v680 + 1) = v140;
        v681 = &protocol witness table for ASDInAppPurchaseStateProvider;
        *&v679 = v142;
        sub_75B990();
        swift_allocObject();

        v143 = v660;

        v144 = v665;
        v145 = v136;
        v146 = v666;
        v147 = sub_75B840();
        v148 = sub_479258(&qword_955CD8, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for BasePresenter);

        v149 = sub_6A0B30(v143, v147, v148, _swiftEmptyArrayStorage, 0x50746E756F636361, 0xEB00000000656761);

        v150 = objc_allocWithZone(type metadata accessor for AccountViewController());
        v105 = sub_3CBB8(v147, v149);

        swift_unknownObjectRelease();

        sub_10A2C(v145, &unk_93FD30, qword_77F240);
      }

      else
      {
        v485 = v572;
        (*(v138 + 32))(v572, v137, v139);
        v486 = v654;
        (*(v138 + 16))(v654, v485, v139);
        (*(v138 + 56))(v486, 0, 1, v139);
        sub_7622A0();
        swift_allocObject();
        v487 = v660;

        v488 = sub_762200();
        v489 = sub_479258(&qword_955CF0, &type metadata accessor for GenericAccountPagePresenter, &protocol conformance descriptor for BasePresenter);

        v490 = sub_6A0B30(v487, v488, v489, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000000007E2590);

        v491 = type metadata accessor for GenericAccountPageViewController();
        v492 = objc_allocWithZone(v491);
        *&v492[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_overlayViewController] = 0;
        *&v492[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_presenter] = v488;
        *&v492[OBJC_IVAR____TtC18ASMessagesProvider32GenericAccountPageViewController_objectGraph] = v490;
        v676.receiver = v492;
        v676.super_class = v491;
        v105 = objc_msgSendSuper2(&v676, "initWithStyle:", 2);

        swift_unknownObjectRelease();

        (*(v138 + 8))(v485, v139);
        sub_10A2C(v136, &unk_93FD30, qword_77F240);
      }

      goto LABEL_87;
    case 0x1Cu:
      v445 = v636;
      sub_109C4(v76, v636, &unk_93FD30, qword_77F240);
      v446 = v586;
      sub_1ED18(v445, v586, &unk_93FD30, qword_77F240);
      v447 = v656;
      v448 = v659;
      if ((*(v656 + 48))(v446, 1, v659) == 1)
      {
        v450 = 0;
      }

      else
      {
        sub_757040(v449);
        v450 = v508;
        (*(v447 + 8))(v446, v448);
      }

      v509 = v669;
      v510 = v668;
      v511 = v666;
      v512 = v665;
      v513 = [objc_allocWithZone(type metadata accessor for AccountPageViewController()) initWithAccountURL:v450];

      v514 = objc_allocWithZone(type metadata accessor for AccountPageViewControllerDelegate());
      v105 = v513;
      v515 = [v514 init];
      [v105 setDelegate:v515];

      [v105 prepareWithCompletionBlock:0];

      swift_unknownObjectRelease();

      sub_10A2C(v636, &unk_93FD30, qword_77F240);
      sub_BEB8(v682);
      (*(v509 + 8))(v672, v510);
      return v105;
    case 0x1Du:
      v451 = *(sub_BD88(&qword_943FB8, &unk_7837C0) + 48);
      v452 = v656;
      v453 = v655;
      v454 = v659;
      (*(v656 + 32))(v655, v94, v659);
      v455 = v94 + v451;
      v456 = v614;
      sub_109C4(v455, v614, &qword_943F30, &qword_7837A8);
      v457 = v660;
      sub_7688F0();
      (*(v452 + 16))(v652, v453, v454);
      v458 = v456;
      sub_1ED18(v456, v606, &qword_943F30, &qword_7837A8);
      sub_760C70();
      swift_allocObject();

      v459 = sub_760C60();

      sub_761870();
      v460 = sub_479258(&qword_955C50, &type metadata accessor for MSODiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v461 = sub_6A0B30(v457, v459, v460, _swiftEmptyArrayStorage, 0x656761506F736DLL, 0xE700000000000000);

      v462 = objc_allocWithZone(type metadata accessor for MSODiffablePageViewController(0));
      *&v462[qword_99CB80] = 0x3FF0000000000000;
      *&v462[qword_950140] = 0;
      *&v462[qword_950148] = 0x4034000000000000;
      v462[qword_99CB88] = 0;
      *&v462[qword_950150] = 0;
      v105 = sub_46C7C8(v459, v461);

      swift_unknownObjectRelease();

      sub_10A2C(v458, &qword_943F30, &qword_7837A8);
      (*(v452 + 8))(v655, v454);
      goto LABEL_87;
    case 0x1Eu:
      (*(v656 + 56))(v654, 1, 1, v659);
      sub_75EB10();
      v679 = 0u;
      v680 = 0u;
      v681 = 0;
      swift_allocObject();

      v394 = v660;

      v395 = sub_75EB00();

      sub_75A180();
      v396 = sub_479258(&qword_955C28, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);

      v397 = sub_6A0B30(v394, v395, v396, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000000007E24B0);

      v398 = objc_allocWithZone(type metadata accessor for VersionHistoryViewController(0));
      sub_697894(v395, v397);
      v105 = v399;

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x1Fu:
      v306 = *v76;
      type metadata accessor for OnboardingPresenter();
      v307 = swift_allocObject();
      *(v307 + 16) = v306;
      *(v307 + 24) = v670;

      *(v307 + 32) = sub_5CCE88(v308, v306);
      v309 = objc_allocWithZone(type metadata accessor for OnboardingViewController());

      v105 = sub_6D283C(v310, sub_46FF64, 0);
      if (qword_93E120 != -1)
      {
        swift_once();
      }

      swift_unknownObjectWeakAssign();
LABEL_80:

      goto LABEL_85;
    case 0x20u:
      v187 = *v76;
      v188 = v642;
      (*(v639 + 104))(v642, enum case for Shelf.ContentType.reviews(_:), v640);

      v189 = sub_6A0B30(v660, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000010, 0x80000000007E2490);
      v190 = objc_allocWithZone(type metadata accessor for ComponentViewOverflowViewController());
      v191 = &unk_955EE0;
      v192 = &type metadata accessor for Review;
      v193 = &type metadata accessor for Review;
      v194 = &protocol conformance descriptor for Review;
      goto LABEL_63;
    case 0x21u:
      v187 = *v76;
      v188 = v642;
      (*(v639 + 104))(v642, enum case for Shelf.ContentType.editorsChoice(_:), v640);

      v189 = sub_6A0B30(v660, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000017, 0x80000000007E2470);
      v190 = objc_allocWithZone(type metadata accessor for ComponentViewOverflowViewController());
      v191 = &unk_953E70;
      v192 = &type metadata accessor for EditorsChoice;
      v193 = &type metadata accessor for EditorsChoice;
      v194 = &protocol conformance descriptor for EditorsChoice;
LABEL_63:
      v105 = sub_4711B8(v187, v188, v189, v190, v192, v191, v193, v194);

      [v105 setModalPresentationStyle:4];

      goto LABEL_85;
    case 0x22u:
      v151 = *v76;
      v152 = v76[1];
      v105 = [objc_allocWithZone(GKLeaderboardScoreViewController) initWithGameRecord:v152 leaderboard:*v76];

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x23u:
      sub_765F00();
      sub_1ED18(v643, &v679, &unk_9442E0, &unk_783C10);
      v126 = sub_765EF0();
      goto LABEL_84;
    case 0x24u:
      v128 = *v76;
      v127 = v76[1];
      v129 = enum case for GameLayerAchievementsEntryPoint.achievementsByGame(_:);
      v130 = sub_765C60();
      v131 = *(v130 - 8);
      v132 = v613;
      (*(v131 + 104))(v613, v129, v130);
      (*(v131 + 56))(v132, 0, 1, v130);
      if (*(v127 + 16) == 1)
      {
      }

      sub_765C50();
      swift_allocObject();
      v133 = v128;
      sub_765C40();
      v134 = sub_765D00();
      (*(*(v134 - 8) + 56))(v615, 1, 1, v134);
      v135 = objc_allocWithZone(sub_765C80());
      v105 = sub_765C70();

      goto LABEL_85;
    case 0x25u:
      v115 = sub_BD88(&qword_940A50, &qword_782590);
      v116 = v654;
      sub_109C4(v76 + *(v115 + 48), v654, &unk_93FD30, qword_77F240);
      sub_1ED18(v116, v653, &unk_93FD30, qword_77F240);
      sub_75EB10();
      v679 = 0u;
      v680 = 0u;
      v681 = 0;
      swift_allocObject();

      v117 = v660;

      v118 = sub_75EB00();

      sub_75A180();
      v119 = sub_479258(&qword_955C28, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);

      v120 = sub_6A0B30(v117, v118, v119, _swiftEmptyArrayStorage, 0xD000000000000011, 0x80000000007E2450);

      v121 = objc_allocWithZone(type metadata accessor for PrivacyDetailViewController(0));
      sub_2A3300(v118, v120);
      v105 = v122;

      swift_unknownObjectRelease();

      v123 = v116;
      goto LABEL_60;
    case 0x26u:
      v463 = sub_BD88(&qword_940A50, &qword_782590);
      v179 = v654;
      sub_109C4(v76 + *(v463 + 48), v654, &unk_93FD30, qword_77F240);
      sub_1ED18(v179, v653, &unk_93FD30, qword_77F240);
      sub_75EB10();
      v679 = 0u;
      v680 = 0u;
      v681 = 0;
      swift_allocObject();

      v464 = v660;

      v465 = sub_75EB00();

      sub_75A180();
      v466 = sub_479258(&qword_955C28, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);

      v467 = sub_6A0B30(v464, v465, v466, _swiftEmptyArrayStorage, 0xD000000000000016, 0x80000000007E2430);

      v468 = objc_allocWithZone(type metadata accessor for PrivacyDefinitionsViewController(0));
      type metadata accessor for PrivacyDefinitionsDataSource(0);
      swift_allocObject();
      v469 = swift_retain_n();
      v470 = sub_46FE8C(v469);

      v105 = sub_46F944(v465, v470, v467);
      sub_479258(&unk_955C30, type metadata accessor for PrivacyDefinitionsViewController, &unk_7A91FC);
      v471 = v105;

      v472 = v471;
      sub_760AA0();

      v472[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 0;
      v473 = [v472 navigationItem];
      [v473 setLargeTitleDisplayMode:2];

      swift_unknownObjectRelease();

LABEL_77:
      v123 = v179;
      goto LABEL_60;
    case 0x27u:
      v426 = sub_BD88(&qword_940A50, &qword_782590);
      v427 = v654;
      sub_109C4(v76 + *(v426 + 48), v654, &unk_93FD30, qword_77F240);
      sub_1ED18(v427, v653, &unk_93FD30, qword_77F240);
      sub_7627A0();
      swift_allocObject();

      v428 = v660;

      v429 = sub_762790();

      sub_761870();
      v430 = sub_479258(&qword_955C20, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v431 = sub_6A0B30(v428, v429, v430, _swiftEmptyArrayStorage, 0xD000000000000018, 0x80000000007E2410);

      v432 = objc_allocWithZone(type metadata accessor for AccessibilityDetailsViewController(0));
      *&v432[qword_99CB80] = 0x3FF0000000000000;
      *&v432[qword_950140] = 0;
      *&v432[qword_950148] = 0x4034000000000000;
      v432[qword_99CB88] = 0;
      *&v432[qword_950150] = 0;
      v105 = sub_469FD8(v429, v431);

      swift_unknownObjectRelease();

      v123 = v427;
LABEL_60:
      sub_10A2C(v123, &unk_93FD30, qword_77F240);
      goto LABEL_87;
    case 0x28u:
      v211 = v76[1];
      sub_758580();
      swift_allocObject();
      v212 = v660;

      v213 = sub_758540();

      sub_75A180();

      v214 = sub_479258(&unk_955C10, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);

      v215 = sub_6A0B30(v212, v213, v214, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000000007E23F0);

      v216 = objc_allocWithZone(type metadata accessor for AppEventDetailPageViewController());
      v217 = v211;

      sub_3A6A80(v213, v215, v211);
      v105 = v218;
      [v105 setModalPresentationStyle:4];
      v219 = OBJC_IVAR____TtC18ASMessagesProvider32AppEventDetailPageViewController_containerTransitioningDelegate;
      goto LABEL_71;
    case 0x29u:
    case 0x2Au:
      v433 = v76[1];
      sub_758620();
      swift_allocObject();
      v434 = v660;

      v435 = sub_7585E0();

      sub_75A180();

      v436 = sub_479258(&qword_955C08, &type metadata accessor for AppPromotionDetailPagePresenter, &protocol conformance descriptor for BasePresenter);

      v437 = sub_6A0B30(v434, v435, v436, _swiftEmptyArrayStorage, 0xD000000000000016, 0x80000000007E23D0);

      v438 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageViewController(0));
      v217 = v433;

      sub_942B0(v435, v437, v433);
      v105 = v439;
      [v105 setModalPresentationStyle:4];
      v219 = OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageViewController_containerTransitioningDelegate;
LABEL_71:
      [v105 setTransitioningDelegate:*&v105[v219]];

      swift_unknownObjectRelease();

      sub_BEB8(v682);
      (*(v669 + 8))(v672, v668);

      return v105;
    case 0x2Bu:
      v105 = *v76;
      v106 = sub_BD88(&unk_955C40, &unk_7837B0);
      v107 = v611;
      v108 = v610;
      v109 = v612;
      (*(v611 + 32))(v610, v76 + *(v106 + 48), v612);
      type metadata accessor for ComponentViewOverflowViewController();
      if (swift_dynamicCastClass())
      {
        v110 = v105;
        sub_154A64(v108);

        v111 = v666;
        v112 = v110;
        v113 = v669;
        v114 = v668;
      }

      else
      {
        v113 = v669;
        v114 = v668;
        v112 = v666;
        v111 = v665;
      }

      swift_unknownObjectRelease();

      (*(v107 + 8))(v108, v109);
      sub_BEB8(v682);
      (*(v113 + 8))(v672, v114);
      return v105;
    case 0x2Cu:
      v168 = sub_758000();
      swift_allocObject();
      swift_unknownObjectRetain();
      v169 = v663;
      v170 = sub_757FF0();
      *(&v680 + 1) = v168;
      v681 = &protocol witness table for ASDInAppPurchaseStateProvider;
      *&v679 = v170;
      sub_75B990();
      swift_allocObject();

      v171 = v660;

      v172 = v665;
      v173 = v666;
      v174 = sub_75B840();
      v175 = sub_479258(&qword_955CD8, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for BasePresenter);

      v176 = sub_6A0B30(v171, v174, v175, _swiftEmptyArrayStorage, 0x50746E756F636361, 0xEB00000000656761);

      v177 = objc_allocWithZone(type metadata accessor for AccountViewController());
      v105 = sub_3CBB8(v174, v176);

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x2Du:
      type metadata accessor for ASDPurchaseHistoryContext(0);
      *&v679 = 1;
      v400 = v624;
      sub_768490();
      v401 = v660;
      sub_7688C0();
      v402 = *(v650 + 8);
      v403 = v625;
      v402(v400, v625);
      LOBYTE(v679) = 1;
      sub_768490();
      v404 = sub_7688C0();
      v662 = v404;

      v402(v400, v403);
      v405 = sub_1362C(v404);
      v661 = v406;
      sub_768880();
      v659 = v405;
      swift_unknownObjectRetain();
      sub_768880();
      sub_BD88(&qword_955CB0, &qword_79E768);
      v407 = v626;
      v408 = (*(v626 + 80) + 32) & ~*(v626 + 80);
      v409 = swift_allocObject();
      *(v409 + 16) = v651;
      v410 = enum case for PurchasesContentMode.hidden(_:);
      v411 = *(v407 + 104);
      v412 = v627;
      v411(v409 + v408, enum case for PurchasesContentMode.hidden(_:), v627);
      sub_7616C0();
      swift_allocObject();

      v413 = v661;
      v414 = sub_761610();
      v411(v603, v410, v412);
      sub_761660();
      v415 = sub_479258(&qword_955CB8, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for BasePresenter);
      sub_BD88(&qword_94DC10, &qword_791AD0);
      v416 = swift_allocObject();
      *(v416 + 16) = v651;
      *&v679 = v659;
      *(&v679 + 1) = v413;

      sub_7684A0();
      v417 = sub_6A0B30(v401, v414, v415, v416, 0xD000000000000013, 0x80000000007E2550);

      v418 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
      sub_5AB0B4(v414, v417, v419);
      v105 = v420;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_65;
    case 0x2Eu:
      type metadata accessor for ComingSoonViewController();
      v126 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      goto LABEL_84;
    case 0x2Fu:
      sub_761EB0();
      sub_7688F0();
      v124 = v679;
      v125 = objc_allocWithZone(type metadata accessor for DebugTodayCardTriggerViewController());
      v126 = sub_1F1BB4(v124);
      goto LABEL_84;
    case 0x30u:
      sub_762F30();
      swift_allocObject();

      v195 = sub_762E90();
      v196 = objc_allocWithZone(type metadata accessor for DebugStorefrontPickerViewController());
      v126 = sub_4B815C(v195);
      goto LABEL_84;
    case 0x31u:
      v207 = sub_75A910();
      v208 = objc_allocWithZone(AMSUINotificationSettingsViewController);
      v209 = sub_769210();
      v105 = [v208 initWithIdentifier:v209 bag:v207];

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      goto LABEL_86;
    case 0x32u:
      v103 = [objc_allocWithZone(GKDashboardRequest) init];
      [v103 setState:4];
      sub_765ED0();
      (*(v607 + 104))(v609, enum case for DashboardLaunchContext.appStore(_:), v608);
      sub_1ED18(v643, &v679, &unk_9442E0, &unk_783C10);
      v104 = v103;
      v105 = sub_765EC0();

      goto LABEL_85;
    case 0x33u:
      sub_7640C0();
      swift_allocObject();
      v479 = v660;

      v480 = sub_7640A0();
      v481 = sub_479258(&qword_955C00, &type metadata accessor for PersonalizationTransparencyPagePresenter, &protocol conformance descriptor for BasePresenter);

      v482 = sub_6A0B30(v479, v480, v481, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x80000000007E23B0);

      v483 = objc_allocWithZone(type metadata accessor for PersonalizationTransparencyPageViewController());
      v126 = sub_69CEB8(v480, v482);
LABEL_84:
      v105 = v126;
LABEL_85:

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x34u:

      swift_unknownObjectRelease();

      sub_BEB8(v682);
      (*(v669 + 8))(v672, v668);
      return 0;
    default:
      v95 = sub_BD88(&qword_955D70, &qword_783808);
      v662 = *(v76 + v95[12]);
      v661 = *(v76 + v95[16]);
      v654 = *(v76 + v95[20]);
      v655 = *(v76 + v95[24]);
      (*(v656 + 32))(v648, v76, v659);
      LODWORD(v653) = sub_75A8A0();
      sub_75A880();
      v96 = sub_75A760();
      v97 = v634;
      v98 = *(v634 + 104);
      v99 = v633;
      v100 = v635;
      v98(v633, enum case for ASKBagContract.AdPlacementBagValue.productPageYMAL(_:), v635);
      v101 = sub_46F83C(v99, v96, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_955E78, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &protocol conformance descriptor for ASKBagContract.AdPlacementBagValue);

      v102 = *(v97 + 8);
      v102(v99, v100);
      if (v101)
      {
        LODWORD(v649) = 1;
      }

      else
      {
        v493 = sub_75A760();
        v98(v99, enum case for ASKBagContract.AdPlacementBagValue.productPageYMALDuringDownload(_:), v100);
        LODWORD(v649) = sub_46F83C(v99, v493, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_955E78, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &protocol conformance descriptor for ASKBagContract.AdPlacementBagValue);

        v102(v99, v100);
      }

      v494 = sub_764360();
      swift_allocObject();
      v495 = sub_764350();
      *(&v680 + 1) = v494;
      v681 = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
      *&v679 = v495;
      sub_7634F0();
      swift_allocObject();
      v496 = v495;

      v497 = sub_7634D0();
      v652 = v497;
      sub_BD88(&qword_94DC10, &qword_791AD0);
      v498 = swift_allocObject();
      *(v498 + 16) = v651;
      *&v679 = v497;
      sub_7684A0();
      (*(v656 + 16))(v592, v648, v659);
      sub_134D8(v682, &v679);
      v677[3] = v582;
      v677[4] = &protocol witness table for Restrictions;
      v677[0] = v671;

      v499 = sub_7699D0();
      v500 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
      if ((v499 & 1) == 0)
      {
        v500 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
      }

      (*(v593 + 104))(v598, *v500, v594);
      v675 = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
      v674 = v494;
      v646 = v496;
      v673 = v496;
      sub_1ED18(v644, v638, &unk_944FF0, &unk_783C00);
      sub_762960();
      swift_allocObject();

      v501 = v660;

      swift_unknownObjectRetain();

      v502 = sub_7628B0();
      sub_75B430();

      sub_75B410();
      sub_75B400();

      sub_761810();

      sub_761870();

      v503 = sub_479258(&qword_955D78, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v504 = sub_6A0B30(v501, v502, v503, v498, 0x50746375646F7270, 0xEB00000000656761);

      v505 = objc_allocWithZone(type metadata accessor for ProductDiffablePageViewController(0));
      v105 = sub_1BDC08(v502, v504);

      swift_unknownObjectRelease();

      (*(v656 + 8))(v648, v659);
      goto LABEL_87;
  }
}

uint64_t sub_4787C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_478818()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_478864(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_4788B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_4788FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_478914()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_47894C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF33AccountPageViewControllerDelegate_selfReference);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProviderP33_8593DF36867E5E4F61FE17D5FBD3E0CF33AccountPageViewControllerDelegate_selfReference) = 0;
}

uint64_t sub_478964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a2;
  v72 = a3;
  v4 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v4 - 8);
  v70 = &v67 - v5;
  v6 = sub_BD88(&unk_9442D0, &unk_780660);
  __chkstk_darwin(v6 - 8);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v67 - v10;
  __chkstk_darwin(v12);
  v14 = &v67 - v13;
  v15 = type metadata accessor for FlowDestination(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v67 = &v67 - v19;
  __chkstk_darwin(v20);
  v22 = (&v67 - v21);
  __chkstk_darwin(v23);
  v25 = &v67 - v24;

  sub_764BF0();
  sub_146CF0(a1, v75, v14);
  v26 = *(v16 + 48);
  v27 = v26(v14, 1, v15);
  v68 = v8;
  if (v27 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v26(v14, 1, v15) != 1)
    {
      sub_10A2C(v14, &unk_9442D0, &unk_780660);
    }
  }

  else
  {
    sub_61AE8(v14, v25, v28);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_61BB0(v25, v30);
  type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
  if (EnumCaseMultiPayload == 2)
  {
    v31 = objc_allocWithZone(type metadata accessor for WebNavigationController());
    *&v31[OBJC_IVAR____TtC18ASMessagesProvider25StoreNavigationController_objectGraph] = v72;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = type metadata accessor for StoreNavigationController();
    v73.receiver = v31;
    v73.super_class = v33;

    v34 = objc_msgSendSuper2(&v73, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
  }

  else
  {
    v33 = type metadata accessor for StoreNavigationController();
    v35 = objc_allocWithZone(v33);
    *&v35[OBJC_IVAR____TtC18ASMessagesProvider25StoreNavigationController_objectGraph] = v72;
    v36 = swift_getObjCClassFromMetadata();
    v76.receiver = v35;
    v76.super_class = v33;

    v34 = objc_msgSendSuper2(&v76, "initWithNavigationBarClass:toolbarClass:", v36, 0);
  }

  v37 = v34;
  [v37 setDelegate:v37];
  type metadata accessor for StoreNavigationController();
  v75[3] = v33;
  v75[4] = sub_479258(&unk_93FCF0, type metadata accessor for StoreNavigationController, &unk_77F18C);
  v75[0] = v37;

  sub_764BF0();
  sub_146CF0(a1, v74, v11);
  if (v26(v11, 1, v15) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v26(v11, 1, v15) != 1)
    {
      sub_10A2C(v11, &unk_9442D0, &unk_780660);
    }
  }

  else
  {
    sub_61AE8(v11, v22, v38);
  }

  v39 = sub_758A60();
  v41 = v40;
  v42 = v70;
  sub_758A80();
  v43 = sub_471418(v22, v71, v39, v41, v42, v75, v72, 1);

  sub_10A2C(v42, &unk_944FF0, &unk_783C00);
  sub_61BB0(v22, v44);
  sub_10A2C(v75, &unk_9442E0, &unk_783C10);
  if (!v43)
  {

    return 0;
  }

  sub_764BF0();
  v45 = v68;
  sub_146CF0(a1, v75, v68);
  if (v26(v45, 1, v15) == 1)
  {
    v47 = v67;
    swift_storeEnumTagMultiPayload();
    v48 = v26(v45, 1, v15);
    v50 = v69;
    if (v48 != 1)
    {
      sub_10A2C(v45, &unk_9442D0, &unk_780660);
    }
  }

  else
  {
    v47 = v67;
    sub_61AE8(v45, v67, v46);
    v50 = v69;
  }

  sub_61AE8(v47, v50, v49);
  v52 = swift_getEnumCaseMultiPayload();
  if (v52 == 14)
  {
    sub_BD88(&qword_955D10, &unk_783810);

    sub_10A2C(v50, &unk_93FD30, qword_77F240);
    goto LABEL_30;
  }

  if (v52 == 15 || v52 == 18)
  {
    sub_61BB0(v50, v53);
LABEL_30:
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_77D9F0;
    *(v63 + 32) = v43;
    sub_BE70(0, &qword_9434E0, UIViewController_ptr);
    v51 = v37;
    v64 = v43;
    isa = sub_769450().super.isa;

    [v51 setViewControllers:isa];

    return v51;
  }

  sub_61BB0(v50, v53);
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();

  if (sub_392758(v43))
  {

    goto LABEL_30;
  }

  v55 = [v43 navigationItem];
  v56 = [v55 rightBarButtonItems];
  if (v56)
  {
    v57 = v56;
    v58 = v43;
    sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
    v59 = sub_769460();
  }

  else
  {
    v58 = v43;
    v59 = _swiftEmptyArrayStorage;
  }

  v75[0] = v59;
  sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
  sub_BE70(0, &qword_955FA0, UIAction_ptr);
  v60 = swift_allocObject();
  *(v60 + 16) = sub_4792A0;
  *(v60 + 24) = v54;

  v77.value.super.super.isa = sub_76A1F0();
  v77.is_nil = 0;
  v61.super.super.isa = sub_769830(UIBarButtonSystemItemClose, v77, v78).super.super.isa;
  if (!(v59 >> 62) || (result = sub_76A860(), (result & 0x8000000000000000) == 0))
  {
    sub_4A7B58(0, 0, v61.super.super.isa);
    v62 = sub_769450().super.isa;

    [v55 setRightBarButtonItems:v62];

    v43 = v58;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_479258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_4792F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = v4 + OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 8);
        ObjectType = swift_getObjectType();
        (*(v7 + 8))(v5, ObjectType, v7);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_4793C8()
{
  v1 = v0;
  v2 = sub_75E2B0();
  if (*(v2 + 16) && (v3 = sub_66456C(v1 + OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_facet), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = _swiftEmptySetSingleton;
  }

  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_selectedFacetOptions);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_selectedFacetOptions) = v5;

  sub_47B770(v7, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {

    sub_479598();
  }
}

void (*sub_479494(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_47BFE0;
}

void sub_479598()
{
  v1 = v0;
  v2 = sub_BD88(&qword_956010, &qword_79E8D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_diffableDataSource;
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_diffableDataSource];
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  sub_767A90();

  v17[0] = 0xD000000000000030;
  v17[1] = 0x80000000007C8EA0;
  v9._rawValue = sub_7678D0();
  sub_7678B0(v9);

  v10 = *&v1[v6];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  sub_767A60();

  v12 = &v1[OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_preselectionContentOffset];
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_preselectionContentOffset + 16])
  {
    (*(v3 + 8))(v5, v2);
    return;
  }

  v14 = *v12;
  v13 = v12[1];
  v15 = [v1 collectionView];
  if (v15)
  {
    v16 = v15;
    [v15 setContentOffset:{v14, v13}];

    (*(v3 + 8))(v5, v2);
    *v12 = 0.0;
    v12[1] = 0.0;
    *(v12 + 16) = 1;
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_479788()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v38 = sub_BD88(&qword_956010, &qword_79E8D8);
  v35 = *(v38 - 8);
  __chkstk_darwin(v38);
  v4 = &v35 - v3;
  v37 = sub_BD88(&qword_956038, &qword_79E8E0);
  v5 = *(v37 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v37);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v35 - v9;
  v45.receiver = v0;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, "viewDidLoad", v8);
  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 systemBackgroundColor];
  [v12 setBackgroundColor:v14];

  v15 = [v0 collectionView];
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v13 systemBackgroundColor];
  [v16 setBackgroundColor:v17];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_BE70(0, &qword_942168, UICollectionViewListCell_ptr);
  sub_758DA0();
  sub_769870();
  if (![v0 collectionView])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v36;
  v18 = v37;
  (*(v5 + 16))(v36, v10, v37);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  (*(v5 + 32))(v21 + v20, v19, v18);
  v22 = objc_allocWithZone(sub_BD88(&qword_956040, qword_79E8E8));
  v23 = sub_767A20();
  (*(v5 + 8))(v10, v18);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_diffableDataSource;
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_diffableDataSource] = v23;

  sub_47C1E0(&qword_956018, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
  sub_767920();
  v26._rawValue = &off_87F098;
  v27 = v38;
  sub_7678C0(v26);
  sub_758DB0();
  aBlock = 0;
  v40 = 0;
  sub_7678A0();

  v28 = *&v1[v24];
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v29 = v28;
  sub_767A60();

  (*(v35 + 8))(v4, v27);
  v30 = [v1 collectionView];
  if (v30)
  {
    v31 = v30;
    v32 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v43 = sub_479D48;
    v44 = 0;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_507AD4;
    v42 = &unk_892BA0;
    v33 = _Block_copy(&aBlock);
    v34 = [v32 initWithSectionProvider:v33];
    _Block_release(v33);

    [v31 setCollectionViewLayout:v34];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_479D48(uint64_t a1, uint64_t a2)
{
  v2 = sub_767B10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_767B70();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v2, v8);
  sub_767B40();
  sub_BE70(0, &unk_93FFE0, NSCollectionLayoutSection_ptr);
  v11 = sub_769C50();
  (*(v7 + 8))(v10, v6);
  return v11;
}

uint64_t sub_479EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_BD88(&qword_942170, &unk_7816E0);
  __chkstk_darwin(v6 - 8);
  v28 = v27 - v7;
  v8 = sub_767560();
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_767530();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_767880();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_767850();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v27[2] = a1;
    sub_758D90();
    sub_767860();
    v21 = *&v20[OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_selectedFacetOptions];

    v22 = sub_6670E0(a3, v21);

    if (v22)
    {
      sub_BD88(&qword_942178, &qword_7AEEB0);
      v23 = *(sub_767620() - 8);
      v27[1] = (*(v23 + 80) + 32) & ~*(v23 + 80);
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      (*(v12 + 104))(v14, enum case for UICellAccessory.DisplayedState.always(_:), v11);
      v24 = sub_767540();
      (*(*(v24 - 8) + 56))(v28, 1, 1, v24);
      sub_767550();
      sub_767610();
      (*(v29 + 8))(v10, v30);
      (*(v12 + 8))(v14, v11);
    }

    sub_769C10();
  }

  v31[3] = v15;
  v31[4] = &protocol witness table for UIListContentConfiguration;
  v25 = sub_B1B4(v31);
  (*(v16 + 16))(v25, v18, v15);
  sub_769AE0();
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_47A324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_BD88(&qword_956028, &unk_7AEEA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_758DA0();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a3, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_BE70(0, &qword_942168, UICollectionViewListCell_ptr);
  v10 = sub_769890();
  sub_47C004(v7);
  return v10;
}

void sub_47A46C(void *a1, uint64_t a2)
{
  v124 = a1;
  v4 = sub_768380();
  v121 = *(v4 - 8);
  v122 = v4;
  __chkstk_darwin(v4);
  v119 = &v91[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = sub_7683C0();
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v91[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = sub_757640();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = v7;
  v112 = &v91[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = sub_7683E0();
  v116 = *(v125 - 8);
  __chkstk_darwin(v125);
  v110 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v115 = &v91[-v10];
  v11 = sub_BD88(&qword_942170, &unk_7816E0);
  __chkstk_darwin(v11 - 8);
  v97 = &v91[-v12];
  v99 = sub_767560();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = &v91[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_767530();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v91[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_758CC0();
  v128 = *(v15 - 8);
  __chkstk_darwin(v15);
  v105 = &v91[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v106 = &v91[-v18];
  __chkstk_darwin(v19);
  v123 = &v91[-v20];
  __chkstk_darwin(v21);
  v126 = &v91[-v22];
  __chkstk_darwin(v23);
  v25 = &v91[-v24];
  __chkstk_darwin(v26);
  v28 = &v91[-v27];
  v29 = sub_BD88(&qword_956028, &unk_7AEEA0);
  __chkstk_darwin(v29 - 8);
  v31 = &v91[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v34 = &v91[-v33];
  v35 = sub_758DA0();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v127 = &v91[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_diffableDataSource);
  if (!v38)
  {
    __break(1u);
    return;
  }

  v39 = v2;
  v40 = v38;
  v109 = a2;
  sub_767A40();

  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_47C004(v34);
    return;
  }

  v107 = v36;
  v41 = *(v36 + 32);
  v108 = v35;
  v41(v127, v34, v35);
  v103 = OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_facet;
  sub_758CD0();
  v42 = *(v128 + 104);
  v92 = enum case for PageFacets.Facet.DisplayType.multipleSelection(_:);
  v102 = v128 + 104;
  v101 = v42;
  v42(v25);
  v43 = sub_47C1E0(&qword_956030, &type metadata accessor for PageFacets.Facet.DisplayType, &protocol conformance descriptor for PageFacets.Facet.DisplayType);
  sub_769430();
  v100 = v43;
  sub_769430();
  if (aBlock == v135 && v130 == v136)
  {
    v44 = 1;
  }

  else
  {
    v44 = sub_76A950();
  }

  v45 = v128 + 8;
  v46 = *(v128 + 8);
  v46(v25, v15);
  v128 = v45;
  v104 = v46;
  v46(v28, v15);

  if ((v44 & 1) != 0 || (v47 = *(v39 + OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_selectedFacetOptions), , v48 = sub_6670E0(v127, v47), , (v48 & 1) == 0))
  {
    v50 = v124;
    [v124 contentOffset];
    v52 = v39 + OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_preselectionContentOffset;
    *v52 = v53;
    *(v52 + 8) = v54;
    *(v52 + 16) = 0;
    v55 = v107;
    v56 = v108;
    (*(v107 + 16))(v31, v127, v108);
    v57 = *(v55 + 56);
    v49 = 1;
    v57(v31, 0, 1, v56);
    sub_75E320();
    sub_47C004(v31);
    v51 = v123;
  }

  else
  {
    v49 = 0;
    v51 = v123;
    v50 = v124;
  }

  sub_758CD0();
  v101(v51, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v15);
  sub_769430();
  sub_769430();
  if (aBlock == v135 && v130 == v136)
  {
    v58 = v51;
    v59 = v104;
    v104(v58, v15);
    v60 = v126;
LABEL_15:
    v59(v60, v15);

    goto LABEL_17;
  }

  v61 = sub_76A950();
  v62 = v104;
  v104(v51, v15);
  v62(v126, v15);

  if (v61)
  {
    goto LABEL_17;
  }

  v67 = v106;
  sub_758CD0();
  v68 = v105;
  v101(v105, v92, v15);
  sub_769430();
  sub_769430();
  if (aBlock == v135 && v130 == v136)
  {
    v69 = v68;
    v59 = v104;
    v104(v69, v15);
    v60 = v67;
    goto LABEL_15;
  }

  v70 = sub_76A950();
  v71 = v104;
  v104(v68, v15);
  v71(v67, v15);

  if (v70)
  {
LABEL_17:
    v63 = v109;
    if (v49)
    {
      isa = sub_757550().super.isa;
      v65 = [v50 cellForItemAtIndexPath:isa];

      if (v65)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v66 = *(sub_769C00() + 16);

          if (!v66)
          {
            sub_BD88(&qword_942178, &qword_7AEEB0);
            v72 = *(sub_767620() - 8);
            v128 = (*(v72 + 80) + 32) & ~*(v72 + 80);
            *(swift_allocObject() + 16) = xmmword_77B6D0;
            v73 = v94;
            v74 = v93;
            v75 = v96;
            (*(v94 + 104))(v93, enum case for UICellAccessory.DisplayedState.always(_:), v96);
            v76 = sub_767540();
            (*(*(v76 - 8) + 56))(v97, 1, 1, v76);
            v77 = v95;
            sub_767550();
            sub_767610();
            (*(v98 + 8))(v77, v99);
            (*(v73 + 8))(v74, v75);
          }

          sub_769C10();
        }
      }
    }

    sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
    v78 = sub_769970();
    v79 = v110;
    sub_7683D0();
    v80 = v115;
    sub_768450();
    v128 = *(v116 + 8);
    (v128)(v79, v125);
    v81 = v113;
    v82 = v112;
    v83 = v114;
    (*(v113 + 16))(v112, v63, v114);
    v84 = (*(v81 + 80) + 24) & ~*(v81 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v50;
    (*(v81 + 32))(v85 + v84, v82, v83);
    v133 = sub_47C130;
    v134 = v85;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_23F0CC;
    v132 = &unk_892B50;
    v86 = _Block_copy(&aBlock);
    v87 = v50;

    v88 = v117;
    sub_7683A0();
    aBlock = _swiftEmptyArrayStorage;
    sub_47C1E0(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350, &unk_77F850);
    sub_16194(&qword_9406F0, &qword_940350, &unk_77F850, &protocol conformance descriptor for [A]);
    v89 = v119;
    v90 = v122;
    sub_76A5A0();
    sub_769930();
    _Block_release(v86);

    (*(v121 + 8))(v89, v90);
    (*(v118 + 8))(v88, v120);
    (v128)(v80, v125);
  }

  (*(v107 + 8))(v127, v108);
}

uint64_t type metadata accessor for PageFacetOptionsViewController(uint64_t a1)
{
  result = qword_956000;
  if (!qword_956000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_47B6A8(uint64_t a1)
{
  result = sub_758DC0();
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

void sub_47B770(uint64_t a1, uint64_t a2)
{
  v4 = sub_758DA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v33 - v9;
  v12 = __chkstk_darwin(v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_47C1E0(&qword_956018, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
        v26 = sub_769150();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_47C1E0(&qword_956020, &type metadata accessor for PageFacets.Facet.Option, &protocol conformance descriptor for PageFacets.Facet.Option);
          v31 = sub_7691C0();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

id sub_47BB20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_BD88(&unk_94DCB0, &unk_791B00);
  v28 = *(v9 - 8);
  v29 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_diffableDataSource] = 0;
  v12 = &v3[OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_preselectionContentOffset];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_facet;
  v14 = sub_758DC0();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v4[v13], a1, v14);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_facetsPresenter] = a2;

  v16 = sub_75E2E0();
  if (*(v16 + 16) && (v17 = sub_66456C(a1), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v19 = _swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_selectedFacetOptions] = v19;
  v20 = [objc_allocWithZone(UICollectionViewLayout) init];
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v31, "initWithCollectionViewLayout:", v20, ObjectType);

  if (a3)
  {
    v22 = [v21 navigationItem];
    sub_BE70(0, &qword_947490, UIBarButtonItem_ptr);
    sub_BE70(0, &qword_955FA0, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v32.value.super.super.isa = sub_76A1F0();
    v32.is_nil = 0;
    isa = sub_769830(UIBarButtonSystemItemDone, v32, v33).super.super.isa;
    [v22 setRightBarButtonItem:isa];
  }

  v24 = [v21 navigationItem];
  sub_758D50();
  v25 = sub_769210();

  [v24 setTitle:v25];

  sub_75E300();
  sub_BD88(&unk_947470, &unk_7882C0);
  sub_16194(&unk_94DCC0, &unk_947470, &unk_7882C0, &protocol conformance descriptor for AsyncEvent<A>);
  sub_768710();
  sub_768720();

  (*(v15 + 8))(a1, v14);
  sub_BEB8(v30);
  (*(v28 + 8))(v11, v29);
  return v21;
}

uint64_t sub_47BF68()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_47BFA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_47C004(uint64_t a1)
{
  v2 = sub_BD88(&qword_956028, &unk_7AEEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_47C06C(uint64_t a1, uint64_t a2)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

void sub_47C130(uint64_t a1, uint64_t a2)
{
  sub_757640();
  v3 = *(v2 + 16);
  isa = sub_757550().super.isa;
  [v3 deselectItemAtIndexPath:isa animated:1];
}

double sub_47C1C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_47C1E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_47C230()
{
  v1 = sub_BD88(&qword_956038, &qword_79E8E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_47C2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_BD88(&qword_956038, &qword_79E8E0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_47A324(a1, a2, a3, v8);
}

id sub_47C360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v34 = sub_768C60();
  v12 = *(v34 - 8);
  __chkstk_darwin(v34);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  __chkstk_darwin(v18);
  v32 = a1;
  v33 = &v31 - v19;
  v20 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_label];
  v21 = sub_47D878(a1, a2, a3, a4, v6);
  [v20 setAttributedText:v21];

  v22 = v6[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_isOn];
  v6[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_isOn] = a5;
  if (v22 != (a5 & 1))
  {
    sub_47CBE4();
  }

  v39 = &type metadata for String;
  v36 = a3;
  v37 = a4;
  memset(v35, 0, sizeof(v35));

  sub_768C50();
  sub_BDD0(v35);
  sub_BDD0(&v36);
  if (a2)
  {
    v23 = &type metadata for String;
    v24 = a2;
    v25 = v32;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v23 = 0;
    v38 = 0;
  }

  v36 = v25;
  v37 = v24;
  v39 = v23;

  sub_768C40();
  v26 = *(v12 + 8);
  v27 = v14;
  v28 = v34;
  v26(v27, v34);
  sub_BDD0(&v36);
  v39 = &type metadata for Bool;
  LOBYTE(v36) = a5 & 1;
  v29 = v33;
  sub_768C40();
  v26(v17, v28);
  sub_BDD0(&v36);
  sub_769E70();
  v26(v29, v28);
  return [v6 setNeedsLayout];
}

char *sub_47C640(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_7676D0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_760AD0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_label;
  if (qword_93D160 != -1)
  {
    swift_once();
  }

  v20 = sub_7666D0();
  v21 = sub_BE38(v20, qword_99DCA8);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v18, v21, v20);
  (*(v22 + 56))(v18, 0, 1, v20);
  (*(v13 + 104))(v15, enum case for DirectionalTextAlignment.none(_:), v12);
  v23 = objc_allocWithZone(sub_75BB20());
  *&v5[v19] = sub_75BB10();
  v24 = OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_closeImage;
  *&v5[v24] = [objc_allocWithZone(UIImageView) init];
  v5[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_isOn] = 0;
  v25 = [objc_allocWithZone(UIGlassEffect) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_glassEffect] = v25;
  v26 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v25];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_pill] = v26;
  v43.receiver = v5;
  v43.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  v28 = OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_pill;
  v29 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_pill];
  v30 = v27;
  v31 = v29;
  sub_7676C0();
  sub_769F00();

  v32 = [v30 contentView];
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v33 = [v30 contentView];
  [v33 addSubview:*&v27[v28]];

  v34 = [*&v27[v28] contentView];
  [v34 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_label]];

  v35 = [*&v27[v28] contentView];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_closeImage;
  [v35 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_closeImage]];

  sub_47CBE4();
  sub_BD88(&qword_9477F0, qword_780200);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_77B6D0;
  *(v37 + 32) = sub_7677C0();
  *(v37 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v38 = v30;
  sub_769F40();
  swift_unknownObjectRelease();

  v39 = *&v30[v36];
  v40 = [v38 traitCollection];

  v41 = sub_47DB74();
  [v39 setImage:v41];

  sub_BE70(0, &qword_941EC8, UITraitCollection_ptr);
  sub_769A30();
  *(swift_allocObject() + 16) = ObjectType;
  sub_769F40();

  swift_unknownObjectRelease();

  return v38;
}

void sub_47CBE4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_isOn;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_isOn] == 1)
  {
    v13 = [objc_opt_self() systemBlueColor];
  }

  else
  {
    v13 = 0;
  }

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_glassEffect];
  v4 = [v3 tintColor];
  if (v4)
  {
    v5 = v4;
    if (v13)
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v6 = v13;
      v7 = sub_76A1C0();

      if (v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_11:
    [v3 setTintColor:v13];
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_pill] setEffect:v3];
    goto LABEL_12;
  }

  if (v13)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v1[v2] == 1)
  {
    v8 = [objc_opt_self() whiteColor];
  }

  else
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v8 = sub_769FD0();
  }

  v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_label];
  v10 = v8;
  [v9 setTextColor:v10];
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_closeImage];
  v12 = 0.0;
  if (v1[v2])
  {
    v12 = 1.0;
  }

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_closeImage] setAlpha:v12];
  [v11 setTintColor:v10];

  [v1 setNeedsDisplay];
  [v1 setNeedsLayout];
}

id sub_47CE14(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_closeImage];
  v3 = [a1 traitCollection];
  v4 = sub_47DB74();

  [v2 setImage:v4];

  return [a1 setNeedsLayout];
}

id sub_47CEEC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_762D10();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57.receiver = v1;
  v57.super_class = ObjectType;
  objc_msgSendSuper2(&v57, "layoutSubviews", v9);
  v53 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_label];
  v12 = [v53 attributedText];
  LODWORD(v52) = v1[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_isOn];
  v13 = [v1 contentView];
  [v13 bounds];

  sub_BE70(0, &qword_93F900, UIFont_ptr);
  v14 = qword_93D160;
  v51 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_7666D0();
  sub_BE38(v15, qword_99DCA8);
  sub_769E00();
  v16 = sub_7653B0();
  v55 = v16;
  v56 = sub_9BA34();
  v17 = sub_B1B4(v54);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  sub_765C30();
  sub_BEB8(v54);
  sub_762CD0();
  sub_762CE0();
  (*(v8 + 8))(v11, v7);
  sub_B170(v54, v55);
  sub_7665B0();
  sub_769DC0();
  (*(v4 + 104))(v6, enum case for FloatingPointRoundingRule.up(_:), v3);
  sub_769D80();
  v19 = v18;
  v21 = v20;
  (*(v4 + 8))(v6, v3);
  v22 = [v1 traitCollection];
  v23 = sub_47DB74();

  if (LODWORD(v52))
  {
    [v23 size];
    v25 = v24;

    v26 = v25 + 5.0;
  }

  else
  {

    v26 = 0.0;
  }

  v27 = v19 + v26;
  sub_BEB8(v54);

  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_pill];
  v29 = [v1 contentView];
  [v29 frame];

  v30 = v27;
  v31 = fmax(v21, 40.0);
  sub_769D20();
  [v28 setFrame:?];
  v52 = v30;
  v32 = sub_47DD64(0.0);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v53;
  [v53 sizeThatFits:{v35, v37}];
  v51 = v40;
  v42 = v41;
  v58.origin.x = v32;
  v58.origin.y = v34;
  v58.size.width = v36;
  v58.size.height = v38;
  MinX = CGRectGetMinX(v58);
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = v30;
  v59.size.height = v31;
  v44 = floor((CGRectGetHeight(v59) - v42) * 0.5);
  v45 = [v1 contentView];
  [v45 frame];

  v46 = *&v51;
  sub_769D20();
  [v39 setFrame:?];
  v47 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_closeImage];
  v48 = v52;
  [v47 sizeThatFits:{v52, v31}];
  v60.origin.x = MinX;
  v60.origin.y = v44;
  v60.size.width = v46;
  v60.size.height = v42;
  CGRectGetMaxX(v60);
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v48;
  v61.size.height = v31;
  CGRectGetHeight(v61);
  v49 = [v1 contentView];
  [v49 frame];

  sub_769D20();
  return [v47 setFrame:?];
}

void sub_47D5C0(void *a1)
{
  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation);
    if (v4)
    {
      v8 = a1;
      v5 = v4;
      v6 = [v1 layer];
      v7 = sub_769210();
      [v6 addAnimation:v5 forKey:v7];
    }
  }
}

uint64_t sub_47D7AC()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_99DCA8);
  v1 = sub_BE38(v0, qword_99DCA8);
  if (qword_93D990 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99F4A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_47D878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D160 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  sub_BE38(v5, qword_99DCA8);
  v6 = sub_769E00();
  v7 = [objc_opt_self() configurationWithFont:v6 scale:2];

  v8 = sub_769210();
  v9 = [objc_opt_self() _systemImageNamed:v8 withConfiguration:v7];

  if (v9)
  {
    v10 = objc_allocWithZone(NSMutableAttributedString);
    v11 = sub_769210();
    v12 = [v10 initWithString:v11];

    v13 = [objc_opt_self() textAttachmentWithImage:v9];
    v14 = [objc_opt_self() attributedStringWithAttachment:v13];

    [v12 appendAttributedString:v14];
    v15 = objc_allocWithZone(NSAttributedString);
    v16 = sub_769210();
    v17 = [v15 initWithString:v16];

    [v12 appendAttributedString:v17];
    v18 = objc_allocWithZone(NSAttributedString);
    v19 = sub_769210();
    v20 = [v18 initWithString:v19];

    [v12 appendAttributedString:v20];
    v21 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v12];
  }

  else
  {
LABEL_6:
    v22 = objc_allocWithZone(NSAttributedString);
    v12 = sub_769210();
    v21 = [v22 initWithString:v12];
  }

  return v21;
}

id sub_47DB74()
{
  v0 = sub_759950();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.xmark(_:), v0, v2);
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  if (qword_93D998 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  sub_BE38(v5, qword_99F4C0);
  v6 = [objc_opt_self() currentTraitCollection];
  v7 = sub_769E10();

  v8 = [objc_opt_self() configurationWithFont:v7 scale:-1];
  v9 = sub_759930();

  (*(v1 + 8))(v4, v0);
  v10 = [v9 imageWithRenderingMode:2];

  return v10;
}

void sub_47DD88()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_label;
  if (qword_93D160 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, qword_99DCA8);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_75BB20());
  *(v1 + v9) = sub_75BB10();
  v14 = OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_closeImage;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) init];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21GuidedSearchTokenCell_isOn) = 0;
  sub_76A840();
  __break(1u);
}

double sub_47E01C(uint64_t a1, uint64_t a2)
{
  v3 = sub_768380();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7683C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  aBlock[4] = sub_47E488;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_892C18;
  v12 = _Block_copy(aBlock);

  sub_7683A0();
  v14[1] = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);

  return result;
}

void sub_47E28C(uint64_t a1)
{
  v2 = sub_764930();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v16[0] = v3 + 8;
  v16[1] = v3 + 16;

  v10 = 0;
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * (v12 | (v10 << 6)), v2);
    v13 = sub_3AC688();
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    if (v13)
    {
      (*(v15 + 8))(v13, v15);
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(a1 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_47E450()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_47E490(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_47E4A8(void *a1, uint64_t a2, uint64_t a3)
{
  v30[1] = a2;
  v31 = a1;
  v4 = sub_76A270();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_756F10();
  __chkstk_darwin(v8 - 8);
  v9 = sub_BD88(&qword_93F428, &unk_79F050);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - v10;
  v12 = sub_76A350();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_76A360();
  (*(v13 + 104))(v15, enum case for UIButton.Configuration.Size.large(_:), v12);
  sub_76A260();
  if (a3)
  {
    v30[0] = v4;
    sub_BD88(&qword_940F40, &qword_785F00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    *(inited + 32) = NSFontAttributeName;
    v17 = qword_93D178;

    v18 = NSFontAttributeName;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = qword_956098;
    *(inited + 64) = sub_BE70(0, &qword_93F900, UIFont_ptr);
    *(inited + 40) = v19;
    v20 = v19;
    sub_10D028(inited);
    swift_setDeallocating();
    sub_10A2C(inited + 32, qword_940F50, &qword_785170);
    sub_756F30();
    sub_756EC0();
    v21 = sub_756EB0();
    (*(*(v21 - 8) + 56))(v11, 0, 1, v21);
    sub_76A2F0();
    v4 = v30[0];
  }

  sub_76A2C0();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  sub_76A280();
  v22 = sub_76A230();
  sub_767740();
  v22(v32, 0);
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v23 = objc_opt_self();
  v24 = [v23 systemGray6Color];
  v25.super.isa = [v23 secondarySystemBackgroundColor];
  v26.super.isa = v24;
  sub_76A0C0(v26, v25);
  sub_76A310();
  sub_76A290();
  if (qword_93D180 != -1)
  {
    swift_once();
  }

  v27 = qword_9560A0;
  sub_76A220();
  v28 = v31;
  return sub_76A390();
}

uint64_t sub_47E970(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v5 = sub_759950();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *a2, v5, v7);
  v10 = sub_759930();
  result = (*(v6 + 8))(v9, v5);
  *a3 = v10;
  return result;
}

void sub_47EA6C()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleHeadline;
  v2 = [v0 preferredFontDescriptorWithTextStyle:v1];
  v3 = [objc_opt_self() fontWithDescriptor:v2 size:0.0];

  qword_956098 = v3;
}

void sub_47EB10()
{
  if (qword_93D178 != -1)
  {
    swift_once();
  }

  v0 = qword_956098;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2 scale:1];

  qword_9560A0 = v3;
}

char *sub_47EBAC(double a1, double a2, double a3, double a4)
{
  v9 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewAction;
  v13 = sub_BD88(&unk_950960, &qword_793110);
  v14 = *(*(v13 - 8) + 56);
  v14(&v4[v12], 1, 1, v13);
  v14(&v4[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportAction], 1, 1, v13);
  v15 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewButton] = v15;
  v16 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportButton] = v16;
  v17 = type metadata accessor for ProductReviewActionsView(0);
  v42.receiver = v4;
  v42.super_class = v17;
  v18 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewButton;
  v24 = qword_93D168;
  v25 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewButton];
  if (v24 != -1)
  {
    swift_once();
  }

  sub_47E4A8(qword_99DCC0, 0, 0);
  v26 = sub_76A3F0();
  v27 = *(*(v26 - 8) + 56);
  v27(v11, 0, 1, v26);
  sub_76A420();

  v28 = [*&v22[v23] titleLabel];
  if (v28)
  {
    if (qword_93D178 != -1)
    {
      v40 = v28;
      swift_once();
      v28 = v40;
    }

    v29 = v28;
    [v28 setFont:qword_956098];
  }

  [*&v22[v23] addTarget:v22 action:"writeReviewWithSender:" forControlEvents:64];
  v30 = *&v22[v23];
  v31 = [v22 tintColor];
  [v30 setTitleColor:v31 forState:0];

  [v22 addSubview:*&v22[v23]];
  v32 = OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportButton;
  v33 = qword_93D170;
  v34 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportButton];
  if (v33 != -1)
  {
    swift_once();
  }

  sub_47E4A8(qword_99DCC8, 0, 0);
  v27(v11, 0, 1, v26);
  sub_76A420();

  v35 = [*&v22[v32] titleLabel];
  if (v35)
  {
    if (qword_93D178 != -1)
    {
      v41 = v35;
      swift_once();
      v35 = v41;
    }

    v36 = v35;
    [v35 setFont:qword_956098];
  }

  [*&v22[v32] addTarget:v22 action:"supportWithSender:" forControlEvents:64];
  v37 = *&v22[v32];
  v38 = [v22 tintColor];

  [v37 setTitleColor:v38 forState:0];
  [v22 addSubview:*&v22[v32]];

  return v22;
}

uint64_t sub_47F1CC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_BD88(&qword_94EC40, &unk_793120);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_BD88(&unk_950960, &qword_793110);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = *a2;
  swift_beginAccess();
  sub_358A74(v2 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &qword_94EC40;
    v16 = &unk_793120;
    v17 = v9;
    return sub_10A2C(v17, v15, v16);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_75B460();
  v18 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();

  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v15 = &unk_93F980;
    v16 = &qword_77EDA0;
    v17 = v6;
    return sub_10A2C(v17, v15, v16);
  }

  sub_75B470();
  v21 = sub_75B460();
  sub_32A6C0(v22, 1, v21, v6);

  (*(v11 + 8))(v13, v10);

  return (*(v19 + 8))(v6, v18);
}

uint64_t sub_47F508(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_76A510();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_10A2C(v9, &unk_93FBD0, &qword_77DFA0);
}

uint64_t sub_47F594@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = sub_7672E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v42 = sub_766BD0();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = &v35 - v18;
  sub_766BA0();
  v38 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewButton);
  v41 = sub_BE70(0, &qword_960F00, UIButton_ptr);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v19;
  v40 = type metadata accessor for ProductReviewActionsView(0);
  v20 = v19;
  sub_75D650();
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v21 * 0.5 + -6.0;
  v39 = enum case for Resize.Rule.replaced(_:);
  v22 = *(v3 + 104);
  v22(v14);
  v23 = enum case for Resize.Rule.unchanged(_:);
  v36 = v11;
  (v22)(v11, enum case for Resize.Rule.unchanged(_:), v2);
  (v22)(v8, v23, v2);
  (v22)(v5, v23, v2);
  v37 = sub_7672F0();
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_B1B4(v49);
  v24 = v8;
  v25 = v5;
  sub_767300();
  sub_766BB0();
  v26 = *(v45 + 8);
  v45 += 8;
  v27 = v16;
  v28 = v42;
  v26(v27, v42);
  sub_BEB8(v49);
  v29 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportButton);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v29;
  v30 = v29;
  sub_75D650();
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v31 * 0.5 + -6.0;
  (v22)(v14, v39, v2);
  (v22)(v36, v23, v2);
  (v22)(v24, v23, v2);
  (v22)(v25, v23, v2);
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_B1B4(v49);
  sub_767300();
  v32 = v43;
  v43[3] = v28;
  v32[4] = &protocol witness table for HorizontalStack;
  sub_B1B4(v32);
  v33 = v44;
  sub_766BB0();
  v26(v33, v28);
  return sub_BEB8(v49);
}

uint64_t sub_47FA50@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = sub_7672E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v42 = sub_766950();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = &v35 - v18;
  sub_766930();
  v38 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewButton);
  v41 = sub_BE70(0, &qword_960F00, UIButton_ptr);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v19;
  v40 = type metadata accessor for ProductReviewActionsView(0);
  v20 = v19;
  sub_75D650();
  Width = CGRectGetWidth(v52);
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = Width;
  v39 = enum case for Resize.Rule.replaced(_:);
  v22 = *(v3 + 104);
  v22(v14);
  v23 = enum case for Resize.Rule.unchanged(_:);
  v36 = v11;
  (v22)(v11, enum case for Resize.Rule.unchanged(_:), v2);
  (v22)(v8, v23, v2);
  (v22)(v5, v23, v2);
  v37 = sub_7672F0();
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_B1B4(v49);
  v24 = v8;
  v25 = v5;
  sub_767300();
  sub_766940();
  v26 = *(v45 + 8);
  v45 += 8;
  v27 = v16;
  v28 = v42;
  v26(v27, v42);
  sub_BEB8(v49);
  v29 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportButton);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v29;
  v30 = v29;
  sub_75D650();
  v31 = CGRectGetWidth(v53);
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v31;
  (v22)(v14, v39, v2);
  (v22)(v36, v23, v2);
  (v22)(v24, v23, v2);
  (v22)(v25, v23, v2);
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_B1B4(v49);
  sub_767300();
  v32 = v43;
  v43[3] = v28;
  v32[4] = &protocol witness table for VerticalStack;
  sub_B1B4(v32);
  v33 = v44;
  sub_766940();
  v26(v33, v28);
  return sub_BEB8(v49);
}

uint64_t sub_47FEEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewButton);
  type metadata accessor for ProductReviewActionsView(0);
  sub_75D650();
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportButton);
  sub_75D650();
  [v8 sizeThatFits:{v9, v10}];
  v12 = v11;
  sub_75D650();
  v14 = v13 * 0.5 + -6.0;
  if (v14 < v7 || v14 < v12)
  {

    return sub_47FA50(a1);
  }

  else
  {

    return sub_47F594(a1);
  }
}

double sub_4800E4(double a1, double a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_writeReviewButton);
  v7 = [v6 titleForState:0];
  if (v7)
  {
    v8 = v7;
LABEL_3:
    v9 = sub_769240();
    v11 = v10;

    goto LABEL_7;
  }

  v12 = [v6 titleLabel];
  if (v12)
  {
    v13 = v12;
    v8 = [v12 text];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  v11 = 0;
LABEL_7:
  v14 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsView_supportButton);
  v15 = [v14 titleForState:0];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v20 = [v14 titleLabel];
    if (!v20 || (v21 = v20, v16 = [v20 text], v21, !v16))
    {
      v17 = 0;
      v19 = 0;
      goto LABEL_13;
    }
  }

  v17 = sub_769240();
  v19 = v18;

LABEL_13:
  v22 = sub_480534(v9, v11, v17, v19, a1, a2);

  return v22;
}

id sub_4802E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewActionsView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductReviewActionsView(uint64_t a1)
{
  result = qword_9560D8;
  if (!qword_9560D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4803F4(uint64_t a1)
{
  sub_2F1CA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_480534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = sub_76A3F0();
  __chkstk_darwin(v12 - 8);
  sub_BE70(0, &qword_960F00, UIButton_ptr);
  if (qword_93D168 != -1)
  {
    swift_once();
  }

  sub_47E4A8(qword_99DCC0, a1, a2);
  v13 = sub_76A400();
  [v13 sizeThatFits:{a5, a6}];
  if (qword_93D170 != -1)
  {
    swift_once();
  }

  sub_47E4A8(qword_99DCC8, a3, a4);
  v14 = sub_76A400();
  [v14 sizeThatFits:{a5, a6}];

  return a5;
}

unint64_t CompoundActionImplementation.PerformError.localizedDescription.getter()
{
  sub_480820(v0, &v4);
  if (!v5)
  {
    return 0xD00000000000003ALL;
  }

  sub_10914(&v4, v3);
  sub_76A730(49);
  v6._object = 0x80000000007E29F0;
  v6._countAndFlagsBits = 0xD000000000000016;
  sub_769370(v6);
  sub_BD88(&unk_9482C8, "2J\a");
  sub_76A7F0();
  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = 0x80000000007E2A10;
  sub_769370(v7);
  v1 = 0;
  sub_BEB8(v3);
  return v1;
}

uint64_t CompoundActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_BD88(&unk_93F630, &unk_77E230);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  sub_7688F0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10A2C(v5, &unk_93F980, &qword_77EDA0);
    sub_BD88(&qword_94DDC0, qword_77DE00);
    sub_480BC0();
    swift_allocError();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0;
    return sub_768F20();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_768960();
    if (v12)
    {
      v13 = v12;
      *(&v19 + 1) = sub_12EA98();
      v20 = &protocol witness table for OS_dispatch_queue;
      *&v18 = v13;
      sub_10914(&v18, v21);
    }

    else
    {
      v14 = sub_768AD0();
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
      v22 = v14;
      v23 = &protocol witness table for SyncTaskScheduler;
      sub_B1B4(v21);
      sub_768AC0();
      if (*(&v19 + 1))
      {
        sub_10A2C(&v18, &qword_9560F0, &qword_79E9E0);
      }
    }

    sub_BD88(&qword_94DDC0, qword_77DE00);
    v15 = sub_768F90();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_75AB00();
    *(v16 + 24) = 0;
    sub_B170(v21, v22);
    sub_134D8(v21, &v18);
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = a2;
    sub_10914(&v18, (v17 + 5));

    sub_768810();

    (*(v7 + 8))(v9, v6);

    sub_BEB8(v21);
    return v15;
  }
}

unint64_t sub_480BC0()
{
  result = qword_9560E8;
  if (!qword_9560E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9560E8);
  }

  return result;
}

uint64_t sub_480C14()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_480C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_7687C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    v13 = sub_76A860();
  }

  else
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  }

  v14 = *(a1 + 24);
  if (v14 == v13)
  {
    swift_endAccess();
    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    sub_768F60();
    (*(v9 + 8))(v11, v8);
    return;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v15 = sub_76A770();
    v16 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v15 = *(v12 + 8 * v14 + 32);

  v16 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  *(a1 + 24) = v16;
  swift_endAccess();
  sub_72D574(v15, 1, a3);
  sub_134D8(a4, v19);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  sub_10914(v19, (v17 + 5));
  v17[10] = v15;
  swift_retain_n();

  sub_768F10();
}

uint64_t sub_480EEC()
{

  sub_BEB8((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

void sub_480F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_7687C0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v30 - v18;
  (*(v13 + 16))(&v30 - v18, a1, v12, v17);
  v20 = (*(v13 + 88))(v19, v12);
  v21 = v20;
  if (v20 != enum case for ActionOutcome.performed(_:))
  {
    if (v20 == enum case for ActionOutcome.unsupported(_:))
    {
      sub_480BC0();
      swift_allocError();
      v26 = v25;
      v25[3] = sub_764C80();
      v26[4] = sub_481458(&qword_95AB70, &type metadata accessor for Action);
      *v26 = a6;

      sub_768F50();

      return;
    }

    goto LABEL_20;
  }

  swift_beginAccess();
  v22 = *(a2 + 16);
  if (v22 >> 62)
  {
    v23 = sub_76A860();
  }

  else
  {
    v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
  }

  v24 = *(a2 + 24);
  if (v24 == v23)
  {
    swift_endAccess();
    (*(v13 + 104))(v15, v21, v12);
    sub_768F60();
    (*(v13 + 8))(v15, v12);
    return;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v27 = sub_76A770();
    v28 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v24 >= *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    sub_76A940();
    __break(1u);
    return;
  }

  v27 = *(v22 + 8 * v24 + 32);

  v28 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  *(a2 + 24) = v28;
  swift_endAccess();
  sub_72D574(v27, 1, a4);
  sub_134D8(a5, v31);
  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = a4;
  sub_10914(v31, (v29 + 5));
  v29[10] = v27;
  swift_retain_n();

  sub_768F10();
}