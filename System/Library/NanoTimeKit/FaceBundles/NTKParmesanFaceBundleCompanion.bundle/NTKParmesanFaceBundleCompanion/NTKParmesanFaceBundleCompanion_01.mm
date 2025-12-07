uint64_t sub_23BF3F9C4()
{
  v1 = v0;
  v2 = sub_23BF4A264(&qword_27E1E0D00, &unk_23C002830);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v32 = sub_23BFFA240();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23BFFA200();
  v9 = *(v8 - 8);
  v30 = v8;
  v31 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  v15 = [objc_opt_self() sharedPhotoLibrary];
  sub_23BFFA1F0();
  sub_23BFFA190();
  sub_23BFFA1B0();
  if (*&v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers] && *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_nonVipPeopleIdentifiers])
  {
    v33 = *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers];

    sub_23BF4A030(v16);
  }

  sub_23BFFA210();
  v17 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers;

  sub_23BFFA220();
  v18 = v32;
  (*(v5 + 16))(v4, v7, v32);
  (*(v5 + 56))(v4, 0, 1, v18);
  sub_23BFFA170();

  sub_23BFFA1D0();
  sub_23BF4BDF0(0, &qword_27E1E05C0, 0x277CD9D78);
  v19 = v30;
  (*(v31 + 16))(v11, v14, v30);
  v20 = sub_23BFFA780();
  sub_23BF4B1CC(&qword_27E1E05C8, v21, type metadata accessor for ParmesanShuffleSelectionViewController, &unk_23C002808);
  swift_unknownObjectRetain();
  sub_23BFFA790();
  if (qword_27E1DFDC8 != -1)
  {
    swift_once();
  }

  v22 = sub_23BFF92B0();
  sub_23BF4A22C(v22, qword_27E1EB528);
  v23 = v1;
  v24 = sub_23BFF9290();
  v25 = sub_23BFFA670();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    v27 = *&v1[v17];
    if (v27)
    {
      v27 = *(v27 + 16);
    }

    *(v26 + 4) = v27;
    v28 = v26;

    _os_log_impl(&dword_23BF0C000, v24, v25, "Presenting people picker, %ld people selected", v28, 0xCu);
    MEMORY[0x23EEC4DF0](v28, -1, -1);
  }

  else
  {

    v24 = v23;
  }

  [v23 presentViewController:v20 animated:1 completion:0];
  (*(v5 + 8))(v7, v32);
  return (*(v31 + 8))(v14, v19);
}

void *sub_23BF3FE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  result = sub_23BFF9ED0();
  *a2 = 0;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = a1;
  *(a2 + 32) = &unk_284EBA8D0;
  *(a2 + 40) = &unk_284EBA908;
  *(a2 + 48) = 0x3FC999999999999ALL;
  return result;
}

char *sub_23BF3FEE0(uint64_t a1, void *a2)
{
  v5 = sub_23BF4A264(&unk_27E1E0590, &qword_23C005890);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v56 - v6;
  v8 = sub_23BFF9310();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23BFF92E0();
  v64 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23BFF9490();
  MEMORY[0x28223BE20](v15);
  v19 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 1)
  {
    v61 = v17;
    v63 = v16;
    result = sub_23BF4B0B4(a1);
    if (v21)
    {
      v60 = result;
      v62 = v21;
      result = sub_23BF4B140(a1);
      if (v22)
      {
        v56[1] = result;
        v56[2] = v22;
        v57 = v11;
        v58 = v9;
        v59 = v8;
        v23 = *(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView);
        if (v23)
        {
          v24 = v12;
          type metadata accessor for ParmesanListCell();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v26 = v23;
          v56[0] = v26;
          v27 = NSStringFromClass(ObjCClassFromMetadata);
          sub_23BFFA300();

          v28 = sub_23BFFA2C0();

          v29 = sub_23BFF8DF0();
          v30 = [v26 dequeueReusableCellWithReuseIdentifier:v28 forIndexPath:v29];

          v31 = swift_dynamicCastClassUnconditional();
          v32 = v30;
          MEMORY[0x23EEC3480]();
          v33 = [objc_opt_self() whiteColor];
          v34 = sub_23BFF9420();
          sub_23BFF9410();
          v34(v65, 0);
          sub_23BFF9430();
          v35 = &v31[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_title];
          v36 = v62;
          *v35 = v60;
          *(v35 + 1) = v36;

          v37 = sub_23BFFA2C0();

          v38 = [objc_opt_self() systemImageNamed_];

          v39 = *&v31[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_image];
          *&v31[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_image] = v38;

          v40 = &v31[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_album];
          *v40 = 0;
          *(v40 + 1) = 0;

          v60 = v32;
          [v31 setAutomaticallyUpdatesBackgroundConfiguration_];
          v41 = v63;
          v65[3] = v63;
          v65[4] = MEMORY[0x277D74C30];
          v42 = sub_23BF4AD24(v65);
          v43 = v61;
          (*(v61 + 16))(v42, v19, v41);
          MEMORY[0x23EEC3420](v65);
          sub_23BF4A264(&qword_27E1E05A0, &unk_23C001DF0);
          sub_23BFF9350();
          *(swift_allocObject() + 16) = xmmword_23C001BB0;
          v44 = v64;
          (*(v64 + 104))(v14, *MEMORY[0x277D74A98], v24);
          v45 = sub_23BFF92F0();
          (*(*(v45 - 8) + 56))(v7, 1, 1, v45);
          v46 = v57;
          sub_23BFF9300();
          sub_23BFF92D0();
          (*(v58 + 8))(v46, v59);
          (*(v44 + 8))(v14, v24);
          sub_23BFFA7B0();
          v47 = v60;

          [v31 setNeedsUpdateConfiguration];

          (*(v43 + 8))(v19, v63);
          return v31;
        }

        goto LABEL_14;
      }
    }

    v48 = *(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView);
    if (v48)
    {
      sub_23BF4BDF0(0, &qword_27E1E05B0, 0x277D75318);
      v49 = swift_getObjCClassFromMetadata();
      v50 = v48;
      v51 = NSStringFromClass(v49);
      sub_23BFFA300();

      v52 = sub_23BFFA2C0();

      v53 = sub_23BFF8DF0();
      v54 = [v50 dequeueReusableCellWithReuseIdentifier:v52 forIndexPath:v53];

      objc_opt_self();
      v55 = swift_dynamicCastObjCClassUnconditional();

      return v55;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  return sub_23BF40624(a2);
}

char *sub_23BF40624(void *a1)
{
  v69 = a1;
  v2 = sub_23BF4A264(&unk_27E1E0590, &qword_23C005890);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v56 - v3;
  v5 = sub_23BFF9310();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_23BFF92E0();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BFF9490();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = [v13 localizedTitleForSingleSmartAlbumType_];
  v64 = sub_23BFFA300();
  v71 = v15;

  v16 = [v13 systemImageNameForSingleSmartAlbumType_];
  v63 = sub_23BFFA300();

  v17 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView;
  result = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView];
  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v60 = v4;
  v61 = v6;
  result = [result indexPathsForSelectedItems];
  v59 = v10;
  if (result && (v19 = result, sub_23BFF8E50(), v20 = sub_23BFFA460(), v19, LOBYTE(v19) = sub_23BFC7D74(v69, v20), result = , (v19 & 1) != 0))
  {
    if (*&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers])
    {

      v21 = sub_23BFFA450();
    }

    else
    {
      v21 = 0;
    }

    v23 = [type metadata accessor for ParmesanShuffleSelection() peopleDetailTitleFor_];

    v24 = sub_23BFFA300();
    v57 = v25;
    v58 = v24;

    sub_23BF4BDF0(0, &qword_27E1E05A8, 0x277D750C8);
    *(swift_allocObject() + 16) = v1;
    v26 = v1;
    result = sub_23BFFA8A0();
    v22 = result;
  }

  else
  {
    v22 = 0;
    v57 = 0;
    v58 = 0;
  }

  v70 = v9;
  v62 = v5;
  v27 = *&v1[v17];
  if (!v27)
  {
    goto LABEL_14;
  }

  type metadata accessor for ParmesanListCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = v27;
  v30 = NSStringFromClass(ObjCClassFromMetadata);
  sub_23BFFA300();

  v31 = sub_23BFFA2C0();

  v32 = sub_23BFF8DF0();
  v69 = v29;
  v33 = [v29 dequeueReusableCellWithReuseIdentifier:v31 forIndexPath:v32];

  v34 = swift_dynamicCastClassUnconditional();
  v35 = v33;
  MEMORY[0x23EEC3480]();
  v36 = [objc_opt_self() whiteColor];
  v37 = sub_23BFF9420();
  sub_23BFF9410();
  v37(v72, 0);
  sub_23BFF9430();
  v38 = &v34[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_title];
  v39 = v71;
  *v38 = v64;
  *(v38 + 1) = v39;

  v40 = sub_23BFFA2C0();

  v41 = [objc_opt_self() systemImageNamed_];

  v42 = *&v34[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_image];
  *&v34[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_image] = v41;

  v43 = &v34[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_album];
  v44 = v57;
  *v43 = v58;
  v43[1] = v44;

  if (v22)
  {
    [*&v34[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_albumButton] addAction:v22 forControlEvents:4095];
  }

  v64 = v35;
  [v34 setAutomaticallyUpdatesBackgroundConfiguration_];
  v45 = v70;
  v72[3] = v70;
  v72[4] = MEMORY[0x277D74C30];
  v46 = sub_23BF4AD24(v72);
  v47 = v59;
  v48 = *(v59 + 16);
  v56 = v12;
  v48(v46, v12, v45);
  MEMORY[0x23EEC3420](v72);
  sub_23BF4A264(&qword_27E1E05A0, &unk_23C001DF0);
  sub_23BFF9350();
  *(swift_allocObject() + 16) = xmmword_23C001BB0;
  v49 = v65;
  v50 = v66;
  v51 = v68;
  (*(v66 + 104))(v65, *MEMORY[0x277D74A98], v68);
  v52 = sub_23BFF92F0();
  (*(*(v52 - 8) + 56))(v60, 1, 1, v52);
  v53 = v22;
  v54 = v67;
  sub_23BFF9300();
  sub_23BFF92D0();
  (*(v61 + 8))(v54, v62);
  (*(v50 + 8))(v49, v51);
  sub_23BFFA7B0();
  v55 = v64;

  [v34 setNeedsUpdateConfiguration];

  (*(v47 + 8))(v56, v70);
  return v34;
}

void sub_23BF40E3C(void *a1)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_23BF4A264(&unk_27E1E0590, &qword_23C005890);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v51 - v4;
  v65 = sub_23BFF9310();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v60 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_23BFF92E0();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_23BFF9490();
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BF4BDF0(0, &qword_27E1E0930, off_278BA5488);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = sub_23BFFA2C0();
  v11 = sub_23BFFA2C0();
  v12 = [ObjCClassFromMetadata localizedStringForKey:v10 comment:v11];

  v55 = sub_23BFFA300();
  v66 = v13;

  if (*&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection + 8])
  {
    v14 = *&v2[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor];

    v15 = sub_23BFFA2C0();

    v16 = [v14 titleForCollectionWithIdentifier_];

    if (!v16)
    {
      v17 = sub_23BFFA2C0();
      v18 = sub_23BFFA2C0();
      v16 = [ObjCClassFromMetadata localizedStringForKey:v17 comment:v18];
    }

    v19 = sub_23BFFA300();
    v53 = v20;
    v54 = v19;

    sub_23BF4BDF0(0, &qword_27E1E05A8, 0x277D750C8);
    *(swift_allocObject() + 16) = v2;
    v21 = v2;
    v22 = sub_23BFFA8A0();
  }

  else
  {
    v22 = 0;
    v53 = 0;
    v54 = 0;
  }

  v23 = *&v2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView];
  if (v23)
  {
    type metadata accessor for ParmesanListCell();
    v24 = swift_getObjCClassFromMetadata();
    v25 = v23;
    v26 = NSStringFromClass(v24);
    sub_23BFFA300();

    v27 = sub_23BFFA2C0();

    v28 = sub_23BFF8DF0();
    v56 = v25;
    v29 = [v25 dequeueReusableCellWithReuseIdentifier:v27 forIndexPath:v28];

    v30 = swift_dynamicCastClassUnconditional();
    v31 = v29;
    MEMORY[0x23EEC3480]();
    v32 = [objc_opt_self() whiteColor];
    v33 = sub_23BFF9420();
    sub_23BFF9410();
    v33(v67, 0);
    sub_23BFF9430();
    v34 = &v30[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_title];
    v35 = v66;
    *v34 = v55;
    *(v34 + 1) = v35;

    v36 = sub_23BFFA2C0();
    v37 = [objc_opt_self() systemImageNamed_];

    v38 = *&v30[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_image];
    *&v30[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_image] = v37;

    v39 = &v30[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_album];
    v40 = v53;
    *v39 = v54;
    *(v39 + 1) = v40;

    if (v22)
    {
      [*&v30[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_albumButton] addAction:v22 forControlEvents:4095];
    }

    v55 = v31;
    [v30 setAutomaticallyUpdatesBackgroundConfiguration_];
    v41 = v64;
    v67[3] = v64;
    v67[4] = MEMORY[0x277D74C30];
    v42 = sub_23BF4AD24(v67);
    v43 = v61;
    v44 = *(v61 + 16);
    v52 = v8;
    v44(v42, v8, v41);
    MEMORY[0x23EEC3420](v67);
    sub_23BF4A264(&qword_27E1E05A0, &unk_23C001DF0);
    sub_23BFF9350();
    v54 = v22;
    *(swift_allocObject() + 16) = xmmword_23C001BB0;
    v46 = v57;
    v45 = v58;
    v47 = v59;
    (*(v57 + 104))(v58, *MEMORY[0x277D74A98], v59);
    v48 = sub_23BFF92F0();
    (*(*(v48 - 8) + 56))(v62, 1, 1, v48);
    v49 = v60;
    sub_23BFF9300();
    sub_23BFF92D0();
    (*(v63 + 8))(v49, v65);
    (*(v46 + 8))(v45, v47);
    sub_23BFFA7B0();
    v50 = v55;

    [v30 setNeedsUpdateConfiguration];

    (*(v43 + 8))(v52, v41);
  }

  else
  {
    __break(1u);
  }
}

void sub_23BF41694(void *a1)
{
  v52 = a1;
  v2 = sub_23BF4A264(&unk_27E1E0590, &qword_23C005890);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v40 - v3;
  v4 = sub_23BFF9310();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_23BFF92E0();
  v6 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_23BFF9490();
  v8 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BF4BDF0(0, &qword_27E1E0930, off_278BA5488);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = sub_23BFFA2C0();
  v13 = sub_23BFFA2C0();
  v14 = [ObjCClassFromMetadata localizedStringForKey:v12 comment:v13];

  v44 = sub_23BFFA300();
  v16 = v15;

  v17 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView);
  if (v17)
  {
    type metadata accessor for ParmesanListCell();
    v18 = swift_getObjCClassFromMetadata();
    v19 = v17;
    v43 = v19;
    v20 = NSStringFromClass(v18);
    sub_23BFFA300();

    v21 = sub_23BFFA2C0();

    v22 = sub_23BFF8DF0();
    v23 = [v19 dequeueReusableCellWithReuseIdentifier:v21 forIndexPath:v22];

    v24 = swift_dynamicCastClassUnconditional();
    v25 = v23;
    MEMORY[0x23EEC3480]();
    v26 = [objc_opt_self() whiteColor];
    v27 = sub_23BFF9420();
    sub_23BFF9410();
    v27(v53, 0);
    v41 = v10;
    sub_23BFF9430();
    v28 = &v24[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_title];
    *v28 = v44;
    v28[1] = v16;
    v42 = v16;

    v29 = sub_23BFFA2C0();
    v30 = [objc_opt_self() systemImageNamed_];

    v31 = *&v24[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_image];
    *&v24[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_image] = v30;

    v32 = &v24[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion16ParmesanListCell_album];
    *v32 = 0;
    *(v32 + 1) = 0;

    v52 = v25;
    [v24 setAutomaticallyUpdatesBackgroundConfiguration_];
    v33 = v48;
    v53[3] = v48;
    v53[4] = MEMORY[0x277D74C30];
    v34 = sub_23BF4AD24(v53);
    (*(v8 + 16))(v34, v10, v33);
    MEMORY[0x23EEC3420](v53);
    sub_23BF4A264(&qword_27E1E05A0, &unk_23C001DF0);
    sub_23BFF9350();
    *(swift_allocObject() + 16) = xmmword_23C001BB0;
    v35 = v45;
    v36 = v46;
    (*(v6 + 104))(v45, *MEMORY[0x277D74A98], v46);
    v37 = sub_23BFF92F0();
    (*(*(v37 - 8) + 56))(v49, 1, 1, v37);
    v38 = v47;
    sub_23BFF9300();
    sub_23BFF92D0();
    (*(v50 + 8))(v38, v51);
    (*(v6 + 8))(v35, v36);
    sub_23BFFA7B0();
    v39 = v52;

    [v24 setNeedsUpdateConfiguration];

    (*(v8 + 8))(v41, v33);
  }

  else
  {
    __break(1u);
  }
}

void sub_23BF41D34()
{
  v1 = v0;
  v2 = sub_23BF4A264(&unk_27E1E04E0, &unk_23C001D20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  v6 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_availableSuggestionTypes);
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  while (v7)
  {
    v9 = *v8++;
    --v7;
    if (v9 == 1)
    {
      v10 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource;
      v11 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource);
      if (v11)
      {
        v12 = v11;
        sub_23BFF95E0();

        sub_23BFF94F0();
        v13 = *(v1 + v10);
        if (v13)
        {
          v14 = v13;
          sub_23BFF95C0();

          (*(v3 + 8))(v5, v2);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }
}

void sub_23BF41E90()
{
  v1 = v0;

  v2 = sub_23BF397B8();

  v3 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadedInitialSelection;
  v4 = v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadedInitialSelection];
  if ((v4 & 1) == 0)
  {
    v5 = [*&v0[OBJC_IVAR___NTKParmesanShuffleSelectionBaseViewController_editor] shuffleSelection];
    if (v5)
    {
      v6 = v5;
      v7 = &v5[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier];
      if (*&v5[OBJC_IVAR___NTKParmesanShuffleSelection_collectionIdentifier + 8])
      {
        v8 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
        swift_beginAccess();
        *&v1[v8] = MEMORY[0x277D84F90];

        *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers] = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers];

        v10 = *v7;
        v9 = *(v7 + 1);

        v11 = &v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection];
        *v11 = v10;
        v11[1] = v9;
LABEL_12:

        v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily] = 0;
        goto LABEL_13;
      }

      v15 = *&v5[OBJC_IVAR___NTKParmesanShuffleSelection_shuffleTypes];
      if (!v15 || !*(v15 + 16))
      {
        if (v5[OBJC_IVAR___NTKParmesanShuffleSelection_isDaily] == 1 && (sub_23BF3C688() & 1) != 0)
        {

          v50 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
          swift_beginAccess();
          *&v1[v50] = MEMORY[0x277D84F90];

          *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers] = 0;

          v51 = &v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection];
          *v51 = 0;
          v51[1] = 0;

          v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily] = 1;
        }

        else
        {
          v63 = v2;
          if (qword_27E1DFDC8 != -1)
          {
            swift_once();
          }

          v52 = sub_23BFF92B0();
          sub_23BF4A22C(v52, qword_27E1EB528);
          v53 = v6;
          v54 = sub_23BFF9290();
          v55 = sub_23BFFA650();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v58 = swift_slowAlloc();
            v65[0] = v58;
            *v56 = 136315394;
            *(v56 + 4) = sub_23BF62294(0x614464616F6C6572, 0xEC00000029286174, v65);
            *(v56 + 12) = 2112;
            *(v56 + 14) = v53;
            *v57 = v6;
            v59 = v53;
            _os_log_impl(&dword_23BF0C000, v54, v55, "%s: bad shuffle selection: %@", v56, 0x16u);
            sub_23BF4B2D4(v57, &qword_27E1E0B50, &unk_23C001DE0);
            MEMORY[0x23EEC4DF0](v57, -1, -1);
            v60 = sub_23BF4A9A4(v58);
            MEMORY[0x23EEC4DF0](v58, -1, -1, v60);
            MEMORY[0x23EEC4DF0](v56, -1, -1);
          }

          else
          {
          }

          v2 = v63;
        }

        goto LABEL_13;
      }

      v16 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
      swift_beginAccess();
      *&v1[v16] = v15;

      v17 = *&v6[OBJC_IVAR___NTKParmesanShuffleSelection_personIdentifiers];

      *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers] = v17;
    }

    else
    {
      v12 = sub_23BF3C688();
      v13 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
      if (v12)
      {
        swift_beginAccess();
        *&v0[v13] = MEMORY[0x277D84F90];

        *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers] = 0;

        v14 = &v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection];
        *v14 = 0;
        v14[1] = 0;

        v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily] = 1;
