void sub_1A440AD98(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v6[2] = v1[2];
  v6[3] = v3;
  v6[4] = v1[4];
  v4 = v1[1];
  v6[0] = *v1;
  v6[1] = v4;
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = 0;
  sub_1A4409270(0);
  sub_1A44087FC(v6, (a1 + *(v5 + 44)));
}

unint64_t sub_1A440AE40()
{
  result = qword_1EB13A200;
  if (!qword_1EB13A200)
  {
    sub_1A4409FB4(255);
    sub_1A4409DCC(&qword_1EB13A208, sub_1A440A014, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A200);
  }

  return result;
}

uint64_t sub_1A440AEF0(uint64_t a1, uint64_t a2)
{
  sub_1A4409898(0, &qword_1EB13A160, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A440AF70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A440AFD8(uint64_t a1)
{
  sub_1A4409898(0, &qword_1EB13A160, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A440B050(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A440B0B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A440B108@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 16) + 8);
  sub_1A3DBD9A0();
  v4 = sub_1A524C714();
  v6 = v5;
  result = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = 0;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  return result;
}

uint64_t sub_1A440B190(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4409634(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A440B1E0(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  KeyPath = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A440B250(uint64_t a1, uint64_t a2)
{
  sub_1A4409CFC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A440B2B4()
{
  result = qword_1EB13A218;
  if (!qword_1EB13A218)
  {
    sub_1A440992C(255, &qword_1EB13A168, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for GenerativeStoryInlineActionButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A218);
  }

  return result;
}

double sub_1A440B338(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1A440B398(uint64_t a1, uint64_t a2)
{
  sub_1A440992C(0, &qword_1EB13A168, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for GenerativeStoryInlineActionButton);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A440B428(uint64_t a1)
{
  sub_1A440992C(0, &qword_1EB13A168, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for GenerativeStoryInlineActionButton);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static PHFetchOptions.px_placesFetchOptions(with:)(void *a1)
{
  [a1 setIncludeAssetSourceTypes_];
  [a1 setIncludeHiddenAssets_];
  [a1 setIncludeGuestAssets_];

  return a1;
}

void sub_1A440B550(uint64_t a1)
{
  if (!qword_1EB13A228)
  {
    sub_1A440B5AC();
    v1 = sub_1A5248614();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13A228);
    }
  }
}

unint64_t sub_1A440B5AC()
{
  result = qword_1EB13A230;
  if (!qword_1EB13A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A230);
  }

  return result;
}

uint64_t sub_1A440B600@<X0>(uint64_t *a1@<X8>)
{
  sub_1A440B640();
  swift_allocObject();
  result = sub_1A5242844();
  *a1 = result;
  return result;
}

void sub_1A440B640()
{
  if (!qword_1EB1291D8)
  {
    v0 = sub_1A5242854();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1291D8);
    }
  }
}

void sub_1A440B698(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1A440B51C(0);
  sub_1A524B694();
  *(a4 + 40) = v17;
  type metadata accessor for LemonadeSocialGroupFeedView(0);
  sub_1A440B640();
  sub_1A5247C74();
  v8 = *(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
  *a4 = a1;
  *(a4 + 8) = v8;
  v9 = *(v8 + 16);
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  v10 = *(v8 + 40);
  *(a4 + 32) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  type metadata accessor for LemonadeSocialGroupSectionProvider(0);
  v12 = v10;
  v13 = v9;
  v14 = v12;
  v15 = v13;

  sub_1A5247C74();
  *(swift_allocObject() + 16) = v15;
  type metadata accessor for LemonadePeopleProgressStatus(0);
  v16 = v15;
  sub_1A5247C74();
}

uint64_t type metadata accessor for LemonadeSocialGroupFeedView(uint64_t a1)
{
  result = qword_1EB1660C0;
  if (!qword_1EB1660C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A440B8A8(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3)
  {
    v5 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x2A0))();
  }

  else
  {
    v5 = 0;
  }

  v6 = v3;
  v7 = v4;

  sub_1A4965B64(v7, v3, 0, v5 & 1, 0, a1);
}

void sub_1A440B94C(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  type metadata accessor for LemonadePeopleProgressStatus(0);
  sub_1A3F53C40(v3);
  *a1 = v4;
}

void sub_1A440B98C(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = type metadata accessor for LemonadeSocialGroupFeedView(0);
  v20 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v21 = v2;
  v22 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadeSocialGroupSectionProvider(0);
  MEMORY[0x1EEE9AC00](v12);
  sub_1A440C244(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A440C2F4(0);
  v13 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1A440C380(0);
  v14 = *(v5 - 8);
  v15 = v5;
  MEMORY[0x1EEE9AC00](v5);
  sub_1A440C594(0);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v16 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A440C664(0);
  v24 = *(v8 - 8);
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v23 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E697DA80];
  sub_1A440CEAC(0, &qword_1EB13A280, type metadata accessor for LemonadeSocialGroupSectionProvider, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v17 = v1;
  sub_1A440CEAC(0, &qword_1EB13A288, sub_1A440B640, v10);

  sub_1A5247C84();
  sub_1A440C4D0(&qword_1EB13A240, type metadata accessor for LemonadeSocialGroupSectionProvider, &unk_1A5377098);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A440C244(uint64_t a1)
{
  if (!qword_1EB13A238)
  {
    v2 = type metadata accessor for LemonadeSocialGroupSectionProvider(255);
    v3 = sub_1A440C4D0(&qword_1EB13A240, type metadata accessor for LemonadeSocialGroupSectionProvider, &unk_1A5377098);
    v6[0] = v2;
    v6[1] = MEMORY[0x1E6981840];
    v6[2] = v3;
    v6[3] = MEMORY[0x1E6981838];
    v4 = type metadata accessor for LemonadeFeed(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB13A238);
    }
  }
}

void sub_1A440C2F4(uint64_t a1)
{
  if (!qword_1EB13A248)
  {
    sub_1A440C244(255);
    sub_1A440C7B4(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13A248);
    }
  }
}

void sub_1A440C380(uint64_t a1)
{
  if (!qword_1EB13A250)
  {
    sub_1A440C2F4(255);
    sub_1A440C420();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A250);
    }
  }
}

unint64_t sub_1A440C420()
{
  result = qword_1EB13A258;
  if (!qword_1EB13A258)
  {
    sub_1A440C2F4(255);
    sub_1A440C4D0(&qword_1EB13A260, sub_1A440C244, &unk_1A535F1A0);
    sub_1A440C518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A258);
  }

  return result;
}

uint64_t sub_1A440C4D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A440C518()
{
  result = qword_1EB1277D0;
  if (!qword_1EB1277D0)
  {
    sub_1A440C7B4(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1277D0);
  }

  return result;
}

void sub_1A440C594(uint64_t a1)
{
  if (!qword_1EB13A268)
  {
    sub_1A440C380(255);
    sub_1A440C2F4(255);
    sub_1A440C420();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A268);
    }
  }
}

void sub_1A440C664(uint64_t a1)
{
  if (!qword_1EB13A270)
  {
    sub_1A440C594(255);
    type metadata accessor for PXPeopleProcessStatus(255);
    sub_1A440C380(255);
    sub_1A440C2F4(255);
    sub_1A440C420();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A440C4D0(&qword_1EB13A278, type metadata accessor for PXPeopleProcessStatus, &unk_1A533A170);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A270);
    }
  }
}

void sub_1A440C7B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A440C804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeSocialGroupFeedView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A440C868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A440C8D0()
{
  v1 = type metadata accessor for LemonadeSocialGroupFeedView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1A440CEAC(0, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v3 = sub_1A49AAA74();

  if (v3)
  {
    LOBYTE(v8[0]) = 3;
    sub_1A3F5CDFC(v8, *(*(v2 + 8) + 16), &v9);
    LOBYTE(v8[0]) = v9;
    v8[1] = *(&v9 + 1);
    sub_1A440B550(0);
    v5 = objc_allocWithZone(v4);
    v6 = sub_1A52485F4();
    v9 = *(v2 + 40);
    v8[0] = v6;
  }

  else
  {
    v9 = *(v2 + 40);
    v8[0] = 0;
  }

  sub_1A440CEAC(0, &qword_1EB13A290, sub_1A440B51C, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A440CA4C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeSocialGroupFeedToolbar(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 8);
  type metadata accessor for LemonadeSocialGroupFeedView(0);
  sub_1A440CEAC(0, &qword_1EB13A288, sub_1A440B640, MEMORY[0x1E697DA80]);

  sub_1A5247C84();
  sub_1A4486B44(v5, v8[1], v4);
  v6 = sub_1A440C4D0(&qword_1EB125490, type metadata accessor for LemonadeSocialGroupFeedToolbar, &unk_1A533FB28);
  MEMORY[0x1A5904CD0](v4, v2, v6);
  return sub_1A440CF10(v4, type metadata accessor for LemonadeSocialGroupFeedToolbar);
}

void sub_1A440CBBC(uint64_t a1)
{
  if (!qword_1EB122338)
  {
    type metadata accessor for LemonadeSocialGroupFeedToolbar(255);
    sub_1A440C4D0(&qword_1EB125490, type metadata accessor for LemonadeSocialGroupFeedToolbar, &unk_1A533FB28);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122338);
    }
  }
}

void sub_1A440CCB8(uint64_t a1)
{
  type metadata accessor for LemonadeNavigationContext(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadePhotoLibraryContext(319, v1);
    if (v2 <= 0x3F)
    {
      sub_1A440CEAC(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1A440CEAC(319, &qword_1EB13A290, sub_1A440B51C, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          sub_1A440CEAC(319, &qword_1EB13A280, type metadata accessor for LemonadeSocialGroupSectionProvider, MEMORY[0x1E697DA80]);
          if (v5 <= 0x3F)
          {
            sub_1A440CEAC(319, &qword_1EB124948, type metadata accessor for LemonadePeopleProgressStatus, MEMORY[0x1E697DA80]);
            if (v6 <= 0x3F)
            {
              sub_1A440CEAC(319, &qword_1EB13A288, sub_1A440B640, MEMORY[0x1E697DA80]);
              if (v7 <= 0x3F)
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

void sub_1A440CEAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A440CF10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PXSharedAlbumActionNavigationController.actionControllerDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

id sub_1A440D0D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 actionControllerDelegate];
  *a2 = result;
  return result;
}

uint64_t _s22SharedAlbumsActionViewVMa(uint64_t a1)
{
  result = qword_1EB157B30;
  if (!qword_1EB157B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A440D1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_1A440D8E8(0);
  v45 = v3;
  v41 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4411584(0, &qword_1EB13A318, MEMORY[0x1E697F948]);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  sub_1A440D834(0);
  v43 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v47 = v12;
  v48 = v13;
  sub_1A4411520(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v14 = sub_1A524B6A4();
  v15 = v46;
  v16 = MEMORY[0x1E69E7D40];
  v17 = (*((*MEMORY[0x1E69E7D40] & *v46) + 0x1D8))(v14);

  if (v17 >> 62)
  {
    v18 = sub_1A524E2B4();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18 >= 1)
  {
    v47 = v12;
    v48 = v13;
    v19 = sub_1A524B6A4();
    v20 = v46;
    v21 = (*((*v16 & *v46) + 0x370))(v19);
    v23 = v22;

    v24 = sub_1A44B8260();
    if (v21 == *v24 && v23 == v24[1])
    {
    }

    else
    {
      v25 = sub_1A524EAB4();

      if ((v25 & 1) == 0)
      {
        _s22SharedAlbumsActionViewVMa(0);
        v32 = type metadata accessor for SharedAlbumAddToView(0);
        v33 = sub_1A4410FFC(&qword_1EB13A2D0, type metadata accessor for SharedAlbumAddToView, &protocol conformance descriptor for SharedAlbumAddToView);
        v34 = v40;
        sub_1A524AD74();
        v35 = v41;
        v36 = v45;
        (*(v41 + 16))(v7, v34, v45);
        swift_storeEnumTagMultiPayload();
        v37 = type metadata accessor for SharedAlbumCreationView(255);
        v38 = sub_1A4410FFC(&qword_1EB136188, type metadata accessor for SharedAlbumCreationView, &protocol conformance descriptor for SharedAlbumCreationView);
        v47 = v37;
        v48 = v38;
        swift_getOpaqueTypeConformance2();
        v47 = v32;
        v48 = v33;
        swift_getOpaqueTypeConformance2();
        sub_1A5249744();
        return (*(v35 + 8))(v34, v36);
      }
    }
  }

  _s22SharedAlbumsActionViewVMa(0);
  v26 = type metadata accessor for SharedAlbumCreationView(0);
  v27 = sub_1A4410FFC(&qword_1EB136188, type metadata accessor for SharedAlbumCreationView, &protocol conformance descriptor for SharedAlbumCreationView);
  sub_1A524AD74();
  v28 = v43;
  (*(v9 + 16))(v7, v11, v43);
  swift_storeEnumTagMultiPayload();
  v47 = v26;
  v48 = v27;
  swift_getOpaqueTypeConformance2();
  v29 = type metadata accessor for SharedAlbumAddToView(255);
  v30 = sub_1A4410FFC(&qword_1EB13A2D0, type metadata accessor for SharedAlbumAddToView, &protocol conformance descriptor for SharedAlbumAddToView);
  v47 = v29;
  v48 = v30;
  swift_getOpaqueTypeConformance2();
  sub_1A5249744();
  return (*(v9 + 8))(v11, v28);
}

void sub_1A440D7B0(uint64_t a1, double a2)
{
  if (!qword_1EB13A2B0)
  {
    sub_1A4411584(255, &qword_1EB13A2B8, MEMORY[0x1E697F960]);
    v2 = sub_1A52483B4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13A2B0);
    }
  }
}

void sub_1A440D834(uint64_t a1)
{
  if (!qword_1EB13A2C0)
  {
    type metadata accessor for SharedAlbumCreationView(255);
    sub_1A4410FFC(&qword_1EB136188, type metadata accessor for SharedAlbumCreationView, &protocol conformance descriptor for SharedAlbumCreationView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A2C0);
    }
  }
}

void sub_1A440D8E8(uint64_t a1)
{
  if (!qword_1EB13A2C8)
  {
    type metadata accessor for SharedAlbumAddToView(255);
    sub_1A4410FFC(&qword_1EB13A2D0, type metadata accessor for SharedAlbumAddToView, &protocol conformance descriptor for SharedAlbumAddToView);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A2C8);
    }
  }
}

void sub_1A440D99C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = OBJC_IVAR____TtC12PhotosUICore29HostingViewControllerProvider_viewControllerReference;
    swift_beginAccess();
    sub_1A3CB6AA8(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    if (!(*(*(v3 - 8) + 48))(v1 + v2, 1, v3))
    {

      sub_1A5245C94();
    }

    swift_endAccess();
  }

  else
  {
    type metadata accessor for HostingViewControllerProvider(0);
    sub_1A4410FFC(&qword_1EB131170, type metadata accessor for HostingViewControllerProvider, &protocol conformance descriptor for HostingViewControllerProvider);
    sub_1A5248BA4();
    __break(1u);
  }
}

uint64_t sub_1A440DBB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A440DC18()
{
  result = qword_1EB136180;
  if (!qword_1EB136180)
  {
    sub_1A3CB6AA8(255, &qword_1EB12E7A8, &qword_1EB126AC0, 0x1E6978650, type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136180);
  }

  return result;
}

uint64_t sub_1A440DC9C(uint64_t a1, uint64_t a2)
{
  v4 = _s22SharedAlbumsActionViewVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A440DD04(uint64_t a1, double a2)
{
  if (!qword_1EB13A2D8)
  {
    sub_1A440DD64(255, a2);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13A2D8);
    }
  }
}

void sub_1A440DD64(uint64_t a1, double a2)
{
  if (!qword_1EB13A2E0)
  {
    sub_1A4411584(255, &qword_1EB13A2B8, MEMORY[0x1E697F960]);
    sub_1A440DDE4(v2);
    v3 = sub_1A524B8B4();
    if (!v4)
    {
      atomic_store(v3, &qword_1EB13A2E0);
    }
  }
}

unint64_t sub_1A440DDE4(double a1)
{
  result = qword_1EB13A2E8;
  if (!qword_1EB13A2E8)
  {
    sub_1A4411584(255, &qword_1EB13A2B8, MEMORY[0x1E697F960]);
    type metadata accessor for SharedAlbumCreationView(255);
    sub_1A4410FFC(&qword_1EB136188, type metadata accessor for SharedAlbumCreationView, &protocol conformance descriptor for SharedAlbumCreationView);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for SharedAlbumAddToView(255);
    sub_1A4410FFC(&qword_1EB13A2D0, type metadata accessor for SharedAlbumAddToView, &protocol conformance descriptor for SharedAlbumAddToView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A2E8);
  }

  return result;
}

void sub_1A440DF3C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  *a2 = sub_1A524BC74();
  a2[1] = v6;
  sub_1A440D7B0(0, v7);
  sub_1A440D1E4(v2, a2 + *(v8 + 44));
  sub_1A440DBB0(v2, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s22SharedAlbumsActionViewVMa);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_1A440DC9C(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1A440DD04(0, v11);
  v13 = (a2 + *(v12 + 36));
  *v13 = sub_1A4411600;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = 0;
}

void sub_1A440E070(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v5 = v4;
  sub_1A4411520(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v34[2] = v34 - v9;
  v35 = _s22SharedAlbumsActionViewVMa(0);
  MEMORY[0x1EEE9AC00](v35);
  sub_1A4411520(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v36 = v34 - v11;
  v12 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5240E64();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel] = 0;
  v5[OBJC_IVAR___PXSharedAlbumActionNavigationController_didDismissSharedAlbumsActionView] = 0;
  if (a2)
  {
    v19 = sub_1A524C634();
  }

  else
  {
    v19 = 0;
  }

  v38.receiver = v5;
  v38.super_class = PXSharedAlbumActionNavigationController;
  v20 = objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, v19, a3);

  v34[1] = a3;
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 systemPhotoLibraryURL];
  sub_1A5240DE4();

  v24 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v25 = sub_1A5240D44();
  v26 = [v24 initWithPhotoLibraryURL_];

  (*(v16 + 8))(v18, v15);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v27 = type metadata accessor for LemonadeDetailsContext(0);
  v28 = v36;
  (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
  type metadata accessor for LemonadePhotoLibraryContext(0, v29);
  v30 = v26;
  v31 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v30, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&aBlock);
  v32 = v22;
  sub_1A3C799F0(v14, 0, 0, v22, v28, &aBlock, v31, 2);
  sub_1A44109A0(v30);
  type metadata accessor for SharedAlbumActionViewModel(0);
  *(swift_allocObject() + 16) = v32;
  v33 = v32;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A440E7BC(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    v7 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v7, v2);
    v8 = a1;
    v9 = sub_1A5246F04();
    v10 = sub_1A524D244();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_1A3C1C000, v9, v10, "Error prefetching sensitive content analyis policy. Error: %@", v11, 0xCu);
      sub_1A3CB65E4(v12);
      MEMORY[0x1A590EEC0](v12, -1, -1);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

id PXSharedAlbumActionNavigationController.init(assets:batchComment:perAssetCreationOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v5 = sub_1A524CA14();

  v6 = sub_1A524C634();

  if (a4)
  {
    sub_1A3C52C70(0, &qword_1EB12B618, 0x1E6978690);
    v7 = sub_1A524C3D4();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAssets:v5 batchComment:v6 perAssetCreationOptions:v7];

  return v8;
}

