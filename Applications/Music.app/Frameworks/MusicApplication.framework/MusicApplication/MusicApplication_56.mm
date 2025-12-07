uint64_t sub_4C3D6C(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 innermostModelObject];
    v3 = sub_4C3D6C(v2);

    if (v3 == 9)
    {
      return 9;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 0;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 3;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 5;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 6;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 7;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 8;
      }

      return 9;
    }

    if ([v4 hasVideo])
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }

  return v3;
}

uint64_t sub_4C3F20(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 innermostModelObject];
    v3 = sub_4C3D6C(v2);

    if (v3 == 9)
    {
      return 9;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 0;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return 1;
    }

    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 3;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 5;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 6;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 7;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        return 8;
      }

      return 9;
    }

    if ([v4 hasVideo])
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }

  return v3;
}

void sub_4C40D4(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v8 = [a1 identifiers];
  v9 = [v8 modelKind];

  if (v9)
  {
    v10 = [objc_allocWithZone(MPModelLibraryRequest) init];
    v11 = RequestResponse.Controller.revision.getter();
    sub_489E6C(v11 + 16, v21);

    [v10 setMediaLibrary:v22];
    [v10 setFilteringOptions:v23];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_AF82B0;
    *(v12 + 32) = [a1 identifiers];
    sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);
    isa = sub_AB9740().super.isa;

    [v10 setAllowedItemIdentifiers:isa];

    v14 = v10;
    v15 = sub_AB9260();
    [v14 setLabel:v15];

    [v14 setItemKind:v9];
    [v14 setItemProperties:a2];

    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    v20[4] = sub_4C4414;
    v20[5] = v16;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_151E0;
    v20[3] = &block_descriptor_154;
    v17 = _Block_copy(v20);

    [v14 performWithResponseHandler:v17];

    sub_489F60(v21);
    _Block_release(v17);
  }

  else
  {
    sub_1CE268();
    v18 = swift_allocError();
    *v19 = 1;
    a3(v18, 1);
  }
}

uint64_t sub_4C43DC()
{

  return swift_deallocObject();
}

double block_copy_helper_154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_4C4434()
{
  result = qword_E0B6F8;
  if (!qword_E0B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B6F8);
  }

  return result;
}

uint64_t sub_4C4488()
{

  return swift_deallocObject();
}

uint64_t sub_4C44C0()
{

  return swift_deallocObject();
}

uint64_t sub_4C4528()
{

  return swift_deallocObject();
}

uint64_t sub_4C457C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_4C45FC()
{
  result = qword_E0B700;
  if (!qword_E0B700)
  {
    sub_13C80(255, &qword_DE8050, MPModelLibrarySearchScope_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B700);
  }

  return result;
}

uint64_t sub_4C4664(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return v2(v5);
}

uint64_t sub_4C46C4()
{

  return swift_deallocObject();
}

unint64_t sub_4C4710()
{
  result = qword_E0B708;
  if (!qword_E0B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B708);
  }

  return result;
}

void sub_4C4764(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

unint64_t sub_4C47D0(unint64_t result)
{
  v1 = result;
  v15 = &_swiftEmptySetSingleton;
  if (result >> 62)
  {
    result = sub_ABB060();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_37:

    v4 = _swiftEmptyArrayStorage;
LABEL_38:

    return v4;
  }

  v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
  if (!v2)
  {
    goto LABEL_37;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v5 = &selRef_performWithResponseHandler_;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = sub_361270(v3, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v3 + 32);
      }

      v7 = v6;
      v8 = [v6 v5[250]];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v9 = 0;
        goto LABEL_16;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v9 = 1;
        goto LABEL_16;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v9 = 2;
        goto LABEL_16;
      }

      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = [v12 variants];

        if (v13 == &dword_0 + 1)
        {
          v9 = 3;
          goto LABEL_16;
        }

        if (v13 == &dword_0 + 2)
        {
          v9 = 5;
          goto LABEL_16;
        }
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v9 = 4;
          goto LABEL_16;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          v9 = 6;
          goto LABEL_16;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
        {

          v9 = 7;
LABEL_16:
          if ((sub_473BDC(v9, v15) & 1) == 0)
          {
            sub_1D2C4(&v14, v9);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_6D1CC(0, *(v4 + 2) + 1, 1, v4);
            }

            v11 = *(v4 + 2);
            v10 = *(v4 + 3);
            if (v11 >= v10 >> 1)
            {
              v4 = sub_6D1CC((v10 > 1), v11 + 1, 1, v4);
            }

            *(v4 + 2) = v11 + 1;
            v4[v11 + 32] = v9;
            v5 = &selRef_performWithResponseHandler_;
          }

          goto LABEL_6;
        }

        v7 = v8;
      }

LABEL_6:
      ++v3;

      if (v2 == v3)
      {

        goto LABEL_38;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7LibraryV11ResultScopeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7LibraryV11ResultScopeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_4C4D00()
{
  result = qword_E0B728;
  if (!qword_E0B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B728);
  }

  return result;
}

unint64_t sub_4C4D54(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF1B80;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_4C4DA0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF1C78;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

void sub_4C4E0C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineText];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_title];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_subtitle];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_descriptionText];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_layoutStyle] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_textAlignment] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_badgeView] = 0;
  v14 = OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineTextDrawingView;
  type metadata accessor for TextDrawing.View();
  *&v5[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = &v5[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents];
  *v15 = sub_4C7654();
  v15[1] = v16;
  v15[2] = v17;
  v15[3] = v18;
  sub_89F60();
  v19 = sub_ABA580();
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v20 = qword_E718C8;
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 clearColor];
  v68 = v20;
  *&v85[0] = v20;
  *(&v85[0] + 1) = v23;
  v85[1] = xmmword_AF7C20;
  v85[2] = xmmword_AF82C0;
  v86 = v19;
  v87 = 1;
  v88 = xmmword_AFFF40;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  *&v5[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineTextComponent] = TextStackView.Component.init(identifier:labelProperties:)(0xD00000000000001BLL, 0x8000000000B67510, v85);
  v66 = v22;
  v67 = v23;
  v65 = v23;
  v69 = v19;
  v64 = v19;
  sub_2F118(v85, v78);
  v77.receiver = v5;
  v77.super_class = type metadata accessor for CustomRoomAlbumCell(0);
  v24 = objc_msgSendSuper2(&v77, "initWithFrame:", a1, a2, a3, a4);
  v25 = *&v24[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineTextDrawingView];
  v26 = v24;
  [v26 addSubview:v25];
  v27 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];
  v30 = v27[2];
  v31 = v27[3];
  v32 = v27[4];
  v33 = v27[5];
  v73 = v33;
  v74 = v32;
  v34 = &v26[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkPlaceholder];
  swift_beginAccess();
  v75 = *v34;
  v71 = *(v34 + 2);
  v72 = *(v34 + 1);
  v70 = *(v34 + 3);
  *v34 = v28;
  *(v34 + 1) = v29;
  *(v34 + 2) = v30;
  *(v34 + 3) = v31;
  *(v34 + 4) = v32;
  *(v34 + 5) = v33;
  v35 = v28;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  v42 = v38;
  sub_2F1C8(v75, v72, v71, v70);
  v76 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  v43 = *&v26[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v84[0] = *(v43 + 152);
  v44 = *(v43 + 184);
  v84[1] = *(v43 + 168);
  v84[2] = v44;
  *(v43 + 152) = v28;
  *(v43 + 160) = v29;
  *(v43 + 168) = v30;
  *(v43 + 176) = v31;
  *(v43 + 184) = v74;
  *(v43 + 192) = v73;
  v45 = v39;
  v46 = v40;
  v47 = v41;
  v48 = v42;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  v52 = v48;
  sub_75948(v84);
  sub_B2A40(v84);

  v53 = v26;
  v54 = *&v26[v76];
  v55 = *(v54 + 144);
  *(v54 + 144) = 2;
  if (v55 != 2)
  {
    v56 = *(v54 + 112);

    v57 = [v56 image];
    sub_788B8(v57);
  }

  v58 = *&v26[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];

  v59 = *&v26[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 24];
  if (!(v59 >> 62))
  {
    v60 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
    if (v60)
    {
      goto LABEL_7;
    }

LABEL_14:

LABEL_15:
    v78[0] = v68;
    v78[1] = v67;
    v79 = xmmword_AF7C20;
    v80 = xmmword_AF82C0;
    v81 = v69;
    v82 = 1;
    v83 = xmmword_AFFF40;
    sub_2F174(v78);

    return;
  }

  v60 = sub_ABB060();
  if (!v60)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v60 >= 1)
  {

    for (i = 0; i != v60; ++i)
    {
      if ((v59 & 0xC000000000000001) != 0)
      {
        v63 = sub_36003C(i, v59, v61);
      }

      else
      {
        v63 = *(v59 + 8 * i + 32);
      }

      TextStackView.add(_:)(v63);
    }

    goto LABEL_15;
  }

  __break(1u);
}

double sub_4C53F0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineText);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineText);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineText + 8);
  *v3 = a1;
  v3[1] = a2;
  sub_4C5440(v4, v5);

  return result;
}

uint64_t sub_4C5440(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineText];
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineText + 8];
  if (v5 != result || v4 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {

      v7 = String.trim()();

      v8 = *&v3[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineTextComponent];
      swift_beginAccess();
      v8[7] = v7;

      sub_2EB704();
      v9 = &v3[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
      swift_beginAccess();
      v10 = *(v9 + 1);
      v11 = *(v9 + 2);
      v12 = *(v9 + 3);

      v13 = (v7._object >> 56) & 0xF;
      if ((v7._object & 0x2000000000000000) == 0)
      {
        v13 = v7._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 16.0;
      }

      *v9 = v14;
      *(v9 + 1) = v10;
      *(v9 + 2) = v11;
      *(v9 + 3) = v12;
      type metadata accessor for UIEdgeInsets(0);
      v15 = &v3[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
      v21 = *&v3[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets];
      v22 = *&v3[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell__artworkEdgeInsets + 16];
      v17 = v14;
      v18 = v10;
      v19 = v11;
      v20 = v12;
      if (sub_AB38D0())
      {
        v16 = *(v9 + 1);
        *v15 = *v9;
        *(v15 + 1) = v16;
        sub_35D498();
        [v3 setNeedsLayout];
      }

      return [v3 setNeedsLayout];
    }
  }

  return result;
}

double sub_4C5610(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_title];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_title + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_4C5724(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_4C5820(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_subtitle];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_subtitle];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_subtitle + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 8];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_4C5938(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 8];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_4C5A38(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);

  return result;
}

double sub_4C5ACC(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_descriptionText];
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_descriptionText];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_descriptionText + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (v7 || (sub_ABB3C0() & 1) != 0)
  {
  }

  else
  {
    v9 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 16];

    v10 = String.trim()();

    swift_beginAccess();
    v9[7] = v10;

    sub_2EB704();
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_4C5BE4(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_descriptionText] != result || *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_descriptionText + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 16];

      v5 = String.trim()();

      swift_beginAccess();
      v4[7] = v5;

      sub_2EB704();
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_4C5CB8(id result)
{
  v2 = OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_layoutStyle;
  v3 = v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_layoutStyle];
  v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_layoutStyle] = result;
  if (v3 != result)
  {
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents];
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 8];
    v6 = *&v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 16];
    v7 = v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_textAlignment];
    v8 = result;
    v9 = [v1 traitCollection];
    sub_4C6D80(v8, v7, v9, v4, v5, v6);

    v10 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
    LOBYTE(v5) = v1[v2] == 2;
    v11 = OBJC_IVAR____TtC16MusicApplication13TextStackView_verticalAlignment;
    swift_beginAccess();
    *(v10 + v11) = v5;
    sub_4C68FC();
    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_4C5DC0(id result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_textAlignment];
  v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_textAlignment] = result;
  if (v2 != result)
  {
    v3 = result;
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents];
    v5 = *&v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 8];
    v6 = *&v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents + 16];
    v7 = v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_layoutStyle];
    v8 = [v1 traitCollection];
    sub_4C6D80(v7, v3, v8, v4, v5, v6);

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_4C5EA0(char a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_isDisabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_isDisabled;
  swift_beginAccess();
  v4[v5] = a1;
  v26 = OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled;
  v27 = v4;
  if (v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] != (a1 & 1))
  {
    v4[OBJC_IVAR____TtC16MusicApplication13TextStackView__isDisabled] = a1 & 1;
    v6 = OBJC_IVAR____TtC16MusicApplication13TextStackView_orderedComponents;
    swift_beginAccess();
    v7 = *&v4[v6];
    if (v7 >> 62)
    {
      v8 = sub_ABB060();
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      if (!v8)
      {
        goto LABEL_19;
      }
    }

    v9 = v8 - 1;
    if (v8 < 1)
    {
      __break(1u);
      return;
    }

    v25 = v3;
    v24 = v4;

    v11 = 0;
    if ((v7 & 0xC000000000000001) == 0)
    {
      goto LABEL_14;
    }

LABEL_6:
    v12 = *(sub_36003C(v11, v7, v10) + 256);
    if (v12)
    {
LABEL_7:
      v13 = v12;
      if (([v13 isHidden] & 1) == 0)
      {
        v14 = v27[v26];
        v15 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
        swift_beginAccess();
        v16 = v13[v15];
        v13[v15] = v14;
        if (v14 != v16)
        {
          v17 = 1.0;
          if (v14)
          {
            UIInterfaceGetContentDisabledAlpha();
          }

          [v13 setAlpha:v17];
        }
      }

      if (v9 != v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      while (1)
      {

        if (v9 == v11)
        {
          break;
        }

LABEL_16:
        ++v11;
        if ((v7 & 0xC000000000000001) != 0)
        {
          goto LABEL_6;
        }

LABEL_14:
        v18 = *(v7 + 8 * v11 + 32);

        v12 = *(v18 + 256);
        if (v12)
        {
          goto LABEL_7;
        }
      }
    }

    v3 = v25;
  }

LABEL_19:
  v19 = *(v1 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineTextDrawingView);
  v20 = *(v1 + v3);
  v21 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
  swift_beginAccess();
  v22 = v19[v21];
  v19[v21] = v20;
  if (v20 != v22)
  {
    v23 = 1.0;
    if (v20)
    {
      UIInterfaceGetContentDisabledAlpha();
    }

    [v19 setAlpha:{v23, v24}];
  }
}

uint64_t (*sub_4C6124(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v3[7] = v1;
  v3[8] = VerticalLockupCollectionViewCell.isDisabled.modify(v3);
  return sub_4C6198;
}

void sub_4C6198(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 64))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = v3[7];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineTextDrawingView);
    v6 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_isDisabled;
    swift_beginAccess();
    v7 = *(v4 + v6);
    v8 = OBJC_IVAR____TtCV16MusicApplication11TextDrawing4View_isDisabled;
    swift_beginAccess();
    v9 = v5[v8];
    v5[v8] = v7;
    if (v7 != v9)
    {
      v10 = 1.0;
      if (v7)
      {
        UIInterfaceGetContentDisabledAlpha();
      }

      [v5 setAlpha:v10];
    }
  }

  free(v3);
}

void sub_4C6318()
{
  v1 = v0;
  v65.receiver = v0;
  v65.super_class = type metadata accessor for CustomRoomAlbumCell(0);
  objc_msgSendSuper2(&v65, "layoutSubviews");
  v2 = [v0 traitCollection];
  [v2 displayScale];
  [v0 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = &v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkEdgeInsets];
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  [v1 effectiveUserInterfaceLayoutDirection];
  v14 = UIEdgeInsetsInsetRect(v4, v6, v8, v10, v12, v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_4C68FC();
  v21 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  v22 = *&v1[v21];
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = &v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineText];
  v24 = *&v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineText + 8];
  v25 = *&v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineText] & 0xFFFFFFFFFFFFLL;
  if ((v24 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v24) & 0xF;
  }

  if (v25)
  {
    v26 = *&v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineTextDrawingView];

    if (([v26 isDescendantOfView:v1] & 1) == 0)
    {
      [v1 addSubview:v26];
    }

    v47 = v26;
    v27 = *&v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineTextComponent];
    swift_beginAccess();
    v28 = v27[3];
    v29 = v27[4];
    v30 = v27[6];
    v68[3] = v27[5];
    v69 = v30;
    v68[1] = v28;
    v68[2] = v29;
    v68[0] = v27[2];
    v32 = *v23;
    v31 = v23[1];
    v33 = v22[4];
    v34 = *(v22 + 5);
    v35 = *(v22 + 8);
    v36 = *(v22 + 9);
    v38 = *(v22 + 10);
    v37 = *(v22 + 11);
    sub_2F118(v68, v67);

    v39 = v34;
    sub_108594(v32, v31, v68, v39, v35, v36, v38, v37, v66, v18, v20, v33);
    v53 = v66[4];
    v54 = v66[5];
    v55 = v66[6];
    v56 = v66[7];
    v49 = v66[0];
    v50 = v66[1];
    v51 = v66[2];
    v52 = v66[3];

    v61 = v53;
    v62 = v54;
    v63 = v55;
    v64 = v56;
    v57 = v49;
    v58 = v50;
    v59 = v51;
    v60 = v52;
    UIScreen.Dimensions.size.getter();
    v67[4] = v53;
    v67[5] = v54;
    v67[6] = v55;
    v67[7] = v56;
    v67[0] = v49;
    v67[1] = v50;
    v67[2] = v51;
    v67[3] = v52;
    sub_109B04(v66, v48);
    TextDrawing.View.textDrawingContext.setter(v67);
    v70.origin.x = v14;
    v70.origin.y = v16;
    v70.size.width = v18;
    v70.size.height = v20;
    CGRectGetMinY(v70);
    v71.origin.y = v16;
    v40 = *&v69;
    v71.origin.x = v14;
    v71.size.width = v18;
    v71.size.height = v20;
    CGRectGetMinX(v71);
    sub_ABA490();
    [v47 setFrame:?];
    sub_109AB0(v66);
    sub_2F174(v68);

    v16 = v40 + *(&v69 + 1);
    v20 = v20 - v16;
  }

  else
  {
LABEL_8:
    [*&v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineTextDrawingView] removeFromSuperview];
  }

  v41 = v1[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_layoutStyle];
  v72.origin.x = v14;
  v72.origin.y = v16;
  v72.size.width = v18;
  v72.size.height = v20;
  CGRectGetWidth(v72);
  if (v41 == 2)
  {
    sub_AB3A00();
  }

  else
  {
    v73.origin.x = v14;
    v73.origin.y = v16;
    v73.size.width = v18;
    v73.size.height = v20;
    CGRectGetHeight(v73);
  }

  sub_ABA490();
  sub_76B28(v42, v43, v44, v45);
  v46 = *&v1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  sub_ABA490();
  [v46 setFrame:?];
}

void sub_4C68FC()
{
  [v0 bounds];
  Width = CGRectGetWidth(v8);
  v6 = [v0 traitCollection];
  if (v0[OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_layoutStyle] == 2)
  {
    [v6 displayScale];
    sub_AB3A00();
    if (v2 <= 350.0)
    {
      Width = v2;
    }

    else
    {
      Width = 350.0;
    }
  }

  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  *(v3 + 80) = Width;
  *(v3 + 88) = Width;
  sub_75614(v4, v5);
}

double sub_4C69DC()
{

  return result;
}

id sub_4C6ABC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomRoomAlbumCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CustomRoomAlbumCell(uint64_t a1)
{
  result = qword_E0B770;
  if (!qword_E0B770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_4C6CDC()
{
  result = qword_E0B780;
  if (!qword_E0B780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B780);
  }

  return result;
}

double sub_4C6D30(double result, double a2)
{
  if (result >= a2)
  {
    return a2;
  }

  return result;
}

void *sub_4C6D50()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_badgeView);
  v2 = v1;
  return v1;
}