LABEL_13:
        v1[v3] = 1;
        goto LABEL_14;
      }

      swift_beginAccess();
      *&v0[v13] = v2;

      *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers] = *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers];
    }

    v18 = &v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection];
    *v18 = 0;
    v18[1] = 0;
    goto LABEL_12;
  }

LABEL_14:
  v19 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_availableSuggestionTypes;
  if (sub_23BFD9304(*&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_availableSuggestionTypes], v2))
  {
  }

  else
  {
    if (qword_27E1DFDC0 != -1)
    {
      swift_once();
    }

    v20 = sub_23BFF92B0();
    sub_23BF4A22C(v20, qword_27E1EB510);

    v21 = v1;
    v22 = sub_23BFF9290();
    v23 = sub_23BFFA670();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v64[0] = v62;
      *v24 = 136315394;
      type metadata accessor for PFLCClassification(0);
      v26 = v25;

      v61 = v23;
      v28 = v2;
      v29 = v4;
      v30 = MEMORY[0x23EEC3130](v27, v26);
      v32 = v31;

      v33 = v30;
      v4 = v29;
      v2 = v28;
      v34 = sub_23BF62294(v33, v32, v64);

      *(v24 + 4) = v34;
      *(v24 + 12) = 2080;
      v35 = MEMORY[0x23EEC3130](v28, v26);
      v37 = sub_23BF62294(v35, v36, v64);

      *(v24 + 14) = v37;
      _os_log_impl(&dword_23BF0C000, v22, v61, "Available suggestion types changed, will reload, old = %s, new = %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v62, -1, -1);
      MEMORY[0x23EEC4DF0](v24, -1, -1);
    }

    *&v1[v19] = v2;

    sub_23BF444DC(0);
  }

  v38 = sub_23BF61A64(0, 1, 1, MEMORY[0x277D84F90]);
  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  if (v40 >= v39 >> 1)
  {
    v38 = sub_23BF61A64((v39 > 1), v40 + 1, 1, v38);
  }

  *(v38 + 2) = v40 + 1;
  v38[v40 + 32] = 0;
  if (sub_23BF3C688())
  {
    v42 = *(v38 + 2);
    v41 = *(v38 + 3);
    if (v42 >= v41 >> 1)
    {
      v38 = sub_23BF61A64((v41 > 1), v42 + 1, 1, v38);
    }

    *(v38 + 2) = v42 + 1;
    v38[v42 + 32] = 3;
  }

  v43 = *(*&v1[v19] + 16);
  v44 = *(v38 + 2);
  if (v43)
  {
    v45 = *(v38 + 3);
    v46 = v44 + 1;
    if (v44 >= v45 >> 1)
    {
      v38 = sub_23BF61A64((v45 > 1), v44 + 1, 1, v38);
    }

    *(v38 + 2) = v46;
    v38[v44 + 32] = 1;
  }

  else
  {
    v46 = *(v38 + 2);
  }

  v47 = *(v38 + 3);
  if (v46 >= v47 >> 1)
  {
    v38 = sub_23BF61A64((v47 > 1), v46 + 1, 1, v38);
  }

  *(v38 + 2) = v46 + 1;
  v38[v46 + 32] = 2;
  *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_sections] = v38;

  sub_23BF4274C(0);
  if ((v4 & 1) == 0)
  {
    if (*&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection + 8])
    {
      sub_23BF43934();
    }

    else
    {
      v48 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
      swift_beginAccess();
      if (*(*&v1[v48] + 16))
      {

        sub_23BF4312C(v49);
      }

      else if ((v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___hasDaily] & 1) != 0 && v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily] == 1)
      {
        sub_23BF43EF8();
      }
    }
  }
}

uint64_t sub_23BF4274C(int a1)
{
  v2 = v1;
  v4 = sub_23BF4A264(&unk_27E1E04E0, &unk_23C001D20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  sub_23BF4AC7C();
  sub_23BF4ACD0();
  sub_23BFF9500();
  v8 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_sections;

  sub_23BFF94E0();

  v29 = 0;
  sub_23BFF94A0();
  if (sub_23BF3C688())
  {
    v25 = 3;
    sub_23BFF94A0();
  }

  if (sub_23BFC7DBC(1u, *(v1 + v8)))
  {
    v9 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_availableSuggestionTypes);
    v10 = *(v9 + 16);
    if (v10)
    {
      v22 = v1;
      v23 = a1;
      v24 = v5;
      v27 = MEMORY[0x277D84F90];

      sub_23BFCE158(0, v10, 0);
      v11 = v27;
      v12 = *(v27 + 16);
      v13 = 16 * v12;
      v14 = 32;
      do
      {
        v15 = *(v9 + v14);
        v27 = v11;
        v16 = *(v11 + 24);
        v17 = v12 + 1;
        if (v12 >= v16 >> 1)
        {
          sub_23BFCE158((v16 > 1), v12 + 1, 1);
          v11 = v27;
        }

        *(v11 + 16) = v17;
        v18 = v11 + v13;
        *(v18 + 32) = v15;
        *(v18 + 40) = 0;
        v13 += 16;
        v14 += 8;
        v12 = v17;
        --v10;
      }

      while (v10);

      v5 = v24;
      v2 = v22;
    }

    v26 = 1;
    sub_23BFF94A0();
  }

  v28 = 2;
  result = sub_23BFF94A0();
  v20 = *(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource);
  if (v20)
  {
    v21 = v20;
    sub_23BFF95C0();

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_23BF42A1C()
{
  v1 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView;
  result = *&v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  [result layoutIfNeeded];
  v3 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray;
  [*&v0[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray] layoutIfNeeded];
  result = *&v0[v1];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  [result contentSize];
  v5 = v4;
  [*&v0[v3] systemLayoutSizeFittingSize_];
  v7 = v6;
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  [result safeAreaInsets];
  v10 = v9;

  result = [v0 view];
  if (result)
  {
    v11 = result;
    v12 = v5 + v10;
    [result bounds];
    v14 = v13;

    return (v14 - v12 - v7 >= 0.0);
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_23BF42B40()
{
  v1 = v0;
  v2 = sub_23BF42A1C();
  v3 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray;
  v4 = [*(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray) isHidden];
  if (v2)
  {
    if (!v4)
    {
      return;
    }

    if (qword_27E1DFDC8 != -1)
    {
      swift_once();
    }

    v5 = sub_23BFF92B0();
    sub_23BF4A22C(v5, qword_27E1EB528);
    v6 = sub_23BFF9290();
    v7 = sub_23BFFA640();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23BF0C000, v6, v7, "Switching to floating button tray", v8, 2u);
      MEMORY[0x23EEC4DF0](v8, -1, -1);
    }

    LOBYTE(v4) = [*(v1 + v3) setHidden_];
    v9 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView);
    if (v9)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v4)
  {
    return;
  }

  if (qword_27E1DFDC8 != -1)
  {
    swift_once();
  }

  v10 = sub_23BFF92B0();
  sub_23BF4A22C(v10, qword_27E1EB528);
  v11 = sub_23BFF9290();
  v12 = sub_23BFFA640();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23BF0C000, v11, v12, "Switching to inline button tray", v13, 2u);
    MEMORY[0x23EEC4DF0](v13, -1, -1);
  }

  [*(v1 + v3) setHidden_];
  v9 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView);
  if (!v9)
  {
    __break(1u);
    return;
  }

LABEL_16:
  v14 = v9;
  v15 = sub_23BF3E1E8((v2 & 1) == 0);
  [v14 setCollectionViewLayout_];
}

void sub_23BF42DBC()
{
  v1 = v0;
  v2 = sub_23BF4A264(&qword_27E1E0570, &qword_23C001DD8);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = &v24 - v6;
  v7 = sub_23BFF8E50();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView);
  if (!v12)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v13 = [v12 indexPathsForSelectedItems];
  if (v13)
  {
    v14 = v13;
    v15 = sub_23BFFA460();

    v30 = *(v15 + 16);
    if (!v30)
    {
LABEL_16:

      return;
    }

    v16 = 0;
    v28 = v8 + 16;
    v29 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource;
    v24 = (v8 + 32);
    v17 = MEMORY[0x277D84F90];
    v25 = v1;
    while (v16 < *(v15 + 16))
    {
      (*(v8 + 16))(v11, v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v7);
      v18 = *(v1 + v29);
      if (!v18)
      {
        goto LABEL_18;
      }

      v19 = v18;
      sub_23BFF9570();

      if (v34)
      {
        (*(v8 + 8))(v11, v7);
      }

      else
      {
        v20 = v33;
        v21 = *(v27 + 48);
        *v4 = v32;
        v4[8] = v20 & 1;
        (*v24)(&v4[v21], v11, v7);
        sub_23BF4AC0C(v4, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_23BF6184C(0, v17[2] + 1, 1, v17);
        }

        v23 = v17[2];
        v22 = v17[3];
        if (v23 >= v22 >> 1)
        {
          v17 = sub_23BF6184C((v22 > 1), v23 + 1, 1, v17);
        }

        v17[2] = v23 + 1;
        sub_23BF4AC0C(v31, v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23);
        v1 = v25;
      }

      if (v30 == ++v16)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }
}

