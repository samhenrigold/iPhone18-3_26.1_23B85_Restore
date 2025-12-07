uint64_t sub_1A4016EE0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  sub_1A401F220(0);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v52 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = v43 - v6;
  v7 = type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = v9;
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1A401E6E0(0, &qword_1EB129018, MEMORY[0x1E69C27F8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v43 - v13;
  sub_1A401EE48(0);
  v51 = v15;
  v57 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v50 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v56 = v43 - v18;
  v49 = *a1;
  v43[2] = *(v49 + 104);
  sub_1A401F47C(a1, v10);
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  v47 = type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView;
  sub_1A401F9E0(v10, v20 + v19, type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = ObjCClassFromMetadata;

  v22 = [ObjCClassFromMetadata sharedInstance];
  [v22 dynamicHeaderDebugOverlay];

  sub_1A5243B74();
  v23 = sub_1A5243B84();
  v24 = *(v23 - 8);
  v44 = *(v24 + 56);
  v45 = v24 + 56;
  v44(v14, 0, 1, v23);
  v59 = a1;
  sub_1A401E6E0(0, &qword_1EB130588, sub_1A401EF34, v11);
  type metadata accessor for IndividualTitleOverlayModel(0);
  sub_1A401EFF4();
  v43[1] = sub_1A401EAB0(&qword_1EB181268, type metadata accessor for IndividualTitleOverlayModel, &unk_1A5312298);
  v25 = v56;
  sub_1A52430B4();
  sub_1A401F47C(a1, v10);
  v26 = swift_allocObject();
  sub_1A401F9E0(v10, v26 + v19, v47);

  v27 = [v46 sharedInstance];
  [v27 dynamicHeaderDebugOverlay];

  sub_1A5243B74();
  v44(v14, 0, 1, v23);
  v28 = v58;
  sub_1A52430B4();
  v29 = *(v57 + 16);
  v30 = v50;
  v31 = v51;
  v29(v50, v25, v51);
  v32 = v52;
  v33 = v53;
  v34 = *(v53 + 16);
  v35 = v28;
  v36 = v54;
  v34(v52, v35, v54);
  v37 = v55;
  v38 = v29(v55, v30, v31);
  sub_1A401EDD8(0, v38);
  v34(&v37[*(v39 + 48)], v32, v36);
  v40 = *(v33 + 8);
  v40(v58, v36);
  v41 = *(v57 + 8);
  v41(v56, v31);
  v40(v32, v36);
  return (v41)(v30, v31);
}

uint64_t sub_1A4017560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A401EF34(0);
  v9 = v8;
  v23[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v12 = [swift_getObjCClassFromMetadata() sharedInstance];
  v13 = [v12 enableSolariumDetailsView];

  if (v13)
  {
    sub_1A401F47C(a1, v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v15 = swift_allocObject();
    sub_1A401F9E0(v7, v15 + v14, type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView);
    sub_1A401EF94(0);
    v17 = v11 + *(v16 + 36);
    sub_1A524BBE4();
    sub_1A3EC1940(0);
    *&v17[*(v18 + 56)] = 256;
    *v11 = sub_1A401F8D0;
    v11[1] = v15;
    v19 = *(*a1 + 120);
    swift_getKeyPath();
    v23[1] = v19;
    sub_1A401EAB0(qword_1EB16DE30, type metadata accessor for PlayButtonModel, &unk_1A531222C);

    sub_1A52415D4();

    v20 = *(v19 + 16);

    *(v11 + *(v9 + 36)) = v20;
    sub_1A401F9E0(v11, a2, sub_1A401EF34);
    return (*(v23[0] + 56))(a2, 0, 1, v9);
  }

  else
  {
    v22 = *(v23[0] + 56);

    return v22(a2, 1, 1, v9);
  }
}

double sub_1A40178CC()
{
  swift_getKeyPath();
  sub_1A401EAB0(qword_1EB16DE30, type metadata accessor for PlayButtonModel, &unk_1A531222C);
  sub_1A52415D4();

  return *(v0 + 16);
}

uint64_t sub_1A401796C()
{
  swift_getKeyPath();
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415D4();

  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__action);
  sub_1A3C66EE8(v1, *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__action + 8));
  return v1;
}

uint64_t sub_1A4017E44()
{

  MEMORY[0x1A590F020](v0 + 24);

  return swift_deallocClassInstance();
}

double sub_1A4017E84@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);
  swift_weakInit();
  v3 = *(type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView(0) + 24);
  *(a1 + v3) = swift_getKeyPath();
  sub_1A401E6E0(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();

  return result;
}

void *sub_1A4017F38(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = sub_1A524DCC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524DE34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  sub_1A524DE14();
  v14 = sub_1A524C634();
  v15 = [objc_opt_self() systemImageNamed_];

  sub_1A524DDD4();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC508], v3);
  sub_1A524DCD4();
  v16 = [objc_opt_self() configurationWithPointSize:4 weight:17.0];
  sub_1A524DC74();
  sub_1A3C52C70(0, &qword_1EB126570, 0x1E69DC738);
  (*(v8 + 16))(v10, v13, v7);
  sub_1A3C52C70(0, &qword_1EB126590, 0x1E69DC628);
  v17 = swift_allocObject();
  *(v17 + 16) = v22;
  *(v17 + 24) = a2;

  sub_1A524DC64();
  v18 = sub_1A524DE44();
  v19 = [objc_opt_self() clearColor];
  [v18 setTintColor_];

  (*(v8 + 8))(v13, v7);
  return v18;
}

uint64_t sub_1A4018294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A40203B8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A40182F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A40203B8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A401835C(uint64_t a1)
{
  sub_1A40203B8();
  sub_1A52496F4();
  __break(1u);
}

id sub_1A4018384()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 192);
  }

  else
  {
    v3 = [objc_allocWithZone(off_1E7721940) initWithTarget:v0 needsUpdateSelector:sel_setNeedsUpdate];
    v4 = *(v0 + 192);
    *(v0 + 192) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

double sub_1A4018400(void *a1)
{
  v2 = v1;
  sub_1A401E6E0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a1)
    {
      sub_1A3C52C70(0, &unk_1EB126A90, &off_1E7721840);
      v10 = a1;
      v11 = sub_1A524DBF4();

      if (v11)
      {
        return result;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return result;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_allocObject();
    swift_weakInit();

    sub_1A524D1A4();
  }

  v12 = (v2 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_photosViewModelObservation);
  *v12 = 0;
  v12[1] = 0;
  swift_unknownObjectRelease();
  sub_1A4018660();
  v13 = sub_1A4018384();
  [v13 setNeedsUpdateOf_];

  v14 = sub_1A524CCB4();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v2;

  sub_1A3D4D930(0, 0, v6, &unk_1A5312460, v15);

  return result;
}

void sub_1A4018660()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong isInSelectMode];

    v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_isInSelectMode);
    *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_isInSelectMode) = v3;
    if (v3 == v4)
    {
      return;
    }
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_isInSelectMode);
    *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_isInSelectMode) = 0;
    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  v6 = sub_1A4018384();
  [v6 setNeedsUpdateOf_];
}

uint64_t sub_1A4018740()
{
  sub_1A524CC54();
  *(v0 + 24) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40187D4, v2, v1);
}

uint64_t sub_1A40187D4()
{

  sub_1A4018838();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4018838()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    PXPhotosViewModel.bannerModel.getter(v17);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    PXPhotosViewModel.bannerProvider.getter(v15);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  sub_1A4020054(v15, &v10, &qword_1EB12AC28, &qword_1EB12AC30, &protocol descriptor for PhotosViewBannerProvider, sub_1A3E792C4);
  if (v11)
  {
    sub_1A3C34460(&v10, &v12);
    v4 = *(&v13 + 1);
    v5 = v14;
    v6 = __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
    sub_1A401BED0(v6, v17, v4, v5);
    sub_1A401FFF4(v15, &qword_1EB12AC28, &qword_1EB12AC30, &protocol descriptor for PhotosViewBannerProvider, sub_1A3E792C4);
    sub_1A401FFF4(v17, &qword_1EB12ACC8, &qword_1EB12ACD0, &protocol descriptor for PhotosViewBannerModel, sub_1A3E792C4);
    return __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {
    sub_1A401FFF4(&v10, &qword_1EB12AC28, &qword_1EB12AC30, &protocol descriptor for PhotosViewBannerProvider, sub_1A3E792C4);
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v8 = MEMORY[0x1E69C2688];
    sub_1A4020054(&v12, &v10, &qword_1EB124D38, &qword_1EB124D50, MEMORY[0x1E69C2688], sub_1A3E792C4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
    sub_1A52415C4();

    sub_1A401FFF4(&v12, &qword_1EB124D38, &qword_1EB124D50, v8, sub_1A3E792C4);
    sub_1A401FFF4(v15, &qword_1EB12AC28, &qword_1EB12AC30, &protocol descriptor for PhotosViewBannerProvider, sub_1A3E792C4);
    sub_1A401FFF4(v17, &qword_1EB12ACC8, &qword_1EB12ACD0, &protocol descriptor for PhotosViewBannerModel, sub_1A3E792C4);
    return sub_1A401FFF4(&v10, &qword_1EB124D38, &qword_1EB124D50, v8, sub_1A3E792C4);
  }
}

void sub_1A4018B70(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 96);
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!a1)
  {
    goto LABEL_5;
  }

  sub_1A3C52C70(0, &qword_1EB126B30, off_1E77204B0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    v4 = *(v2 + 96);
    if (v4)
    {
LABEL_5:
      swift_allocObject();
      swift_weakInit();
      v4;

      sub_1A524D1A4();
    }

LABEL_7:
    v8 = (v2 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_storyViewModelObservation);
    *v8 = 0;
    v8[1] = 0;
    swift_unknownObjectRelease();
    v9 = sub_1A4018384();
    [v9 setNeedsUpdateOf_];

    v10 = *(v2 + 192);

    [v10 setNeedsUpdateOf_];
  }
}

void sub_1A4018CF0()
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + 176))
  {
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v9 = sub_1A524D474();
    v10 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1A401FC6C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_87_1;
    v11 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A402036C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A401E6E0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v8, v4, v11);
    _Block_release(v11);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_1A4018FFC(double a1)
{
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
    sub_1A52415C4();
  }
}

void sub_1A4019114(double a1)
{
  v2 = *(v1 + 200);
  *(v1 + 200) = a1;
  if (v2 != a1)
  {
    v3 = *(v1 + 104);
    if (*(v3 + 56) == a1)
    {
      *(v3 + 56) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
      sub_1A52415C4();
    }
  }
}

uint64_t sub_1A4019240(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A5243754();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__style;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1A402036C(&unk_1EB129060, MEMORY[0x1E69C2628], MEMORY[0x1E69C2630]);
  v9 = sub_1A524C594();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
    sub_1A52415C4();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1A40194C0(char *a1)
{
  v2 = v1;
  v4 = sub_1A5243754();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_photosTitleStyle;
  swift_beginAccess();
  v12 = v5[2];
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  v13 = v5[3];
  v17 = a1;
  v13(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_1A402036C(&unk_1EB129060, MEMORY[0x1E69C2628], MEMORY[0x1E69C2630]);
  LOBYTE(a1) = sub_1A524C594();
  v14 = v5[1];
  v14(v7, v4);
  if ((a1 & 1) == 0)
  {
    v12(v7, v2 + v11, v4);
    sub_1A4019240(v7);
  }

  v14(v17, v4);
  return (v14)(v10, v4);
}

void sub_1A40196F0(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_movieTitleOpacity);
  *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_movieTitleOpacity) = a1;
  if (v2 != a1)
  {
    v3 = *(v1 + 112);
    if (*(v3 + 56) == a1)
    {
      *(v3 + 56) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
      sub_1A52415C4();
    }
  }
}

void sub_1A4019824(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(v4 + *a1) == a4)
  {
    *(v4 + *a1) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
    sub_1A52415C4();
  }
}

uint64_t sub_1A401A118@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__banner;
  swift_beginAccess();
  return sub_1A4020054(v5 + v3, a1, &qword_1EB124D38, &qword_1EB124D50, MEMORY[0x1E69C2688], sub_1A3E792C4);
}

void sub_1A401A20C(uint64_t a1, uint64_t a2)
{
  v33 = sub_1A524BEE4();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1A524BFC4();
  v10 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  sub_1A401E6E0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - v17;
  if ((a1 & 0x10000000000000) != 0)
  {
    v19 = sub_1A524CCB4();
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a2;

    sub_1A3D4D930(0, 0, v18, &unk_1A5312478, v20);
  }

  if ((a1 & 4) != 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v31 = v6;
    v32 = v4;
    if (Strong)
    {
      v22 = Strong;
      [Strong isInSelectMode];
    }

    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v29 = sub_1A524D474();
    sub_1A524BFA4();
    sub_1A524C014();
    v30 = *(v10 + 8);
    v30(v12, v36);
    v23 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1A40200C8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_109;
    v24 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A402036C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A401E6E0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    v25 = v31;
    v26 = v33;
    sub_1A524E224();
    v27 = v29;
    MEMORY[0x1A5908790](v15, v9, v25, v24);
    _Block_release(v24);

    (*(v32 + 8))(v25, v26);
    (*(v34 + 8))(v9, v35);
    v30(v15, v36);
  }

  if ((a1 & 0x2000800200400024) != 0)
  {
    v28 = sub_1A4018384();
    [v28 setNeedsUpdateOf_];
  }
}

uint64_t sub_1A401A7A8()
{
  sub_1A524CC54();
  *(v0 + 24) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40204B0, v2, v1);
}

void sub_1A401A83C()
{
  v0 = sub_1A5243754();
  MEMORY[0x1EEE9AC00](v0);
  v5[10] = v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5[7] = v5 - v3;
  sub_1A401E6E0(0, &unk_1EB124B28, off_1E7721040, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A5245C34();
}

void sub_1A401B728(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A401EAB0(qword_1EB16DE30, type metadata accessor for PlayButtonModel, &unk_1A531222C);
    sub_1A52415C4();
  }
}

void sub_1A401B858()
{
  v1 = v0;
  v2 = *(v0 + 96);
  if (v2)
  {
    v2 = [v2 mainModel];
  }

  v11 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_storyMainModel);
  *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_storyMainModel) = v2;
  v3 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_storyMainModel;
  v4 = *(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_storyMainModel);
  v5 = v2;
  if (!v4)
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v11)
  {
    goto LABEL_7;
  }

  sub_1A3C52C70(0, &qword_1EB126C80, off_1E771FFB0);
  v6 = v4;
  v7 = v11;
  v8 = sub_1A524DBF4();

  if ((v8 & 1) == 0)
  {
    v4 = *(v1 + v3);
    if (v4)
    {
LABEL_7:
      swift_allocObject();
      swift_weakInit();
      v4;

      sub_1A524D1A4();
    }

LABEL_9:
    v9 = (v1 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_storyMainModelObservation);
    *v9 = 0;
    v9[1] = 0;
    swift_unknownObjectRelease();
    v10 = sub_1A4018384();
    [v10 setNeedsUpdateOf_];
  }

LABEL_10:
}

void sub_1A401BA24()
{
  v1 = v0;
  if (*(v0 + 24) != 1 || (sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328), v2 = [swift_getObjCClassFromMetadata() sharedInstance], v3 = objc_msgSend(v2, sel_enableSolariumDetailsView), v2, (v3 & 1) != 0))
  {
    __swift_project_boxed_opaque_existential_1(v1 + 16, *(v1 + 19));
    sub_1A5245D74();
  }

  v4 = *(v1 + 12);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_storyMainModel);
    if (v5)
    {
      v19 = v5;
      v6 = v4;
      v7 = [v6 chromeTitleInfo];
      v8 = [v7 title];
      if (v8)
      {
        v9 = v8;
        sub_1A524C674();
      }

      v10 = [v7 subtitle];
      if (v10)
      {
        v11 = v10;
        sub_1A524C674();
      }

      v12 = [v7 subtitleSymbolName];
      if (v12)
      {
        v13 = v12;
        sub_1A524C674();
      }

      *(swift_allocObject() + 16) = v6;
      v14 = v6;
      if (([v19 isFirstSegmentVisible] & 1) != 0 || objc_msgSend(v14, sel_viewMode) != 1)
      {
        MEMORY[0x1A590D320]();
        v17 = 0.0;
      }

      else
      {
        v15 = [v14 wantsRelatedOverlayVisible];
        v16 = MEMORY[0x1A590D320]();
        v17 = 0.0;
        if ((v15 & 1) == 0 && (v16 & 1) == 0)
        {
          v17 = v1[2];
        }
      }

      sub_1A40196F0(v17);

      sub_1A5246134();
    }
  }

  sub_1A524E6E4();
  __break(1u);
}

id sub_1A401BE24(void *a1)
{
  v2 = [a1 showSongInTitleWhenPaused] ^ 1;

  return [a1 setShowSongInTitleWhenPaused_];
}

double sub_1A401BE88(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);

  return result;
}

uint64_t sub_1A401BED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1A524DF24();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  sub_1A4020054(a2, v28, &qword_1EB12ACC8, &qword_1EB12ACD0, &protocol descriptor for PhotosViewBannerModel, sub_1A3E792C4);
  sub_1A3E792C4(0, &qword_1EB12ACC8, &qword_1EB12ACD0, &protocol descriptor for PhotosViewBannerModel);
  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  if (v15)
  {
    v16(v10, 0, 1, AssociatedTypeWitness);
    (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
    v17 = *(a4 + 48);
    v28[3] = swift_getAssociatedTypeWitness();
    v28[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v28);
    v17(v14, a3, a4);
    v18 = *(v25 + 104);
    v19 = MEMORY[0x1E69C2688];
    sub_1A4020054(v28, v27, &qword_1EB124D38, &qword_1EB124D50, MEMORY[0x1E69C2688], sub_1A3E792C4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v26 = v18;
    sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
    sub_1A52415C4();

    (*(v11 + 8))(v14, AssociatedTypeWitness);
    sub_1A401FFF4(v28, &qword_1EB124D38, &qword_1EB124D50, v19, sub_1A3E792C4);
    return sub_1A401FFF4(v27, &qword_1EB124D38, &qword_1EB124D50, v19, sub_1A3E792C4);
  }

  else
  {
    v16(v10, 1, 1, AssociatedTypeWitness);
    (*(v22 + 8))(v10, v23);
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A401C344()
{
  MEMORY[0x1A590F020](v0 + 88);

  __swift_destroy_boxed_opaque_existential_0((v0 + 128));

  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE25CombinedTitleOverlayModel_photosTitleStyle;
  v2 = sub_1A5243754();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A5245C34();
}

uint64_t sub_1A401C4B0(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = sub_1A52439B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__position;
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  sub_1A402036C(&qword_1EB1305E8, MEMORY[0x1E69C2748], MEMORY[0x1E69C2750]);
  v10 = sub_1A524C594();
  v11 = *(v6 + 8);
  v11(v8, v5);
  if (v10)
  {
    swift_beginAccess();
    (*(v6 + 24))(v3 + v9, a1, v5);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v14[-2] = v3;
    v14[-1] = a1;
    v14[1] = v3;
    sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
    sub_1A52415C4();
  }

  return (v11)(a1, v5);
}

double sub_1A401C730()
{
  swift_getKeyPath();
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415D4();

  return *(v0 + 56);
}

double sub_1A401C7D0@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415D4();

  result = *(v3 + 56);
  *a2 = result;
  return result;
}

uint64_t sub_1A401C970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

double sub_1A401CACC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415D4();

  return *(v2 + *a2);
}

double sub_1A401CB80@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, double *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415D4();

  result = *(v6 + *a3);
  *a4 = result;
  return result;
}

uint64_t sub_1A401CCA8@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415D4();

  v8 = *a2;
  swift_beginAccess();
  v9 = (a3)(0);
  return (*(*(v9 - 8) + 16))(a4, v11 + v8, v9);
}

uint64_t sub_1A401CDD0@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t (*a4)(void, __n128)@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415D4();

  v9 = *a3;
  swift_beginAccess();
  v10 = (a4)(0);
  return (*(*(v10 - 8) + 16))(a5, v8 + v9, v10);
}