uint64_t sub_4C6D80(char a1, unsigned __int8 a2, id a3, _OWORD *a4, _OWORD *a5, _OWORD *a6)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_89F60();
      v8 = sub_ABA560();
      if (qword_DE6C98 != -1)
      {
        swift_once();
      }

      v9 = qword_E718D8;
      v10 = objc_opt_self();
      v11 = v9;
      v12 = [v10 clearColor];
      v67 = v11;
      v66 = v12;
      v63 = v8;
      v13 = sub_ABA560();
      if (qword_DE6C88 != -1)
      {
        swift_once();
      }

      v14 = qword_E718C8;
      v15 = [v10 clearColor];
      v16 = v14;
      v62 = v15;
      v17 = v13;
      v18 = 0.0;
      v19 = 18.0;
      v20 = 20.0;
      v21 = 1;
      v60 = 2;
      v61 = sub_ABA560();
      v22 = 20.0;
    }

    else
    {
      v30 = objc_opt_self();
      v31 = [v30 preferredFontForTextStyle:UIFontTextStyleSubheadline];
      if (qword_DE6C98 != -1)
      {
        swift_once();
      }

      v32 = qword_E718D8;
      v10 = objc_opt_self();
      v33 = v32;
      v34 = [v10 clearColor];
      v67 = v33;
      v66 = v34;
      v63 = v31;
      v35 = [v30 preferredFontForTextStyle:UIFontTextStyleSubheadline];
      if (qword_DE6C88 != -1)
      {
        swift_once();
      }

      v36 = qword_E718C8;
      v37 = [v10 clearColor];
      v16 = v36;
      v62 = v37;
      v17 = v35;
      v38 = [v30 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v18 = 0.0;
      v20 = 20.0;
      v21 = 2;
      v60 = 4;
      v61 = v38;
      v19 = 20.0;
      v22 = 20.0;
    }
  }

  else if ([a3 horizontalSizeClass] == &dword_0 + 2)
  {
    v23 = [objc_opt_self() systemFontOfSize:32.0];
    if (qword_DE6C98 != -1)
    {
      swift_once();
    }

    v24 = qword_E718D8;
    v10 = objc_opt_self();
    v25 = v24;
    v26 = [v10 clearColor];
    sub_89F60();
    v67 = v25;
    v66 = v26;
    v63 = v23;
    v27 = sub_ABA560();
    if (qword_DE6C88 != -1)
    {
      swift_once();
    }

    v28 = qword_E718C8;
    v29 = [v10 clearColor];
    v16 = v28;
    v62 = v29;
    v17 = v27;
    v18 = 0.0;
    v22 = 40.0;
    v21 = 2;
    v19 = 35.0;
    v20 = 32.0;
    v60 = 3;
    v61 = sub_ABA560();
  }

  else
  {
    sub_89F60();
    v39 = sub_ABA560();
    if (qword_DE6C98 != -1)
    {
      swift_once();
    }

    v40 = qword_E718D8;
    v10 = objc_opt_self();
    v41 = v40;
    v42 = [v10 clearColor];
    v67 = v41;
    v66 = v42;
    v63 = v39;
    v43 = sub_ABA560();
    if (qword_DE6C88 != -1)
    {
      swift_once();
    }

    v44 = qword_E718C8;
    v45 = [v10 clearColor];
    v16 = v44;
    v62 = v45;
    v17 = v43;
    v22 = 30.0;
    v18 = 12.0;
    v19 = 26.0;
    v21 = 1;
    v60 = 3;
    v61 = sub_ABA560();
    v20 = 24.0;
  }

  v59 = [v10 clearColor];

  *&v68 = v67;
  *(&v68 + 1) = v66;
  *&v69 = a2;
  *(&v69 + 1) = 4;
  v70 = 0uLL;
  *&v71 = v63;
  *(&v71 + 1) = v21;
  v72 = *&v22;
  swift_beginAccess();
  v46 = a4[5];
  v73[2] = a4[4];
  v73[3] = v46;
  v73[4] = a4[6];
  v47 = a4[3];
  v73[0] = a4[2];
  v73[1] = v47;
  v48 = v71;
  a4[4] = 0uLL;
  a4[5] = v48;
  a4[6] = v72;
  v49 = v69;
  a4[2] = v68;
  a4[3] = v49;
  sub_2F118(&v68, v88);
  sub_2F174(v73);
  sub_2EB2A8();
  *&v74 = v16;
  *(&v74 + 1) = v62;
  *&v75 = a2;
  *(&v75 + 1) = 4;
  v76 = 0uLL;
  *&v77 = v17;
  *(&v77 + 1) = 1;
  *&v78 = v19;
  *(&v78 + 1) = v18;
  swift_beginAccess();
  v50 = a5[5];
  v79[2] = a5[4];
  v79[3] = v50;
  v79[4] = a5[6];
  v51 = a5[3];
  v79[0] = a5[2];
  v79[1] = v51;
  v52 = v77;
  a5[4] = v76;
  a5[5] = v52;
  a5[6] = v78;
  v53 = v75;
  a5[2] = v74;
  a5[3] = v53;
  sub_2F118(&v74, v88);
  sub_2F174(v79);
  sub_2EB2A8();
  *&v80 = v16;
  *(&v80 + 1) = v59;
  *&v81 = a2;
  *(&v81 + 1) = 4;
  v82 = 0uLL;
  *&v83 = v61;
  *(&v83 + 1) = v60;
  v84 = *&v20;
  swift_beginAccess();
  v54 = a6[5];
  v85[2] = a6[4];
  v85[3] = v54;
  v85[4] = a6[6];
  v55 = a6[3];
  v85[0] = a6[2];
  v85[1] = v55;
  v56 = v83;
  a6[4] = v82;
  a6[5] = v56;
  a6[6] = v84;
  v57 = v81;
  a6[2] = v80;
  a6[3] = v57;
  sub_2F118(&v80, v88);
  sub_2F174(v85);
  sub_2EB2A8();
  v86[0] = v16;
  v86[1] = v59;
  v86[2] = a2;
  v86[3] = 4;
  v86[5] = 0;
  v86[4] = 0;
  v86[6] = v61;
  v86[7] = v60;
  *&v86[8] = v20;
  v86[9] = 0;
  sub_2F174(v86);
  v87[0] = v16;
  v87[1] = v62;
  v87[2] = a2;
  v87[3] = 4;
  v87[5] = 0;
  v87[4] = 0;
  v87[6] = v17;
  v87[7] = 1;
  *&v87[8] = v19;
  *&v87[9] = v18;
  sub_2F174(v87);
  v88[0] = v67;
  v88[1] = v66;
  v88[2] = a2;
  v88[3] = 4;
  v88[4] = 0;
  v88[5] = 0;
  v88[6] = v63;
  v88[7] = v21;
  *&v88[8] = v22;
  v88[9] = 0;
  return sub_2F174(v88);
}

uint64_t sub_4C7654()
{
  sub_89F60();
  v0 = sub_ABA560();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v1 = qword_E718D8;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  v25 = v1;
  *&v38[0] = v1;
  *(&v38[0] + 1) = v4;
  v38[1] = xmmword_AF7C20;
  v39 = 0;
  v40 = 0;
  v41 = v0;
  v42 = 2;
  v43 = xmmword_B00160;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v5 = TextStackView.Component.init(identifier:labelProperties:)(0xD00000000000001CLL, 0x8000000000B674A0, v38);
  v21 = v3;
  v24 = v4;
  v20 = v4;
  v19 = v0;
  sub_2F118(v38, v58);
  v23 = v5;

  v6 = sub_ABA560();
  v22 = v0;
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v7 = qword_E718C8;
  v8 = qword_E718C8;
  v9 = [v2 clearColor];
  *&v32[0] = v7;
  *(&v32[0] + 1) = v9;
  v32[1] = xmmword_AF7C20;
  v33 = 0;
  v34 = 0;
  v35 = v6;
  v36 = 1;
  v37 = xmmword_B00180;
  swift_allocObject();
  v10 = TextStackView.Component.init(identifier:labelProperties:)(0xD00000000000001FLL, 0x8000000000B674C0, v32);
  v18 = v8;
  v17 = v9;
  v11 = v6;
  sub_2F118(v32, v58);

  v12 = sub_ABA560();
  v13 = [v2 clearColor];
  *&v26[0] = v7;
  *(&v26[0] + 1) = v13;
  v26[1] = xmmword_AF7C20;
  v27 = 0;
  v28 = 0;
  v29 = v12;
  v30 = 2;
  v31 = xmmword_AF82F0;
  swift_allocObject();
  v14 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000022, 0x8000000000B674E0, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF82E0;
  *(v15 + 32) = v23;
  *(v15 + 40) = v10;
  *(v15 + 48) = v14;
  sub_2F118(v26, v58);

  v44[0] = v7;
  v44[1] = v13;
  v45 = xmmword_AF7C20;
  v46 = 0;
  v47 = 0;
  v48 = v12;
  v49 = 2;
  v50 = xmmword_AF82F0;
  sub_2F174(v44);
  v51[0] = v7;
  v51[1] = v9;
  v52 = xmmword_AF7C20;
  v53 = 0;
  v54 = 0;
  v55 = v6;
  v56 = 1;
  v57 = xmmword_B00180;
  sub_2F174(v51);
  v58[0] = v25;
  v58[1] = v24;
  v59 = xmmword_AF7C20;
  v60 = 0;
  v61 = 0;
  v62 = v22;
  v63 = 2;
  v64 = xmmword_B00160;
  sub_2F174(v58);
  return v23;
}

void sub_4C7A90()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineText);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_subtitle);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_descriptionText);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_layoutStyle) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_textAlignment) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_badgeView) = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_headlineTextDrawingView;
  type metadata accessor for TextDrawing.View();
  *(v0 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication19CustomRoomAlbumCell_itemTextComponents);
  *v6 = sub_4C7654();
  v6[1] = v7;
  v6[2] = v8;
  v6[3] = v9;
  sub_ABAFD0();
  __break(1u);
}

char *sub_4C7B98(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v70 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v69 - v12;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkEditButtonHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_lockupImageArtworkCatalog] = 0;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkPlaceholder];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  v15 = OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v17 = sub_80104(v16);

  *&v5[v15] = v17;
  *&v5[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkCachingReference] = 0;
  *&v5[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_tapGestureRecognizerHandler] = 0;
  v18 = OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkContainerView;
  *&v5[v18] = [objc_allocWithZone(UIView) init];
  v19 = sub_AB9260();
  v20 = [objc_opt_self() systemImageNamed:v19];

  if (v20)
  {
    v21 = [objc_opt_self() whiteColor];
    v22 = [v20 flattenedImageWithColor:v21];
    v23 = [v22 imageWithRenderingMode:1];
  }

  else
  {
    v23 = 0;
  }

  v24 = OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkCameraImageView;
  v25 = [objc_allocWithZone(UIImageView) initWithImage:v23];

  *&v5[v24] = v25;
  v71.receiver = v5;
  v71.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v71, "initWithFrame:", a1, a2, a3, a4);
  v27 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v29 = *v27;
  v28 = v27[1];
  v30 = v27[2];
  v31 = v27[3];
  v32 = &v26[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkPlaceholder];
  v33 = *&v26[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkPlaceholder];
  v34 = *&v26[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkPlaceholder + 8];
  v35 = *&v26[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkPlaceholder + 16];
  v36 = *&v26[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkPlaceholder + 24];
  v37 = *(v27 + 2);
  *v32 = *v27;
  *(v32 + 1) = v28;
  *(v32 + 2) = v30;
  *(v32 + 3) = v31;
  *(v32 + 2) = v37;
  v38 = v30;
  v39 = v31;
  v40 = v29;
  v41 = v28;
  sub_2F1C8(v33, v34, v35, v36);
  v42 = OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkComponent;
  v43 = *&v26[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkComponent];

  v44 = v69;
  sub_ABA670();
  v45 = sub_ABA680();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_cornerTreatment;
  swift_beginAccess();
  v47 = v70;
  sub_89FAC(v43 + v46, v70);
  swift_beginAccess();
  sub_8A01C(v44, v43 + v46);
  swift_endAccess();
  sub_75AE8(v47);
  sub_8A08C(v47);
  sub_8A08C(v44);

  v48 = *&v26[v42];
  *(v48 + 24) = 0x70756B636F6CLL;
  *(v48 + 32) = 0xE600000000000000;

  v49 = *&v26[v42];
  v50 = *(v49 + 80);
  v51 = *(v49 + 88);
  *(v49 + 80) = vdupq_n_s64(0x4060000000000000uLL);

  sub_75614(v50, v51);

  v52 = *&v26[v42];
  v53 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v54 = (v52 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v55 = *(v52 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler);
  v56 = *(v52 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_requiresContentsAndLayoutUpdateHandler + 8);
  *v54 = sub_8A12C;
  v54[1] = v53;

  sub_17654(v55, v56);

  v57 = OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkContainerView;
  v58 = *&v26[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkContainerView];
  v59 = objc_opt_self();
  v60 = v58;
  v61 = [v59 clearColor];
  [v60 setBackgroundColor:v61];

  v62 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:0 action:0];
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for GestureRecognizerHandler();
  swift_allocObject();
  v64 = sub_418FC0();
  v65 = v62;
  *&v26[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_tapGestureRecognizerHandler] = GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v65, sub_4C8ACC, v63, v64);

  v66 = *&v26[v57];
  v67 = v26;
  [v67 addSubview:v66];
  [*&v26[v57] addSubview:*(*&v26[v42] + 112)];
  [*&v26[v57] addSubview:*&v67[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkCameraImageView]];
  [v67 addGestureRecognizer:v65];
  if (qword_DE6C58 != -1)
  {
    swift_once();
  }

  [v67 setBackgroundColor:qword_E71898];

  return v67;
}

void sub_4C8228(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkEditButtonHandler);
    if (v4)
    {
      v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkEditButtonHandler + 8);

      v4(v3);
      sub_17654(v4, v5);
    }
  }
}

void sub_4C8304()
{
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [v0 traitCollection];
  [v9 displayScale];

  [v0 effectiveUserInterfaceLayoutDirection];
  v10 = *&v0[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkContainerView];
  v42.origin.x = v2;
  v42.origin.y = v4;
  v42.size.width = v6;
  v42.size.height = v8;
  CGRectGetMinY(v42);
  sub_76368(0, 0, 1);
  v36 = v11;
  sub_ABA470();
  sub_ABA490();
  [v10 setFrame:v36];
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v38 = v18;
  sub_76B28(v12, v14, v16, v18);
  v20 = *&v0[OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkCameraImageView];
  [v20 sizeThatFits:{0.0, 0.0}];
  v37 = v21;
  sub_ABA470();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v43.origin.x = v13;
  v43.origin.y = v15;
  v43.size.width = v17;
  v43.size.height = v19;
  CGRectGetMaxY(v43);
  v44.origin.x = v23;
  v44.origin.y = v25;
  v44.size.width = v27;
  v44.size.height = v29;
  CGRectGetHeight(v44);
  sub_ABA490();
  [v20 setFrame:v37];
  v30 = objc_opt_self();
  UIView.Shadow.init(color:opacity:radius:offset:)([v30 blackColor], v40, 0.5, 4.0, 0.0, 0.0);
  UIView.shadow.setter(v40);
  UIView.Shadow.init(color:opacity:radius:offset:)([v30 blackColor], v41, 0.15, 2.5, 0.0, 4.5);
  UIView.shadow.setter(v41);
  v31 = [v10 layer];
  v32 = v13;
  v45.origin.x = v13;
  v45.origin.y = v15;
  v45.size.width = v17;
  v45.size.height = v38;
  v33 = CGRectGetHeight(v45) * 0.5;
  v46.origin.x = v32;
  v46.origin.y = v15;
  v46.size.width = v17;
  v46.size.height = v38;
  v34 = CGRectGetHeight(v46) * 0.5;
  v47.origin.x = v32;
  v47.origin.y = v15;
  v47.size.width = v17;
  v47.size.height = v38;
  v35 = CGPathCreateWithRoundedRect(v47, v33, v34, 0);
  [v31 setShadowPath:v35];
}

double sub_4C87D4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkCachingReference) = a1;

  *(*(v1 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkComponent) + 16) = a1;

  return result;
}

void sub_4C8838()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkEditButtonHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_lockupImageArtworkCatalog) = 0;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkPlaceholder);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  v4 = OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa(0);
  swift_allocObject();
  v6 = sub_80104(v5);

  *(v1 + v4) = v6;
  *(v1 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkCachingReference) = 0;
  *(v1 + OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_tapGestureRecognizerHandler) = 0;
  v7 = OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkContainerView;
  *(v1 + v7) = [objc_allocWithZone(UIView) init];
  v8 = sub_AB9260();
  v9 = [objc_opt_self() systemImageNamed:v8];

  if (v9)
  {
    v10 = [objc_opt_self() whiteColor];
    v11 = [v9 flattenedImageWithColor:v10];
    v12 = [v11 imageWithRenderingMode:1];
  }

  else
  {
    v12 = 0;
  }

  v13 = OBJC_IVAR____TtC16MusicApplication36SocialProfileArtworkEditorLockupView_artworkCameraImageView;
  v14 = [objc_allocWithZone(UIImageView) initWithImage:v12];

  *(v1 + v13) = v14;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_4C8A5C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_4C8A94()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_4C8B18()
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 setView:v1];
}

void sub_4C8BA8(void *a1)
{
  v1 = a1;
  sub_4C8B18();
}

id sub_4C8BF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  v10 = sub_4C8D68(v5, v7, a4, v9);

  return v10;
}

id sub_4C8C68(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v7 = sub_4C8E4C(v3, v4, v5, v6);

  return v7;
}

id sub_4C8CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for StaticViewController(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_4C8CFC(uint64_t a1)
{
  sub_17654(*(a1 + qword_E0B7F0), *(a1 + qword_E0B7F0 + 8));
  v2 = *(a1 + qword_E0B7F8);
  v3 = *(a1 + qword_E0B7F8 + 8);

  return sub_17654(v2, v3);
}

id sub_4C8D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_isaMask & *v4;
  v7 = (v4 + qword_E0B7F0);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v4 + qword_E0B7F8);
  *v8 = 0;
  v8[1] = 0;
  if (a2)
  {
    v9 = sub_AB9260();
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for StaticViewController(0, *(v6 + 80), a3, a4);
  v13.receiver = v4;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v9, a3);

  return v11;
}

id sub_4C8E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = swift_isaMask;
  v8 = (v4 + qword_E0B7F0);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v4 + qword_E0B7F8);
  *v9 = 0;
  v9[1] = 0;
  v10 = type metadata accessor for StaticViewController(0, *(&stru_20.filesize + (v7 & v6)), a3, a4);
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "initWithCoder:", a1);
}