void sub_23BF4312C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BF4A264(&qword_27E1E0920, &qword_23C001DD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v79 - v5;
  v86 = sub_23BF4A264(&unk_27E1E04E0, &unk_23C001D20);
  v81 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = &v79 - v7;
  v8 = sub_23BFF8E50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v94 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v79 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  v16 = sub_23BF4A264(&qword_27E1E0570, &qword_23C001DD8);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v79 - v18;
  sub_23BF42DBC();
  v21 = *(v20 + 16);
  p_cb = &OBJC_PROTOCOL___NTKParmesanTimeLayoutSelectionDelegate.cb;
  v95 = v9;
  v84 = v21;
  v97 = v2;
  v89 = v6;
  if (v21)
  {
    v23 = 0;
    v96 = *(v16 + 48);
    v87 = a1;
    v88 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView;
    v24 = v20 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v92 = (v9 + 32);
    v93 = v24;
    v85 = (a1 + 32);
    v90 = (v9 + 8);
    v91 = v17;
    ++v81;
    v82 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource;
    v25 = v20;
    v26 = v84;
    while (v23 < *(v25 + 16))
    {
      sub_23BF4B33C(v93 + *(v17 + 72) * v23, v19, &qword_27E1E0570, &qword_23C001DD8);
      v27 = *v19;
      v28 = v19[8];
      (*v92)(v15, &v19[v96], v8);
      if (v28)
      {
        v29 = *(v97 + v88);
        if (!v29)
        {
          goto LABEL_48;
        }

        v30 = v29;
        v31 = sub_23BFF8DF0();
        [v30 deselectItemAtIndexPath:v31 animated:0];

        v32 = v86;
        if (v27 == 1)
        {
          v33 = v15;
          v34 = v97;
          v35 = v82;
          v36 = *(v97 + v82);
          if (!v36)
          {
            goto LABEL_50;
          }

          v37 = v25;
          v38 = v36;
          v39 = v83;
          sub_23BFF95E0();

          sub_23BFF94F0();
          v40 = *(v34 + v35);
          if (!v40)
          {
            goto LABEL_51;
          }

          v41 = v40;
          sub_23BFF95C0();

          (*v81)(v39, v32);
          v25 = v37;
          v26 = v84;
          v15 = v33;
        }
      }

      else
      {
        v42 = *(v87 + 16);
        v43 = v85;
        while (v42)
        {
          v44 = *v43++;
          --v42;
          if (v44 == v27)
          {
            goto LABEL_3;
          }
        }

        v45 = *(v97 + v88);
        if (!v45)
        {
          goto LABEL_49;
        }

        v46 = v45;
        v47 = sub_23BFF8DF0();
        [v46 deselectItemAtIndexPath:v47 animated:0];
      }

LABEL_3:
      ++v23;
      (*v90)(v15, v8);
      v17 = v91;
      if (v23 == v26)
      {

        v2 = v97;
        a1 = v87;
        p_cb = (&OBJC_PROTOCOL___NTKParmesanTimeLayoutSelectionDelegate + 64);
        v6 = v89;
        v48 = *(v87 + 16);
        if (!v48)
        {
          goto LABEL_24;
        }

        goto LABEL_18;
      }
    }

    goto LABEL_44;
  }

  v48 = *(a1 + 16);
  if (v48)
  {
LABEL_18:
    v98 = MEMORY[0x277D84F90];
    v49 = p_cb;
    sub_23BFCE158(0, v48, 0);
    v50 = v98;
    v51 = (a1 + 32);
    v52 = *(v98 + 16);
    v53 = 16 * v52;
    do
    {
      v55 = *v51++;
      v54 = v55;
      v98 = v50;
      v56 = *(v50 + 24);
      if (v52++ >= v56 >> 1)
      {
        sub_23BFCE158((v56 > 1), v52, 1);
        p_cb = v49;
        v50 = v98;
      }

      *(v50 + 16) = v52;
      v58 = v50 + v53;
      *(v58 + 32) = v54;
      *(v58 + 40) = 0;
      v53 += 16;
      --v48;
    }

    while (v48);
    v2 = v97;
    v6 = v89;
LABEL_25:
    v96 = v8;
    v60 = 0;
    v93 = *(p_cb + 113);
    v61 = (v95 + 48);
    v62 = (v95 + 32);
    v63 = (v50 + 40);
    v59 = MEMORY[0x277D84F90];
    while (v60 < *(v50 + 16))
    {
      v64 = *(v2 + v93);
      if (!v64)
      {
        goto LABEL_46;
      }

      v65 = *v63;
      v98 = *(v63 - 1);
      v99 = v65;
      v66 = v64;
      sub_23BFF95F0();

      v67 = v96;
      if ((*v61)(v6, 1, v96) == 1)
      {
        sub_23BF4B2D4(v6, &qword_27E1E0920, &qword_23C001DD0);
      }

      else
      {
        v68 = *v62;
        (*v62)(v94, v6, v67);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_23BF61A3C(0, *(v59 + 2) + 1, 1, v59);
        }

        v70 = *(v59 + 2);
        v69 = *(v59 + 3);
        if (v70 >= v69 >> 1)
        {
          v59 = sub_23BF61A3C((v69 > 1), v70 + 1, 1, v59);
        }

        *(v59 + 2) = v70 + 1;
        v68(&v59[((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v70], v94, v96);
        v2 = v97;
        v6 = v89;
      }

      ++v60;
      v63 += 16;
      if (v52 == v60)
      {
        v8 = v96;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_24:
  v50 = MEMORY[0x277D84F90];
  v52 = *(MEMORY[0x277D84F90] + 16);
  v59 = MEMORY[0x277D84F90];
  if (v52)
  {
    goto LABEL_25;
  }

LABEL_37:

  v71 = *(v59 + 2);
  v72 = v80;
  if (!v71)
  {
LABEL_42:

    return;
  }

  v73 = 0;
  v74 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView;
  v75 = (v95 + 8);
  while (v73 < *(v59 + 2))
  {
    (*(v95 + 16))(v72, &v59[((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v73], v8);
    v76 = *(v97 + v74);
    if (!v76)
    {
      goto LABEL_47;
    }

    ++v73;
    v77 = v76;
    v78 = sub_23BFF8DF0();
    [v77 selectItemAtIndexPath:v78 animated:0 scrollPosition:1];

    (*v75)(v72, v8);
    if (v71 == v73)
    {
      goto LABEL_42;
    }
  }

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
  __break(1u);
}

void sub_23BF43934()
{
  v1 = sub_23BF4A264(&qword_27E1E0920, &qword_23C001DD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v50 - v2;
  v4 = sub_23BF4A264(&unk_27E1E04E0, &unk_23C001D20);
  v62 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - v5;
  v68 = sub_23BFF8E50();
  v7 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v13 = sub_23BF4A264(&qword_27E1E0570, &qword_23C001DD8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v67 = v0;
  sub_23BF42DBC();
  p_cb = &OBJC_PROTOCOL___NTKParmesanTimeLayoutSelectionDelegate.cb;
  v66 = *(v17 + 16);
  if (v66)
  {
    v57 = v6;
    v58 = v4;
    v51 = v9;
    v52 = v3;
    v54 = 0;
    v19 = 0;
    v20 = *(v13 + 48);
    v59 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_availableSuggestionTypes;
    v64 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v65 = v20;
    v55 = v12;
    v56 = v62 + 1;
    v60 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource;
    v61 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView;
    v21 = &qword_27E1E0570;
    v53 = v7;
    v62 = (v7 + 8);
    v63 = (v7 + 32);
    v23 = v67;
    v22 = v68;
    do
    {
      while (1)
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v25 = v17;
        sub_23BF4B33C(v64 + *(v14 + 72) * v19++, v16, v21, &qword_23C001DD8);
        v26 = *v16;
        v27 = v16[8];
        (*v63)(v12, &v16[v65], v22);
        if (v27 != 1 || v26 != 1)
        {
          break;
        }

        (*v62)(v12, v22);
        v54 = 1;
        v17 = v25;
        if (v19 == v66)
        {

          return;
        }
      }

      v29 = *(v23 + v61);
      if (!v29)
      {
        goto LABEL_32;
      }

      v30 = v29;
      v31 = sub_23BFF8DF0();
      [v30 deselectItemAtIndexPath:v31 animated:0];

      if (v26 == 1)
      {
        v32 = v27;
      }

      else
      {
        v32 = 1;
      }

      v23 = v67;
      v22 = v68;
      if ((v32 & 1) == 0)
      {
        v33 = *(v67 + v59);
        v34 = *(v33 + 16);
        v35 = (v33 + 32);
        while (v34)
        {
          v36 = *v35++;
          --v34;
          if (v36 == 1)
          {
            v37 = *(v67 + v60);
            if (!v37)
            {
              goto LABEL_34;
            }

            v38 = v21;
            v39 = v60;
            v40 = v37;
            v41 = v57;
            sub_23BFF95E0();

            v42 = v58;
            sub_23BFF94F0();
            v43 = *(v23 + v39);
            if (v43)
            {
              v24 = v43;
              sub_23BFF95C0();

              (*v56)(v41, v42);
              v22 = v68;
              v21 = v38;
              v12 = v55;
              break;
            }

            goto LABEL_33;
          }
        }
      }

      (*v62)(v12, v22);
      v17 = v25;
    }

    while (v19 != v66);

    v3 = v52;
    v7 = v53;
    v9 = v51;
    p_cb = (&OBJC_PROTOCOL___NTKParmesanTimeLayoutSelectionDelegate + 64);
    if ((v54 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {

    v23 = v67;
LABEL_26:
    v44 = *(v23 + *(p_cb + 113));
    if (v44)
    {
      v69 = 1;
      v70 = 1;
      v45 = v44;
      sub_23BFF95F0();

      v46 = v68;
      if ((*(v7 + 48))(v3, 1, v68) == 1)
      {
        sub_23BF4B2D4(v3, &qword_27E1E0920, &qword_23C001DD0);
        return;
      }

      (*(v7 + 32))(v9, v3, v46);
      v47 = *(v23 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView);
      if (v47)
      {
        v48 = v47;
        v49 = sub_23BFF8DF0();
        [v48 selectItemAtIndexPath:v49 animated:0 scrollPosition:1];

        (*(v7 + 8))(v9, v46);
        return;
      }
    }

    else
    {
LABEL_35:
      __break(1u);
    }

    __break(1u);
  }
}

void sub_23BF43EF8()
{
  v1 = sub_23BF4A264(&qword_27E1E0920, &qword_23C001DD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v52 - v2;
  v4 = sub_23BF4A264(&unk_27E1E04E0, &unk_23C001D20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - v6;
  v70 = sub_23BFF8E50();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = sub_23BF4A264(&qword_27E1E0570, &qword_23C001DD8);
  v69 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  if (sub_23BF3C688())
  {
    v68 = v0;
    sub_23BF42DBC();
    v67 = *(v17 + 16);
    if (!v67)
    {

      v45 = v68;
LABEL_27:
      v46 = *(v45 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource);
      if (v46)
      {
        v71 = 2;
        v72 = 1;
        v47 = v46;
        sub_23BFF95F0();

        v48 = v70;
        if ((*(v8 + 48))(v3, 1, v70) == 1)
        {
          sub_23BF4B2D4(v3, &qword_27E1E0920, &qword_23C001DD0);
          return;
        }

        (*(v8 + 32))(v10, v3, v48);
        v49 = *(v45 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView);
        if (v49)
        {
          v50 = v49;
          v51 = sub_23BFF8DF0();
          [v50 selectItemAtIndexPath:v51 animated:0 scrollPosition:1];

          (*(v8 + 8))(v10, v48);
          return;
        }
      }

      else
      {
LABEL_37:
        __break(1u);
      }

      __break(1u);
      return;
    }

    v59 = v7;
    v60 = v4;
    v53 = v10;
    v54 = v3;
    v56 = 0;
    v18 = 0;
    v19 = *(v14 + 48);
    v63 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView;
    v61 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_availableSuggestionTypes;
    v20 = v68;
    v65 = v17 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v66 = v19;
    v21 = (v8 + 32);
    v57 = v13;
    v58 = (v5 + 8);
    v62 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource;
    v22 = &qword_27E1E0570;
    v55 = v8;
    v64 = (v8 + 8);
    v23 = v70;
    do
    {
      while (1)
      {
        if (v18 >= *(v17 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v25 = v17;
        sub_23BF4B33C(v65 + *(v69 + 72) * v18++, v16, v22, &qword_23C001DD8);
        v26 = *v16;
        v27 = v16[8];
        (*v21)(v13, &v16[v66], v23);
        if (v27 != 1 || v26 <= 1)
        {
          break;
        }

        (*v64)(v13, v23);
        v56 = 1;
        v17 = v25;
        if (v18 == v67)
        {

          return;
        }
      }

      v29 = *(v20 + v63);
      if (!v29)
      {
        goto LABEL_34;
      }

      v30 = v29;
      v31 = sub_23BFF8DF0();
      [v30 deselectItemAtIndexPath:v31 animated:0];

      if (v26 == 1)
      {
        v32 = v27;
      }

      else
      {
        v32 = 1;
      }

      v20 = v68;
      v23 = v70;
      if ((v32 & 1) == 0)
      {
        v33 = *(v68 + v61);
        v34 = *(v33 + 16);
        v35 = (v33 + 32);
        while (v34)
        {
          v36 = *v35++;
          --v34;
          if (v36 == 1)
          {
            v37 = *(v68 + v62);
            if (!v37)
            {
              goto LABEL_36;
            }

            v38 = v22;
            v39 = v21;
            v40 = v62;
            v41 = v37;
            v42 = v59;
            sub_23BFF95E0();

            v43 = v60;
            sub_23BFF94F0();
            v44 = *(v20 + v40);
            if (v44)
            {
              v24 = v44;
              sub_23BFF95C0();

              (*v58)(v42, v43);
              v23 = v70;
              v21 = v39;
              v22 = v38;
              v13 = v57;
              break;
            }

            goto LABEL_35;
          }
        }
      }

      (*v64)(v13, v23);
      v17 = v25;
    }

    while (v18 != v67);

    v45 = v20;
    v3 = v54;
    v8 = v55;
    v10 = v53;
    if ((v56 & 1) == 0)
    {
      goto LABEL_27;
    }
  }
}

uint64_t sub_23BF444DC(char a1)
{
  v3 = sub_23BFFA0E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BFFA100();
  v67 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v66 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_23BFFA0D0();
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v64 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v52 - v11);
  v68 = sub_23BFFA130();
  v62 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = &v52 - v16;
  v17 = sub_23BFFA710();
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = v1;
    if (qword_27E1DFDC0 != -1)
    {
      swift_once();
    }

    v22 = sub_23BFF92B0();
    sub_23BF4A22C(v22, qword_27E1EB510);
    v23 = sub_23BFF9290();
    v24 = sub_23BFFA640();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_23BF0C000, v23, v24, "Immediate reload, canceling debounce timer and executing", v25, 2u);
      MEMORY[0x23EEC4DF0](v25, -1, -1);
    }

    v26 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectionDebouncetimer;
    if (*(v21 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectionDebouncetimer))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_23BFFA740();
      swift_unknownObjectRelease();
    }

    *(v21 + v26) = 0;
    swift_unknownObjectRelease();
    if (*(v21 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection + 8))
    {
      sub_23BF46018();
    }

    v33 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
    result = swift_beginAccess();
    if (*(*(v21 + v33) + 16))
    {
      result = sub_23BF45050();
    }

    if (*(v21 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily) == 1)
    {
      return sub_23BF46BC4();
    }
  }

  else
  {
    ObjectType = v18;
    v54 = v6;
    v65 = v1;
    v53 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectionDebouncetimer;
    v27 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectionDebouncetimer);
    v56 = v4;
    v57 = v3;
    v55 = v7;
    if (v27)
    {
      v28 = qword_27E1DFDC0;
      swift_unknownObjectRetain();
      if (v28 != -1)
      {
        swift_once();
      }

      v29 = sub_23BFF92B0();
      sub_23BF4A22C(v29, qword_27E1EB510);
      v30 = sub_23BFF9290();
      v31 = sub_23BFFA640();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_23BF0C000, v30, v31, "Debouncing request, waiting an additional 1s", v32, 2u);
        MEMORY[0x23EEC4DF0](v32, -1, -1);
      }

      swift_getObjectType();
      sub_23BFFA740();
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_27E1DFDC0 != -1)
      {
        swift_once();
      }

      v35 = sub_23BFF92B0();
      sub_23BF4A22C(v35, qword_27E1EB510);
      v36 = sub_23BFF9290();
      v37 = sub_23BFFA640();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_23BF0C000, v36, v37, "Waiting 1s before beginning fetch", v38, 2u);
        MEMORY[0x23EEC4DF0](v38, -1, -1);
      }
    }

    sub_23BF4BDF0(0, &qword_27E1E0548, 0x277D85CA0);
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23BF4B1CC(&qword_27E1E0550, 255, MEMORY[0x277D85278], MEMORY[0x277D85280]);
    sub_23BF4A264(&qword_27E1E0558, &qword_23C001DC8);
    sub_23BF4BE40(&unk_27E1E0560, &qword_27E1E0558, &qword_23C001DC8, MEMORY[0x277D83970]);
    sub_23BFFA970();
    v39 = sub_23BFFA720();
    (*(ObjectType + 8))(v20, v17);
    *(v65 + v53) = v39;
    v59 = v39;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    ObjectType = swift_getObjectType();
    v40 = v14;
    sub_23BFFA110();
    v41 = v12;
    *v12 = 800;
    v42 = v60;
    v43 = *(v60 + 104);
    v44 = v63;
    v43(v41, *MEMORY[0x277D85178], v63);
    v45 = v61;
    sub_23BFFA120();
    v46 = *(v42 + 8);
    v46(v41, v44);
    v62 = *(v62 + 8);
    (v62)(v40, v68);
    v43(v41, *MEMORY[0x277D85180], v44);
    v47 = v64;
    *v64 = 0;
    v43(v47, *MEMORY[0x277D85168], v44);
    MEMORY[0x23EEC3460](v45, v41, v47, ObjectType);
    v46(v47, v44);
    v46(v41, v44);
    (v62)(v45, v68);
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_23BF4AC04;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23BF58264;
    aBlock[3] = &unk_284EBF278;
    v49 = _Block_copy(aBlock);

    v50 = v66;
    sub_23BFFA0F0();
    v51 = v54;
    sub_23BF44F60();
    sub_23BFFA730();
    _Block_release(v49);
    (*(v56 + 8))(v51, v57);
    (*(v67 + 8))(v50, v55);

    sub_23BFFA750();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_23BF44E78(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectionDebouncetimer] = 0;

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    if (*(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection + 8))
    {
      sub_23BF46018();
    }

    v4 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
    swift_beginAccess();
    if (*(*&v3[v4] + 16))
    {
      sub_23BF45050();
    }

    if (v3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily] == 1)
    {
      sub_23BF46BC4();
    }
  }
}

uint64_t sub_23BF44F60()
{
  sub_23BFFA0E0();
  sub_23BF4B1CC(&qword_27E1E04F0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_23BF4A264(&qword_27E1E0B40, &unk_23C0023B0);
  sub_23BF4BE40(&qword_27E1E0500, &qword_27E1E0B40, &unk_23C0023B0, MEMORY[0x277D83970]);
  return sub_23BFFA970();
}

uint64_t sub_23BF45050()
{
  v1 = sub_23BFFA0E0();
  v59 = *(v1 - 8);
  v60 = v1;
  MEMORY[0x28223BE20](v1);
  v57 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_23BFFA100();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E1DFDC0 != -1)
  {
    swift_once();
  }

  v4 = sub_23BFF92B0();
  sub_23BF4A22C(v4, qword_27E1EB510);
  v5 = v0;
  v6 = sub_23BFF9290();
  v7 = sub_23BFFA670();
  p_cb = (&OBJC_PROTOCOL___NTKParmesanTimeLayoutSelectionDelegate + 64);
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_29;
  }

  LODWORD(v54) = v7;
  v9 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  aBlock[0] = v53;
  *v9 = 134218498;
  *(v9 + 4) = 7;
  *(v9 + 12) = 2080;
  v10 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
  swift_beginAccess();
  v11 = *&v5[v10];
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    goto LABEL_25;
  }

  v52 = v6;
  v62[0] = MEMORY[0x277D84F90];

  sub_23BFCE138(0, v12, 0);
  v14 = 32;
  v13 = v62[0];
  do
  {
    v15 = *(v11 + v14);
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = 0xE600000000000000;
        v17 = 0x65727574614ELL;
        goto LABEL_20;
      }

      if (v15 != 4)
      {
        if (v15 == 5)
        {
          v16 = 0xE500000000000000;
          v17 = 0x726568744FLL;
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v16 = 0xE900000000000065;
      v17 = 0x7061637379746943;
    }

    else
    {
      if (!v15)
      {
        v16 = 0xE400000000000000;
        v17 = 1701736270;
        goto LABEL_20;
      }

      if (v15 != 1)
      {
        if (v15 == 2)
        {
          v16 = 0xE300000000000000;
          v17 = 7628112;
          goto LABEL_20;
        }

LABEL_17:
        v16 = 0xE700000000000000;
        v17 = 0x6E776F6E6B6E55;
        goto LABEL_20;
      }

      v16 = 0xE600000000000000;
      v17 = 0x6E6F73726550;
    }

LABEL_20:
    v62[0] = v13;
    v19 = *(v13 + 16);
    v18 = *(v13 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_23BFCE138((v18 > 1), v19 + 1, 1);
      v13 = v62[0];
    }

    *(v13 + 16) = v19 + 1;
    v20 = v13 + 16 * v19;
    *(v20 + 32) = v17;
    *(v20 + 40) = v16;
    v14 += 8;
    --v12;
  }

  while (v12);

  p_cb = &OBJC_PROTOCOL___NTKParmesanTimeLayoutSelectionDelegate.cb;
  v6 = v52;
LABEL_25:
  v21 = MEMORY[0x23EEC3130](v13, MEMORY[0x277D837D0]);
  v23 = v22;

  v24 = sub_23BF62294(v21, v23, aBlock);

  *(v9 + 14) = v24;
  *(v9 + 22) = 2048;
  v25 = *&v5[*(p_cb + 102)];
  if (v25)
  {
    v26 = *(v25 + 16);
  }

  else
  {
    v26 = 0;
  }

  v27 = v54;

  *(v9 + 24) = v26;
  _os_log_impl(&dword_23BF0C000, v6, v27, "Beginning fetch of face previews, count = %ld, types = %s, personIdentifiers.count = %ld", v9, 0x20u);
  v28 = v53;
  v29 = sub_23BF4A9A4(v53);
  MEMORY[0x23EEC4DF0](v28, -1, -1, v29);
  MEMORY[0x23EEC4DF0](v9, -1, -1);

LABEL_29:
  v30 = MEMORY[0x277D84F90];
  v31 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
  swift_beginAccess();
  v52 = v31;
  v32 = *&v5[v31];
  v33 = *(p_cb + 102);
  v34 = *&v5[v33];
  *&v5[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingAssetSelection] = v32;
  v54 = v32;
  swift_bridgeObjectRetain_n();
  v53 = v34;

  *&v5[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingPersonIdentifiers] = *&v5[v33];

  v35 = &v5[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingCollectionIdentifier];
  *v35 = 0;
  *(v35 + 1) = 0;

  v5[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingDaily] = 0;
  v36 = sub_23BF3C4D0();
  if (*(v36 + 56) == 1)
  {
    *(v36 + 56) = 1;
  }

  else
  {
    v37 = v36;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v51 - 2) = v37;
    *(&v51 - 8) = 1;
    aBlock[0] = v37;
    sub_23BF4B1CC(&qword_27E1E0540, 255, type metadata accessor for ParmesanStackViewModel, &unk_23C004558);
    sub_23BFF91B0();
  }

  sub_23BF4BDF0(0, &qword_27E1E0B30, 0x277D85C78);
  v39 = sub_23BFFA6D0();
  v40 = swift_allocObject();
  *(v40 + 16) = v5;
  aBlock[4] = sub_23BF4BF14;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BF58264;
  aBlock[3] = &unk_284EBF1D8;
  v41 = _Block_copy(aBlock);
  v42 = v5;

  v43 = v55;
  sub_23BFFA0F0();
  aBlock[0] = v30;
  sub_23BF4B1CC(&qword_27E1E04F0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_23BF4A264(&qword_27E1E0B40, &unk_23C0023B0);
  sub_23BF4BE40(&qword_27E1E0500, &qword_27E1E0B40, &unk_23C0023B0, MEMORY[0x277D83970]);
  v44 = v57;
  v45 = v60;
  sub_23BFFA970();
  MEMORY[0x23EEC33A0](0, v43, v44, v41);
  _Block_release(v41);

  (*(v59 + 8))(v44, v45);
  (*(v56 + 8))(v43, v58);
  v46 = *(&v52->isa + v5);
  v47 = swift_allocObject();
  v48 = v53;
  v47[2] = v54;
  v47[3] = v42;
  v47[4] = v48;
  v49 = v42;

  sub_23BF48DF4(7, v46, sub_23BF4AAF0, v47);
}

void sub_23BF458E4(unint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = sub_23BF4A264(&qword_27E1E0510, &qword_23C001D30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v37 - v9);
  if (qword_27E1DFDC0 != -1)
  {
    swift_once();
  }

  v11 = sub_23BFF92B0();
  sub_23BF4A22C(v11, qword_27E1EB510);

  v12 = sub_23BFF9290();
  v13 = sub_23BFFA670();

  if (os_log_type_enabled(v12, v13))
  {
    v37 = a3;
    v38 = v10;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v15;
    *v14 = 134218242;
    v16 = a4;
    if (a1 >> 62)
    {
      v17 = sub_23BFFAAB0();
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v17;

    *(v14 + 12) = 2080;
    v18 = sub_23BFB8370(a2);
    v20 = sub_23BF62294(v18, v19, &v39);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_23BF0C000, v12, v13, "Finished fetching face previews, count = %ld, types = %s", v14, 0x16u);
    v21 = sub_23BF4A9A4(v15);
    MEMORY[0x23EEC4DF0](v15, -1, -1, v21);
    MEMORY[0x23EEC4DF0](v14, -1, -1);

    a4 = v16;
    a3 = v37;
    v10 = v38;
  }

  else
  {
  }

  [*(*(*&a3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_container) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_primaryButton) setEnabled_];
  v22 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingAssetSelection;
  v23 = *&a3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingAssetSelection];
  if (!v23 || (sub_23BFD9304(a2, v23) & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingPersonIdentifiers;
  v25 = *&a3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingPersonIdentifiers];
  if (a4)
  {
    if (!v25 || (sub_23BFD9274(a4, v25) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v25)
  {
    goto LABEL_17;
  }

  if (!*&a3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingCollectionIdentifier + 8] && (a3[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingDaily] & 1) == 0)
  {
    v29 = sub_23BF3C4D0();
    if (*(v29 + 56))
    {
      v30 = v29;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v37 - 2) = v30;
      *(&v37 - 8) = 0;
      v39 = v30;
      sub_23BF4B1CC(&qword_27E1E0540, 255, type metadata accessor for ParmesanStackViewModel, &unk_23C004558);
      sub_23BFF91B0();
    }

    else
    {
      *(v29 + 56) = 0;
    }

    *&a3[v22] = 0;

    *&a3[v24] = 0;

    v32 = sub_23BFFA540();
    (*(*(v32 - 8) + 56))(v10, 1, 1, v32);
    sub_23BFFA520();

    v33 = a3;
    v34 = sub_23BFFA510();
    v35 = swift_allocObject();
    v36 = MEMORY[0x277D85700];
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v33;
    v35[5] = a1;
    sub_23BF3BC04(0, 0, v10, &unk_23C001DC0, v35);

    return;
  }

LABEL_17:
  v38 = sub_23BFF9290();
  v26 = sub_23BFFA630();
  if (os_log_type_enabled(v38, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_23BF0C000, v38, v26, "Returned preview asset request for face preview fan is for older than current request, ignoring…", v27, 2u);
    MEMORY[0x23EEC4DF0](v27, -1, -1);
  }

  v28 = v38;
}

uint64_t sub_23BF45E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_23BFFA520();
  v5[3] = sub_23BFFA510();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_23BF45EBC;

  return sub_23BF47924(a5);
}