uint64_t sub_1A401CF94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__banner;
  swift_beginAccess();
  return sub_1A4020054(v3 + v4, a2, &qword_1EB124D38, &qword_1EB124D50, MEMORY[0x1E69C2688], sub_1A3E792C4);
}

uint64_t sub_1A401D088(uint64_t a1, uint64_t *a2)
{
  v2 = MEMORY[0x1E69C2688];
  sub_1A4020054(a1, v4, &qword_1EB124D38, &qword_1EB124D50, MEMORY[0x1E69C2688], sub_1A3E792C4);
  swift_getKeyPath();
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415C4();

  return sub_1A401FFF4(v4, &qword_1EB124D38, &qword_1EB124D50, v2, sub_1A3E792C4);
}

uint64_t sub_1A401D1C4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__banner;
  swift_beginAccess();
  sub_1A401EC28(a2, a1 + v4);
  return swift_endAccess();
}

double sub_1A401D228@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415D4();

  v4 = *(v3 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__action);
  v5 = *(v3 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__action + 8);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1A3C66EE8(v4, v5);
}

double sub_1A401D320(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1A3D6069C;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A3C66EE8(v2, v3);
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415C4();
  sub_1A3C784D4(v5, v4);

  return result;
}

void sub_1A401D47C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__style;
  v2 = sub_1A5243754();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__position;
  v4 = sub_1A52439B4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1A5245C34();
}

double sub_1A401D6C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415D4();

  return *(v4 + *a4);
}

uint64_t sub_1A401D790@<X0>(uint64_t *a2@<X3>, uint64_t (*a3)(void, __n128)@<X4>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
  sub_1A52415D4();

  v8 = *a2;
  swift_beginAccess();
  v9 = (a3)(0);
  return (*(*(v9 - 8) + 16))(a4, v11 + v8, v9);
}

double sub_1A401D894@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A401EAB0(qword_1EB16DE30, type metadata accessor for PlayButtonModel, &unk_1A531222C);
  sub_1A52415D4();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

uint64_t sub_1A401D964()
{
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE15PlayButtonModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A401DA00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697E7E0];
  v9 = MEMORY[0x1E697DCB8];
  sub_1A401E6E0(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  sub_1A4020054(v2, &v17 - v11, &qword_1EB1248A0, v8, v9, sub_1A401E6E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1A5248714();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = sub_1A524D254();
    v16 = sub_1A524A014();
    sub_1A5246DF4(v15, &dword_1A3C1C000, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1A401DC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v10 = a1;
  v7 = sub_1A5243754();
  v11 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v6[12] = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A52439B4();
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A401E6E0(0, &qword_1EB124AC0, off_1E7721130, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1A5245C34();
}

void sub_1A401E6E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A401E7AC(uint64_t a1)
{
  result = sub_1A5243754();
  if (v2 <= 0x3F)
  {
    sub_1A5245C34();
  }

  return result;
}

uint64_t sub_1A401E90C(uint64_t a1)
{
  result = sub_1A5243754();
  if (v2 <= 0x3F)
  {
    result = sub_1A52439B4();
    if (v3 <= 0x3F)
    {
      sub_1A5245C34();
    }
  }

  return result;
}

uint64_t sub_1A401EAB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A401EB20(uint64_t a1)
{
  type metadata accessor for CombinedTitleOverlayModel(319);
  if (v1 <= 0x3F)
  {
    sub_1A401E6E0(319, &qword_1EB124710, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A401EC28(uint64_t a1, uint64_t a2)
{
  sub_1A3E792C4(0, &qword_1EB124D38, &qword_1EB124D50, MEMORY[0x1E69C2688]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1A401ECD0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__fractionFloating) = result;
  return result;
}

double sub_1A401ECE8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__bottomInset[0]) = result;
  return result;
}

double sub_1A401ED34()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 56) = result;
  return result;
}

void sub_1A401ED44(uint64_t a1)
{
  if (!qword_1EB130568)
  {
    sub_1A401E6E0(255, &qword_1EB130570, sub_1A401EDD8, MEMORY[0x1E6981F40]);
    sub_1A401F2D0();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130568);
    }
  }
}

void sub_1A401EDD8(uint64_t a1, double a2)
{
  if (!qword_1EB130578)
  {
    sub_1A401EE48(255);
    sub_1A401F220(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB130578);
    }
  }
}

void sub_1A401EE48(uint64_t a1)
{
  if (!qword_1EB130580)
  {
    sub_1A401E6E0(255, &qword_1EB130588, sub_1A401EF34, MEMORY[0x1E69E6720]);
    type metadata accessor for IndividualTitleOverlayModel(255);
    sub_1A401EFF4();
    sub_1A401EAB0(&qword_1EB181268, type metadata accessor for IndividualTitleOverlayModel, &unk_1A5312298);
    v1 = sub_1A52430C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130580);
    }
  }
}

void sub_1A401EF34(uint64_t a1)
{
  if (!qword_1EB130590)
  {
    sub_1A401EF94(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130590);
    }
  }
}

void sub_1A401EF94(uint64_t a1)
{
  if (!qword_1EB130598)
  {
    sub_1A3EC1940(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130598);
    }
  }
}

unint64_t sub_1A401EFF4()
{
  result = qword_1EB1305A0;
  if (!qword_1EB1305A0)
  {
    sub_1A401E6E0(255, &qword_1EB130588, sub_1A401EF34, MEMORY[0x1E69E6720]);
    sub_1A401F09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1305A0);
  }

  return result;
}

unint64_t sub_1A401F09C()
{
  result = qword_1EB1305A8;
  if (!qword_1EB1305A8)
  {
    sub_1A401EF34(255);
    sub_1A401F11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1305A8);
  }

  return result;
}

unint64_t sub_1A401F11C()
{
  result = qword_1EB1305B0;
  if (!qword_1EB1305B0)
  {
    sub_1A401EF94(255);
    sub_1A401F1CC();
    sub_1A402036C(&qword_1EB122088, sub_1A3EC1940, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1305B0);
  }

  return result;
}

unint64_t sub_1A401F1CC()
{
  result = qword_1EB1709B0;
  if (!qword_1EB1709B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1709B0);
  }

  return result;
}

void sub_1A401F220(uint64_t a1)
{
  if (!qword_1EB1305C0)
  {
    type metadata accessor for IndividualTitleOverlayModel(255);
    sub_1A401EAB0(&qword_1EB181268, type metadata accessor for IndividualTitleOverlayModel, &unk_1A5312298);
    v1 = sub_1A52430C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1305C0);
    }
  }
}

unint64_t sub_1A401F2D0()
{
  result = qword_1EB1305C8;
  if (!qword_1EB1305C8)
  {
    sub_1A401E6E0(255, &qword_1EB130570, sub_1A401EDD8, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1305C8);
  }

  return result;
}

void sub_1A401F378(uint64_t a1)
{
  if (!qword_1EB1305D8)
  {
    sub_1A401E6E0(255, &qword_1EB130570, sub_1A401EDD8, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1305D8);
    }
  }
}

void sub_1A401F410(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A5249B44();
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A401F47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A401F4E0(double a1, double a2)
{
  type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView(0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 32) = a1;
    *(Strong + 40) = a2;
  }

  if (swift_weakLoadStrong())
  {
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      v7[4] = sub_1A4017554;
      v7[5] = 0;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 1107296256;
      v7[2] = sub_1A3D7692C;
      v7[3] = &block_descriptor_63;
      v6 = _Block_copy(v7);
      [v5 performChanges_];
      _Block_release(v6);
    }
  }
}

void sub_1A401F61C()
{
  type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView(0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 16);

    v2 = *(v1 + 112);

    swift_getKeyPath();
    sub_1A401EAB0(&unk_1EB181258, type metadata accessor for IndividualTitleOverlayModel, &unk_1A53122F8);
    sub_1A52415D4();

    v3 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__action);
    v4 = *(v2 + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__action + 8);
    sub_1A3C66EE8(v3, v4);

    if (v3)
    {
      v3(v5);
      sub_1A3C784D4(v3, v4);
    }
  }
}

uint64_t objectdestroyTm_19()
{
  v1 = (type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  swift_weakDestroy();
  v3 = v1[8];
  sub_1A401E6E0(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5248714();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A401F8D0()
{
  type metadata accessor for PhotosDynamicTitleOverlayController.OverlayView(0);
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v2[4] = sub_1A40178A4;
      v2[5] = 0;
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 1107296256;
      v2[2] = sub_1A3D7692C;
      v2[3] = &block_descriptor_75;
      v1 = _Block_copy(v2);
      [Strong performChanges_];
      _Block_release(v1);
    }
  }
}

uint64_t sub_1A401F9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1A401FA48()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_1A401FA58()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC12PhotosUICoreP33_17E0D3DB8B1D32E078049678A81EA3DE27IndividualTitleOverlayModel__action);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_1A3C66EE8(v1, v2);
  return sub_1A3C784D4(v4, v5);
}

void sub_1A401FAB0()
{
  v1 = *(v0 + 16);
  v3[4] = sub_1A401BE24;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1A3D59380;
  v3[3] = &block_descriptor_70_0;
  v2 = _Block_copy(v3);
  [v1 performChanges_];
  _Block_release(v2);
}

void sub_1A401FB58(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = *(Strong + 176);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  *(Strong + 176) = v7;
  if ((a2 & 0x50) != 0)
  {
    v8 = sub_1A4018384();
    [v8 setNeedsUpdateOf_];

    v7 = *(v4 + 176);
  }

  v6 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v6)
  {
    goto LABEL_11;
  }

  *(v4 + 176) = v9;
  if (!v9)
  {
    v10 = sub_1A4018384();
    [v10 updateIfNeeded];
  }
}

void sub_1A401FC1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_1A401FC6C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = sub_1A4018384();
    [v1 updateIfNeeded];
  }

  return result;
}

uint64_t sub_1A401FD08(uint64_t *a1, uint64_t (*a2)(void, __n128))
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *a1;
  swift_beginAccess();
  v7 = (a2)(0);
  (*(*(v7 - 8) + 24))(v5 + v6, v4, v7);
  return swift_endAccess();
}

void sub_1A401FDAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = *(Strong + 176);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  *(Strong + 176) = v7;
  if ((a2 & 8) != 0)
  {
    v8 = sub_1A4018384();
    [v8 setNeedsUpdateOf_];
  }

  if ((a2 & 0x40) != 0)
  {
    v9 = sub_1A4018384();
    [v9 setNeedsUpdateOf_];
  }

  if ((a2 & 0x800000000A002) != 0)
  {
    v10 = sub_1A4018384();
    [v10 setNeedsUpdateOf_];
  }

  v11 = *(v4 + 176);
  v6 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  if (v6)
  {
    goto LABEL_15;
  }

  *(v4 + 176) = v12;
  if (!v12)
  {
    v13 = sub_1A4018384();
    [v13 updateIfNeeded];
  }
}

void sub_1A401FEBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = *(Strong + 176);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(Strong + 176) = v7;
  sub_1A401A20C(a2, Strong);
  v8 = *(v4 + 176);
  v6 = __OFSUB__(v8, 1);
  v9 = v8 - 1;
  if (v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *(v4 + 176) = v9;
  if (!v9)
  {
    v10 = sub_1A4018384();
    [v10 updateIfNeeded];
  }
}

uint64_t sub_1A401FF60()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A4018720(v3, v4, v5, v2);
}

uint64_t sub_1A401FFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A4020054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

double sub_1A40200C8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A4018660();
  }

  return result;
}

uint64_t sub_1A402011C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A401A788(v3, v4, v5, v2);
}

unint64_t sub_1A40201C0()
{
  result = qword_1EB1305F0;
  if (!qword_1EB1305F0)
  {
    sub_1A401F410(255, &qword_1EB1305E0, sub_1A401F358);
    sub_1A402028C();
    sub_1A402036C(&qword_1EB130608, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1305F0);
  }

  return result;
}

unint64_t sub_1A402028C()
{
  result = qword_1EB1305F8;
  if (!qword_1EB1305F8)
  {
    sub_1A401F358(255);
    sub_1A402036C(&qword_1EB130600, sub_1A401ED44, MEMORY[0x1E6981880]);
    sub_1A402036C(&qword_1EB130608, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1305F8);
  }

  return result;
}

uint64_t sub_1A402036C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A40203B8()
{
  result = qword_1EB1709C0[0];
  if (!qword_1EB1709C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1709C0);
  }

  return result;
}

uint64_t TungstenHostingView.init(hostingController:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for TungstenHostingView(0);
  sub_1A3C52C70(0, &qword_1EB126800, off_1E771DFC8);
  result = sub_1A5247C74();
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for TungstenHostingView(uint64_t a1)
{
  result = qword_1EB1895A0;
  if (!qword_1EB1895A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1A40205A4@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(PXGHostingLayerVisibilityInfo) init];
  *a1 = result;
  return result;
}

void TungstenHostingView.body.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TungstenHostingView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A3C52C70(0, &unk_1EB126B88, off_1E771DFC0);
  sub_1A40207BC(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1A4020888(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1A52481D4();
  sub_1A40207BC(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = swift_allocObject();
  sub_1A4020888(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v6);
  sub_1A40209D4(0);
  v10 = (a1 + *(v9 + 36));
  *v10 = sub_1A40209CC;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  sub_1A40207BC(v1, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  sub_1A4020888(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v6);
  sub_1A4020B34(0);
  v13 = (a1 + *(v12 + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_1A4020A60;
  v13[3] = v11;
}

uint64_t sub_1A40207BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TungstenHostingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4020820(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4020888(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TungstenHostingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1A40208EC(void *a1)
{
  v3 = *(type metadata accessor for TungstenHostingView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  sub_1A4020820(0, &qword_1EB130618, &qword_1EB126800, off_1E771DFC8, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  [a1 setVisibilityInfo_];

  return [a1 setHostingController_];
}

void sub_1A40209D4(uint64_t a1)
{
  if (!qword_1EB128760)
  {
    sub_1A4020820(255, &qword_1EB128968, &unk_1EB126B88, off_1E771DFC0, MEMORY[0x1E697E028]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128760);
    }
  }
}

void sub_1A4020A68(char a1)
{
  type metadata accessor for TungstenHostingView(0);
  sub_1A4020820(0, &qword_1EB130618, &qword_1EB126800, off_1E771DFC8, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  [v2 setIsVisible_];
}

void sub_1A4020B34(uint64_t a1)
{
  if (!qword_1EB128410)
  {
    sub_1A40209D4(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128410);
    }
  }
}

uint64_t sub_1A4020B98@<X0>(void *a1@<X8>)
{
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v2 = sub_1A524D474();
  v3 = sub_1A524D474();
  v4 = objc_allocWithZone(PXGHostingController);
  v8[4] = sub_1A4020F04;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1A3D77CC4;
  v8[3] = &block_descriptor_76;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithClientQueue:v2 layoutQueue:v3 initialConfiguration:v5];

  _Block_release(v5);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for TungstenHostingView(0);
    sub_1A3C52C70(0, &qword_1EB126800, off_1E771DFC8);
    result = sub_1A5247C74();
    *a1 = v6;
  }

  return result;
}

id sub_1A4020D1C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(type metadata accessor for TungstenHostingView_Previews.SampleGridLayout(a1, a2));

  return [v2 init];
}

id sub_1A4020E34(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TungstenHostingView_Previews.SampleGridLayout(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A4020E6C(uint64_t a1)
{
  v2 = sub_1A4021320();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A4020EB8(uint64_t a1)
{
  v2 = sub_1A4021320();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

id sub_1A4020F04(void *a1)
{
  v4[4] = sub_1A4020D1C;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3F6EAB4;
  v4[3] = &block_descriptor_16_0;
  v2 = _Block_copy(v4);
  [a1 setRootLayoutPromise_];
  _Block_release(v2);
  [a1 setReferenceSize_];
  return [a1 setIsVisible_];
}

unint64_t sub_1A4021000()
{
  result = qword_1EB130610;
  if (!qword_1EB130610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130610);
  }

  return result;
}

void sub_1A4021098(uint64_t a1)
{
  sub_1A3C52C70(319, &unk_1EB1269D0, off_1E771DFB0);
  if (v1 <= 0x3F)
  {
    sub_1A4020820(319, &qword_1EB130618, &qword_1EB126800, off_1E771DFC8, MEMORY[0x1E697DA80]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A40211C0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4021244()
{
  result = qword_1EB128970;
  if (!qword_1EB128970)
  {
    sub_1A4020820(255, &qword_1EB128968, &unk_1EB126B88, off_1E771DFC0, MEMORY[0x1E697E028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128970);
  }

  return result;
}

unint64_t sub_1A40212C8()
{
  result = qword_1EB12A398;
  if (!qword_1EB12A398)
  {
    type metadata accessor for TungstenHostingView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A398);
  }

  return result;
}

unint64_t sub_1A4021320()
{
  result = qword_1EB130680;
  if (!qword_1EB130680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130680);
  }

  return result;
}

uint64_t sub_1A402139C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A40213F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 120))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_1A4021484(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 144))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_1A4021510(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 168))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_1A402159C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A402139C(&qword_1EB12AE48, type metadata accessor for ConcretePhotosDynamicHeaderInsets, &unk_1A5312BE4);

  sub_1A5245714();
}

void sub_1A402165C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 192))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_1A40216C0(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A402139C(&qword_1EB12AE48, type metadata accessor for ConcretePhotosDynamicHeaderInsets, &unk_1A5312BE4);

  sub_1A5245724();
}

void sub_1A4021788(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A402139C(&qword_1EB12AE48, type metadata accessor for ConcretePhotosDynamicHeaderInsets, &unk_1A5312BE4);

  sub_1A5245724();
}

void sub_1A4021850()
{
  type metadata accessor for ConcretePhotosDynamicHeaderInsets.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A402139C(&unk_1EB12AE60, type metadata accessor for ConcretePhotosDynamicHeaderInsets.Mutator, &unk_1A5312AB8);
  sub_1A52456D4();
}

void sub_1A4021978(uint64_t a1)
{
  swift_allocObject();
  swift_getKeyPath();
  sub_1A402139C(&unk_1EB12AE60, type metadata accessor for ConcretePhotosDynamicHeaderInsets.Mutator, &unk_1A5312AB8);
  sub_1A52456D4();
}

void sub_1A4021AC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 128))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_1A4021B78(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A4021C30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 152))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_1A4021CE0(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A4021D98(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 176))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_1A4021E48(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A4021F00(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A4021F70(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 200))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

void sub_1A4022020(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A40220A8(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

void sub_1A402214C(uint64_t a1)
{
  if (!qword_1EB128F88)
  {
    type metadata accessor for ConcretePhotosDynamicHeaderInsets.Mutator(255);
    type metadata accessor for UIEdgeInsets(255);
    sub_1A402139C(&unk_1EB12AE60, type metadata accessor for ConcretePhotosDynamicHeaderInsets.Mutator, &unk_1A5312AB8);
    sub_1A52456C4();
  }
}

uint64_t sub_1A40221F8()
{

  v1 = OBJC_IVAR____TtCC12PhotosUICore33ConcretePhotosDynamicHeaderInsets7Mutator__mainContentInsets;
  sub_1A402214C(0);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtCC12PhotosUICore33ConcretePhotosDynamicHeaderInsets7Mutator__floatingAreaInsets, v3);
  v4(v0 + OBJC_IVAR____TtCC12PhotosUICore33ConcretePhotosDynamicHeaderInsets7Mutator__maximumFloatingAreaInsets, v3);
  v4(v0 + OBJC_IVAR____TtCC12PhotosUICore33ConcretePhotosDynamicHeaderInsets7Mutator__safeAreaInsets, v3);

  return swift_deallocClassInstance();
}

void sub_1A4022304(uint64_t a1)
{
  if (!qword_1EB128F48)
  {
    type metadata accessor for ConcretePhotosDynamicHeaderInsets(255);
    type metadata accessor for UIEdgeInsets(255);
    sub_1A402139C(&qword_1EB12AE48, type metadata accessor for ConcretePhotosDynamicHeaderInsets, &unk_1A5312BE4);
    sub_1A5245764();
  }
}

uint64_t sub_1A40223B0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore33ConcretePhotosDynamicHeaderInsets__mainContentInsets;
  sub_1A4022304(0);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC12PhotosUICore33ConcretePhotosDynamicHeaderInsets__floatingAreaInsets, v3);
  v4(v0 + OBJC_IVAR____TtC12PhotosUICore33ConcretePhotosDynamicHeaderInsets__maximumFloatingAreaInsets, v3);
  v4(v0 + OBJC_IVAR____TtC12PhotosUICore33ConcretePhotosDynamicHeaderInsets__safeAreaInsets, v3);

  return swift_deallocClassInstance();
}

void sub_1A40224FC()
{
  sub_1A4022304(0);
  MEMORY[0x1EEE9AC00](v0);
  type metadata accessor for ConcretePhotosDynamicHeaderInsets(0);
  type metadata accessor for UIEdgeInsets(0);
  sub_1A402139C(&qword_1EB12AE48, type metadata accessor for ConcretePhotosDynamicHeaderInsets, &unk_1A5312BE4);
  sub_1A402139C(&unk_1EB126C68, type metadata accessor for UIEdgeInsets, MEMORY[0x1E69DC3C0]);
  sub_1A5245754();
}

unint64_t sub_1A40227D0()
{
  result = qword_1EB12AA78;
  if (!qword_1EB12AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AA78);
  }

  return result;
}