void sub_4C8ED8(uint64_t a1, uint64_t a2)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEF20, &qword_AFA570);
  __chkstk_darwin();
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = &v42 - v6;
  __chkstk_darwin();
  v9 = &v42 - v8;
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v10 = 0;
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v53 = a2 + 56;
  v49 = a2;
  v45 = v7;
  v46 = a1;
  v43 = a1 + 56;
  v44 = v9;
  v42 = v15;
  if (!v14)
  {
    goto LABEL_8;
  }

  do
  {
    v16 = __clz(__rbit64(v14));
    v47 = (v14 - 1) & v14;
LABEL_13:
    v19 = *(a1 + 48);
    v52 = *(v7 + 72);
    sub_15F84(v19 + v52 * (v16 | (v10 << 6)), v9, &unk_DFEF20, &qword_AFA570);
    v20 = v51;
    sub_36B0C(v9, v51, &unk_DFEF20, &qword_AFA570);
    sub_ABB5C0();
    sub_ABA7A0();
    v21 = *(v20 + 8);
    sub_4BF8AC(v54, *(v20 + 8));
    v22 = *(v50 + 40);
    sub_AB3430();
    sub_4CC960(&unk_DFEEF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v48 = v22;
    sub_AB90E0();
    v23 = sub_ABB610();
    v24 = -1 << *(a2 + 32);
    v25 = v23 & ~v24;
    if (((*(v53 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
LABEL_88:
      sub_12E1C(v51, &unk_DFEF20, &qword_AFA570);
      return;
    }

    v26 = ~v24;
    sub_13C80(0, &qword_DFA720, NSObject_ptr);
    while (1)
    {
      sub_15F84(*(a2 + 48) + v25 * v52, v5, &unk_DFEF20, &qword_AFA570);
      if ((sub_ABA790() & 1) == 0)
      {
        goto LABEL_17;
      }

      v27 = v5[8];
      if (v27 <= 3)
      {
        v30 = 0x7473696C79616C70;
        if (v27 == 2)
        {
          v30 = 1735290739;
        }

        v31 = 0xE400000000000000;
        if (v27 != 2)
        {
          v31 = 0xE800000000000000;
        }

        v32 = 0x747369747261;
        if (v5[8])
        {
          v32 = 0x6D75626C61;
        }

        v33 = 0xE600000000000000;
        if (v5[8])
        {
          v33 = 0xE500000000000000;
        }

        if (v5[8] <= 1u)
        {
          v28 = v32;
        }

        else
        {
          v28 = v30;
        }

        if (v5[8] <= 1u)
        {
          v29 = v33;
        }

        else
        {
          v29 = v31;
        }

        if (v21 > 3)
        {
LABEL_40:
          v34 = 0x646F736970457674;
          if (v21 != 7)
          {
            v34 = 0x6569766F6DLL;
          }

          v35 = 0xE500000000000000;
          if (v21 == 7)
          {
            v35 = 0xE900000000000065;
          }

          if (v21 == 6)
          {
            v34 = 0x776F68537674;
            v35 = 0xE600000000000000;
          }

          v36 = 0x7265736F706D6F63;
          if (v21 == 4)
          {
            v36 = 0x646956636973756DLL;
          }

          v37 = 0xEA00000000006F65;
          if (v21 != 4)
          {
            v37 = 0xE800000000000000;
          }

          if (v21 <= 5)
          {
            v38 = v36;
          }

          else
          {
            v38 = v34;
          }

          if (v21 <= 5)
          {
            v39 = v37;
          }

          else
          {
            v39 = v35;
          }

          if (v28 != v38)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        }
      }

      else if (v5[8] <= 5u)
      {
        if (v27 == 4)
        {
          v28 = 0x646956636973756DLL;
        }

        else
        {
          v28 = 0x7265736F706D6F63;
        }

        if (v27 == 4)
        {
          v29 = 0xEA00000000006F65;
        }

        else
        {
          v29 = 0xE800000000000000;
        }

        if (v21 > 3)
        {
          goto LABEL_40;
        }
      }

      else if (v27 == 6)
      {
        v29 = 0xE600000000000000;
        v28 = 0x776F68537674;
        if (v21 > 3)
        {
          goto LABEL_40;
        }
      }

      else if (v27 == 7)
      {
        v28 = 0x646F736970457674;
        v29 = 0xE900000000000065;
        if (v21 > 3)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v29 = 0xE500000000000000;
        v28 = 0x6569766F6DLL;
        if (v21 > 3)
        {
          goto LABEL_40;
        }
      }

      if (v21 > 1)
      {
        if (v21 == 2)
        {
          v40 = 1735290739;
        }

        else
        {
          v40 = 0x7473696C79616C70;
        }

        if (v21 == 2)
        {
          v39 = 0xE400000000000000;
        }

        else
        {
          v39 = 0xE800000000000000;
        }

        if (v28 != v40)
        {
          goto LABEL_81;
        }
      }

      else if (v21)
      {
        v39 = 0xE500000000000000;
        if (v28 != 0x6D75626C61)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v39 = 0xE600000000000000;
        if (v28 != 0x747369747261)
        {
          goto LABEL_81;
        }
      }

LABEL_80:
      if (v29 == v39)
      {

        a2 = v49;
        goto LABEL_16;
      }

LABEL_81:
      v41 = sub_ABB3C0();

      a2 = v49;
      if ((v41 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_16:
      if (sub_AB33E0())
      {
        break;
      }

LABEL_17:
      sub_12E1C(v5, &unk_DFEF20, &qword_AFA570);
      v25 = (v25 + 1) & v26;
      if (((*(v53 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_88;
      }
    }

    sub_12E1C(v5, &unk_DFEF20, &qword_AFA570);
    sub_12E1C(v51, &unk_DFEF20, &qword_AFA570);
    v7 = v45;
    a1 = v46;
    v11 = v43;
    v9 = v44;
    v15 = v42;
    v14 = v47;
  }

  while (v47);
LABEL_8:
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
      return;
    }

    v18 = *(v11 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v47 = (v18 - 1) & v18;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_4C9564(uint64_t a1, uint64_t a2)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFEEE0, &qword_AF7AF0);
  __chkstk_darwin();
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v44 - v6;
  __chkstk_darwin();
  v9 = &v44 - v8;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) == *(a2 + 16))
  {
    v10 = 0;
    v11 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = a2 + 56;
    v17 = &unk_DFEEE0;
    v48 = v7;
    v49 = a1;
    v46 = a1 + 56;
    v47 = v9;
    v45 = v15;
    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_7:
    v50 = v10;
    v51 = (v14 - 1) & v14;
    v18 = __clz(__rbit64(v14)) | (v10 << 6);
    while (1)
    {
      v22 = *(a1 + 48);
      v57 = *(v7 + 72);
      sub_15F84(v22 + v57 * v18, v9, v17, &qword_AF7AF0);
      v23 = v55;
      sub_36B0C(v9, v55, v17, &qword_AF7AF0);
      sub_ABB5C0();
      v56 = *v23;
      sub_ABA7A0();
      v24 = *(v23 + 8);
      v53 = v24;
      sub_1BDE98(v24);
      sub_AB93F0();

      v25 = *(v54 + 40);
      sub_AB3430();
      sub_4CC960(&unk_DFEEF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v52 = v25;
      sub_AB90E0();
      v26 = sub_ABB610();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v16 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v29 = ~v27;
      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      while (1)
      {
        sub_15F84(*(a2 + 48) + v28 * v57, v5, v17, &qword_AF7AF0);
        if (sub_ABA790())
        {
          break;
        }

LABEL_17:
        sub_12E1C(v5, v17, &qword_AF7AF0);
        v28 = (v28 + 1) & v29;
        if (((*(v16 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      v30 = 0xEA00000000007365;
      v31 = v17;
      v32 = v16;
      v33 = 0x6974697669746361;
      switch(v5[8])
      {
        case 1:
          v30 = 0xE600000000000000;
          v33 = 0x736D75626C61;
          break;
        case 2:
          v30 = 0xE700000000000000;
          v33 = 0x73747369747261;
          break;
        case 3:
          v30 = 0xE800000000000000;
          v33 = 0x73726F7461727563;
          break;
        case 4:
          v30 = 0xE500000000000000;
          v33 = 0x73676E6F73;
          break;
        case 5:
          v30 = 0xE800000000000000;
          v33 = 0x736E6F6974617473;
          break;
        case 6:
          v33 = 0x75632D656C707061;
          v30 = 0xEE0073726F746172;
          break;
        case 7:
          v33 = 0x6169726F74696465;
          v30 = 0xEF736D6574692D6CLL;
          break;
        case 8:
          v33 = 0x6F6D2D636973756DLL;
          v34 = 1936025974;
          goto LABEL_35;
        case 9:
          v33 = 0x69762D636973756DLL;
          v34 = 1936680292;
LABEL_35:
          v30 = v34 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 10:
          v33 = 0x6F736970652D7674;
          v30 = 0xEB00000000736564;
          break;
        case 11:
          v30 = 0xE800000000000000;
          v33 = 0x73776F68732D7674;
          break;
        case 12:
          v33 = 0x646564616F6C7075;
          v30 = 0xEF736F656469762DLL;
          break;
        case 13:
          v33 = 0x6C2D64726F636572;
          v30 = 0xED0000736C656261;
          break;
        case 14:
          v33 = 0x702D6C6169636F73;
          v30 = 0xEF73656C69666F72;
          break;
        case 15:
          v33 = 0x7473696C79616C70;
          v30 = 0xE900000000000073;
          break;
        default:
          break;
      }

      v35 = a2;
      v36 = 0x6974697669746361;
      v37 = 0xEA00000000007365;
      switch(v53)
      {
        case 1:
          v37 = 0xE600000000000000;
          if (v33 == 0x736D75626C61)
          {
            goto LABEL_63;
          }

          goto LABEL_64;
        case 2:
          v37 = 0xE700000000000000;
          if (v33 != 0x73747369747261)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 3:
          v37 = 0xE800000000000000;
          if (v33 != 0x73726F7461727563)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 4:
          v37 = 0xE500000000000000;
          if (v33 != 0x73676E6F73)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 5:
          v37 = 0xE800000000000000;
          if (v33 != 0x736E6F6974617473)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 6:
          v37 = 0xEE0073726F746172;
          if (v33 != 0x75632D656C707061)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 7:
          v38 = 0x6169726F74696465;
          v39 = 0x6D6574692D6CLL;
          goto LABEL_53;
        case 8:
          v40 = 0x6F6D2D636973756DLL;
          v41 = 1936025974;
          goto LABEL_67;
        case 9:
          v40 = 0x69762D636973756DLL;
          v41 = 1936680292;
LABEL_67:
          v37 = v41 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v33 != v40)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 10:
          v36 = 0x6F736970652D7674;
          v37 = 0xEB00000000736564;
          goto LABEL_62;
        case 11:
          v37 = 0xE800000000000000;
          if (v33 != 0x73776F68732D7674)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 12:
          v38 = 0x646564616F6C7075;
          v39 = 0x6F656469762DLL;
          goto LABEL_53;
        case 13:
          v37 = 0xED0000736C656261;
          if (v33 != 0x6C2D64726F636572)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 14:
          v38 = 0x702D6C6169636F73;
          v39 = 0x656C69666F72;
LABEL_53:
          v37 = v39 & 0xFFFFFFFFFFFFLL | 0xEF73000000000000;
          if (v33 != v38)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        case 15:
          v37 = 0xE900000000000073;
          if (v33 != 0x7473696C79616C70)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        default:
LABEL_62:
          if (v33 != v36)
          {
            goto LABEL_64;
          }

LABEL_63:
          if (v30 == v37)
          {

            a2 = v35;
            v16 = v32;
            v17 = v31;
          }

          else
          {
LABEL_64:
            v42 = sub_ABB3C0();

            a2 = v35;
            v16 = v32;
            v17 = v31;
            if ((v42 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          if ((sub_AB33E0() & 1) == 0)
          {
            goto LABEL_17;
          }

          sub_12E1C(v5, v17, &qword_AF7AF0);
          sub_12E1C(v55, v17, &qword_AF7AF0);
          v7 = v48;
          a1 = v49;
          v11 = v46;
          v9 = v47;
          v15 = v45;
          v10 = v50;
          v14 = v51;
          if (v51)
          {
            goto LABEL_7;
          }

LABEL_8:
          v19 = v10;
          do
          {
            v20 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              __break(1u);
              JUMPOUT(0x4C9E08);
            }

            if (v20 >= v15)
            {
              return 1;
            }

            v21 = *(v11 + 8 * v20);
            ++v19;
          }

          while (!v21);
          v50 = v20;
          v51 = (v21 - 1) & v21;
          v18 = __clz(__rbit64(v21)) | (v20 << 6);
          break;
      }
    }

LABEL_72:
    sub_12E1C(v55, &unk_DFEEE0, &qword_AF7AF0);
  }

  return 0;
}

void sub_4C9E88(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    if (*(a1 + 16) == *(a2 + 16))
    {
      v4 = 0;
      v5 = a1 + 56;
      v6 = 1 << *(a1 + 32);
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      else
      {
        v7 = -1;
      }

      v8 = v7 & *(a1 + 56);
      v9 = (v6 + 63) >> 6;
      v10 = a2 + 56;
LABEL_7:
      while (v8)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_14:
        v14 = *(*(v3 + 48) + (v11 | (v4 << 6)));
        sub_ABB5C0();
        if (v14)
        {
          v15 = 0x7972617262696CLL;
        }

        else
        {
          v15 = 0x676F6C61746163;
        }

        sub_AB93F0();

        v16 = sub_ABB610();
        v17 = -1 << *(a2 + 32);
        v18 = v16 & ~v17;
        if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          return;
        }

        v19 = ~v17;
        while (1)
        {
          if (*(*(a2 + 48) + v18))
          {
            v20 = 0x7972617262696CLL;
          }

          else
          {
            v20 = 0x676F6C61746163;
          }

          if (v20 == v15)
          {
            swift_bridgeObjectRelease_n();
            v3 = a1;
            goto LABEL_7;
          }

          v21 = sub_ABB3C0();
          swift_bridgeObjectRelease_n();
          if (v21)
          {
            break;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            return;
          }
        }

        v3 = a1;
      }

      v12 = v4;
      while (1)
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v4 >= v9)
        {
          return;
        }

        v13 = *(v5 + 8 * v4);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_4CA0A4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v42 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v43 = v7;
  v44 = result;
  if (v6)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v45 = (v6 - 1) & v6;
LABEL_13:
      v12 = (*(result + 48) + 240 * (v9 | (v3 << 6)));
      v14 = v12[1];
      v13 = v12[2];
      v48[0] = *v12;
      v48[1] = v14;
      v48[2] = v13;
      v15 = v12[6];
      v17 = v12[3];
      v16 = v12[4];
      v48[5] = v12[5];
      v48[6] = v15;
      v48[3] = v17;
      v48[4] = v16;
      v18 = v12[10];
      v20 = v12[7];
      v19 = v12[8];
      v48[9] = v12[9];
      v48[10] = v18;
      v48[7] = v20;
      v48[8] = v19;
      v21 = v12[14];
      v23 = v12[11];
      v22 = v12[12];
      v48[13] = v12[13];
      v48[14] = v21;
      v48[11] = v23;
      v48[12] = v22;
      sub_ABB5C0();
      sub_2B990(v48, v47);
      sub_AB93F0();
      v24 = sub_ABB610();
      v25 = -1 << *(a2 + 32);
      v26 = v24 & ~v25;
      if (((*(v8 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        break;
      }

      v27 = ~v25;
      while (1)
      {
        v28 = (*(a2 + 48) + 240 * v26);
        v30 = v28[1];
        v29 = v28[2];
        v47[0] = *v28;
        v47[1] = v30;
        v47[2] = v29;
        v31 = v28[6];
        v33 = v28[3];
        v32 = v28[4];
        v47[5] = v28[5];
        v47[6] = v31;
        v47[3] = v33;
        v47[4] = v32;
        v34 = v28[10];
        v36 = v28[7];
        v35 = v28[8];
        v47[9] = v28[9];
        v47[10] = v34;
        v47[7] = v36;
        v47[8] = v35;
        v37 = v28[14];
        v39 = v28[11];
        v38 = v28[12];
        v47[13] = v28[13];
        v47[14] = v37;
        v47[11] = v39;
        v47[12] = v38;
        sub_ABB5C0();
        sub_2B990(v47, v46);
        sub_AB93F0();
        v40 = sub_ABB610();
        sub_ABB5C0();
        sub_AB93F0();
        v41 = sub_ABB610();
        sub_2B9EC(v47);
        if (v40 == v41)
        {
          break;
        }

        v26 = (v26 + 1) & v27;
        if (((*(v8 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_2B9EC(v48);
      v7 = v43;
      result = v44;
      v6 = v45;
      if (!v45)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_2B9EC(v48);
    return 0;
  }

LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v42 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v45 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_4CA358(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_ABB5C0();
    sub_ABB5D0(v13);
    result = sub_ABB610();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_4CA4C8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_ABB5C0();

    sub_AB93F0();
    v16 = sub_ABB610();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_ABB3C0() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_4CA680(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v31 - v8;
  v10 = __chkstk_darwin();
  v11 = &v31 - v9;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v12 = 0;
    v13 = *(a1 + 56);
    v31 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & v13;
    v17 = (v14 + 63) >> 6;
    v38 = v5 + 32;
    v40 = a2 + 56;
    v41 = v5 + 16;
    v18 = (v5 + 8);
    v32 = v17;
    v33 = &v31 - v9;
    v34 = v5;
    v35 = a1;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_13:
        v22 = *(a1 + 48);
        v39 = *(v5 + 72);
        v23 = *(v5 + 16);
        v23(v11, v22 + v39 * (v19 | (v12 << 6)), v4, v10);
        (*(v5 + 32))(v42, v11, v4);
        sub_4CC960(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v24 = sub_AB90D0();
        v25 = -1 << *(a2 + 32);
        v26 = v24 & ~v25;
        if (((*(v40 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          break;
        }

        v36 = v18 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v27 = a2;
        v28 = ~v25;
        while (1)
        {
          (v23)(v7, *(v27 + 48) + v26 * v39, v4);
          sub_4CC960(&qword_DF7940, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v29 = sub_AB91C0();
          v30 = *v18;
          (*v18)(v7, v4);
          if (v29)
          {
            break;
          }

          v26 = (v26 + 1) & v28;
          if (((*(v40 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            v30(v42, v4);
            return;
          }
        }

        v30(v42, v4);
        a2 = v27;
        v5 = v34;
        a1 = v35;
        v17 = v32;
        v11 = v33;
        v16 = v37;
        if (!v37)
        {
          goto LABEL_8;
        }
      }

      (*v18)(v42, v4);
    }

    else
    {
LABEL_8:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {
          return;
        }

        v21 = *(v31 + 8 * v12);
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v37 = (v21 - 1) & v21;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void *sub_4CAA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_4CBA1C(a2, a3);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    do
    {
      v10 = v4[v6 + 32];
      v11 = v7;
      v12 = (a1 + 32);
      while (v11)
      {
        v13 = *v12++;
        --v11;
        if (v13 == v10)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_6D530(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v9 = _swiftEmptyArrayStorage[2];
          v8 = _swiftEmptyArrayStorage[3];
          if (v9 >= v8 >> 1)
          {
            sub_6D530((v8 > 1), v9 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v9 + 1;
          *(&_swiftEmptyArrayStorage[4] + v9) = v10;
          break;
        }
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return _swiftEmptyArrayStorage;
}

id sub_4CAB64()
{
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v1 = qword_E718C8;
  qword_E0B880 = qword_E718C8;

  return v1;
}

char *sub_4CABD8(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] = &_swiftEmptySetSingleton;
  *&v2[OBJC_IVAR____TtC16MusicApplication9BadgeView_textStyle] = UIFontTextStyleBody;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v6 = UIFontTextStyleBody;
  v7 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v8 = sub_2F3AA8(a1);

  v9 = OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet;
  v10 = *&v7[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet];
  *&v7[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] = v8;
  sub_4CAE8C(v10);

  v11 = *&v7[OBJC_IVAR____TtC16MusicApplication9BadgeView_textStyle];
  *&v7[OBJC_IVAR____TtC16MusicApplication9BadgeView_textStyle] = a2;
  v12 = a2;

  if (qword_DE6D78 != -1)
  {
    swift_once();
  }

  [v7 setTextColor:{qword_E0B880, v17.receiver, v17.super_class}];
  v13 = [objc_opt_self() preferredFontForTextStyle:v12];
  [v7 setFont:v13];

  [v7 setAdjustsFontForContentSizeCategory:1];
  [v7 _setTextAlignmentFollowsWritingDirection:1];

  result = [v7 font];
  if (result)
  {
    v15 = result;
    v16 = sub_4CB170(result);

    [v7 setAttributedText:v16];
    [v7 setHidden:*(*&v7[v9] + 16) == 0];
    [v7 sizeToFit];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_4CAE8C(uint64_t a1)
{
  swift_getObjectType();
  v3 = OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet;
  if ((sub_4CA358(*&v1[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet], a1) & 1) == 0)
  {
    v4 = [v1 font];
    if (v4)
    {
      v5 = v4;
      v6 = sub_4CB170(v4);

      [v1 setAttributedText:v6];
      [v1 setHidden:*(*&v1[v3] + 16) == 0];
      [v1 sizeToFit];
      if (sub_473110(3u, *&v1[v3]))
      {
        v8 = AccessibilityIdentifier.favoriteBadge.unsafeMutableAddressor();
        v9 = *v8;
        v10 = v8[1];
        v11 = v8[2];
        v12 = v8[3];
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
      }

      UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v9, v10, v7, v11, v12);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_4CAFD0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication9BadgeView_textStyle;
  v3 = sub_AB92A0();
  v5 = v4;
  if (v3 == sub_AB92A0() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_ABB3C0();

    if ((v8 & 1) == 0)
    {
      v9 = [objc_opt_self() preferredFontForTextStyle:*&v1[v2]];
      [v1 setFont:v9];

      v10 = [v1 font];
      if (v10)
      {
        v11 = v10;
        v12 = sub_4CB170(v10);

        [v1 setAttributedText:v12];
        [v1 setHidden:*(*&v1[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16) == 0];

        [v1 sizeToFit];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

unint64_t sub_4CB170(void *a1)
{
  v2 = v1;
  sub_AB2F20();
  __chkstk_darwin();
  v5 = OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet;
  if (!*(*&v1[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16))
  {
    return 0;
  }

  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v61 = _swiftEmptyArrayStorage;
  v62 = _swiftEmptyArrayStorage;
  v58 = UIFontTextStyleLargeTitle;
  v59 = v1;
  do
  {
    v7 = *&v2[v5];
    if (!*(v7 + 16))
    {
      goto LABEL_4;
    }

    v8 = *(&off_CEF8F0 + v6 + 32);
    sub_ABB5C0();
    sub_ABB5D0(v8);
    v9 = sub_ABB610();
    v10 = -1 << *(v7 + 32);
    v11 = v9 & ~v10;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_4;
    }

    v12 = ~v10;
    while (*(*(v7 + 48) + v11) != v8)
    {
      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v8 <= 1)
    {
      if (!v8)
      {
        ExplicitRestrictionsController.shared.unsafeMutableAddressor();
        swift_beginAccess();
        v13 = objc_allocWithZone(NSAttributedString);

        v14 = sub_AB9260();
        v15 = v13;
        v2 = v59;
        v16 = [v15 initWithString:v14];

        if (!v16)
        {
          goto LABEL_4;
        }

        goto LABEL_19;
      }

      v17 = 1.0;
      v18 = 0x79626C6F64;
      v19 = 0xE500000000000000;
LABEL_18:
      if (!sub_4CC71C(v18, v19, a1, v17))
      {
        goto LABEL_4;
      }

LABEL_19:
      sub_AB9730();
      if (*(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v62 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      v61 = v62;
      goto LABEL_4;
    }

    if (v8 == 2)
    {
      v17 = 1.0;
      v18 = 0x7373656C73736F6CLL;
      v19 = 0xE800000000000000;
      goto LABEL_18;
    }

    if (qword_DE6A70 != -1)
    {
      swift_once();
    }

    v20 = qword_E71438;
    if (qword_E71438)
    {
      v21 = objc_allocWithZone(UIFontMetrics);
      v22 = [v21 initForTextStyle:v58];
      [v22 scaledValueForValue:10.0];
      v24 = v23;

      v25 = [objc_opt_self() configurationWithPointSize:7 weight:v24];
      v26 = [v20 imageWithConfiguration:v25];

      v27 = [objc_opt_self() tintColor];
      v28 = [v26 imageWithTintColor:v27];

      if (v28)
      {
        v29 = objc_allocWithZone(NSTextAttachment);
        v30 = v28;
        v31 = [v29 init];
        [v31 setImage:v30];
        [a1 capHeight];
        v33 = v32;
        [v30 size];
        v35 = (v33 - v34) * 0.5;
        [v30 size];
        v37 = v36;
        [v30 size];
        [v31 setBounds:{0.0, v35, v37, v38}];
        v39 = [objc_opt_self() attributedStringWithAttachment:v31];

        v2 = v59;
        if (v39)
        {
          goto LABEL_19;
        }
      }
    }

LABEL_4:
    ++v6;
  }

  while (v6 != 4);
  sub_13C80(0, &unk_DECB20, NSAttributedString_ptr);
  sub_AB2E30();
  v60 = sub_ABA1C0();
  v40 = [objc_allocWithZone(NSMutableAttributedString) init];
  v41 = v61;
  v42 = v61 >> 62;
  v57 = a1;
  if (v61 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)); i; v41 = v50)
  {
    v44 = 0;
    v45 = v41 & 0xC000000000000001;
    v46 = v41 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v45)
      {
        v41 = sub_3600CC(v44, v41);
      }

      else
      {
        if (v44 >= *(v46 + 16))
        {
          goto LABEL_44;
        }

        v41 = *(v41 + 8 * v44 + 32);
      }

      v47 = v41;
      v48 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      [v40 appendAttributedString:v41];
      if (v42)
      {
        v41 = sub_ABB060();
      }

      else
      {
        v41 = *(v46 + 16);
      }

      if (__OFSUB__(v41, 1))
      {
        goto LABEL_45;
      }

      if (v44 < (v41 - 1))
      {
        [v40 appendAttributedString:v60];
      }

      ++v44;
      v41 = v61;
      if (v48 == i)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v50 = v41;
    i = sub_ABB060();
  }

LABEL_47:

  v51 = [v59 traitCollection];
  v52 = [v51 layoutDirection];

  if (v52 == &dword_0 + 1)
  {
    v53 = [v40 length];
  }

  else
  {
    v53 = 0;
  }

  v54 = v57;
  [v40 replaceCharactersInRange:v53 withAttributedString:{0, v60}];
  v49 = v40;
  result = [v49 length];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_55;
  }

  [v49 fixAttributesInRange:{0, result}];
  result = [v49 length];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_55:
    __break(1u);
    return result;
  }

  [v49 addAttribute:NSFontAttributeName value:v54 range:{0, result}];

  return v49;
}

id sub_4CB864(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  result = [v1 font];
  if (result)
  {
    v4 = result;
    v5 = sub_4CB170(result);

    [v1 setAttributedText:v5];
    [v1 setHidden:*(*&v1[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] + 16) == 0];
    return [v1 sizeToFit];
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_4CBA1C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8))())
  {
    v4 = sub_6AE24(0, 1, 1, _swiftEmptyArrayStorage);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_6AE24((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v4[v6 + 32] = 0;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  if ((*(a2 + 16))(a1, a2))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_6AE24(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    if (v8 >= v7 >> 1)
    {
      v4 = sub_6AE24((v7 > 1), v8 + 1, 1, v4);
    }

    *(v4 + 2) = v8 + 1;
    v4[v8 + 32] = 1;
  }

  if ((*(a2 + 24))(a1, a2))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_6AE24(0, *(v4 + 2) + 1, 1, v4);
    }

    v10 = *(v4 + 2);
    v9 = *(v4 + 3);
    if (v10 >= v9 >> 1)
    {
      v4 = sub_6AE24((v9 > 1), v10 + 1, 1, v4);
    }

    *(v4 + 2) = v10 + 1;
    v4[v10 + 32] = 2;
  }

  if ((*(a2 + 32))(a1, a2))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_6AE24(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_6AE24((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v4[v12 + 32] = 3;
  }

  return v4;
}

id sub_4CBC74()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {

LABEL_10:
      result = [v1 hasLoadedValueForKey:MPModelPropertySongTraits];
      if (result)
      {
        return (([v1 traits] >> 3) & 1);
      }

      return result;
    }
  }

  else
  {
    sub_12E1C(v6, &unk_DE8E40, &unk_AF8050);
  }

  v4 = [v2 standardUserDefaults];
  NSUserDefaults.subscript.getter(v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {

      goto LABEL_10;
    }
  }

  else
  {
    sub_12E1C(v6, &unk_DE8E40, &unk_AF8050);
  }

  return 0;
}

id sub_4CBE34()
{
  v1 = v0;
  v2 = [objc_opt_self() standardUserDefaults];
  sub_AFE98();
  sub_36A48();
  NSUserDefaults.subscript.getter(&v4);
  if (!v5)
  {
    sub_12E1C(&v4, &unk_DE8E40, &unk_AF8050);
LABEL_8:

    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  result = [v1 hasLoadedValueForKey:MPModelPropertySongTraits];
  if (result)
  {
    if (([v1 traits] & 2) != 0)
    {
      return &dword_0 + 1;
    }

    else
    {
      return (([v1 traits] >> 2) & 1);
    }
  }

  return result;
}

uint64_t sub_4CC058(void (*a1)(__n128))
{
  v2 = sub_AB8580();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v21 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B8D8, &qword_B12EE8) - 8;
  __chkstk_darwin();
  v7 = &v21 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B8E0, &unk_B12EF0);
  __chkstk_darwin();
  v22 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v21 - v9;
  v11 = __chkstk_darwin();
  v13 = &v21 - v12;
  a1(v11);
  (*(v3 + 104))(v10, enum case for ContentRating.explicit(_:), v2);
  (*(v3 + 56))(v10, 0, 1, v2);
  v14 = *(v5 + 56);
  sub_15F84(v13, v7, &qword_E0B8E0, &unk_B12EF0);
  sub_15F84(v10, &v7[v14], &qword_E0B8E0, &unk_B12EF0);
  v15 = *(v3 + 48);
  if (v15(v7, 1, v2) != 1)
  {
    sub_15F84(v7, v22, &qword_E0B8E0, &unk_B12EF0);
    if (v15(&v7[v14], 1, v2) != 1)
    {
      v17 = v21;
      (*(v3 + 32))(v21, &v7[v14], v2);
      sub_4CC960(&qword_E0B8E8, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
      v18 = v22;
      v16 = sub_AB91C0();
      v19 = *(v3 + 8);
      v19(v17, v2);
      sub_12E1C(v10, &qword_E0B8E0, &unk_B12EF0);
      sub_12E1C(v13, &qword_E0B8E0, &unk_B12EF0);
      v19(v18, v2);
      sub_12E1C(v7, &qword_E0B8E0, &unk_B12EF0);
      return v16 & 1;
    }

    sub_12E1C(v10, &qword_E0B8E0, &unk_B12EF0);
    sub_12E1C(v13, &qword_E0B8E0, &unk_B12EF0);
    (*(v3 + 8))(v22, v2);
    goto LABEL_6;
  }

  sub_12E1C(v10, &qword_E0B8E0, &unk_B12EF0);
  sub_12E1C(v13, &qword_E0B8E0, &unk_B12EF0);
  if (v15(&v7[v14], 1, v2) != 1)
  {
LABEL_6:
    sub_12E1C(v7, &qword_E0B8D8, &qword_B12EE8);
    v16 = 0;
    return v16 & 1;
  }

  sub_12E1C(v7, &qword_E0B8E0, &unk_B12EF0);
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_4CC4E8(uint64_t a1, uint64_t a2, void (*a3)(__n128))
{
  v4 = sub_AB40A0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  a3(v8);
  (*(v5 + 104))(v7, enum case for MusicFavoriteStatus.favorited(_:), v4);
  LOBYTE(a3) = sub_AB4090();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v10, v4);
  return a3 & 1;
}

unint64_t sub_4CC660()
{
  result = qword_E0B8C0;
  if (!qword_E0B8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0B8C8, qword_B12E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B8C0);
  }

  return result;
}

unint64_t sub_4CC6C8()
{
  result = qword_E0B8D0;
  if (!qword_E0B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0B8D0);
  }

  return result;
}

id sub_4CC71C(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  v6 = qword_E71620;
  v7 = sub_AB9260();
  v8 = objc_opt_self();
  v9 = [v8 imageNamed:v7 inBundle:v6];

  if (!v9)
  {
    v10 = sub_AB9260();
    v9 = [v8 systemImageNamed:v10];

    if (!v9)
    {
      return 0;
    }
  }

  if (qword_DE6D78 != -1)
  {
    swift_once();
  }

  v11 = [v9 imageWithTintColor:qword_E0B880];

  if (!v11)
  {
    return 0;
  }

  [v11 size];
  v13 = v12;
  [v11 size];
  v15 = v13 / v14;
  [a3 capHeight];
  v17 = v16 * a4;
  v18 = [objc_allocWithZone(NSTextAttachment) init];
  [v18 setImage:v11];
  [a3 capHeight];
  [v18 setBounds:{0.0, (v19 - v17) * 0.5, v15 * v17, v17}];
  v20 = [objc_opt_self() attributedStringWithAttachment:v18];

  return v20;
}

uint64_t sub_4CC960(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_4CCA40(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v9);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication37JSOrderedPlaylistSelectorModelRequest_orderedPlaylistSelector];
    v6 = *&v8[OBJC_IVAR____TtC16MusicApplication37JSOrderedPlaylistSelectorModelRequest_orderedPlaylistSelector];
    *&v8[OBJC_IVAR____TtC16MusicApplication37JSOrderedPlaylistSelectorModelRequest_orderedPlaylistSelector] = v5;
    v7 = v5;
  }
}

double sub_4CCB68(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_60044();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4CDC24, v12);

  return result;
}

double sub_4CCC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);

  return result;
}

void sub_4CCEC8(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplicationP33_80AE2528D20BB280B10BEE706541B0E941JSOrderedPlaylistSelectorRequestOperation_request];
  v2 = *&v1[OBJC_IVAR____TtC16MusicApplication37JSOrderedPlaylistSelectorModelRequest_orderedPlaylistSelector];
  if (!v2)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v3 = v2;
  v4 = [v1 itemProperties];
  if (!v4)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v1 itemKind];
  if (!v6 || (v7 = v6, [v6 modelClass], v7, swift_getObjCClassMetadata(), (v8 = objc_msgSend(swift_getObjCClassFromMetadata(), "requiredStoreLibraryPersonalizationProperties")) == 0))
  {
    v8 = [objc_opt_self() emptyPropertySet];
  }

  v9 = [v5 propertySetByCombiningWithPropertySet:v8];

  type metadata accessor for JSModelMediaContentItemBuilder();
  v10 = swift_allocObject();
  v10[4] = 0;
  v10[2] = v9;
  v11 = [objc_allocWithZone(MPModelStoreBrowseContentItemBuilder) initWithRequestedPropertySet:v9];
  if (!v11)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v10[3] = v11;

LABEL_9:
  v12 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v13 = [objc_allocWithZone(MPMutableSectionedCollection) init];
  v14 = sub_AB9260();
  v35 = v12;
  [v12 appendSection:v14];

  v15 = sub_AB9260();
  [v13 appendSection:v15];

  v16 = JSOrderedPlaylistSelector.items.getter();
  v17 = v16;
  if (v16 >> 62)
  {
LABEL_25:
    v18 = sub_ABB060();
    if (v18)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v18 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
    if (v18)
    {
LABEL_11:
      v33 = v1;
      v34 = v3;
      v19 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = sub_360EBC(v19, v17);
        }

        else
        {
          if (v19 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_24;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        v21 = v20;
        v1 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        if (v10)
        {
          v22 = [a1 userIdentity];
          if (!v22)
          {
            __break(1u);
            goto LABEL_29;
          }

          v23 = v22;
          sub_4D3314(v21, v22);
          v25 = v24;
          v3 = v26;

          if (v25)
          {
            [v13 appendItem:v21];
            v27 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v25 personalizationStyle:v3];
            [v35 appendItem:v27];
          }
        }

        ++v19;
        if (v1 == v18)
        {

          v1 = v33;
          v3 = v34;
          goto LABEL_27;
        }
      }
    }
  }

LABEL_27:
  v28 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v1 unpersonalizedContentDescriptors:v35];
  [v28 setRepresentedObjects:v13];
  v29 = swift_allocObject();
  *(v29 + 16) = v1;
  *(v29 + 24) = a1;
  aBlock[4] = sub_4CDB38;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_17_1;
  v30 = _Block_copy(aBlock);
  v31 = v1;
  v32 = a1;

  [v28 performWithResponseHandler:v30];
  _Block_release(v30);
}

void sub_4CD334(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSOrderedPlaylistSelectorModelResponse());
    v9 = a1;
    v13 = sub_4CD5B4(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplicationP33_80AE2528D20BB280B10BEE706541B0E941JSOrderedPlaylistSelectorRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplicationP33_80AE2528D20BB280B10BEE706541B0E941JSOrderedPlaylistSelectorRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

id sub_4CD508()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSOrderedPlaylistSelectorRequestOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_4CD5B4(char *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_itemsDidChangeNotificationObserver] = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v3[OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_personalizationResponse] = a2;
  v7 = a2;
  v8 = [v7 representedObjectResults];
  if (!v8)
  {
    v8 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v3[OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_jsResults] = v8;
  v25.receiver = v3;
  v25.super_class = ObjectType;
  result = objc_msgSendSuper2(&v25, "initWithRequest:", a1);
  if (result)
  {
    v10 = result;
    v11 = v7;
    v12 = v10;
    v13 = [v11 results];
    [v12 setResults:v13];

    v24 = a1;
    v14 = *&a1[OBJC_IVAR____TtC16MusicApplication37JSOrderedPlaylistSelectorModelRequest_orderedPlaylistSelector];
    v15 = v14;
    v16 = *JSOrderedPlaylistSelector.itemsDidChangeNotification.unsafeMutableAddressor();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v18 = v12;
    v19 = v15;
    *&v18[OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_itemsDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v16, v14, 1, 1, sub_AAF10, v17);

    v20 = MPModelResponseDidInvalidateNotification;
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = v11;
    v23 = v20;

    swift_allocObject();
    *&v18[OBJC_IVAR____TtC16MusicApplication38JSOrderedPlaylistSelectorModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v23, v11, 1, 1, sub_AADB4, v21);

    LOBYTE(v21) = [v22 isValid];

    if ((v21 & 1) == 0)
    {
      [v18 _invalidate];
    }

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4CDA68()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

double block_copy_helper_155(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_4CDAB8()
{

  return swift_deallocObject();
}

uint64_t sub_4CDAF8()
{

  return swift_deallocObject();
}

uint64_t sub_4CDB40()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4CDB78()
{

  return swift_deallocObject();
}

uint64_t sub_4CDBCC()
{

  return swift_deallocObject();
}

uint64_t sub_4CDC34()
{

  return swift_deallocObject();
}

void sub_4CDC88(char *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle);
  *(v1 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle) = a1;
  sub_31828(a1);
  sub_31828(a1);
  sub_31838(v3);
  if (!a1)
  {
    v4 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView, sub_4D1738);
    v7 = v4;
    if (qword_DE6C88 != -1)
    {
      swift_once();
      v4 = v7;
    }

    v5 = qword_E718C8;
    goto LABEL_9;
  }

  if (a1 == &dword_0 + 1)
  {
    v4 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView, sub_4D1738);
    v7 = v4;
    if (qword_DE6C98 != -1)
    {
      swift_once();
      v4 = v7;
    }

    v5 = qword_E718D8;
LABEL_9:
    [v4 setTextColor:v5];

    return;
  }

  sub_31838(a1);
  v6 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView, sub_4D1738);
  [v6 setTextColor:a1];

  sub_31838(a1);
}

void sub_4CDE34(double a1, double a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title];
  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title + 8];
  v8 = *&v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title] & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  if (v8 || ((v9 = *&v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text + 8], (v9 & 0x2000000000000000) != 0) ? (v10 = HIBYTE(v9) & 0xF) : (v10 = *&v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text] & 0xFFFFFFFFFFFFLL), v10))
  {
    v11 = [v2 traitCollection];
    [v11 displayScale];
    v81 = v12;
    if (v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_shouldApplyInheritedLayoutInsets] == 1)
    {
      [v2 music_inheritedLayoutInsets];
      top = v13;
      left = v15;
    }

    else
    {
      top = UIEdgeInsetsZero.top;
      left = UIEdgeInsetsZero.left;
    }

    v17 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView, sub_4D1738);
    v18 = [v17 font];

    v19 = UIView.maxReadableContentWidth(for:)();
    if (v19 >= a1)
    {
      v20 = a1;
    }

    else
    {
      v20 = v19;
    }

    v79 = v20;
    v21 = UIEdgeInsetsInsetRect(0.0, 0.0, v20, a2, top, left);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = *(v6 + 1);
    v29 = *v6 & 0xFFFFFFFFFFFFLL;
    if ((v28 & 0x2000000000000000) != 0)
    {
      v29 = HIBYTE(v28) & 0xF;
    }

    if (v29)
    {
      v30 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___titleLabel, sub_4D162C);
      v83.origin.x = v21;
      v83.origin.y = v23;
      v83.size.width = v25;
      v83.size.height = v27;
      [v30 sizeThatFits:{CGRectGetWidth(v83), 1.79769313e308}];
      v32 = v31;

      v84.origin.x = v21;
      v84.origin.y = v23;
      v84.size.width = v25;
      v84.size.height = v27;
      CGRectGetMinY(v84);
      sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
      v33 = sub_ABA550();
      [v33 _scaledValueForValue:49.0];

      v34 = OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___titleLabel;
      [*&v3[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___titleLabel] _firstBaselineOffsetFromTop];
      sub_AB39F0();
      v85.origin.y = v35;
      v85.origin.x = v21;
      v85.size.width = v25;
      v85.size.height = v32;
      MaxY = CGRectGetMaxY(v85);
      [*&v3[v34] _baselineOffsetFromBottom];
      v38 = MaxY - v37;
      v23 = v23 + v38;
      v27 = v27 - v38;
    }

    v39 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___sizingTextView, sub_4D1738);
    v86.origin.x = v21;
    v86.origin.y = v23;
    v86.size.width = v25;
    v86.size.height = v27;
    [v39 sizeThatFits:{CGRectGetWidth(v86), 1.79769313e308}];
    v41 = v40;

    v42 = OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___sizingTextView;
    v43 = *&v3[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___sizingTextView];
    [v43 textContainerInset];
    v80 = v44;
    v46 = v45;
    v77[4] = v47;
    v49 = v48;
    v50 = [v43 textContainer];
    [v50 lineFragmentPadding];
    v52 = v51;

    v53 = v46 + v52;
    v87.origin.x = v21;
    v87.origin.y = v23;
    v87.size.width = v25;
    v87.size.height = v27;
    v54 = v49 + v53 + CGRectGetWidth(v87);
    v88.origin.x = v21;
    v88.origin.y = v23;
    v88.size.width = v25;
    v88.size.height = v27;
    v55 = CGRectGetMinX(v88) - v53;
    v56 = *&v3[v42];
    v78 = v41;
    [v56 setFrame:{v55, 0.0, v54, v41}];
    [*&v3[v42] layoutIfNeeded];
    v89.origin.x = v21;
    v89.origin.y = v23;
    v89.size.width = v25;
    v89.size.height = v27;
    CGRectGetMinY(v89);
    v57 = &v3[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler];
    v58 = *&v3[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler];
    if (v58)
    {
      v59 = *(v57 + 1);

      v60 = [v3 traitCollection];
      v61 = v58();
      v63 = v62;

      sub_17654(v58, v59);
      [v61 _scaledValueForValue:v63];

      v64 = *&v3[v42];
      v65 = [v64 font];
      if (v65)
      {
        v66 = v65;
        [v65 lineHeight];
        [v66 descender];
      }

      else
      {
      }

      sub_AB39F0();
      v68 = *v57;
      if (*v57)
      {
        v69 = v67;
        v70 = *(v57 + 1);

        v71 = [v3 traitCollection];
        v72 = v68();
        v74 = v73;

        sub_17654(v68, v70);
        [v72 _scaledValueForValue:v74];

        v82 = 0;
        __chkstk_darwin();
        v77[2] = &v82;
        v77[3] = v75;
        v76 = v75;
        sub_3F2D90(sub_4D29D0, v77);

        v90.size.height = v78;
        v90.origin.x = v55;
        v90.origin.y = v69;
        v90.size.width = v54;
        CGRectGetMaxY(v90);
        sub_AB39F0();

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

void sub_4CE4D0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication13ParagraphView_allowedNumberOfLinesBeforeTruncating;
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_allowedNumberOfLinesBeforeTruncating];
  *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_allowedNumberOfLinesBeforeTruncating] = a1;
  if (v3 != a1)
  {
    v4 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView, sub_4D1738);
    v5 = [v4 textContainer];

    [v5 setMaximumNumberOfLines:*&v1[v2]];
    v6 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___sizingTextView, sub_4D1738);
    v7 = [v6 textContainer];

    [v7 setMaximumNumberOfLines:*&v1[v2]];
    if (v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_truncatesText])
    {
      [v1 setNeedsLayout];
      v8 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
      if (v8)
      {
        v9 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler + 8];

        v8(v1);

        sub_17654(v8, v9);
      }
    }
  }
}

uint64_t sub_4CE638(uint64_t result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_truncatesText];
  v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_truncatesText] = result;
  if (v2 != (result & 1))
  {
    if ((result & 1) == 0)
    {
      v3 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView, sub_4D1738);
      v4 = [v3 textContainer];
      [v4 setMaximumNumberOfLines:0];

      v5 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___sizingTextView, sub_4D1738);
      v6 = [v5 textContainer];
      [v6 setMaximumNumberOfLines:0];
    }

    result = [v1 setNeedsLayout];
    v7 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    if (v7)
    {
      v8 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler + 8];

      v7(v1);

      return sub_17654(v7, v8);
    }
  }

  return result;
}

double sub_4CE7AC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_3FB3C();
  v10 = sub_AB8FF0();
  v11 = a2;
  v9(v10, a3, a4, a5);

  return result;
}

void sub_4CE85C(float64x2_t a1, float64_t a2, float64x2_t a3, float64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_additionalContentInsets];
  v6 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_additionalContentInsets];
  v7 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_additionalContentInsets + 16];
  *v5 = a1.f64[0];
  v5[1] = a2;
  v5[2] = a3.f64[0];
  v5[3] = a4;
  a1.f64[1] = a2;
  a3.f64[1] = a4;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, a1), vceqq_f64(v7, a3)))) & 1) == 0)
  {
    [v4 setNeedsLayout];
    v8 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    if (v8)
    {
      v9 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler + 8];

      v8(v4);

      sub_17654(v8, v9);
    }
  }
}