uint64_t sub_23BF45EBC()
{
  *(*v1 + 40) = v0;

  v3 = sub_23BFFA4C0();
  if (v0)
  {
    v4 = sub_23BF4BF40;
  }

  else
  {
    v4 = sub_23BF4BF44;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

void sub_23BF46018()
{
  v1 = v0;
  v2 = sub_23BF4A264(&qword_27E1E0510, &qword_23C001D30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_23BFFA0E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23BFFA100();
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection + 8];
  if (v14)
  {
    v40 = v11;
    v41 = v10;
    v43 = v5;
    v45 = v4;
    v15 = *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection];
    v16 = qword_27E1DFDC0;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_23BFF92B0();
    sub_23BF4A22C(v17, qword_27E1EB510);

    v18 = sub_23BFF9290();
    v19 = sub_23BFFA670();

    v20 = os_log_type_enabled(v18, v19);
    v42 = v6;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_23BF62294(v15, v14, aBlock);
      _os_log_impl(&dword_23BF0C000, v18, v19, "Beginning fetch for collection: %s", v21, 0xCu);
      v23 = sub_23BF4A9A4(v22);
      MEMORY[0x23EEC4DF0](v22, -1, -1, v23);
      MEMORY[0x23EEC4DF0](v21, -1, -1);
    }

    v24 = &v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingCollectionIdentifier];
    v44 = v15;
    *v24 = v15;
    v24[1] = v14;

    *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingAssetSelection] = 0;

    *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingPersonIdentifiers] = 0;

    v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingDaily] = 0;
    v25 = sub_23BF3C4D0();
    if (*(v25 + 56) == 1)
    {
      *(v25 + 56) = 1;
    }

    else
    {
      v26 = v25;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v39 - 2) = v26;
      *(&v39 - 8) = 1;
      aBlock[0] = v26;
      sub_23BF4B1CC(&qword_27E1E0540, 255, type metadata accessor for ParmesanStackViewModel, &unk_23C004558);
      sub_23BFF91B0();
    }

    sub_23BF4BDF0(0, &qword_27E1E0B30, 0x277D85C78);
    v28 = sub_23BFFA6D0();
    v29 = swift_allocObject();
    *(v29 + 16) = v1;
    aBlock[4] = sub_23BF4BF14;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23BF58264;
    aBlock[3] = &unk_284EBF110;
    v30 = _Block_copy(aBlock);
    v31 = v1;

    sub_23BFFA0F0();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23BF4B1CC(&qword_27E1E04F0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_23BF4A264(&qword_27E1E0B40, &unk_23C0023B0);
    sub_23BF4BE40(&qword_27E1E0500, &qword_27E1E0B40, &unk_23C0023B0, MEMORY[0x277D83970]);
    v32 = v43;
    sub_23BFFA970();
    MEMORY[0x23EEC33A0](0, v13, v8, v30);
    _Block_release(v30);

    (*(v42 + 8))(v8, v32);
    (*(v40 + 8))(v13, v41);
    v33 = swift_allocObject();
    v34 = v44;
    v33[2] = v44;
    v33[3] = v14;
    v33[4] = v31;
    v35 = sub_23BFFA540();
    v36 = v45;
    (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v34;
    v37[5] = v14;
    v37[6] = 7;
    v37[7] = sub_23BF4A8BC;
    v37[8] = v33;

    v38 = v31;
    sub_23BF3BC04(0, 0, v36, &unk_23C001DA0, v37);
  }
}

void sub_23BF466D0(unint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v8 = sub_23BF4A264(&qword_27E1E0510, &qword_23C001D30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  if (qword_27E1DFDC0 != -1)
  {
    swift_once();
  }

  v11 = sub_23BFF92B0();
  sub_23BF4A22C(v11, qword_27E1EB510);

  v12 = sub_23BFF9290();
  v13 = sub_23BFFA670();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 134218242;
    if (a1 >> 62)
    {
      v16 = sub_23BFFAAB0();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v16;

    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_23BF62294(a2, a3, &v33);
    _os_log_impl(&dword_23BF0C000, v12, v13, "Finished fetching face previews, count = %ld, collection = %s", v14, 0x16u);
    v17 = sub_23BF4A9A4(v15);
    MEMORY[0x23EEC4DF0](v15, -1, -1, v17);
    MEMORY[0x23EEC4DF0](v14, -1, -1);
  }

  else
  {
  }

  [*(*(*&a4[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_container) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_primaryButton) setEnabled_];
  v18 = &a4[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingCollectionIdentifier];
  v19 = *&a4[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingCollectionIdentifier + 8];
  if (v19 && (*v18 == a2 && v19 == a3 || (sub_23BFFACC0() & 1) != 0) && !*&a4[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingAssetSelection] && !*&a4[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingPersonIdentifiers] && (a4[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingDaily] & 1) == 0)
  {
    v23 = sub_23BF3C4D0();
    if (*(v23 + 56))
    {
      v24 = v23;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v31 - 2) = v24;
      *(&v31 - 8) = 0;
      v33 = v24;
      sub_23BF4B1CC(&qword_27E1E0540, 255, type metadata accessor for ParmesanStackViewModel, &unk_23C004558);
      sub_23BFF91B0();
    }

    else
    {
      *(v23 + 56) = 0;
    }

    *v18 = 0;
    *(v18 + 1) = 0;

    v26 = sub_23BFFA540();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    sub_23BFFA520();

    v27 = a4;
    v28 = sub_23BFFA510();
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    v29[2] = v28;
    v29[3] = v30;
    v29[4] = v27;
    v29[5] = a1;
    sub_23BF3BC04(0, 0, v10, &unk_23C001DB0, v29);
  }

  else
  {
    v32 = sub_23BFF9290();
    v20 = sub_23BFFA630();
    if (os_log_type_enabled(v32, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23BF0C000, v32, v20, "Returned preview asset request for face preview fan is for older than current request, ignoring…", v21, 2u);
      MEMORY[0x23EEC4DF0](v21, -1, -1);
    }

    v22 = v32;
  }
}

uint64_t sub_23BF46BC4()
{
  v1 = v0;
  v2 = sub_23BF4A264(&qword_27E1E0510, &qword_23C001D30);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v28 - v3;
  v4 = sub_23BFFA0E0();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23BFFA100();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E1DFDC0 != -1)
  {
    swift_once();
  }

  v10 = sub_23BFF92B0();
  sub_23BF4A22C(v10, qword_27E1EB510);
  v11 = sub_23BFF9290();
  v12 = sub_23BFFA670();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23BF0C000, v11, v12, "Beginning fetch for daily photos", v13, 2u);
    MEMORY[0x23EEC4DF0](v13, -1, -1);
  }

  v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingDaily] = 1;
  v14 = &v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingCollectionIdentifier];
  *v14 = 0;
  v14[1] = 0;

  *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingAssetSelection] = 0;

  *&v1[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingPersonIdentifiers] = 0;

  v15 = sub_23BF3C4D0();
  if (*(v15 + 56) == 1)
  {
    *(v15 + 56) = 1;
  }

  else
  {
    v16 = v15;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v28 - 2) = v16;
    *(&v28 - 8) = 1;
    aBlock[0] = v16;
    sub_23BF4B1CC(&qword_27E1E0540, 255, type metadata accessor for ParmesanStackViewModel, &unk_23C004558);
    sub_23BFF91B0();
  }

  sub_23BF4BDF0(0, &qword_27E1E0B30, 0x277D85C78);
  v18 = sub_23BFFA6D0();
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  aBlock[4] = sub_23BF4A728;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BF58264;
  aBlock[3] = &unk_284EBF048;
  v20 = _Block_copy(aBlock);
  v21 = v1;

  sub_23BFFA0F0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23BF4B1CC(&qword_27E1E04F0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_23BF4A264(&qword_27E1E0B40, &unk_23C0023B0);
  sub_23BF4BE40(&qword_27E1E0500, &qword_27E1E0B40, &unk_23C0023B0, MEMORY[0x277D83970]);
  sub_23BFFA970();
  MEMORY[0x23EEC33A0](0, v9, v6, v20);
  _Block_release(v20);

  (*(v31 + 8))(v6, v4);
  (*(v29 + 8))(v9, v30);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = sub_23BFFA540();
  v24 = v32;
  (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = 7;
  v25[5] = sub_23BF4A72C;
  v25[6] = v22;
  v26 = v21;
  sub_23BF56D9C(0, 0, v24, &unk_23C001D88, v25);
}

void sub_23BF471D0(unint64_t a1, char *a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0510, &qword_23C001D30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  if (qword_27E1DFDC0 != -1)
  {
    swift_once();
  }

  v7 = sub_23BFF92B0();
  sub_23BF4A22C(v7, qword_27E1EB510);

  v8 = sub_23BFF9290();
  v9 = sub_23BFFA670();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    if (a1 >> 62)
    {
      v11 = sub_23BFFAAB0();
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 4) = v11;

    _os_log_impl(&dword_23BF0C000, v8, v9, "Finished fetching face previews for daily photos, count = %ld", v10, 0xCu);
    MEMORY[0x23EEC4DF0](v10, -1, -1);
  }

  else
  {
  }

  [*(*(*&a2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray] + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion18ParmesanButtonTray_container) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion29ParmesanButtonTrayContentView_primaryButton) setEnabled_];
  if (a2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingDaily] != 1 || (v12 = &a2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingCollectionIdentifier], *&a2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingCollectionIdentifier + 8]) || *&a2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingAssetSelection] || *&a2[OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingPersonIdentifiers])
  {
    v25 = sub_23BFF9290();
    v13 = sub_23BFFA630();
    if (os_log_type_enabled(v25, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23BF0C000, v25, v13, "Returned preview asset request for face preview fan is for older than current request, ignoring…", v14, 2u);
      MEMORY[0x23EEC4DF0](v14, -1, -1);
    }

    v15 = v25;
  }

  else
  {
    v16 = sub_23BF3C4D0();
    if (*(v16 + 56))
    {
      v17 = v16;
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v24 - 2) = v17;
      *(&v24 - 8) = 0;
      v26 = v17;
      sub_23BF4B1CC(&qword_27E1E0540, 255, type metadata accessor for ParmesanStackViewModel, &unk_23C004558);
      sub_23BFF91B0();
    }

    else
    {
      *(v16 + 56) = 0;
    }

    *v12 = 0;
    *(v12 + 1) = 0;

    v19 = sub_23BFFA540();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    sub_23BFFA520();

    v20 = a2;
    v21 = sub_23BFFA510();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v20;
    v22[5] = a1;
    sub_23BF3BC04(0, 0, v6, &unk_23C001D98, v22);
  }
}

uint64_t sub_23BF47644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_23BFFA520();
  v5[3] = sub_23BFFA510();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_23BF47700;

  return sub_23BF47924(a5);
}

uint64_t sub_23BF47700()
{
  *(*v1 + 40) = v0;

  v3 = sub_23BFFA4C0();
  if (v0)
  {
    v4 = sub_23BF478C0;
  }

  else
  {
    v4 = sub_23BF4785C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_23BF4785C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF478C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF47924(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = sub_23BFFA520();
  v2[9] = sub_23BFFA510();

  return MEMORY[0x2822009F8](sub_23BF479A0, 0, 0);
}

uint64_t sub_23BF479A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  if (v4 >> 62)
  {
    v5 = sub_23BFFAAB0();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedTypeface;
  *(v3 + 80) = v5;
  *(v3 + 88) = v6;
  *(v3 + 96) = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedNumeralsOption;
  if (!v5)
  {
    *(v3 + 144) = MEMORY[0x277D84F90];
    v10 = sub_23BFFA4C0();
    v12 = v14;
    v13 = sub_23BF47BC8;
    goto LABEL_10;
  }

  v7 = *(v3 + 48);
  *(v3 + 104) = *MEMORY[0x277D3B3C0];
  *(v3 + 120) = MEMORY[0x277D84F90];
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x23EEC36D0](0);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v5, v7, a3);
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;
  *(v3 + 128) = v8;
  *(v3 + 136) = 1;
  if (sub_23BFFA550())
  {

    sub_23BFFA4E0();
    sub_23BF4B1CC(&qword_27E1E0520, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    *(v3 + 152) = swift_allocError();
    sub_23BFFA250();
    swift_willThrow();

    v10 = sub_23BFFA4C0();
    v12 = v11;
    v13 = sub_23BF47C7C;
LABEL_10:
    v5 = v13;
    v7 = v10;
    a3 = v12;
    goto LABEL_12;
  }

  *(v3 + 160) = sub_23BFFA510();
  v15 = sub_23BFFA4C0();
  a3 = v16;
  *(v3 + 168) = v15;
  *(v3 + 176) = v16;
  v5 = sub_23BF47CE0;
  v7 = v15;
LABEL_12:

  return MEMORY[0x2822009F8](v5, v7, a3);
}

uint64_t sub_23BF47BC8()
{
  v1 = v0[18];

  v0[4] = v1;
  sub_23BF48524(0, *(v1 + 16) >> 1);
  sub_23BF3C4D0();
  sub_23BF805BC(v0[4]);

  sub_23BF41E90();
  v2 = v0[1];

  return v2();
}

uint64_t sub_23BF47C7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23BF47CE0()
{
  v1 = type metadata accessor for ParmesanTimeLayout();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___NTKParmesanTimeLayout_alignment] = 0;
  *&v2[OBJC_IVAR___NTKParmesanTimeLayout_scale] = 0;
  v0[1].receiver = v2;
  v0[1].super_class = v1;
  v0[11].super_class = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[12].receiver = sub_23BFFA510();
  v4 = sub_23BFFA4C0();
  v0[12].super_class = v4;
  v0[13].receiver = v3;

  return MEMORY[0x2822009F8](sub_23BF47DBC, v4, v3);
}

uint64_t sub_23BF47DBC()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = [objc_allocWithZone(MEMORY[0x277CD98A0]) init];
  v0[27] = v4;
  [v4 setVersion_];
  [v4 setDeliveryMode_];
  [v4 setNetworkAccessAllowed_];
  [v4 setSynchronous_];
  v5 = sub_23BFFA510();
  v0[28] = v5;
  v6 = swift_task_alloc();
  v0[29] = v6;
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;
  v6[5] = v4;
  v7 = swift_task_alloc();
  v0[30] = v7;
  v8 = sub_23BF4A264(&qword_27E1E0518, &qword_23C001D40);
  *v7 = v0;
  v7[1] = sub_23BF47F58;
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 5, v5, v9, 0xD00000000000001FLL, 0x800000023C00C120, sub_23BF4A508, v6, v8);
}

uint64_t sub_23BF47F58()
{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_23BF480B8, v3, v2);
}

uint64_t sub_23BF480B8()
{

  *(v0 + 248) = *(v0 + 40);
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_23BF48130, v1, v2);
}

uint64_t sub_23BF48130()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 currentDevice];
    if (!v4)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v4, v5, v6);
    }

    v7 = v4;

    NTKPhotosDefaultCropForImage();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {

    v9 = 0;
    v11 = 0;
    v13 = 0;
    v15 = 0;
  }

  *(v0 + 272) = v13;
  *(v0 + 280) = v15;
  *(v0 + 256) = v9;
  *(v0 + 264) = v11;
  v17 = *(v0 + 88);
  v16 = *(v0 + 96);
  v18 = *(v0 + 56);
  v19 = [*(v0 + 128) localIdentifier];
  v20 = sub_23BFFA300();
  v22 = v21;

  *(v0 + 288) = v20;
  *(v0 + 296) = v22;
  *(v0 + 304) = *(v18 + v17);
  *(v0 + 312) = *(v18 + v16);
  v4 = sub_23BF4828C;
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23BF4828C()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 120);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_23BF61A78(0, *(v2 + 2) + 1, 1, *(v0 + 120));
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  v5 = v4 + 1;
  if (v4 >= v3 >> 1)
  {
    v2 = sub_23BF61A78((v3 > 1), v4 + 1, 1, v2);
  }

  v6 = *(v0 + 248);
  v7 = *(v0 + 184);
  v8 = *(v0 + 136);
  v9 = *(v0 + 80);
  v10 = &v2[80 * v4];
  v26 = *(v0 + 272);
  v27 = *(v0 + 256);
  v24 = *(v0 + 288);
  v25 = *(v0 + 304);

  *(v2 + 2) = v5;
  *(v10 + 2) = v24;
  *(v10 + 6) = v6;
  *(v10 + 56) = v27;
  *(v10 + 72) = v26;
  *(v10 + 11) = v7;
  *(v10 + 6) = v25;
  if (v8 == v9)
  {
    *(v0 + 144) = v2;
    v13 = sub_23BFFA4C0();
    v15 = v14;
    v16 = sub_23BF47BC8;
LABEL_13:
    v11 = v16;
    v18 = v13;
    v12 = v15;
    goto LABEL_15;
  }

  v17 = *(v0 + 136);
  *(v0 + 120) = v2;
  v18 = *(v0 + 48);
  if ((v18 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x23EEC36D0](v17);
  }

  else
  {
    if (v17 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      __break(1u);
      return MEMORY[0x2822009F8](v11, v18, v12);
    }

    v11 = *(v18 + 8 * v17 + 32);
  }

  v19 = v11;
  *(v0 + 128) = v11;
  *(v0 + 136) = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (sub_23BFFA550())
  {

    sub_23BFFA4E0();
    sub_23BF4B1CC(&qword_27E1E0520, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    *(v0 + 152) = swift_allocError();
    sub_23BFFA250();
    swift_willThrow();

    v13 = sub_23BFFA4C0();
    v15 = v20;
    v16 = sub_23BF47C7C;
    goto LABEL_13;
  }

  *(v0 + 160) = sub_23BFFA510();
  v21 = sub_23BFFA4C0();
  v12 = v22;
  *(v0 + 168) = v21;
  *(v0 + 176) = v22;
  v11 = sub_23BF47CE0;
  v18 = v21;
LABEL_15:

  return MEMORY[0x2822009F8](v11, v18, v12);
}

unint64_t sub_23BF48524(unint64_t result, unint64_t a2)
{
  if (result != a2)
  {
    v5 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *v3;
      v6 = *(*v3 + 16);
      if (v6 > result)
      {
        v4 = a2;
        v7 = (v2 + 32 + 80 * result);
        v31 = *v7;
        v8 = v7[1];
        v9 = v7[2];
        v10 = v7[4];
        v34 = v7[3];
        v35 = v10;
        v32 = v8;
        v33 = v9;
        if (v6 > a2)
        {
          v11 = (v2 + 32 + 80 * a2);
          v36 = *v11;
          v12 = v11[1];
          v13 = v11[2];
          v14 = v11[4];
          v39 = v11[3];
          v40 = v14;
          v37 = v12;
          v38 = v13;
          sub_23BF4A518(&v31, v30);
          sub_23BF4A518(&v36, v30);
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        result = sub_23BF74708(v2);
        v2 = result;
LABEL_6:
        if (*(v2 + 16) <= v5)
        {
          __break(1u);
        }

        else
        {
          v15 = (v2 + 32 + 80 * v5);
          v29[0] = *v15;
          v16 = v15[1];
          v17 = v15[2];
          v18 = v15[4];
          v29[3] = v15[3];
          v29[4] = v18;
          v29[1] = v16;
          v29[2] = v17;
          v19 = v40;
          v21 = v37;
          v20 = v38;
          v15[3] = v39;
          v15[4] = v19;
          v15[1] = v21;
          v15[2] = v20;
          *v15 = v36;
          result = sub_23BF4A574(v29);
          if (*(v2 + 16) > v4)
          {
            v22 = (v2 + 32 + 80 * v4);
            v30[0] = *v22;
            v23 = v22[1];
            v24 = v22[2];
            v25 = v22[4];
            v30[3] = v22[3];
            v30[4] = v25;
            v30[1] = v23;
            v30[2] = v24;
            v26 = v35;
            v28 = v32;
            v27 = v33;
            v22[3] = v34;
            v22[4] = v26;
            v22[1] = v28;
            v22[2] = v27;
            *v22 = v31;
            result = sub_23BF4A574(v30);
            *v3 = v2;
            return result;
          }
        }

        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

void sub_23BF486B0(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_23BF4A264(&qword_27E1E0528, &qword_23C001D48);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - v12;
  if (qword_27E1DFDC0 != -1)
  {
    swift_once();
  }

  v14 = sub_23BFF92B0();
  sub_23BF4A22C(v14, qword_27E1EB510);
  v15 = sub_23BFF9290();
  v16 = sub_23BFFA650();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_23BF0C000, v15, v16, "requesting image......we hope", v17, 2u);
    MEMORY[0x23EEC4DF0](v17, -1, -1);
  }

  v18 = [objc_opt_self() defaultManager];
  (*(v11 + 16))(v13, a1, v10);
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  (*(v11 + 32))(v20 + v19, v13, v10);
  aBlock[4] = sub_23BF4A5C8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BF48D48;
  aBlock[3] = &unk_284EBEFF8;
  v21 = _Block_copy(aBlock);
  v22 = a2;

  [v18 requestImageForAsset:v22 targetSize:1 contentMode:a3 options:v21 resultHandler:{a4, a5}];
  _Block_release(v21);
}

void sub_23BF4897C(void *a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    goto LABEL_12;
  }

  sub_23BFFA300();
  sub_23BFFA9B0();
  if (!*(a2 + 16) || (v6 = sub_23BFE2C5C(v29), (v7 & 1) == 0))
  {
    sub_23BF4A658(v29);
LABEL_12:
    v30 = 0u;
    v31 = 0u;
    goto LABEL_13;
  }

  sub_23BF4A6AC(*(a2 + 56) + 32 * v6, &v30);
  sub_23BF4A658(v29);
  if (!*(&v31 + 1))
  {
LABEL_13:
    sub_23BF4B2D4(&v30, &qword_27E1E0530, &qword_23C001D50);
    goto LABEL_14;
  }

  sub_23BF4A264(&qword_27E1E0538, &qword_23C001D58);
  if (swift_dynamicCast())
  {
    v8 = v29[0];
    if (qword_27E1DFDC0 != -1)
    {
      swift_once();
    }

    v9 = sub_23BFF92B0();
    sub_23BF4A22C(v9, qword_27E1EB510);
    v10 = a3;
    v11 = v8;
    v12 = sub_23BFF9290();
    v13 = sub_23BFFA650();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29[0] = v15;
      *v14 = 136315394;
      v16 = [v10 localIdentifier];
      v17 = sub_23BFFA300();
      v19 = v18;

      v20 = sub_23BF62294(v17, v19, v29);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      swift_getErrorValue();
      v21 = sub_23BFFAD20();
      v23 = sub_23BF62294(v21, v22, v29);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_23BF0C000, v12, v13, "Failed to fetch image for asset: %s, %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEC4DF0](v15, -1, -1);
      MEMORY[0x23EEC4DF0](v14, -1, -1);
    }

    v29[0] = 0;
    sub_23BF4A264(&qword_27E1E0528, &qword_23C001D48);
    sub_23BFFA4D0();

    return;
  }

LABEL_14:
  if (qword_27E1DFDC0 != -1)
  {
    swift_once();
  }

  v24 = sub_23BFF92B0();
  sub_23BF4A22C(v24, qword_27E1EB510);
  v25 = sub_23BFF9290();
  v26 = sub_23BFFA650();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_23BF0C000, v25, v26, "requesting image", v27, 2u);
    MEMORY[0x23EEC4DF0](v27, -1, -1);
  }

  v29[0] = a1;
  v28 = a1;
  sub_23BF4A264(&qword_27E1E0528, &qword_23C001D48);
  sub_23BFFA4D0();
}