unint64_t sub_1A4022828()
{
  result = qword_1EB12AA90;
  if (!qword_1EB12AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AA90);
  }

  return result;
}

unint64_t sub_1A4022880()
{
  result = qword_1EB12AA88;
  if (!qword_1EB12AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AA88);
  }

  return result;
}

unint64_t sub_1A40228D8()
{
  result = qword_1EB12AA98;
  if (!qword_1EB12AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AA98);
  }

  return result;
}

unint64_t sub_1A4022930()
{
  result = qword_1EB12AA80;
  if (!qword_1EB12AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AA80);
  }

  return result;
}

uint64_t sub_1A4022A94(uint64_t a1)
{
  *(a1 + 8) = sub_1A402139C(&qword_1EB12AE58, type metadata accessor for ConcretePhotosDynamicHeaderInsets, &unk_1A5312B74);
  result = sub_1A402139C(&unk_1EB12AE30, type metadata accessor for ConcretePhotosDynamicHeaderInsets, &unk_1A5312B3C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A4022BA8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 216))();
  *a1 = result;
  return result;
}

uint64_t sub_1A4022BF4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ConcretePhotosDynamicHeaderInsets(0);
  result = sub_1A524E434();
  *a2 = result;
  return result;
}

unint64_t sub_1A4022C3C()
{
  result = qword_1EB12AAA0;
  if (!qword_1EB12AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AAA0);
  }

  return result;
}

void sub_1A4022C90(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ConcretePhotosDynamicHeaderInsets(0);
  sub_1A402139C(&qword_1EB12AE48, type metadata accessor for ConcretePhotosDynamicHeaderInsets, &unk_1A5312BE4);

  sub_1A5245C54();
}

void sub_1A4022D64(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ConcretePhotosDynamicHeaderInsets(0);
  sub_1A402139C(&qword_1EB12AE40, type metadata accessor for ConcretePhotosDynamicHeaderInsets, &unk_1A5312B04);

  sub_1A5245F44();
}

id sub_1A4022E38@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore33ConcretePhotosDynamicHeaderInsets_observable);
  *a1 = v2;
  return v2;
}

void sub_1A4022E68(uint64_t a1)
{
  sub_1A4022304(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A4022F14(uint64_t a1)
{
  sub_1A402214C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1A4022FE0(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A4023364(0, a3);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A402357C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a2;
  sub_1A40233E4(0);
  sub_1A402349C();
  sub_1A5249A64();
  v17[0] = sub_1A524B414();
  sub_1A5249A44();

  (*(v6 + 8))(v8, v5);
  sub_1A524A054();
  v17[3] = v10;
  v17[4] = sub_1A40237A0(&qword_1EB1306C8, sub_1A402357C, MEMORY[0x1E697C858]);
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_1A5249A54();
  (*(v11 + 8))(v13, v10);
  return MEMORY[0x1A5908670](v17);
}

id sub_1A4023330(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ComposeRecipientAddRecipientTableViewCell(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A4023364(uint64_t a1, double a2)
{
  if (!qword_1EB130690)
  {
    sub_1A40233E4(255);
    sub_1A402349C();
    v2 = sub_1A5249A74();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB130690);
    }
  }
}

void sub_1A40233E4(uint64_t a1)
{
  if (!qword_1EB130698)
  {
    sub_1A5243494();
    sub_1A402344C();
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130698);
    }
  }
}

void sub_1A402344C()
{
  if (!qword_1EB1277C8)
  {
    v0 = sub_1A5249F44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1277C8);
    }
  }
}

unint64_t sub_1A402349C()
{
  result = qword_1EB1306A0;
  if (!qword_1EB1306A0)
  {
    sub_1A40233E4(255);
    sub_1A40237A0(&qword_1EB1306A8, MEMORY[0x1E69C24D8], MEMORY[0x1E69C24D0]);
    sub_1A40237A0(&qword_1EB1277D0, sub_1A402344C, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1306A0);
  }

  return result;
}

void sub_1A402357C(uint64_t a1)
{
  if (!qword_1EB1306B0)
  {
    sub_1A40233E4(255);
    sub_1A4023638();
    sub_1A402349C();
    sub_1A40237A0(&qword_1EB1306C0, sub_1A4023638, MEMORY[0x1E697CCB0]);
    v1 = sub_1A5249A74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1306B0);
    }
  }
}

void sub_1A4023638()
{
  if (!qword_1EB1306B8)
  {
    v0 = sub_1A524A004();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1306B8);
    }
  }
}

void sub_1A4023690(uint64_t a1@<X8>)
{
  v2 = sub_1A524C634();
  v3 = PXLocalizedString(v2);

  sub_1A524C674();
  v4 = objc_opt_self();
  [v4 imageDiameter];
  [v4 imageInset];
  sub_1A5243484();
  KeyPath = swift_getKeyPath();
  v6 = sub_1A5247314();
  sub_1A40233E4(0);
  v8 = a1 + *(v7 + 36);
  *v8 = KeyPath;
  *(v8 + 8) = (v6 & 1) == 0;
}

uint64_t sub_1A40237A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

PhotosUICore::LemonadeDetailsViewScrollDetentsProvider::DetentIdentifier_optional __swiftcall LemonadeDetailsViewScrollDetentsProvider.DetentIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LemonadeDetailsViewScrollDetentsProvider.DetentIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x6574654464697267;
  }
}

uint64_t sub_1A40238AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x80000001A53C3370;
  if (v2 == 1)
  {
    v4 = 0x80000001A53C3370;
  }

  else
  {
    v4 = 0x80000001A53C3390;
  }

  if (*a1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0x6574654464697267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA0000000000746ELL;
  }

  if (*a2 != 1)
  {
    v3 = 0x80000001A53C3390;
  }

  if (*a2)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = 0x6574654464697267;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = 0xEA0000000000746ELL;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A524EAB4();
  }

  return v9 & 1;
}

uint64_t sub_1A4023980()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A4023A30(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A4023ACC(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

void sub_1A4023B84(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000746ELL;
  v4 = 0x80000001A53C3370;
  if (v2 != 1)
  {
    v4 = 0x80000001A53C3390;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0x6574654464697267;
  }

  if (!v5)
  {
    v3 = v4;
  }

  *a1 = v6;
  a1[1] = v3;
}

void LemonadeDetailsViewScrollDetentsProvider.init(viewModel:specManager:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider__scrollDetents] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider_viewModelObservation];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider_specManagerObservation];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider_spec] = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider_dataSource] = 0;
  v7 = swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider_specManager] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for LemonadeDetailsViewScrollDetentsProvider(v7, v8);
  v9 = a2;
  v10 = objc_msgSendSuper2(&v15, sel_init);
  v11 = [a1 currentDataSource];
  v12 = *&v10[OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider_dataSource];
  *&v10[OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider_dataSource] = v11;

  v13 = [v9 spec];
  v14 = *&v10[OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider_spec];
  *&v10[OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider_spec] = v13;

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1A524D1A4();
}

void sub_1A4023EA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if (a2)
      {
        sub_1A40247C8([v5 currentDataSource]);
      }

      if ((a2 & 0xC00000000000) != 0)
      {
        sub_1A40248C8();
      }
    }
  }
}

void sub_1A4023F40(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      sub_1A40247AC([*(Strong + OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider_specManager) spec]);
    }
  }
}

void sub_1A4023FFC()
{
  sub_1A40247AC([*(v0 + OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider_specManager) spec]);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4024050()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for PhotosDynamicTitleOverlayController(0, v1);
    sub_1A524D554();
  }

  return result;
}

void *sub_1A40240E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  v9 = [Strong allowsPreviewHeader];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x90))();
  v7 = sub_1A40251B4(&v9, v5, v6);

  return v7;
}

uint64_t sub_1A4024234(void *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB8))(0, 0);
  if (v3)
  {
    v4 = v3;
    v5 = [v3 identifier];

    v6 = sub_1A524C674();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a1 identifier];
  v10 = sub_1A524C674();
  v12 = v11;

  if (v10 == 0x6574654464697267 && v12 == 0xEA0000000000746ELL)
  {
  }

  else
  {
    v14 = sub_1A524EAB4();

    if ((v14 & 1) == 0)
    {

      return 0;
    }
  }

  if (!v8)
  {
    return 0;
  }

  if (v6 == 0x6574654464697267 && v8 == 0xEA0000000000746ELL)
  {

    return 1;
  }

  else
  {
    v16 = sub_1A524EAB4();

    return v16 & 1;
  }
}

uint64_t sub_1A40243D0(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 identifier];
    sub_1A524C674();

    v3 = sub_1A524E824();

    if (v3)
    {
      if (v3 == 1 || v3 == 2)
      {
        v4 = sub_1A524EAB4();

        return v4 & 1;
      }
    }

    else
    {
    }
  }

  return 1;
}

void *sub_1A40244D4(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1A59097F0](j, a1, a2);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = [v5 identifier];
      v9 = sub_1A524C674();
      v11 = v10;

      if (v9 == 0x6574654464697267 && v11 == 0xEA0000000000746ELL)
      {

        return v6;
      }

      v13 = sub_1A524EAB4();

      if (v13)
      {
        return v6;
      }

      if (v7 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

void *sub_1A4024640(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1A59097F0](j, a1, a2);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = [v5 identifier];
      v9 = sub_1A524C674();
      v11 = v10;

      if (v9 == 0xD000000000000018 && 0x80000001A53C3390 == v11)
      {

        return v6;
      }

      v13 = sub_1A524EAB4();

      if (v13)
      {
        return v6;
      }

      if (v7 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return 0;
}

void sub_1A40247E4(id a1, void *a2, unint64_t *a3, void *a4)
{
  v6 = *(v4 + *a2);
  *(v4 + *a2) = a1;
  if (!a1)
  {
    if (!v6)
    {
      return;
    }

    v10 = v6;
    goto LABEL_8;
  }

  v10 = v6;
  if (!v6)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_1A3C52C70(0, a3, a4);
  a1 = a1;
  v7 = v10;
  v8 = sub_1A524DBF4();

  if ((v8 & 1) == 0)
  {
LABEL_8:
    sub_1A40248C8();

    v9 = v10;
    goto LABEL_9;
  }

  v9 = v7;
LABEL_9:
}

void sub_1A40248C8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider_spec);
  if (v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = v2;
      [v5 safeAreaInsets];
      [v5 layoutReferenceSize];
      v7 = v6;
      type metadata accessor for PhotosDynamicHeaderLayout(0, v8);
      v9 = (COERCE_UNSIGNED_INT64(sub_1A41FB558([v5 layoutReferenceSize])) & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL;
      if ((v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && !v9)
      {
        v10 = [objc_opt_self() px_sharedApplication];
        v11 = [v10 px_firstKeyWindow];

        if (v11)
        {
          [v11 safeAreaInsets];
        }

        type metadata accessor for PhotosDynamicTitleOverlayController(0, v12);
        sub_1A524D554();
      }
    }
  }

  *(v1 + OBJC_IVAR____TtC12PhotosUICore40LemonadeDetailsViewScrollDetentsProvider__scrollDetents) = MEMORY[0x1E69E7CC0];
}

void sub_1A4024CF0(unint64_t a1, __n128 a2)
{
  if (a1 >> 62)
  {
    v4 = sub_1A524E2B4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v5 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v4);
    v7 = v5 + v4;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1A524E2B4();
  v6 = __OFADD__(v15, v4);
  v7 = v15 + v4;
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(v7, 1);
  v8 = *v2;
  v9 = *v2 & 0xFFFFFFFFFFFFFF8;
  sub_1A4025048(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1, v10);
  v12 = v11;

  if (v12 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v8;
    return;
  }

  v13 = *(v9 + 16);
  v6 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v6)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

id LemonadeDetailsViewScrollDetentsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeDetailsViewScrollDetentsProvider.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LemonadeDetailsViewScrollDetentsProvider(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A4025048(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v15 = a2;
    result = sub_1A524E2B4();
    a2 = v15;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (!v6)
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A524D2D4();
      }

      __break(1u);
      goto LABEL_15;
    }

    v8 = a2;
    result = sub_1A524E2B4();
    if (result > v8)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    if (v7 < 1)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_1A4025504(0, v9);
    sub_1A402555C(v10);
    for (i = 0; i != v7; ++i)
    {
      v12 = sub_1A3D5C268(v16, i, a3);
      v14 = *v13;
      (v12)(v16, 0);
      *(v5 + 8 * i) = v14;
    }

    return a3;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_1A40251B4(unsigned __int8 *a1, unint64_t a2, __n128 a3)
{
  v4 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A524E2B4())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](j, a2, a3);
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v7 = *(a2 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v10 = [v7 identifier];
      v11 = sub_1A524C674();
      v13 = v12;

      if (v4)
      {
        if (v4 == 1)
        {
          v14 = 0x80000001A53C3370;
        }

        else
        {
          v14 = 0x80000001A53C3390;
        }

        v15 = 0xD000000000000018;
      }

      else
      {
        v14 = 0xEA0000000000746ELL;
        v15 = 0x6574654464697267;
      }

      if (v11 == v15 && v13 == v14)
      {

        return v8;
      }

      v17 = sub_1A524EAB4();

      if (v17)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  return 0;
}

unint64_t sub_1A4025370()
{
  result = qword_1EB130708;
  if (!qword_1EB130708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130708);
  }

  return result;
}

void sub_1A4025504(uint64_t a1, __n128 a2)
{
  if (!qword_1EB130780)
  {
    sub_1A524D2D4();
  }
}

unint64_t sub_1A402555C(__n128 a1)
{
  result = qword_1EB130788;
  if (!qword_1EB130788)
  {
    sub_1A4025504(255, a1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130788);
  }

  return result;
}

uint64_t sub_1A40255B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A4025608(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 280);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1A40256B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectUnownedAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A4025710(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1A40257A4;
}

void sub_1A40257A4(uint64_t a1, char a2, __n128 a3)
{
  v4 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectUnownedAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v4);
}

void *sub_1A4025828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 296))(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1A4025894(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v5 = *a1;
  v6 = v2;
  return (*(*v3 + 304))(&v5);
}

void sub_1A4025900(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1160))(KeyPath);

  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition);
  v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition + 8);
  if (v3)
  {
    if (v5 != v2)
    {
      v6 = 0;
    }

    if (v6)
    {
      return;
    }

LABEL_9:
    v7 = v2;
    v8 = v3;
    sub_1A4028680(&v7);
    return;
  }

  if (v5 != v2)
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_9;
  }
}

void (*sub_1A40259C8(uint64_t *a1))(double **a1, char a2)
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
  *(v3 + 16) = v1;
  KeyPath = swift_getKeyPath();
  v6 = *v1;
  v7 = *(*v1 + 1160);
  *(v4 + 24) = v7;
  *(v4 + 32) = (v6 + 1160) & 0xFFFFFFFFFFFFLL | 0xA9D3000000000000;
  v7(KeyPath);

  v8 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition;
  *(v4 + 40) = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition;
  v9 = (v1 + v8);
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  *v4 = v10;
  *(v4 + 8) = v9;
  return sub_1A4025AB4;
}

void sub_1A4025AB4(double **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 3);
  v5 = *(*a1 + 2) + *(*a1 + 5);
  v6 = **a1;
  v7 = *(*a1 + 8);
  swift_getKeyPath();
  v4();

  v8 = *(v5 + 8);
  if (a2)
  {
    if (v7)
    {
      if (*v5 != v6)
      {
        v8 = 0;
      }

      if (v8 == 1)
      {
        goto LABEL_16;
      }

LABEL_15:
      v9 = v6;
      v10 = v7;
      sub_1A4028680(&v9);
      goto LABEL_16;
    }
  }

  else if (v7)
  {
    if (*v5 != v6)
    {
      LOBYTE(v8) = 0;
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (*v5 != v6)
  {
    LOBYTE(v8) = 1;
  }

  if (v8)
  {
    goto LABEL_15;
  }

LABEL_16:

  free(v3);
}

void PhotosDynamicHeaderViewModel.ScrollPosition.description.getter(__n128 a1)
{
  v2 = *v1 * 100.0;
  if (*(v1 + 8))
  {
    if (COERCE_UNSIGNED_INT64(fabs(*v1 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (v2 <= -9.22337204e18)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v2 < 9.22337204e18)
    {
LABEL_9:
      v3 = sub_1A524EA44();
      MEMORY[0x1A5907B60](v3);

      MEMORY[0x1A5907B60](37, 0xE100000000000000);
      return;
    }

    __break(1u);
  }

  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v2 < 9.22337204e18)
  {
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
}

uint64_t static PhotosDynamicHeaderViewModel.ScrollPosition.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) != 0 && v2 == v3)
    {
      return 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1A4025D2C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) != 0 && v2 == v3)
    {
      return 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1A4025D84@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result & 1;
  return result;
}

double sub_1A4025E30(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  (*(*v1 + 1160))();

  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible) != v2)
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1168))(v5);
  }

  return result;
}

void (*sub_1A4025F5C(void *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  KeyPath = swift_getKeyPath();
  v6 = *v1;
  v7 = *(*v1 + 1160);
  v4[1] = v7;
  v4[2] = (v6 + 1160) & 0xFFFFFFFFFFFFLL | 0xA9D3000000000000;
  v7(KeyPath);

  v8 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible;
  v4[3] = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible;
  *(v4 + 32) = *(v1 + v8);
  return sub_1A402603C;
}

void sub_1A402603C(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = *(*a1 + 32);
  swift_getKeyPath();
  v6();

  if (a2)
  {
    if ((v7 ^ *(v5 + v4)))
    {
      goto LABEL_5;
    }
  }

  else if ((v7 ^ *(v5 + v4)))
  {
LABEL_5:
    v8 = *v3;
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v8 + 1168))(v10);
  }

  free(v3);
}

uint64_t sub_1A40261F4()
{
  sub_1A402C5B0();
  if ((*(*v0 + 368))())
  {
    swift_allocObject();
    swift_weakInit();

    sub_1A524D1A4();
  }

  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_movieViewModelObservation);
  *v1 = 0;
  v1[1] = 0;

  return swift_unknownObjectRelease();
}

uint64_t (*sub_1A40262EC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A4026340;
}

uint64_t sub_1A4026340(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A40261F4();
  }

  return result;
}

uint64_t sub_1A4026374@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  return result;
}

uint64_t sub_1A40263C8(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 376);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A4026428()
{
  swift_getKeyPath();
  (*(*v0 + 1160))();

  swift_beginAccess();
  v1 = v0[4];
  v2 = v1;
  return v1;
}

void sub_1A40264B0(void *a1)
{
  swift_beginAccess();
  v3 = v1[4];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1168))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB126B30, off_1E77204B0);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[4];
LABEL_8:
  v1[4] = a1;
  v10 = v5;

  sub_1A40261F4();
}

uint64_t (*sub_1A4026630(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1160))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4029350(&qword_1EB12AB28, type metadata accessor for PhotosDynamicHeaderViewModel, &protocol conformance descriptor for PhotosDynamicHeaderViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A40262EC(v4);
  return sub_1A4026780;
}