char *sub_4CE924(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_allowedNumberOfLinesBeforeTruncating] = 6;
  v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_backgroundStyle] = 0;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedFirstBaselineOffset];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedLastBaselineOffset];
  *v13 = 0;
  v13[8] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textSize] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_titleSize] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_hidesDivider] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_shouldApplyInheritedLayoutInsets] = 1;
  v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_truncatesText] = 1;
  v14 = &v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_additionalContentInsets];
  v16 = *&UIEdgeInsetsZero.bottom;
  *v15 = *&UIEdgeInsetsZero.top;
  v15[1] = v16;
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_moreButtonHandler];
  *v18 = 0;
  v18[1] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___divider] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___sizingTextView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___moreButton] = 0;
  v19 = OBJC_IVAR____TtC16MusicApplication13ParagraphView_urlRangeDictionaryForTextView;
  *&v4[v19] = sub_99BB4(_swiftEmptyArrayStorage);
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v21 = qword_DE6C58;
  v22 = v20;
  if (v21 != -1)
  {
    v29 = v22;
    swift_once();
    v22 = v29;
  }

  v23 = v22;
  [v22 setBackgroundColor:qword_E71898];
  v24 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v25 = &v23[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler];
  v26 = *&v23[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler];
  v27 = *&v23[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler + 8];
  *v25 = sub_4D2AD8;
  v25[1] = v24;
  sub_17654(v26, v27);

  return v23;
}

uint64_t sub_4CEC20(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___titleLabel, sub_4D162C);

      String.trim()();

      v5 = sub_AB9260();

      [v4 setText:v5];

      result = [v2 setNeedsLayout];
      v6 = *&v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
      if (v6)
      {
        v7 = *&v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler + 8];

        v6(v2);

        return sub_17654(v6, v7);
      }
    }
  }

  return result;
}

double sub_4CED8C(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);

  return result;
}

uint64_t sub_4CEE20(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text] != result || *&v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      sub_4CEF60();
      v4 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___titleLabel, sub_4D162C);

      v5 = sub_AB9260();
      v6 = [v5 _isNaturallyRTL];

      v7 = v6 ? 2 : 0;
      [v4 setTextAlignment:v7];

      result = [v2 setNeedsLayout];
      v8 = *&v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
      if (v8)
      {
        v9 = *&v2[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler + 8];

        v8(v2);

        return sub_17654(v8, v9);
      }
    }
  }

  return result;
}

void sub_4CEF60()
{
  v1 = v0;
  v54 = sub_AB2E70();
  v2 = *(v54 - 8);
  __chkstk_darwin();
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB2F20();
  v55 = *(v5 - 8);
  v56 = v5;
  __chkstk_darwin();
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v48 - v7;
  v9 = sub_AB2F50();
  v50 = *(v9 - 8);
  v51 = v9;
  __chkstk_darwin();
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text + 8];
  v52 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text];
  v13 = objc_opt_self();

  v14 = [v13 defaultParagraphStyle];
  [v14 mutableCopy];

  sub_ABAB50();
  sub_13C80(0, &unk_E05360, NSMutableParagraphStyle_ptr);
  swift_dynamicCast();
  v15 = v63;
  swift_unknownObjectRelease();

  v16 = sub_AB9260();
  v17 = [v16 _isNaturallyRTL];

  if (v17)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  [v15 setAlignment:v18];
  sub_AB2F40();
  aBlock = v15;
  sub_B4908();
  v49 = v15;
  sub_AB2F70();
  v19 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler];
  if (v19)
  {
    v20 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler + 8];

    v21 = [v1 traitCollection];
    v22 = v19();

    sub_17654(v19, v20);
    aBlock = v22;
    v48 = sub_B4860();
    sub_AB2F70();
    aBlock = v52;
    v58 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFA750, &unk_AFD830);
    swift_allocObject();
    p_aBlock = &aBlock;
    sub_AB3890();
    sub_AB3880();

    v24 = v54;
    (*(v2 + 104))(v4, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v54);
    sub_AB2E40();
    (*(v2 + 8))(v4, v24);
    sub_13C80(0, &qword_DF5280, NSMutableAttributedString_ptr);
    (*(v55 + 16))(v53, v8, v56);
    v25 = sub_ABA1C0();
    v26 = &v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_urlRangeDictionaryForTextView];
    swift_beginAccess();
    v27 = v25;
    v28 = [v27 length];
    v29 = swift_allocObject();
    v29[2] = v26;
    v29[3] = v27;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_404A2C;
    *(v30 + 24) = v29;
    v61 = sub_4D2A60;
    v62 = v30;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_4CE7AC;
    v60 = &block_descriptor_156;
    v31 = _Block_copy(&aBlock);
    v32 = v27;

    [v32 enumerateAttributesInRange:0 options:v28 usingBlock:{0, v31}];
    _Block_release(v31);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
    }

    else
    {
      v54 = v8;
      swift_endAccess();

      v33 = v1;
      v34 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView, sub_4D1738);
      [v34 setAttributedText:v32];

      v35 = OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView;
      v36 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView];
      sub_AB2F60();
      v37 = aBlock;
      [v36 setFont:aBlock];

      v38 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___sizingTextView, sub_4D1738);
      [v38 setAttributedText:v32];

      v39 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___sizingTextView];
      v1 = v11;
      sub_AB2F60();
      v40 = aBlock;
      [v39 setFont:aBlock];

      v41 = *&v33[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle];
      if (!v41)
      {
        v43 = qword_DE6C88;
        v29 = *&v33[v35];
        v44 = v43 == -1;
        v46 = v55;
        v45 = v56;
        if (!v44)
        {
          swift_once();
        }

        [v29 setTextColor:qword_E718C8];

        (*(v46 + 8))(v54, v45);
        goto LABEL_13;
      }

      p_aBlock = v55;
      v30 = v56;
      if (v41 != &dword_0 + 1)
      {
        v47 = *&v33[v35];
        sub_31828(*&v33[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle]);
        v29 = v47;
        [v29 setTextColor:v41];

        (p_aBlock[1])(v54, v30);
        (*(v50 + 8))(v11, v51);
        sub_31838(v41);
        goto LABEL_15;
      }

      v42 = qword_DE6C98;
      v29 = *&v33[v35];
      if (v42 == -1)
      {
LABEL_9:
        [v29 setTextColor:qword_E718D8];

        (p_aBlock[1])(v54, v30);
LABEL_13:
        (*(v50 + 8))(v1, v51);
LABEL_15:

        return;
      }
    }

    swift_once();
    goto LABEL_9;
  }

  __break(1u);
}