void PXSharedAlbumActionNavigationController.init(assets:batchComment:perAssetCreationOptions:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v34 = a5;
  v35 = a1;
  sub_1A4411520(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v31 = &v31 - v8;
  v32 = _s22SharedAlbumsActionViewVMa(0);
  MEMORY[0x1EEE9AC00](v32);
  sub_1A4411520(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v33 = &v31 - v10;
  v11 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5240E64();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel] = 0;
  v6[OBJC_IVAR___PXSharedAlbumActionNavigationController_didDismissSharedAlbumsActionView] = 0;
  v37.receiver = v6;
  v37.super_class = PXSharedAlbumActionNavigationController;
  v18 = objc_msgSendSuper2(&v37, sel_initWithNibName_bundle_, 0, 0);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 systemPhotoLibraryURL];
  sub_1A5240DE4();

  v22 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v23 = sub_1A5240D44();
  v24 = [v22 initWithPhotoLibraryURL_];

  (*(v15 + 8))(v17, v14);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v25 = type metadata accessor for LemonadeDetailsContext(0);
  v26 = v33;
  (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
  type metadata accessor for LemonadePhotoLibraryContext(0, v27);
  v28 = v24;
  v29 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v28, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v36);
  v30 = v20;
  sub_1A3C799F0(v13, 0, 0, v20, v26, &v36, v29, 2);
  sub_1A44109A0(v28);
  type metadata accessor for SharedAlbumActionViewModel(0);
  *(swift_allocObject() + 16) = v30;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id PXSharedAlbumActionNavigationController.init(assets:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1A3C52C70(0, &qword_1EB126660, 0x1E6978630);
  v8 = sub_1A524CA14();

  v9 = sub_1A524C634();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB12B618, 0x1E6978690);
  v10 = sub_1A524C3D4();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_1A524C634();

LABEL_6:
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAssets:v8 batchComment:v9 perAssetCreationOptions:v10 selectedPostToAlbumUUID:v11];

  return v12;
}

void PXSharedAlbumActionNavigationController.init(assets:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v36 = a7;
  v37 = a5;
  v38 = a6;
  v35 = a1;
  sub_1A4411520(0, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v33[1] = v33 - v10;
  v34 = _s22SharedAlbumsActionViewVMa(0);
  MEMORY[0x1EEE9AC00](v34);
  sub_1A4411520(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v33 - v12;
  v14 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A5240E64();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  swift_unknownObjectWeakInit();
  *&v8[OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel] = 0;
  v8[OBJC_IVAR___PXSharedAlbumActionNavigationController_didDismissSharedAlbumsActionView] = 0;
  v40.receiver = v8;
  v40.super_class = PXSharedAlbumActionNavigationController;
  v21 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 systemPhotoLibraryURL];
  sub_1A5240DE4();

  v25 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v26 = sub_1A5240D44();
  v27 = [v25 initWithPhotoLibraryURL_];

  (*(v18 + 8))(v20, v17);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for LemonadeDetailsContext(0);
  (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
  type metadata accessor for LemonadePhotoLibraryContext(0, v29);
  v30 = v27;
  v31 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v30, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v39);
  v32 = v23;
  sub_1A3C799F0(v16, 0, 0, v23, v13, &v39, v31, 2);
  sub_1A44109A0(v30);
  type metadata accessor for SharedAlbumActionViewModel(0);
  *(swift_allocObject() + 16) = v32;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id PXSharedAlbumActionNavigationController.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void PXSharedAlbumActionNavigationController.init(coder:)()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___PXSharedAlbumActionNavigationController_viewModel) = 0;
  *(v0 + OBJC_IVAR___PXSharedAlbumActionNavigationController_didDismissSharedAlbumsActionView) = 0;
  sub_1A524E6E4();
  __break(1u);
}

Swift::Void __swiftcall PXSharedAlbumActionNavigationController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43.receiver = v2;
  v43.super_class = PXSharedAlbumActionNavigationController;
  objc_msgSendSuper2(&v43, sel_viewWillAppear_, a1, v6);
  v9 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v10 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v11 = sub_1A5240D44();
  v12 = [v10 initWithPhotoLibraryURL_];

  (*(v5 + 8))(v8, v4);
  if (([v12 isSharedAlbumsEnabled] & 1) == 0)
  {
    v13 = sub_1A524C634();
    v14 = PXLocalizedSharedAlbumsString(v13);

    sub_1A524C674();
    v15 = sub_1A524C634();
    v16 = PXLocalizedSharedAlbumsString(v15);

    sub_1A524C674();
    v17 = sub_1A524C634();
    v18 = PXLocalizedString(v17);

    sub_1A524C674();
    v19 = sub_1A524C634();
    v20 = PXLocalizedString(v19);

    v36[1] = sub_1A524C674();
    v21 = sub_1A524C634();

    v22 = sub_1A524C634();

    v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];

    v24 = swift_allocObject();
    *(v24 + 16) = v2;
    v25 = v2;
    v26 = sub_1A524C634();

    v41 = sub_1A4410C78;
    v42 = v24;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1A3D7692C;
    v40 = &block_descriptor_180;
    v27 = _Block_copy(&aBlock);

    v28 = objc_opt_self();
    v29 = [v28 actionWithTitle:v26 style:0 handler:v27];
    _Block_release(v27);

    [v23 addAction_];
    v30 = swift_allocObject();
    *(v30 + 16) = v25;
    v31 = v25;
    v32 = sub_1A524C634();

    v41 = sub_1A4410D50;
    v42 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1A3D7692C;
    v40 = &block_descriptor_16_7;
    v33 = _Block_copy(&aBlock);

    v34 = [v28 actionWithTitle:v32 style:1 handler:v33];
    _Block_release(v33);

    [v23 addAction_];
    v41 = PXDisplayCollectionDetailedCountsMake;
    v42 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v38 = 1107296256;
    v39 = sub_1A3C2E0D0;
    v40 = &block_descriptor_19_3;
    v35 = _Block_copy(&aBlock);
    [v31 presentViewController:v23 animated:1 completion:v35];

    _Block_release(v35);
    v12 = v23;
  }
}

Swift::Void __swiftcall PXSharedAlbumActionNavigationController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a1);
  if (([v1 didDismissSharedAlbumsActionView] & 1) == 0)
  {
    v3 = [v1 viewModel];
    if (v3)
    {
      v4 = v3;
      (*((*MEMORY[0x1E69E7D40] & *v3) + 0x6E0))(0, 0);
    }

    [v2 setViewModel_];
  }
}

Swift::Void __swiftcall PXSharedAlbumActionNavigationController.setAssets(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 viewModel];
  if (v8)
  {
    v13[1] = v8;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = sub_1A3C56D80();
  (*(v4 + 16))(v7, v9, v3);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D244();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "Trying to set assets in SharedAlbumActionNavigationController before viewModel is set", v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
}

id sub_1A44106BC(char a1, void *a2, id a3)
{
  v6 = [a3 actionControllerDelegate];
  if (v6)
  {
    if (a1)
    {
      if (a2)
      {
        v7 = v6;
        a2 = sub_1A5240B74();
        v6 = v7;
      }

      [v6 sharedAlbumActionControllerDidFinish:a3 error:a2];
    }

    else
    {
      if (a2)
      {
        v8 = v6;
        v9 = a2;
        v10 = sub_1A5240B74();
        [v8 sharedAlbumActionControllerDidFinish:a3 error:v10];
        swift_unknownObjectRelease();

        goto LABEL_10;
      }

      [v6 sharedAlbumActionControllerDidCancel_];
    }

    swift_unknownObjectRelease();
  }

LABEL_10:

  return [a3 setDidDismissSharedAlbumsActionView_];
}

id PXSharedAlbumActionNavigationController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v2 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v2];
}

id PXSharedAlbumActionNavigationController.init(rootViewController:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRootViewController_];

  return v2;
}

id sub_1A44109A0(void *a1)
{
  v1 = [a1 librarySpecificFetchOptions];
  sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
  sub_1A4411520(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A531D3E0;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v4 = sub_1A3D710E8();
  *(v2 + 64) = v4;
  v5 = MEMORY[0x1E69E75F8];
  *(v2 + 32) = 0x737574617473;
  *(v2 + 40) = 0xE600000000000000;
  v6 = MEMORY[0x1E69E7660];
  *(v2 + 96) = v5;
  *(v2 + 104) = v6;
  *(v2 + 72) = 1;
  *(v2 + 136) = v3;
  *(v2 + 144) = v4;
  *(v2 + 112) = 0xD000000000000010;
  *(v2 + 120) = 0x80000001A53D67A0;
  v7 = MEMORY[0x1E69E65A8];
  *(v2 + 176) = MEMORY[0x1E69E6530];
  *(v2 + 184) = v7;
  *(v2 + 152) = 3;
  v8 = sub_1A524D134();
  [v1 setPredicate_];

  sub_1A3C52C70(0, &unk_1EB120A20, 0x1E6978770);
  v9 = [swift_getObjCClassFromMetadata() fetchAssetCollectionsWithType:12 subtype:102 options:v1];
  v10 = [v9 fetchedObjects];
  if (!v10)
  {
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
      sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
      v13 = sub_1A524E6F4();
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      sub_1A524E7D4();
    }

    goto LABEL_6;
  }

  result = [v9 fetchedObjects];
  if (result)
  {
    v12 = result;
    sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
    v13 = sub_1A524CA34();

    v1 = v12;
LABEL_6:

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4410C1C(uint64_t a1)
{
  v2 = _s22SharedAlbumsActionViewVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4410C78()
{
  v1 = *(v0 + 16);
  [objc_opt_self() navigateToDestination:4 completion:0];
  v2 = [v1 viewModel];
  if (v2)
  {
    v3 = v2;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x6E0))(0, 0);
  }
}

void sub_1A4410D50()
{
  v1 = [*(v0 + 16) viewModel];
  if (v1)
  {
    v2 = v1;
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x6E0))(0, 0);
  }
}

void sub_1A4410E54(uint64_t a1)
{
  sub_1A4128338(319);
  if (v1 <= 0x3F)
  {
    sub_1A4411520(319, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SharedAlbumCreationView(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SharedAlbumAddToView(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A4410F4C(double a1)
{
  result = qword_1EB13A308;
  if (!qword_1EB13A308)
  {
    sub_1A440DD04(255, a1);
    sub_1A4410FFC(&qword_1EB13A310, sub_1A440DD64, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A308);
  }

  return result;
}

uint64_t sub_1A4410FFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_52()
{
  v1 = _s22SharedAlbumsActionViewVMa(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = (v2 + *(v1 + 24));

  v4 = v3 + *(type metadata accessor for SharedAlbumCreationView(0) + 28);
  sub_1A4411520(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A5248284();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  else
  {
  }

  sub_1A424D274(0);
  v7 = v6;
  sub_1A3D35BAC(*&v4[v6[9]], v4[v6[9] + 8]);
  v8 = v7[10];
  sub_1A4411520(0, &qword_1EB1248A0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1A5248714();
    (*(*(v9 - 8) + 8))(&v4[v8], v9);
  }

  else
  {
  }

  v10 = v7[11];
  sub_1A4411520(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5242D14();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
  }

  else
  {
  }

  v12 = &v4[v7[13]];

  v13 = v2 + *(v1 + 28);
  sub_1A4411520(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3CB6AA8(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    v15 = v14;
    v16 = *(v14 - 8);
    if (!(*(v16 + 48))(v13, 1, v14))
    {
      (*(v16 + 8))(v13, v15);
    }
  }

  else
  {
  }

  v17 = type metadata accessor for SharedAlbumAddToView(0);

  return swift_deallocObject();
}

void sub_1A44114C0()
{
  v1 = *(_s22SharedAlbumsActionViewVMa(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_1A440D99C(v2);
}

void sub_1A4411520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4411584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A440D834(255);
    v7 = v6;
    sub_1A440D8E8(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A4411614(uint64_t a1)
{
  if (a1 == 5)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A4411658(char a1)
{
  v2 = objc_opt_self();
  v3 = &selRef_separatorColor;
  if ((a1 & 0xFE) != 0)
  {
    v3 = &selRef_secondaryLabelColor;
  }

  v4 = [v2 *v3];

  return sub_1A524B284();
}

uint64_t sub_1A44116C8()
{
  v0 = [objc_opt_self() quaternaryLabelColor];
  sub_1A524B284();
  v1 = sub_1A524B474();

  return v1;
}

uint64_t sub_1A4411734(uint64_t a1, SEL *a2)
{
  v2 = [objc_opt_self() *a2];

  return sub_1A524B284();
}

double sub_1A4411780()
{
  v0 = sub_1A3D41FBC();

  return static EdgeInsets.symmetric(horizontal:vertical:)(16.0, v0);
}

double sub_1A44117C8(unsigned __int8 a1, double a2)
{
  if (a1 > 1u)
  {
    return static EdgeInsets.symmetric(horizontal:vertical:)(16.0, a2);
  }

  static EdgeInsets.all(_:)();
  return result;
}

uint64_t sub_1A441183C(uint64_t a1)
{
  sub_1A3E75D84(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4411904(unsigned __int8 a1)
{
  v1 = a1;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1 > 1)
  {
    sub_1A524A164();
    v9 = sub_1A524A154();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v8 = sub_1A524A1B4();
    sub_1A441183C(v4);
  }

  else
  {
    sub_1A524A184();
    v6 = v5;
    v7 = sub_1A3FE1A88();
    v8 = sub_1A3FE1A98(v6, 12.0, v7);
  }

  return v8;
}

uint64_t sub_1A4411A38(unsigned __int8 a1, unsigned int *a2, double (*a3)(uint64_t), double a4)
{
  v7 = a1;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524A274();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 > 1)
  {
    (*(v12 + 104))(v15, *a2, v11, v13);
    v20 = sub_1A524A154();
    v21 = (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    a3(v21);
    v22 = sub_1A524A1C4();
    sub_1A441183C(v10);
    (*(v12 + 8))(v15, v11);
    return v22;
  }

  else
  {
    v16 = sub_1A3FE1A88();
    v17 = sub_1A3FE1A94(v16);
    v18 = sub_1A3FE1A98(v17, a4, v16);

    return v18;
  }
}

uint64_t sub_1A4411C1C()
{
  sub_1A4411C58();
  sub_1A5249244();
  return v1;
}

unint64_t sub_1A4411C58()
{
  result = qword_1EB171110[0];
  if (!qword_1EB171110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB171110);
  }

  return result;
}

unint64_t sub_1A4411CEC()
{
  result = qword_1EB13A320;
  if (!qword_1EB13A320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A320);
  }

  return result;
}

unint64_t sub_1A4411D44()
{
  result = qword_1EB13A328;
  if (!qword_1EB13A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A328);
  }

  return result;
}

uint64_t sub_1A4411DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A4411D44();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1A4411E24(PXCuratedLibraryViewConfiguration *self, SEL a2)
{
  swift_getKeyPath();
  sub_1A3C52C70(0, &qword_1EB126750, off_1E771D9F8);
  sub_1A3C35DC4(&unk_1EB126760, &protocol conformance descriptor for PXCuratedLibraryViewConfiguration);
  v3 = self;
  sub_1A52457F4();
}

void sub_1A4411ED4(PXCuratedLibraryViewConfiguration *self, SEL a2, unint64_t a3)
{
  swift_getKeyPath();
  sub_1A3C52C70(0, &qword_1EB126750, off_1E771D9F8);
  sub_1A3C35DC4(&qword_1EB126758, &protocol conformance descriptor for PXCuratedLibraryViewConfiguration);
  v4 = self;
  sub_1A5245C74();
}

void PXCuratedLibraryViewConfiguration.environmentValues.modify(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 72) = v1;
  sub_1A5245BA4();
}

void sub_1A44124B8(uint64_t *a1, char a2)
{
  if (a2)
  {
    (*(*a1 + 112))(*(*a1 + 96), *(*a1 + 104), *(*a1 + 80));
    sub_1A3C35940();
  }

  sub_1A3C35940();
}

id sub_1A4412630()
{
  v2.receiver = v0;
  v2.super_class = _s14AssociatedDataCMa_6(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4412704(uint64_t **a1)
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
  PXCuratedLibraryViewConfiguration.environmentValues.modify(v2);
}

id sub_1A441277C()
{
  v0 = sub_1A524C634();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    return v1;
  }

  v3 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);

  return [v3 init];
}

id sub_1A441282C()
{
  v0 = [objc_opt_self() secondaryLabelColor];

  return v0;
}

__n128 sub_1A441286C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(a7 + 32) = result;
  *(a7 + 48) = v9;
  *(a7 + 64) = a2;
  *(a7 + 72) = a3;
  *(a7 + 80) = a4 & 1;
  *(a7 + 88) = a5;
  *(a7 + 96) = a6;
  return result;
}

id sub_1A4412898()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setNumberOfLines_];
  [v1 setTextAlignment_];
  LODWORD(v2) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v2];
  LODWORD(v3) = 1148846080;
  [v1 setContentHuggingPriority:1 forAxis:v3];
  v4 = v1;
  if ((*(v0 + 80) & 1) == 0)
  {
    v5 = *(v0 + 72);
    v6 = objc_opt_self();
    sub_1A3C4ED78(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A52F9790;
    v8 = [v1 widthAnchor];

    v9 = [v8 constraintEqualToConstant_];
    *(v7 + 32) = v9;
    sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
    v4 = sub_1A524CA14();

    [v6 activateConstraints_];
  }

  return v1;
}

void sub_1A4412A60(void *a1)
{
  v3 = *(v1 + 32);
  v4 = sub_1A4412CB4();
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];

  v6 = [objc_opt_self() configurationWithFont_];
  v7 = [*(v1 + 88) imageWithConfiguration_];
  v8 = [v7 imageWithRenderingMode_];

  v9 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  [v9 setImage_];
  v10 = [v9 image];
  if (v10)
  {
    v11 = v10;
    [v10 size];
    v13 = v12;
    v15 = v14;
    [v3 descender];
    [v9 setBounds_];
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  [v17 setBounds_];
  v18 = objc_opt_self();
  v19 = [v18 attributedStringWithAttachment_];

  [v5 appendAttributedString_];
  v20 = [v18 attributedStringWithAttachment_];
  [v5 appendAttributedString_];
  [a1 setAttributedText_];
}

id sub_1A4412CB4()
{
  sub_1A441326C(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v42 - v2;
  v5 = *v0;
  v4 = v0[1];
  v55 = *v0;
  v56 = v4;
  v6 = v0[3];
  v50 = v0;
  if (!v6)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v7 = v0[2];
  v53 = v5;
  v54 = v4;
  v49 = v7;
  v51 = v7;
  v52 = v6;
  v8 = sub_1A5241284();
  v48 = *(*(v8 - 8) + 56);
  v48(v3, 1, 1, v8);
  sub_1A3D5F9DC();
  swift_bridgeObjectRetain_n();
  sub_1A524E014();
  v10 = v9;
  sub_1A3FD7708(v3);

  if ((v10 & 1) == 0)
  {
    v53 = 10;
    v54 = 0xE100000000000000;
    sub_1A44134FC();
    sub_1A524C804();
    v53 = v55;
    v54 = v56;
    v51 = v49;
    v52 = v6;
    v48(v3, 1, 1, v8);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v46 = 0;
  v47 = 0;
  v11 = v50;
  v49 = 1;
  v12 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v13 = sub_1A524C634();

  v14 = [v12 initWithString_];

  v15 = v14;
  v48 = [v15 length];
  sub_1A441326C(0, &qword_1EB120260, sub_1A3C8BC40, MEMORY[0x1E69E6F90]);
  v45 = v16;
  inited = swift_initStackObject();
  v18 = MEMORY[0x1E69DB648];
  v44 = xmmword_1A52FC9F0;
  *(inited + 16) = xmmword_1A52FC9F0;
  v19 = *v18;
  *(inited + 32) = *v18;
  v20 = v11[4];
  v21 = sub_1A3C52C70(0, &qword_1EB120610, 0x1E69DB878);
  *(inited + 40) = v20;
  v22 = *MEMORY[0x1E69DB650];
  v43 = v21;
  *(inited + 64) = v21;
  *(inited + 72) = v22;
  v23 = v11[6];
  v24 = sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);
  *(inited + 104) = v24;
  *(inited + 80) = v23;
  v25 = v19;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  sub_1A3C8BCC0(inited);
  swift_setDeallocating();
  sub_1A3C8BC40(0);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_1A3C8C1E0(&unk_1EB1208B0, type metadata accessor for Key, &unk_1A5304050);
  v29 = sub_1A524C3D4();

  [v15 addAttributes:v29 range:{0, v48}];

  if ((v49 & 1) == 0)
  {
    v30 = swift_initStackObject();
    *(v30 + 16) = v44;
    *(v30 + 32) = v25;
    v31 = v50;
    v32 = v24;
    v33 = v50[5];
    *(v30 + 40) = v33;
    *(v30 + 64) = v43;
    *(v30 + 72) = v27;
    v34 = v25;
    v35 = v31[7];
    *(v30 + 104) = v32;
    *(v30 + 80) = v35;
    v36 = v34;
    v37 = v27;
    v38 = v33;
    v39 = v35;
    sub_1A3C8BCC0(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    v40 = sub_1A524C3D4();

    [v15 addAttributes:v40 range:{v47, v46}];
  }

  return v15;
}

void sub_1A441326C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A44132D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  if (a6)
  {
    v16 = a6;
  }

  else
  {
    v22 = a8;
    v17 = a5;
    v18 = [v17 fontDescriptor];
    v19 = [v18 fontDescriptorWithSymbolicTraits_];

    if (!v19)
    {
      v19 = [v17 fontDescriptor];
    }

    [v17 pointSize];
    v21 = v20;

    v16 = [objc_opt_self() fontWithDescriptor:v19 size:v21];
    a8 = v22;
  }

  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = v16;
  a9[6] = a7;
  a9[7] = a8;
}

uint64_t sub_1A441340C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A44135C8();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A4413470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A44135C8();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A44134D4(uint64_t a1)
{
  sub_1A44135C8();
  sub_1A52496F4();
  __break(1u);
}

unint64_t sub_1A44134FC()
{
  result = qword_1EB13A330;
  if (!qword_1EB13A330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A330);
  }

  return result;
}

unint64_t sub_1A4413554()
{
  result = qword_1EB13A338;
  if (!qword_1EB13A338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A338);
  }

  return result;
}

unint64_t sub_1A44135C8()
{
  result = qword_1EB13A340;
  if (!qword_1EB13A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A340);
  }

  return result;
}

void sub_1A44138AC()
{

  sub_1A5245EC4();
}

void sub_1A4413958(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 16);
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0](a1);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = *(v4 + 8 * a1 + 32);
LABEL_5:

  sub_1A3EE5800(v5, a2);
}

uint64_t type metadata accessor for SharedAlbumsActivityItemList(uint64_t a1)
{
  result = qword_1EB17E890;
  if (!qword_1EB17E890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4413B38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LemonadeShelvesViewModelDisplayState.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A4413D70(void *a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 1120))();

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A4413E18()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v2 + 16), v1, v3);
  return swift_endAccess();
}