uint64_t sub_23BF48D48(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_23BFFA270();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

double sub_23BF48DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_23BF4A264(&qword_27E1E0510, &qword_23C001D30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = *(a2 + 16);
  v13 = (a2 + 32);
  v14 = MEMORY[0x277D84F90];
  v15 = v12;
  v16 = v13;
  while (v15)
  {
    v17 = *v16++;
    --v15;
    if (v17 == 1)
    {
      v14 = *(v4 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers);
      if (v14)
      {
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
      }

      break;
    }
  }

  v18 = v12;
  v19 = v13;
  do
  {
    v20 = v18;
    v21 = v18-- != 0;
    if (!v21)
    {
      break;
    }

    v22 = *v19++;
  }

  while (v22 != 2);
  v23 = v12;
  v24 = v13;
  do
  {
    v25 = v23;
    v21 = v23-- != 0;
    if (!v21)
    {
      break;
    }

    v26 = *v24++;
  }

  while (v26 != 3);
  do
  {
    v28 = v12;
    v21 = v12-- != 0;
    if (!v21)
    {
      break;
    }

    v27 = *v13++;
  }

  while (v27 != 4);
  v29 = v28 != 0;
  v30 = v25 != 0;
  v31 = v20 != 0;
  v32 = sub_23BFFA540();
  (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = v14;
  *(v33 + 40) = v31;
  *(v33 + 41) = v30;
  *(v33 + 42) = v29;
  *(v33 + 48) = a1;
  *(v33 + 56) = a3;
  *(v33 + 64) = a4;

  sub_23BF3BC04(0, 0, v11, &unk_23C001D38, v33);

  return result;
}

void sub_23BF4910C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23BF4A264(&unk_27E1E04E0, &unk_23C001D20);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = (v3 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection);
  *v10 = a1;
  v10[1] = a2;

  sub_23BF43934();
  v11 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource;
  v12 = *(v3 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource);
  if (v12)
  {
    v13 = v12;
    sub_23BFF95E0();

    sub_23BFF94F0();
    v14 = *(v3 + v11);
    if (v14)
    {
      v15 = v14;
      sub_23BFF95C0();

      (*(v7 + 8))(v9, v6);
      sub_23BF444DC(1);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_23BF49288(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = a1;
  }

  else if (*(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers))
  {
    v2 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers);
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers) = v2;

  if (qword_27E1DFDC8 != -1)
  {
    swift_once();
  }

  v3 = sub_23BFF92B0();
  sub_23BF4A22C(v3, qword_27E1EB528);

  v4 = sub_23BFF9290();
  v5 = sub_23BFFA630();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = *(v2 + 16);

    *(v6 + 4) = v7;

    _os_log_impl(&dword_23BF0C000, v4, v5, "Selected [%ld] people", v6, 0xCu);
    MEMORY[0x23EEC4DF0](v6, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  sub_23BF41D34();

  return sub_23BF444DC(1);
}

uint64_t sub_23BF49414(void *a1)
{
  if (qword_27E1DFDC8 != -1)
  {
    swift_once();
  }

  v2 = sub_23BFF92B0();
  sub_23BF4A22C(v2, qword_27E1EB528);
  v3 = sub_23BFF9290();
  v4 = sub_23BFFA630();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BF0C000, v3, v4, "People picker data source did update", v5, 2u);
    MEMORY[0x23EEC4DF0](v5, -1, -1);
  }

  return sub_23BF4959C(a1);
}

uint64_t sub_23BF4959C(void *a1)
{
  v2 = v1;
  v4 = sub_23BFFA0E0();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23BFFA100();
  v7 = *(v29 - 8);
  *&v8 = MEMORY[0x28223BE20](v29).n128_u64[0];
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 vipPersons];
  if (v11)
  {
    v12 = v11;
    sub_23BF4BDF0(0, &qword_27E1E0508, 0x277CD9938);
    v13 = sub_23BFFA460();
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v14 = [a1 nonVIPPersons];
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v16 = v14;
    sub_23BF4BDF0(0, &qword_27E1E0508, 0x277CD9938);
    v17 = sub_23BFFA460();
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (qword_27E1DFDC8 != -1)
  {
    swift_once();
  }

  v18 = sub_23BFF92B0();
  sub_23BF4A22C(v18, qword_27E1EB528);

  v19 = sub_23BFF9290();
  v20 = sub_23BFFA630();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134218240;
    if (v13 >> 62)
    {
      v22 = sub_23BFFAAB0();
    }

    else
    {
      v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 4) = v22;

    *(v21 + 12) = 2048;
    if (v17 >> 62)
    {
      v23 = sub_23BFFAAB0();
    }

    else
    {
      v23 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 14) = v23;

    _os_log_impl(&dword_23BF0C000, v19, v20, "Updated people available [%ld VIPs, %ld non-VIPs]", v21, 0x16u);
    MEMORY[0x23EEC4DF0](v21, -1, -1);

    v15 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  sub_23BF4BDF0(0, &qword_27E1E0B30, 0x277D85C78);
  v24 = sub_23BFFA6D0();
  v25 = swift_allocObject();
  v25[2] = v2;
  v25[3] = v13;
  v25[4] = v17;
  aBlock[4] = sub_23BF4A2AC;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BF58264;
  aBlock[3] = &unk_284EBEF80;
  v26 = _Block_copy(aBlock);
  v27 = v2;

  sub_23BFFA0F0();
  aBlock[0] = v15;
  sub_23BF4B1CC(&qword_27E1E04F0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_23BF4A264(&qword_27E1E0B40, &unk_23C0023B0);
  sub_23BF4BE40(&qword_27E1E0500, &qword_27E1E0B40, &unk_23C0023B0, MEMORY[0x277D83970]);
  sub_23BFFA970();
  MEMORY[0x23EEC33A0](0, v10, v6, v26);
  _Block_release(v26);

  (*(v30 + 8))(v6, v4);
  return (*(v7 + 8))(v10, v29);
}

void sub_23BF49A9C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 >> 62)
  {
    v6 = sub_23BFFAAB0();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  v35 = a1;
  if (v6)
  {
    v36 = MEMORY[0x277D84F90];
    sub_23BFCE138(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_33;
    }

    v33 = a3;
    v8 = 0;
    v7 = v36;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EEC36D0](v8, a2);
      }

      else
      {
        v9 = *(a2 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 localIdentifier];
      v12 = sub_23BFFA300();
      v14 = v13;

      v16 = *(v36 + 16);
      v15 = *(v36 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_23BFCE138((v15 > 1), v16 + 1, 1);
      }

      ++v8;
      *(v36 + 16) = v16 + 1;
      v17 = v36 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v6 != v8);
    a3 = v33;
    a1 = v35;
  }

  v32 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers;
  *(a1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers) = v7;

  if (a3 >> 62)
  {
    v18 = sub_23BFFAAB0();
  }

  else
  {
    v18 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v37 = MEMORY[0x277D84F90];
    sub_23BFCE138(0, v18 & ~(v18 >> 63), 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v34 = v6;
      v20 = 0;
      v19 = v37;
      v21 = a3;
      v22 = a3 & 0xC000000000000001;
      do
      {
        if (v22)
        {
          v23 = MEMORY[0x23EEC36D0](v20, v21);
        }

        else
        {
          v23 = *(v21 + 8 * v20 + 32);
        }

        v24 = v23;
        v25 = [v23 localIdentifier];
        v26 = sub_23BFFA300();
        v28 = v27;

        v30 = *(v37 + 16);
        v29 = *(v37 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_23BFCE138((v29 > 1), v30 + 1, 1);
        }

        ++v20;
        *(v37 + 16) = v30 + 1;
        v31 = v37 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
      }

      while (v18 != v20);
      v6 = v34;
      a1 = v35;
      goto LABEL_25;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_25:
  *(a1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_nonVipPeopleIdentifiers) = v19;

  if (*(a1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers))
  {
LABEL_29:
    sub_23BF41D34();
    sub_23BF41E90();
    return;
  }

  if (!__OFADD__(v6, v18))
  {
    if (v6 + v18 >= 1)
    {
      *(a1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers) = *(a1 + v32);
    }

    goto LABEL_29;
  }

LABEL_34:
  __break(1u);
}

uint64_t initializeBufferWithCopyOfBuffer for ParmesanShuffleSelectionViewController.RowType(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ParmesanShuffleSelectionViewController.RowType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ParmesanShuffleSelectionViewController.RowType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_23BF49DD4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BF49DF4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParmesanShuffleSelectionViewController.SectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ParmesanShuffleSelectionViewController.SectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23BF49F84()
{
  result = qword_27E1E04D0;
  if (!qword_27E1E04D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E04D0);
  }

  return result;
}

unint64_t sub_23BF49FDC()
{
  result = qword_27E1E04D8;
  if (!qword_27E1E04D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E04D8);
  }

  return result;
}

uint64_t sub_23BF4A030(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_23BF61740(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_23BF4A124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

double sub_23BF4A1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {

    sub_23BF4A21C(a5, a6);

    return sub_23BF4A21C(a7, a8);
  }

  return result;
}

double sub_23BF4A21C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_23BF4A22C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23BF4A264(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23BF4A2B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23BF4A2D0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23BF4A318(uint64_t a1)
{
  v4 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 41);
  v8 = *(v1 + 42);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23BF4A414;

  return sub_23BF399DC(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_23BF4A414()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_23BF4A5C8(void *a1, uint64_t a2)
{
  sub_23BF4A264(&qword_27E1E0528, &qword_23C001D48);
  v5 = *(v2 + 16);

  sub_23BF4897C(a1, a2, v5);
}

uint64_t sub_23BF4A6AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23BF4A734(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23BF4A414;

  return sub_23BF3A7F0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23BF4A7FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23BF4BF18;

  return sub_23BF47644(a1, v4, v5, v7, v6);
}

uint64_t sub_23BF4A8C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23BF4BF18;

  return sub_23BF3A110(a1, v4, v5, v6, v7, v8, v9, v10);
}

double sub_23BF4A9A4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_23BF4A9F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23BF4BF18;

  return sub_23BF45E00(a1, v4, v5, v7, v6);
}

uint64_t sub_23BF4AAFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23BF4AB44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23BF4BF18;

  return sub_23BF45E00(a1, v4, v5, v7, v6);
}

uint64_t sub_23BF4AC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0570, &qword_23C001DD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23BF4AC7C()
{
  result = qword_27E1E0578;
  if (!qword_27E1E0578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0578);
  }

  return result;
}

unint64_t sub_23BF4ACD0()
{
  result = qword_27E1E0580;
  if (!qword_27E1E0580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0580);
  }

  return result;
}

uint64_t *sub_23BF4AD24(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_23BF4ADD0()
{
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_sectionTopBottomContentInsets) = 0x4018000000000000;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_sections) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_suggestionsDataSource;
  type metadata accessor for ParmesanShuffleSuggestionsDataSource();
  v3 = swift_allocObject();
  v4 = [objc_opt_self() sharedPhotoLibrary];
  v5 = [objc_allocWithZone(MEMORY[0x277D3B3A0]) initWithPhotoLibrary_];

  *(v0 + v2) = v3;
  *(v3 + 16) = v5;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_collectionView) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedTypeface) = 2;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedNumeralsOption) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___previewStackViewModel) = 0;
  v6 = *MEMORY[0x277D3B3C0];
  v7 = *(MEMORY[0x277D3B3C0] + 8);
  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v24.origin.x = v10;
  v24.origin.y = v12;
  v24.size.width = v14;
  v24.size.height = v16;
  v17 = CGRectGetHeight(v24) * 0.2;
  v18 = v6 / v7 * v17;
  if (v7 < v17)
  {
    v18 = v6;
    v17 = v7;
  }

  v19 = (v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_facePreviewSize);
  *v19 = v18;
  v19[1] = v17;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_availableSuggestionTypes) = v1;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadedInitialSelection) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes) = v1;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedPersonIdentifiers) = 0;
  v20 = (v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection);
  *v20 = 0;
  v20[1] = 0;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___hasDaily) = 2;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingAssetSelection) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingPersonIdentifiers) = 0;
  v21 = (v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingCollectionIdentifier);
  *v21 = 0;
  v21[1] = 0;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_loadingDaily) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___peopleDataSource) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_vipPeopleIdentifiers) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_nonVipPeopleIdentifiers) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource) = 0;
  *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectionDebouncetimer) = 0;
  v22 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_floatingButtonTray;
  *(v0 + v22) = [objc_allocWithZone(type metadata accessor for ParmesanButtonTray()) initWithFrame_];
  v23 = (v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController____lazy_storage___trayConfiguration);
  v23[2] = 0u;
  v23[3] = 0u;
  *v23 = 0u;
  v23[1] = 0u;
  sub_23BFFAB00();
  __break(1u);
}

uint64_t sub_23BF4B0B4(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  v1 = [objc_opt_self() localizedTitleForSingleSmartAlbumType_];
  v2 = sub_23BFFA300();

  return v2;
}

uint64_t sub_23BF4B140(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  v1 = [objc_opt_self() systemImageNameForSingleSmartAlbumType_];
  v2 = sub_23BFFA300();

  return v2;
}