void sub_1A4026780(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

void sub_1A4026814(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1A524BEE4();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524BFC4();
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  sub_1A3C7CF48(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v35 - v19;
  v21 = *(*v1 + 416);
  if (((v21)(v18) & 1) != v3)
  {
    if ((v21() & 1) != 0 && *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetChromeOpacity) > 0.0)
    {
      sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
      v22 = [swift_getObjCClassFromMetadata() sharedInstance];
      [v22 dynamicHeaderChromeHidingDelay];

      sub_1A52410A4();
      v23 = sub_1A5241144();
      (*(*(v23 - 8) + 56))(v20, 0, 1, v23);
      sub_1A402CBE0(v20);
      sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
      v36 = sub_1A524D474();
      sub_1A524BFA4();
      sub_1A524C014();
      v24 = *(v43 + 8);
      v43 += 8;
      v37 = v24;
      v24(v13, v42);
      v25 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1A402E714;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_138_0;
      v35 = _Block_copy(aBlock);

      sub_1A524BF14();
      v44 = MEMORY[0x1E69E7CC0];
      sub_1A4029350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1A3C7CF48(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      v26 = v41;
      sub_1A524E224();
      v28 = v35;
      v27 = v36;
      MEMORY[0x1A5908790](v16, v9, v6, v35);
      _Block_release(v28);

      (*(v40 + 8))(v6, v26);
      (*(v38 + 8))(v9, v39);
      v37(v16, v42);
    }

    v29 = sub_1A524D234();
    if (qword_1EB1754E0 != -1)
    {
      swift_once();
    }

    v30 = qword_1EB1754E8;
    v31 = os_log_type_enabled(qword_1EB1754E8, v29);
    if (v31)
    {

      v32 = swift_slowAlloc();
      *v32 = 67109120;
      *(v32 + 4) = v21() & 1;

      _os_log_impl(&dword_1A3C1C000, v30, v29, "isFullscreen: %{BOOL}d", v32, 8u);
      v31 = MEMORY[0x1A590EEC0](v32, -1, -1);
    }

    v33 = (v21)(v31);
    v34 = *(v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetContentKind);
    *(v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetContentKind) = v33 & 1;
    LOBYTE(aBlock[0]) = v34;
    sub_1A40299E4(aBlock);
    sub_1A402C5B0();
  }
}

uint64_t sub_1A4026E7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4026EFC()
{
  swift_getKeyPath();
  (*(*v0 + 1160))();

  return v0[40];
}

void sub_1A4026F60(char a1)
{
  v2 = a1 & 1;
  v3 = v1[40];
  if (v3 == v2)
  {
    v1[40] = v2;

    sub_1A4026814(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1168))(v5);
  }
}

BOOL sub_1A4027068()
{
  v1 = sub_1A52425F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524D234();
  if (qword_1EB1754E0 != -1)
  {
    swift_once();
  }

  result = os_log_type_enabled(qword_1EB1754E8, v5);
  if (result)
  {
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v7 = 136315138;
    (*(*v0 + 464))();
    sub_1A4029350(&qword_1EB12D1F8, MEMORY[0x1E69C1F00], MEMORY[0x1E69C1F20]);
    v8 = sub_1A524EA44();
    v10 = v9;
    (*(v2 + 8))(v4, v1);
    sub_1A3C2EF94(v8, v10, &v12);
  }

  return result;
}

BOOL sub_1A4027364(uint64_t a1)
{
  v2 = sub_1A524D234();
  if (qword_1EB1754E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB1754E8;
  result = os_log_type_enabled(qword_1EB1754E8, v2);
  if (result)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = (*(*v1 + 512))();
    _os_log_impl(&dword_1A3C1C000, v3, v2, "movieAlpha: %f", v5, 0xCu);

    JUMPOUT(0x1A590EEC0);
  }

  return result;
}

void sub_1A4027504(uint64_t a1, double a2)
{
  if (*(v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__movieAlpha) == a2)
  {
    *(v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__movieAlpha) = a2;

    sub_1A4027364(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 1168))(v4);
  }
}

BOOL sub_1A4027620()
{
  v1 = sub_1A52425F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524D234();
  if (qword_1EB1754E0 != -1)
  {
    swift_once();
  }

  result = os_log_type_enabled(qword_1EB1754E8, v5);
  if (result)
  {
    v7 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v7 = 136315138;
    (*(*v0 + 560))();
    sub_1A4029350(&qword_1EB12D1F8, MEMORY[0x1E69C1F00], MEMORY[0x1E69C1F20]);
    v8 = sub_1A524EA44();
    v10 = v9;
    (*(v2 + 8))(v4, v1);
    sub_1A3C2EF94(v8, v10, &v12);
  }

  return result;
}

uint64_t sub_1A40278CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_1A52425F4();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a1, v8);
  return a5(v10);
}

uint64_t sub_1A40279B4@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  (*(*v3 + 1160))();

  v6 = *a2;
  swift_beginAccess();
  v7 = sub_1A52425F4();
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_1A4027AB4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v21[2] = a4;
  v22 = a5;
  v21[1] = a3;
  v7 = v5;
  v9 = sub_1A52425F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  swift_beginAccess();
  v14 = *(v10 + 16);
  v14(v12, v7 + v13, v9);
  sub_1A4029350(&qword_1EB129258, MEMORY[0x1E69C1F00], MEMORY[0x1E69C1F10]);
  v23 = a1;
  LOBYTE(a1) = sub_1A524C594();
  v15 = *(v10 + 8);
  v15(v12, v9);
  if (a1)
  {
    v14(v12, v23, v9);
    swift_beginAccess();
    (*(v10 + 24))(v7 + v13, v12, v9);
    v16 = swift_endAccess();
    v22(v16);
    v15(v12, v9);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v18.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v19 = v23;
    v21[-2] = v7;
    v21[-1] = v19;
    (*(*v7 + 1168))(v18);
  }

  return (v15)(v23, v9);
}

uint64_t sub_1A4027D50(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v8 = sub_1A52425F4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a2, v8, v10);
  v13 = *a3;
  swift_beginAccess();
  (*(v9 + 24))(a1 + v13, v12, v8);
  v14 = swift_endAccess();
  a4(v14);
  return (*(v9 + 8))(v12, v8);
}

uint64_t PhotosDynamicHeaderViewModel.ContentKind.description.getter()
{
  if (*v0)
  {
    return 0x6569766F6DLL;
  }

  else
  {
    return 0x77656976657270;
  }
}

uint64_t PhotosDynamicHeaderViewModel.ContentKind.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4027F5C()
{
  if (*v0)
  {
    return 0x6569766F6DLL;
  }

  else
  {
    return 0x77656976657270;
  }
}

double sub_1A4028024(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*(*v2 + 1160))();

  return *(v2 + *a2);
}

void sub_1A4028090(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__chromeOpacity) == a1)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__chromeOpacity) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1168))(v3);
  }
}

void PhotosDynamicHeaderViewModel.init(environmentValues:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetTransitionsState) = 0;
  *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_isChangingDelegatedTransitionsState) = 0;
  v3 = v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_transitionsPauseToken;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentTransitionsState) = 0;
  v4 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKindUpdateDate;
  v5 = sub_1A5241144();
  v6 = *(*(v5 - 8) + 56);
  v6(v2 + v4, 1, 1, v5);
  v7 = (v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_chromeOpacityAnimatorObservation);
  *v7 = 0;
  v7[1] = 0;
  v6(v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__visibleChromeDeadline, 1, 1, v5);
  v8 = (v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_movieViewModelObservation);
  *v8 = 0;
  v8[1] = 0;
  v9 = sub_1A5241604();
  type metadata accessor for DefaultTimeDelegate(v9, v10);
  swift_initStaticObject();
  v11 = v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_timeDelegate;
  swift_beginAccess();
  *(v11 + 8) = &off_1F16F1600;
  v12 = swift_unknownObjectUnownedInit();
  type metadata accessor for PlaceholderPlaybackDelegate(v12, v13);
  swift_initStaticObject();
  swift_beginAccess();
  *(v2 + 24) = &off_1F16F15E0;
  swift_unknownObjectUnownedInit();
  *(v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible) = 0;
  v14 = v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_canPlay) = 0;
  *(v2 + 40) = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKind) = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetContentKind) = 0;
  v15 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__previewState;
  v16 = *MEMORY[0x1E69C1EF8];
  v17 = sub_1A52425F4();
  v18 = *(*(v17 - 8) + 104);
  v18(v2 + v15, v16, v17);
  *(v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__movieAlpha[0]) = 0;
  v18(v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__movieState, v16, v17);
  sub_1A44ACE64();
}

void sub_1A4028570(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible) = v2;

    sub_1A4028BE4(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1168))(v5);
  }
}

void sub_1A4028680(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition;
  v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition);
  v5 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition + 8);
  if (v5)
  {
    if (v4 == *a1)
    {
      v6 = *(a1 + 8);
    }

    else
    {
      v6 = 0;
    }

    if ((v6 & 1) == 0)
    {
LABEL_6:
      KeyPath = swift_getKeyPath();
      v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v1 + 1168))(v8);

      return;
    }
  }

  else
  {
    if (v4 == *a1)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_6;
    }
  }

  *v3 = *a1;
  *(v3 + 8) = v2;
  v10 = v4;
  v11 = v5;
  sub_1A4028EC4(&v10);
}

void sub_1A40287B0(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((a1 & 2) != 0)
    {
      v5 = [*(Strong + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_chromeOpacityAnimator) presentationValue];
      v7 = v6;
      if (v6 != (*(*v4 + 608))(v5))
      {
        if (*(v4 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__chromeOpacity) != v7)
        {
          KeyPath = swift_getKeyPath();
          v9.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
          (*(*v4 + 1168))(v9);

          return;
        }

        *(v4 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__chromeOpacity) = v7;
      }
    }
  }
}

uint64_t sub_1A4028940@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 640))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A4028994(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 648);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1A4028A50(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_timeDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectUnownedAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A4028ABC(uint64_t *a1))(uint64_t a1, char a2, __n128 a3)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_timeDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A4028B5C;
}

void sub_1A4028B5C(uint64_t a1, char a2, __n128 a3)
{
  v4 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectUnownedAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v4);
}

void sub_1A4028BE4(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  v3 = (*v1 + 1160);
  v4 = *v3;
  (*v3)();

  v5 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible) != v2)
  {
    v6 = sub_1A524D234();
    if (qword_1EB1754E0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EB1754E8;
    if (os_log_type_enabled(qword_1EB1754E8, v6))
    {

      v8 = swift_slowAlloc();
      *v8 = 67109120;
      swift_getKeyPath();
      v4();

      *(v8 + 4) = *(v1 + v5);

      _os_log_impl(&dword_1A3C1C000, v7, v6, "_isContentVisible: %{BOOL}d", v8, 8u);
      MEMORY[0x1A590EEC0](v8, -1, -1);
    }

    v9 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetTransitionsState);
    *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetTransitionsState) = (*(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetContentKind) ^ *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKind)) & 1;
    sub_1A4029D44(v9);
    sub_1A402B48C();

    sub_1A402BBF4();
  }
}

uint64_t sub_1A4028DB0()
{
  swift_getKeyPath();
  (*(*v0 + 1160))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible);
}

void sub_1A4028E1C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1160))();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible);
}

void sub_1A4028EC4(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v5 = *(*v1 + 1160);
  (v5)(KeyPath);

  v6 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition);
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition + 8))
  {
    if (v6 == v2)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      return;
    }
  }

  else
  {
    if (v6 == v2)
    {
      v13 = v3;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      return;
    }
  }

  v8 = sub_1A524D234();
  if (qword_1EB1754E0 != -1)
  {
    swift_once();
  }

  if (os_log_type_enabled(qword_1EB1754E8, v8))
  {
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136315138;
    swift_getKeyPath();
    v5();

    PhotosDynamicHeaderViewModel.ScrollPosition.description.getter(v10);
    sub_1A3C2EF94(v11, v12, &v14);
  }

  sub_1A40294C8();
}

void sub_1A40290F8(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1160))();

  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition);
  *(a1 + 8) = v3;
}

void sub_1A4029180(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1160))();

  v4 = *(v3 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition);
  *(a2 + 8) = v4;
}

void sub_1A402920C(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  sub_1A4028680(&v2);
}

uint64_t sub_1A4029264()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 32);
  *(v2 + 32) = v1;
  v4 = v1;

  return sub_1A40261F4();
}

uint64_t type metadata accessor for PhotosDynamicHeaderViewModel(uint64_t a1)
{
  result = qword_1EB1900C0;
  if (!qword_1EB1900C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4029314()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
  sub_1A4026814(v2);
}

uint64_t sub_1A4029350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1A4029468()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__chromeOpacity) = result;
  return result;
}

void sub_1A40294C8()
{
  (*(*v0 + 296))(&v11);
  v1 = v12;
  if (v11 >= 1.0)
  {
    v2 = v12;
  }

  else
  {
    v2 = 0;
  }

  if (v11 < 0.5)
  {
    v1 = 1;
  }

  v3 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_canPlay;
  v4 = v0[OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_canPlay];
  v0[OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_canPlay] = v1;
  if (v1 != v4)
  {
    v5 = sub_1A524D234();
    if (qword_1EB1754E0 != -1)
    {
      swift_once();
    }

    v6 = qword_1EB1754E8;
    if (os_log_type_enabled(qword_1EB1754E8, v5))
    {

      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v0[v3];

      _os_log_impl(&dword_1A3C1C000, v6, v5, "canPlay: %{BOOL}d", v7, 8u);
      MEMORY[0x1A590EEC0](v7, -1, -1);
    }

    sub_1A402BBF4();
  }

  if ((v2 ^ (*(*v0 + 416))()))
  {
    v8 = v0[40];
    if (v2 == v8)
    {
      v0[40] = v2;

      sub_1A4026814(v8);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
      (*(*v0 + 1168))(v10);
    }
  }
}

uint64_t sub_1A4029730@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5241144();
  v4 = *(v3 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 640))(v5);
  v9 = v8;
  ObjectType = swift_getObjectType();
  (*(v9 + 8))(ObjectType, v9);
  swift_unknownObjectRelease();
  v11 = sub_1A524D234();
  if (qword_1EB1754E0 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB1754E8;
  (*(v4 + 16))(v7, a1, v3);
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v13 = 136315138;
    sub_1A4029350(&qword_1EB12AFE8, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v14 = sub_1A524EA44();
    v16 = v15;
    (*(v4 + 8))(v7, v3);
    sub_1A3C2EF94(v14, v16, &v19);
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_1A40299E4(unsigned __int8 *a1)
{
  sub_1A3C7CF48(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17[-1] - v4;
  v6 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetContentKind;
  if (*a1 != *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetContentKind))
  {
    v7 = sub_1A524D234();
    if (qword_1EB1754E0 != -1)
    {
      swift_once();
    }

    if (os_log_type_enabled(qword_1EB1754E8, v7))
    {
      v8 = swift_slowAlloc();
      v17[0] = swift_slowAlloc();
      *v8 = 136315138;
      if (*(v1 + v6))
      {
        v9 = 0x6569766F6DLL;
      }

      else
      {
        v9 = 0x77656976657270;
      }

      if (*(v1 + v6))
      {
        v10 = 0xE500000000000000;
      }

      else
      {
        v10 = 0xE700000000000000;
      }

      sub_1A3C2EF94(v9, v10, v17);
    }

    v11 = sub_1A5241144();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKindUpdateDate;
    swift_beginAccess();
    v13 = MEMORY[0x1E6969530];
    sub_1A402E694(v5, v1 + v12, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    swift_endAccess();
    sub_1A402B054();
    sub_1A402D238(v5, &qword_1EB12AFE0, v13);
    KeyPath = swift_getKeyPath();
    (*(*v1 + 1160))(KeyPath);

    if ((*(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible) & 1) == 0)
    {
      sub_1A402B48C();
    }

    v15 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetTransitionsState);
    *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetTransitionsState) = (*(v1 + v6) ^ *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKind)) & 1;
    sub_1A4029D44(v15);
    sub_1A402BBF4();
  }
}

uint64_t sub_1A4029D0C()
{
  if (*v0)
  {
    return 0x646573756170;
  }

  else
  {
    return 0x746C7561666564;
  }
}

void sub_1A4029D44(uint64_t result)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetTransitionsState;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetTransitionsState) != (result & 1))
  {
    v3 = sub_1A524D234();
    if (qword_1EB1754E0 != -1)
    {
      swift_once();
    }

    if (os_log_type_enabled(qword_1EB1754E8, v3))
    {
      v4 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v4 = 136315138;
      if (*(v1 + v2))
      {
        v5 = 0x646573756170;
      }

      else
      {
        v5 = 0x746C7561666564;
      }

      if (*(v1 + v2))
      {
        v6 = 0xE600000000000000;
      }

      else
      {
        v6 = 0xE700000000000000;
      }

      sub_1A3C2EF94(v5, v6, &v7);
    }

    sub_1A4029EE0();
  }
}

void sub_1A4029EE0()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_isChangingDelegatedTransitionsState;
  if ((*(v0 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_isChangingDelegatedTransitionsState) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetTransitionsState))
    {
      v2 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_transitionsPauseToken;
      swift_beginAccess();
      sub_1A3C5D9B0(v0 + v2, v31, &qword_1EB12A970, sub_1A402D1D4);
      v3 = v31[3];
      sub_1A402D238(v31, &qword_1EB12A970, sub_1A402D1D4);
      if (!v3)
      {
        v4 = sub_1A524D234();
        if (qword_1EB1754E0 != -1)
        {
          v28 = v4;
          swift_once();
          v4 = v28;
        }

        v5 = qword_1EB1754E8;
        v6 = sub_1A5246DF4(v4, &dword_1A3C1C000, qword_1EB1754E8, "pausing transitions", 19, 2, MEMORY[0x1E69E7CC0]);
        v7 = *(v0 + v1);
        *(v0 + v1) = 1;
        if ((v7 & 1) == 0)
        {
          v8 = sub_1A524D234();
          if (os_log_type_enabled(v5, v8))
          {

            v9 = swift_slowAlloc();
            *v9 = 67109120;
            *(v9 + 4) = *(v0 + v1);

            _os_log_impl(&dword_1A3C1C000, v5, v8, "isChangingDelegatedTransitionsState: %{BOOL}d", v9, 8u);
            MEMORY[0x1A590EEC0](v9, -1, -1);
          }

          sub_1A4029EE0();
        }

        (*(*v0 + 272))(v6);
        v11 = v10;
        ObjectType = swift_getObjectType();
        v13 = swift_allocObject();
        swift_weakInit();
        v14 = *(v11 + 8);

        v14(v0, sub_1A402E340, v13, ObjectType, v11);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v15 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_transitionsPauseToken;
      swift_beginAccess();
      sub_1A3C5D9B0(v0 + v15, &v29, &qword_1EB12A970, sub_1A402D1D4);
      if (v30)
      {
        sub_1A3C34460(&v29, v31);
        v16 = sub_1A524D234();
        if (qword_1EB1754E0 != -1)
        {
          v27 = v16;
          swift_once();
          v16 = v27;
        }

        v17 = qword_1EB1754E8;
        v18 = sub_1A5246DF4(v16, &dword_1A3C1C000, qword_1EB1754E8, "resuming transitions", 20, 2, MEMORY[0x1E69E7CC0]);
        v19 = *(v0 + v1);
        *(v0 + v1) = 1;
        if ((v19 & 1) == 0)
        {
          v20 = sub_1A524D234();
          if (os_log_type_enabled(v17, v20))
          {

            v21 = swift_slowAlloc();
            *v21 = 67109120;
            *(v21 + 4) = *(v0 + v1);

            _os_log_impl(&dword_1A3C1C000, v17, v20, "isChangingDelegatedTransitionsState: %{BOOL}d", v21, 8u);
            MEMORY[0x1A590EEC0](v21, -1, -1);
          }

          sub_1A4029EE0();
        }

        (*(*v0 + 272))(v18);
        v23 = v22;
        v24 = swift_getObjectType();
        v25 = swift_allocObject();
        swift_weakInit();
        v26 = *(v23 + 16);

        v26(v0, v31, sub_1A402E4EC, v25, v24, v23);
        swift_unknownObjectRelease();

        __swift_destroy_boxed_opaque_existential_0(v31);
      }

      else
      {
        sub_1A402D238(&v29, &qword_1EB12A970, sub_1A402D1D4);
      }
    }
  }
}