uint64_t (*sub_1A4413E78(uint64_t *a1))()
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
  (*(*v1 + 1112))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB129EF8, type metadata accessor for LemonadeShelvesViewModel, &unk_1A533A928);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030(v4);
  return sub_1A4413FC8;
}

double sub_1A4413FD4()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A4414040@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  *a2 = *(v3 + 56);

  swift_unknownObjectRetain();
  return result;
}

double sub_1A44140EC()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  return result;
}

double sub_1A4414160@<D0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  *a2 = v3[9];

  return result;
}

double sub_1A4414208()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  swift_unknownObjectRetain();
  return result;
}

double sub_1A4414274@<D0>(_OWORD **a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  *a2 = v3[5];

  swift_unknownObjectRetain();
  return result;
}

double sub_1A4414320(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a2;
  KeyPath = swift_getKeyPath();
  v12[2] = v9;
  v12[3] = v7;
  v12[4] = v8;
  (*(*v9 + 1120))(KeyPath, a6, v12, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

void sub_1A44143CC(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (v2 == v1[112])
  {
    v1[112] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1120))(v4);
  }
}

void sub_1A44144C8(char a1)
{
  if (v1[153] == (a1 & 1))
  {
    v1[153] = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1120))(v3);
  }
}

void sub_1A44145B0(char a1)
{
  if (v1[168] == (a1 & 1))
  {
    v1[168] = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1120))(v3);
  }
}

void sub_1A4414698(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[96] == v2)
  {
    v1[96] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 1120))(v4);
  }
}

uint64_t sub_1A4414794(char *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  (*(*v1 + 1112))();

  (*(*v1 + 256))(v8, v3);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v7 = v2;
  LOBYTE(v4) = (*(v5 + 48))(&v7, v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v4 & 1;
}

void sub_1A441488C(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  *a2 = v3[168];
}

uint64_t sub_1A441497C()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  swift_beginAccess();
  return v0[96];
}

uint64_t sub_1A44149FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 472))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1A4414AA4(uint64_t *a1))()
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
  (*(*v1 + 1112))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB129EF8, type metadata accessor for LemonadeShelvesViewModel, &unk_1A533A928);
  sub_1A52415F4();

  v4[7] = sub_1A441492C(v4);
  return sub_1A4414BF4;
}

char *sub_1A4414CD0()
{
  v1 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v2 = *(v1 - 8);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (*(*v0 + 560))(v3);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1A3C531C8(v8, v5);
      if (sub_1A4870D30())
      {
        sub_1A3C5322C();
        v11 = v15[15];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A4418FCC(0, *(v10 + 2) + 1, 1, v10, &qword_1EB126260, &type metadata for LemonadeShelfIdentifier);
        }

        v13 = *(v10 + 2);
        v12 = *(v10 + 3);
        if (v13 >= v12 >> 1)
        {
          v10 = sub_1A4418FCC((v12 > 1), v13 + 1, 1, v10, &qword_1EB126260, &type metadata for LemonadeShelfIdentifier);
        }

        sub_1A3C53E7C(v5);
        *(v10 + 2) = v13 + 1;
        v10[v13 + 32] = v11;
      }

      else
      {
        sub_1A3C53E7C(v5);
      }

      v8 += v9;
      --v7;
    }

    while (v7);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}

uint64_t sub_1A4415020(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = (*v1 + 1104);
  v5 = *v4;
  v6 = (*v4)();
  (*(*v1 + 256))(v27);
  v7 = v28;
  v8 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v26 = v3;
  v9 = (*(v8 + 48))(&v26, v7, v8);
  __swift_destroy_boxed_opaque_existential_0(v27);
  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  KeyPath = swift_getKeyPath();
  v23[2] = v2;
  v24 = v3;
  (*(*v2 + 1120))(KeyPath, sub_1A44195D0, v23, MEMORY[0x1E69E7CA8] + 8);

  LOBYTE(v27[0]) = v3;
  sub_1A3DD1890(v25);
  v12 = v5();
  type metadata accessor for LemonadeAnalyticsCustomization();
  v13 = sub_1A47E502C();
  LOBYTE(v27[0]) = v10;
  LemonadeCustomizationAction.rawValue.getter();
  v14 = sub_1A524CFC4();
  LemonadeCustomizationAnalyticsName.rawValue.getter(v14);
  v15 = sub_1A524CFC4();
  v26 = 0;
  LemonadeCustomizationContentType.rawValue.getter(v15);
  v16 = sub_1A524CFC4();
  v17 = sub_1A3C5A374();
  (*(*v13 + 136))(v14, v17 & 1, v15, v16, v6, v12);

  v18 = objc_opt_self();
  v19 = sub_1A524C634();
  sub_1A3E75770(MEMORY[0x1E69E7CC0]);
  sub_1A3C7B6A4(0, v20);
  v21 = sub_1A524C3D4();

  [v18 sendEvent:v19 withPayload:v21];

  return sub_1A3C5FECC();
}

void sub_1A4415324()
{
  (*(*v0 + 1104))();
  KeyPath = swift_getKeyPath();
  (*(*v0 + 1120))(KeyPath, sub_1A4419688, v0, MEMORY[0x1E69E7CA8] + 8);

  sub_1A3C5E1B8();
}

void sub_1A44154E8(void *a1)
{
  *a1 = *(v1 + 104);
  a1[1] = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4415534(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 104);
  *(v2 + 104) = *a1;
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C5F7FC(v3);

  return result;
}

uint64_t sub_1A44155A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 560))();
  *a2 = result;
  return result;
}

void sub_1A4415650(uint64_t *a1)
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
  (*(*v1 + 1112))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB129EF8, type metadata accessor for LemonadeShelvesViewModel, &unk_1A533A928);
  sub_1A52415F4();

  sub_1A44154E8(v4);
}

uint64_t sub_1A44157AC()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    return (*(*v1 + 256))();
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1A4415808()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    (*(*v1 + 304))(&v4);
    if (v5 == 255)
    {
      v2 = 0;
    }

    else
    {
      sub_1A4419724(0);
      sub_1A3C5C69C(&qword_1EB12A1D0, sub_1A4419724, &protocol conformance descriptor for LemonadeShelvesLoader<A>.LoadingTarget);
      v2 = sub_1A524C594();
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1A44158F4()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    return (*(*v1 + 336))() & 1;
  }

  else
  {
    return 1;
  }
}

void sub_1A44159A0(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 1112))();

  swift_beginAccess();
  *a1 = v1[112];
}

void *sub_1A4415A30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 632))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A4415A94(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 640))(&v4);
}

uint64_t (*sub_1A4415AF4(uint64_t *a1))()
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
  (*(*v1 + 1112))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB129EF8, type metadata accessor for LemonadeShelvesViewModel, &unk_1A533A928);
  sub_1A52415F4();

  v4[7] = sub_1A4415950(v4);
  return sub_1A4415C44;
}

uint64_t sub_1A4415C50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 680))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A4415D00(uint64_t *a1))()
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
  (*(*v1 + 1112))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB129EF8, type metadata accessor for LemonadeShelvesViewModel, &unk_1A533A928);
  sub_1A52415F4();

  v4[7] = sub_1A3F28EBC(v4);
  return sub_1A4415E50;
}

double sub_1A4415E5C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*v1 + 560))(v6);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    v27 = v9;
    v28 = v12;
    while (1)
    {
      sub_1A3C531C8(v11, v8);
      if (sub_1A4870D30())
      {
        v13 = sub_1A3C5322C();
        v14 = v30[0];
        v15 = (*(*v2 + 680))(v13);
        if (*(v15 + 16))
        {
          v16 = sub_1A3C6246C(v14);
          if (v17)
          {
            v18 = *(*(v15 + 56) + 8 * v16);

            if (((*(*v18 + 136))(v19) ^ a1))
            {
              v20 = (*(*v18 + 144))(a1 & 1);
              (*(*v2 + 256))(v30, v20);
              v21 = a1;
              v22 = v31;
              v23 = v32;
              __swift_project_boxed_opaque_existential_1(v30, v31);
              v29 = v14;
              v24 = v21 & 1;
              v25 = v22;
              a1 = v21;
              v12 = v28;
              (*(v23 + 104))(&v29, v24, v25, v23);

              sub_1A3C53E7C(v8);
              __swift_destroy_boxed_opaque_existential_0(v30);
            }

            else
            {
              sub_1A3C53E7C(v8);
            }

            goto LABEL_5;
          }
        }
      }

      sub_1A3C53E7C(v8);
LABEL_5:
      v11 += v12;
      if (!--v10)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_15:

  return result;
}

uint64_t sub_1A4416164()
{
  sub_1A42F8230();
  sub_1A42F8448();
  if (sub_1A524E114())
  {
    sub_1A3C5E1B8();
  }

  sub_1A42F823C();
  result = sub_1A524E114();
  if (result)
  {
    return sub_1A3C5FECC();
  }

  return result;
}

uint64_t sub_1A4416200()
{
  (*(*v0 + 256))(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 80))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_1A441629C(char *a1)
{
  v2 = *a1;
  v3 = (*(*v1 + 272))(v9);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
  v8 = v2;
  (*(v6 + 88))(&v8, v5, v6);
  return v3(v9, 0);
}

uint64_t (*sub_1A4416358(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  (*(*v1 + 256))();
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 80))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return sub_1A441643C;
}

void sub_1A441643C(void *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 48);
  v5 = (*(**(*a1 + 40) + 272))(*a1);
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  if (a2)
  {
    v9 = v4;
    (*(v8 + 88))(&v9, v7, v8);
  }

  else
  {
    v10 = v4;
    (*(v8 + 88))(&v10, v7, v8);
  }

  v5(v3, 0);

  free(v3);
}

void sub_1A4416534()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  if ((*(v0 + 153) & 1) == 0)
  {
    v1 = *(v0 + 176);
    if (v1)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v10[2] = v0;
      v11 = 1;
      v3 = *(*v0 + 1120);

      v3(KeyPath, sub_1A44197B8, v10, MEMORY[0x1E69E7CA8] + 8);

      (*(*v1 + 304))(&aBlock, v4);
      v20 = aBlock;
      v21 = v13;
      v18 = 1;
      v19 = 3;
      sub_1A4419724(0);
      sub_1A3C5C69C(&qword_1EB12A1D0, sub_1A4419724, &protocol conformance descriptor for LemonadeShelvesLoader<A>.LoadingTarget);
      if ((sub_1A524C594() & 1) == 0)
      {
        v5 = [objc_opt_self() sharedScheduler];
        v6 = sub_1A524C634();
        v7 = [v5 startTrackedAnimationWithLabel_];

        aBlock = 1;
        LOBYTE(v13) = 3;
        (*(*v1 + 312))(&aBlock);
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        v16 = sub_1A44197C8;
        v17 = v8;
        aBlock = MEMORY[0x1E69E9820];
        v13 = 1107296256;
        v14 = sub_1A3C2E0D0;
        v15 = &block_descriptor_181;
        _Block_copy(&aBlock);
        v9 = v7;

        px_perform_on_main_runloop();
      }
    }
  }
}

uint64_t sub_1A44168A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5242394();
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 176);
  if (v8)
  {
    v9 = *(*v8 + 328);
    v14 = v4;
    v9(v5.n128_f64[0]);
    return (*(v14 + 32))(a1, v7, v3);
  }

  else
  {
    v11 = *MEMORY[0x1E69C1DC8];
    v12 = *(v4 + 104);

    return v12(a1, v11, v3, v5);
  }
}

uint64_t sub_1A44169EC@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 152))
  {
    v3 = sub_1A5242394();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a1;
    v7 = 1;
  }

  else
  {
    v8 = *MEMORY[0x1E69C1DD0];
    v9 = sub_1A5242394();
    v11 = *(v9 - 8);
    (*(v11 + 104))(a1, v8, v9);
    v4 = *(v11 + 56);
    v6 = a1;
    v7 = 0;
    v5 = v9;
  }

  return v4(v6, v7, 1, v5);
}

void (*sub_1A4416B04())(uint64_t)
{
  result = (*(*v0 + 816))();
  if (result)
  {
    v3 = result;
    v4 = v2;
    v5 = (*(*v0 + 824))(0, 0);
    v3(v5);
    result = sub_1A3C784D4(v3, v4);
  }

  v6 = v0[22];
  if (v6)
  {
    v7 = 1;
    v8 = 3;
    return (*(*v6 + 312))(&v7);
  }

  return result;
}

uint64_t sub_1A4416C54()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  swift_beginAccess();
  v1 = v0[16];
  sub_1A3C66EE8(v1, v0[17]);
  return v1;
}

uint64_t sub_1A4416CE8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*(**a1 + 816))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A4416D80(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 824);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

uint64_t (*sub_1A4416E40(uint64_t *a1))()
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
  (*(*v1 + 1112))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB129EF8, type metadata accessor for LemonadeShelvesViewModel, &unk_1A533A928);
  sub_1A52415F4();

  v4[7] = sub_1A4416C04(v4);
  return sub_1A4416F90;
}

uint64_t sub_1A4416F9C()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    return (*(*v1 + 360))() & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A4416FF8()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  return v0[153];
}

void sub_1A441705C(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  *a2 = v3[153];
}

void sub_1A44170FC()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4417170(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  *a2 = v3[20];

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4417218(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  v8 = *a2;
  KeyPath = swift_getKeyPath();
  v11[2] = v8;
  v11[3] = v7;
  (*(*v8 + 1120))(KeyPath, a6, v11, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

uint64_t sub_1A44172B8()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  return v0[168];
}

uint64_t sub_1A441731C(char a1, uint64_t a2, _BYTE *a3)
{
  v6 = swift_allocObject();
  LOBYTE(a3) = *a3;
  sub_1A5241604();
  *(v6 + 16) = a1;
  v7 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 40) = v7;
  *(v6 + 56) = *(a2 + 32);
  *(v6 + 17) = a3;
  return v6;
}

void *sub_1A4417394()
{
  swift_getKeyPath();
  (*(*v0 + 1112))();

  v1 = v0[24];
  v2 = v1;
  return v1;
}

id sub_1A4417400@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 1112))();

  v4 = v3[24];
  *a2 = v4;

  return v4;
}

void sub_1A4417488(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3C5C450(v1);
}

double sub_1A44174B8(uint64_t a1)
{
  sub_1A3C5EC14(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A3C5C42C();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_1A5246F04();
  v10 = sub_1A524D264();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "[ShelvesViewModel] Updating shelf visibilities because of mac synced albums availability change", v11, 2u);
    MEMORY[0x1A590EEC0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v14 = sub_1A524CC44();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;

  sub_1A3D4D930(0, 0, v3, &unk_1A533AD10, v15);

  return result;
}

uint64_t sub_1A441778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4417824, v6, v5);
}

uint64_t sub_1A4417824()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3C5E1B8();
  }

  v1 = *(v0 + 8);

  return v1();
}

double sub_1A4417988(uint64_t a1)
{
  sub_1A3C5EC14(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v6 = sub_1A524CC44();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_1A3D4D930(0, 0, v3, &unk_1A533AD28, v7);

  return result;
}

uint64_t sub_1A4417B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1A5246F24();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1A524CC54();
  v4[9] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4417C20, v7, v6);
}