uint64_t sub_23BF4B1CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_23BF4B270(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23BF4B2D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_23BF4A264(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23BF4B33C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23BF4A264(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

BOOL sub_23BF4B404()
{
  v1 = *(v0 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource);
  if (v1)
  {
    v2 = v1;
    sub_23BFF8E40();
    sub_23BFF9580();

    return v4 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23BF4B474(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource);
  if (v2)
  {
    v3 = v2;
    sub_23BFF9570();

    if (v6)
    {
      return;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    if (v4)
    {
      if (v4 == 1)
      {
LABEL_6:
        swift_beginAccess();
        return;
      }

      swift_beginAccess();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_23BF4B5C4(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource);
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  sub_23BFF9570();

  if ((v24 & 1) == 0)
  {
    if (v23)
    {
      if (!v22)
      {
        return;
      }

      if (v22 == 1)
      {
        v5 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
        swift_beginAccess();
        *(v2 + v5) = MEMORY[0x277D84F90];

        *(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily) = 0;
        sub_23BF43934();
        sub_23BF676E4();
      }

      else if (sub_23BF3C688())
      {
        v14 = (v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection);
        *v14 = 0;
        v14[1] = 0;

        v15 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
        swift_beginAccess();
        *(v2 + v15) = MEMORY[0x277D84F90];

        *(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily) = 1;
        sub_23BF43EF8();
      }
    }

    else
    {
      v6 = (v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection);
      *v6 = 0;
      v6[1] = 0;

      *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily) = 0;
      v7 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
      swift_beginAccess();
      v8 = *(v2 + v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v7) = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_23BF6163C(0, *(v8 + 2) + 1, 1, v8);
        *(v2 + v7) = v8;
      }

      v10 = *(v8 + 2);
      v11 = *(v8 + 3);
      v12 = v10 + 1;
      if (v10 >= v11 >> 1)
      {
        v21 = v7;
        v17 = v10 + 1;
        v18 = v8;
        v19 = *(v8 + 2);
        v20 = sub_23BF6163C((v11 > 1), v10 + 1, 1, v18);
        v10 = v19;
        v12 = v17;
        v7 = v21;
        v8 = v20;
      }

      *(v8 + 2) = v12;
      *&v8[8 * v10 + 32] = v22;
      *(v2 + v7) = v8;
      swift_endAccess();

      sub_23BF4312C(v13);

      if (v22 == 1)
      {
        sub_23BF41D34();
      }
    }

    if (*(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection + 8) || (v16 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes, swift_beginAccess(), *(*(v2 + v16) + 16)) || *(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily) == 1)
    {
      sub_23BF444DC(0);
    }
  }
}

void sub_23BF4B860(uint64_t a1)
{
  v2 = v1;
  v3 = sub_23BF4A264(&unk_27E1E04E0, &unk_23C001D20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-v5];
  v7 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource;
  v8 = *(v1 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_diffableDataSource);
  if (!v8)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = v8;
  sub_23BFF9570();

  if (v24)
  {
    return;
  }

  v10 = v22;
  if ((v23 & 1) == 0)
  {
    v15 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes;
    swift_beginAccess();
    v16 = *(v2 + v15);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = v16 + 32;
      while (*(v19 + 8 * v18) != v10)
      {
        if (v17 == ++v18)
        {
          goto LABEL_12;
        }
      }

      swift_beginAccess();
      sub_23BF73D0C(v18);
      swift_endAccess();
      if (v10 != 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
LABEL_12:
      if (v10 != 1)
      {
        goto LABEL_14;
      }
    }

    sub_23BF41D34();
    goto LABEL_14;
  }

  if (v22 != 1)
  {
    return;
  }

  v11 = *(v1 + v7);
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = v11;
  sub_23BFF95E0();

  sub_23BFF94F0();
  v13 = *(v2 + v7);
  if (!v13)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v14 = v13;
  sub_23BFF95C0();

  (*(v4 + 8))(v6, v3);
LABEL_14:
  if (*(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedCollection + 8) || (v20 = OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedSuggestionsTypes, swift_beginAccess(), *(*(v2 + v20) + 16)) || *(v2 + OBJC_IVAR___NTKParmesanShuffleSelectionViewController_selectedDaily) == 1)
  {
    sub_23BF444DC(0);
  }
}

uint64_t sub_23BF4BAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23BFFA0E0();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23BFFA100();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BF4BDF0(0, &qword_27E1E0B30, 0x277D85C78);
  v12 = sub_23BFFA6D0();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23BF58264;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  sub_23BFFA0F0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23BF4B1CC(&qword_27E1E04F0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_23BF4A264(&qword_27E1E0B40, &unk_23C0023B0);
  sub_23BF4BE40(&qword_27E1E0500, &qword_27E1E0B40, &unk_23C0023B0, MEMORY[0x277D83970]);
  sub_23BFFA970();
  MEMORY[0x23EEC33A0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_23BF4BDF0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_23BF4BE40(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_23BF4A2D0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23BF4BE88()
{
  result = qword_27E1E0628;
  if (!qword_27E1E0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E0628);
  }

  return result;
}

uint64_t sub_23BF4BF48(void *a1)
{
  v4 = sub_23BFF8D10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BF4C484(a1, a1[3]);
  sub_23BFFAE10();
  if (v2)
  {
    type metadata accessor for URLEncodeLastPathComponentOnly(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_23BF4C484(v10, v10[3]);
    sub_23BF4C4C8();
    sub_23BFFACD0();
    (*(v5 + 32))(v1 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30URLEncodeLastPathComponentOnly_wrappedValue, v7, v4);
    sub_23BF4A9A4(v10);
  }

  sub_23BF4A9A4(a1);
  return v1;
}

double sub_23BF4C108(void *a1)
{
  v2 = v1;
  v4 = sub_23BFF8D10();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BF4C484(a1, a1[3]);
  sub_23BFFAE30();
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30URLEncodeLastPathComponentOnly_wrappedValue, v4);
  sub_23BFF8C30();
  (*(v5 + 8))(v7, v4);
  sub_23BF4C520(v10, v10[3]);
  sub_23BFFACE0();

  return sub_23BF4A9A4(v10);
}

uint64_t sub_23BF4C284()
{
  v1 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion30URLEncodeLastPathComponentOnly_wrappedValue;
  v2 = sub_23BFF8D10();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for URLEncodeLastPathComponentOnly(uint64_t a1)
{
  result = qword_27E1E0690;
  if (!qword_27E1E0690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23BF4C374(uint64_t a1)
{
  result = sub_23BFF8D10();
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

uint64_t sub_23BF4C404@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for URLEncodeLastPathComponentOnly(0);
  v5 = swift_allocObject();
  result = sub_23BF4BF48(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_23BF4C484(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23BF4C4C8()
{
  result = qword_27E1E06A0;
  if (!qword_27E1E06A0)
  {
    sub_23BFF8D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E06A0);
  }

  return result;
}

uint64_t sub_23BF4C520(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_23BF4C570(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_23BF4C58C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23BF4C5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_23BF4C618(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_23BF4C644()
{
  result = qword_27E1E06A8;
  if (!qword_27E1E06A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1E06A8);
  }

  return result;
}

uint64_t sub_23BF4C698()
{
  if (qword_27E1DFE18 != -1)
  {
    result = swift_once();
  }

  v0 = 1056964608;
  if (byte_27E1E1D60)
  {
    v1 = 0;
  }

  else
  {
    v0 = 0;
    v1 = 2;
  }

  qword_27E1EB448 = v0;
  byte_27E1EB450 = v1;
  return result;
}

uint64_t sub_23BF4C70C(uint64_t a1, unsigned int a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x23EEC3A60](2);
      return sub_23BFFA890();
    }

    else
    {
      return MEMORY[0x23EEC3A60](1);
    }
  }

  else
  {
    MEMORY[0x23EEC3A60](0);
    return sub_23BFFADC0();
  }
}

BOOL sub_23BF4C780(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v3 == 1)
      {
        sub_23BF4C8B4();
        return sub_23BFFA880() & 1;
      }

      return 0;
    }

    return v3 == 2 && v2 == 0;
  }

  else
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return COERCE_FLOAT(*a1) == *&v2;
  }
}

uint64_t sub_23BF4C80C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_23BFFAD90();
  sub_23BF4C70C(v4, v1, v2);
  return sub_23BFFADF0();
}

uint64_t sub_23BF4C868(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_23BFFAD90();
  sub_23BF4C70C(v5, v2, v3);
  return sub_23BFFADF0();
}

unint64_t sub_23BF4C8B4()
{
  result = qword_27E1E1BE0;
  if (!qword_27E1E1BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1E1BE0);
  }

  return result;
}

void sub_23BF4C9B8(uint64_t a1)
{
  v2 = *(v1 + qword_27E1E06D8);
  *(v1 + qword_27E1E06D8) = a1;
}

void sub_23BF4C9CC(uint64_t a1)
{
  v2 = *(v1 + qword_27E1E06E0);
  *(v1 + qword_27E1E06E0) = a1;
}

id sub_23BF4CA38()
{
  v1 = [*(v0 + qword_27E1E06B0) selectedOptionForCustomEditMode:19 slot:0];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for ParmesanNumeralsEditOption();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = [v3 numeralOption];
LABEL_7:
      v7 = v4;

      return v7;
    }
  }

  result = [objc_opt_self() currentDevice];
  if (result)
  {
    v6 = result;
    type metadata accessor for ParmesanNumeralsEditOption();
    v2 = [swift_getObjCClassFromMetadata() defaultOptionForDevice_];

    v4 = [v2 numeralOption];
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_23BF4CB20()
{
  v1 = [*(v0 + qword_27E1E06B0) selectedOptionForCustomEditMode:13 slot:0];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  type metadata accessor for ParmesanTypefaceEditOption();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    return 2;
  }

  v4 = [v3 _value];

  if (v4 == 2)
  {
    return 2;
  }

  else
  {
    return v4 == 1;
  }
}

id sub_23BF4CBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ParmesanFacePreviewViewController(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  sub_23BF4D090();
  return sub_23BF4D284();
}

void sub_23BF4CC4C(void *a1)
{
  v4 = a1;
  sub_23BF4CBE8(v4, v1, v2, v3);
}

void sub_23BF4CC94(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ParmesanFacePreviewViewController(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v8.receiver = v4;
  v8.super_class = v6;
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1 & 1);
  v7 = [v4 presentedViewController];
  if (v7)
  {

    sub_23BF4D968();
  }

  sub_23BF4EC58();
  sub_23BF4EEDC();
}

void sub_23BF4CD30(void *a1, uint64_t a2, char a3)
{
  v6 = a1;
  sub_23BF4CC94(a3, v6, v4, v5);
}

id sub_23BF4CD84(void *a1, int a2)
{
  v6 = *v2;
  v7 = *MEMORY[0x277D85000];
  v8 = sub_23BFF8E50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ParmesanFacePreviewViewController(0, *((v7 & v6) + 0x50), v12, v13);
  v23.receiver = v2;
  v23.super_class = v14;
  HIDWORD(v22) = a2;
  objc_msgSendSuper2(&v23, sel_setEditing_animated_, a1 & 1, a2 & 1);
  v15 = *(v2 + qword_27E1E06D8);
  if (!v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v15 setEditing_];
  sub_23BF4EC58();
  sub_23BF4EEDC();
  v16 = *(v2 + qword_27E1E06D8);
  if (!v16)
  {
LABEL_12:
    __break(1u);

    result = (*v3)(v11, v8);
    __break(1u);
    return result;
  }

  result = [v16 indexPathsForSelectedItems];
  if (result)
  {
    v18 = result;
    v19 = sub_23BFFA460();

    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = 0;
      a1 = 0;
      v3 = (v9 + 8);
      while (v21 < *(v19 + 16))
      {
        (*(v9 + 16))(v11, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v8);
        sub_23BF4CFBC(v11, v2, BYTE4(v22) & 1);
        ++v21;
        (*v3)(v11, v8);
        if (v20 == v21)
        {
        }
      }

      __break(1u);
      goto LABEL_11;
    }
  }

  return result;
}

void sub_23BF4CFBC(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a2 + qword_27E1E06D8);
  if (v3)
  {
    v5 = v3;
    v6 = sub_23BFF8DF0();
    [v5 deselectItemAtIndexPath:v6 animated:a3 & 1];
  }

  else
  {
    __break(1u);
  }
}

void sub_23BF4D034(void *a1, uint64_t a2, void *a3, int a4)
{
  v6 = a1;
  sub_23BF4CD84(a3, a4);
}

void sub_23BF4D090()
{
  [v0 setModalInPresentation_];
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = [v0 navigationItem];
    [v4 setLargeTitleDisplayMode_];

    v5 = [v0 navigationItem];
    v6 = sub_23BF5149C();
    [v5 setLeftBarButtonItem_];

    v7 = [v0 navigationItem];
    v8 = sub_23BF51710();
    [v7 setRightBarButtonItem_];

    sub_23BF51214();
    sub_23BF4BDF0(0, &qword_27E1E0948, 0x277D751E0);
    v9 = sub_23BFFA450();

    [v0 setToolbarItems_];

    v10 = [v0 navigationController];
    if (v10)
    {
      v11 = v10;
      [v10 setToolbarHidden_];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_23BF4D284()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v2 = result;
  [result bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = sub_23BF4D53C();
  v12 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v11 collectionViewLayout:{v4, v6, v8, v10}];

  v13 = *&v0[qword_27E1E06D8];
  *&v0[qword_27E1E06D8] = v12;

  result = *&v0[qword_27E1E06D8];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = [result setAutoresizingMask_];
  v14 = *&v0[qword_27E1E06D8];
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = result;
  v17 = [result backgroundColor];

  [v15 setBackgroundColor_];
  result = *&v0[qword_27E1E06D8];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [result setDragInteractionEnabled_];
  result = *&v0[qword_27E1E06D8];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [result setDelegate_];
  result = *&v0[qword_27E1E06D8];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [result setDropDelegate_];
  result = *&v0[qword_27E1E06D8];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [result setDragDelegate_];
  result = *&v0[qword_27E1E06D8];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [result setAllowsSelection_];
  result = *&v0[qword_27E1E06D8];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [result setAllowsSelectionDuringEditing_];
  result = *&v0[qword_27E1E06D8];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [result setAllowsMultipleSelection_];
  result = *&v0[qword_27E1E06D8];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [result setAllowsMultipleSelectionDuringEditing_];
  result = [v0 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!*&v0[qword_27E1E06D8])
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v18 = result;
  [result addSubview_];

  sub_23BF4DD84();

  return sub_23BF4D968();
}

id sub_23BF4D53C()
{
  v1 = qword_27E1E0700;
  v2 = *(v0 + qword_27E1E0700);
  if (v2)
  {
    v3 = *(v0 + qword_27E1E0700);
  }

  else
  {
    v4 = sub_23BF4D59C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_23BF4D59C()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension_];
  v2 = [v0 fractionalHeightDimension_];
  v3 = objc_opt_self();
  v4 = [v3 sizeWithWidthDimension:v1 heightDimension:v2];

  v5 = [objc_opt_self() itemWithLayoutSize_];
  v6 = [v0 fractionalWidthDimension_];
  v7 = [v0 estimatedDimension_];
  v8 = [v3 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = [objc_opt_self() horizontalGroupWithLayoutSize:v8 repeatingSubitem:v5 count:3];
  v10 = [objc_opt_self() fixedSpacing_];
  [v9 setInterItemSpacing_];

  v11 = [objc_opt_self() sectionWithGroup_];
  [v11 setInterGroupSpacing_];
  [v11 setContentInsets_];
  v12 = [v0 fractionalWidthDimension_];
  v13 = [v0 estimatedDimension_];
  v14 = [v3 sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = sub_23BFFA2C0();
  v16 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v14 elementKind:v15 alignment:1];

  [v16 setZIndex_];
  sub_23BF4A264(&qword_27E1E05E0, &qword_23C002120);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23C001BA0;
  *(v17 + 32) = v16;
  sub_23BF4BDF0(0, &qword_27E1E05E8, 0x277CFB830);
  v18 = v16;
  v19 = sub_23BFFA450();

  [v11 setBoundarySupplementaryItems_];

  [v11 setSupplementaryContentInsetsReference_];
  v20 = [objc_allocWithZone(MEMORY[0x277D752B8]) initWithSection_];

  return v20;
}

uint64_t sub_23BF4D968()
{
  v1 = v0;
  v2 = sub_23BF4A264(&qword_27E1E0968, &qword_23C002168);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - v4;
  sub_23BFF9630();
  v6 = [*(v0 + qword_27E1E06C0) imageIdentifiers];
  v7 = sub_23BFFA460();

  *(v1 + qword_27E1E06E8) = v7;

  v11[0] = 0;
  v11[1] = 0;

  sub_23BFF9620();

  v9 = *(v1 + qword_27E1E06E0);
  if (v9)
  {
    v10 = v9;
    sub_23BFF95D0();

    sub_23BF4EC58();
    sub_23BF4EEDC();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_23BF4DB14(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23BF4A264(&qword_27E1E0988, qword_23C004CA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = sub_23BFF8E50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + qword_27E1E06E0);
  if (!v12)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = v12;
  MEMORY[0x23EEC1AE0](a1, 0);
  sub_23BFF9570();

  (*(v9 + 8))(v11, v8);
  v14 = v22;
  if (!v22)
  {
    return;
  }

  v15 = *(v2 + qword_27E1E06E0);
  if (!v15)
  {
    goto LABEL_8;
  }

  v16 = v21;
  v17 = v15;
  sub_23BFF95E0();

  sub_23BF4A264(&unk_27E1E0990, qword_23C002190);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23C001BB0;
  *(v18 + 32) = v16;
  *(v18 + 40) = v14;

  sub_23BFF94F0();

  v19 = *(v2 + qword_27E1E06E0);
  if (!v19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v20 = v19;

  sub_23BFF95C0();

  (*(v5 + 8))(v7, v4);
}

void sub_23BF4DD84()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = sub_23BF4A264(&qword_27E1E0950, &qword_23C002150);
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = v5;
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v49 - v7;
  v8 = sub_23BF4A264(&qword_27E1E0958, &qword_23C002158);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v17 = *((v3 & v2) + 0x50);
  *(v16 + 16) = v17;
  *(v16 + 24) = v15;
  type metadata accessor for ParmesanFacePreviewCell();
  sub_23BFFA690();
  v18 = *&v1[qword_27E1E06D8];
  if (!v18)
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = *(v9 + 16);
  v50 = v14;
  v19(v11, v14, v8);
  v20 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v21 = swift_allocObject();
  v22 = *(v9 + 32);
  v51 = v8;
  v22(v21 + v20, v11, v8);
  v23 = objc_allocWithZone(type metadata accessor for ParmesanFacePreviewDataSource(0));
  v24 = swift_allocObject();
  *(v24 + 16) = sub_23BF54804;
  *(v24 + 24) = v21;
  v25 = v18;
  v26 = sub_23BFF9540();
  v27 = *&v1[qword_27E1E06E0];
  *&v1[qword_27E1E06E0] = v26;

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = v17;
  *(v29 + 24) = v28;
  type metadata accessor for ParmesanFacePreviewTitleSupplementaryView();
  v30 = v56;
  sub_23BFFA6A0();
  v31 = *&v1[qword_27E1E06E0];
  if (!v31)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v32 = v9;
  v34 = v53;
  v33 = v54;
  v35 = v55;
  (*(v54 + 16))(v53, v30, v55);
  v36 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v17;
  *(v37 + 24) = v1;
  (*(v33 + 32))(v37 + v36, v34, v35);
  v38 = v31;
  v39 = v1;
  sub_23BFF9550();

  v40 = *&v39[qword_27E1E06E0];
  if (!v40)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v41 = v40;
  v42 = sub_23BFF95B0();
  sub_23BF4A264(&qword_27E1E0960, &qword_23C002160);
  sub_23BFF95A0();
  v42(v57, 0);

  v43 = *&v39[qword_27E1E06E0];
  v44 = v51;
  if (v43)
  {
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = v17;
    *(v46 + 24) = v45;
    v47 = v43;
    v48 = sub_23BFF95B0();
    sub_23BFF9590();
    v48(v57, 0);

    (*(v54 + 8))(v56, v55);
    (*(v32 + 8))(v50, v44);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_23BF4E334(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v5 = a3[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = &a1[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_itemIdentifier];
    *v9 = v6;
    *(v9 + 1) = v5;

    v10 = sub_23BFF8E30();
    v11 = *&v8[qword_27E1E06C0];
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = v6;
    v12[4] = v5;
    v12[5] = v8;
    aBlock[4] = sub_23BF54990;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23BF4E6A8;
    aBlock[3] = &unk_284EBF7A8;
    v13 = _Block_copy(aBlock);

    v14 = v11;
    v15 = a1;
    v16 = v8;

    [v14 thumbnailInfoForPhotoAtIndex:v10 completion:v13];
    _Block_release(v13);
  }
}

uint64_t sub_23BF4E4B0(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v10 = *(a3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_itemIdentifier + 8);
  if (v10)
  {
    v18 = result;
    v19 = *(a3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_itemIdentifier) == a4 && v10 == a5;
    if (v19 || (result = sub_23BFFACC0(), (result & 1) != 0))
    {
      if (a2)
      {
        v20 = a2;
      }

      else
      {
        if (qword_27E1DFD78 != -1)
        {
          swift_once();
        }

        v20 = qword_27E1EB458;
      }

      v21 = a2;
      __src[0] = a4;
      __src[1] = a5;
      __src[2] = v18;
      *&__src[3] = a6;
      *&__src[4] = a7;
      *&__src[5] = a8;
      *&__src[6] = a9;
      __src[7] = v20;
      __src[8] = sub_23BF4CB20();
      __src[9] = sub_23BF4CA38();
      v22 = (*(a3 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion23ParmesanFacePreviewCell_previewContentView) + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion26ParmesanPreviewContentView_configuration);
      v23 = v22[1];
      v24 = v22[2];
      v25 = v22[4];
      v32[3] = v22[3];
      v32[4] = v25;
      v32[1] = v23;
      v32[2] = v24;
      v32[0] = *v22;
      memmove(v22, __src, 0x50uLL);
      sub_23BF4A518(__src, v33);
      sub_23BF4A518(__src, v33);
      v26 = v18;

      sub_23BF4B2D4(v32, &qword_27E1E0980, &unk_23C002180);
      v33[0] = *v22;
      v27 = v22[4];
      v29 = v22[1];
      v28 = v22[2];
      v33[3] = v22[3];
      v33[4] = v27;
      v33[1] = v29;
      v33[2] = v28;
      sub_23BF5499C(v33, &v30);
      sub_23BF6A6B0(v33);
      sub_23BF4B2D4(v33, &qword_27E1E0980, &unk_23C002180);
      sub_23BF4A574(__src);
      return sub_23BF4A574(__src);
    }
  }

  return result;
}

void sub_23BF4E6A8(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);

  v15 = a2;
  v14 = a3;
  v13(a2, a3, a4, a5, a6, a7);
}

uint64_t sub_23BF4E764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ParmesanFacePreviewCell();

  v5 = sub_23BFFA6B0();

  return v5;
}

char *sub_23BF4E7F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    result = *&result[qword_27E1E06D8];
    if (result)
    {
      v8 = [result backgroundColor];
      [a1 setBackgroundColor_];

      v9 = sub_23BF4F3F0();
      sub_23BFDA400(v9, v10, v11, v12);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_23BF4E8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a5 + qword_27E1E06D8);
  if (v6)
  {
    type metadata accessor for ParmesanFacePreviewTitleSupplementaryView();
    v7 = v6;
    sub_23BFFA6C0();
  }

  else
  {
    __break(1u);
  }
}

char *sub_23BF4E93C(uint64_t a1, uint64_t a2)
{
  v2 = sub_23BF4A264(&qword_27E1E0968, &qword_23C002168);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - v4;
  v6 = sub_23BF4A264(&qword_27E1E0970, &qword_23C002170);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_23BF4A264(&qword_27E1E0978, &qword_23C002178);
    v12 = sub_23BFF9520();
    v13 = *(v12 + 16);
    if (v13)
    {
      v15 = *(v7 + 16);
      v14 = v7 + 16;
      v32 = qword_27E1E06C0;
      v33 = v15;
      v16 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v17 = *(v14 + 56);
      v30 = (v14 - 8);
      v31 = v17;
      v28 = v12;
      v29 = (v3 + 8);
      v34 = v11;
      do
      {
        v33(v9, v16, v6);
        sub_23BFF9670();
        (*v30)(v9, v6);
        v18 = sub_23BFF9610();
        (*v29)(v5, v2);
        v19 = v9;
        v20 = v14;
        v21 = v6;
        v22 = v5;
        v23 = v2;
        v24 = v34;
        *&v34[qword_27E1E06E8] = v18;

        v25 = *&v24[v32];
        v26 = sub_23BFFA450();

        v27 = v25;
        v2 = v23;
        v5 = v22;
        v6 = v21;
        v14 = v20;
        v9 = v19;
        [v27 setImageOrder_];

        v16 += v31;
        --v13;
      }

      while (v13);
    }

    else
    {
    }
  }

  return result;
}

void sub_23BF4EC30(uint64_t a1)
{
  sub_23BF4EC58();

  sub_23BF4EEDC();
}

void sub_23BF4EC58()
{
  v1 = sub_23BF51710();
  [v0 isEditing];
  v2 = sub_23BFFA2C0();

  [v1 setTitle_];

  v3 = sub_23BF5149C();
  [v3 setEnabled_];

  v4 = [v0 navigationItem];
  [v4 setRightBarButtonItem_];

  sub_23BF510F8(*&v0[qword_27E1E06C0], [v0 isEditing]);
  sub_23BF4BDF0(0, &qword_27E1E0948, 0x277D751E0);
  v5 = sub_23BFFA450();

  [v0 setToolbarItems_];

  v6 = sub_23BF51788();
  [v6 setEnabled_];

  v7 = sub_23BF519D0();
  [v7 setEnabled_];

  if ([v0 isEditing])
  {
    v8 = *&v0[qword_27E1E06D8];
    if (v8)
    {
      v9 = [v8 indexPathsForSelectedItems];
      if (v9)
      {
        sub_23BFF8E50();
        v10 = sub_23BFFA460();

        v9 = *(v10 + 16);

        if (v9)
        {
          v9 = v9 != *(*&v0[qword_27E1E06E8] + 16);
        }
      }

      v11 = sub_23BF520B8();
      [v11 setEnabled_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_23BF4EEDC()
{
  v1 = *(v0 + qword_27E1E06D8);
  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = v1;
  v3 = sub_23BFFA2C0();
  v4 = [v2 visibleSupplementaryViewsOfKind_];

  sub_23BF4BDF0(0, &qword_27E1E0940, 0x277D75298);
  v5 = sub_23BFFA460();

  v6 = sub_23BF4F138(v5);

  if (!v6)
  {
    return;
  }

  if (v6 >> 62)
  {
    v7 = sub_23BFFAAB0();
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_5:
      if (v7 >= 1)
      {
        v8 = 0;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x23EEC36D0](v8, v6);
          }

          else
          {
            v10 = *(v6 + 8 * v8 + 32);
          }

          v11 = v10;
          sub_23BF4F3F0();
          v13 = v12;
          v14 = *&v11[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_titleLabel];
          v15 = sub_23BFFA2C0();

          [v14 setText_];

          v16 = OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_subtitleLabel;
          v17 = *&v11[OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion41ParmesanFacePreviewTitleSupplementaryView_subtitleLabel];
          if (v13)
          {
            v9 = sub_23BFFA2C0();
          }

          else
          {
            v9 = 0;
          }

          ++v8;
          [v17 setText_];

          [*&v11[v16] setHidden_];
          [v11 invalidateIntrinsicContentSize];
        }

        while (v7 != v8);
        goto LABEL_16;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }
  }

LABEL_16:
}

uint64_t sub_23BF4F138(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_23BFFAA60();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23BFFAAB0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EEC36D0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for ParmesanFacePreviewTitleSupplementaryView();
      if (!swift_dynamicCastClass())
      {

        return 0;
      }

      sub_23BFFAA40();
      sub_23BFFAA70();
      sub_23BFFAA80();
      sub_23BFFAA50();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_23BFFAAB0();
    sub_23BFFAA60();
  }

  return v8;
}

uint64_t sub_23BF4F2C4(uint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  a2(0, v8, 0);
  v9 = v16;
  if (v8)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_23BF4A6AC(i, v15);
      sub_23BF4A264(a3, a4);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v16 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        a2(v11 > 1, v12 + 1, 1);
        v9 = v16;
      }

      *(v9 + 16) = v12 + 1;
      *(v9 + 8 * v12 + 32) = v14;
      if (!--v8)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

void *sub_23BF4F3F0()
{
  if (![v0 isEditing])
  {
    sub_23BF4BDF0(0, &qword_27E1E0930, off_278BA5488);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = sub_23BFFA2C0();
    v16 = sub_23BFFA2C0();
    v17 = sub_23BFFA2C0();
    v18 = [ObjCClassFromMetadata localizedStringForKey:v15 table:v16 comment:v17];

    sub_23BFFA300();
    sub_23BF4A264(&qword_27E1E0938, &qword_23C002148);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_23C001BB0;
    v20 = *(*&v0[qword_27E1E06E8] + 16);
    v21 = MEMORY[0x277D83C10];
    *(v19 + 56) = MEMORY[0x277D83B88];
    *(v19 + 64) = v21;
    *(v19 + 32) = v20;
    v13 = sub_23BFFA2D0();

    v22 = sub_23BFFA2C0();
    v23 = sub_23BFFA2C0();
    v24 = [ObjCClassFromMetadata localizedStringForKey:v22 comment:v23];

    sub_23BFFA300();
    return v13;
  }

  result = *&v0[qword_27E1E06D8];
  if (result)
  {
    v2 = [result indexPathsForSelectedItems];
    if (v2)
    {
      v3 = v2;
      sub_23BFF8E50();
      v4 = sub_23BFFA460();

      sub_23BF4BDF0(0, &qword_27E1E0930, off_278BA5488);
      v5 = swift_getObjCClassFromMetadata();
      v6 = sub_23BFFA2C0();
      v7 = sub_23BFFA2C0();
      v8 = sub_23BFFA2C0();
      v9 = [v5 localizedStringForKey:v6 table:v7 comment:v8];

      sub_23BFFA300();
      sub_23BF4A264(&qword_27E1E0938, &qword_23C002148);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_23C001BB0;
      v11 = *(v4 + 16);

      v12 = MEMORY[0x277D83C10];
      *(v10 + 56) = MEMORY[0x277D83B88];
      *(v10 + 64) = v12;
      *(v10 + 32) = v11;
      v13 = sub_23BFFA2D0();
    }

    else
    {
      sub_23BF4BDF0(0, &qword_27E1E0930, off_278BA5488);
      v25 = swift_getObjCClassFromMetadata();
      v26 = sub_23BFFA2C0();
      v27 = sub_23BFFA2C0();
      v28 = [v25 localizedStringForKey:v26 comment:v27];

      v13 = sub_23BFFA300();
    }

    return v13;
  }

  __break(1u);
  return result;
}

id sub_23BF4F84C()
{
  if ([v0 isEditing])
  {
    v1 = sel_setEditing_animated_;
    v2 = v0;
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v1 = sel_dismissViewControllerAnimated_completion_;
    v2 = v0;
    v3 = 1;
    v4 = 0;
  }

  return [v2 v1];
}

void sub_23BF4F8C4(void *a1)
{
  v1 = a1;
  sub_23BF4F84C();
}

double sub_23BF4F90C()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  if ([v0 isEditing])
  {

    [v0 setEditing:0 animated:1];
    return result;
  }

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = *(v1 + 80);
  *(v4 + 24) = v3;
  if (*(v0 + qword_27E1E06C8) == 1)
  {
    v5 = [v0 navigationItem];
    v6 = sub_23BF5157C();
    [v5 setRightBarButtonItem_];

    v7 = *(v0 + qword_27E1E06C0);
    v21 = sub_23BF547EC;
    v22 = v4;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_23BF4FE20;
    v20 = &unk_284EBF668;
    v8 = _Block_copy(&v17);

    [v7 generateGalleryPreviewResourceDirectoryWithCompletion_];

    v9 = v8;
LABEL_9:
    _Block_release(v9);
    return result;
  }

  v10 = *(v0 + qword_27E1E06C0);
  if ([v10 state] == 2)
  {
    v11 = [v0 navigationItem];
    v12 = sub_23BF5157C();
    [v11 setRightBarButtonItem_];

    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    v21 = sub_23BF547F4;
    v22 = v13;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_23BF4FF1C;
    v20 = &unk_284EBF618;
    v14 = _Block_copy(&v17);
    v15 = v0;

    v21 = sub_23BF547EC;
    v22 = v4;
    v17 = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = sub_23BF4FE20;
    v20 = &unk_284EBF640;
    v16 = _Block_copy(&v17);

    [v10 finalizeWithProgress:v14 completion:v16];

    _Block_release(v16);
    v9 = v14;
    goto LABEL_9;
  }

  [v0 dismissViewControllerAnimated:1 completion:0];

  return result;
}

void sub_23BF4FCF4(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + qword_27E1E06B0);
    v7 = v6;
    if (a2)
    {
      a2 = sub_23BFFA2C0();
    }

    [v6 setResourceDirectory_];

    v8 = [v5 navigationItem];
    v9 = sub_23BF51710();
    [v8 setRightBarButtonItem_];

    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      [v10 parmesanFacePreviewControllerDidFinish];
      swift_unknownObjectRelease();
    }

    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_23BF4FE20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_23BFFA300();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

void sub_23BF4FE9C(uint64_t a1, double a2)
{
  v2 = *(a1 + qword_27E1E0738);
  if (v2)
  {
    v5 = v2;
    [v5 currentProgress];
    if (v4 < a2)
    {
      [v5 setCurrentProgress_];
    }
  }
}

double sub_23BF4FF1C(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);

  return result;
}

void sub_23BF4FF70(void *a1)
{
  v1 = a1;
  sub_23BF4F90C();
}

void sub_23BF4FFD0()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = NTKMaxParmesanPhotos();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [*(v0 + qword_27E1E06C0) photosCount];
  v5 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_7:
    __break(1u);
    return;
  }

  if (v5 >= 1)
  {
    v6 = objc_opt_self();
    v7 = [v6 parmesanConfigurationWithLimit_];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = *(v1 + 80);
    *(v9 + 24) = v8;
    v12[4] = sub_23BF547E4;
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_23BF502C4;
    v12[3] = &unk_284EBF5A0;
    v10 = _Block_copy(v12);
    v11 = v7;

    [v6 presentPhotosAddControllerFromViewController:v0 configuration:v11 withCompletion:v10];
    _Block_release(v10);
  }
}