void sub_1A402A3AC(uint64_t a1)
{
  v2 = sub_1A524D234();
  if (qword_1EB1754E0 != -1)
  {
    swift_once();
  }

  if (os_log_type_enabled(qword_1EB1754E8, v2))
  {
    v3 = swift_slowAlloc();
    v9[0] = swift_slowAlloc();
    *v3 = 136315138;
    v4 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_transitionsPauseToken;
    swift_beginAccess();
    sub_1A3C5D9B0(v1 + v4, v10, &qword_1EB12A970, sub_1A402D1D4);
    sub_1A3C7CF48(0, &qword_1EB12A970, sub_1A402D1D4, MEMORY[0x1E69E6720]);
    v5 = sub_1A524C714();
    sub_1A3C2EF94(v5, v6, v9);
  }

  sub_1A4029EE0();
  v7 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_transitionsPauseToken;
  swift_beginAccess();
  sub_1A3C5D9B0(v1 + v7, v10, &qword_1EB12A970, sub_1A402D1D4);
  LOBYTE(v7) = v11 != 0;
  sub_1A402D238(v10, &qword_1EB12A970, sub_1A402D1D4);
  v8 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentTransitionsState);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentTransitionsState) = v7;
  sub_1A402A5D0(v8);
}

void sub_1A402A5D0(char a1)
{
  v3 = sub_1A5241144();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v69[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3C7CF48(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v69[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69[-v13];
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v69[-v21];
  v23 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentTransitionsState;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentTransitionsState) != (a1 & 1))
  {
    v73 = v20;
    v75 = v19;
    v76 = v17;
    v78 = v18;
    v24 = sub_1A524D234();
    if (qword_1EB1754E0 != -1)
    {
      swift_once();
    }

    v25 = qword_1EB1754E8;
    v26 = os_log_type_enabled(qword_1EB1754E8, v24);
    v79 = v1;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v83[0] = v70;
      *v27 = 136315138;
      v28 = *(v79 + v23) == 0;
      if (*(v79 + v23))
      {
        v29 = 0x646573756170;
      }

      else
      {
        v29 = 0x746C7561666564;
      }

      v74 = v25;
      if (v28)
      {
        v30 = 0xE700000000000000;
      }

      else
      {
        v30 = 0xE600000000000000;
      }

      sub_1A3C2EF94(v29, v30, v83);
    }

    if (*(v1 + v23))
    {
      v70 = v9;
      v31 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_transitionsPauseToken;
      swift_beginAccess();
      sub_1A3C5D9B0(v1 + v31, &v81, &qword_1EB12A970, sub_1A402D1D4);
      if (v82)
      {
        sub_1A3C34460(&v81, v83);
        v32 = v84;
        v33 = v85;
        __swift_project_boxed_opaque_existential_1(v83, v84);
        v34 = v78;
        (*(v33 + 8))(v32, v33);
        v35 = v84;
        v36 = v85;
        __swift_project_boxed_opaque_existential_1(v83, v84);
        (*(v36 + 16))(v35, v36);
        v37 = sub_1A524D234();
        v38 = v34;
        v39 = v73;
        sub_1A3C5D9B0(v38, v73, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
        v40 = os_log_type_enabled(v25, v37);
        v71 = v3;
        v72 = v22;
        v77 = v14;
        if (v40)
        {
          v41 = swift_slowAlloc();
          *&v81 = swift_slowAlloc();
          *v41 = 136315138;
          v42 = MEMORY[0x1E6969530];
          sub_1A3C5D9B0(v39, v22, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
          v43 = sub_1A524C714();
          v45 = v44;
          sub_1A402D238(v39, &qword_1EB12AFE0, v42);
          sub_1A3C2EF94(v43, v45, &v81);
        }

        sub_1A402D238(v39, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
        v49 = sub_1A524D234();
        v50 = v75;
        sub_1A3C5D9B0(v14, v75, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
        v51 = os_log_type_enabled(v25, v49);
        v52 = v79;
        if (v51)
        {
          v53 = swift_slowAlloc();
          *&v81 = swift_slowAlloc();
          *v53 = 136315138;
          v54 = MEMORY[0x1E6969530];
          sub_1A3C5D9B0(v50, v72, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
          v55 = sub_1A524C714();
          v74 = v25;
          v57 = v56;
          sub_1A402D238(v50, &qword_1EB12AFE0, v54);
          sub_1A3C2EF94(v55, v57, &v81);
        }

        sub_1A402D238(v50, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
        v58 = v71;
        v59 = v70;
        sub_1A3C5D9B0(v77, v70, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
        v60 = *(v4 + 48);
        if (v60(v59, 1, v58) == 1)
        {
          sub_1A4029730(v6);
          v52 = v79;
          v61 = v60(v59, 1, v58);
          if (v61 != 1)
          {
            v61 = sub_1A402D238(v59, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
          }
        }

        else
        {
          v61 = (*(v4 + 32))(v6, v59, v58);
        }

        v62 = v52;
        (*(*v52 + 272))(v61);
        v64 = v63;
        ObjectType = swift_getObjectType();
        LOBYTE(v81) = *(v52 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKind);
        v80 = *(v52 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetContentKind);
        v66 = v72;
        (*(v64 + 24))(v62, v6, &v81, &v80, ObjectType, v64);
        swift_unknownObjectRelease();
        (*(v4 + 56))(v66, 0, 1, v58);
        v67 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKindUpdateDate;
        swift_beginAccess();
        v68 = MEMORY[0x1E6969530];
        sub_1A402E694(v66, v62 + v67, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
        swift_endAccess();
        sub_1A402B054();
        sub_1A402D238(v66, &qword_1EB12AFE0, v68);
        (*(v4 + 8))(v6, v58);
        sub_1A402D238(v77, &qword_1EB12AFE0, v68);
        sub_1A402D238(v78, &qword_1EB12AFE0, v68);
        __swift_destroy_boxed_opaque_existential_0(v83);
      }

      else
      {
        sub_1A402D238(&v81, &qword_1EB12A970, sub_1A402D1D4);
        sub_1A524E6E4();
        __break(1u);
      }
    }

    else
    {
      (*(v4 + 56))(v22, 1, 1, v3);
      v46 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKindUpdateDate;
      swift_beginAccess();
      v47 = v22;
      v48 = MEMORY[0x1E6969530];
      sub_1A402E694(v47, v1 + v46, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      swift_endAccess();
      sub_1A402B054();
      sub_1A402D238(v47, &qword_1EB12AFE0, v48);
    }
  }
}

double sub_1A402B054()
{
  v1 = sub_1A5241144();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7CF48(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  v11 = sub_1A524D234();
  if (qword_1EB1754E0 != -1)
  {
    swift_once();
  }

  if (os_log_type_enabled(qword_1EB1754E8, v11))
  {
    v12 = swift_slowAlloc();
    v26[1] = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    v26[0] = v4;
    v27[0] = v14;
    *v13 = 136315138;
    v15 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKindUpdateDate;
    swift_beginAccess();
    sub_1A3C5D9B0(v0 + v15, v10, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v16 = sub_1A524C714();
    sub_1A3C2EF94(v16, v17, v27);
  }

  v18 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKindUpdateDate;
  swift_beginAccess();
  sub_1A3C5D9B0(v0 + v18, v7, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1A402D238(v7, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  }

  else
  {
    v20 = (*(v2 + 32))(v4, v7, v1);
    (*(*v0 + 640))(v20);
    v22 = v21;
    ObjectType = swift_getObjectType();
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = *(v22 + 16);

    v25(v4, sub_1A402E328, v24, ObjectType, v22);
    swift_unknownObjectRelease();

    (*(v2 + 8))(v4, v1);
  }

  return result;
}

unsigned __int8 *sub_1A402B48C()
{
  v1 = v0;
  v2 = sub_1A5241144();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  sub_1A3C7CF48(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v29 - v13;
  v14 = sub_1A524D234();
  if (qword_1EB1754E0 != -1)
  {
    swift_once();
  }

  v31 = qword_1EB1754E8;
  if (os_log_type_enabled(qword_1EB1754E8, v14))
  {
    v15 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v15 = 136315138;
    v29 = v5;
    v16 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKindUpdateDate;
    swift_beginAccess();
    sub_1A3C5D9B0(v1 + v16, v30, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v17 = sub_1A524C714();
    sub_1A3C2EF94(v17, v18, v33);
  }

  swift_getKeyPath();
  (*(*v1 + 1160))();

  if ((*(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible) & 1) == 0)
  {
    v20 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKind);
    *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKind) = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetContentKind);
    LOBYTE(v33[0]) = v20;
    return sub_1A402BA2C(v33);
  }

  v19 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKindUpdateDate;
  swift_beginAccess();
  sub_1A3C5D9B0(v1 + v19, v11, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_1A402D238(v11, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
LABEL_11:
    v24 = sub_1A524D234();
    return sub_1A5246DF4(v24, &dword_1A3C1C000, v31, "skipped", 7, 2, MEMORY[0x1E69E7CC0]);
  }

  (*(v3 + 32))(v8, v11, v2);
  sub_1A4029730(v5);
  sub_1A4029350(&unk_1EB134140, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v22 = sub_1A524C534();
  v23 = *(v3 + 8);
  v23(v5, v2);
  if (v22)
  {
    v23(v8, v2);
    goto LABEL_11;
  }

  v25 = v30;
  (*(v3 + 56))(v30, 1, 1, v2);
  swift_beginAccess();
  v26 = v8;
  v27 = MEMORY[0x1E6969530];
  sub_1A402E694(v25, v1 + v19, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  swift_endAccess();
  sub_1A402B054();
  sub_1A402D238(v25, &qword_1EB12AFE0, v27);
  v28 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKind);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKind) = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetContentKind);
  v32[0] = v28;
  sub_1A402BA2C(v32);
  return (v23)(v26, v2);
}

unsigned __int8 *sub_1A402BA2C(unsigned __int8 *result)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKind;
  if (*result != *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKind))
  {
    v3 = sub_1A524D234();
    if (qword_1EB1754E0 != -1)
    {
      swift_once();
    }

    if (os_log_type_enabled(qword_1EB1754E8, v3))
    {
      v4 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v4 = 136315138;
      if (*(v1 + v2))
      {
        v5 = 0x6569766F6DLL;
      }

      else
      {
        v5 = 0x77656976657270;
      }

      if (*(v1 + v2))
      {
        v6 = 0xE500000000000000;
      }

      else
      {
        v6 = 0xE700000000000000;
      }

      sub_1A3C2EF94(v5, v6, &v8);
    }

    sub_1A402BBF4();
    v7 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetTransitionsState);
    *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetTransitionsState) = (*(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetContentKind) ^ *(v1 + v2)) & 1;

    return sub_1A4029D44(v7);
  }

  return result;
}

void sub_1A402BBF4()
{
  v1 = v0;
  v2 = sub_1A52425F4();
  v95 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v94 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v81 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v91 = &v81 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v81 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v81 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v81 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v81 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v81 - v28;
  KeyPath = swift_getKeyPath();
  (*(*v0 + 1160))(KeyPath);

  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible) == 1)
  {
    v32 = *(*v0 + 464);
    v84 = *v0 + 464;
    v85 = v32;
    v33 = (v32)(v31);
    v34 = *v0;
    v86 = *(*v0 + 560);
    v87 = v34 + 560;
    v86(v33);
    if (*(v0 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKind))
    {
      v35 = *MEMORY[0x1E69C1EE0];
      v36 = v95;
      v93 = *(v95 + 104);
      v82 = v95 + 104;
      v83 = v35;
      v93(v14);
      sub_1A4029350(&qword_1EB129260, MEMORY[0x1E69C1F00], MEMORY[0x1E69C1F08]);
      v37 = sub_1A524C534();
      v38 = v26;
      v39 = *(v36 + 8);
      v39(v38, v2);
      if (v37)
      {
        v40 = v14;
      }

      else
      {
        v40 = v29;
      }

      if (v37)
      {
        v41 = v29;
      }

      else
      {
        v41 = v14;
      }

      v92 = v39;
      v39(v40, v2);
      v26 = v38;
      v42 = v36;
      v43 = *(v36 + 32);
      v44 = v41;
      v45 = v93;
      v43(v17, v44, v2);
      v43(v29, v17, v2);
      v46 = (v45)(v26, *MEMORY[0x1E69C1EE8], v2);
      v47 = 1.0;
    }

    else
    {
      v42 = v95;
      v48 = *(v95 + 8);
      v48(v29, v2);
      v49 = *MEMORY[0x1E69C1EE8];
      v93 = *(v42 + 104);
      (v93)(v29, v49, v2);
      v50 = *(v0 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetContentKind);
      v92 = v48;
      if (v50 == 1)
      {
        v48(v26, v2);
        v83 = *MEMORY[0x1E69C1EE0];
        v51 = v93;
        v46 = (v93)(v26);
        v47 = 0.0;
        v45 = v51;
      }

      else
      {
        v83 = *MEMORY[0x1E69C1EE0];
        v52 = v93;
        v93(v20);
        sub_1A4029350(&qword_1EB129260, MEMORY[0x1E69C1F00], MEMORY[0x1E69C1F08]);
        v53 = sub_1A524C534();
        v54 = (v53 & 1) == 0;
        if (v53)
        {
          v55 = v20;
        }

        else
        {
          v55 = v26;
        }

        if (v54)
        {
          v56 = v20;
        }

        else
        {
          v56 = v26;
        }

        v92(v55, v2);
        v57 = *(v42 + 32);
        v57(v23, v56, v2);
        v46 = (v57)(v26, v23, v2);
        v47 = 0.0;
        v45 = v52;
      }
    }

    if ((*(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_canPlay) & 1) == 0)
    {
      v82 = v42 + 104;
      v58 = v88;
      (v45)(v88, v83, v2);
      sub_1A4029350(&qword_1EB129260, MEMORY[0x1E69C1F00], MEMORY[0x1E69C1F08]);
      v93 = v45;
      v59 = sub_1A524C534();
      v81 = v42 + 8;
      v60 = (v59 & 1) == 0;
      if (v59)
      {
        v61 = v58;
      }

      else
      {
        v61 = v29;
      }

      if (v60)
      {
        v62 = v58;
      }

      else
      {
        v62 = v29;
      }

      v63 = v29;
      v64 = v92;
      v92(v61, v2);
      v65 = *(v42 + 32);
      v66 = v89;
      v65(v89, v62, v2);
      v65(v63, v66, v2);
      v67 = v90;
      (v93)(v90, v83, v2);
      v68 = sub_1A524C534();
      v69 = (v68 & 1) == 0;
      if (v68)
      {
        v70 = v67;
      }

      else
      {
        v70 = v26;
      }

      if (v69)
      {
        v71 = v67;
      }

      else
      {
        v71 = v26;
      }

      v64(v70, v2);
      v29 = v63;
      v72 = v91;
      v65(v91, v71, v2);
      v46 = (v65)(v26, v72, v2);
      v42 = v95;
    }

    v73 = v94;
    v85(v46);
    sub_1A4029350(&qword_1EB129258, MEMORY[0x1E69C1F00], MEMORY[0x1E69C1F10]);
    v74 = sub_1A524C594();
    v75 = v92;
    v76 = (v92)(v73, v2);
    if ((v74 & 1) == 0)
    {
      (*(v42 + 16))(v73, v29, v2);
      v76 = sub_1A4027328(v73);
    }

    if (v47 != (*(*v1 + 512))(v76))
    {
      if (*(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__movieAlpha) == v47)
      {
        *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__movieAlpha) = v47;
        v77 = sub_1A4027364(v77);
      }

      else
      {
        v78 = swift_getKeyPath();
        v79.n128_f64[0] = MEMORY[0x1EEE9AC00](v78);
        *(&v81 - 2) = v1;
        *(&v81 - 1) = v47;
        (*(*v1 + 1168))(v79);
        v75 = v92;
        v73 = v94;

        v42 = v95;
      }
    }

    v86(v77);
    v80 = sub_1A524C594();
    v75(v73, v2);
    if ((v80 & 1) == 0)
    {
      (*(v42 + 16))(v73, v26, v2);
      sub_1A4027A78(v73);
    }

    v75(v26, v2);
    v75(v29, v2);
  }
}

void sub_1A402C5B0()
{
  v1 = v0;
  sub_1A3C7CF48(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v5);
  v7 = aBlock - v6 + 16;
  v8 = sub_1A5241144();
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v13 = 1.0;
  if ((*(*v0 + 416))(v10))
  {
    swift_getKeyPath();
    (*(*v0 + 1160))();

    v14 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__visibleChromeDeadline;
    swift_beginAccess();
    sub_1A3C5D9B0(v1 + v14, v7, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      v15 = sub_1A402D238(v7, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    }

    else
    {
      (*(v9 + 32))(v12, v7, v8);
      sub_1A52410B4();
      v17 = v16;
      v15 = (*(v9 + 8))(v12, v8);
      if (v17 > 0.0)
      {
        goto LABEL_8;
      }
    }

    v18 = (*(*v1 + 368))(v15);
    if (!v18 || (v19 = v18, v20 = [v18 wantsChromeVisible], v19, (v20 & 1) == 0))
    {
      (*(v9 + 56))(v4, 1, 1, v8);
      sub_1A402CBE0(v4);
      v13 = 0.0;
    }
  }

LABEL_8:
  *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_targetChromeOpacity) = v13;
  v21 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_chromeOpacityAnimator);
  aBlock[4] = sub_1A402E310;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D59380;
  aBlock[3] = &block_descriptor_128;
  v22 = _Block_copy(aBlock);

  [v21 performChangesUsingDefaultOpacityAnimation_];
  _Block_release(v22);
}

uint64_t sub_1A402C99C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1160))();

  v3 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__visibleChromeDeadline;
  swift_beginAccess();
  return sub_1A3C5D9B0(v1 + v3, a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A402CA54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1160))();

  v4 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__visibleChromeDeadline;
  swift_beginAccess();
  return sub_1A3C5D9B0(v3 + v4, a2, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A402CB10(uint64_t a1)
{
  v2 = MEMORY[0x1E6969530];
  sub_1A3C7CF48(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1A3C5D9B0(a1, &v7 - v4, &qword_1EB12AFE0, v2);
  return sub_1A402CBE0(v5);
}

uint64_t sub_1A402CBE0(uint64_t a1)
{
  v3 = MEMORY[0x1E6969530];
  sub_1A3C7CF48(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__visibleChromeDeadline;
  swift_beginAccess();
  sub_1A3C5D9B0(v1 + v7, v6, &qword_1EB12AFE0, v3);
  v8 = sub_1A402DB80(v6, a1);
  sub_1A402D238(v6, &qword_1EB12AFE0, v3);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[-16] = v1;
    *&v12[-8] = a1;
    (*(*v1 + 1168))(v10);
  }

  else
  {
    sub_1A3C5D9B0(a1, v6, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    swift_beginAccess();
    sub_1A3DBE288(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1A402D238(a1, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

uint64_t sub_1A402CE04(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6969530];
  sub_1A3C7CF48(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1A3C5D9B0(a2, &v10 - v6, &qword_1EB12AFE0, v4);
  v8 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__visibleChromeDeadline;
  swift_beginAccess();
  sub_1A3DBE288(v7, a1 + v8);
  return swift_endAccess();
}

uint64_t PhotosDynamicHeaderViewModel.deinit()
{
  sub_1A3C6B94C(v0 + 16);

  v1 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__previewState;
  v2 = sub_1A52425F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__movieState, v2);
  sub_1A3C6B94C(v0 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_timeDelegate);
  sub_1A402D238(v0 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_transitionsPauseToken, &qword_1EB12A970, sub_1A402D1D4);
  v4 = MEMORY[0x1E6969530];
  sub_1A402D238(v0 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_currentContentKindUpdateDate, &qword_1EB12AFE0, MEMORY[0x1E6969530]);

  swift_unknownObjectRelease();
  sub_1A402D238(v0 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel__visibleChromeDeadline, &qword_1EB12AFE0, v4);
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___observationRegistrar;
  v6 = sub_1A5241614();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

unint64_t sub_1A402D1D4()
{
  result = qword_1EB12A978;
  if (!qword_1EB12A978)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB12A978);
  }

  return result;
}

uint64_t sub_1A402D238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C7CF48(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PhotosDynamicHeaderViewModel.__deallocating_deinit()
{
  PhotosDynamicHeaderViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t PhotosDynamicHeaderViewModelPlaybackDelegate.adjustNextTransitionDate(model:proposedDate:fromContentKind:toContentKind:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1A5241144();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_1A402D388()
{
  result = qword_1EB130790;
  if (!qword_1EB130790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130790);
  }

  return result;
}

void sub_1A402D3E4(uint64_t a1)
{
  sub_1A52425F4();
  if (v1 <= 0x3F)
  {
    sub_1A3C7CF48(319, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A5241614();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1A402DA08()
{
  result = qword_1EB1732C0[0];
  if (!qword_1EB1732C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1732C0);
  }

  return result;
}

uint64_t sub_1A402DB14()
{
  sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1754E8 = result;
  return result;
}

uint64_t sub_1A402DB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969530];
  sub_1A3C7CF48(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  sub_1A3E99834(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 56);
  sub_1A3C5D9B0(a1, v14, &qword_1EB12AFE0, v8);
  sub_1A3C5D9B0(a2, &v14[v16], &qword_1EB12AFE0, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_1A3C5D9B0(v14, v11, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_1A4029350(&unk_1EB12AFF0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v19 = sub_1A524C594();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v11, v4);
      sub_1A402D238(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v18 = v19 ^ 1;
      return v18 & 1;
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_6;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
LABEL_6:
    sub_1A402E2B4(v14);
    v18 = 1;
    return v18 & 1;
  }

  sub_1A402D238(v14, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1A402DED0(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a1;
  v4 = sub_1A524BEE4();
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524BFC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v17 = sub_1A524D474();
  sub_1A524BFA4();
  sub_1A52410B4();
  sub_1A524C014();
  v24 = *(v11 + 8);
  v18 = v13;
  v19 = v10;
  v24(v18, v10);
  aBlock[4] = v23;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_77;
  v20 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A4029350(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C7CF48(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908790](v16, v9, v6, v20);
  _Block_release(v20);

  (*(v27 + 8))(v6, v4);
  (*(v25 + 8))(v9, v26);
  return (v24)(v16, v19);
}

uint64_t sub_1A402E2B4(uint64_t a1)
{
  sub_1A3E99834(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1A402E340(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1A3C341C8(a1, v12);
    v5 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_transitionsPauseToken;
    swift_beginAccess();
    sub_1A402E694(v12, v4 + v5, &qword_1EB12A970, sub_1A402D1D4);
    v6 = swift_endAccess();
    sub_1A402A3AC(v6);
    sub_1A402D238(v12, &qword_1EB12A970, sub_1A402D1D4);
    v7 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_isChangingDelegatedTransitionsState;
    v8 = *(v4 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_isChangingDelegatedTransitionsState);
    *(v4 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_isChangingDelegatedTransitionsState) = 0;
    if (v8 == 1)
    {
      v9 = sub_1A524D234();
      if (qword_1EB1754E0 != -1)
      {
        swift_once();
      }

      v10 = qword_1EB1754E8;
      if (os_log_type_enabled(qword_1EB1754E8, v9))
      {

        v11 = swift_slowAlloc();
        *v11 = 67109120;
        *(v11 + 4) = *(v4 + v7);

        _os_log_impl(&dword_1A3C1C000, v10, v9, "isChangingDelegatedTransitionsState: %{BOOL}d", v11, 8u);
        MEMORY[0x1A590EEC0](v11, -1, -1);
      }

      sub_1A4029EE0();
    }
  }

  return result;
}

double sub_1A402E4EC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    v3 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_transitionsPauseToken;
    swift_beginAccess();
    sub_1A402E694(v10, v2 + v3, &qword_1EB12A970, sub_1A402D1D4);
    v4 = swift_endAccess();
    sub_1A402A3AC(v4);
    sub_1A402D238(v10, &qword_1EB12A970, sub_1A402D1D4);
    v5 = OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_isChangingDelegatedTransitionsState;
    v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_isChangingDelegatedTransitionsState);
    *(v2 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel_isChangingDelegatedTransitionsState) = 0;
    if (v6 == 1)
    {
      v7 = sub_1A524D234();
      if (qword_1EB1754E0 != -1)
      {
        swift_once();
      }

      v8 = qword_1EB1754E8;
      if (os_log_type_enabled(qword_1EB1754E8, v7))
      {

        v9 = swift_slowAlloc();
        *v9 = 67109120;
        *(v9 + 4) = *(v2 + v5);

        _os_log_impl(&dword_1A3C1C000, v8, v7, "isChangingDelegatedTransitionsState: %{BOOL}d", v9, 8u);
        MEMORY[0x1A590EEC0](v9, -1, -1);
      }

      sub_1A4029EE0();
    }
  }

  return result;
}

uint64_t sub_1A402E694(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C7CF48(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

double sub_1A402E72C(void (*a1)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a1();
  }

  return result;
}

double sub_1A402E788(uint64_t a1, char a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a2 & 8) != 0)
    {
      sub_1A402C5B0();
    }
  }

  return result;
}

void sub_1A402E7E4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___isContentVisible) = *(v0 + 24);
  sub_1A4028BE4(v2);
}

void sub_1A402E828()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore28PhotosDynamicHeaderViewModel___scrollPosition;
  v3 = *v2;
  v4 = *(v2 + 8);
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
  v5 = v3;
  v6 = v4;
  sub_1A4028EC4(&v5);
}

uint64_t sub_1A402E944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void PhotosItemListSelectionManager.selectionSnapshot.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A402E944(&qword_1EB130798, type metadata accessor for PhotosItemListSelectionManager, &protocol conformance descriptor for PhotosItemListSelectionManager);

  sub_1A5245714();
}

void sub_1A402EA50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A402E944(&qword_1EB130798, type metadata accessor for PhotosItemListSelectionManager, &protocol conformance descriptor for PhotosItemListSelectionManager);

  sub_1A5245714();
}

void sub_1A402EB28(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A402E944(&qword_1EB130798, type metadata accessor for PhotosItemListSelectionManager, &protocol conformance descriptor for PhotosItemListSelectionManager);

  sub_1A5245724();
}

uint64_t static PhotosItemListSelectionManager.generateEmptySnapshot()()
{
  v0 = sub_1A52414C4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosItemListSelectionSnapshot(0);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_1A52414B4();
  return PhotosItemListSelectionSnapshot.__allocating_init(itemList:selectedIndexes:)(v4, v2);
}

void PhotosItemListSelectionManager.init(itemListManager:)(uint64_t a1, uint64_t a2)
{
  v8[0] = a2;
  v8[2] = *v2;
  sub_1A402F28C(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A52414C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosItemListSelectionSnapshot(0);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_1A52414B4();
  v7 = PhotosItemListSelectionSnapshot.__allocating_init(itemList:selectedIndexes:)(v9, v6);
  v8[3] = 1;
  *&v9[0] = v7;
  v8[1] = type metadata accessor for PhotosItemListSelectionManager;
  sub_1A402E944(&qword_1EB130798, type metadata accessor for PhotosItemListSelectionManager, &protocol conformance descriptor for PhotosItemListSelectionManager);
  sub_1A402E944(&qword_1EB1307A0, type metadata accessor for PhotosItemListSelectionSnapshot, &protocol conformance descriptor for PhotosItemListSelectionSnapshot);
  sub_1A5245754();
}

void sub_1A402F28C(uint64_t a1)
{
  if (!qword_1EB1307A8)
  {
    type metadata accessor for PhotosItemListSelectionManager(255);
    type metadata accessor for PhotosItemListSelectionSnapshot(255);
    sub_1A402E944(&qword_1EB130798, type metadata accessor for PhotosItemListSelectionManager, &protocol conformance descriptor for PhotosItemListSelectionManager);
    sub_1A5245764();
  }
}

double sub_1A402F338(uint64_t *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A402E944(&qword_1EB130798, type metadata accessor for PhotosItemListSelectionManager, &protocol conformance descriptor for PhotosItemListSelectionManager);

    sub_1A5245714();
  }

  return result;
}

double sub_1A402F4A4(uint64_t a1, char a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      swift_allocObject();
      swift_weakInit();
      type metadata accessor for PhotosItemListSelectionManager(0);
      sub_1A402E944(&qword_1EB1307B0, type metadata accessor for PhotosItemListSelectionManager, &protocol conformance descriptor for PhotosItemListSelectionManager);
      sub_1A5245F44();
    }
  }

  return result;
}

uint64_t PhotosItemListSelectionManager.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosItemListSelectionManager__selectionSnapshot;
  sub_1A402F28C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PhotosItemListSelectionManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore30PhotosItemListSelectionManager__selectionSnapshot;
  sub_1A402F28C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PhotosItemListSelectionManager.hashValue.getter()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](v0);
  return sub_1A524ECE4();
}

void PhotosItemListSelectionManager.createMutator()()
{
  type metadata accessor for PhotosItemListSelectionManager.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A40303C8();
  sub_1A52456D4();
}

void sub_1A402FAD4(char a1, uint64_t a2)
{
  v5 = *(*(v2 + OBJC_IVAR____TtCC12PhotosUICore30PhotosItemListSelectionManagerP33_D7A05B6FD5D101EBE87B4BF40FCB2E087Mutator_observable) + OBJC_IVAR____TtC12PhotosUICore30PhotosItemListSelectionManager_sectionedSelectionManager);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_1A3C341C8(a2, v11);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_1A3C34460(v11, v7 + 24);
  *(v7 + 64) = a1;
  aBlock[4] = sub_1A40309FC;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D59380;
  aBlock[3] = &block_descriptor_32_0;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  [v9 performChanges_];
  _Block_release(v8);
}

void sub_1A402FC1C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A402E944(&qword_1EB130798, type metadata accessor for PhotosItemListSelectionManager, &protocol conformance descriptor for PhotosItemListSelectionManager);

  sub_1A5245714();
}