uint64_t sub_1A4417C20()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[7];
    v1 = v0[8];
    v3 = v0[6];
    v4 = sub_1A3C5C42C();
    (*(v2 + 16))(v1, v4, v3);
    v5 = sub_1A5246F04();
    v6 = sub_1A524D264();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      v8 = sub_1A3C5C9EC();
      v9 = *((*MEMORY[0x1E69E7D40] & **v8) + 0xA0);
      v10 = *v8;
      LOBYTE(v9) = v9();

      *(v7 + 4) = v9 & 1;
      _os_log_impl(&dword_1A3C1C000, v5, v6, "[ShelvesViewModel] Updating shelf visibilities because of wallpaper 'feature available' changed to: %{BOOL}d", v7, 8u);
      MEMORY[0x1A590EEC0](v7, -1, -1);
    }

    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[6];

    (*(v12 + 8))(v11, v13);
    sub_1A3C5E1B8();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1A4417E6C(uint64_t a1, char a2)
{
  sub_1A3C5322C();
  sub_1A3C5F5F8();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v7 == v5 && v8 == v6)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1A524EAB4();
  }

  return v3 & 1;
}

uint64_t sub_1A4418234()
{
  v1 = v0;
  v2 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v3 = *(v2 - 8);
  v4.n128_f64[0] = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  v7 = *(*v0 + 560);
  v8 = MEMORY[0x1E69E7CC0];
  for (i = 2; ; ++i)
  {
    v10 = *(v7(v4) + 16);

    if (i >= v10)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1A4418FCC(0, *(v8 + 16) + 1, 1, v8, &qword_1EB126240, &type metadata for LemonadeCustomizationAnalyticsName);
        v8 = result;
      }

      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1A4418FCC((v17 > 1), v18 + 1, 1, v8, &qword_1EB126240, &type metadata for LemonadeCustomizationAnalyticsName);
        v8 = result;
      }

      *(v8 + 16) = v18 + 1;
      *(v8 + v18 + 32) = 1;
    }

    else
    {
      result = (v7)(v11);
      if (i >= *(result + 16))
      {
        goto LABEL_19;
      }

      sub_1A3C531C8(result + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * i, v6);

      sub_1A3C5322C();
      sub_1A3C53E7C(v6);
      v13 = v22;
      v21 = v22;
      result = (*(*v1 + 432))(&v21);
      if (result)
      {
        v20[1] = v13;
        sub_1A3DD1890(v20);
        v14 = v20[0];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1A4418FCC(0, *(v8 + 16) + 1, 1, v8, &qword_1EB126240, &type metadata for LemonadeCustomizationAnalyticsName);
          v8 = result;
        }

        v16 = *(v8 + 16);
        v15 = *(v8 + 24);
        if (v16 >= v15 >> 1)
        {
          result = sub_1A4418FCC((v15 > 1), v16 + 1, 1, v8, &qword_1EB126240, &type metadata for LemonadeCustomizationAnalyticsName);
          v8 = result;
        }

        *(v8 + 16) = v16 + 1;
        *(v8 + v16 + 32) = v14;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v8 + 16) >= 3uLL)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1A4418544()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_1A3C784D4(*(v0 + 128), *(v0 + 136));

  v1 = OBJC_IVAR____TtC12PhotosUICore24LemonadeShelvesViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A44185FC()
{
  sub_1A4418544();

  return swift_deallocClassInstance();
}

uint64_t sub_1A4418654(char a1)
{
  v2 = a1 & 1;
  v3 = *(*v1 + 136);
  result = v3();
  if ((result & 1) != v2)
  {
    v5 = v1[17];
    if (v5 != 24)
    {
      sub_1A4419BCC((v1 + 24), v10, &qword_1EB13A348, sub_1A44199EC);
      v6 = v11;
      if (v11)
      {
        v7 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        v9 = v5;
        v8 = v3();
        (*(v7 + 104))(&v9, v8 & 1, v6, v7);
        return __swift_destroy_boxed_opaque_existential_0(v10);
      }

      else
      {
        return sub_1A441997C(v10, &qword_1EB13A348, sub_1A44199EC);
      }
    }
  }

  return result;
}

uint64_t (*sub_1A4418780(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_1A44187AC;
}

uint64_t sub_1A44187AC(_BYTE *a1)
{
  v1 = *a1;
  v2 = a1[8];
  v3 = *(*a1 + 16);
  *(v1 + 16) = v2;
  return sub_1A4418654(v3);
}

uint64_t sub_1A44187DC()
{
  swift_getKeyPath();
  (*(*v0 + 168))();

  return v0[16];
}

uint64_t sub_1A4418838@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result & 1;
  return result;
}

void sub_1A44188D0(char a1)
{
  v2 = a1 & 1;
  v3 = v1[16];
  if (v3 == v2)
  {
    v1[16] = v2;

    sub_1A4418654(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 176))(v5);
  }
}

uint64_t (*sub_1A44189C4(uint64_t *a1))()
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
  swift_getKeyPath();
  (*(*v1 + 168))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22LemonadeShelfViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C5C69C(&qword_1EB1258A0, type metadata accessor for LemonadeShelfViewModel, &protocol conformance descriptor for LemonadeShelfViewModel);
  sub_1A52415F4();

  v4[7] = sub_1A4418780(v4);
  return sub_1A4418B00;
}

uint64_t LemonadeShelfViewModel.deinit()
{
  sub_1A441997C(v0 + 24, &qword_1EB13A348, sub_1A44199EC);
  v1 = OBJC_IVAR____TtC12PhotosUICore22LemonadeShelfViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeShelfViewModel.__deallocating_deinit()
{
  sub_1A441997C(v0 + 24, &qword_1EB13A348, sub_1A44199EC);
  v1 = OBJC_IVAR____TtC12PhotosUICore22LemonadeShelfViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1A4418CA0()
{
  type metadata accessor for LemonadeShelfViewModel(0);
  v0 = swift_allocObject();
  sub_1A5241604();
  *(v0 + 16) = 6144;
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  qword_1EB173138 = v0;
  return result;
}

double sub_1A4418D04@<D0>(void *a1@<X8>)
{
  if (qword_1EB173130 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EB173138;

  return result;
}

uint64_t EnvironmentValues.photosShelfCollapsedState.getter()
{
  sub_1A4419A50();
  sub_1A5249244();
  return v1;
}

uint64_t (*EnvironmentValues.photosShelfCollapsedState.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_1A4419A50();
  sub_1A5249244();
  return sub_1A4418E4C;
}

void sub_1A4418E4C(void *a1, char a2, __n128 a3)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_1A5249254();
  }

  else
  {
    sub_1A5249254();
  }
}

uint64_t sub_1A4418EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A3F1D008();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void *sub_1A4418F44()
{
  sub_1A4419AA4();

  return sub_1A5249244();
}

char *sub_1A4418FCC(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1A3C4D548(0, a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void sub_1A44190BC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1A3C6246C(a2);
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
      sub_1A3C6266C(v14, a3 & 1);
      v9 = sub_1A3C6246C(a2);
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
      sub_1A4419208();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
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

void sub_1A4419208()
{
  v1 = v0;
  sub_1A3C62600(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

char *sub_1A4419358(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

void sub_1A4419414()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 112) = v2;
}

void sub_1A4419468()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 96) = v2;
}

uint64_t sub_1A44194BC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = (**(v0 + 16) + 256);
  v4 = *v3;
  (*v3)(v11);
  v5 = v12;
  v6 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v6 + 40))(v1, v5, v6);
  v7 = __swift_destroy_boxed_opaque_existential_0(v11);
  (v4)(v11, v7);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v9 + 120))(v2, v8, v9);
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_1A44195D0()
{
  v1 = *(v0 + 24);
  (*(**(v0 + 16) + 256))(v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = v1;
  (*(v3 + 56))(&v8, v2, v3);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_1A4419688()
{
  (*(*v0 + 256))(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 152))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

void sub_1A4419724(uint64_t a1)
{
  if (!qword_1EB12A1C8)
  {
    v2 = type metadata accessor for LemonadeFeatureLibrary.Shelf(255);
    v3 = sub_1A3C5C69C(&qword_1EB12A150, type metadata accessor for LemonadeFeatureLibrary.Shelf, &unk_1A536AF78);
    v5 = type metadata accessor for LemonadeShelvesLoader.LoadingTarget(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB12A1C8);
    }
  }
}

void sub_1A44197C8()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() sharedScheduler];
  [v2 endTrackedAnimation_];
}

uint64_t sub_1A4419838()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = v2[16];
  v2[16] = *(v1 + 24);
  v4 = *(*v2 + 136);
  result = v4();
  if (v3 != (result & 1))
  {
    v6 = v2[17];
    if (v6 != 24)
    {
      sub_1A4419BCC((v2 + 24), v11, &qword_1EB13A348, sub_1A44199EC);
      v7 = v12;
      if (v12)
      {
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        v10 = v6;
        v9 = v4();
        (*(v8 + 104))(&v10, v9 & 1, v7, v8);
        return __swift_destroy_boxed_opaque_existential_0(v11);
      }

      else
      {
        return sub_1A441997C(v11, &qword_1EB13A348, sub_1A44199EC);
      }
    }
  }

  return result;
}

uint64_t sub_1A441997C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C5EC14(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A44199EC()
{
  result = qword_1EB1256E0;
  if (!qword_1EB1256E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1256E0);
  }

  return result;
}

unint64_t sub_1A4419A50()
{
  result = qword_1EB1730A8[0];
  if (!qword_1EB1730A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1730A8);
  }

  return result;
}

unint64_t sub_1A4419AA4()
{
  result = qword_1EB15A950[0];
  if (!qword_1EB15A950[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15A950);
  }

  return result;
}

unint64_t sub_1A4419B00()
{
  result = qword_1EB13A350;
  if (!qword_1EB13A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A350);
  }

  return result;
}

uint64_t sub_1A4419BCC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C5EC14(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_1A4419C4C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A4416164();
  }

  return result;
}

double sub_1A4419CAC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3C5E1B8();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A3C5FECC();
  }

  return result;
}

uint64_t sub_1A4419D3C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A441778C(v3, v4, v5, v2);
}

uint64_t sub_1A4419DD8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4417B2C(v3, v4, v5, v2);
}

void (*sub_1A441A1C0(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A42C9698(v2);
  return sub_1A3D3D728;
}

uint64_t sub_1A441A28C(uint64_t a1)
{
  result = sub_1A441A39C(&qword_1EB1254C0, &unk_1A533AD74);
  *(a1 + 8) = result;
  return result;
}

void sub_1A441A328()
{
  type metadata accessor for LemonadeFixedShelvesDataSource();
  sub_1A441A39C(&qword_1EB1254C8, &unk_1A533AD4C);

    ;
  }
}

uint64_t sub_1A441A39C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeFixedShelvesDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1A441A438()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1A441A508(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_userData;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  sub_1A441A57C(v4);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_1A441A57C(uint64_t a1)
{
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))())
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      if (a1)
      {
        goto LABEL_4;
      }

LABEL_12:
      v3 = 0;
      if (v7)
      {
        goto LABEL_7;
      }

LABEL_13:
      if (!v3)
      {
        return;
      }

      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

  v7 = 0;
  if (!a1)
  {
    goto LABEL_12;
  }

LABEL_4:
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    swift_unknownObjectRetain();
  }

  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (!v3 || (sub_1A441B6FC(), v4 = v7, v5 = v3, v6 = sub_1A524DBF4(), v4, v5, (v6 & 1) == 0))
  {
LABEL_14:
    sub_1A441AAC4();

    goto LABEL_15;
  }

  v7 = v5;
LABEL_15:
}

void (*sub_1A441A6E8(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_userData;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  swift_unknownObjectRetain();
  return sub_1A441A784;
}

void sub_1A441A784(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);
  swift_unknownObjectRetain();
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_1A441A57C(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1A441A57C(v6);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  free(v3);
}

double sub_1A441A87C()
{
  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_clippingRect;
  swift_beginAccess();
  return *v1;
}

void sub_1A441A934(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC12PhotosUICore25PXStoryChromeSystemButton_clippingRect);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
}

uint64_t sub_1A441AAC4()
{
  v1 = v0;
  sub_1A42DC564(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  sub_1A524DDC4();
  v11 = sub_1A524DE34();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v10, 0, 1, v11);
  v13 = sub_1A524DE64();
  v14 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  if ((v14)(v13))
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 tintColor];

  if (!v16)
  {
    v16 = v14();
    if (v16)
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = [v19 spec];
        swift_unknownObjectRelease();
        if (v20)
        {
          v16 = [v20 defaultTintColor];
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v16 = 0;
      }
    }
  }

  [v1 setTintColor_];

  if (v14())
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = [v17 enabled];
    }

    else
    {
      v18 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
  }

  [v1 setEnabled_];
  sub_1A441AEF8();
  sub_1A524DE54();
  v21 = *(v12 + 48);
  if (v21(v7, 1, v11))
  {
    sub_1A42DC5BC(v7, v10);
    sub_1A524DE64();
    sub_1A4113CCC(v7);
  }

  else
  {
    if (v14())
    {
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = [v22 label];
        swift_unknownObjectRelease();
        if (v23)
        {
          sub_1A524C674();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    sub_1A524DE04();
    sub_1A524DE64();
  }

  sub_1A524DE54();
  if (v21(v4, 1, v11))
  {
    sub_1A42DC5BC(v4, v10);
    sub_1A524DE64();
    return sub_1A4113CCC(v4);
  }

  else
  {
    sub_1A441B014();
    sub_1A524DDD4();
    return sub_1A524DE64();
  }
}

uint64_t sub_1A441AEF8()
{
  v1 = [v0 removeTarget:0 action:0 forControlEvents:0x2000];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))(v1);
  if (result)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 action];
      if (v5)
      {
        [v0 addTarget:objc_msgSend(v4 action:sel_target) forControlEvents:{v5, 0x2000}];
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A441B014()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))())
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      v3 = [v1 systemImageName];
      if (v3)
      {
        v4 = v3;
        [v2 preferredSystemImagePointSize];
        v6 = v5;
        v7 = [v2 preferredSystemImageWeight];
        v8 = objc_opt_self();
        v9 = [v8 configurationWithPointSize:v7 weight:v6];
        if ([v2 applyTintColorAsHierarchicalColor])
        {
          v10 = [v0 tintColor];
          if (!v10)
          {

            __break(1u);
            return;
          }

          v11 = v10;
          v12 = [v8 configurationWithHierarchicalColor_];

          v13 = [v9 configurationByApplyingConfiguration_];
          v9 = v13;
        }

        v14 = [objc_opt_self() px:v4 systemImageNamed:?];

        if (v14)
        {
          [v14 px:v9 imageWithSymbolConfiguration:?];

          swift_unknownObjectRelease();
          return;
        }
      }
    }

    swift_unknownObjectRelease();
  }
}

id sub_1A441B368()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXStoryChromeSystemButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1A441B3AC()
{
  v0 = [objc_allocWithZone(type metadata accessor for PXStoryChromeSystemButton()) initWithFrame_];
  v1 = [objc_allocWithZone(PXStoryChromeButtonConfiguration) init];
  v2 = sub_1A524C634();
  [v1 setLabel_];

  v3 = sub_1A524C634();
  [v1 setSystemImageName_];

  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v5 = v1;
  v4(v1);

  return v0;
}

void *sub_1A441B550()
{
  v0 = [objc_allocWithZone(type metadata accessor for PXStoryChromeSystemButton()) initWithFrame_];
  v1 = [objc_allocWithZone(PXStoryChromeButtonConfiguration) init];
  v2 = sub_1A524C634();
  [v1 setSystemImageName_];

  v3 = [objc_opt_self() redColor];
  [v1 setTintColor_];

  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v5 = v1;
  v4(v1);

  return v0;
}

unint64_t sub_1A441B6FC()
{
  result = qword_1EB13A378;
  if (!qword_1EB13A378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB13A378);
  }

  return result;
}

SEL *sub_1A441B750(void *a1)
{
  sub_1A3C52C70(0, &qword_1EB126BB0, off_1E771F528);
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 canShowInternalUI];

  if (v3 && a1)
  {
    v4 = a1;
    v5 = &selRef_buttonsAlpha;
    v6 = [v4 children];
    v7 = sub_1A3C52C70(0, &qword_1EB126C10, 0x1E69DCC78);
    v8 = sub_1A524CA34();

    if (v8 >> 62)
    {
      goto LABEL_43;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

    if (v9 >= 1)
    {
      v62 = 0;
      v10 = v4;
      if (sub_1A441C0DC())
      {
        v5 = sub_1A441BEF8(v59, &v62, v10);

        goto LABEL_46;
      }

      v61 = 0;
      v13 = [v59 v5[431]];
      v14 = sub_1A524CA34();

      if (v14 >> 62)
      {
        v15 = sub_1A524E2B4();
        if (v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
LABEL_14:
          v51[1] = v51;
          v60 = MEMORY[0x1E69E7CC0];
          sub_1A524E554();
          if ((v15 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_56;
          }

          v16 = 0;
          v56 = v15;
          v57 = v14 & 0xC000000000000001;
          v54 = v14;
          v55 = v14 + 32;
          v52 = v10;
          v53 = v7;
          do
          {
            if (v57)
            {
              v18 = MEMORY[0x1A59097F0](v16, v14);
            }

            else
            {
              v18 = *(v55 + 8 * v16);
            }

            v19 = v18;
            objc_opt_self();
            v20 = swift_dynamicCastObjCClass();
            if (!v20)
            {
              goto LABEL_19;
            }

            v21 = v20;
            v22 = v10;
            v63[2] = &v62;
            v63[3] = v22;
            v58 = v22;
            if (sub_1A441C0DC())
            {
              if (v61 == 1)
              {
                v21;
                v17 = v58;
              }

              else
              {
                v61 = 1;
                v23 = v58;
                v24 = v58;
                sub_1A441BEF8(v21, &v62, v24);

                v17 = v23;
              }

              goto LABEL_18;
            }

            v64[0] = 0;
            v25 = [v21 v5[431]];
            v26 = sub_1A524CA34();

            if (v26 >> 62)
            {
              v4 = sub_1A524E2B4();
              if (v4)
              {
LABEL_29:
                v63[5] = MEMORY[0x1E69E7CC0];
                sub_1A524E554();
                if (v4 < 0)
                {
                  __break(1u);
LABEL_43:
                  v9 = sub_1A524E2B4();
                  goto LABEL_5;
                }

                v27 = 0;
                do
                {
                  if ((v26 & 0xC000000000000001) != 0)
                  {
                    v28 = MEMORY[0x1A59097F0](v27, v26);
                  }

                  else
                  {
                    v28 = *(v26 + 8 * v27 + 32);
                  }

                  v29 = v28;
                  objc_opt_self();
                  v30 = swift_dynamicCastObjCClass();
                  if (v30)
                  {
                    sub_1A441C2A8(v30, v64, &v61, sub_1A441C538, v63);
                  }

                  ++v27;
                  sub_1A524E514();
                  sub_1A524E564();
                  sub_1A524E574();
                  sub_1A524E524();
                }

                while (v4 != v27);

                v10 = v52;
                v7 = v53;
                v5 = &selRef_buttonsAlpha;
                goto LABEL_40;
              }
            }

            else
            {
              v4 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v4)
              {
                goto LABEL_29;
              }
            }

LABEL_40:
            v31 = sub_1A524CA14();

            [v21 menuByReplacingChildren_];

            v17 = v58;
            v14 = v54;
LABEL_18:

LABEL_19:
            ++v16;
            sub_1A524E514();
            sub_1A524E564();
            sub_1A524E574();
            sub_1A524E524();
          }

          while (v16 != v56);
        }
      }

      v32 = sub_1A524CA14();

      v5 = [v59 menuByReplacingChildren_];

LABEL_46:
      if (v62 == 1)
      {

        return v5;
      }

      v10 = v10;
      v33 = [v10 title];
      v34 = sub_1A524C674();
      v36 = v35;

      v37 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v37 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        sub_1A3CB8F68();
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1A52F9790;
        *(inited + 32) = v10;
        v39 = [v59 children];
        v40 = sub_1A524CA34();

        v63[0] = v40;
        sub_1A42C4684(inited, v41);
        v42 = sub_1A524CA14();

        v43 = [v59 menuByReplacingChildren_];
LABEL_54:
        v50 = v43;

        return v50;
      }

      sub_1A3CB8F68();
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_1A52F9790;
      sub_1A3C52C70(0, &qword_1EB120608, 0x1E69DCC60);
      if (qword_1EB1C0510 == -1)
      {
LABEL_53:
        v44 = qword_1EB1C0518;
        v45 = [v10 children];
        v46 = sub_1A524CA34();

        v51[0] = v46;
        *(v15 + 32) = sub_1A524DAF4();
        v47 = [v59 children];
        v48 = sub_1A524CA34();

        v63[0] = v48;
        sub_1A42C4684(v15, v49);
        v42 = sub_1A524CA14();

        v43 = [v59 menuByReplacingChildren_];
        goto LABEL_54;
      }

LABEL_56:
      swift_once();
      goto LABEL_53;
    }
  }

  v11 = v59;

  return v11;
}