uint64_t sub_23BF50188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2 && sub_23BF4F2C4(a2, sub_23BFCE178, &qword_27E1E0928, &qword_23C002140))
    {
      v6 = *&v5[qword_27E1E06C0];
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = v6;
        sub_23BF4A264(&qword_27E1E0928, &qword_23C002140);
        v10 = sub_23BFFA450();

        [v8 addAssetsFromUIImagePicker_];

        sub_23BF4D968();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_23BF502C4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_23BFFA460();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v7 = v4(a2, v5);

  return v7 & 1;
}

void sub_23BF50358(void *a1)
{
  v1 = a1;
  sub_23BF4FFD0();
}

void sub_23BF503B8(void *a1)
{
  v1 = a1;
  sub_23BF503A0();
}

void sub_23BF50400()
{
  v1 = sub_23BF4A264(&qword_27E1E0920, &qword_23C001DD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_23BFF8E50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v0;
  v7 = *(v0 + qword_27E1E06E8);
  v8 = *(v7 + 16);

  v25 = v8;
  if (v8)
  {
    v9 = 0;
    v10 = (v5 + 48);
    v22 = (v5 + 8);
    v23 = (v5 + 32);
    v11 = (v7 + 40);
    while (v9 < *(v7 + 16))
    {
      v12 = *(v26 + qword_27E1E06E0);
      if (!v12)
      {
        goto LABEL_12;
      }

      v13 = *v11;
      v27 = *(v11 - 1);
      v28 = v13;
      v14 = v12;

      sub_23BFF95F0();

      if ((*v10)(v3, 1, v4) == 1)
      {

        sub_23BF4B2D4(v3, &qword_27E1E0920, &qword_23C001DD0);
      }

      else
      {
        v15 = v7;
        v16 = v24;
        (*v23)(v24, v3, v4);
        v17 = *(v26 + qword_27E1E06D8);
        if (!v17)
        {
          goto LABEL_13;
        }

        v18 = v17;

        v19 = v16;
        v20 = sub_23BFF8DF0();
        [v18 selectItemAtIndexPath:v20 animated:0 scrollPosition:1];

        (*v22)(v19, v4);
        v7 = v15;
      }

      ++v9;
      v11 += 2;
      if (v25 == v9)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_10:

    sub_23BF4EC58();
    sub_23BF4EEDC();
  }
}

void sub_23BF506A8(void *a1)
{
  v1 = a1;
  sub_23BF50400();
}

void sub_23BF506F0()
{
  v1 = sub_23BFF8E50();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0;
  v6 = *(v0 + qword_27E1E06D8);
  if (!v6)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v7 = [v6 indexPathsForSelectedItems];
  if (v7)
  {
    v8 = v7;
    v9 = sub_23BFFA460();

    v14 = *(v9 + 16);
    if (v14)
    {
      v10 = 0;
      while (v10 < *(v9 + 16))
      {
        (*(v2 + 16))(v5, v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v10, v1);
        v11 = *(v15 + qword_27E1E06D8);
        if (!v11)
        {
          goto LABEL_11;
        }

        ++v10;
        v12 = v11;
        v13 = sub_23BFF8DF0();
        [v12 deselectItemAtIndexPath:v13 animated:0];

        (*(v2 + 8))(v5, v1);
        if (v14 == v10)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_8:

    sub_23BF4EC58();
    sub_23BF4EEDC();
  }
}

void sub_23BF508D0(void *a1)
{
  v1 = a1;
  sub_23BF506F0();
}

void sub_23BF50918()
{
  if (*(v0 + qword_27E1E06F0) == 1)
  {
    sub_23BF50EB8();
  }

  else
  {
    sub_23BF5097C();
  }
}

void sub_23BF50934(void *a1)
{
  v1 = a1;
  sub_23BF50918();
}

void sub_23BF5097C()
{
  v1 = *(v0 + qword_27E1E06D8);
  if (v1)
  {
    v2 = v0;
    v3 = *MEMORY[0x277D85000] & *v0;
    v4 = [v1 indexPathsForSelectedItems];
    if (v4 && (v5 = v4, sub_23BFF8E50(), v6 = sub_23BFFA460(), v5, v7 = *(v6 + 16), , v7 == 1))
    {
      v8 = 0xE900000000000052;
      v9 = 0x414C55474E49535FLL;
    }

    else
    {
      v8 = 0xE700000000000000;
      v9 = 0x4C4152554C505FLL;
    }

    sub_23BFFA9F0();

    MEMORY[0x23EEC3090](v9, v8);
    v10 = sub_23BFFA2C0();

    v11 = sub_23BFFA2C0();
    v12 = NTKCCustomizationLocalizedString();

    sub_23BFFA300();
    sub_23BFFA9F0();

    v29 = 0xD000000000000014;
    v30 = 0x800000023C00CA20;
    MEMORY[0x23EEC3090](v9, v8);

    v13 = sub_23BFFA2C0();

    v14 = sub_23BFFA2C0();
    v15 = NTKCCustomizationLocalizedString();

    sub_23BFFA300();
    v16 = sub_23BFFA2C0();
    v17 = sub_23BFFA2C0();
    v18 = NTKCCustomizationLocalizedString();

    sub_23BFFA300();
    v19 = sub_23BFFA2C0();

    v20 = [objc_opt_self() alertControllerWithTitle:0 message:v19 preferredStyle:0];

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = *(v3 + 80);
    *(v22 + 24) = v21;

    v23 = sub_23BFFA2C0();

    v33 = sub_23BF547C4;
    v34 = v22;
    v29 = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_23BFEC1A0;
    v32 = &unk_284EBF550;
    v24 = _Block_copy(&v29);

    v25 = objc_opt_self();
    v26 = [v25 actionWithTitle:v23 style:2 handler:v24];
    _Block_release(v24);

    [v20 addAction_];
    v27 = sub_23BFFA2C0();

    v28 = [v25 actionWithTitle:v27 style:1 handler:0];

    [v20 addAction_];
    [v2 presentViewController:v20 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_23BF50E54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + qword_27E1E06F0) = 1;
    sub_23BF50EB8();
  }
}

void sub_23BF50EB8()
{
  v2 = sub_23BFF8E50();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_cb = &OBJC_PROTOCOL___NTKParmesanTimeLayoutSelectionDelegate.cb;
  if (v0[qword_27E1E06F0] == 1)
  {
    v8 = *&v0[qword_27E1E06D8];
    if (v8)
    {
      v9 = [v8 indexPathsForSelectedItems];
      if (v9)
      {
        v10 = v9;
        v11 = sub_23BFFA460();

        v26 = v11;

        sub_23BF52FA4(&v26);

        v12 = *(v26 + 16);
        if (v12)
        {
          v24 = v26;
          v25 = v0;
          v13 = *&v0[qword_27E1E06C0];
          v16 = *(v3 + 16);
          v14 = v3 + 16;
          v15 = v16;
          v17 = v26 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
          v18 = *(v14 + 56);
          v19 = (v14 - 8);
          do
          {
            v15(v6, v17, v2);
            v20 = v14;
            v21 = sub_23BFF8E30();
            (*v19)(v6, v2);
            v22 = v21;
            v14 = v20;
            [v13 deletePhotoAtIndex_];
            v17 += v18;
            --v12;
          }

          while (v12);
          v0 = v25;
          v23 = *(v24 + 16) != 0;
          p_cb = (&OBJC_PROTOCOL___NTKParmesanTimeLayoutSelectionDelegate + 64);
        }

        else
        {
          v23 = 0;
        }

        v0[qword_27E1E06F8] = v23;
        sub_23BF4D968();
      }

      v0[*(p_cb + 222)] = 0;
      [v0 setEditing:0 animated:{1, v24, v25}];
      sub_23BF4EC58();
      sub_23BF4EEDC();
    }

    else
    {
      __break(1u);

      __break(1u);
    }
  }
}

void *sub_23BF510F8(void *a1, char a2)
{
  if (a2)
  {
    result = *(v2 + qword_27E1E06D8);
    if (result)
    {
      v4 = [result indexPathsForSelectedItems];
      if (v4 && ((v5 = v4, sub_23BFF8E50(), v6 = sub_23BFFA460(), v5, v7 = *(v6 + 16), , v7) ? (v8 = v7 == *(*(v2 + qword_27E1E06E8) + 16)) : (v8 = 0), v8))
      {

        return sub_23BF513C8();
      }

      else
      {

        return sub_23BF51330();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else if ([a1 allowAddingPhotoAssets])
  {

    return sub_23BF51214();
  }

  else
  {

    return sub_23BF51248();
  }

  return result;
}

uint64_t sub_23BF51248()
{
  v1 = qword_27E1E0710;
  if (*(v0 + qword_27E1E0710))
  {
    v2 = *(v0 + qword_27E1E0710);
  }

  else
  {
    v2 = sub_23BF512B0();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_23BF512B0()
{
  sub_23BF4A264(&qword_27E1E05E0, &qword_23C002120);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23C002030;
  *(v0 + 32) = [objc_opt_self() flexibleSpaceItem];
  *(v0 + 40) = sub_23BF519D0();
  return v0;
}

uint64_t sub_23BF51364(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = sub_23BF513FC(v3, a2, a3);
    *(v3 + v4) = v6;
  }

  return v6;
}

uint64_t sub_23BF513FC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  sub_23BF4A264(&qword_27E1E05E0, &qword_23C002120);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23C001B90;
  *(v5 + 32) = a2();
  *(v5 + 40) = [objc_opt_self() flexibleSpaceItem];
  *(v5 + 48) = a3();
  return v5;
}

id sub_23BF514B4()
{
  v1 = qword_27E1E0730;
  v2 = *(v0 + qword_27E1E0730);
  if (v2)
  {
    v3 = *(v0 + qword_27E1E0730);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
    [v4 startAnimating];
    v5 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_23BF51568(uint64_t a1)
{
  v2 = *(v1 + qword_27E1E0738);
  *(v1 + qword_27E1E0738) = a1;
}

id sub_23BF5159C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_23BF51600(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D3D040]) initWithStyle_];
  v3 = *(a1 + qword_27E1E0738);
  *(a1 + qword_27E1E0738) = v2;

  v4 = *(a1 + qword_27E1E0738);
  if (!v4)
  {
    return sub_23BF514B4();
  }

  v5 = v4;
  [v5 setDeterminate_];
  [v5 setShowsBackground_];
  v6 = v5;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 sizeToFit];
  [v6 setHidden_];
  [v6 beginShowingProgressImmediately:1 animated:1];
  v7 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];

  return v7;
}

id sub_23BF51728(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_23BF520D0(v3, a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_23BF517A8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];
  v4 = sub_23BFFA2C0();
  v5 = sub_23BFFA2C0();
  v6 = NTKCCustomizationLocalizedString();

  sub_23BFFA300();
  v9 = type metadata accessor for ParmesanFacePreviewViewController(0, *((v3 & v2) + 0x50), v7, v8);
  v21[3] = v9;
  v21[0] = a1;
  v10 = a1;
  v11 = sub_23BFFA2C0();

  if (v9)
  {
    v12 = sub_23BF4C484(v21, v9);
    v13 = *(v9 - 8);
    v14 = MEMORY[0x28223BE20](v12);
    v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_23BFFACA0();
    (*(v13 + 8))(v16, v9);
    sub_23BF4A9A4(v21);
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v19 = [v18 initWithTitle:v11 style:0 target:v17 action:{sel_addTapped, v21[0]}];

  swift_unknownObjectRelease();
  return v19;
}

id sub_23BF519F0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];
  v4 = sub_23BFFA2C0();
  v5 = sub_23BFFA2C0();
  v6 = NTKCCustomizationLocalizedString();

  sub_23BFFA300();
  v9 = type metadata accessor for ParmesanFacePreviewViewController(0, *((v3 & v2) + 0x50), v7, v8);
  v21[3] = v9;
  v21[0] = a1;
  v10 = a1;
  v11 = sub_23BFFA2C0();

  if (v9)
  {
    v12 = sub_23BF4C484(v21, v9);
    v13 = *(v9 - 8);
    v14 = MEMORY[0x28223BE20](v12);
    v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_23BFFACA0();
    (*(v13 + 8))(v16, v9);
    sub_23BF4A9A4(v21);
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v19 = [v18 initWithTitle:v11 style:0 target:v17 action:{sel_selectTapped, v21[0]}];

  swift_unknownObjectRelease();
  return v19;
}

id sub_23BF51C44(uint64_t *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];
  v4 = sub_23BFFA2C0();
  v5 = sub_23BFFA2C0();
  v6 = NTKCCustomizationLocalizedString();

  sub_23BFFA300();
  v9 = type metadata accessor for ParmesanFacePreviewViewController(0, *((v3 & v2) + 0x50), v7, v8);
  v21[3] = v9;
  v21[0] = a1;
  v10 = a1;
  v11 = sub_23BFFA2C0();

  if (v9)
  {
    v12 = sub_23BF4C484(v21, v9);
    v13 = *(v9 - 8);
    v14 = MEMORY[0x28223BE20](v12);
    v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_23BFFACA0();
    (*(v13 + 8))(v16, v9);
    sub_23BF4A9A4(v21);
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v19 = [v18 initWithTitle:v11 style:0 target:v17 action:{sel_selectAllTapped, v21[0]}];

  swift_unknownObjectRelease();
  return v19;
}

id sub_23BF51E8C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];
  v4 = sub_23BFFA2C0();
  v5 = sub_23BFFA2C0();
  v6 = NTKCCustomizationLocalizedString();

  sub_23BFFA300();
  v9 = type metadata accessor for ParmesanFacePreviewViewController(0, *((v3 & v2) + 0x50), v7, v8);
  v21[3] = v9;
  v21[0] = a1;
  v10 = a1;
  v11 = sub_23BFFA2C0();

  if (v9)
  {
    v12 = sub_23BF4C484(v21, v9);
    v13 = *(v9 - 8);
    v14 = MEMORY[0x28223BE20](v12);
    v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_23BFFACA0();
    (*(v13 + 8))(v16, v9);
    sub_23BF4A9A4(v21);
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v19 = [v18 initWithTitle:v11 style:0 target:v17 action:{sel_deselectAllTapped, v21[0]}];

  swift_unknownObjectRelease();
  return v19;
}

id sub_23BF520D0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *MEMORY[0x277D85000];
  v6 = *a2;
  v7 = objc_allocWithZone(MEMORY[0x277D751E0]);
  type metadata accessor for ParmesanFacePreviewViewController(0, *((v5 & v4) + 0x50), v8, v9);
  v10 = [v7 initWithBarButtonSystemItem:a3 target:sub_23BFFACA0() action:v6];
  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_23BF5218C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_23BFF8E50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF8E00();
  v10 = a3;
  v11 = a1;
  LOBYTE(a1) = sub_23BF54A0C(v9);

  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

uint64_t sub_23BF522BC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = sub_23BFF8E50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF8E00();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

id sub_23BF523C4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_23BFF8E50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23BFF8E00();
  v11 = a3;
  swift_unknownObjectRetain();
  v12 = a1;
  sub_23BF54C14(v10);

  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  sub_23BF4BDF0(0, &qword_27E1E09A0, 0x277D75470);
  v13 = sub_23BFFA450();

  return v13;
}

id sub_23BF52520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_23BF4A264(&qword_27E1E0920, &qword_23C001DD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  if (a5)
  {
    sub_23BFF8E00();
    v9 = sub_23BFF8E50();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_23BFF8E50();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = [objc_allocWithZone(MEMORY[0x277D752E8]) initWithDropOperation:3 intent:1];
  sub_23BF4B2D4(v8, &qword_27E1E0920, &qword_23C001DD0);

  return v11;
}

void sub_23BF52698(void *a1, uint64_t a2, void *a3, void (*a4)(id, uint64_t))
{
  v6 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v7 = a3;
  v8 = a1;
  a4(v7, v6);
}

void sub_23BF52728(void *a1)
{
  v27 = [a1 currentPreview];
  if (!v27)
  {
LABEL_22:
    [a1 dismissViewControllerAnimated:1 completion:{0, v25}];
    return;
  }

  [a1 previewProvider];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 editor];
    v5 = [v3 selectedImageIndex];
    if (([v4 savePreview:v27 forPhotoAtIndex:v5] & 1) == 0)
    {
      if (qword_27E1DFDC8 != -1)
      {
        swift_once();
      }

      v6 = sub_23BFF92B0();
      sub_23BF4A22C(v6, qword_27E1EB528);
      v7 = sub_23BFF9290();
      v8 = sub_23BFFA650();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 134217984;
        *(v9 + 4) = v5;
        _os_log_impl(&dword_23BF0C000, v7, v8, "Couldn't save preview at index %ld", v9, 0xCu);
        MEMORY[0x23EEC4DF0](v9, -1, -1);
      }
    }

    [v4 purgeResourcesForPreviewAtIndex_];
    if (qword_27E1DFDC8 != -1)
    {
      swift_once();
    }

    v10 = sub_23BFF92B0();
    sub_23BF4A22C(v10, qword_27E1EB528);
    v11 = v27;
    v12 = sub_23BFF9290();
    v13 = sub_23BFFA670();
    if (os_log_type_enabled(v12, v13))
    {
      v28 = v4;
      v14 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v29 = v26;
      *v14 = 136315650;

      type metadata accessor for CGRect(0);
      v15 = sub_23BFFA360();
      v17 = sub_23BF62294(v15, v16, &v29);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2112;
      v18 = [v11 timeLayout];
      *(v14 + 14) = v18;
      *v25 = v18;
      *(v14 + 22) = 1024;
      LODWORD(v17) = [v11 useDepthEffect];

      *(v14 + 24) = v17;
      _os_log_impl(&dword_23BF0C000, v12, v13, "Layout preview controller did save preview, crop = %s, timeLayout = %@, useDepthEffect = %{BOOL}d", v14, 0x1Cu);
      sub_23BF4B2D4(v25, &qword_27E1E0B50, &unk_23C001DE0);
      MEMORY[0x23EEC4DF0](v25, -1, -1);
      v19 = sub_23BF4A9A4(v26);
      MEMORY[0x23EEC4DF0](v26, -1, -1, v19);
      v20 = v14;
      v4 = v28;
      MEMORY[0x23EEC4DF0](v20, -1, -1);
    }

    else
    {
    }

    sub_23BF4DB14(v5);

    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  swift_unknownObjectRelease();
  if (qword_27E1DFDC8 != -1)
  {
    swift_once();
  }

  v21 = sub_23BFF92B0();
  sub_23BF4A22C(v21, qword_27E1EB528);
  v22 = sub_23BFF9290();
  v23 = sub_23BFFA650();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_23BF0C000, v22, v23, "Something's horribly wrong! Invalid type of previewProvider", v24, 2u);
    MEMORY[0x23EEC4DF0](v24, -1, -1);
  }
}