uint64_t sub_1A402FD24()
{
  v1 = OBJC_IVAR____TtCC12PhotosUICore30PhotosItemListSelectionManagerP33_D7A05B6FD5D101EBE87B4BF40FCB2E087Mutator__selectionSnapshot;
  sub_1A4030980(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1A402FDD0@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR____TtCC12PhotosUICore30PhotosItemListSelectionManagerP33_D7A05B6FD5D101EBE87B4BF40FCB2E087Mutator_observable);

  return result;
}

void sub_1A402FDEC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A402E944(&qword_1EB130798, type metadata accessor for PhotosItemListSelectionManager, &protocol conformance descriptor for PhotosItemListSelectionManager);

  sub_1A5245724();
}

void sub_1A402FEB4()
{
  type metadata accessor for PhotosItemListSelectionManager.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A40303C8();
  sub_1A52456D4();
}

void sub_1A402FF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A402E944(&qword_1EB1307B0, type metadata accessor for PhotosItemListSelectionManager, &protocol conformance descriptor for PhotosItemListSelectionManager);

  sub_1A5245F44();
}

id sub_1A402FFE4@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore30PhotosItemListSelectionManager_observable);
  *a1 = v2;
  return v2;
}

void sub_1A402FFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A402E944(&qword_1EB130798, type metadata accessor for PhotosItemListSelectionManager, &protocol conformance descriptor for PhotosItemListSelectionManager);

  sub_1A5245C54();
}

void _s12PhotosUICore0A24ItemListSelectionManagerC16generateSnapshot09sectionedeF004itemdF003oldH0AA0acdeH0CSo011PXSectionedeF0C_0A12UIFoundation0acdF0_pAItF_0(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = sub_1A52414C4();
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  sub_1A52414B4();
  v7 = [a1 selectionSnapshot];
  v8 = [v7 selectedIndexPaths];

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1A4030BA0;
  *(v10 + 24) = v9;
  AssociatedConformanceWitness = sub_1A4030BC8;
  v18 = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A402F794;
  AssociatedTypeWitness = &block_descriptor_41;
  v11 = _Block_copy(aBlock);

  [v8 enumerateAllIndexPathsUsingBlock_];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    type metadata accessor for PhotosItemListSelectionSnapshot(0);
    swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(aBlock);
    sub_1A5245904();
  }

  __break(1u);
}

unint64_t sub_1A40303C8()
{
  result = qword_1EB1A15D8;
  if (!qword_1EB1A15D8)
  {
    type metadata accessor for PhotosItemListSelectionManager.Mutator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1A15D8);
  }

  return result;
}

unint64_t sub_1A4030424()
{
  result = qword_1EB1307B8;
  if (!qword_1EB1307B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1307B8);
  }

  return result;
}

unint64_t sub_1A403047C()
{
  result = qword_1EB1307C0;
  if (!qword_1EB1307C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1307C0);
  }

  return result;
}

unint64_t sub_1A40304D4()
{
  result = qword_1EB1307C8;
  if (!qword_1EB1307C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1307C8);
  }

  return result;
}

unint64_t sub_1A403052C()
{
  result = qword_1EB1307D0;
  if (!qword_1EB1307D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1307D0);
  }

  return result;
}

unint64_t sub_1A4030584()
{
  result = qword_1EB1307D8;
  if (!qword_1EB1307D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1307D8);
  }

  return result;
}

unint64_t sub_1A4030744()
{
  result = qword_1EB1307F8;
  if (!qword_1EB1307F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1307F8);
  }

  return result;
}

void sub_1A40307EC(uint64_t a1)
{
  sub_1A402F28C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A40308E4(uint64_t a1)
{
  sub_1A4030980(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A4030980(uint64_t a1)
{
  if (!qword_1EB130800)
  {
    type metadata accessor for PhotosItemListSelectionManager.Mutator(255);
    type metadata accessor for PhotosItemListSelectionSnapshot(255);
    sub_1A40303C8();
    sub_1A52456C4();
  }
}

double sub_1A40309FC(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    sub_1A402E944(&qword_1EB130798, type metadata accessor for PhotosItemListSelectionManager, &protocol conformance descriptor for PhotosItemListSelectionManager);

    sub_1A5245714();
  }

  return result;
}

double sub_1A4030BF4(uint64_t *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC12PhotosUICore30PhotosItemListSelectionManager_sectionedSelectionManager);
    swift_beginAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1A402E944(&qword_1EB130798, type metadata accessor for PhotosItemListSelectionManager, &protocol conformance descriptor for PhotosItemListSelectionManager);
    v4 = v3;
    swift_unknownObjectRetain();

    sub_1A5245714();
  }

  return result;
}

void sub_1A4030DB0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_1A4030DC4(a1, a2, a3);
  }
}

void sub_1A4030DC4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

double sub_1A4030DDC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1A3EECFA4(a1, a2, a3);
  }

  return result;
}

uint64_t LemonadeSharedAlbumsActivityFeedConfiguration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 == 255)
  {
    return sub_1A524ECB4();
  }

  sub_1A524ECB4();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = v2 != 0;
  }

  MEMORY[0x1A590A010](v4);

  return sub_1A524C794();
}

uint64_t LemonadeSharedAlbumsActivityFeedConfiguration.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1A524EC94();
  if (v1 == 255)
  {
    sub_1A524ECB4();
  }

  else
  {
    sub_1A524ECB4();
    if (v1 > 1)
    {
      if (v1 == 2)
      {
        v2 = 2;
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = v1 != 0;
    }

    MEMORY[0x1A590A010](v2);
    sub_1A524C794();
  }

  return sub_1A524ECE4();
}

void sub_1A4030F64(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

__n128 sub_1A4030F74@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_1A4030F8C(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 == 255)
  {
    return sub_1A524ECB4();
  }

  sub_1A524ECB4();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = v2 != 0;
  }

  MEMORY[0x1A590A010](v4);

  return sub_1A524C794();
}

uint64_t sub_1A403104C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1A524EC94();
  if (v2 == 255)
  {
    sub_1A524ECB4();
  }

  else
  {
    sub_1A524ECB4();
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = v2 != 0;
    }

    MEMORY[0x1A590A010](v3);
    sub_1A524C794();
  }

  return sub_1A524ECE4();
}