id sub_1A441BEF8(void *a1, _BYTE *a2, void *a3)
{
  *a2 = 1;
  sub_1A3CB8F68();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F9790;
  sub_1A3C52C70(0, &qword_1EB120608, 0x1E69DCC60);
  v6 = [a3 children];
  sub_1A3C52C70(0, &qword_1EB126C10, 0x1E69DCC78);
  v7 = sub_1A524CA34();

  *(inited + 32) = sub_1A524DAF4();
  v8 = [a1 children];
  sub_1A524CA34();

  sub_1A42C4684(inited, v9);
  v10 = sub_1A524CA14();

  v11 = [a1 menuByReplacingChildren_];

  return v11;
}

SEL *sub_1A441C078(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = sub_1A441B750(a3);

  return v7;
}

uint64_t sub_1A441C0DC()
{
  v1 = [v0 title];
  v2 = sub_1A524C674();
  v4 = v3;

  if (v2 == 0x6C616E7265746E49 && v4 == 0xE800000000000000)
  {
  }

  else
  {
    v6 = sub_1A524EAB4();

    v7 = 0;
    if ((v6 & 1) == 0)
    {
      return v7 & 1;
    }
  }

  v8 = [v0 image];
  if (qword_1EB1C0510 != -1)
  {
    swift_once();
  }

  v9 = qword_1EB1C0518;
  v7 = qword_1EB1C0518 == 0;
  if (v8)
  {
    if (qword_1EB1C0518)
    {
      sub_1A3C52C70(0, &qword_1EB126630, 0x1E69DCAB8);
      v10 = v9;
      v7 = sub_1A524DBF4();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

void sub_1A441C238()
{
  v0 = sub_1A524C634();
  v1 = [objc_opt_self() systemImageNamed_];

  qword_1EB1C0518 = v1;
}

id sub_1A441C2A8(void *a1, _BYTE *a2, _BYTE *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  if ((sub_1A441C0DC() & 1) == 0)
  {
    v24 = 0;
    v9 = [a1 children];
    sub_1A3C52C70(0, &qword_1EB126C10, 0x1E69DCC78);
    v10 = sub_1A524CA34();

    if (v10 >> 62)
    {
      v11 = sub_1A524E2B4();
      if (v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_9:
        v23 = MEMORY[0x1E69E7CC0];
        result = sub_1A524E554();
        if (v11 < 0)
        {
          __break(1u);
          return result;
        }

        v12 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1A59097F0](v12, v10);
          }

          else
          {
            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          objc_opt_self();
          v15 = swift_dynamicCastObjCClass();
          if (v15)
          {
            sub_1A441C2A8(v15, &v24, a2, sub_1A441C540, v19);
          }

          ++v12;
          sub_1A524E514();
          sub_1A524E564();
          sub_1A524E574();
          sub_1A524E524();
        }

        while (v11 != v12);

        goto LABEL_21;
      }
    }

LABEL_21:
    v16 = sub_1A524CA14();

    v17 = [a1 menuByReplacingChildren_];

    return v17;
  }

  if (*a2 == 1 || (*a2 = 1, *a3 == 1))
  {

    return a1;
  }

  else
  {
    *a3 = 1;
    return a4(a1);
  }
}

id sub_1A441C540(void *a1)
{
  v2 = *(v1 + 16);
  if (*v2 == 1)
  {

    return a1;
  }

  else
  {
    v4 = *(v1 + 24);
    *v2 = 1;
    return v4(a1);
  }
}

uint64_t type metadata accessor for CloudQuotaNotificationItem(uint64_t a1)
{
  result = qword_1EB182350;
  if (!qword_1EB182350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A441C5EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X8>)
{
  v60 = a2;
  v61 = a3;
  v64 = sub_1A5246F24();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1A441CD84(0, &qword_1EB128BF8, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v57 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v56 - v11;
  v12 = sub_1A5241144();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A441CD84(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v7);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v59 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  v23 = type metadata accessor for CloudQuotaNotificationItem(0);
  v24 = &a4[v23[8]];
  *v24 = 0;
  v24[8] = 1;
  v25 = v23[9];
  v63 = a4;
  v26 = &a4[v25];
  *v26 = 0;
  v26[8] = 1;
  v66 = v13;
  v27 = *(v13 + 56);
  v27(v22, 1, 1, v12);
  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = v28;
    v56 = a1;
    v30 = a1;
    *v24 = [v29 offerLevel];
    v24[8] = 0;
    v31 = [v29 lastUpdatedDate];
    if (v31)
    {
      v32 = v31;
      sub_1A52410F4();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    sub_1A3C42D30(v22, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v27(v19, v33, 1, v12);
    sub_1A3E98DA0(v19, v22);
    v34 = [v29 offerType];

    *v26 = v34;
    v26[8] = 0;
    a1 = v56;
  }

  v68 = a1;
  v35 = sub_1A441CDE8();
  v36 = a1;
  SendableTransfer.init(wrappedValue:)(&v68, v35, &v69);
  v37 = v63;
  v39 = v60;
  v38 = v61;
  *v63 = v69;
  *(v37 + 1) = v39;
  *(v37 + 2) = v38;
  v40 = v65;
  sub_1A5241104();
  v41 = sub_1A45350E8();
  v42 = v62;
  v43 = v67;
  v44 = v64;
  (*(v62 + 16))(v67, v41, v64);
  (*(v42 + 56))(v43, 0, 1, v44);
  v45 = v23[7];
  v61 = v22;
  v46 = v22;
  v47 = v59;
  sub_1A3C5DB24(v46, v59, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v48 = v66;
  if ((*(v66 + 48))(v47, 1, v12) == 1)
  {
    v60 = v12;
    sub_1A3C42D30(v47, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v49 = v57;
    sub_1A3C5DB24(v43, v57, &qword_1EB128BF8, MEMORY[0x1E69E9420]);
    if ((*(v42 + 48))(v49, 1, v44) == 1)
    {
      sub_1A5246EF4();
    }

    v51 = v58;
    (*(v42 + 32))(v58, v49, v44);
    v52 = sub_1A5246F04();
    v53 = sub_1A524D244();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v54 = 136315138;
      sub_1A3C2EF94(0xD000000000000027, 0x80000001A53D6BA0, &v69);
    }

    (*(v42 + 8))(v51, v44);
    v12 = v60;
    v48 = v66;
    v43 = v67;
    v40 = v65;
    (*(v66 + 16))(&v37[v45], v65, v60);
    v50 = v61;
  }

  else
  {
    (*(v48 + 32))(&v37[v45], v47, v12);
    v50 = v61;
  }

  sub_1A3C42D30(v43, &qword_1EB128BF8, MEMORY[0x1E69E9420]);
  (*(v48 + 8))(v40, v12);
  return sub_1A3C42D30(v50, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

void sub_1A441CD84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A441CDE8()
{
  result = qword_1EB12B170;
  if (!qword_1EB12B170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB12B170);
  }

  return result;
}

double sub_1A441CE34@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for CloudQuotaNotificationItem(0);
  sub_1A47D14A8(a1, *(v2 + *(v5 + 32)), *(v2 + *(v5 + 32) + 8), *(v2 + *(v5 + 36)), *(v2 + *(v5 + 36) + 8), v8);
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

unint64_t sub_1A441CEAC(__n128 a1)
{
  v1 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v1);

  return 0xD000000000000025;
}

void sub_1A441CF28(void *a1@<X8>)
{
  v3 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v3);

  *a1 = 0xD000000000000025;
  a1[1] = 0x80000001A53D6BD0;
}

void sub_1A441CFB0()
{
  sub_1A441D2A4(&qword_1EB12C460, &unk_1A533AFB0);

    ;
  }
}

void sub_1A441D008()
{
  sub_1A441D2A4(&qword_1EB12C460, &unk_1A533AFB0);

    ;
  }
}

void sub_1A441D124(uint64_t a1)
{
  sub_1A441CD84(319, &unk_1EB125AC8, sub_1A441CDE8, type metadata accessor for SendableTransfer);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CloudQuotaNotificationPresentationContext();
    if (v2 <= 0x3F)
    {
      sub_1A5241144();
      if (v3 <= 0x3F)
      {
        sub_1A441CD84(319, &qword_1EB120AB8, type metadata accessor for PXICQOfferLevel, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A3E997E4(319, &qword_1EB126D60, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A441D2A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CloudQuotaNotificationItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5240664();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1A441D40C(uint64_t a1, uint64_t *a2)
{
  sub_1A441D550(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1A441FD78(a1, &v9[-v5], &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  (*(*v7 + 232))();

  return sub_1A441FD08(v6, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
}

void sub_1A441D550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A441D5B4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 224))();

  v3 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource__selectedDateComponents;
  swift_beginAccess();
  return sub_1A441FD78(v1 + v3, a1, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
}

uint64_t sub_1A441D664(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 232))();

  return sub_1A441FD08(a1, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
}

uint64_t sub_1A441D720(uint64_t a1, uint64_t a2)
{
  sub_1A441D550(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1A441FD78(a2, &v9 - v5, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
  v7 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource__selectedDateComponents;
  swift_beginAccess();
  sub_1A4420200(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t GenerativeStoryDateAmbiguityDataSource.__allocating_init()(double a1)
{
  v1 = sub_1A52412A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource__selectedDateComponents;
  v7 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_logger;
  v9 = sub_1A3C4A780();
  v10 = sub_1A5246F24();
  (*(*(v10 - 8) + 16))(v5 + v8, v9, v10);
  sub_1A5241604();
  (*(v2 + 104))(v4, *MEMORY[0x1E6969868], v1);
  sub_1A52412B4();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t GenerativeStoryDateAmbiguityDataSource.init()(double a1)
{
  v2 = sub_1A52412A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52413D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource__selectedDateComponents;
  v11 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_logger;
  v13 = sub_1A3C4A780();
  v14 = sub_1A5246F24();
  (*(*(v14 - 8) + 16))(v1 + v12, v13, v14);
  sub_1A5241604();
  (*(v3 + 104))(v5, *MEMORY[0x1E6969868], v2);
  sub_1A52412B4();
  (*(v3 + 8))(v5, v2);
  (*(v7 + 32))(v1 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_localCalendar, v9, v6);
  return v1;
}

uint64_t sub_1A441DC48(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v25 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents;
  sub_1A441D550(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_1A5240664();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - v16;
  v18 = *(*v2 + 208);
  v18(a1, v15);
  (v18)(v24);
  v19 = *(v8 + 16);
  v19(v6, v17, v7);
  v19(v10, v13, v7);
  v20 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents(0);
  v21 = *(v20 + 20);
  (*(v8 + 32))(&v6[v21], v10, v7);
  (*(v8 + 56))(&v6[v21], 0, 1, v7);
  (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
  swift_getKeyPath();
  v26 = v2;
  v27 = v6;
  (*(*v2 + 232))();

  v22 = *(v8 + 8);
  v22(v13, v7);
  v22(v17, v7);
  return sub_1A441FD08(v6, &qword_1EB125158, v25);
}

uint64_t sub_1A441DF6C()
{
  sub_1A441D550(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6[-v2];
  v4 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents(0);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  swift_getKeyPath();
  v7 = v0;
  v8 = v3;
  (*(*v0 + 232))();

  return sub_1A441FD08(v3, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
}

uint64_t sub_1A441E0D0(uint64_t a1)
{
  sub_1A441D550(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15[-v5];
  v7 = (*(*v1 + 192))(a1, v4);
  v8 = *v1;
  if (v7)
  {
    (*(v8 + 208))(a1);
  }

  else
  {
    (*(v8 + 200))(a1);
  }

  v9 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents(0);
  v10 = *(v9 + 20);
  v11 = sub_1A5240664();
  (*(*(v11 - 8) + 56))(&v6[v10], 1, 1, v11);
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  KeyPath = swift_getKeyPath();
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  *&v15[-16] = v1;
  *&v15[-8] = v6;
  (*(*v1 + 232))(v13);

  return sub_1A441FD08(v6, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
}

uint64_t sub_1A441E428(uint64_t a1)
{
  v16[1] = a1;
  v1 = sub_1A5240664();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A441D550(0, &qword_1EB1385B0, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v5 = sub_1A52413B4();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A52F8E10;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x1E6969A68], v5);
  sub_1A441F9F4(v8);
  swift_setDeallocating();
  (*(v6 + 8))(v8 + v7, v5);
  swift_deallocClassInstance();
  sub_1A5241314();

  sub_1A5240634();
  if (v9)
  {
    (*(v2 + 8))(v4, v1);
    v10 = 0;
  }

  else
  {
    v11 = sub_1A5240634();
    v13 = v12;
    v14 = *MEMORY[0x1E69DDC98];
    (*(v2 + 8))(v4, v1);
    v10 = v13 | (v11 != v14);
  }

  return v10 & 1;
}

double sub_1A441E698(uint64_t a1)
{
  sub_1A441D550(0, &qword_1EB1385B0, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v1 = sub_1A52413B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52FC9F0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, *MEMORY[0x1E6969A78], v1);
  v7(v6 + v3, *MEMORY[0x1E6969A48], v1);
  sub_1A441F9F4(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1A5241314();

  return result;
}

double sub_1A441E840(uint64_t a1)
{
  sub_1A441D550(0, &qword_1EB1385B0, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v1 = sub_1A52413B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52FF950;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, *MEMORY[0x1E6969A68], v1);
  v7(v6 + v3, *MEMORY[0x1E6969A78], v1);
  v7(v6 + 2 * v3, *MEMORY[0x1E6969A48], v1);
  sub_1A441F9F4(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1A5241314();

  return result;
}

uint64_t sub_1A441EA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v107 = a2;
  v104 = sub_1A52413B4();
  v7 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1A441D550(0, &qword_1EB125FF8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v100 = &v84 - v12;
  sub_1A441D550(0, &qword_1EB126000, MEMORY[0x1E6969AE8], v10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v98 = &v84 - v14;
  sub_1A441D550(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v93 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v95 = &v84 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v99 = (&v84 - v23);
  v24 = sub_1A5241144();
  v108 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v96 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v101 = &v84 - v27;
  v106 = sub_1A5240664();
  v28 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v97 = &v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v84 - v31;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v105 = &v84 - v35;
  if (((*(*v4 + 192))(a1, v34) & 1) != 0 && (sub_1A441FDF8(&unk_1EB134140, MEMORY[0x1E6969530], MEMORY[0x1E6969548]), (sub_1A524C534() & 1) == 0))
  {
    v65 = v108[2];

    return v65(a3, a1, v24);
  }

  else
  {
    v102 = v24;
    v103 = a3;
    v89 = v19;
    v90 = v9;
    v36 = v7;
    v37 = v105;
    (*(*v4 + 200))(a1);
    v38 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_localCalendar;
    sub_1A441D550(0, &qword_1EB1385B0, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
    v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1A52F8E10;
    v41 = *(v36 + 104);
    v86 = *MEMORY[0x1E6969A68];
    v42 = v104;
    v87 = v36 + 104;
    v85 = v41;
    v41(v40 + v39);
    sub_1A441F9F4(v40);
    swift_setDeallocating();
    v43 = *(v36 + 8);
    v44 = v40 + v39;
    v45 = v107;
    v92 = v36 + 8;
    v88 = v43;
    v43(v44, v42);
    swift_deallocClassInstance();
    sub_1A5241314();

    v46 = sub_1A5240634();
    LOBYTE(v40) = v47;
    v50 = *(v28 + 8);
    v48 = v28 + 8;
    v49 = v50;
    v51 = v32;
    v52 = v106;
    v50(v51, v106);
    if (v40)
    {
      v49(v37, v52);
      return (v108[2])(v103, v45, v102);
    }

    else
    {
      v54 = sub_1A52413D4();
      v55 = *(*(v54 - 8) + 56);
      v94 = v48;
      v56 = v38;
      v84 = v46;
      v55(v98, 1, 1, v54);
      v57 = sub_1A5241534();
      v58 = *(*(v57 - 8) + 56);
      v91 = v49;
      v58(v100, 1, 1, v57);
      sub_1A5240644();
      sub_1A5240624();
      v59 = v106;
      v60 = v97;
      v61 = v91;
      sub_1A5240654();
      v100 = v56;
      v62 = v99;
      sub_1A5241354();
      v61(v60, v59);
      v63 = v108[6];
      v64 = v102;
      if (v63(v62, 1, v102) == 1)
      {
        v61(v37, v59);
        sub_1A441FD08(v62, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
        return (v108[2])(v103, v107, v64);
      }

      else
      {
        v66 = v108 + 4;
        v98 = v108[4];
        (v98)(v101, v62, v64);
        v67 = *(*v4 + 208);
        v68 = v107;
        v99 = v63;
        v67(v107);
        v69 = v61;
        v70 = v95;
        sub_1A5241354();
        v71 = v99;
        v69(v60, v59);
        if (v71(v70, 1, v64) == 1)
        {
          v72 = v96;
          (v108[2])(v96, v68, v64);
          if (v71(v70, 1, v64) != 1)
          {
            sub_1A441FD08(v70, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
          }
        }

        else
        {
          v72 = v96;
          (v98)(v96, v70, v64);
        }

        sub_1A441FDF8(&unk_1EB134140, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v73 = v101;
        if (sub_1A524C534())
        {
          v102 = v66;
          v74 = v90;
          v75 = v104;
          v85(v90, v86, v104);
          v76 = v89;
          sub_1A5241364();
          v88(v74, v75);
          v77 = v99;
          v78 = v99(v76, 1, v64);
          v79 = v91;
          if (v78 == 1)
          {
            v80 = v108[1];
            v80(v96, v64);
            v80(v73, v64);
            v79(v105, v106);
            sub_1A441FD08(v76, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
            return (v108[2])(v103, v107, v64);
          }

          else
          {
            v81 = v93;
            sub_1A441FD78(v76, v93, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
            result = v77(v81, 1, v64);
            v82 = v105;
            if (result == 1)
            {
              __break(1u);
            }

            else
            {
              v83 = v108[1];
              ++v108;
              v83(v96, v64);
              v83(v73, v64);
              v79(v82, v106);
              sub_1A441FD08(v76, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
              return (v98)(v103, v81, v64);
            }
          }
        }

        else
        {
          (v108[1])(v72, v64);
          v91(v105, v106);
          return (v98)(v103, v73, v64);
        }
      }
    }
  }

  return result;
}

uint64_t GenerativeStoryDateAmbiguityDataSource.deinit(__n128 a1)
{
  sub_1A441FD08(v1 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource__selectedDateComponents, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
  v2 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_logger;
  v3 = sub_1A5246F24();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_localCalendar;
  v5 = sub_1A52413D4();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource___observationRegistrar;
  v7 = sub_1A5241614();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);
  return v1;
}

uint64_t GenerativeStoryDateAmbiguityDataSource.__deallocating_deinit(__n128 a1)
{
  sub_1A441FD08(v1 + OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource__selectedDateComponents, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
  v2 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_logger;
  v3 = sub_1A5246F24();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource_localCalendar;
  v5 = sub_1A52413D4();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  v6 = OBJC_IVAR____TtC12PhotosUICore38GenerativeStoryDateAmbiguityDataSource___observationRegistrar;
  v7 = sub_1A5241614();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  return swift_deallocClassInstance();
}

uint64_t sub_1A441F9F4(uint64_t a1)
{
  v2 = sub_1A52413B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1A433B544(0);
    v9 = sub_1A524E3D4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A441FDF8(&qword_1EB1385B8, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1A524C4A4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A441FDF8(&unk_1EB146170, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1A524C594();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1A441FD08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A441D550(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A441FD78(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A441D550(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A441FDF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A441FE68(uint64_t a1)
{
  sub_1A441D550(319, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A5246F24();
    if (v2 <= 0x3F)
    {
      sub_1A52413D4();
      if (v3 <= 0x3F)
      {
        sub_1A5241614();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1A442014C(uint64_t a1)
{
  sub_1A5240664();
  if (v1 <= 0x3F)
  {
    sub_1A441D550(319, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4420200(uint64_t a1, uint64_t a2)
{
  sub_1A441D550(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LemonadeRootSubtitleTabIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

id sub_1A4420398()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__photoLibrary;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_1A4420440@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

void sub_1A4420500(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__photoLibrary;
  swift_beginAccess();
  v5 = *(v1 + v4);
  sub_1A3C52C70(0, &qword_1EB126BF0, 0x1E69789A8);
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C8))(v10);
  }
}

void sub_1A442065C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__photoLibrary;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

uint64_t (*sub_1A44206C8(uint64_t *a1))()
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel, &protocol conformance descriptor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A4420338(v4);
  return sub_1A4420828;
}

uint64_t type metadata accessor for LemonadeRootSubtitleModel(uint64_t a1)
{
  result = qword_1EB167770;
  if (!qword_1EB167770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1A4420880(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A3FE25C0;
}

uint64_t sub_1A4420920()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A44209C4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x118))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A4420A28(void *a1, void **a2)
{
  v2 = a1[1];
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x120);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1A4420AA4(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C8))(KeyPath, sub_1A4420B78, &v7, MEMORY[0x1E69E7CA8] + 8);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A4420B78()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__delegate;
  swift_beginAccess();
  *(v2 + 8) = v1;
  return swift_unknownObjectWeakAssign();
}

uint64_t (*sub_1A4420BE4(uint64_t *a1))()
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel, &protocol conformance descriptor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A4420880(v4);
  return sub_1A4420D44;
}

uint64_t sub_1A4420DB0()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__canPresentCloudStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A4420E48@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x148))();
  *a2 = result & 1;
  return result;
}

void sub_1A4420F10(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__canPresentCloudStatus;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C8))(v5);
  }
}

void sub_1A4421024()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__canPresentCloudStatus;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t (*sub_1A4421080(uint64_t *a1))()
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel, &protocol conformance descriptor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A4420D50(v4);
  return sub_1A44211E0;
}

uint64_t sub_1A4421260@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x178))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A442138C(uint64_t *a1))()
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel, &protocol conformance descriptor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A44211EC(v4);
  return sub_1A44214EC;
}

void sub_1A442156C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C0))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4421618@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1A8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A4421724(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = (v4 + *a3);
  swift_beginAccess();
  v8 = v7[1];
  if (v8)
  {
    if (a2)
    {
      v9 = *v7 == a1 && v8 == a2;
      if (v9 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v7 = a1;
    v7[1] = a2;

    return result;
  }

  KeyPath = swift_getKeyPath();
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x2C8))(v12);

  return result;
}

uint64_t (*sub_1A442189C(uint64_t *a1))()
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel, &protocol conformance descriptor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A44214F8(v4);
  return sub_1A44219FC;
}

void *sub_1A4421A68()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__systemImageColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1A4421B08@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1D8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4421B6C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x1E0);
  v4 = *a1;
  return v3(v2);
}

void sub_1A4421BDC(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__systemImageColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C8))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);
  v5 = v4;
  v6 = a1;
  v7 = sub_1A524DBF4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
}

void sub_1A4421D68()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__systemImageColor;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

uint64_t (*sub_1A4421DD4(uint64_t *a1))()
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel, &protocol conformance descriptor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A4421A08(v4);
  return sub_1A4421F34;
}

uint64_t sub_1A4421FA0()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2C0))();

  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__action);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A4422050@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x208))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = sub_1A3C7146C;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t sub_1A44220F8(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A3D6069C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x210);
  v8 = sub_1A3C66EE8(v3, v4);
  return v7(v6, v5, v8);
}

double sub_1A44221C8(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C8))(KeyPath, sub_1A44222A0, &v7, MEMORY[0x1E69E7CA8] + 8);
  sub_1A3C784D4(a1, a2);

  return result;
}

uint64_t sub_1A44222A0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (v1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__action);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1A3C66EE8(v2, v3);
  return sub_1A3C784D4(v5, v6);
}

uint64_t (*sub_1A4422324(uint64_t *a1))()
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
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2C0))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4423F8C(&qword_1EB1256F8, type metadata accessor for LemonadeRootSubtitleModel, &protocol conformance descriptor for LemonadeRootSubtitleModel);
  sub_1A52415F4();

  v4[7] = sub_1A4421F40(v4);
  return sub_1A4422484;
}

id sub_1A4422490()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel____lazy_storage___cloudQuotaConciseSource;
  v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel____lazy_storage___cloudQuotaConciseSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel____lazy_storage___cloudQuotaConciseSource);
  }

  else
  {
    v4 = [objc_allocWithZone(PXCPLCloudQuotaConciseSource) initWithPlacement_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void LemonadeRootSubtitleModel.init(photoLibrary:tabIdentifier:)(void *a1, char *a2)
{
  v3 = v2;
  v17 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v17);
  v6 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *a2;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__delegate + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__canPresentCloudStatus) = 0;
  v8 = (v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__subtitle);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__imageName);
  *v9 = 0;
  v9[1] = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__systemImageColor) = 0;
  v10 = (v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__action);
  *v10 = 0;
  v10[1] = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cplStatusProviderChanges) = 9;
  v11 = (v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cplStatusObservation);
  *v11 = 0;
  v11[1] = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel____lazy_storage___cloudQuotaConciseSource) = 0;
  v12 = (v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cloudQuotaConciseSourceObservation);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_dismissibleQuotaNotificationsObservation);
  *v13 = 0;
  v13[1] = 0;
  sub_1A5241604();
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel__photoLibrary) = a1;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_tabIdentifier) = v7;
  v14 = objc_allocWithZone(PXPhotoKitCPLActionManager);
  v15 = a1;
  v16 = [objc_allocWithZone(PXCPLUIStatusProvider) initWithPhotoLibrary:v15 actionManager:objc_msgSend(v14 presentationStyle:{sel_initWithPhotoLibrary_, v15), 2}];
  *(v3 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cplUIStatusProvider) = v16;
  type metadata accessor for CloudQuotaNotificationItemListManager(0);
  sub_1A42D69CC(v15, 1);
}