void sub_23BF52C8C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_23BF52728(v4);
}

void sub_23BF52CF4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_23BF55178(v4);
}

void sub_23BF52D4C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_23BF55278();
}

id sub_23BF52DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ParmesanFacePreviewViewController(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_23BF52E00(uint64_t a1)
{
  sub_23BF552A8(a1 + qword_27E1E06D0);

  v2 = *(a1 + qword_27E1E0770);
}

void sub_23BF52FA4(uint64_t *a1)
{
  v2 = *(sub_23BFF8E50() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23BF54644(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_23BF5304C(v5);
  *a1 = v3;
}

void sub_23BF5304C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23BFFAC60();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23BFF8E50();
        v6 = sub_23BFFA490();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_23BFF8E50() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23BF53420(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23BF53178(0, v2, 1, a1);
  }
}

void sub_23BF53178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_23BFF8E50();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_23BFF8E30();
      v28 = sub_23BFF8E30();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v28 >= v27)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_23BF53420(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_23BFF8E50();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17 = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_23BF54448(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_23BF53E04(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_23BF54448(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_23BF543BC(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_23BFF8E30();
      v126 = sub_23BFF8E30();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v126 < v130;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_23BFF8E30();
        v39 = sub_23BFF8E30();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v39 >= v38)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v126 < v130)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_23BF54540(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_23BF54540((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_23BF53E04(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_23BF54448(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_23BF543BC(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_23BFF8E30();
    v104 = sub_23BFF8E30();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v104 >= v103)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_23BF53E04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_23BFF8E50();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_23BFF8E30();
          v45 = sub_23BFF8E30();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v45 < v56)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_23BFF8E30();
        v26 = sub_23BFF8E30();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v26 >= v25)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_23BF5445C(&v64, &v63, &v62);
}

uint64_t sub_23BF543BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23BF54448(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23BF5445C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_23BFF8E50();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_23BF54540(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_23BF4A264(&qword_27E1E0918, qword_23C002128);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_23BF54658()
{
  swift_unknownObjectWeakInit();
  *(v0 + qword_27E1E06D8) = 0;
  *(v0 + qword_27E1E06E0) = 0;
  *(v0 + qword_27E1E06E8) = MEMORY[0x277D84F90];
  *(v0 + qword_27E1E06F0) = 0;
  *(v0 + qword_27E1E06F8) = 0;
  *(v0 + qword_27E1E0700) = 0;
  *(v0 + qword_27E1E0708) = 0;
  *(v0 + qword_27E1E0710) = 0;
  *(v0 + qword_27E1E0718) = 0;
  *(v0 + qword_27E1E0720) = 0;
  *(v0 + qword_27E1E0728) = 0;
  *(v0 + qword_27E1E0730) = 0;
  *(v0 + qword_27E1E0738) = 0;
  *(v0 + qword_27E1E0740) = 0;
  *(v0 + qword_27E1E0748) = 0;
  *(v0 + qword_27E1E0750) = 0;
  *(v0 + qword_27E1E0758) = 0;
  *(v0 + qword_27E1E0760) = 0;
  *(v0 + qword_27E1E0768) = 0;
  *(v0 + qword_27E1E0770) = 0;
  sub_23BFFAB00();
  __break(1u);
}

uint64_t sub_23BF547CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23BF54804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_23BF4A264(&qword_27E1E0958, &qword_23C002158) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_23BF4E764(a1, a2, a3, a4, v10);
}

void sub_23BF548E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_23BF4A264(&qword_27E1E0950, &qword_23C002150) - 8);
  v10 = *(v4 + 24);
  v11 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  sub_23BF4E8C0(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_23BF5499C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23BF4A264(&qword_27E1E0980, &unk_23C002180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23BF54A0C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_23BFF8E30();
  if ([v2 isEditing])
  {
    return 1;
  }

  else
  {
    return [*&v2[qword_27E1E06C0] canChangeOriginalCropOfPhotoAtIndex_];
  }
}

void sub_23BF54A70()
{
  v1 = v0;
  sub_23BF4EC58();
  if ([v0 isEditing])
  {

    sub_23BF4EEDC();
  }

  else if (sub_23BFF8E30() < *(*&v0[qword_27E1E06E8] + 16))
  {
    sub_23BF4BDF0(0, &qword_27E1E09A8, off_278BA54D8);
    v2 = *&v0[qword_27E1E06C0];
    v3 = sub_23BFF8E30();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEditor:v2 selectedImageIndex:v3];

    v5 = [objc_allocWithZone(NTKCParmesanPreviewViewController) initWithPreviewProvider_];
    v6 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [v5 setDelegate_];
    [v1 presentViewController:v6 animated:1 completion:0];
  }
}

void sub_23BF54C14(uint64_t result)
{
  v2 = *(v1 + qword_27E1E06E0);
  if (v2)
  {
    v3 = v2;
    sub_23BFF9570();

    if (v9)
    {
      v4 = sub_23BFFA2C0();
      v5 = [objc_allocWithZone(MEMORY[0x277CCAA88]) initWithObject_];

      v6 = [objc_allocWithZone(MEMORY[0x277D75470]) initWithItemProvider_];
      v7 = sub_23BFFA2C0();

      [v6 setLocalObject_];

      sub_23BF4A264(&qword_27E1E05E0, &qword_23C002120);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_23C001BA0;
      *(v8 + 32) = v6;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_23BF54D48(void *a1)
{
  if (qword_27E1DFDC8 != -1)
  {
    swift_once();
  }

  v2 = sub_23BFF92B0();
  sub_23BF4A22C(v2, qword_27E1EB528);
  v3 = sub_23BFF9290();
  v4 = sub_23BFFA670();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BF0C000, v3, v4, "Layout preview controller cancelled", v5, 2u);
    MEMORY[0x23EEC4DF0](v5, -1, -1);
  }

  v6 = [a1 previewProvider];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v11 = [v7 editor];
    -[NSObject purgeResourcesForPreviewAtIndex:](v11, sel_purgeResourcesForPreviewAtIndex_, [v8 selectedImageIndex]);
    [a1 dismissViewControllerAnimated:1 completion:0];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v11 = sub_23BFF9290();
    v9 = sub_23BFFA650();
    if (os_log_type_enabled(v11, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23BF0C000, v11, v9, "Something's horribly wrong! Invalid type of previewProvider", v10, 2u);
      MEMORY[0x23EEC4DF0](v10, -1, -1);
    }
  }
}

void sub_23BF54F54(void *a1)
{
  if (qword_27E1DFDC8 != -1)
  {
    swift_once();
  }

  v2 = sub_23BFF92B0();
  sub_23BF4A22C(v2, qword_27E1EB528);
  v3 = sub_23BFF9290();
  v4 = sub_23BFFA670();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BF0C000, v3, v4, "Layout preview controller did delete preview", v5, 2u);
    MEMORY[0x23EEC4DF0](v5, -1, -1);
  }

  v6 = [a1 previewProvider];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v12 = [v7 editor];
    v9 = [v8 selectedImageIndex];
    [v12 purgeResourcesForPreviewAtIndex:v9];
    [v12 deletePhotoAtIndex:v9];
    [a1 dismissViewControllerAnimated:1 completion:0];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = sub_23BFF9290();
    v10 = sub_23BFFA650();
    if (os_log_type_enabled(v12, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23BF0C000, v12, v10, "Something's horribly wrong! Invalid type of previewProvider", v11, 2u);
      MEMORY[0x23EEC4DF0](v11, -1, -1);
    }
  }
}

id sub_23BF55178(void *a1)
{
  if (qword_27E1DFDC8 != -1)
  {
    swift_once();
  }

  v2 = sub_23BFF92B0();
  sub_23BF4A22C(v2, qword_27E1EB528);
  v3 = sub_23BFF9290();
  v4 = sub_23BFFA670();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23BF0C000, v3, v4, "Layout preview controller did dismiss", v5, 2u);
    MEMORY[0x23EEC4DF0](v5, -1, -1);
  }

  return [a1 dismissViewControllerAnimated:1 completion:0];
}

char *sub_23BF55390(char *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  v16 = sub_23BF555C4(v13, v14, v15, v6);
  *&a1[OBJC_IVAR___NTKCParmesanFacePreviewNavigationController_previewViewController] = v16;
  v19.receiver = a1;
  v19.super_class = type metadata accessor for ParmesanFacePreviewNavigationController();
  v17 = objc_msgSendSuper2(&v19, sel_initWithRootViewController_, v16);
  [v17 setModalInPresentation_];

  return v17;
}

id sub_23BF5555C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParmesanFacePreviewNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23BF555C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_23BF4A264(&qword_27E1E0A28, qword_23C0021F0);
  v9 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  *&v9[qword_27E1E06D8] = 0;
  *&v9[qword_27E1E06E0] = 0;
  *&v9[qword_27E1E06E8] = MEMORY[0x277D84F90];
  v9[qword_27E1E06F0] = 0;
  v9[qword_27E1E06F8] = 0;
  *&v9[qword_27E1E0700] = 0;
  *&v9[qword_27E1E0708] = 0;
  *&v9[qword_27E1E0710] = 0;
  *&v9[qword_27E1E0718] = 0;
  *&v9[qword_27E1E0720] = 0;
  *&v9[qword_27E1E0728] = 0;
  *&v9[qword_27E1E0730] = 0;
  *&v9[qword_27E1E0738] = 0;
  *&v9[qword_27E1E0740] = 0;
  *&v9[qword_27E1E0748] = 0;
  *&v9[qword_27E1E0750] = 0;
  *&v9[qword_27E1E0758] = 0;
  *&v9[qword_27E1E0760] = 0;
  *&v9[qword_27E1E0768] = 0;
  *&v9[qword_27E1E0770] = 0;
  *&v9[qword_27E1E06B0] = a1;
  *&v9[qword_27E1E06B8] = a2;
  *&v9[qword_27E1E06C0] = a3;
  v9[qword_27E1E06C8] = a4;
  v11.receiver = v9;
  v11.super_class = v8;
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

void sub_23BF5585C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 1;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
}

void sub_23BF55870(__n128 a1)
{
  v1 = a1.n128_f64[0] == 0.0;
  v2 = 0.0;
  if (v1)
  {
    v2 = 1.0;
  }

  sub_23BF76958(v2, 1.0 - v2);
}

uint64_t _s14TimeTransitionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t _s14TimeTransitionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_23BF55A1C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_23BF55A38(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_23BF55BD0()
{
  sub_23BFFA9F0();

  strcpy(v4, "NTKDailyID(id=");
  HIBYTE(v4[1]) = -18;
  v1 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion10NTKDailyID_uuidString);
  v2 = *(v0 + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion10NTKDailyID_uuidString + 8);

  MEMORY[0x23EEC3090](v1, v2);

  MEMORY[0x23EEC3090](41, 0xE100000000000000);
  return v4[0];
}

id sub_23BF55CB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NTKDailyID();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}