uint64_t LemonadeSharedAlbumsActivityFeedNavigationDestination.id.getter()
{
  v1 = *v0;
  sub_1A4030DC4(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t LemonadeSharedAlbumsActivityFeedNavigationDestination.hash(into:)(uint64_t a1)
{
  MEMORY[0x1A590A010](*(v1 + 16));

  return sub_1A524C794();
}

uint64_t LemonadeSharedAlbumsActivityFeedNavigationDestination.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A40311FC(uint64_t a1)
{
  MEMORY[0x1A590A010](*(v1 + 16));

  return sub_1A524C794();
}

uint64_t sub_1A4031250(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1A524EC94();
  MEMORY[0x1A590A010](v2);
  sub_1A524C794();
  return sub_1A524ECE4();
}

double sub_1A40312B0@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  sub_1A4030DC4(v2, v3, *(v1 + 16));
  return result;
}

uint64_t sub_1A40312C4@<X0>(uint64_t *a1@<X8>)
{
  sub_1A4034618();
  swift_allocObject();
  result = sub_1A5242844();
  *a1 = result;
  return result;
}

uint64_t sub_1A4031304@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v1 = sub_1A5249A94();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v23[0] = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DD0DCC(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DC7D88(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  sub_1A3DC7F98(v16);
  (*(v2 + 104))(v13, *MEMORY[0x1E697FF40], v1);
  (*(v2 + 56))(v13, 0, 1, v1);
  v17 = *(v5 + 56);
  sub_1A4035EA8(v16, v7, sub_1A3DC7D88);
  sub_1A4035EA8(v13, &v7[v17], sub_1A3DC7D88);
  v18 = *(v2 + 48);
  if (v18(v7, 1, v1) != 1)
  {
    sub_1A4035EA8(v7, v10, sub_1A3DC7D88);
    if (v18(&v7[v17], 1, v1) != 1)
    {
      v20 = v23[0];
      (*(v2 + 32))(v23[0], &v7[v17], v1);
      sub_1A4034794(&qword_1EB127B70, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v21 = sub_1A524C594();
      v22 = *(v2 + 8);
      v22(v20, v1);
      sub_1A4035F10(v13, sub_1A3DC7D88);
      sub_1A4035F10(v16, sub_1A3DC7D88);
      v22(v10, v1);
      sub_1A4035F10(v7, sub_1A3DC7D88);
      if (v21)
      {
        return sub_1A5247F44();
      }

      return sub_1A5247F54();
    }

    sub_1A4035F10(v13, sub_1A3DC7D88);
    sub_1A4035F10(v16, sub_1A3DC7D88);
    (*(v2 + 8))(v10, v1);
LABEL_6:
    sub_1A4035F10(v7, sub_1A3DD0DCC);
    return sub_1A5247F54();
  }

  sub_1A4035F10(v13, sub_1A3DC7D88);
  sub_1A4035F10(v16, sub_1A3DC7D88);
  if (v18(&v7[v17], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_1A4035F10(v7, sub_1A3DC7D88);
  return sub_1A5247F44();
}

void sub_1A4031754(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  sub_1A4034618();
  sub_1A5247C74();
  sub_1A4034670(0);
  sub_1A5247C74();
  v9 = v8[11];
  *(a3 + v9) = swift_getKeyPath();
  sub_1A3F88738(0);
  swift_storeEnumTagMultiPayload();
  v10 = *(*(a2 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = v10;
  v13 = [ObjCClassFromMetadata sharedInstance];
  v14 = [v13 activityEntryFeedLoadMoreBatchSize];
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v12;
  *(a3 + 32) = a2;
  v15 = v12;
  v28 = v5;
  sub_1A4030DB0(v5, v6, v7);

  *(a3 + v8[14]) = [v13 activityEntryFeedUseOnlyCompactCells];
  *(a3 + v8[15]) = v14;
  type metadata accessor for SharedAlbumsActivityEntryItemListManager(0);
  sub_1A4034794(&unk_1EB129420, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329CE8);

  v16 = sub_1A52431D4();

  *(swift_allocObject() + 16) = v16;
  v17 = v16;
  sub_1A5247C74();
  *(swift_allocObject() + 16) = v17;
  sub_1A3E05888(0);
  sub_1A4034794(&qword_1EB1293D0, sub_1A3E05888, &unk_1A53270D8);
  v18 = v17;
  sub_1A5242104();
  *(a3 + v8[12]) = [v13 activityEntryFeedFollowsReadableWidth];
  [v13 activityEntryFeedReadableWidth];
  v20 = v19;
  if (v19 > 0.0)
  {
    [v13 activityEntryFeedReadableWidth];
    v21 = v8[13];
    *(a3 + v21) = v22;
  }

  else
  {
    v21 = v8[13];
    *(a3 + v21) = 0;
  }

  *(a3 + v21 + 8) = v20 <= 0.0;
  if (v7 == 3)
  {
    v23 = v18;
    if (qword_1EB1A1C90 != -1)
    {
      swift_once();
    }

    v24 = sub_1A5246F24();
    __swift_project_value_buffer(v24, qword_1EB1A1C98);
    sub_1A4030DB0(v28, v6, 3u);
    v25 = sub_1A5246F04();
    v26 = sub_1A524D264();
    sub_1A4030DDC(v28, v6, 3u);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v27 = 136446210;
      sub_1A3C2EF94(v28, v6, &v29);
    }

    sub_1A40361D4(0, &qword_1EB130810, sub_1A4034618, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    sub_1A5242814();
  }

  else
  {
    if (v7 != 255)
    {
      sub_1A4030DDC(v28, v6, v7);
    }
  }
}

double sub_1A4031CC0@<D0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v14 = sub_1A5247F64();
  v2 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4035EA8(v1, v8, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_1A4035F70(v8, v10 + v9, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
  sub_1A4035EA8(v1, v8, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
  v11 = swift_allocObject();
  sub_1A4035F70(v8, v11 + v9, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
  v15 = sub_1A40348C8;
  v16 = v10;
  v17 = sub_1A4034D58;
  v18 = v11;
  v19 = 0;
  v20 = 0;
  sub_1A4031304(v4);
  sub_1A4035244(0, &qword_1EB130838, sub_1A4034DB8);
  sub_1A40359E0();
  sub_1A524A9F4();
  (*(v2 + 8))(v4, v14);

  return result;
}

uint64_t sub_1A4031F34(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A5249944();
  MEMORY[0x1EEE9AC00](v2);
  sub_1A5249574();
  sub_1A4034794(&qword_1EB122340, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1A524EE64();
  sub_1A403500C(0);
  sub_1A4035118(255);
  sub_1A3C2DDC4(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1A4035628(&qword_1EB1308B0, sub_1A4035118, sub_1A40355E0, MEMORY[0x1E69819D0]);
  sub_1A403594C();
  swift_getOpaqueTypeConformance2();
  return sub_1A5247CC4();
}

uint64_t sub_1A403211C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v44 = a3;
  v40 = sub_1A52488B4();
  v4 = *(v40 - 8);
  v39 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4035118(0);
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v36 = *(v7 + 40);
  v37 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40347DC(0);
  v35 = v14;
  v31 = a1;
  MEMORY[0x1A58FD460]();
  v15 = sub_1A5243164();

  v45 = v15;
  KeyPath = swift_getKeyPath();
  sub_1A4035EA8(a1, v10, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
  v16 = *(v8 + 80);
  v17 = (v16 + 16) & ~v16;
  v18 = v17 + v9;
  v34 = v16 | 7;
  v19 = swift_allocObject();
  v32 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView;
  sub_1A4035F70(v10, v19 + v17, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
  sub_1A3C2DDC4(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v33 = v20;
  sub_1A40351D0(0);
  sub_1A4035564();
  sub_1A40355E0();
  sub_1A524B9B4();
  v21 = v31;
  MEMORY[0x1A58FD460](v35);
  v22 = sub_1A5243164();

  v45 = v22;
  sub_1A4035EA8(v21, v10, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
  v23 = v38;
  v24 = v40;
  (*(v4 + 16))(v38, v41, v40);
  v25 = (v18 + *(v4 + 80)) & ~*(v4 + 80);
  v26 = swift_allocObject();
  sub_1A4035F70(v10, v26 + v17, v32);
  (*(v4 + 32))(v26 + v25, v23, v24);
  sub_1A4035628(&qword_1EB1308B0, sub_1A4035118, sub_1A40355E0, MEMORY[0x1E69819D0]);
  sub_1A403594C();
  v27 = v42;
  v28 = v37;
  sub_1A524B144();

  return (*(v43 + 8))(v28, v27);
}

uint64_t sub_1A4032590@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  v22 = *(v5 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A4035244(0, &qword_1EB130870, sub_1A40352A0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v13 = *a1;
  v12 = a1[1];
  sub_1A40347DC(0);
  MEMORY[0x1A58FD460]();
  v24 = v13;
  v25 = v12;
  v14 = sub_1A52431A4();

  if (v14)
  {
    sub_1A4032804(a2, v14, v11);
    sub_1A4035EA8(a2, &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
    v15 = (*(v22 + 80) + 16) & ~*(v22 + 80);
    v16 = swift_allocObject();
    sub_1A4035F70(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
    *(v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
    v17 = &v11[*(v8 + 36)];
    *v17 = sub_1A4036388;
    v17[1] = v16;
    v17[2] = 0;
    v17[3] = 0;
    v18 = v23;
    sub_1A4036494(v11, v23);
    v19 = 0;
    v20 = v18;
  }

  else
  {
    v19 = 1;
    v20 = v23;
  }

  return (*(v9 + 56))(v20, v19, 1, v8);
}

uint64_t sub_1A4032804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  sub_1A40354D0(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E697F948];
  sub_1A4035384(0, &qword_1EB130930, sub_1A403533C, sub_1A40354D0, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v49 - v11;
  sub_1A4035384(0, &qword_1EB130938, sub_1A4035408, sub_1A403549C, v9);
  v52 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v54 = (v49 - v15);
  sub_1A403533C(0, v14);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4035408(0);
  v53 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  if (*(a1 + *(v23 + 56)))
  {
    goto LABEL_2;
  }

  v49[0] = v19;
  v49[1] = v17;
  v50 = v12;
  v51 = v6;
  v33 = *(*a2 + 208);
  LOBYTE(v56[0]) = v33();
  LOBYTE(v59) = 0;
  sub_1A4036514();
  if (sub_1A524C594())
  {
    v34 = *(a1 + 32);
    v57 = v23;
    v58 = &off_1F16F18E8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
    sub_1A4035EA8(a1, boxed_opaque_existential_1, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
    sub_1A3E05888(0);
    v37 = v36;
    v38 = sub_1A4034794(&qword_1EB12CD08, sub_1A3E05888, &unk_1A53270BC);

    sub_1A3DF0104(v34, v56, v37, v38, v22);
    sub_1A4035EA8(v22, v54, sub_1A4035408);
    swift_storeEnumTagMultiPayload();
    sub_1A403549C(0);
    sub_1A4034794(&qword_1EB12CD90, sub_1A4035408, &unk_1A52FFA40);
    sub_1A4034794(&qword_1EB1308E0, sub_1A403549C, &unk_1A53177A0);
    v39 = v49[0];
    sub_1A5249744();
    sub_1A4035EA8(v39, v50, sub_1A403533C);
    swift_storeEnumTagMultiPayload();
    sub_1A403586C(v40);
    sub_1A4034794(&qword_1EB1308E8, sub_1A40354D0, &unk_1A5324C00);
    sub_1A5249744();
    sub_1A4035F10(v39, sub_1A403533C);
    v31 = sub_1A4035408;
    v32 = v22;
    return sub_1A4035F10(v32, v31);
  }

  LOBYTE(v56[0]) = v33();
  LOBYTE(v59) = 5;
  v42 = sub_1A524C594();
  v12 = v50;
  v43 = v49[0];
  if ((v42 & 1) == 0)
  {
LABEL_2:
    v24 = *(a1 + 32);
    v57 = v23;
    v58 = &off_1F16F18E8;
    v59 = a2;
    v25 = __swift_allocate_boxed_opaque_existential_1(v56);
    sub_1A4035EA8(a1, v25, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
    sub_1A3E05888(0);
    v27 = v26;
    v28 = sub_1A4034794(&qword_1EB1308A0, sub_1A3E05888, &unk_1A5327170);

    sub_1A41E44F0(&v59, v24, v56, v27, v28, v8);
    sub_1A4035EA8(v8, v12, sub_1A40354D0);
    swift_storeEnumTagMultiPayload();
    sub_1A403586C(v29);
    sub_1A4034794(&qword_1EB1308E8, sub_1A40354D0, &unk_1A5324C00);
    sub_1A5249744();
    v30 = sub_1A40354D0;
  }

  else
  {
    sub_1A3E05888(0);

    v45 = sub_1A40AD4CC(v44);
    v8 = v43;
    v46 = v54;
    *v54 = v45;
    v46[1] = v47;
    swift_storeEnumTagMultiPayload();
    sub_1A403549C(0);
    sub_1A4034794(&qword_1EB12CD90, sub_1A4035408, &unk_1A52FFA40);
    sub_1A4034794(&qword_1EB1308E0, sub_1A403549C, &unk_1A53177A0);

    sub_1A5249744();
    sub_1A4035EA8(v43, v12, sub_1A403533C);
    swift_storeEnumTagMultiPayload();
    sub_1A403586C(v48);
    sub_1A4034794(&qword_1EB1308E8, sub_1A40354D0, &unk_1A5324C00);
    sub_1A5249744();

    v30 = sub_1A403533C;
  }

  v31 = v30;
  v32 = v8;
  return sub_1A4035F10(v32, v31);
}

void sub_1A4033024(void *a1)
{
  if (a1)
  {
    type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
    sub_1A40361D4(0, &qword_1EB130910, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E697DA80]);
    v2 = a1;
    sub_1A5247C84();
    v3 = sub_1A42773DC();

    if (v3)
    {
      v4 = *&v2[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_uuid] == *&v3[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_uuid] && *&v2[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_uuid + 8] == *&v3[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_uuid + 8];
      if (v4 || (sub_1A524EAB4() & 1) != 0)
      {
        if (qword_1EB1A1C90 != -1)
        {
          swift_once();
        }

        v5 = sub_1A5246F24();
        __swift_project_value_buffer(v5, qword_1EB1A1C98);
        v6 = sub_1A5246F04();
        v7 = sub_1A524D224();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&dword_1A3C1C000, v6, v7, "Marking shared albums activity feed as viewed", v8, 2u);
          MEMORY[0x1A590EEC0](v8, -1, -1);
        }

        [objc_opt_self() userDidViewCloudFeedContent_];
      }

      v2 = v3;
    }
  }
}

void sub_1A40331E4(void *a1)
{
  type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  sub_1A40361D4(0, &qword_1EB130910, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v2 = sub_1A427706C();

  if ((v2 & 1) == 0)
  {
    sub_1A5247C84();
    v3 = sub_1A42770F8();

    if (v3)
    {
      if (a1)
      {
        v4 = a1;
        sub_1A5247C84();
        v5 = sub_1A4277508();

        if (v5)
        {
          v6 = *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_uuid] == *&v5[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_uuid] && *&v4[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_uuid + 8] == *&v5[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_uuid + 8];
          if (v6 || (sub_1A524EAB4() & 1) != 0)
          {
            sub_1A5247C84();
            sub_1A42794F8();
          }

          v4 = v5;
        }
      }

      else
      {
        sub_1A5247C84();
        v4 = v7;
        sub_1A42794F8();
      }
    }
  }
}

double sub_1A4033358()
{
  type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  sub_1A40361D4(0, &qword_1EB130810, sub_1A4034618, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A5242804();

  if (v18)
  {
    sub_1A40347DC(0);
    MEMORY[0x1A58FD460]();
    v1 = sub_1A5243164();

    v2 = (v1 + 40);
    v3 = *(v1 + 16) + 1;
    while (--v3)
    {
      if (*(v2 - 1) != v17 || v18 != *v2)
      {
        v2 += 2;
        if ((sub_1A524EAB4() & 1) == 0)
        {
          continue;
        }
      }

      if (qword_1EB1A1C90 != -1)
      {
        swift_once();
      }

      v5 = sub_1A5246F24();
      __swift_project_value_buffer(v5, qword_1EB1A1C98);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A40361D4(0, &qword_1EB130910, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E697DA80]);
    sub_1A5247C84();
    v6 = sub_1A42770F8();

    if (v6)
    {
      if (qword_1EB1A1C90 != -1)
      {
        swift_once();
      }

      v7 = sub_1A5246F24();
      __swift_project_value_buffer(v7, qword_1EB1A1C98);
      v8 = sub_1A5246F04();
      v9 = sub_1A524D264();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1A3C1C000, v8, v9, "Scroll-to item not found, attempting to load more activity items", v10, 2u);
        MEMORY[0x1A590EEC0](v10, -1, -1);
      }

      sub_1A5247C84();
      v11 = sub_1A427706C();

      if ((v11 & 1) == 0)
      {
        sub_1A5247C84();
        v12 = sub_1A42770F8();

        if (v12)
        {
          sub_1A5247C84();
          sub_1A42794F8();
        }
      }
    }

    else
    {
      if (qword_1EB1A1C90 != -1)
      {
        swift_once();
      }

      v13 = sub_1A5246F24();
      __swift_project_value_buffer(v13, qword_1EB1A1C98);
      v14 = sub_1A5246F04();
      v15 = sub_1A524D244();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_1A3C1C000, v14, v15, "Scroll-to item not found, but item list manager cannot fetch any more items. Giving up scrolling to item.", v16, 2u);
        MEMORY[0x1A590EEC0](v16, -1, -1);
      }

      sub_1A5247C84();
      sub_1A5242814();
    }
  }

  return result;
}

void sub_1A4033858(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v34 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v33 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v30 = sub_1A524BFC4();
  v8 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  sub_1A40361D4(0, &qword_1EB130810, sub_1A4034618, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A5242804();

  v14 = v36;
  if (v36)
  {
    v26 = v2;
    v28 = v4;
    v15 = aBlock;
    sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
    v25 = sub_1A524D474();
    sub_1A524BFA4();
    sub_1A524C014();
    v27 = *(v8 + 8);
    v16 = v10;
    v17 = v30;
    v27(v16, v30);
    sub_1A4035EA8(a1, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
    v18 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    *(v19 + 24) = v14;
    sub_1A4035F70(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
    v39 = sub_1A4035FD8;
    v40 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1A3C2E0D0;
    v38 = &block_descriptor_78;
    v20 = _Block_copy(&aBlock);

    v21 = v32;
    sub_1A524BF14();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1A4034794(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C38394(0);
    sub_1A4034794(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
    v22 = v34;
    v23 = v26;
    sub_1A524E224();
    v24 = v25;
    MEMORY[0x1A5908790](v13, v21, v22, v20);
    _Block_release(v20);

    (*(v31 + 8))(v22, v23);
    (*(v33 + 8))(v21, v28);
    v27(v13, v17);
  }

  PXSetSharedAlbumsActivityLastSeenDateAfterDelay();
}

id sub_1A4033D7C()
{
  type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  sub_1A40361D4(0, &qword_1EB130910, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v0 = sub_1A4276B20();

  sub_1A46C7B64(&v9);
  v1 = v9;
  v9 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_20:
    v2 = sub_1A524E2B4();
    if (!v2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_21;
    }
  }

  v3 = 0;
  do
  {
    v4 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1A59097F0](v4, v1);
        v3 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        swift_unknownObjectRetain();
        v3 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v4;
      if (v3 == v2)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x1A5907D70]();
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
  }

  while (v3 != v2);
LABEL_21:

  v5 = objc_opt_self();
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v6 = sub_1A524CA14();

  v7 = [v5 transientAssetCollectionWithAssets:v6 title:0];

  return v7;
}

id sub_1A4033FE4(void *a1)
{
  if ([a1 px_isContentPreviewable])
  {
    return 0;
  }

  v3 = [objc_allocWithZone(PXSensitivityInterventionManager) initWithAsset:a1 interventionType:1];
  sub_1A40361D4(0, &qword_1EB130918, sub_1A4034670, MEMORY[0x1E697DA80]);
  sub_1A5247C94();
  sub_1A5247C84();
  return v3;
}

uint64_t sub_1A40340BC()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1A1C98);
  v1 = __swift_project_value_buffer(v0, qword_1EB1A1C98);
  v2 = sub_1A45318CC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t _s12PhotosUICore53LemonadeSharedAlbumsActivityFeedNavigationDestinationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        v14 = *a1;
        if (v3 != v6 || v2 != v5)
        {
          v10 = sub_1A524EAB4();
          sub_1A4030DC4(v6, v5, 2u);
          sub_1A4030DC4(v3, v2, 2u);
          sub_1A3EECFA4(v3, v2, 2u);
          v11 = v6;
          v12 = v5;
          v13 = 2;
          goto LABEL_28;
        }

        sub_1A4030DC4(v14, v2, 2u);
        sub_1A4030DC4(v3, v2, 2u);
        sub_1A3EECFA4(v3, v2, 2u);
        v21 = v3;
        v22 = v2;
        v23 = 2;
        goto LABEL_34;
      }

      goto LABEL_29;
    }

    if (v7 != 3)
    {
      goto LABEL_29;
    }

    v18 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v10 = sub_1A524EAB4();
      sub_1A4030DC4(v6, v5, 3u);
      sub_1A4030DC4(v3, v2, 3u);
      sub_1A3EECFA4(v3, v2, 3u);
      v11 = v6;
      v12 = v5;
      v13 = 3;
      goto LABEL_28;
    }

    sub_1A4030DC4(v18, v2, 3u);
    sub_1A4030DC4(v3, v2, 3u);
    sub_1A3EECFA4(v3, v2, 3u);
    v21 = v3;
    v22 = v2;
    v23 = 3;
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        v8 = *a1;
        if (v3 != v6 || v2 != v5)
        {
          v10 = sub_1A524EAB4();
          sub_1A4030DC4(v6, v5, 0);
          sub_1A4030DC4(v3, v2, 0);
          sub_1A3EECFA4(v3, v2, 0);
          v11 = v6;
          v12 = v5;
          v13 = 0;
LABEL_28:
          sub_1A3EECFA4(v11, v12, v13);
          return v10 & 1;
        }

        sub_1A4030DC4(v8, v2, 0);
        sub_1A4030DC4(v3, v2, 0);
        sub_1A3EECFA4(v3, v2, 0);
        v21 = v3;
        v22 = v2;
        v23 = 0;
        goto LABEL_34;
      }

LABEL_29:
      sub_1A4030DC4(*a2, *(a2 + 8), v7);
      sub_1A4030DC4(v3, v2, v4);
      sub_1A3EECFA4(v3, v2, v4);
      sub_1A3EECFA4(v6, v5, v7);
      return 0;
    }

    if (v7 != 1)
    {
      goto LABEL_29;
    }

    v16 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v10 = sub_1A524EAB4();
      sub_1A4030DC4(v6, v5, 1u);
      sub_1A4030DC4(v3, v2, 1u);
      sub_1A3EECFA4(v3, v2, 1u);
      v11 = v6;
      v12 = v5;
      v13 = 1;
      goto LABEL_28;
    }

    sub_1A4030DC4(v16, v2, 1u);
    sub_1A4030DC4(v3, v2, 1u);
    sub_1A3EECFA4(v3, v2, 1u);
    v21 = v3;
    v22 = v2;
    v23 = 1;
  }

LABEL_34:
  sub_1A3EECFA4(v21, v22, v23);
  return 1;
}

BOOL _s12PhotosUICore45LemonadeSharedAlbumsActivityFeedConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 == 255)
  {
    sub_1A4030DB0(*a1, v2, 0xFFu);
    if (v7 == 255)
    {
      sub_1A4030DB0(v6, v5, 0xFFu);
      sub_1A4030DDC(v3, v2, 0xFFu);
      return 1;
    }

    sub_1A4030DB0(v6, v5, v7);
  }

  else
  {
    v13 = *a1;
    v14 = v2;
    v15 = v4;
    if (v7 != 255)
    {
      v10 = v6;
      v11 = v5;
      v12 = v7;
      sub_1A4030DB0(v3, v2, v4);
      sub_1A4030DB0(v6, v5, v7);
      sub_1A4030DB0(v3, v2, v4);
      v8 = _s12PhotosUICore53LemonadeSharedAlbumsActivityFeedNavigationDestinationO2eeoiySbAC_ACtFZ_0(&v13, &v10);
      sub_1A3EECFA4(v10, v11, v12);
      sub_1A3EECFA4(v13, v14, v15);
      sub_1A4030DDC(v3, v2, v4);
      return (v8 & 1) != 0;
    }

    sub_1A4030DB0(v3, v2, v4);
    sub_1A4030DB0(v6, v5, 0xFFu);
    sub_1A4030DB0(v3, v2, v4);
    sub_1A3EECFA4(v3, v2, v4);
  }

  sub_1A4030DDC(v3, v2, v4);
  sub_1A4030DDC(v6, v5, v7);
  return 0;
}

void sub_1A4034618()
{
  if (!qword_1EB1291D0)
  {
    v0 = sub_1A5242854();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1291D0);
    }
  }
}

uint64_t type metadata accessor for LemonadeSharedAlbumsActivityFeedView(uint64_t a1)
{
  result = qword_1EB17A0D0;
  if (!qword_1EB17A0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A40346F0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for SharedAlbumsActivityEntryItemListManager(0);
  v3 = v2;
  v4 = sub_1A3C30368();
  v5 = sub_1A3C5A374();
  sub_1A4277A0C(v3, v1, 1, v4 & 1, 0, v5 & 1, 0, 0x7974697669746341, 0xEC00000064656546);
}

id sub_1A4034780@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_1A4034794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A40347DC(uint64_t a1)
{
  if (!qword_1EB1292D8)
  {
    type metadata accessor for SharedAlbumsActivityEntryItemListManager(255);
    sub_1A3E05888(255);
    sub_1A4034794(&unk_1EB129420, type metadata accessor for SharedAlbumsActivityEntryItemListManager, &unk_1A5329CE8);
    sub_1A4034794(&qword_1EB1293D0, sub_1A3E05888, &unk_1A53270D8);
    v1 = sub_1A5242114();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1292D8);
    }
  }
}

uint64_t sub_1A40348C8(uint64_t a1)
{
  type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  sub_1A4034EE0(0);
  sub_1A4034794(&qword_1EB1308F0, sub_1A4034EE0, MEMORY[0x1E697DA90]);
  return sub_1A5242BA4();
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = *(v2 + 16);
  if (v3 != 255)
  {
    sub_1A3EECFA4(*v2, *(v2 + 8), v3);
  }

  v4 = v2 + v1[7];
  v5 = MEMORY[0x1E6981E90];
  sub_1A40361D4(0, &qword_1EB130818, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E6981E90]);
  (*(*(v6 - 8) + 8))(v4, v6);
  v7 = MEMORY[0x1E6981E98];
  sub_1A40361D4(0, &qword_1EB1271E0, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E6981E98]);

  v8 = v1[8];
  sub_1A40347DC(0);
  (*(*(v9 - 8) + 8))(v2 + v8, v9);
  v10 = v2 + v1[9];
  sub_1A40361D4(0, &qword_1EB130820, sub_1A4034618, v5);
  (*(*(v11 - 8) + 8))(v10, v11);
  sub_1A40361D4(0, &qword_1EB127290, sub_1A4034618, v7);

  v12 = v2 + v1[10];
  sub_1A40361D4(0, &qword_1EB130828, sub_1A4034670, v5);
  (*(*(v13 - 8) + 8))(v12, v13);
  sub_1A40361D4(0, &qword_1EB130830, sub_1A4034670, v7);

  v14 = v1[11];
  sub_1A3F88738(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1A5249A94();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v2 + v14, 1, v15))
    {
      (*(v16 + 8))(v2 + v14, v15);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A4034D58()
{
  v1 = *(type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1A4033858(v2);
}

void sub_1A4034DB8(uint64_t a1)
{
  if (!qword_1EB130840)
  {
    sub_1A4034E4C(255);
    sub_1A4034794(&qword_1EB1308F8, sub_1A4034E4C, MEMORY[0x1E69C2138]);
    v1 = sub_1A5248A24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130840);
    }
  }
}

void sub_1A4034E4C(uint64_t a1)
{
  if (!qword_1EB130848)
  {
    sub_1A4034EE0(255);
    sub_1A4034794(&qword_1EB1308F0, sub_1A4034EE0, MEMORY[0x1E697DA90]);
    v1 = sub_1A5242BB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130848);
    }
  }
}