id sub_1A4422BE8()
{
  swift_getObjectType();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x150))(0);
  sub_1A4423340();
  [swift_getObjCClassFromMetadata() cancelPreviousPerformRequestsWithTarget:v0 selector:sel_restoreCloudStatusPresentation object:0];

  return [v0 performSelector:sel_restoreCloudStatusPresentation withObject:0 afterDelay:5.0];
}

uint64_t sub_1A4422CF4()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cplUIStatusProvider) status];
  v3 = v2;
  if (v2)
  {
  }

  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x150);
  v6 = v5(v3 != 0);
  if ((*((*v4 & *v1) + 0x148))(v6))
  {
    sub_1A42D7BA0(&v8);
    sub_1A3D37A9C();
    sub_1A5246484();
  }

  return v5(0);
}

void sub_1A4422E38()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))(v3))
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v13[1] = (*(v7 + 8))(v0, ObjectType, v7);
    swift_unknownObjectRelease();
    sub_1A4422490();
    PXPresentationEnvironmentForSender();
  }

  v9 = sub_1A3F37710();
  (*(v2 + 16))(v5, v9, v1);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D244();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "Error performing iCloud quota action or presenting iCloud quota status alert.", v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

void sub_1A44230EC()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  v3.n128_f64[0] = MEMORY[0x1EEE9AC00](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x118))(v3))
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 8))(v0, ObjectType, v7);
    swift_unknownObjectRelease();
    v10 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cplUIStatusProvider) status];
    if (v10)
    {
      v18 = v10;
      type metadata accessor for LemonadeRootSubtitleUtilities(0, v11);
      sub_1A3F37774(v9, v18);

      v12 = v18;

      return;
    }
  }

  v13 = sub_1A3F37710();
  (*(v2 + 16))(v5, v13, v1);
  v14 = sub_1A5246F04();
  v15 = sub_1A524D244();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1A3C1C000, v14, v15, "Error presenting iCloud sync status alert.", v16, 2u);
    MEMORY[0x1A590EEC0](v16, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
}

void sub_1A4423340()
{
  v1 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x148))())
  {
    v27 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel_cplUIStatusProvider) status];
    if (!v27)
    {
      __break(1u);
      return;
    }

    v2 = sub_1A4422490();
    v3 = [v2 title];

    if (v3)
    {
      v4 = sub_1A524C674();
      v6 = v5;

      (*((*v1 & *v0) + 0x180))(v4, v6);
      v7 = OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel____lazy_storage___cloudQuotaConciseSource;
      v8 = [*(v0 + OBJC_IVAR____TtC12PhotosUICore25LemonadeRootSubtitleModel____lazy_storage___cloudQuotaConciseSource) icon];
      if (v8)
      {
        v9 = v8;
        v10 = sub_1A524C674();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      (*((*v1 & *v0) + 0x1B0))(v10, v12);
      (*((*v1 & *v0) + 0x1E0))([*(v0 + v7) iconColor]);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = *((*v1 & *v0) + 0x210);

      v21 = sub_1A44241A8;
    }

    else
    {
      if (![v27 isPaused])
      {
        if ([v27 state] == 1)
        {
          v22 = [v27 stateDescription];
          if (v22)
          {
            v23 = v22;
            v24 = sub_1A524C674();
            v26 = v25;
          }

          else
          {
            v24 = 0;
            v26 = 0;
          }

          (*((*v1 & *v0) + 0x180))(v24, v26);
          (*((*v1 & *v0) + 0x1B0))(0xD000000000000027, 0x80000001A53D6DE0);
        }

        else
        {
          (*((*v1 & *v0) + 0x180))(0, 0);
          (*((*v1 & *v0) + 0x1B0))(0, 0);
          (*((*v1 & *v0) + 0x1E0))(0);
        }

        (*((*v1 & *v0) + 0x210))(0, 0);
        goto LABEL_21;
      }

      v14 = [v27 stateDescription];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1A524C674();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      (*((*v1 & *v0) + 0x180))(v16, v18);
      (*((*v1 & *v0) + 0x1B0))(0xD000000000000011, 0x80000001A53D6E10);
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = *((*v1 & *v0) + 0x210);

      v21 = sub_1A4424190;
    }

    v20(v21, v19);

LABEL_21:

    return;
  }

  (*((*v1 & *v0) + 0x180))(0, 0);
  (*((*v1 & *v0) + 0x1B0))(0, 0);
  (*((*v1 & *v0) + 0x1E0))(0);
  v13 = *((*v1 & *v0) + 0x210);

  v13(0, 0);
}

id LemonadeRootSubtitleModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeRootSubtitleModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeRootSubtitleModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A4423DB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PXCPLUIStatusChanged(0);
    sub_1A4423F8C(&unk_1EB12E710, type metadata accessor for PXCPLUIStatusChanged, &unk_1A52F86B0);
    sub_1A524EE54();
  }
}

void sub_1A4423E74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for PXCPLCloudQuotaConciseSourceChanged(0);
    sub_1A4423F8C(&qword_1EB13A418, type metadata accessor for PXCPLCloudQuotaConciseSourceChanged, &unk_1A533B5CC);
    sub_1A524EE54();
  }
}

void sub_1A4423F38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A4422CF4();
    sub_1A4423340();
  }
}

uint64_t sub_1A4423F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A4423FD8()
{
  result = qword_1EB13A410;
  if (!qword_1EB13A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A410);
  }

  return result;
}

uint64_t sub_1A4424044(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1A44241C0(void (*a1)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    a1();
  }
}

void sub_1A442445C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1A44244B8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4424514(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x68);
  v4 = *a1;
  return v3(v2);
}

void (*sub_1A442457C(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12PhotosUICore39PHLivePhotoViewImageAnalysisInteraction_livePhotoView;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

id PHLivePhotoViewImageAnalysisInteraction.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC12PhotosUICore39PHLivePhotoViewImageAnalysisInteraction_visionKitInteraction] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [v4 setDelegate_];

  return v5;
}

id PHLivePhotoViewImageAnalysisInteraction.init(_:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC12PhotosUICore39PHLivePhotoViewImageAnalysisInteraction_visionKitInteraction] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PHLivePhotoViewImageAnalysisInteraction();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  [v3 setDelegate_];

  return v4;
}

id PHLivePhotoViewImageAnalysisInteraction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PHLivePhotoViewImageAnalysisInteraction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PHLivePhotoViewImageAnalysisInteraction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void PHLivePhotoViewImageAnalysisInteraction.imageAnalysisInteraction(_:livePhotoShouldPlay:)(uint64_t a1, char a2)
{
  v4 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x60))(a1);
  if (v4)
  {
    v5 = &selRef_livePhotoViewInteractionStartPlayback_;
    if ((a2 & 1) == 0)
    {
      v5 = &selRef_livePhotoViewInteractionStopPlayback_;
    }

    v6 = v4;
    [v4 *v5];
  }
}

uint64_t sub_1A4424AB0(uint64_t a1, double a2, double a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC12PhotosUICore39PHLivePhotoViewImageAnalysisInteraction_visionKitInteraction);
  v8 = [v7 view];
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = [v7 analysis];
  if (!v10 || (v10, ([v7 activeInteractionTypes] & 8) == 0) && (objc_msgSend(v7, sel_activeInteractionTypes) & 1) == 0)
  {

    return 1;
  }

  if (([v7 isSubjectAnalysisComplete] & 1) != 0 || (objc_msgSend(v7, sel_isSubjectHighlightAvailable)) && (objc_msgSend(v9, sel_convertPoint_fromCoordinateSpace_, a1, a2, a3), !objc_msgSend(v7, sel_imageSubjectExistsAtPoint_)))
  {
    [v9 convertPoint:a1 fromCoordinateSpace:{a2, a3}];
    v12 = [v7 textExistsAtPoint_];

    return v12 ^ 1;
  }

  else
  {

    return 0;
  }
}

uint64_t type metadata accessor for AssetsRecoveryNotificationItem(uint64_t a1)
{
  result = qword_1EB17D970;
  if (!qword_1EB17D970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4424DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v15 = type metadata accessor for AssetsRecoveryNotificationItem(0);
  v16 = v15[5];
  v17 = sub_1A5241144();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a9[v16], a3, v17);
  v19 = &a9[v15[6]];
  *v19 = a4;
  *(v19 + 1) = a5;
  v20 = &a9[v15[7]];
  *v20 = a6;
  *(v20 + 1) = a7;
  sub_1A4424ECC(a8, v25);
  v21 = v15[8];
  sub_1A4424F30(0);
  SendableTransfer.init(wrappedValue:)(v25, v22, &a9[v21]);
  sub_1A4424FC8(a8);
  return (*(v18 + 8))(a3, v17);
}