id sub_4CF830(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_4CF8A8(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v5 = &v3[*a3];
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *v5;
  }

  if (a2)
  {
    *&a1 = 0.0;
  }

  v11 = a1;
  v12 = v6;
  result = sub_AB38D0();
  if (result)
  {
    result = [v3 setNeedsLayout];
    v9 = *&v3[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    if (v9)
    {
      v10 = *&v3[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler + 8];

      v9(v4);
      return sub_17654(v9, v10);
    }
  }

  return result;
}

void sub_4CF970()
{
  v0 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___titleLabel, sub_4D162C);
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v1 = sub_ABA550();
  [v0 setFont:v1];

  v2 = sub_4D11D4();
  v3 = [v2 titleLabel];

  if (v3)
  {
    v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v3 setFont:v4];
  }

  sub_4CEF60();
}

id sub_4CFAA8()
{
  v1 = OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___divider;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___divider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___divider);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    if (qword_DE6C70 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_E718B0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_4CFB68(void *a1)
{
  v15.receiver = v1;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

    goto LABEL_9;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = sub_AB92A0();
  v8 = v7;
  if (v6 == sub_AB92A0() && v8 == v9)
  {

    goto LABEL_11;
  }

  v11 = sub_ABB3C0();

  if ((v11 & 1) == 0)
  {
LABEL_9:
    sub_4CF970();
  }

LABEL_11:
  result = [v1 setNeedsLayout];
  v13 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
  if (v13)
  {
    v14 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler + 8];

    v13(v1);
    return sub_17654(v13, v14);
  }

  return result;
}

id sub_4CFD54()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v4, "music_inheritedLayoutInsetsDidChange");
  if (v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_shouldApplyInheritedLayoutInsets] == 1)
  {
    result = [v0 setNeedsLayout];
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler + 8];

      v2(v0);
      return sub_17654(v2, v3);
    }
  }

  return result;
}

uint64_t sub_4CFF74(SEL *a1, SEL *a2, double a3, double a4, double a5, double a6)
{
  v9 = v6;
  ObjectType = swift_getObjectType();
  v40.receiver = v9;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, *a1);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v39.receiver = v9;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, *a2, a3, a4, a5, a6);
  type metadata accessor for CGRect(0);
  v35 = v16;
  v36 = v18;
  v37 = v20;
  v38 = v22;
  v34.receiver = v9;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, *a1);
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  result = sub_AB38D0();
  if (result)
  {
    result = [v9 setNeedsLayout];
    v28 = *&v9[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    if (v28)
    {
      v29 = *&v9[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler + 8];

      v28(v9);
      return sub_17654(v28, v29);
    }
  }

  return result;
}

void sub_4D0110()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v206.receiver = v0;
  v206.super_class = ObjectType;
  objc_msgSendSuper2(&v206, "layoutSubviews");
  v196 = [v0 traitCollection];
  [v196 displayScale];
  v202 = v3;
  if (v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_shouldApplyInheritedLayoutInsets] == 1)
  {
    [v0 music_inheritedLayoutInsets];
    top = v4;
    left = v6;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
  }

  v205.receiver = v0;
  v205.super_class = ObjectType;
  objc_msgSendSuper2(&v205, "bounds");
  v9 = v8;
  v201 = v10;
  v198 = v12;
  v199 = v11;
  v207.origin.x = UIEdgeInsetsInsetRect(v10, v11, v12, v8, top, left);
  x = v207.origin.x;
  y = v207.origin.y;
  height = v207.size.height;
  Width = CGRectGetWidth(v207);
  v17 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView, sub_4D1738);
  v18 = [v17 font];

  v19 = UIView.maxReadableContentWidth(for:)();
  if (v19 >= Width)
  {
    v20 = Width;
  }

  else
  {
    v20 = v19;
  }

  v21 = OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView;
  v22 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView];
  v23 = [v22 text];
  if (!v23)
  {
    __break(1u);
LABEL_55:
    __break(1u);
    return;
  }

  v24 = v23;

  v25 = [v24 _isNaturallyRTL];
  v26 = v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_hidesDivider];
  v27 = sub_4CFAA8();
  v28 = v27;
  v200 = v9;
  v195 = v20;
  if (v26 == 1)
  {
    [v27 removeFromSuperview];
  }

  else
  {
    v29 = x;
    v30 = [v27 isDescendantOfView:v1];

    if ((v30 & 1) == 0)
    {
      [v1 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___divider]];
    }

    v204.receiver = v1;
    v204.super_class = ObjectType;
    objc_msgSendSuper2(&v204, "bounds");
    v32 = v31;
    v34 = v33 - left;
    v35 = 1.0 / v202;
    if (v25)
    {
      v208.origin.x = v201;
      v208.size.width = v198;
      v208.origin.y = v199;
      v208.size.height = v9;
      MaxX = CGRectGetMaxX(v208);
      v209.origin.x = left;
      v209.origin.y = v32;
      v209.size.width = v34;
      v209.size.height = 1.0 / v202;
      v37 = MaxX - CGRectGetWidth(v209);
      v210.origin.x = left;
      v210.origin.y = v32;
      v210.size.width = v34;
      v210.size.height = 1.0 / v202;
      left = v37 - CGRectGetMinX(v210);
      v9 = v200;
    }

    [*&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___divider] setFrame:{left, v32, v34, v35}];
    y = v35 + y;
    height = height - v35;
    x = v29;
    v20 = v195;
  }

  v38 = &v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title];
  v39 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title + 8];
  if ((v39 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v39) & 0xF;
  }

  else
  {
    v40 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title] & 0xFFFFFFFFFFFFLL;
  }

  v41 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___titleLabel, sub_4D162C);
  v42 = v41;
  if (v40)
  {
    v43 = [v41 isDescendantOfView:v1];

    if ((v43 & 1) == 0)
    {
      [v1 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___titleLabel]];
    }

    v44 = OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___titleLabel;
    v45 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___titleLabel];
    v211.origin.x = x;
    v211.origin.y = y;
    v211.size.width = v20;
    v211.size.height = height;
    [v45 sizeThatFits:{CGRectGetWidth(v211), 1.79769313e308}];
    v47 = v46;

    v212.origin.x = x;
    v212.origin.y = y;
    v212.size.width = v20;
    v212.size.height = height;
    CGRectGetMinY(v212);
    sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
    v48 = sub_ABA550();
    [v48 _scaledValueForValue:49.0];

    [*&v1[v44] _firstBaselineOffsetFromTop];
    sub_AB39F0();
    v50 = v49;
    v51 = x;
    if (v25)
    {
      v213.origin.x = v201;
      v213.size.width = v198;
      v213.origin.y = v199;
      v213.size.height = v9;
      v52 = CGRectGetMaxX(v213);
      v214.origin.x = x;
      v214.origin.y = v50;
      v214.size.width = v20;
      v214.size.height = v47;
      v53 = v52 - CGRectGetWidth(v214);
      v215.origin.x = x;
      v215.origin.y = v50;
      v215.size.width = v20;
      v215.size.height = v47;
      v51 = v53 - CGRectGetMinX(v215);
    }

    [*&v1[v44] setFrame:{v51, v50, v20, v47}];
    v216.origin.x = v51;
    v216.origin.y = v50;
    v216.size.width = v20;
    v216.size.height = v47;
    MaxY = CGRectGetMaxY(v216);
    [*&v1[v44] _baselineOffsetFromBottom];
    v56 = MaxY - v55;
    y = y + v56;
    height = height - v56;
  }

  else
  {
    [v41 removeFromSuperview];
  }

  if (([*&v1[v21] isDescendantOfView:v1] & 1) == 0)
  {
    [v1 addSubview:*&v1[v21]];
  }

  v57 = [*&v1[v21] textContainer];
  v194 = sub_13C80(0, &unk_E0BBF0, UIBezierPath_ptr);
  isa = sub_AB9740().super.isa;
  [v57 setExclusionPaths:isa];

  v59 = sub_4CF830(&OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___sizingTextView, sub_4D1738);
  [v59 sizeThatFits:{v20, height}];
  v197 = v60;

  v61 = OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___sizingTextView;
  v62 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___sizingTextView];
  [v62 textContainerInset];
  v192 = v63;
  v64 = v20;
  v66 = v65;
  v189 = v67;
  v193 = v68;
  v69 = [v62 textContainer];
  [v69 lineFragmentPadding];
  v71 = v70;

  v217.origin.x = x;
  v217.origin.y = y;
  v217.size.width = v64;
  v217.size.height = height;
  v72 = x;
  v73 = CGRectGetWidth(v217);
  v218.origin.x = v72;
  v218.origin.y = y;
  v218.size.width = v64;
  v218.size.height = height;
  MinX = CGRectGetMinX(v218);
  v191 = v72;
  v219.origin.x = v72;
  v219.origin.y = y;
  v219.size.width = v64;
  v190 = height;
  v219.size.height = height;
  CGRectGetMinY(v219);
  v75 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler];
  if (!v75)
  {
    goto LABEL_55;
  }

  v188 = y;
  v76 = v66 + v71;
  v77 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler + 8];

  v78 = [v1 traitCollection];
  v79 = v75();
  v81 = v80;

  sub_17654(v75, v77);
  [v79 _scaledValueForValue:v81];

  v82 = *&v1[v61];
  v83 = [v82 font];
  if (v83)
  {
    v84 = v83;
    [v83 lineHeight];
    [v84 descender];
  }

  else
  {
  }

  v85 = v76 + v73;
  sub_AB39F0();
  v87 = v86;
  v88 = *(v38 + 1);
  v89 = *v38 & 0xFFFFFFFFFFFFLL;
  if ((v88 & 0x2000000000000000) != 0)
  {
    v89 = HIBYTE(v88) & 0xF;
  }

  if (!v89)
  {
    v87 = v86 - *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_additionalContentInsets];
  }

  v90 = v193 + v85;
  v91 = MinX - v76;
  if (v25)
  {
    v220.origin.x = v201;
    v220.size.width = v198;
    v220.origin.y = v199;
    v220.size.height = v200;
    v92 = CGRectGetMaxX(v220);
    v221.origin.x = v91;
    v221.origin.y = v87;
    v221.size.width = v90;
    v93 = v197;
    v221.size.height = v197;
    v94 = v92 - CGRectGetWidth(v221);
    v222.origin.x = v91;
    v222.origin.y = v87;
    v222.size.width = v90;
    v222.size.height = v197;
    v91 = v94 - CGRectGetMinX(v222);
  }

  else
  {
    v93 = v197;
  }

  [*&v1[v21] setFrame:{v91, v87, v90, v93}];
  v95 = *&v1[v21];
  v96 = sub_3F2F3C();

  if (v96)
  {
    v187 = v87;
    v97 = sub_4D11D4();
    v98 = [v97 isDescendantOfView:v1];

    if ((v98 & 1) == 0)
    {
      [v1 addSubview:*&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___moreButton]];
    }

    v99 = OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___moreButton;
    v100 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___moreButton];
    sub_ABA510();
    [v100 sizeThatFits:?];
    v102 = v101;
    v104 = v103;

    v223.origin.x = v91;
    v223.origin.y = v187;
    v186 = v90;
    v223.size.width = v90;
    v223.size.height = v93;
    v105 = CGRectGetMaxX(v223);
    v224.origin.x = 0.0;
    v224.origin.y = 0.0;
    v224.size.width = v102;
    v224.size.height = v104;
    v193 = v105 - CGRectGetWidth(v224);
    v106 = *&v1[v99];
    [v106 contentRectForBounds:{0.0, 0.0, v102, v104}];
    [v106 titleRectForContentRect:?];
    v107 = v225.origin.x;
    v108 = v225.origin.y;
    v109 = v225.size.width;
    v110 = v225.size.height;
    CGRectGetMinY(v225);
    v226.origin.x = 0.0;
    v226.origin.y = 0.0;
    v226.size.width = v102;
    v226.size.height = v104;
    CGRectGetMinY(v226);
    v227.origin.x = v107;
    v227.origin.y = v108;
    v227.size.width = v109;
    v227.size.height = v110;
    CGRectGetMinX(v227);
    v228.origin.x = 0.0;
    v228.origin.y = 0.0;
    v228.size.width = v102;
    v228.size.height = v104;
    CGRectGetMinX(v228);
    v229.origin.x = 0.0;
    v229.origin.y = 0.0;
    v229.size.width = v102;
    v229.size.height = v104;
    v111 = CGRectGetMaxY(v229);
    v230.origin.x = v107;
    v230.origin.y = v108;
    v230.size.width = v109;
    v230.size.height = v110;
    v185 = v111 - CGRectGetMaxY(v230);
    v231.origin.x = 0.0;
    v231.origin.y = 0.0;
    v231.size.width = v102;
    v192 = v104;
    v231.size.height = v104;
    CGRectGetMaxX(v231);
    v232.origin.x = v107;
    v232.origin.y = v108;
    v232.size.width = v109;
    v232.size.height = v110;
    CGRectGetMaxX(v232);

    v112 = *&v1[v99];
    v113 = [v112 titleLabel];
    if (v113)
    {
      v114 = v113;
      [v113 _baselineOffsetFromBottom];

      v112 = v114;
    }

    v115 = v191;

    v233.origin.x = v91;
    v233.origin.y = v187;
    v233.size.width = v186;
    v233.size.height = v197;
    CGRectGetMaxY(v233);
    v203 = 0;
    __chkstk_darwin();
    v184[2] = &v203;
    v184[3] = v120;
    v121 = v120;
    sub_3F2D90(sub_4D2AE0, v184);

    v234.origin.y = 0.0;
    v122 = v193;
    v234.origin.x = v193;
    v123 = v102;
    v234.size.width = v102;
    v124 = v192;
    v234.size.height = v192;
    CGRectGetHeight(v234);
    sub_AB3A10();
    v126 = v125;
    v235.origin.x = v122;
    v235.origin.y = v126;
    v235.size.width = v102;
    v235.size.height = v124;
    v127 = CGRectGetMaxX(v235);
    v236.origin.x = v115;
    v128 = v188;
    v236.origin.y = v188;
    v129 = v195;
    v236.size.width = v195;
    v130 = v190;
    v236.size.height = v190;
    v131 = CGRectGetMaxX(v236);
    v132 = v200;
    if (v131 >= v127)
    {
      v133 = v126;
    }

    else
    {
      v237.origin.x = v122;
      v133 = v126;
      v237.origin.y = v126;
      v237.size.width = v123;
      v237.size.height = v124;
      v134 = CGRectGetMaxX(v237);
      v238.origin.x = v191;
      v238.origin.y = v128;
      v238.size.width = v129;
      v238.size.height = v130;
      v135 = CGRectGetMaxX(v238);
      v132 = v200;
      v122 = v122 - (v134 - v135);
    }

    if (v25)
    {
      v136 = v201;
      v137 = v199;
      v138 = v198;
      v202 = CGRectGetMaxX(*(&v132 - 3));
      v239.origin.x = v122;
      v139 = v133;
      v239.origin.y = v133;
      v239.size.width = v123;
      v239.size.height = v124;
      v140 = v202 - CGRectGetWidth(v239);
      v240.origin.x = v122;
      v240.origin.y = v139;
      v240.size.width = v123;
      v240.size.height = v124;
      v122 = v140 - CGRectGetMinX(v240);
    }

    else
    {
      v139 = v133;
    }

    v193 = v122;
    v189 = v139;
    [*&v1[v99] setFrame:{v122, v139, v123, v124}];
    [*&v1[v99] bounds];
    v142 = v141;
    v195 = v141;
    v144 = v143;
    v191 = v143;
    v197 = v123;
    v146 = v145;
    v190 = v145;
    v148 = v147;
    v188 = v147;
    v149 = *&v1[v99];
    [v149 contentRectForBounds:{v142, v144, v146, v148}];
    [v149 titleRectForContentRect:?];
    v151 = v150;
    v153 = v152;
    v202 = v152;
    v155 = v154;
    v157 = v156;

    v241.origin.x = v151;
    v241.origin.y = v153;
    v241.size.width = v155;
    v186 = v155;
    v241.size.height = v157;
    MinY = CGRectGetMinY(v241);
    v160 = v200;
    v159 = v201;
    v242.origin.x = v201;
    v162 = v198;
    v161 = v199;
    v242.origin.y = v199;
    v242.size.width = v198;
    v242.size.height = v200;
    v187 = MinY - CGRectGetMinY(v242);
    v243.origin.x = v151;
    v163 = v202;
    v243.origin.y = v202;
    v243.size.width = v155;
    v243.size.height = v157;
    v164 = CGRectGetMinX(v243);
    v244.origin.x = v159;
    v244.origin.y = v161;
    v244.size.width = v162;
    v244.size.height = v160;
    v201 = v164 - CGRectGetMinX(v244);
    v165 = v195;
    v245.origin.x = v195;
    v166 = v191;
    v245.origin.y = v191;
    v167 = v190;
    v245.size.width = v190;
    v168 = v188;
    v245.size.height = v188;
    CGRectGetMaxY(v245);
    v246.origin.x = v151;
    v246.origin.y = v163;
    v169 = v186;
    v246.size.width = v186;
    v246.size.height = v157;
    CGRectGetMaxY(v246);
    v247.origin.x = v165;
    v247.origin.y = v166;
    v247.size.width = v167;
    v247.size.height = v168;
    CGRectGetMaxX(v247);
    v248.origin.x = v151;
    v248.origin.y = v202;
    v248.size.width = v169;
    v248.size.height = v157;
    CGRectGetMaxX(v248);
    [v1 convertRect:*&v1[v21] toCoordinateSpace:{UIEdgeInsetsInsetRect(v193, v189, v197, v192, v187, v201)}];
    v170 = v249.origin.x;
    v171 = v249.origin.y;
    v172 = v249.size.width;
    v173 = v249.size.height;
    v174 = v249.origin.x + 6.0;
    v175 = CGRectGetMinY(v249);
    [*&v1[v21] bounds];
    v176 = CGRectGetWidth(v250);
    v251.origin.x = v170;
    v251.origin.y = v171;
    v251.size.width = v172;
    v251.size.height = v173;
    v177 = v176 - CGRectGetMinX(v251);
    v252.origin.x = v170;
    v252.origin.y = v171;
    v252.size.width = v172;
    v252.size.height = v173;
    v178 = CGRectGetHeight(v252);
    if (v25)
    {
      [*&v1[v21] bounds];
      v179 = CGRectGetMaxX(v253);
      [*&v1[v21] bounds];
      v180 = v179 - CGRectGetWidth(v254);
      v255.origin.x = v174;
      v255.origin.y = v175;
      v255.size.width = v177;
      v255.size.height = v178;
      v174 = v180 - CGRectGetMinX(v255);
    }

    v181 = [objc_opt_self() bezierPathWithRect:{v174, v175, v177, v178}];
    v119 = [*&v1[v21] textContainer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
    v182 = swift_allocObject();
    *(v182 + 16) = xmmword_AF82B0;
    *(v182 + 32) = v181;
    v183 = v181;
    v118 = sub_AB9740().super.isa;

    [v119 setExclusionPaths:v118];
  }

  else
  {
    v116 = [*&v1[v21] textContainer];
    v117 = sub_AB9740().super.isa;
    [v116 setExclusionPaths:v117];

    v118 = sub_4D11D4();
    [v118 removeFromSuperview];
    v119 = v196;
  }
}

id sub_4D11D4()
{
  v1 = v0;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  v2 = OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___moreButton;
  v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___moreButton);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___moreButton);
  }

  else
  {
    v5 = objc_opt_self();
    v6 = [v5 buttonWithType:1];
    [v5 easyTouchDefaultHitRectInsets];
    [v6 setHitRectInsets:?];
    v7 = v6;
    sub_AB91E0();
    sub_AB3550();
    sub_AB9320();
    v8 = sub_AB9260();

    [v7 setTitle:v8 forState:0];

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = sub_13C80(0, &qword_E0BC00, MPButton_ptr);
    ControlEventHandling<>.on(_:handler:)(64, sub_4D2A10, v9, v10);

    v11 = [v7 titleLabel];

    if (v11)
    {
      sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
      v12 = sub_ABA550();
      [v11 setFont:v12];
    }

    v13 = [v7 titleLabel];

    if (v13)
    {
      [v13 setTextAlignment:2];
    }

    v14 = *(v1 + v2);
    *(v1 + v2) = v7;
    v4 = v7;

    v3 = 0;
  }

  v15 = v3;
  return v4;
}

id sub_4D162C()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor:v3];

  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v4 = sub_ABA550();
  [v2 setFont:v4];

  [v2 setNumberOfLines:0];
  return v2;
}

void sub_4D1738()
{
  v1 = v0;
  type metadata accessor for LinkAwareTextView();
  v2 = [swift_getObjCClassFromMetadata() textViewUsingTextLayoutManager:0];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  v6 = v4;
  [v6 setEditable:0];
  [v6 setSelectable:1];
  v7 = v6;
  [v7 setScrollEnabled:0];
  [v7 setDelaysContentTouches:0];

  v8 = [v7 textContainer];
  v9 = v8;
  v10 = 0;
  if (v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_truncatesText] == 1)
  {
    v10 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_allowedNumberOfLinesBeforeTruncating];
  }

  [v8 setMaximumNumberOfLines:v10];

  v11 = [v7 textContainer];
  [v11 setLineBreakMode:4];

  v12 = [v7 textContainer];
  [v12 setWidthTracksTextView:1];

  v13 = [v7 textContainer];
  [v13 setHeightTracksTextView:1];

  v14 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler];
  if (v14)
  {
    v15 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler + 8];

    v16 = [v1 traitCollection];
    v17 = v14();

    sub_17654(v14, v15);
    [v7 setFont:v17];

    [v7 setDelegate:v1];
  }

  else
  {
    __break(1u);
  }
}