void sub_1A4034EE0(uint64_t a1)
{
  if (!qword_1EB130850)
  {
    sub_1A403500C(255);
    sub_1A4035118(255);
    sub_1A3C2DDC4(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A4035628(&qword_1EB1308B0, sub_1A4035118, sub_1A40355E0, MEMORY[0x1E69819D0]);
    sub_1A403594C();
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A5247CD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130850);
    }
  }
}

void sub_1A403500C(uint64_t a1)
{
  if (!qword_1EB130858)
  {
    sub_1A4035118(255);
    sub_1A3C2DDC4(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A4035628(&qword_1EB1308B0, sub_1A4035118, sub_1A40355E0, MEMORY[0x1E69819D0]);
    sub_1A403594C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB130858);
    }
  }
}

void sub_1A4035118(uint64_t a1)
{
  if (!qword_1EB130860)
  {
    sub_1A3C2DDC4(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A40351D0(255);
    sub_1A4035564();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130860);
    }
  }
}

void sub_1A40351D0(uint64_t a1)
{
  if (!qword_1EB130868)
  {
    sub_1A4035244(255, &qword_1EB130870, sub_1A40352A0);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130868);
    }
  }
}

void sub_1A4035244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A40352A0(uint64_t a1, double a2)
{
  if (!qword_1EB130878)
  {
    sub_1A4035384(255, &qword_1EB130880, sub_1A403533C, sub_1A40354D0, MEMORY[0x1E697F960]);
    v2 = sub_1A524B514();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB130878);
    }
  }
}

void sub_1A4035384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A4035408(uint64_t a1)
{
  if (!qword_1EB12CD00)
  {
    sub_1A3E05888(255);
    v3 = v2;
    v4 = sub_1A4034794(&qword_1EB12CD08, sub_1A3E05888, &unk_1A53270BC);
    v6 = type metadata accessor for LemonadeSharedAlbumsActivityFeedAssetsAddedCell(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB12CD00);
    }
  }
}

void sub_1A40354D0(uint64_t a1)
{
  if (!qword_1EB130898)
  {
    sub_1A3E05888(255);
    v3 = v2;
    v4 = sub_1A4034794(&qword_1EB1308A0, sub_1A3E05888, &unk_1A5327170);
    v6 = type metadata accessor for LemonadeSharedAlbumsActivityFeedCompactCell(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB130898);
    }
  }
}

unint64_t sub_1A4035564()
{
  result = qword_1EB1308A8;
  if (!qword_1EB1308A8)
  {
    sub_1A3C2DDC4(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1308A8);
  }

  return result;
}

uint64_t sub_1A4035628(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4035698()
{
  result = qword_1EB1308C0;
  if (!qword_1EB1308C0)
  {
    sub_1A4035244(255, &qword_1EB130870, sub_1A40352A0);
    sub_1A4035628(&qword_1EB1308C8, sub_1A40352A0, sub_1A4035778, MEMORY[0x1E6981600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1308C0);
  }

  return result;
}

unint64_t sub_1A4035778()
{
  result = qword_1EB1308D0;
  if (!qword_1EB1308D0)
  {
    sub_1A4035384(255, &qword_1EB130880, sub_1A403533C, sub_1A40354D0, MEMORY[0x1E697F960]);
    sub_1A403586C(v1);
    sub_1A4034794(&qword_1EB1308E8, sub_1A40354D0, &unk_1A5324C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1308D0);
  }

  return result;
}

unint64_t sub_1A403586C(double a1)
{
  result = qword_1EB1308D8;
  if (!qword_1EB1308D8)
  {
    sub_1A403533C(255, a1);
    sub_1A4034794(&qword_1EB12CD90, sub_1A4035408, &unk_1A52FFA40);
    sub_1A4034794(&qword_1EB1308E0, sub_1A403549C, &unk_1A53177A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1308D8);
  }

  return result;
}

unint64_t sub_1A403594C()
{
  result = qword_1EB126EB0;
  if (!qword_1EB126EB0)
  {
    sub_1A3C2DDC4(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126EB0);
  }

  return result;
}

unint64_t sub_1A40359E0()
{
  result = qword_1EB130900;
  if (!qword_1EB130900)
  {
    sub_1A4035244(255, &qword_1EB130838, sub_1A4034DB8);
    sub_1A4034794(&qword_1EB130908, sub_1A4034DB8, MEMORY[0x1E697C268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130900);
  }

  return result;
}

unint64_t sub_1A4035AB0()
{
  result = qword_1EB130920;
  if (!qword_1EB130920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130920);
  }

  return result;
}

unint64_t sub_1A4035B08()
{
  result = qword_1EB130928;
  if (!qword_1EB130928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130928);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore53LemonadeSharedAlbumsActivityFeedNavigationDestinationOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A4035B98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_1A4035BE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

void sub_1A4035C78(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v2 <= 0x3F)
    {
      sub_1A40361D4(319, &qword_1EB130910, type metadata accessor for SharedAlbumsActivityEntryItemListManager, MEMORY[0x1E697DA80]);
      if (v3 <= 0x3F)
      {
        sub_1A40347DC(319);
        if (v4 <= 0x3F)
        {
          sub_1A40361D4(319, &qword_1EB130810, sub_1A4034618, MEMORY[0x1E697DA80]);
          if (v5 <= 0x3F)
          {
            sub_1A40361D4(319, &qword_1EB130918, sub_1A4034670, MEMORY[0x1E697DA80]);
            if (v6 <= 0x3F)
            {
              sub_1A40361D4(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1A3C2DDC4(319, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A4035EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4035F10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4035F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1A4035FD8()
{
  type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1A40361D4(0, &qword_1EB130810, sub_1A4034618, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A5242804();

  if (v10)
  {
    if (v9 == v1 && v10 == v2)
    {
    }

    else
    {
      v4 = sub_1A524EAB4();

      if ((v4 & 1) == 0)
      {
        return result;
      }
    }

    if (qword_1EB1A1C90 != -1)
    {
      swift_once();
    }

    v5 = sub_1A5246F24();
    __swift_project_value_buffer(v5, qword_1EB1A1C98);
    v6 = sub_1A5246F04();
    v7 = sub_1A524D244();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1A3C1C000, v6, v7, "Scroll-to item took took too long to be found. Giving up scrolling to item.", v8, 2u);
      MEMORY[0x1A590EEC0](v8, -1, -1);
    }

    sub_1A5247C84();
    sub_1A5242814();
  }

  return result;
}

void sub_1A40361D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A4036248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A4032590(a1, v6, a2);
}

double sub_1A40362C8()
{
  type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0);
  sub_1A52488B4();
  return sub_1A4033358();
}

void sub_1A4036388()
{
  v1 = *(type metadata accessor for LemonadeSharedAlbumsActivityFeedView(0) - 8);
  v2 = *(**(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)) + 176);
  v2(&v5);
  v3 = v5;
  sub_1A4033024(v5);

  v2(&v5);
  v4 = v5;
  sub_1A40331E4(v5);
}

uint64_t sub_1A4036494(uint64_t a1, uint64_t a2)
{
  sub_1A4035244(0, &qword_1EB130870, sub_1A40352A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A4036514()
{
  result = qword_1EB130940;
  if (!qword_1EB130940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB130940);
  }

  return result;
}

void *sub_1A40365E4(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_1A3C341C8(a1, v3 + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

void SectionedDataSource.object(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList + 24);
  v6 = *(v3 + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList), v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v8);
  MEMORY[0x1A59016D0](a3, v5, v6);
  __swift_project_boxed_opaque_existential_1(v8, AssociatedTypeWitness);
  v7[3] = swift_getAssociatedTypeWitness();
  v7[4] = swift_getAssociatedConformanceWitness();
  v7[5] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_1A5246224();
}

unint64_t sub_1A40368A4()
{
  result = qword_1EB130950;
  if (!qword_1EB130950)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB130950);
  }

  return result;
}

unint64_t sub_1A4036910()
{
  result = qword_1EB130958;
  if (!qword_1EB130958)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB130958);
  }

  return result;
}

void SectionedDataSource.objects(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList + 24);
  v6 = *(v3 + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList), v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v8);
  MEMORY[0x1A59016D0](a3, v5, v6);
  __swift_project_boxed_opaque_existential_1(v8, AssociatedTypeWitness);
  v7[3] = swift_getAssociatedTypeWitness();
  v7[4] = swift_getAssociatedConformanceWitness();
  v7[5] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_1A5246224();
}

void sub_1A4036D14(uint64_t a1)
{
  if (!qword_1EB130960)
  {
    sub_1A4036910();
    v1 = sub_1A524CB74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB130960);
    }
  }
}

unint64_t sub_1A4036D6C()
{
  result = qword_1EB130968;
  if (!qword_1EB130968)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB130968);
  }

  return result;
}

void SectionedDataSource.indexPath(forObjectID:)(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList), *(v1 + OBJC_IVAR____TtC12PhotosUICore19SectionedDataSource_itemList + 24));
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1A5246384();
}

id SectionedDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SectionedDataSource.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A40370E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = sub_1A524BEE4();
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A524BF64();
  v13 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v20[9] = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HostedContentTextureProvider(v15, v16);
  v26 = v5;
  v29.receiver = v5;
  v29.super_class = v17;
  v24 = a4;
  v27 = objc_msgSendSuper2(&v29, sel_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout_, a1, a2, a3, a4, a5);
  v20[2] = v18;
  v25 = a5;
  v19 = [a5 contentSource];
  if (v19)
  {
    v28[4] = &unk_1F1B445D8;
    v20[1] = v19;
    v20[8] = swift_dynamicCastObjCProtocolUnconditional();
    if (HIDWORD(a1))
    {
      v20[5] = v28;
      v20[4] = v11 + 8;
      v20[3] = v13 + 8;
      v20[7] = a1;
      v20[6] = HIDWORD(a1);
      sub_1A524DA64();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_1A4037738()
{
  v1 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v2 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v2 <= 0x7FFFFFFF)
    {
      v5 = Strong;
      sub_1A40380F0(v1, v3, v2);

      return;
    }

    __break(1u);
  }
}

double sub_1A4037854(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A524BEE4();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A52414C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = sub_1A5241414();
  v15 = type metadata accessor for HostedContentTextureProvider(v13, v14);
  v29.receiver = v2;
  v29.super_class = v15;
  objc_msgSendSuper2(&v29, sel_cancelTextureRequests_, v13);

  v23 = [v2 requestQueue];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v11 + 32))(v18 + v17, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_1A4037C54;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_16_1;
  v19 = _Block_copy(aBlock);

  sub_1A524BF14();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1A3C29B7C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A3C29B7C(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  v20 = v23;
  MEMORY[0x1A5908800](0, v9, v6, v19);
  _Block_release(v19);

  (*(v26 + 8))(v6, v4);
  (*(v24 + 8))(v9, v25);

  return result;
}

void sub_1A4037C54()
{
  sub_1A52414C4();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A4037DD8();
  }
}

uint64_t sub_1A4037DD8()
{
  v1 = v0;
  v2 = sub_1A52413E4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D9C6F4(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5241404();
  v9 = OBJC_IVAR___PXGHostedContentTextureProvider_requestQueue_requestByID;
  sub_1A52414C4();
  sub_1A3C29B7C(&qword_1EB12AF60, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  v24 = (v3 + 8);
  while (1)
  {
    sub_1A524D034();
    sub_1A3C29B7C(&qword_1EB12AF80, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v10 = sub_1A524C594();
    (*v24)(v5, v2);
    if (v10)
    {
      return sub_1A3D9C7D0(v8);
    }

    v11 = sub_1A524D0C4();
    v13 = *v12;
    v11(v26, 0);
    result = sub_1A524D044();
    if (v13 < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (v13 > 0x7FFFFFFF)
    {
      goto LABEL_12;
    }

    swift_beginAccess();
    v15 = sub_1A4038330(v13);
    if (v16)
    {
      v17 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v1 + v9);
      v25 = v21;
      *(v1 + v9) = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A40387C0(isUniquelyReferenced_nonNull_native, v19);
        v21 = v25;
      }

      v22 = v17;
      v23 = *(*(v21 + 56) + 8 * v17);
      sub_1A403864C(v22, v21, v20);
      *(v1 + v9) = v21;
      swift_endAccess();
      *(v23 + 56) = 1;
      [*(v23 + 24) unregisterFrameObserver_];
      *(v23 + 48) = 0;

      swift_unknownObjectRelease();
    }

    else
    {
      swift_endAccess();
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

id sub_1A40380F0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = [v4 isRequestActive_];
  if (result)
  {
    type metadata accessor for HostedContentTextureProvider.HostingControllerRequest(result, v9);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    swift_unknownObjectWeakAssign();
    *(v10 + 16) = a3;
    *(v10 + 24) = a1;
    v11 = a1;
    *(v10 + 32) = [v4 requestQueue];
    *(v10 + 48) = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v11 registerFrameObserver_];
    v12 = OBJC_IVAR___PXGHostedContentTextureProvider_requestQueue_requestByID;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *&v4[v12];
    *&v4[v12] = 0x8000000000000000;
    sub_1A4038910(v10, a3, isUniquelyReferenced_nonNull_native);
    *&v4[v12] = v14;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1A403829C()
{
  MEMORY[0x1A590F020](v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1A40382EC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HostedContentTextureProvider(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1A4038330(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1A5909FE0](*(v1 + 40), a1, 4);

  return sub_1A4038378(v2, v3);
}

unint64_t sub_1A4038378(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_1A40383E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A4038B7C(0, a2);
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = MEMORY[0x1A5909FE0](*(v7 + 40), v20, 4);
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_1A403864C(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1A524E244() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 4 * v7);
      result = MEMORY[0x1A5909FE0](*(a2 + 40), *v11, 4);
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = (v10 + 4 * v4);
          if (v4 != v7 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v4);
          v18 = (v16 + 8 * v7);
          if (v4 != v7 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1A40387C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A4038B7C(0, a2);
  v4 = *v2;
  v5 = sub_1A524E764();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 4 * v19) = *(*(v4 + 48) + 4 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1A4038910(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A4038330(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A40383E4(v14, a3 & 1);
      v9 = sub_1A4038330(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1A40387C0(v9, v10);
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 4 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_1A4038A80(void *a1)
{
  if ((*(v1 + 56) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [a1 pixelBuffer];
      v6 = *(off_1E7722058 + 16);
      v7 = *(off_1E7722058 + 28);
      v8 = *(v1 + 16);
      v9 = *off_1E7722058;
      v10 = v6;
      v11 = *(off_1E7722058 + 20);
      v12 = v7;
      [v4 providePixelBuffer:v5 options:&v9 adjustment:0 forRequestID:v8];
    }

    else
    {
      *(v1 + 56) = 1;
      [*(v1 + 24) unregisterFrameObserver_];
      *(v1 + 48) = 0;

      swift_unknownObjectRelease();
    }
  }
}

void sub_1A4038B7C(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB130A48)
  {
    type metadata accessor for HostedContentTextureProvider.HostingControllerRequest(0, a2);
    v2 = sub_1A524E7A4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB130A48);
    }
  }
}

uint64_t sub_1A4038CF0(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A4038D50(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12PhotosUICore31PhotosDetailsShazamEventsWidget_widgetInteractionDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A4038E8C(void *a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC12PhotosUICore31PhotosDetailsShazamEventsWidget_contextObservation))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A5246634();
  }

  sub_1A4110FA4(a1);
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x90))();
  if (result)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A524D1A4();
  }

  __break(1u);
  return result;
}

void sub_1A4038FCC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x1C0))(a2);
  }
}

void (*sub_1A403905C(uint64_t *a1))(void **a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_1A4110EF8();
  return sub_1A40390A4;
}