uint64_t sub_1A4424ECC(uint64_t a1, uint64_t a2)
{
  sub_1A4424F30(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A4424F64()
{
  result = qword_1EB1250E8;
  if (!qword_1EB1250E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1250E8);
  }

  return result;
}

uint64_t sub_1A4424FC8(uint64_t a1)
{
  sub_1A4424F30(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4425024()
{
  v1 = type metadata accessor for AssetsRecoveryNotificationItem(0);
  sub_1A44250C8(v0 + *(v1 + 32), &v5);
  v8[0] = v5;
  v8[1] = v6;
  v9 = v7;
  v2 = *(&v6 + 1);
  if (!*(&v6 + 1))
  {
    return sub_1A4424FC8(v8);
  }

  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v8, *(&v6 + 1));
  (*(v3 + 8))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_1A44250C8(uint64_t a1, uint64_t a2)
{
  sub_1A442515C(0, &qword_1EB125B10, sub_1A4424F30, type metadata accessor for SendableTransfer);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A442515C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A442525C()
{
  sub_1A4425400(&qword_1EB129818, &unk_1A533B6A0);

    ;
  }
}

void sub_1A44252B4()
{
  sub_1A4425400(&qword_1EB129818, &unk_1A533B6A0);

    ;
  }
}

void sub_1A4425334(uint64_t a1)
{
  sub_1A5241144();
  if (v1 <= 0x3F)
  {
    sub_1A442515C(319, &qword_1EB125B10, sub_1A4424F30, type metadata accessor for SendableTransfer);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4425400(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AssetsRecoveryNotificationItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

PhotosUICore::PhotosDynamicHeaderStyle_optional __swiftcall PhotosDynamicHeaderStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id PhotosDynamicHeaderLayoutProvider.__allocating_init(style:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR____TtC12PhotosUICore33PhotosDynamicHeaderLayoutProvider_style] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PhotosDynamicHeaderLayoutProvider.init(style:)(_BYTE *a1)
{
  v1[OBJC_IVAR____TtC12PhotosUICore33PhotosDynamicHeaderLayoutProvider_style] = *a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PhotosDynamicHeaderLayoutProvider();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1A4425524(void *a1, void *a2, void *a3)
{
  v9 = *(v3 + OBJC_IVAR____TtC12PhotosUICore33PhotosDynamicHeaderLayoutProvider_style);
  sub_1A419C220(a1, &v9, &v10);
  v5 = v10;
  v6 = v11;
  type metadata accessor for PhotosDynamicHeaderLayout(0, v7);
  v10 = v5;
  v11 = v6;
  v8 = v5;
  sub_1A41FA7A4(&v10, a3);
}

void sub_1A442568C(void *a1, void *a2, void *a3)
{
  type metadata accessor for PhotosDynamicHeaderLayout(0, a2);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x1E69E7D40];
    v9 = *((*MEMORY[0x1E69E7D40] & *v6) + 0xC8);
    v11 = a1;
    v10 = a2;
    v9(a2);
    (*((*v8 & *v7) + 0xE0))(a3);
  }
}

id PhotosDynamicHeaderLayoutProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosDynamicHeaderLayoutProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosDynamicHeaderLayoutProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A4425A40(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC12PhotosUICore21PXVideoFormatMetadata_videoHDRType] = a1;
  v5[OBJC_IVAR____TtC12PhotosUICore21PXVideoFormatMetadata_isProResLog] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1A4425B14()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

id sub_1A4425B54(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_activeRequestID];
  *v4 = 0;
  v4[4] = 1;
  *&v3[OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_imageManager] = a1;
  *v4 = 0;
  v4[4] = 1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1A4425C60()
{
  if ((*(v0 + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_activeRequestID + 4) & 1) == 0)
  {
    return [*(v0 + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_imageManager) cancelImageRequest_];
  }

  return result;
}

double sub_1A4425CC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v10 = sub_1A524BEE4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A524BF64();
  v14 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a3;
  v17[5] = a4;
  v17[6] = a5;
  aBlock[4] = sub_1A4425FB0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_183;
  v18 = _Block_copy(aBlock);
  v19 = v5;
  swift_unknownObjectRetain();
  v20 = a3;

  sub_1A524BF14();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v23);

  return result;
}

double sub_1A4425FB0()
{
  v1 = v0;
  v2 = v0[2];
  v3 = v1[4];
  v5 = v1[5];
  v4 = v1[6];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v5;
  v6[4] = v4;
  v7 = v2 + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_activeRequestID;
  if (*(v2 + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_activeRequestID + 4))
  {
    v8 = v3;
    swift_retain_n();
    v9 = v8;
  }

  else
  {
    v10 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
    v11 = v3;
    swift_retain_n();
    v10(v11);
  }

  v12 = swift_allocObject();
  v12[2] = sub_1A44269A4;
  v12[3] = v6;
  v12[4] = v2;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  v14 = v2;

  if (!v13)
  {
    goto LABEL_8;
  }

  swift_unknownObjectRetain();
  if (![v13 isVideo])
  {
    swift_unknownObjectRelease();
LABEL_8:
    v20 = 1;
    sub_1A442629C(0, 1, v3, v5, v4);

    v19 = 0;
    goto LABEL_9;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v15 setDeliveryMode_];
  [v15 setDownloadPriority_];
  v16 = *(v14 + OBJC_IVAR____TtC12PhotosUICore29PXVideoFormatMetadataProvider_imageManager);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1A44269B4;
  *(v17 + 24) = v12;
  aBlock[4] = sub_1A4426ABC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3DD5B38;
  aBlock[3] = &block_descriptor_36_1;
  v18 = _Block_copy(aBlock);

  v19 = [v16 requestAVProxyForAsset:v13 options:v15 resultHandler:v18];

  _Block_release(v18);

  swift_unknownObjectRelease();
  v20 = 0;
LABEL_9:
  *v7 = v19;
  v7[4] = v20;

  return result;
}

double sub_1A442629C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a3;
  v9 = sub_1A524BEE4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A524BF64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  *(v17 + 32) = a1;
  LOBYTE(a4) = a2 & 1;
  *(v17 + 40) = a2 & 1;
  aBlock[4] = sub_1A4426B84;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_42_2;
  v18 = _Block_copy(aBlock);

  sub_1A4426BB8(a1, a4);
  sub_1A524BF14();
  v20[1] = MEMORY[0x1E69E7CC0];
  sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v16, v12, v18);
  _Block_release(v18);
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);

  return result;
}

double sub_1A4426584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v12 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x88);

  v12(a1, a2, a3, sub_1A44266F8, v11);

  return result;
}

void sub_1A442665C(uint64_t a1, char a2, void (*a3)(uint64_t, id))
{
  if (a2)
  {
    sub_1A3C52C70(0, &qword_1EB12C740, 0x1E696ABC0);
    swift_dynamicCast();
    v4 = v5;
    (a3)(0);
  }

  else
  {
    a3(a1, 0);
  }
}

id sub_1A44268A4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1A44268F0()
{
  result = qword_1EB13A5D0;
  if (!qword_1EB13A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A5D0);
  }

  return result;
}

void type metadata accessor for PXMetadataUtilitiesHDRType()
{
  if (!qword_1EB13A5D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB13A5D8);
    }
  }
}

void sub_1A44269B4(void *a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    v3 = a1;
    if ([v3 hasDolby8_4Metadata])
    {
      v4 = 8;
    }

    else if ([v3 isHDR10])
    {
      v4 = 4;
    }

    else if ([v3 isHighDynamicRange])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v5 = [v3 isProResLOG];
    v6 = type metadata accessor for PXVideoFormatMetadata();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC12PhotosUICore21PXVideoFormatMetadata_videoHDRType] = v4;
    v7[OBJC_IVAR____TtC12PhotosUICore21PXVideoFormatMetadata_isProResLog] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    v2(v8, 0);
  }

  else
  {
    v2(0, 1);
  }
}

void sub_1A4426ABC(void *a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    v4 = objc_opt_self();
    v7 = a1;
    v5 = [v4 infoForFirstVideoTrackOfAsset_];
    v6 = v5;
    (v2)(v5);
  }

  else
  {
    v2();
  }
}

void sub_1A4426B78(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

id sub_1A4426BB8(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

void sub_1A4426BEC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  swift_allocObject();
  sub_1A4426C40(a1, v4, a3);
}

void sub_1A4426C40(void *a1, char a2, uint64_t a3)
{
  v4 = (v3 + qword_1EB165AF8);
  *v4 = 0;
  v4[1] = 0;
  sub_1A5246EF4();
}

uint64_t sub_1A442724C()
{

  swift_unknownObjectRelease();
  v1 = qword_1EB165AF0;
  v2 = sub_1A5246F24();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t UtilityAlbumItemListManager.deinit()
{
  v1 = (v0 + qword_1EB165AF8);
  if (*(v0 + qword_1EB165AF8))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1A5246634();
  }

  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectRelease();
  v2 = PhotoKitItemListManager.deinit();

  swift_unknownObjectRelease();
  v3 = qword_1EB165AF0;
  v4 = sub_1A5246F24();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  return v2;
}

uint64_t UtilityAlbumItemListManager.__deallocating_deinit()
{
  UtilityAlbumItemListManager.deinit();

  return swift_deallocClassInstance();
}

void sub_1A4427444()
{
  v0 = objc_allocWithZone(PXContentPrivacyController);
  v1 = sub_1A524C634();
  v2 = [v0 initWithLogIdentifier_];

  qword_1EB1EAE58 = v2;
}

unint64_t sub_1A44274B4()
{
  result = qword_1EB120CF0;
  if (!qword_1EB120CF0)
  {
    sub_1A3C4D5E4(255, &qword_1EB120CF8, &type metadata for UtilityAlbumType, MEMORY[0x1E69E62F8]);
    sub_1A3D71620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120CF0);
  }

  return result;
}

void sub_1A4427550(uint64_t a1)
{
  type metadata accessor for PXUtilityAlbumVisibilityPreferenceObserver(0);
  sub_1A44291FC(0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4427A60(uint64_t a1)
{
  v2 = qword_1EB165B10;
  v3 = *(a1 + qword_1EB165B10);
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x88);
  v6 = v3;
  v5();

  v7 = *(a1 + v2);
  v8 = *((*v4 & *v7) + 0xB8);
  v9 = v7;
  v8();
}

uint64_t sub_1A4427B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4427BCC, v6, v5);
}

uint64_t sub_1A4427BCC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = qword_1EB165B10;
    v4 = *(Strong + qword_1EB165B10);
    v5 = MEMORY[0x1E69E7D40];
    v6 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x88);
    v7 = v4;
    v8 = v6();

    v9 = v8 ^ *(v2 + qword_1EB165B20);
    if (v9)
    {
      *(v2 + qword_1EB165B20) = v8 & 1;
    }

    v10 = *(v2 + v3);
    v11 = *((*v5 & *v10) + 0xB8);
    v12 = v10;
    v13 = v11() & 1;

    if (v13 == *(v2 + qword_1EB165B18))
    {
      if ((v9 & 1) == 0)
      {
LABEL_8:
        sub_1A52415B4();

        goto LABEL_9;
      }
    }

    else
    {
      *(v2 + qword_1EB165B18) = v13;
    }

    sub_1A43F8A20();
    goto LABEL_8;
  }

LABEL_9:
  v14 = *(v0 + 8);

  return v14();
}

double sub_1A4427D88(uint64_t a1)
{
  v1 = sub_1A3D63EA0(*(a1 + 200));
  (*(*v1 + 192))(v1);

  return result;
}

double (*sub_1A4427DF4())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A4429130;
}

double (*sub_1A4427E54())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A4429064;
}

double sub_1A4427EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3C2A3A4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;

  sub_1A3D4D930(0, 0, v6, a3, v10);

  return result;
}

uint64_t sub_1A442804C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A44280E4, v6, v5);
}

uint64_t sub_1A44280E4()
{
  v14 = v0;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1A5246F04();
    v4 = sub_1A524D224();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1A3C1C000, v3, v4, "Updating UtilityAlbumItemListManager because of order change", v5, 2u);
      MEMORY[0x1A590EEC0](v5, -1, -1);
    }

    v6 = *(v2 + 200);

    v7 = v6;
    v8 = sub_1A3D63EA0(v7);

    v9 = (*(*v8 + 192))();

    sub_1A3C4D5E4(0, &qword_1EB120CF8, &type metadata for UtilityAlbumType, MEMORY[0x1E69E62F8]);
    v13[3] = v10;
    v13[4] = sub_1A44274B4();
    v13[0] = v9;
    sub_1A43FA078(v13);
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_1A44282DC(void *a1, uint64_t a2)
{
  v2 = a2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v6 = a1;
      sub_1A44283C0(v5, v2);
    }
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

void sub_1A44283C0(void *a1, char a2)
{
  v5 = sub_1A524BEE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BF64();
  v18 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 2) != 0)
  {
    v13 = qword_1EB165B08;
    v14 = *(v2 + qword_1EB165B08);
    if (v14 != [a1 isContentPrivacyEnabled])
    {
      *(v2 + v13) = [a1 isContentPrivacyEnabled];
      sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
      v15 = sub_1A524D474();
      aBlock[4] = sub_1A4428F0C;
      aBlock[5] = v2;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_184;
      v16 = _Block_copy(aBlock);

      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A4059F40();
      sub_1A3C2A3A4(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C5DE88();
      sub_1A524E224();
      MEMORY[0x1A5908800](0, v12, v8, v16);
      _Block_release(v16);

      (*(v6 + 8))(v8, v5);
      (*(v18 + 8))(v12, v9);
    }
  }
}

void sub_1A44286DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1A3C33378(a6, a7);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1A4428718(unsigned __int16 a1)
{
  if (a1 <= 2u)
  {
    switch(a1)
    {
      case 0u:
        return 1701736302;
      case 1u:
        v1 = 0xD000000000000027;
        return sub_1A3C38BD4(v1);
      case 2u:
        v1 = 0xD000000000000026;
        return sub_1A3C38BD4(v1);
    }

LABEL_19:
    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v1 = 0xD000000000000025;
      return sub_1A3C38BD4(v1);
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000022;
      return sub_1A3C38BD4(v1);
    }

    goto LABEL_19;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      v1 = 0xD000000000000029;
      return sub_1A3C38BD4(v1);
    }

    goto LABEL_19;
  }

  v1 = 0xD00000000000002BLL;
  return sub_1A3C38BD4(v1);
}

id sub_1A442885C(void *a1)
{
  v1 = a1;
  sub_1A4428718([v1 type]);
  v3 = v2;

  if (v3)
  {
    v4 = sub_1A524C634();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t PHUtilityCollection.localizedTitle.getter()
{
  v1 = [v0 type];

  return sub_1A4428718(v1);
}

id LemonadeDocumentsUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeDocumentsUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeDocumentsUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LemonadeDocumentsUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for LemonadeDocumentsUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_1A4428A40(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A4428A60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A4428A60(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D5E4(0, &qword_1EB120388, &type metadata for UtilityAlbumType, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1A4428B6C()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v2 = *(&unk_1F170D590 + v0 + 32);
    if (v2 > 2)
    {
      break;
    }

    if (*(&unk_1F170D590 + v0 + 32))
    {
      if (v2 == 1)
      {
        v3 = 0xD000000000000027;
      }

      else
      {
        if (v2 != 2)
        {
          goto LABEL_25;
        }

        v3 = 0xD000000000000026;
      }

      goto LABEL_18;
    }

    v4 = 0xE400000000000000;
    v5 = 1701736302;
LABEL_19:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1A3D3D914(0, *(v1 + 2) + 1, 1, v1);
    }

    v8 = *(v1 + 2);
    v7 = *(v1 + 3);
    if (v8 >= v7 >> 1)
    {
      v1 = sub_1A3D3D914((v7 > 1), v8 + 1, 1, v1);
    }

    v0 += 2;
    *(v1 + 2) = v8 + 1;
    v9 = &v1[16 * v8];
    *(v9 + 4) = v5;
    *(v9 + 5) = v4;
    if (v0 == 10)
    {
      return v1;
    }
  }

  if (*(&unk_1F170D590 + v0 + 32) <= 4u)
  {
    if (v2 == 3)
    {
      v3 = 0xD00000000000002BLL;
    }

    else
    {
      if (v2 != 4)
      {
        goto LABEL_25;
      }

      v3 = 0xD000000000000029;
    }

    goto LABEL_18;
  }

  if (v2 == 5)
  {
    v3 = 0xD000000000000025;
LABEL_18:
    v5 = sub_1A3C38BD4(v3);
    v4 = v6;
    goto LABEL_19;
  }

  if (v2 == 6)
  {
    v3 = 0xD000000000000022;
    goto LABEL_18;
  }

LABEL_25:
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for UtilityAlbumItemListManager(uint64_t a1)
{
  result = qword_1EB165AE0;
  if (!qword_1EB165AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4428E04(uint64_t a1)
{
  result = sub_1A5246F24();
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

void sub_1A4428F0C()
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1A3C6F8E4();
  v0 = PhotoKitItemListImplementation.numberOfItems.getter();

  if (v0 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v0)
    {
      for (i = 0; i != v0; ++i)
      {
        sub_1A3C6F8E4();
        PhotoKitItemListImplementation.item(at:)(i);
        v3 = v2;

        if ([*(v3 + 16) px_isPrivacySensitiveAlbum])
        {

          MEMORY[0x1A5907D70](v4);
          if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();
        }

        else
        {
        }
      }
    }

    sub_1A43F9ED0();
  }
}

uint64_t sub_1A442909C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A4427B34(v3, v4, v5, v2);
}

uint64_t sub_1A4429168()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A442804C(v3, v4, v5, v2);
}

void sub_1A44291FC(uint64_t a1)
{
  if (!qword_1EB12A000)
  {
    v2 = sub_1A3C52C70(255, &qword_1EB126AC0, 0x1E6978650);
    ResultProviderInput = type metadata accessor for PhotoKitItemListManager.FetchResultProviderInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(ResultProviderInput, &qword_1EB12A000);
    }
  }
}

uint64_t sub_1A4429264(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C2A3A4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A44292E4()
{
  result = qword_1EB120D78;
  if (!qword_1EB120D78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB120D78);
  }

  return result;
}

uint64_t sub_1A4429348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C2A3A4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for TimelineEngineMockData(uint64_t a1)
{
  result = qword_1EB1C0F70;
  if (!qword_1EB1C0F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4429424(uint64_t a2@<X8>)
{

  sub_1A52411B4();
  v3 = type metadata accessor for TimelineEngineMockData(0);
  *(a2 + v3[5]) = 0;
  *(a2 + v3[6]) = 0;
  sub_1A3E2AEFC(0.0, 1.0);
  *(a2 + v3[7]) = v4;
}

uint64_t sub_1A4429484(uint64_t a1)
{
  v2 = v1;
  sub_1A52411C4();
  sub_1A44298B4(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A524C4B4();
  v3 = type metadata accessor for TimelineEngineMockData(0);
  v4 = *(v1 + v3[5]);
  sub_1A524ECB4();
  if (v4)
  {
    v5 = v4;
    sub_1A524DC04();
  }

  MEMORY[0x1A590A010](*(v2 + v3[6]));
  v6 = *(v2 + v3[7]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x1A590A040](*&v6);
}

void *sub_1A4429580(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  v3 = v2;
  return v2;
}

unint64_t sub_1A44295AC()
{
  result = sub_1A4429704(0x19uLL);
  if (result <= 0x18)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4429618()
{
  sub_1A524EC94();
  sub_1A4429484(v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A442965C(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A4429484(v2);
  return sub_1A524ECE4();
}

uint64_t sub_1A4429698@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A52411C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_1A4429704(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1A590EEE0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1A590EEE0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A4429794()
{
  result = qword_1EB13A5E0;
  if (!qword_1EB13A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A5E0);
  }

  return result;
}

uint64_t sub_1A44297E8(uint64_t a1)
{
  *(a1 + 8) = sub_1A44298B4(&qword_1EB13A5E8, type metadata accessor for TimelineEngineMockData, &unk_1A533BBC4);
  result = sub_1A44298B4(&qword_1EB13A5F0, type metadata accessor for TimelineEngineMockData, &unk_1A533BC04);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A44298B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A442997C(uint64_t a1)
{
  sub_1A52411C4();
  if (v1 <= 0x3F)
  {
    sub_1A3F2D6AC(319, v1);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A4429A1C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EBD90);
  __swift_project_value_buffer(v0, qword_1EB1EBD90);
  sub_1A5246EF4();
}

void FeaturedMemoriesSuggester.init(with:)(void *a1)
{
  v3 = [objc_allocWithZone(PXTimelineDataSource) initWithPhotoLibrary:a1 options:{objc_msgSend(objc_allocWithZone(PXTimelineDataSourceOptions), sel_initWithMemoriesOnly)}];
  v4 = [objc_allocWithZone(PXTimelineScheduler) initWithTimelineDataSource_];
  [v3 featuredMemories];
  v5 = [objc_allocWithZone(PXTimelineSchedulerOptions) init];
  v14 = v4;
  if (!PFOSVariantHasInternalUI())
  {
    goto LABEL_7;
  }

  sub_1A3C52C70(0, &unk_1EB120740, off_1E771E4F8);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v6 timelineSchedulerMode];

  if ([objc_opt_self() schedulerOptionsFromTimelineSchedulerMode_])
  {

    if (qword_1EB1C0F80 != -1)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v7 = sub_1A5246F24();
      __swift_project_value_buffer(v7, qword_1EB1EBD90);
      v8 = sub_1A524D264();
      v9 = sub_1A5246F04();
      if (os_log_type_enabled(v9, v8))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = v2;
        _os_log_impl(&dword_1A3C1C000, v9, v8, "Timeline scheduler mode: %lu", v10, 0xCu);
        MEMORY[0x1A590EEC0](v10, -1, -1);
      }

      v4 = v14;
LABEL_7:
      v11 = [v4 scheduledTimelineEntriesWithOptions_];
      sub_1A3C52C70(0, &qword_1EB120A88, off_1E7720728);
      v12 = sub_1A524CA34();

      if (v12 >> 62)
      {
        v13 = sub_1A524E2B4();
        if (!v13)
        {
LABEL_12:
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_12;
        }
      }

      if (v13 >= 1)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      __break(1u);
LABEL_14:
      swift_once();
    }
  }

  __break(1u);
}

double sub_1A4429F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  sub_1A442A5B0(0);
  v8 = v7;
  v9 = sub_1A442A6FC();

  sub_1A46562D0(0, sub_1A442A5A4, v6, v8, v9);

  return result;
}

void sub_1A4429FD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v7 = sub_1A5249A24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
  type metadata accessor for PickerConfiguration(0, v12);
  v13 = v11;
  v14 = PickerConfiguration.__allocating_init()();
  v15 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v14) + 0x1D0))(5);
  (*((*v15 & *v14) + 0x5D8))(1);
  (*((*v15 & *v14) + 0x2A8))(1);
  (*((*v15 & *v14) + 0x2C0))(1);
  (*((*v15 & *v14) + 0x3C8))(1);
  (*((*v15 & *v14) + 0x620))(4098);
  v16 = (*((*v15 & *v14) + 0x5F0))(1033);
  (*((*v15 & *v14) + 0x548))(v16, 1.0);
  v18 = (*((*v15 & *v14) + 0x5F8))(&v32);
  if ((*v17 & 2) == 0)
  {
    *v17 |= 2uLL;
  }

  v18(&v32, 0);
  (*((*v15 & *v14) + 0x440))(0);
  (*((*v15 & *v14) + 0x578))(0);
  (*((*v15 & *v14) + 0x590))(0);
  v19 = sub_1A3C38BD4(0xD00000000000001CLL);
  (*((*v15 & *v14) + 0x3B0))(v19);
  v20 = swift_allocObject();
  v20[2] = v27;
  v20[3] = a3;
  v20[4] = a1;

  LemonadePickerView.init(photoLibrary:configuration:selectionHandler:)(v13, v14, sub_1A442AAEC, v20, &v32);
  v28 = v32;
  v29 = v33;
  v30 = v34;
  v31 = v35;
  sub_1A5249494();
  sub_1A442A6A8();
  sub_1A524AD14();
  (*(v8 + 8))(v10, v7);
  v21 = v30;
  sub_1A3E04274(v28, v29);

  v22 = sub_1A5248874();
  v23 = sub_1A524A064();

  sub_1A442A5B0(0);
  v25 = a4 + *(v24 + 36);
  *v25 = v22;
  *(v25 + 8) = v23;
}