void sub_4D19A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication13ParagraphView_moreButtonHandler);
    if (v4)
    {
      v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication13ParagraphView_moreButtonHandler + 8);

      v4(v3);
      sub_17654(v4, v5);
    }

    sub_4CE638(0);
  }
}

double sub_4D1A40(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedFirstBaselineOffset];
  v4 = Strong[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedFirstBaselineOffset + 8];

  if (v4 == 1)
  {
    v5 = swift_unknownObjectUnownedLoadStrong();
    v6 = *&v5[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title];
    v7 = *&v5[OBJC_IVAR____TtC16MusicApplication13ParagraphView_title + 8];

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v3 = 24.0;
    }

    else
    {
      v3 = 44.0;
    }
  }

  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = v9[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textSize];

  v11 = [objc_opt_self() preferredFontForTextStyle:**(&off_D18048 + v10)];
  return v3;
}

uint64_t sub_4D1E1C()
{
  v46.receiver = v0;
  v46.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v46, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication21ParagraphReusableView_paragraphView];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 music_inheritedLayoutInsets];
  v12 = UIEdgeInsetsInsetRect(v3, v5, v7, v9, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = type metadata accessor for ParagraphView();
  v45.receiver = v1;
  v45.super_class = v19;
  objc_msgSendSuper2(&v45, "frame");
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v44.receiver = v1;
  v44.super_class = v19;
  objc_msgSendSuper2(&v44, "setFrame:", v12, v14, v16, v18);
  type metadata accessor for CGRect(0);
  v40 = v21;
  v41 = v23;
  v42 = v25;
  v43 = v27;
  v39.receiver = v1;
  v39.super_class = v19;
  objc_msgSendSuper2(&v39, "frame");
  v35 = v28;
  v36 = v29;
  v37 = v30;
  v38 = v31;
  result = sub_AB38D0();
  if (result)
  {
    result = [v1 setNeedsLayout];
    v33 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    if (v33)
    {
      v34 = *&v1[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler + 8];

      v33(v1);
      return sub_17654(v33, v34);
    }
  }

  return result;
}

id sub_4D2208()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LinkAwareTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication13ParagraphViewC9TextStyleO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_4D22B0()
{
  result = qword_E0BBE0;
  if (!qword_E0BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0BBE0);
  }

  return result;
}

unint64_t sub_4D2308()
{
  result = qword_E0BBE8;
  if (!qword_E0BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0BBE8);
  }

  return result;
}

void sub_4D235C()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_text);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_allowedNumberOfLinesBeforeTruncating) = 6;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_backgroundStyle) = 0;
  v3 = v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedFirstBaselineOffset;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedLastBaselineOffset;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_textSize) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_titleSize) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_hidesDivider) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_shouldApplyInheritedLayoutInsets) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_truncatesText) = 1;
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_textViewLabelPropertiesHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_additionalContentInsets);
  v7 = *&UIEdgeInsetsZero.bottom;
  *v6 = *&UIEdgeInsetsZero.top;
  v6[1] = v7;
  v8 = (v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView_moreButtonHandler);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___divider) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___textView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___sizingTextView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication13ParagraphView____lazy_storage___moreButton) = 0;
  v10 = OBJC_IVAR____TtC16MusicApplication13ParagraphView_urlRangeDictionaryForTextView;
  *(v0 + v10) = sub_99BB4(_swiftEmptyArrayStorage);
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_4D2510(uint64_t a1, Swift::UInt a2, Swift::UInt a3)
{
  v6 = sub_AB31C0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v38 - v10;
  __chkstk_darwin();
  v13 = &v38 - v12;
  __chkstk_darwin();
  v15 = &v38 - v14;
  v16 = [objc_opt_self() defaultWorkspace];
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v38 = v11;
  v18 = v7;
  v19 = OBJC_IVAR____TtC16MusicApplication13ParagraphView_urlRangeDictionaryForTextView;
  swift_beginAccess();
  v20 = *(v3 + v19);
  if (!*(v20 + 16) || (v21 = sub_2EC75C(a2, a3), (v22 & 1) == 0))
  {
    swift_endAccess();
LABEL_7:
    v36 = 0;
    goto LABEL_8;
  }

  v23 = v18;
  (*(v18 + 16))(v13, *(v20 + 56) + *(v18 + 72) * v21, v6);
  v24 = v13;
  v25 = *(v18 + 32);
  v25(v15, v24, v6);
  swift_endAccess();
  sub_AB30F0(v26);
  v28 = v27;
  v29 = [(objc_class *)v17 URLOverrideForURL:v27];

  if (!v29)
  {
    (*(v18 + 8))(v15, v6);
    goto LABEL_7;
  }

  sub_AB3150();

  v30 = v38;
  v25(v38, v9, v6);
  sub_AB30F0(v31);
  v33 = v32;
  sub_97420(_swiftEmptyArrayStorage);
  isa = sub_AB8FD0().super.isa;

  [(objc_class *)v17 openSensitiveURL:v33 withOptions:isa];
  v35 = *(v23 + 8);
  v35(v30, v6);
  v35(v15, v6);

  v36 = 1;
  v17 = isa;
LABEL_8:

  return v36;
}

void *sub_4D282C(double a1, double a2)
{
  [v2 textContainerInset];
  v6 = a1 - v5;
  [v2 textContainerInset];
  v8 = a2 - v7;
  v9 = [v2 layoutManager];
  v10 = [v2 textContainer];
  v11 = [v9 characterIndexForPoint:v10 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v6, v8}];

  v12 = [v2 textStorage];
  v13 = [v12 length];

  result = 0;
  if (v11 < v13)
  {
    v15 = [v2 textStorage];
    v16 = [v15 attribute:NSLinkAttributeName atIndex:v11 effectiveRange:0];

    if (v16)
    {
      sub_ABAB50();
      sub_9ACFC(&v18, &v19);
      swift_unknownObjectRelease();
      if (*(&v20 + 1))
      {
        sub_9BC10(&v19);
        v17 = v2;
        return v2;
      }
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    sub_9BC10(&v19);
    return 0;
  }

  return result;
}

uint64_t sub_4D29D8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4D2A18()
{

  return swift_deallocObject();
}

double block_copy_helper_156(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_4D2AA0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

id sub_4D2AE4()
{
  v1 = &v0[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_name];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_authorType];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_dsid];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_identifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_permissions] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_storePlatformData] = 0;
  *&v0[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_lookupItemArtworkInfo] = 0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for MediaSocialAuthor();
  return objc_msgSendSuper2(&v6, "init");
}

void sub_4D2BA0(void *a1@<X8>)
{
  v3 = type metadata accessor for MediaSocialAuthor();
  v4 = [objc_allocWithZone(v3) init];
  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_name + 8);
  v6 = &v4[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_name];
  *v6 = *(v1 + OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_name);
  *(v6 + 1) = v5;

  v7 = *(v1 + OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_authorType + 8);
  v8 = &v4[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_authorType];
  *v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_authorType);
  *(v8 + 1) = v7;

  v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_dsid + 8);
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_dsid];
  *v10 = *(v1 + OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_dsid);
  *(v10 + 1) = v9;

  v11 = *(v1 + OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_identifier + 8);
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_identifier];
  *v12 = *(v1 + OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_identifier);
  *(v12 + 1) = v11;

  *&v4[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_permissions] = *(v1 + OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_permissions);

  *&v4[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_storePlatformData] = *(v1 + OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_storePlatformData);

  a1[3] = v3;
  *a1 = v4;
}

id sub_4D2D68(uint64_t a1, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_identifier + 8])
  {
    sub_36A48();
    result = sub_ABAAD0();
  }

  else
  {
    result = 0;
  }

  if (*&v2[OBJC_IVAR____TtC16MusicApplication17MediaSocialAuthor_authorType + 8])
  {
    v4 = result;
    sub_36A48();
    result = (sub_ABAAD0() ^ v4);
  }

  if (!result)
  {
    v5.receiver = v2;
    v5.super_class = type metadata accessor for MediaSocialAuthor();
    return objc_msgSendSuper2(&v5, "hash");
  }

  return result;
}

id sub_4D2E2C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MediaSocialAuthor();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_4D2F38(void *a1)
{
  v1 = a1;
  v2 = [v1 contentItem];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 innermostModelObject];

    v1 = v4;
  }

  return v1;
}

id _sSo18MusicModelGridItemC0A11ApplicationE09innermostB6ObjectSo07MPModelG0Cvg_0()
{
  v1 = [v0 contentItem];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 innermostModelObject];

    return v3;
  }

  else
  {

    return v5;
  }
}

uint64_t sub_4D305C()
{

  return swift_deallocClassInstance();
}

uint64_t Collaboration.ArtworkCachingReference.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_4D32AC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PageHeaderContentContainerReusableView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_4D3314(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(&stru_B8.reserved2 + (swift_isaMask & *a1)))();
  if (v6)
  {
    v7 = v6;
    v8 = *(v3 + 24);
    [v8 modelObjectWithStoreItemMetadata:v7 userIdentity:a2];
  }

  else
  {
    v9 = (*(&stru_B8.offset + (swift_isaMask & *a1)))();
    if (v9)
    {
      v10 = v9;
      if ((*&stru_158.segname[(swift_isaMask & *v9) - 8])(*(v3 + 16)))
      {
        (*(&stru_108.reserved2 + (swift_isaMask & *v10)))();
      }

      else
      {
      }
    }

    else
    {
      v11 = (*(&stru_1F8.flags + (swift_isaMask & *a1)))();
      if (v11)
      {
        v12 = v11;
        v13 = [*(v2 + 16) relationships];
        sub_119B5C();
        v14 = sub_AB8FF0();
        v15 = sub_AB92A0();
        if (*(v14 + 16) && (v17 = sub_2EBF88(v15, v16), (v18 & 1) != 0))
        {
          v19 = *(*(v14 + 56) + 8 * v17);
          v20 = v19;
        }

        else
        {
          v19 = 0;
        }

        v21 = [objc_opt_self() emptyIdentifierSet];
        __chkstk_darwin();
        v25[2] = v3;
        v25[3] = v19;
        v25[4] = v12;
        v22 = objc_allocWithZone(MPModelStoreBrowseContentItem);
        v23 = swift_allocObject();
        *(v23 + 16) = sub_4D3998;
        *(v23 + 24) = v25;
        aBlock[4] = sub_57B84;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_41A314;
        aBlock[3] = &block_descriptor_157;
        v24 = _Block_copy(aBlock);

        [v22 initWithIdentifiers:v21 block:v24];
        _Block_release(v24);

        LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

        if (v24)
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_4D3700(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClassUnconditional();
  if (*(a2 + 32))
  {
    v8 = 1;
  }

  else
  {
    v8 = a3 == 0;
  }

  if (!v8)
  {
    v9 = [objc_allocWithZone(MPStoreModelMovieMediaClipBuilder) initWithRequestedPropertySet:a3];
    v10 = *(a2 + 32);
    *(a2 + 32) = v9;
  }

  v11 = (*(&stru_68.size + (swift_isaMask & *a4)))();
  if (v11)
  {
    v12 = v11;
    v13 = *(a2 + 32);
    if (v13)
    {
      v14 = *&stru_68.segname[swift_isaMask & *a4];
      v15 = v13;
      v16 = v14();
      v23 = [v15 mediaClipWithStoreItemMetadata:v16 storeItemMovieClip:v12];

      goto LABEL_11;
    }
  }

  v23 = 0;
LABEL_11:
  v17 = [*(a2 + 16) properties];
  v18 = sub_AB9B40();
  v19 = sub_AB92A0();
  v21 = sub_472F00(v19, v20, v18);

  if ((v21 & 1) == 0)
  {
    v22 = v23;
    if (!v23)
    {
      return;
    }

    goto LABEL_15;
  }

  if (v23)
  {
    [v7 setItemType:13];
    v22 = v23;
LABEL_15:
    v24 = v22;
    [v7 setMediaClip:?];

    return;
  }

  [v7 setItemType:0];
}

double block_copy_helper_157(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_4D39CC()
{
  type metadata accessor for JSDrivenViewController(0);
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    v6 = sub_4D3C64();
    Strong = swift_unknownObjectWeakLoadStrong();

    return Strong;
  }

  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_contentViewController);
  type metadata accessor for VerticalStackViewController();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    Strong = v3;
    v5 = v2;
    return Strong;
  }

  v8 = v2;
  v9 = v0;
  v10 = sub_4D39CC();

  return v10;
}

id sub_4D3A88(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_visibleViewControllers] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_artworkVideoPlaybackCoordinator] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState] = 0x80;
  *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsLayout] = 0;
  v3 = &v1[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_lastKnownVisibleBounds];
  v4 = type metadata accessor for VerticalStackViewController();
  *v3 = 0u;
  v3[1] = 0u;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "initWithNibName:bundle:", 0, 0);
  sub_4D4068(a1, 0);

  return v5;
}

double sub_4D3BA0(char a1)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && v1)
  {
    v5 = v3;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);
    v8 = v7;
    v9 = swift_getObjectType();
    (*(v8 + 16))(a1 & 1, v9, v8);

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_4D3C64()
{
  if (qword_DE6D80 != -1)
  {
    swift_once();
  }

  v1 = qword_E0BF40;
  if (objc_getAssociatedObject(v0, qword_E0BF40))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_9BC10(v8);
    goto LABEL_10;
  }

  type metadata accessor for VerticalStackViewController.Item();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    objc_allocWithZone(type metadata accessor for VerticalStackViewController.Item());
    v3 = v0;
    v2 = sub_4DE3E0();

    objc_setAssociatedObject(v3, v1, v2, &dword_0 + 1);
    return v2;
  }

  return v5;
}

double sub_4D3D84(uint64_t a1, uint64_t a2, __n128 a3)
{
  *(v3 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

id sub_4D3DD0()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController____lazy_storage___scrollView);
  }

  else
  {
    type metadata accessor for VerticalStackViewController.ScrollView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_4D3E44(unint64_t a1, uint64_t (*a2)(void))
{
  v5 = &_swiftEmptySetSingleton;
  if (![v2 isViewLoaded])
  {
    return v5;
  }

  sub_4D62B0();
  v13 = &_swiftEmptySetSingleton;
  if (a1 >> 62)
  {
    v10 = sub_ABB060();
    if (v10 < 0)
    {
      __break(1u);
    }

    v6 = v10;
    if (v10)
    {
      goto LABEL_4;
    }

    return &_swiftEmptySetSingleton;
  }

  v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v6)
  {
    return &_swiftEmptySetSingleton;
  }

LABEL_4:
  v7 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = sub_35F8D4(v7, a1);
    }

    else
    {
      v8 = *(a1 + 8 * v7 + 32);
    }

    v9 = v8;
    if (a2())
    {
      sub_1A5B0(&v12, v7);
    }

    ++v7;
  }

  while (v6 != v7);
  return v13;
}