void sub_1A442A5B0(uint64_t a1)
{
  if (!qword_1EB13A600)
  {
    sub_1A442A610(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13A600);
    }
  }
}

void sub_1A442A610(uint64_t a1)
{
  if (!qword_1EB13A608)
  {
    sub_1A5249A24();
    sub_1A442A6A8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13A608);
    }
  }
}

unint64_t sub_1A442A6A8()
{
  result = qword_1EB13A610;
  if (!qword_1EB13A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A610);
  }

  return result;
}

unint64_t sub_1A442A6FC()
{
  result = qword_1EB13A618;
  if (!qword_1EB13A618)
  {
    sub_1A442A5B0(255);
    sub_1A5249A24();
    sub_1A442A6A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13A618);
  }

  return result;
}

double sub_1A442A7C0(uint64_t a1, double (*a2)(__int128 *))
{
  sub_1A3E7CAB0(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A442ABD4(0, &unk_1EB1403B0, sub_1A3E7CAB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23[-1] - v11;
  sub_1A442AAF8(a1, &v23[-1] - v11, v10);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    sub_1A442AB78(v12, &unk_1EB1403B0, sub_1A3E7CAB0, v13);
LABEL_6:
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v20 = a2(&v26);
    sub_1A442AB78(&v26, &qword_1EB124AA0, sub_1A442AC28, v20);
    return sub_1A46564C4();
  }

  (*(v6 + 16))(v8, v12, v5);
  sub_1A442AC8C(&qword_1EB130310, sub_1A3E7CAB0, MEMORY[0x1E69C1CB0]);
  sub_1A524C914();
  sub_1A524E7C4();
  v14 = v23[0];

  if (!v14)
  {
    (*(v6 + 8))(v12, v5);
    goto LABEL_6;
  }

  (*(v6 + 8))(v12, v5);
  sub_1A52430E4();
  v15 = v24;
  v16 = v25;
  v17 = __swift_project_boxed_opaque_existential_1(v23, v24);
  *(&v27 + 1) = v15;
  v28 = *(v16 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v26);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
  a2(&v26);

  sub_1A442AB78(&v26, &qword_1EB124AA0, sub_1A442AC28, v19);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return sub_1A46564C4();
}

uint64_t sub_1A442AAF8(uint64_t a1, uint64_t a2, double a3)
{
  sub_1A442ABD4(0, &unk_1EB1403B0, sub_1A3E7CAB0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A442AB78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), double a4)
{
  sub_1A442ABD4(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A442ABD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A442AC28()
{
  result = qword_1EB128C70;
  if (!qword_1EB128C70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB128C70);
  }

  return result;
}

uint64_t sub_1A442AC8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A442ACD4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

double sub_1A442ADDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController_people;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1A442AEDC(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A442AF3C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A3DA46A0;
}

uint64_t sub_1A442AFD4()
{
  v1 = (v0 + OBJC_IVAR____TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController_completionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A3C66EE8(*v1, v1[1]);
  return v2;
}

uint64_t sub_1A442B030(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore46SuggestLessPeopleOptionSelectionViewController_completionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1A3C33378(v6, v7);
}

id SuggestLessPeopleOptionSelectionViewController.__allocating_init(people:delegate:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1A442FE98(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v10;
}

id SuggestLessPeopleOptionSelectionViewController.init(people:delegate:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1A442FE98(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_1A442B354()
{
  v1 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = UIViewController.pxView.getter();
  v8 = [objc_opt_self() secondarySystemBackgroundColor];
  [v7 setBackgroundColor_];

  v9 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
  sub_1A442B4E0(v9, v0, v6);
  sub_1A442FFC8(0);
  sub_1A4432BCC(v6, v3, type metadata accessor for SuggestLessPeopleOptionSelectionView);
  v10 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v3);
  UIViewController.px_fillWithChildViewController(_:)(v10);

  return sub_1A443017C(v6, type metadata accessor for SuggestLessPeopleOptionSelectionView);
}

uint64_t sub_1A442B4E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A524B694();
  *(a3 + 16) = v21;
  *(a3 + 32) = v22;
  sub_1A524B694();
  *(a3 + 40) = v21;
  *(a3 + 48) = *(&v21 + 1);
  v6 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  v7 = v6[8];
  *(a3 + v7) = swift_getKeyPath();
  sub_1A44300F8(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[10];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(a3 + v6[11]) = vdupq_n_s64(0x4065400000000000uLL);
  *a3 = a2;
  *(a3 + 8) = a1;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
LABEL_10:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E2B4();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_10;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(a1 + 32);
    *(a3 + v6[12]) = v10;
    sub_1A3C69B6C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1A52F9790;
    v12 = *MEMORY[0x1E695C1C0];
    *(v11 + 32) = *MEMORY[0x1E695C1C0];
    sub_1A4049B80();
    v13 = v10;
    v14 = v12;
    v15 = sub_1A524CA14();

    v16 = [v13 linkedContactWithKeysToFetch_];

    if (v16)
    {
      v17 = [v16 termsOfAddress];

      sub_1A3C52C70(0, &qword_1EB13A648, 0x1E696AEE0);
      v16 = sub_1A524CA34();
    }

    *(a3 + v6[13]) = v16;
    type metadata accessor for FaceCropImageManager(0);
    PLPhysicalScreenScale();
    sub_1A47B81E0(v13, 170.0, 170.0, v18);
    v19 = (a3 + v6[9]);
    sub_1A443005C(&qword_1EB13A640, type metadata accessor for FaceCropImageManager, &unk_1A5360EA0);
    result = sub_1A5248494();
    *v19 = result;
    v19[1] = v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SuggestLessPeopleOptionSelectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SuggestLessPeopleOptionSelectionViewController.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SuggestLessPeopleOptionSelectionViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A442B9D4@<X0>(char *a1@<X8>)
{
  v3 = sub_1A52407E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44300C4(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for SuggestLessPeopleOptionsDataSource(0) + 24);
  sub_1A4432BCC(v1 + v10, v9, sub_1A44300C4);
  v11 = type metadata accessor for SuggestLessPeopleOption(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_1A44329DC(v9, a1, type metadata accessor for SuggestLessPeopleOption);
  }

  v26 = v4;
  v27 = v3;
  sub_1A443017C(v9, sub_1A44300C4);
  v13 = *v1;
  v14 = sub_1A524C634();
  v15 = PXLocalizedStringForPersonOrPetAndVisibility(v13, 0, v14);

  v16 = sub_1A524C674();
  v25 = v17;

  v18 = *(v1 + 8);
  if (v18)
  {
    sub_1A3C52C70(0, &qword_1EB13A648, 0x1E696AEE0);
    v18 = sub_1A524CA14();
  }

  v19 = sub_1A524C634();
  v20 = PXLocalizedAttributedStringForPersonOrPet(v13, 0, v18, v19);

  sub_1A5240834();
  *a1 = 0x6C65727574616566;
  *(a1 + 1) = 0xEB00000000737365;
  v21 = v25;
  v22 = v26;
  *(a1 + 2) = v16;
  *(a1 + 3) = v21;
  (*(v22 + 32))(&a1[*(v11 + 24)], v6, v27);
  sub_1A443017C(v1 + v10, sub_1A44300C4);
  sub_1A4432BCC(a1, v1 + v10, type metadata accessor for SuggestLessPeopleOption);
  return (*(v12 + 56))(v1 + v10, 0, 1, v11);
}

uint64_t sub_1A442BD28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A52407E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44300C4(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for SuggestLessPeopleOptionsDataSource(0) + 28);
  sub_1A4432BCC(v1 + v10, v9, sub_1A44300C4);
  v11 = type metadata accessor for SuggestLessPeopleOption(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_1A44329DC(v9, a1, type metadata accessor for SuggestLessPeopleOption);
  }

  v26 = v4;
  v27 = v3;
  sub_1A443017C(v9, sub_1A44300C4);
  v13 = *v1;
  v14 = sub_1A524C634();
  v15 = PXLocalizedStringForPersonOrPetAndVisibility(v13, 0, v14);

  v16 = sub_1A524C674();
  v25 = v17;

  v18 = *(v1 + 8);
  if (v18)
  {
    sub_1A3C52C70(0, &qword_1EB13A648, 0x1E696AEE0);
    v18 = sub_1A524CA14();
  }

  v19 = sub_1A524C634();
  v20 = PXLocalizedAttributedStringForPersonOrPet(v13, 0, v18, v19);

  sub_1A5240834();
  strcpy(a1, "neverfeature");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
  v21 = v25;
  v22 = v26;
  *(a1 + 16) = v16;
  *(a1 + 24) = v21;
  (*(v22 + 32))(a1 + *(v11 + 24), v6, v27);
  sub_1A443017C(v1 + v10, sub_1A44300C4);
  sub_1A4432BCC(a1, v1 + v10, type metadata accessor for SuggestLessPeopleOption);
  return (*(v12 + 56))(v1 + v10, 0, 1, v11);
}

void sub_1A442C07C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for SuggestLessPeopleOption(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A442B9D4(&v5 - v4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A442C210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  sub_1A4430AD4(0);
  v49 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_1A5249284();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5249904();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44306DC(0, v9);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4430608(0, v15);
  v19 = *(v18 - 8);
  v42 = v18;
  v43 = v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4430504(0, v20);
  v24 = *(v23 - 8);
  v46 = v23;
  v47 = v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v41 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  sub_1A443075C(0, v25);
  sub_1A4430938(v27);
  sub_1A524A2C4();
  sub_1A52498F4();
  v28 = sub_1A443005C(&qword_1EB13A6F0, sub_1A44306DC, MEMORY[0x1E697CD20]);
  sub_1A524B1E4();
  (*(v8 + 8))(v11, v7);
  (*(v14 + 8))(v17, v13);
  v29 = a1;
  v30 = [*(a1 + *(type metadata accessor for SuggestLessPeopleOptionSelectionView(0) + 48)) px_localizedName];
  sub_1A524C674();

  v31 = v44;
  v32 = v45;
  (*(v5 + 104))(v44, *MEMORY[0x1E697C438], v45);
  v52 = v13;
  v53 = v7;
  v54 = v28;
  v55 = MEMORY[0x1E697C750];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v41;
  v35 = v42;
  sub_1A524ACE4();

  (*(v5 + 8))(v31, v32);
  (*(v43 + 8))(v22, v35);
  v36 = sub_1A5249314();
  v37 = v48;
  *v48 = v36;
  *(v37 + 8) = 0;
  *(v37 + 16) = 1;
  sub_1A4432C3C(0, &qword_1EB13A918, type metadata accessor for CancelButton, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  sub_1A442D46C(v29, v37 + *(v38 + 44));
  v52 = v35;
  v53 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1A443005C(&qword_1EB13A700, sub_1A4430AD4, MEMORY[0x1E69817F8]);
  v39 = v46;
  sub_1A524ACD4();
  sub_1A443017C(v37, sub_1A4430AD4);
  return (*(v47 + 8))(v34, v39);
}

void sub_1A442C7EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  v4 = v3 - 8;
  v22[5] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v22[6] = v5;
  v22[7] = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52407E4();
  v22[10] = *(v6 - 8);
  v22[11] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v22[8] = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OptionListFooter(0);
  MEMORY[0x1EEE9AC00](v23);
  v22[13] = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OptionListHeader(0);
  MEMORY[0x1EEE9AC00](v9);
  v22[2] = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SuggestLessPeopleOptionsDataSource(0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + 56);
  v16 = *(v4 + 60);
  v22[1] = a1;
  v17 = *(a1 + v15);
  v18 = *(a1 + v16);
  v19 = *(v12 + 32);
  v20 = type metadata accessor for SuggestLessPeopleOption(0);
  v21 = *(*(v20 - 8) + 56);
  v21(&v14[v19], 1, 1, v20);
  v21(&v14[*(v12 + 36)], 1, 1, v20);
  *v14 = v17;
  *(v14 + 1) = v18;
  v22[12] = v14;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A442CE58(id *a1)
{
  v2 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  v3 = v2 - 8;
  v14[1] = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v14[2] = v5;
  v14[3] = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[5] = [*a1 undoManager];
  v6 = type metadata accessor for SuggestLessPeopleOptionsDataSource(0);
  v14[4] = swift_allocBox();
  v8 = v7;
  v9 = *(a1 + *(v3 + 56));
  v10 = *(a1 + *(v3 + 60));
  v11 = *(v6 + 24);
  v12 = type metadata accessor for SuggestLessPeopleOption(0);
  v13 = *(*(v12 - 8) + 56);
  v13(&v8[v11], 1, 1, v12);
  v13(&v8[*(v6 + 28)], 1, 1, v12);
  *v8 = v9;
  *(v8 + 1) = v10;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A442D1A8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A44300F8(0, &qword_1EB13A668, type metadata accessor for SuggestLessPeopleOption, MEMORY[0x1E69E6F90]);
  v6 = *(type metadata accessor for SuggestLessPeopleOption(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A52FC9F0;
  v10 = (v9 + v8);
  sub_1A442B9D4(v10);
  sub_1A442BD28(&v10[v7]);
  v14[1] = v9;
  swift_getKeyPath();
  sub_1A4432BCC(a2, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestLessPeopleOptionSelectionView);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1A44329DC(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for SuggestLessPeopleOptionSelectionView);
  sub_1A44308C4(0);
  type metadata accessor for SuggestLessPeopleOptionSelectionRowView(0);
  sub_1A443005C(&qword_1EB13A6C0, sub_1A44308C4, MEMORY[0x1E69E6338]);
  sub_1A443005C(&qword_1EB13A6E0, type metadata accessor for SuggestLessPeopleOptionSelectionRowView, &unk_1A533BE18);
  return sub_1A524B9B4();
}

uint64_t sub_1A442D46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = sub_1A5249234();
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E697BF90];
  sub_1A44300F8(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_1A5248284();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SuggestLessPeopleOptionSelectionView(0);
  sub_1A4432B4C(a1 + *(v14 + 32), v9, &unk_1EB128A60, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v11 + 32);
    v15(v13, v9, v10);
    return (v15)(v20, v13, v10);
  }

  else
  {
    v17 = sub_1A524D254();
    v18 = sub_1A524A014();
    sub_1A5246DF4(v17, &dword_1A3C1C000, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v19);
    return (*(v11 + 32))(v20, v13, v10);
  }
}

void sub_1A442D71C(uint64_t a1)
{
  v2 = *(a1 + 48);
  LOBYTE(aBlock) = *(a1 + 40);
  v15 = v2;
  sub_1A3C69B6C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v3 = sub_1A524B6A4();
  if ((v20 & 1) == 0)
  {
    v4 = *a1;
    v5 = MEMORY[0x1E69E7D40];
    v6 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))(v3);
    if (v6)
    {
      v7 = v6;
      v8 = (*((*v5 & *v4) + 0x98))();
      if (v8)
      {
        v10 = v8;
        v11 = v9;
        v12 = swift_allocObject();
        *(v12 + 16) = v10;
        *(v12 + 24) = v11;
        v18 = sub_1A4433284;
        v19 = v12;
        aBlock = MEMORY[0x1E69E9820];
        v15 = 1107296256;
        v16 = sub_1A4043B58;
        v17 = &block_descriptor_116;
        v13 = _Block_copy(&aBlock);

        [v7 completeOptionSelectionActionWithCompletionHandler_];
        swift_unknownObjectRelease();
        _Block_release(v13);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1A442D8C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v44 = *(a1 - 8);
  v43 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v42 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249C44();
  v5 = *(v4 - 8);
  v39 = v4;
  v40 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A44301DC(0, v6);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v2;
  sub_1A4430380(0, v12);
  sub_1A4430504(255, v15);
  v17 = v16;
  sub_1A4430AD4(255);
  v19 = v18;
  sub_1A4430608(255, v20);
  v22 = v21;
  sub_1A44306DC(255, v23);
  v25 = v24;
  v26 = sub_1A5249904();
  v27 = sub_1A443005C(&qword_1EB13A6F0, sub_1A44306DC, MEMORY[0x1E697CD20]);
  v46 = v25;
  v47 = v26;
  v48 = v27;
  v49 = MEMORY[0x1E697C750];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v22;
  v47 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_1A443005C(&qword_1EB13A700, sub_1A4430AD4, MEMORY[0x1E69817F8]);
  v46 = v17;
  v47 = v19;
  v48 = v29;
  v49 = v30;
  swift_getOpaqueTypeConformance2();
  sub_1A5248474();
  sub_1A5249C34();
  sub_1A443005C(&qword_1EB13A708, sub_1A44301DC, MEMORY[0x1E697C0C0]);
  sub_1A443005C(&qword_1EB13A710, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
  v31 = v41;
  v32 = v39;
  sub_1A524A864();
  (*(v40 + 8))(v8, v32);
  (*(v11 + 8))(v14, v10);
  v33 = v42;
  sub_1A4432BCC(v38[1], v42, type metadata accessor for SuggestLessPeopleOptionSelectionView);
  v34 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v35 = swift_allocObject();
  sub_1A44329DC(v33, v35 + v34, type metadata accessor for SuggestLessPeopleOptionSelectionView);
  sub_1A4430D90(0, &qword_1EB13A718, sub_1A4430BBC, MEMORY[0x1E69805D8]);
  v37 = (v31 + *(v36 + 36));
  *v37 = 0;
  v37[1] = 0;
  v37[2] = sub_1A4433288;
  v37[3] = v35;
}