id sub_4D3F5C()
{
  v1 = v0;
  v2 = sub_4D3C64();
  v3 = *&v2[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame + 24];

  if (v3 <= 0.0)
  {
    return 0;
  }

  v4 = sub_4D3C64();
  v5 = v4[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState];

  if (v5 != 129)
  {
    return 0;
  }

  v6 = sub_4D3C64();
  v7 = sub_4D3DD0();
  [v7 contentOffset];
  v9 = v8;
  v11 = v10;

  result = [v1 view];
  if (result)
  {
    v13 = result;
    [result bounds];
    v15 = v14;
    v17 = v16;

    LOBYTE(v13) = sub_4DC264(v9, v11, v15, v17);
    return (v13 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_4D4068(uint64_t a1, char a2)
{
  v3 = v2;
  v143 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers;
  *&aBlock = *(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
  *&v156 = a1;

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE7FD0, &unk_AF7AB0);
  v7 = sub_36A00(&qword_E0C200, &qword_DE7FD0, &unk_AF7AB0, &protocol conformance descriptor for [A]);
  v8 = sub_4DFADC();
  Collection<>.compare<A>(with:comparator:)(&v156, 0, 0, v6, v6, v7, v7, v8, v9);
  v11 = v10;

  if (!*(v11 + 16))
  {

    return;
  }

  v12 = [v2 isViewLoaded];
  v13 = 0;
  v141 = a1;
  if (v12 && (a2 & 1) != 0)
  {
    type metadata accessor for VerticalStackViewController.AnimationContext();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = _swiftEmptyArrayStorage;
    *(v13 + 32) = _swiftEmptyArrayStorage;
    *(v13 + 40) = _swiftEmptyArrayStorage;
    *(v13 + 48) = 0;
  }

  v14 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext;
  v15 = *(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext);
  *(v2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext) = v13;

  sub_4DB3B8(v15);

  v16 = *(v11 + 16);
  if (!v16)
  {
LABEL_98:

    *(v3 + v143) = v141;

    if ([v3 isViewLoaded])
    {
      sub_4D55B0();
      sub_4D5FB4();
      v115 = *(v3 + v14);
      if (v115)
      {
        v116 = *(&stru_108.reloff + (swift_isaMask & *v3));

        v116(v117);
        if ((*(v115 + 16) & 1) == 0)
        {
          v118 = *(v115 + 48);
          *(v115 + 48) = 1;
          sub_4DB5DC(v118);
        }

        v119 = objc_opt_self();
        v160 = sub_4DFB4C;
        v161 = v115;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v159 = sub_1B5EB4;
        *(&v159 + 1) = &block_descriptor_262;
        v120 = _Block_copy(&aBlock);

        v121 = swift_allocObject();
        *(v121 + 16) = v115;
        *(v121 + 24) = v3;
        v160 = sub_4DFBA8;
        v161 = v121;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v159 = sub_1811AC;
        *(&v159 + 1) = &block_descriptor_268;
        v122 = _Block_copy(&aBlock);
        v123 = v3;

        [v119 animateWithDuration:v120 animations:v122 completion:0.25];
        _Block_release(v122);
        _Block_release(v120);
      }
    }

    v124 = swift_allocObject();
    *(v124 + 16) = v3;
    v11 = *(v3 + v14);
    if (v11)
    {
      if (*(v11 + 48) != 3)
      {
        v2 = swift_allocObject();
        *(v2 + 16) = sub_4DFB44;
        *(v2 + 24) = v124;
        swift_beginAccess();
        v18 = *(v11 + 40);
        v3 = v3;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v11 + 40) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
LABEL_120:
          v18 = sub_6AA00(0, v18[2] + 1, 1, v18);
          *(v11 + 40) = v18;
        }

        v136 = v18[2];
        v135 = v18[3];
        if (v136 >= v135 >> 1)
        {
          v18 = sub_6AA00((v135 > 1), v136 + 1, 1, v18);
        }

        v18[2] = v136 + 1;
        v137 = &v18[2 * v136];
        v137[4] = sub_36C08;
        v137[5] = v2;
        *(v11 + 40) = v18;
        swift_endAccess();

        goto LABEL_116;
      }

      v125 = v3 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v126 = *(v125 + 1);
        ObjectType = swift_getObjectType();
        v128 = *(v126 + 8);
        v129 = v3;

        v128(v129, ObjectType, v126);

LABEL_110:

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v130 = v3 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v131 = *(v130 + 1);
        swift_getObjectType();
        v132 = *(v131 + 8);
        v133 = v3;
        v132();

        goto LABEL_110;
      }
    }

    v138 = v3;
LABEL_116:

    return;
  }

  v17 = 0;
  v18 = (v11 + 56);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v145 = v11;
  v146 = v14;
  v144 = *(v11 + 16);
  v142 = v2;
  while (1)
  {
    if (v17 >= *(v11 + 16))
    {
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    if (*(v18 - 16) == 1)
    {
      break;
    }

LABEL_8:
    ++v17;
    v18 += 4;
    if (v16 == v17)
    {
      goto LABEL_98;
    }
  }

  v22 = *v18;
  v23 = *(v18 - 3);
  if (!v23)
  {
    v2 = v22;
    sub_4D810C(v2, v3);

    goto LABEL_8;
  }

  if (v23 != 1)
  {
    v32 = *(v18 - 1);
    v2 = *(v3 + v143);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v114 = v22;

      v35 = sub_35F8D4(v32, v2);
    }

    else
    {
      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_118;
      }

      if (v32 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_119;
      }

      v33 = *(v2 + 8 * v32 + 32);
      v34 = v22;

      v35 = v33;
    }

    v36 = v35;
    sub_4D810C(v35, v3);

    v37 = swift_allocObject();
    *(v37 + 16) = v3;
    *(v37 + 24) = v22;
    v148 = v37;
    v38 = swift_allocObject();
    *(v38 + 16) = v22;
    *(v38 + 24) = v3;
    v150 = v38;
    v26 = *(v3 + v14);
    if (v26)
    {
      if (!*(v26 + 48))
      {
        v62 = swift_allocObject();
        *(v62 + 16) = sub_4DFBB0;
        *(v62 + 24) = v148;
        swift_beginAccess();
        v63 = *(v26 + 24);
        v64 = v22;
        v65 = v3;
        v66 = v64;
        v67 = v65;

        v68 = swift_isUniquelyReferenced_nonNull_native();
        *(v26 + 24) = v63;
        if ((v68 & 1) == 0)
        {
          v63 = sub_6AA00(0, v63[2] + 1, 1, v63);
          *(v26 + 24) = v63;
        }

        v70 = v63[2];
        v69 = v63[3];
        if (v70 >= v69 >> 1)
        {
          v63 = sub_6AA00((v69 > 1), v70 + 1, 1, v63);
        }

        v63[2] = v70 + 1;
        v71 = &v63[2 * v70];
        v71[4] = sub_36C08;
        v71[5] = v62;
        *(v26 + 24) = v63;
        swift_endAccess();
        goto LABEL_87;
      }

      v39 = v22;
      v40 = v3;
      v41 = v39;
      v42 = v40;

      [v42 addChildViewController:v41];
      if (qword_DE6D80 != -1)
      {
        swift_once();
      }

      v43 = qword_E0BF40;
      if (objc_getAssociatedObject(v41, qword_E0BF40))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v156 = 0u;
        v157 = 0u;
      }

      aBlock = v156;
      v159 = v157;
      if (*(&v157 + 1))
      {
        type metadata accessor for VerticalStackViewController.Item();
        if (swift_dynamicCast())
        {
          v73 = v154;
LABEL_86:
          Strong = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakAssign();
          sub_4DBE88(Strong);

          v3 = v142;
LABEL_87:
          if (*(v26 + 48) != 3)
          {
            v2 = swift_allocObject();
            *(v2 + 16) = sub_4DFBB8;
            *(v2 + 24) = v150;
            swift_beginAccess();
            v99 = *(v26 + 40);

            v111 = swift_isUniquelyReferenced_nonNull_native();
            *(v26 + 40) = v99;
            if ((v111 & 1) == 0)
            {
              v99 = sub_6AA00(0, v99[2] + 1, 1, v99);
              *(v26 + 40) = v99;
            }

            v113 = v99[2];
            v112 = v99[3];
            if (v113 >= v112 >> 1)
            {
              v99 = sub_6AA00((v112 > 1), v113 + 1, 1, v99);
            }

            v99[2] = v113 + 1;
            v103 = &v99[2 * v113];
            goto LABEL_96;
          }

          v98 = [v22 view];
          v16 = v144;
          if (!v98)
          {
            goto LABEL_123;
          }

          goto LABEL_89;
        }

        keya = v43;
      }

      else
      {
        keya = v43;
        sub_9BC10(&aBlock);
      }

      v104 = type metadata accessor for VerticalStackViewController.Item();
      v105 = objc_allocWithZone(v104);
      v105[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
      v106 = &v105[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
      *v106 = UIEdgeInsetsZero.top;
      v106[1] = left;
      v106[2] = bottom;
      v106[3] = right;
      v105[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
      v107 = &v105[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      *v107 = 0;
      *(v107 + 4) = 0;
      v107[10] = 1;
      *&v105[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
      *&v105[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v108 = &v105[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
      *v108 = 0u;
      v108[1] = 0u;
      v105[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
      v109 = &v105[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
      *v109 = 0;
      *(v109 + 1) = 0;
      v109[16] = 1;
      swift_unknownObjectWeakAssign();
      v153.receiver = v105;
      v153.super_class = v104;
      v73 = objc_msgSendSuper2(&v153, "init");
      objc_setAssociatedObject(v41, keya, v73, &dword_0 + 1);
      goto LABEL_86;
    }

    v49 = v22;
    v50 = v3;
    v46 = v49;
    v47 = v50;
    [v47 addChildViewController:v46];
    if (qword_DE6D80 != -1)
    {
      swift_once();
    }

    v51 = qword_E0BF40;
    if (objc_getAssociatedObject(v46, qword_E0BF40))
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v156 = 0u;
      v157 = 0u;
    }

    aBlock = v156;
    v159 = v157;
    if (*(&v157 + 1))
    {
      type metadata accessor for VerticalStackViewController.Item();
      if (swift_dynamicCast())
      {
        v83 = v154;
        goto LABEL_71;
      }
    }

    else
    {
      sub_9BC10(&aBlock);
    }

    v84 = type metadata accessor for VerticalStackViewController.Item();
    v85 = objc_allocWithZone(v84);
    v85[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
    v86 = &v85[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
    *v86 = UIEdgeInsetsZero.top;
    v86[1] = left;
    v86[2] = bottom;
    v86[3] = right;
    v85[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
    v87 = &v85[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
    *v87 = 0;
    *(v87 + 4) = 0;
    v87[10] = 1;
    *&v85[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
    *&v85[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v88 = &v85[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
    *v88 = 0u;
    v88[1] = 0u;
    v85[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
    v89 = &v85[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
    *v89 = 0;
    *(v89 + 1) = 0;
    v89[16] = 1;
    swift_unknownObjectWeakAssign();
    v155.receiver = v85;
    v155.super_class = v84;
    v83 = objc_msgSendSuper2(&v155, "init");
    objc_setAssociatedObject(v46, v51, v83, &dword_0 + 1);
    v16 = v144;
    v3 = v142;
LABEL_71:
    v90 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    sub_4DBE88(v90);

    v82 = [v46 view];
    if (!v82)
    {
      goto LABEL_121;
    }

    goto LABEL_72;
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  *(v24 + 24) = v22;
  v147 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v3;
  v149 = v25;
  v26 = *(v3 + v14);
  if (v26)
  {
    if (*(v26 + 48))
    {
      v27 = v22;
      v28 = v3;
      v29 = v27;
      v30 = v28;

      [v30 addChildViewController:v29];
      if (qword_DE6D80 != -1)
      {
        swift_once();
      }

      v31 = qword_E0BF40;
      if (objc_getAssociatedObject(v29, qword_E0BF40))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v156 = 0u;
        v157 = 0u;
      }

      aBlock = v156;
      v159 = v157;
      if (*(&v157 + 1))
      {
        type metadata accessor for VerticalStackViewController.Item();
        if (swift_dynamicCast())
        {
          v72 = v154;
          goto LABEL_75;
        }

        key = v31;
      }

      else
      {
        key = v31;
        sub_9BC10(&aBlock);
      }

      v91 = type metadata accessor for VerticalStackViewController.Item();
      v92 = objc_allocWithZone(v91);
      v92[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
      v93 = &v92[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
      *v93 = UIEdgeInsetsZero.top;
      v93[1] = left;
      v93[2] = bottom;
      v93[3] = right;
      v92[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
      v94 = &v92[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      *v94 = 0;
      *(v94 + 4) = 0;
      v94[10] = 1;
      *&v92[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
      *&v92[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v95 = &v92[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
      *v95 = 0u;
      v95[1] = 0u;
      v92[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
      v96 = &v92[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
      *v96 = 0;
      *(v96 + 1) = 0;
      v96[16] = 1;
      swift_unknownObjectWeakAssign();
      v151.receiver = v92;
      v151.super_class = v91;
      v72 = objc_msgSendSuper2(&v151, "init");
      objc_setAssociatedObject(v29, key, v72, &dword_0 + 1);
LABEL_75:
      v97 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      sub_4DBE88(v97);

      v3 = v142;
    }

    else
    {
      v52 = swift_allocObject();
      *(v52 + 16) = sub_4DFD34;
      *(v52 + 24) = v147;
      swift_beginAccess();
      v53 = *(v26 + 24);
      v54 = v22;
      v55 = v3;
      v56 = v54;
      v57 = v55;

      v58 = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 24) = v53;
      if ((v58 & 1) == 0)
      {
        v53 = sub_6AA00(0, v53[2] + 1, 1, v53);
        *(v26 + 24) = v53;
      }

      v60 = v53[2];
      v59 = v53[3];
      if (v60 >= v59 >> 1)
      {
        v53 = sub_6AA00((v59 > 1), v60 + 1, 1, v53);
      }

      v53[2] = v60 + 1;
      v61 = &v53[2 * v60];
      v61[4] = sub_36C08;
      v61[5] = v52;
      *(v26 + 24) = v53;
      swift_endAccess();
    }

    if (*(v26 + 48) != 3)
    {
      v2 = swift_allocObject();
      *(v2 + 16) = sub_4DFD38;
      *(v2 + 24) = v149;
      swift_beginAccess();
      v99 = *(v26 + 40);

      v100 = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 40) = v99;
      if ((v100 & 1) == 0)
      {
        v99 = sub_6AA00(0, v99[2] + 1, 1, v99);
        *(v26 + 40) = v99;
      }

      v102 = v99[2];
      v101 = v99[3];
      if (v102 >= v101 >> 1)
      {
        v99 = sub_6AA00((v101 > 1), v102 + 1, 1, v99);
      }

      v99[2] = v102 + 1;
      v103 = &v99[2 * v102];
LABEL_96:
      v103[4] = sub_36C08;
      v103[5] = v2;
      *(v26 + 40) = v99;
      swift_endAccess();

      v16 = v144;
      v11 = v145;
      v14 = v146;
      goto LABEL_8;
    }

    v98 = [v22 view];
    v16 = v144;
    if (!v98)
    {
      goto LABEL_122;
    }

LABEL_89:
    v2 = v98;
    [v98 _setIgnoreBackdropViewsWhenHiding:1];

    [v22 didMoveToParentViewController:v3];

LABEL_90:

    v11 = v145;
    v14 = v146;
    goto LABEL_8;
  }

  v44 = v22;
  v45 = v3;
  v46 = v44;
  v47 = v45;
  [v47 addChildViewController:v46];
  if (qword_DE6D80 != -1)
  {
    swift_once();
  }

  v48 = qword_E0BF40;
  if (objc_getAssociatedObject(v46, qword_E0BF40))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v156 = 0u;
    v157 = 0u;
  }

  aBlock = v156;
  v159 = v157;
  if (*(&v157 + 1))
  {
    type metadata accessor for VerticalStackViewController.Item();
    if (swift_dynamicCast())
    {
      v74 = v154;
      goto LABEL_63;
    }
  }

  else
  {
    sub_9BC10(&aBlock);
  }

  v75 = type metadata accessor for VerticalStackViewController.Item();
  v76 = objc_allocWithZone(v75);
  v76[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
  v77 = &v76[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
  *v77 = UIEdgeInsetsZero.top;
  v77[1] = left;
  v77[2] = bottom;
  v77[3] = right;
  v76[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
  v78 = &v76[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  *v78 = 0;
  *(v78 + 4) = 0;
  v78[10] = 1;
  *&v76[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
  *&v76[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v79 = &v76[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
  *v79 = 0u;
  v79[1] = 0u;
  v76[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
  v80 = &v76[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
  *v80 = 0;
  *(v80 + 1) = 0;
  v80[16] = 1;
  swift_unknownObjectWeakAssign();
  v152.receiver = v76;
  v152.super_class = v75;
  v74 = objc_msgSendSuper2(&v152, "init");
  objc_setAssociatedObject(v46, v48, v74, &dword_0 + 1);
  v16 = v144;
  v3 = v142;
LABEL_63:
  v81 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_4DBE88(v81);

  v82 = [v46 view];
  if (v82)
  {
LABEL_72:
    v2 = v82;
    [v82 _setIgnoreBackdropViewsWhenHiding:1];

    [v46 didMoveToParentViewController:v47];
    goto LABEL_90;
  }

  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
}

void sub_4D55E0()
{
  v71 = sub_AB7C10();
  v2 = *(v71 - 8);
  __chkstk_darwin();
  v70 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_AB7C50();
  v4 = *(v69 - 8);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v68 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v0;
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) == 1)
  {
    v7 = v78;
    v78[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation] = 0;
    v8 = [v7 view];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = *&v78[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers];
    if (v18 >> 62)
    {
      v77 = sub_ABB060();
    }

    else
    {
      v77 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    }

    if (v77)
    {
      if (v77 >= 1)
      {
        v19 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsLayout;
        v76 = v18 & 0xC000000000000001;
        v20 = *&UIEdgeInsetsZero.top;
        v73 = *&UIEdgeInsetsZero.bottom;
        v72 = v20;
        v66 = &v81;
        v65 = (v2 + 8);
        v64 = (v4 + 8);

        v21 = 0;
        MaxY = 0.0;
        v23 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
        v67 = v19;
        while (1)
        {
          if (v76)
          {
            v27 = sub_35F8D4(v21, v18);
          }

          else
          {
            v27 = *(v18 + 8 * v21 + 32);
          }

          v28 = v27;
          if (qword_DE6D80 != -1)
          {
            swift_once();
          }

          v29 = qword_E0BF40;
          if (objc_getAssociatedObject(v28, qword_E0BF40))
          {
            sub_ABAB50();
            swift_unknownObjectRelease();
          }

          else
          {
            v85 = 0u;
            v86 = 0u;
          }

          v81 = v86;
          aBlock = v85;
          if (!*(&v86 + 1))
          {
            break;
          }

          type metadata accessor for VerticalStackViewController.Item();
          v30 = swift_dynamicCast();
          if ((v30 & 1) == 0)
          {
            v32 = v28;
            goto LABEL_22;
          }

          v31 = v79;
LABEL_23:
          v40 = sub_4DC0BC(v11, v13, v15, v17, v30, 0x10000);
          v42 = v41;
          *&aBlock = MaxY;
          v43 = &v31[v23[9].vtable];
          *&v85 = *(v43 + 1);
          if (sub_AB38D0() & 1) != 0 || (type metadata accessor for CGSize(0), *&aBlock = v40, *(&aBlock + 1) = v42, v85 = *(v43 + 1), (sub_AB38D0()))
          {
            if ((v78[v19] & 1) == 0)
            {
              v44 = v78;
              v78[v19] = 1;
              sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
              v75 = sub_ABA150();
              v45 = swift_allocObject();
              *(v45 + 16) = v44;
              v82 = sub_4DFD48;
              v83 = v45;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              *&v81 = sub_1B5EB4;
              *(&v81 + 1) = &block_descriptor_246_0;
              v46 = _Block_copy(&aBlock);
              v47 = v44;

              v48 = v68;
              sub_AB7C30();
              *&aBlock = _swiftEmptyArrayStorage;
              v74 = sub_8FFF0();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
              sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
              v49 = v70;
              v50 = v18;
              v51 = v71;
              sub_ABABB0();
              v52 = v75;
              sub_ABA160();
              v53 = v51;
              v18 = v50;
              v23 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
              (*v65)(v49, v53);
              v54 = v48;
              v19 = v67;
              (*v64)(v54, v69);
              _Block_release(v46);
            }
          }

          ++v21;
          *v43 = UIEdgeInsetsInsetRect(0.0, MaxY, v40, v42, *&v31[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets], *&v31[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets + 8]);
          *(v43 + 1) = v24;
          *(v43 + 2) = v25;
          *(v43 + 3) = v26;
          v87.origin.x = 0.0;
          v87.origin.y = MaxY;
          v87.size.width = v40;
          v87.size.height = v42;
          MaxY = CGRectGetMaxY(v87);

          if (v77 == v21)
          {

            goto LABEL_29;
          }
        }

        v32 = v28;
        sub_9BC10(&aBlock);
LABEL_22:
        v33 = type metadata accessor for VerticalStackViewController.Item();
        v34 = objc_allocWithZone(v33);
        v34[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
        v35 = &v34[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
        v36 = v73;
        *v35 = v72;
        v35[1] = v36;
        v34[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
        v37 = &v34[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
        *v37 = 0;
        *(v37 + 4) = 0;
        v37[10] = 1;
        *&v34[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
        *&v34[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakInit();
        v38 = &v34[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
        *v38 = 0u;
        v38[1] = 0u;
        v34[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
        v39 = &v34[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
        *v39 = 0;
        *(v39 + 1) = 0;
        v39[16] = 1;
        v28 = v32;
        swift_unknownObjectWeakAssign();
        v84.receiver = v34;
        v84.super_class = v33;
        v23 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
        v31 = objc_msgSendSuper2(&v84, "init");
        objc_setAssociatedObject(v32, v29, v31, &dword_0 + 1);
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_42;
    }

    MaxY = 0.0;
LABEL_29:
    v88.origin.x = v11;
    v88.origin.y = v13;
    v88.size.width = v15;
    v88.size.height = v17;
    Width = CGRectGetWidth(v88);
    v4 = *&v78[OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext];
    if (v4)
    {
      v56 = swift_allocObject();
      *(v56 + 2) = v78;
      v56[3] = Width;
      v56[4] = MaxY;
      if (*(v4 + 48) <= 1u)
      {
        v0 = swift_allocObject();
        v0[2] = sub_4DFA18;
        v0[3] = v56;
        swift_beginAccess();
        v1 = *(v4 + 32);
        v57 = v78;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 32) = v1;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_32:
          v60 = v1[2];
          v59 = v1[3];
          if (v60 >= v59 >> 1)
          {
            v1 = sub_6AA00((v59 > 1), v60 + 1, 1, v1);
          }

          v1[2] = v60 + 1;
          v61 = &v1[2 * v60];
          v61[4] = sub_36C08;
          v61[5] = v0;
          *(v4 + 32) = v1;
          swift_endAccess();

          goto LABEL_38;
        }

LABEL_42:
        v1 = sub_6AA00(0, v1[2] + 1, 1, v1);
        *(v4 + 32) = v1;
        goto LABEL_32;
      }

      v63 = v78;

      v62 = sub_4D3DD0();
      [v62 setContentSize:{Width, MaxY}];
    }

    else
    {
      v62 = sub_4D3DD0();
      [v62 setContentSize:{Width, MaxY}];
    }

LABEL_38:
    sub_4D62B0();
  }
}

void sub_4D5FE4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_AB7C10();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(sub_AB7C50() - 8);
  __chkstk_darwin();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v4[*a1] & 1) == 0)
  {
    v4[*a1] = 1;
    v21 = v13;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v20 = sub_ABA150();
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    aBlock[4] = a3;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = a4;
    v17 = _Block_copy(aBlock);
    v18 = v4;

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_8FFF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
    sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
    sub_ABABB0();
    v19 = v20;
    sub_ABA160();
    (*(v9 + 8))(v11, v8);
    (*(v12 + 8))(v15, v21);
    _Block_release(v17);
  }
}

void sub_4D62B0()
{
  if (*(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsLayout) != 1)
  {
    return;
  }

  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState);
  if (v2 >> 6 == 1 || v2 >> 6 == 2 && v2 == 128)
  {
    return;
  }

  *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsLayout) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = (v3 + 16);
  v5 = sub_4D3DD0();
  [v5 contentOffset];
  v7 = v6;
  v9 = v8;

  v10 = [v1 view];
  if (!v10)
  {
    goto LABEL_161;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;

  v16 = *(v1 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
  if (v16 >> 62)
  {
LABEL_152:
    v17 = sub_ABB060();
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_148:
    (*&stru_158.sectname[swift_isaMask & *v1])();

    return;
  }

  v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
  if (!v17)
  {
    goto LABEL_148;
  }

LABEL_8:
  v210 = v3;
  v205 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext;
  v207 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_visibleViewControllers;
  v208 = v16 & 0xC000000000000001;

  swift_beginAccess();
  v18 = 0;
  v198 = v16 & 0xFFFFFFFFFFFFFF8;
  v201 = *&UIEdgeInsetsZero.top;
  v202 = *&UIEdgeInsetsZero.bottom;
  v209 = v1;
  v203 = v4;
  v204 = v16;
  v206 = v17;
  while (1)
  {
    if (v208)
    {
      v23 = sub_35F8D4(v18, v16);
    }

    else
    {
      if (v18 >= *(v198 + 16))
      {
        goto LABEL_151;
      }

      v23 = *(v16 + 8 * v18 + 32);
    }

    v24 = v23;
    v3 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    if (qword_DE6D80 != -1)
    {
      swift_once();
    }

    v25 = qword_E0BF40;
    if (objc_getAssociatedObject(v24, qword_E0BF40))
    {
      sub_ABAB50();
      swift_unknownObjectRelease();
    }

    else
    {
      v214 = 0u;
      v215 = 0u;
    }

    v216[0] = v214;
    v216[1] = v215;
    v211 = v18 + 1;
    if (*(&v215 + 1))
    {
      type metadata accessor for VerticalStackViewController.Item();
      if (swift_dynamicCast())
      {
        v26 = v212;
        if (*v4)
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }
    }

    else
    {
      sub_9BC10(v216);
    }

    v28 = type metadata accessor for VerticalStackViewController.Item();
    v29 = objc_allocWithZone(v28);
    v29[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
    v30 = &v29[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
    *v30 = v201;
    v30[1] = v202;
    v29[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
    v31 = &v29[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
    *v31 = 0;
    *(v31 + 4) = 0;
    v31[10] = 1;
    *&v29[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
    *&v29[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    v32 = &v29[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
    *v32 = 0u;
    v32[1] = 0u;
    v29[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
    v33 = &v29[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
    *v33 = 0;
    *(v33 + 1) = 0;
    v33[16] = 1;
    swift_unknownObjectWeakAssign();
    v213.receiver = v29;
    v213.super_class = v28;
    v26 = objc_msgSendSuper2(&v213, "init");
    objc_setAssociatedObject(v24, v25, v26, &dword_0 + 1);
    if (*v4)
    {
LABEL_29:
      v27 = 1;
      goto LABEL_30;
    }

LABEL_26:
    v27 = v26[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] ^ 1;
LABEL_30:
    *v4 = v27 & 1;
    v34 = sub_4DC264(v7, v9, v13, v15);
    v3 = OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState;
    v35 = v26[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState];
    if (!(v35 >> 6) || v35 >> 6 != 1 && v35 != 128)
    {
      swift_beginAccess();
      v46 = v24;
      sub_1A338(&v214, v46);
      swift_endAccess();

      if (v34)
      {
        v47 = swift_allocObject();
        v47[2] = v46;
        v47[3] = v1;
        v47[4] = v26;
        v47[5] = v210;
        v48 = swift_allocObject();
        *(v48 + 2) = v26;
        v48[3] = v7;
        v48[4] = v9;
        v48[5] = v13;
        v48[6] = v15;
        v3 = v1;
        v49 = *(v1 + v205);
        if (v49)
        {
          if (*(v49 + 48))
          {
            v3 = v210;
            swift_retain_n();
            v50 = v26;
            v51 = v46;
            v52 = v50;
            v53 = v209;

            sub_4D91B4(v51, v53, v52, v210);
          }

          else
          {
            v112 = swift_allocObject();
            *(v112 + 16) = sub_4DF8CC;
            *(v112 + 24) = v47;
            swift_beginAccess();
            v113 = *(v49 + 24);
            swift_retain_n();
            v114 = v26;
            v115 = v46;
            v116 = v114;
            v117 = v209;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v49 + 24) = v113;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v113 = sub_6AA00(0, v113[2] + 1, 1, v113);
              *(v49 + 24) = v113;
            }

            v3 = v113[2];
            v119 = v113[3];
            if (v3 >= v119 >> 1)
            {
              v113 = sub_6AA00((v119 > 1), v3 + 1, 1, v113);
            }

            v113[2] = v3 + 1;
            v120 = &v113[2 * v3];
            v120[4] = sub_36C08;
            v120[5] = v112;
            *(v49 + 24) = v113;
            swift_endAccess();
          }

          if (*(v49 + 48) > 1u)
          {
            sub_4DC608(v7, v9, v13, v15);
          }

          else
          {
            v121 = swift_allocObject();
            *(v121 + 16) = sub_4DF910;
            *(v121 + 24) = v48;
            swift_beginAccess();
            v122 = *(v49 + 32);

            v123 = swift_isUniquelyReferenced_nonNull_native();
            *(v49 + 32) = v122;
            if ((v123 & 1) == 0)
            {
              v122 = sub_6AA00(0, v122[2] + 1, 1, v122);
              *(v49 + 32) = v122;
            }

            v3 = v122[2];
            v124 = v122[3];
            if (v3 >= v124 >> 1)
            {
              v122 = sub_6AA00((v124 > 1), v3 + 1, 1, v122);
            }

            v122[2] = v3 + 1;
            v125 = &v122[2 * v3];
            v125[4] = sub_36C08;
            v125[5] = v121;
            *(v49 + 32) = v122;
            swift_endAccess();
          }

          v22 = v206;

          v1 = v209;
          v4 = v203;
          v16 = v204;
          goto LABEL_12;
        }

        swift_retain_n();
        v19 = v26;
        v20 = v46;
        v21 = v19;
        sub_4D91B4(v20, v3, v21, v210);
        sub_4DC608(v7, v9, v13, v15);

        v1 = v3;
LABEL_10:
        v4 = v203;
        v16 = v204;
LABEL_11:
        v22 = v206;
        goto LABEL_12;
      }

      v56 = swift_allocObject();
      v56[2] = v26;
      v56[3] = v1;
      v56[4] = v46;
      v57 = swift_allocObject();
      *(v57 + 16) = v46;
      v58 = swift_allocObject();
      *(v58 + 16) = v26;
      *(v58 + 24) = v46;
      v200 = v58;
      v59 = *(v1 + v205);
      if (v59)
      {
        if (*(v59 + 48))
        {
          v60 = v26[v3];
          v26[v3] = 65;
          v61 = v60 >> 6;
          if (v60 >> 6 == 1 && (v60 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
          {
            v84 = v46;
            v85 = v26;
            v86 = v84;
            v87 = v85;
            v1 = v209;
            v88 = v209;
          }

          else
          {
            v63 = Strong;
            if (v61)
            {
              if (v61 == 1)
              {
                v64 = v46;
                v65 = v57;
                v66 = v26;
                v67 = v64;
                v68 = v66;
                v57 = v65;
                v1 = v209;
                v69 = v209;
              }

              else
              {
                v171 = v57;
                v172 = v46;
                v173 = v26;
                v174 = v172;
                v175 = v173;
                v176 = v209;

                if (v60 != 128)
                {
                  [v63 beginAppearanceTransition:0 animated:1];
                }

                v1 = v209;
                v57 = v171;
              }
            }

            else
            {
              v165 = v46;
              v166 = v57;
              v167 = v26;
              v168 = v165;
              v169 = v167;
              v57 = v166;
              v1 = v209;
              v170 = v209;

              [v63 endAppearanceTransition];
              [v63 beginAppearanceTransition:0 animated:1];
            }
          }

          [v46 setEditing:0 animated:*(v1 + v205) != 0];
        }

        else
        {
          v197 = v57;
          v126 = swift_allocObject();
          *(v126 + 16) = sub_4DF858;
          *(v126 + 24) = v56;
          swift_beginAccess();
          v127 = *(v59 + 24);
          v128 = v46;
          v129 = v26;
          v130 = v128;
          v131 = v129;
          v132 = v209;

          v133 = swift_isUniquelyReferenced_nonNull_native();
          *(v59 + 24) = v127;
          if ((v133 & 1) == 0)
          {
            v127 = sub_6AA00(0, v127[2] + 1, 1, v127);
            *(v59 + 24) = v127;
          }

          v135 = v127[2];
          v134 = v127[3];
          if (v135 >= v134 >> 1)
          {
            v127 = sub_6AA00((v134 > 1), v135 + 1, 1, v127);
          }

          v127[2] = v135 + 1;
          v136 = &v127[2 * v135];
          v136[4] = sub_36C08;
          v136[5] = v126;
          *(v59 + 24) = v127;
          swift_endAccess();
          v1 = v209;
          v57 = v197;
        }

        if (*(v59 + 48) > 1u)
        {
          v143 = [v46 view];
          if (!v143)
          {
            goto LABEL_159;
          }

          v144 = v143;
          [v143 setAlpha:0.0];
        }

        else
        {
          v137 = swift_allocObject();
          *(v137 + 16) = sub_4DF864;
          *(v137 + 24) = v57;
          swift_beginAccess();
          v138 = *(v59 + 32);

          v139 = swift_isUniquelyReferenced_nonNull_native();
          *(v59 + 32) = v138;
          if ((v139 & 1) == 0)
          {
            v138 = sub_6AA00(0, v138[2] + 1, 1, v138);
            *(v59 + 32) = v138;
          }

          v141 = v138[2];
          v140 = v138[3];
          if (v141 >= v140 >> 1)
          {
            v138 = sub_6AA00((v140 > 1), v141 + 1, 1, v138);
          }

          v138[2] = v141 + 1;
          v142 = &v138[2 * v141];
          v142[4] = sub_36C08;
          v142[5] = v137;
          *(v59 + 32) = v138;
          swift_endAccess();
          v1 = v209;
        }

        if (*(v59 + 48) != 3)
        {
          v148 = swift_allocObject();
          *(v148 + 16) = sub_4DF884;
          *(v148 + 24) = v200;
          swift_beginAccess();
          v149 = *(v59 + 40);

          v150 = swift_isUniquelyReferenced_nonNull_native();
          *(v59 + 40) = v149;
          if ((v150 & 1) == 0)
          {
            v149 = sub_6AA00(0, v149[2] + 1, 1, v149);
            *(v59 + 40) = v149;
          }

          v3 = v149[2];
          v151 = v149[3];
          if (v3 >= v151 >> 1)
          {
            v149 = sub_6AA00((v151 > 1), v3 + 1, 1, v149);
          }

          v149[2] = v3 + 1;
          v152 = &v149[2 * v3];
          v152[4] = sub_2D4D0;
          v152[5] = v148;
          *(v59 + 40) = v149;
          swift_endAccess();

          v1 = v209;
          goto LABEL_10;
        }

        v145 = v26[v3];
        v26[v3] = 0x80;
        if (v145 != 128)
        {
          v146 = swift_unknownObjectWeakLoadStrong();
          if (v146)
          {
            v147 = v146;
            if (!(v145 >> 6))
            {
              [v146 endAppearanceTransition];
              goto LABEL_143;
            }

            if (v145 >> 6 != 1)
            {
LABEL_143:
              [v147 beginAppearanceTransition:0 animated:0];
            }

            [v147 endAppearanceTransition];
          }
        }

        v194 = [v46 view];
        if (!v194)
        {
          goto LABEL_160;
        }

        v195 = v194;
        [v194 setHidden:1];

        goto LABEL_10;
      }

      v77 = v26[v3];
      v26[v3] = 64;
      v78 = v77 >> 6;
      if (v77 >> 6 == 1 && (v77 & 1) == 0)
      {
        v79 = v46;
        v80 = v26;
        v81 = v79;
        v82 = v80;
        v83 = v1;
        goto LABEL_56;
      }

      v153 = swift_unknownObjectWeakLoadStrong();
      v4 = v203;
      if (v153)
      {
        v154 = v153;
        if (v78)
        {
          if (v78 == 1)
          {
            v155 = v46;
            v156 = v26;
            v157 = v155;
            v158 = v156;
            v4 = v203;
            v159 = v1;
            goto LABEL_127;
          }

          v187 = v46;
          v188 = v26;
          v189 = v187;
          v190 = v188;
          v191 = v1;
          if (v77 != 128)
          {
            [v154 beginAppearanceTransition:0 animated:0];
          }

LABEL_56:
          v4 = v203;
        }

        else
        {
          v177 = v46;
          v178 = v26;
          v179 = v177;
          v180 = v178;
          v4 = v203;
          v181 = v1;
          [v154 endAppearanceTransition];
          [v154 beginAppearanceTransition:0 animated:0];
LABEL_127:
        }
      }

      else
      {
        v160 = v46;
        v161 = v26;
        v162 = v160;
        v163 = v161;
        v164 = v1;
      }

      [v46 setEditing:0 animated:*(v1 + v205) != 0];
      v182 = [v46 view];
      if (!v182)
      {
        goto LABEL_157;
      }

      v183 = v182;
      [v182 setAlpha:0.0];

      v184 = v26[v3];
      v26[v3] = 0x80;
      if (v184 != 128)
      {
        v185 = swift_unknownObjectWeakLoadStrong();
        if (v185)
        {
          v186 = v185;
          if (!(v184 >> 6))
          {
            [v185 endAppearanceTransition];
            goto LABEL_138;
          }

          if (v184 >> 6 != 1)
          {
LABEL_138:
            [v186 beginAppearanceTransition:0 animated:0];
          }

          [v186 endAppearanceTransition];
        }
      }

      v192 = [v46 view];
      if (!v192)
      {
        goto LABEL_156;
      }

      v193 = v192;
      [v192 setHidden:1];

      v16 = v204;
      goto LABEL_11;
    }

    v3 = v207;
    swift_beginAccess();
    v36 = sub_2EEFAC(v24);
    swift_endAccess();

    if ((v34 & 1) == 0)
    {
      break;
    }

    v37 = swift_allocObject();
    *(v37 + 2) = v26;
    *(v37 + 3) = v1;
    *(v37 + 4) = v24;
    *(v37 + 5) = v210;
    v37[6] = v7;
    v37[7] = v9;
    v37[8] = v13;
    v37[9] = v15;
    v199 = swift_allocObject();
    *(v199 + 16) = v24;
    v38 = swift_allocObject();
    *(v38 + 16) = v26;
    *(v38 + 24) = v24;
    v3 = v1;
    v39 = *(v1 + v205);
    if (!v39)
    {
      v70 = v24;
      swift_retain_n();
      v71 = v70;
      v72 = v26;
      v73 = v71;
      v74 = v72;
      sub_4D8E0C(v74, v3, v73, v210, v7, v9, v13, v15);
      v75 = [v73 view];
      if (!v75)
      {
        goto LABEL_155;
      }

      v76 = v75;
      v1 = v3;
      [v75 setAlpha:1.0];

      sub_4D90A8(v74, v73);

      goto LABEL_10;
    }

    if (*(v39 + 48))
    {
      v40 = v24;
      v3 = v210;
      swift_retain_n();
      v41 = v40;
      v42 = v26;
      v43 = v41;
      v44 = v42;
      v45 = v209;

      sub_4D8E0C(v44, v45, v43, v210, v7, v9, v13, v15);
    }

    else
    {
      v89 = swift_allocObject();
      *(v89 + 16) = sub_4DF9A4;
      *(v89 + 24) = v37;
      v196 = v89;
      swift_beginAccess();
      v90 = *(v39 + 24);
      v91 = v24;
      swift_retain_n();
      v92 = v91;
      v93 = v26;
      v94 = v92;
      v95 = v93;
      v96 = v209;

      v97 = swift_isUniquelyReferenced_nonNull_native();
      *(v39 + 24) = v90;
      if ((v97 & 1) == 0)
      {
        v90 = sub_6AA00(0, v90[2] + 1, 1, v90);
        *(v39 + 24) = v90;
      }

      v3 = v90[2];
      v98 = v90[3];
      if (v3 >= v98 >> 1)
      {
        v90 = sub_6AA00((v98 > 1), v3 + 1, 1, v90);
      }

      v90[2] = v3 + 1;
      v99 = &v90[2 * v3];
      v99[4] = sub_36C08;
      v99[5] = v196;
      *(v39 + 24) = v90;
      swift_endAccess();
    }

    v16 = v204;
    if (*(v39 + 48) > 1u)
    {
      v105 = [v24 view];
      if (!v105)
      {
        goto LABEL_158;
      }

      v106 = v105;
      [v105 setAlpha:1.0];
    }

    else
    {
      v100 = swift_allocObject();
      *(v100 + 16) = sub_4DF9B8;
      *(v100 + 24) = v199;
      swift_beginAccess();
      v101 = *(v39 + 32);

      v102 = swift_isUniquelyReferenced_nonNull_native();
      *(v39 + 32) = v101;
      if ((v102 & 1) == 0)
      {
        v101 = sub_6AA00(0, v101[2] + 1, 1, v101);
        *(v39 + 32) = v101;
      }

      v3 = v101[2];
      v103 = v101[3];
      if (v3 >= v103 >> 1)
      {
        v101 = sub_6AA00((v103 > 1), v3 + 1, 1, v101);
      }

      v101[2] = v3 + 1;
      v104 = &v101[2 * v3];
      v104[4] = sub_36C08;
      v104[5] = v100;
      *(v39 + 32) = v101;
      swift_endAccess();
      v16 = v204;
    }

    if (*(v39 + 48) == 3)
    {
      sub_4D90A8(v26, v24);
    }

    else
    {
      v107 = swift_allocObject();
      *(v107 + 16) = sub_4DF9D8;
      *(v107 + 24) = v38;
      swift_beginAccess();
      v108 = *(v39 + 40);

      v109 = swift_isUniquelyReferenced_nonNull_native();
      *(v39 + 40) = v108;
      if ((v109 & 1) == 0)
      {
        v108 = sub_6AA00(0, v108[2] + 1, 1, v108);
        *(v39 + 40) = v108;
      }

      v3 = v108[2];
      v110 = v108[3];
      if (v3 >= v110 >> 1)
      {
        v108 = sub_6AA00((v110 > 1), v3 + 1, 1, v108);
      }

      v108[2] = v3 + 1;
      v111 = &v108[2 * v3];
      v111[4] = sub_36C08;
      v111[5] = v107;
      *(v39 + 40) = v108;
      swift_endAccess();
      v16 = v204;
    }

    v22 = v206;

    v1 = v209;
    v4 = v203;
LABEL_12:
    ++v18;
    if (v211 == v22)
    {

      goto LABEL_148;
    }
  }

  v54 = [v24 view];
  if (v54)
  {
    v55 = v54;
    [v54 setHidden:1];

    goto LABEL_11;
  }

  __break(1u);
LABEL_155:

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
}

void sub_4D79A8(uint64_t a1)
{
  sub_4D7AA8();
  v2 = [objc_opt_self() sharedApplication];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v6[4] = sub_368B38;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1B5EB4;
  v6[3] = &block_descriptor_167_1;
  v4 = _Block_copy(v6);
  v5 = v1;

  [v2 _performBlockAfterCATransactionCommits:v4];
  _Block_release(v4);
}

void sub_4D7AA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
  if (v1 >> 62)
  {
    goto LABEL_33;
  }

  v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  if (v2)
  {
    v3 = 0;
    v22 = *&UIEdgeInsetsZero.top;
    v23 = *&UIEdgeInsetsZero.bottom;
    v4 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_35F8D4(v3, v1);
      }

      else
      {
        if (v3 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_32;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v2 = sub_ABB060();
        goto LABEL_3;
      }

      type metadata accessor for PageHeaderContentViewController();
      if (swift_dynamicCastClass() || (_s14ViewControllerCMa(), swift_dynamicCastClass()))
      {

        goto LABEL_6;
      }

      if (qword_DE6D80 != -1)
      {
        swift_once();
      }

      v8 = qword_E0BF40;
      if (objc_getAssociatedObject(v6, qword_E0BF40))
      {
        sub_ABAB50();
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      aBlock = v31;
      v26 = v32;
      if (*(&v32 + 1))
      {
        type metadata accessor for VerticalStackViewController.Item();
        if (swift_dynamicCast())
        {
          v9 = v29;
          goto LABEL_24;
        }

        key = v8;
      }

      else
      {
        key = v8;
        sub_9BC10(&aBlock);
      }

      v10 = type metadata accessor for VerticalStackViewController.Item();
      v11 = objc_allocWithZone(v10);
      v11[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
      v12 = &v11[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
      *v12 = v22;
      v12[1] = v23;
      v11[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
      v13 = &v11[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
      *v13 = 0;
      *(v13 + 4) = 0;
      v13[10] = 1;
      *&v11[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
      *&v11[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v14 = &v11[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
      *v14 = 0u;
      v14[1] = 0u;
      v11[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
      v15 = &v11[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
      *v15 = 0;
      *(v15 + 1) = 0;
      v15[16] = 1;
      v4 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
      swift_unknownObjectWeakAssign();
      v30.receiver = v11;
      v30.super_class = v10;
      v9 = objc_msgSendSuper2(&v30, "init");
      objc_setAssociatedObject(v6, key, v9, &dword_0 + 1);
LABEL_24:
      v16 = *&v9[v4[9].vtable + 24];

      if (v16 <= 0.0)
      {

        return;
      }

LABEL_6:
      ++v3;
    }

    while (v7 != v2);
  }

  if (*(v21 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_appearanceState) >= 0x81u)
  {
    v17 = *(v21 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_artworkVideoPlaybackCoordinator);
    if (v17)
    {
      v18 = objc_opt_self();

      v19 = [v18 sharedApplication];
      v27 = sub_4DF83C;
      v28 = v17;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v26 = sub_1B5EB4;
      *(&v26 + 1) = &block_descriptor_161_2;
      v20 = _Block_copy(&aBlock);

      [v19 _performBlockAfterCATransactionCommits:v20];
      _Block_release(v20);
    }
  }
}

id sub_4D7EE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

void *sub_4D7F28()
{
  v1 = [v0 parentViewController];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for JSDrivenViewController(0);
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

    return 0;
  }

  v4 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_componentController;
  v5 = v3;
  swift_beginAccess();
  v6 = *(v5 + v4);
  v7 = v6;

  return v6;
}

void sub_4D8000(void *a1, uint64_t a2)
{
  [a1 addChildViewController:a2];
  v2 = sub_4D3C64();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_4DBE88(Strong);
}

id sub_4D808C(void *a1, uint64_t a2)
{
  result = [a1 view];
  if (result)
  {
    v5 = result;
    [result _setIgnoreBackdropViewsWhenHiding:1];

    return [a1 didMoveToParentViewController:a2];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_4D810C(void *a1, void *a2)
{
  v4 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers;
  v5 = *(a2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController__viewControllers);
  v79[0] = a1;
  v78 = v79;

  v6 = sub_1B3840(sub_4DFD8C, v77, v5);

  if (v6)
  {
    v7 = sub_4D3C64();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    sub_4DBE88(Strong);

    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = v7;
    v76 = v9;
    v9[4] = a2;
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = a1;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v7;
    v12 = *(a2 + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_animationContext);
    v13 = v7;
    v14 = a1;
    if (v12)
    {
      v72 = v4;
      v15 = *(v12 + 48);
      v74 = v13;
      v75 = v11;
      if (v15)
      {
        v16 = v13;
        v17 = v14;
        v18 = v16;
        v19 = v17;
        v20 = a2;
        v21 = v18;
        v22 = v19;
        v23 = v20;

        sub_4D8834(v22, v21, v23);
      }

      else
      {
        v73 = v10;
        v34 = swift_allocObject();
        v35 = v76;
        v71 = v34;
        *(v34 + 16) = sub_4DFC28;
        *(v34 + 24) = v35;
        swift_beginAccess();
        v36 = *(v12 + 24);
        v37 = v13;
        v38 = v14;
        v39 = v37;
        v40 = v38;
        v41 = a2;
        v42 = v39;
        v43 = v40;
        v44 = v41;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v12 + 24) = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = sub_6AA00(0, v36[2] + 1, 1, v36);
          *(v12 + 24) = v36;
        }

        v47 = v36[2];
        v46 = v36[3];
        v10 = v73;
        v13 = v74;
        if (v47 >= v46 >> 1)
        {
          v36 = sub_6AA00((v46 > 1), v47 + 1, 1, v36);
        }

        v36[2] = v47 + 1;
        v48 = &v36[2 * v47];
        v49 = v71;
        v48[4] = sub_36C08;
        v48[5] = v49;
        *(v12 + 24) = v36;
        swift_endAccess();
        v11 = v75;
      }

      if (*(v12 + 48) <= 1u)
      {
        v50 = swift_allocObject();
        *(v50 + 16) = sub_4DFC34;
        *(v50 + 24) = v10;
        swift_beginAccess();
        v51 = *(v12 + 32);

        v52 = swift_isUniquelyReferenced_nonNull_native();
        *(v12 + 32) = v51;
        if ((v52 & 1) == 0)
        {
          v51 = sub_6AA00(0, v51[2] + 1, 1, v51);
          *(v12 + 32) = v51;
        }

        v54 = v51[2];
        v53 = v51[3];
        if (v54 >= v53 >> 1)
        {
          v51 = sub_6AA00((v53 > 1), v54 + 1, 1, v51);
        }

        v51[2] = v54 + 1;
        v55 = &v51[2 * v54];
        v55[4] = sub_36C08;
        v55[5] = v50;
        *(v12 + 32) = v51;
        swift_endAccess();
        v11 = v75;
        goto LABEL_23;
      }

      if ((*(v13 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState) & 0xC0) != 0x40)
      {
LABEL_23:
        v58 = swift_allocObject();
        v58[2] = a2;
        v58[3] = v14;
        v58[4] = sub_4DFC3C;
        v58[5] = v11;
        if (*(v12 + 48) == 3)
        {
          v73 = v10;
          v59 = *&v72[a2];
          v79[0] = v14;
          __chkstk_darwin();
          v70[2] = v79;
          v72 = v14;
          v60 = a2;

          v61 = sub_1B3840(sub_4DFD8C, v70, v59);

          v13 = v74;
          if ((v61 & 1) == 0)
          {
            sub_4D89F4(v72, v74);
          }
        }

        else
        {
          v62 = swift_allocObject();
          *(v62 + 16) = sub_4DFC8C;
          *(v62 + 24) = v58;
          swift_beginAccess();
          v63 = *(v12 + 40);
          v64 = v14;
          v65 = a2;

          v66 = swift_isUniquelyReferenced_nonNull_native();
          *(v12 + 40) = v63;
          if ((v66 & 1) == 0)
          {
            v63 = sub_6AA00(0, v63[2] + 1, 1, v63);
            *(v12 + 40) = v63;
          }

          v68 = v63[2];
          v67 = v63[3];
          if (v68 >= v67 >> 1)
          {
            v63 = sub_6AA00((v67 > 1), v68 + 1, 1, v63);
          }

          v63[2] = v68 + 1;
          v69 = &v63[2 * v68];
          v69[4] = sub_36C08;
          v69[5] = v62;
          *(v12 + 40) = v63;
          swift_endAccess();
          v13 = v74;
        }

        goto LABEL_32;
      }

      v56 = [v14 view];
      if (v56)
      {
        v57 = v56;
        [v56 setAlpha:0.0];

        goto LABEL_23;
      }

LABEL_35:
      __break(1u);
      return;
    }

    v24 = v13;
    v25 = v14;
    v26 = v24;
    v27 = v25;
    v28 = a2;
    v29 = v26;
    v30 = v27;
    v31 = v28;
    sub_4D8834(v30, v29, v31);
    if ((*(v29 + OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState) & 0xC0) == 0x40)
    {
      v32 = [v30 view];
      if (!v32)
      {

        __break(1u);
        goto LABEL_35;
      }

      v33 = v32;
      [v32 setAlpha:0.0];
    }

    sub_4D89F4(v30, v29);

LABEL_32:
  }
}