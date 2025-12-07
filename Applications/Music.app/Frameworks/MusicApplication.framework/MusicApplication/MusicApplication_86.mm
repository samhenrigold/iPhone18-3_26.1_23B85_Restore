uint64_t sub_7B3050(uint64_t *a1, uint64_t *a2)
{
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (a2[1])
  {
    return 0;
  }

  sub_13C80(0, &unk_E1E040, NSObject_ptr);
  return sub_ABA790() & 1;
}

Class UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a5;
  if (a6)
  {
    v50 = a3;
    v13 = v10;

    v48 = a1;
    v14 = sub_AB9FB0();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_AF82B0;
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_7B7A9C;
    *(v18 + 24) = v15;
    aBlock[4] = sub_7B7AB8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_7B191C;
    aBlock[3] = &block_descriptor_28;
    v19 = v10;
    v20 = _Block_copy(aBlock);
    v46 = v13;
    v21 = v14;

    v22 = [v17 elementWithUncachedProvider:v20];
    _Block_release(v20);
    *(v16 + 32) = v22;
    if (a2)
    {
      v23 = v48;
    }

    else
    {
      v23 = 0;
    }

    if (a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    sub_13C80(0, &qword_E179E8, UIMenu_ptr);
    v25 = v50;
    v59._countAndFlagsBits = v23;
    v59._object = v24;
    v61.value._countAndFlagsBits = 0;
    v61.value._object = 0;
    v56.value.super.isa = a3;
    v56.is_nil = 0;
    v26.value = 0;
    isa = sub_ABA5B0(v59, v61, v56, v26, 0xFFFFFFFFFFFFFFFFLL, v16, v46).super.super.isa;

    [(objc_class *)v21 setMenuRepresentation:isa];
  }

  else
  {
    v29 = a5;
    v30 = [v29 title];
    v31 = sub_AB92A0();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v34)
    {
      v35 = v10;

      v36 = sub_AB9260();

      [v29 setTitle:v36];

      v10 = v35;
    }

    v37 = [v29 image];
    if (v37)
    {
    }

    else
    {
      [v29 setImage:a3];
    }

    v38 = v29;
    v60.value._countAndFlagsBits = 0;
    v60.value._object = 0;
    v55.value.super.isa = 0;
    v39 = v10;
    v55.is_nil = v10;
    v57.value.super.super.isa = 0;
    v21 = sub_AB9FA0(v60, v55, v57, v58).super.super.isa;
    v40 = v21;
    if (!a2)
    {
      v41 = [v38 title];
      sub_AB92A0();
    }

    v42 = sub_AB9260();

    [(objc_class *)v21 setTitle:v42];

    v43 = a3;
    if (!a3)
    {
      v43 = [v38 image];
    }

    v25 = a3;
    [(objc_class *)v21 setImage:v43];

    [(objc_class *)v21 setMenuRepresentation:v38];
    v19 = v39;
  }

  [(objc_class *)v21 setStyle:a4];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(a7, a8, v44, a9, a10);

  return v21;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:title:image:style:menuTitle:accessibilityIdentifier:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIBarButtonItemStyle style, Swift::String_optional menuTitle, MusicCore::AccessibilityIdentifier_optional *accessibilityIdentifier)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v42 = *&image.is_nil;
  isa = image.value.super.isa;
  v40 = title.value._countAndFlagsBits;
  if (menuTitle.value._countAndFlagsBits)
  {
    goto LABEL_4;
  }

  if (title.value._object)
  {
    v9 = title.value._countAndFlagsBits;
    v10 = title.value._object;

    title.value._object = v10;
    style = v9;
    countAndFlagsBits = v10;
LABEL_4:
    v11 = title.value._object;
    goto LABEL_5;
  }

  v11 = 0;
  style = UIBarButtonItemStylePlain;
  countAndFlagsBits = 0xE000000000000000;
LABEL_5:
  sub_13C80(0, &qword_E179E8, UIMenu_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_AF82B0;
  v39 = objc_opt_self();
  v13 = swift_allocObject();
  v13[2]._rawValue = representativeOf._rawValue;
  v13[3]._rawValue = &dword_0 + 1;
  v48 = sub_7B7A24;
  v49 = v13;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_7B191C;
  v47 = &block_descriptor_35_4;
  v14 = _Block_copy(&aBlock);

  v15 = [v39 elementWithUncachedProvider:v14];
  _Block_release(v14);
  *(v12 + 32) = v15;
  v54._countAndFlagsBits = style;
  v54._object = countAndFlagsBits;
  v56.value._countAndFlagsBits = 0;
  v56.value._object = 0;
  v52.value.super.isa = 0;
  v52.is_nil = 0;
  v16.value = (&dword_0 + 1);
  v17 = sub_ABA5B0(v54, v56, v52, v16, 0xFFFFFFFFFFFFFFFFLL, v12, v36).super.super.isa;
  v38 = isa;
  v18 = v17;
  v19 = v11;

  v20 = v18;
  v21 = sub_AB9FB0();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_AF82B0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_7B7A9C;
  *(v24 + 24) = v22;
  v48 = sub_7B7AB8;
  v49 = v24;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_7B191C;
  v47 = &block_descriptor_46_2;
  v25 = _Block_copy(&aBlock);
  v26 = v20;
  v27 = v21;

  v28 = [v39 elementWithUncachedProvider:v25];
  _Block_release(v25);
  *(v23 + 32) = v28;
  if (v19)
  {
    v29 = v40;
  }

  else
  {
    v29 = 0;
  }

  if (v19)
  {
    v30 = v19;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = v38;
  v55._countAndFlagsBits = v29;
  v55._object = v30;
  v57.value._countAndFlagsBits = 0;
  v57.value._object = 0;
  v53.value.super.isa = isa;
  v53.is_nil = 0;
  v32.value = 0;
  v33 = sub_ABA5B0(v55, v57, v53, v32, 0xFFFFFFFFFFFFFFFFLL, v23, v37.super.super.isa).super.super.isa;

  [v27 setMenuRepresentation:v33];

  [v27 setStyle:v42];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(object, accessibilityIdentifier, v34, v50, v51);

  return v27;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:configuredAfter:menuTitle:)(Swift::OpaquePointer representativeOf, UIBarButtonItem configuredAfter, Swift::String_optional menuTitle)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v6 = configuredAfter.super.super.isa;
  v7 = [(objc_class *)v6 title];
  if (v7)
  {
    v8 = v7;
    v40 = sub_AB92A0();
    v10 = v9;
  }

  else
  {
    v40 = 0;
    v10 = 0;
  }

  v37 = [(objc_class *)v6 image];

  v38 = [(objc_class *)v6 style];
  v39 = v6;
  if (!object)
  {
    if (v10)
    {

      countAndFlagsBits = v40;
      object = v10;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }
  }

  sub_13C80(0, &qword_E179E8, UIMenu_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF82B0;
  v36 = objc_opt_self();
  v12 = swift_allocObject();
  v12[2]._rawValue = representativeOf._rawValue;
  v12[3]._rawValue = &dword_0 + 1;
  v45 = sub_7B7A24;
  v46 = v12;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_7B191C;
  v44 = &block_descriptor_53_3;
  v13 = _Block_copy(&aBlock);

  v14 = [v36 elementWithUncachedProvider:v13];
  _Block_release(v13);
  *(v11 + 32) = v14;
  v49._countAndFlagsBits = countAndFlagsBits;
  v49._object = object;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v47.value.super.isa = 0;
  v47.is_nil = 0;
  v15.value = (&dword_0 + 1);
  isa = sub_ABA5B0(v49, v51, v47, v15, 0xFFFFFFFFFFFFFFFFLL, v11, v33).super.super.isa;

  v17 = isa;
  v35 = v37;
  v18 = v17;
  v19 = sub_AB9FB0();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_AF82B0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_7B7A9C;
  *(v22 + 24) = v20;
  v45 = sub_7B7AB8;
  v46 = v22;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_7B191C;
  v44 = &block_descriptor_64_2;
  v23 = _Block_copy(&aBlock);
  v24 = v18;
  v25 = v19;

  v26 = [v36 elementWithUncachedProvider:v23];
  _Block_release(v23);
  *(v21 + 32) = v26;
  if (v10)
  {
    v27 = v40;
  }

  else
  {
    v27 = 0;
  }

  if (!v10)
  {
    v10 = 0xE000000000000000;
  }

  v28 = v35;
  v50._countAndFlagsBits = v27;
  v50._object = v10;
  v52.value._countAndFlagsBits = 0;
  v52.value._object = 0;
  v48.value.super.isa = v37;
  v48.is_nil = 0;
  v29.value = 0;
  v30 = sub_ABA5B0(v50, v52, v48, v29, 0xFFFFFFFFFFFFFFFFLL, v21, v34.super.super.isa).super.super.isa;

  [v25 setMenuRepresentation:v30];

  [v25 setStyle:v38];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(0, 0, v31, 0, 0);

  return v25;
}

id UIBarButtonItem.primaryActionKind.getter()
{
  result = [v0 primaryAction];
  if (!result)
  {
    return [v0 menu];
  }

  return result;
}

void UIBarButtonItem.primaryActionKind.setter(void *a1, char a2)
{
  v3 = v2;
  v6 = [v2 primaryAction];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v6 = [v2 menu];
    v9 = v6 == 0;
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  if (a2 != -1)
  {
    v73 = v8;
    v72 = v6;
    if (a2)
    {
      v10 = a1;
      [v3 setMenu:v10];
      v11 = [v3 customView];
      if (v11)
      {
        v12 = v11;
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          [v13 setMenu:v10];
          sub_3EB30(a1, a2);

LABEL_42:
          [v3 setPrimaryAction:0];
          v42 = [v3 title];
          if (v42)
          {
            v43 = v42;
            v71 = sub_AB92A0();
            v45 = v44;
          }

          else
          {
            v71 = 0;
            v45 = 0;
          }

          v46 = [v3 image];
          v47 = swift_allocObject();
          *(v47 + 16) = v10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_AF82B0;
          v49 = objc_opt_self();
          v50 = swift_allocObject();
          *(v50 + 16) = sub_7B6A28;
          *(v50 + 24) = v47;
          aBlock[4] = sub_7B7AB8;
          aBlock[5] = v50;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_7B191C;
          aBlock[3] = &block_descriptor_74_1;
          v51 = _Block_copy(aBlock);
          sub_37C074(a1, a2);

          v52 = [v49 elementWithUncachedProvider:v51];
          _Block_release(v51);
          *(v48 + 32) = v52;
          if (v45)
          {
            v53 = v71;
          }

          else
          {
            v53 = 0;
          }

          if (v45)
          {
            v54 = v45;
          }

          else
          {
            v54 = 0xE000000000000000;
          }

          sub_13C80(0, &qword_E179E8, UIMenu_ptr);
          v78._countAndFlagsBits = v53;
          v78._object = v54;
          v79.value._countAndFlagsBits = 0;
          v79.value._object = 0;
          v77.value.super.isa = v46;
          v77.is_nil = 0;
          v55.value = 0;
          isa = sub_ABA5B0(v78, v79, v77, v55, 0xFFFFFFFFFFFFFFFFLL, v48, v69).super.super.isa;

          [v3 setMenuRepresentation:isa];
          sub_3EB30(v72, v73);
          sub_3EB30(a1, a2);

          goto LABEL_61;
        }
      }

      sub_3EB30(a1, a2);
      v33 = [v3 customView];
      if (v33)
      {
        v34 = v33;
        type metadata accessor for SymbolButton(0);
        v35 = swift_dynamicCastClass();
        if (v35)
        {
          v36 = v35;
          v37 = swift_allocObject();
          *(v37 + 16) = v10;
          v38 = (v36 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v39 = *v38;
          v40 = v38[1];
          *v38 = NowPlaying.TrackMetadata.underlyingItem.getter;
          v38[1] = v37;
          v41 = v10;
          sub_17654(v39, v40);
        }
      }

      goto LABEL_42;
    }

    v70 = v7;
    v16 = [v2 title];
    if (v16)
    {
      v17 = v16;
      sub_AB92A0();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v3 image];
    [v3 setPrimaryAction:a1];
    v21 = [a1 title];
    v22 = sub_AB92A0();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      v26 = [a1 title];
      sub_AB92A0();
    }

    else if (!v19)
    {
      v27 = 0;
LABEL_28:
      [v3 setTitle:v27];

      v28 = [a1 image];
      if (!v28)
      {
        v28 = v20;
      }

      [v3 setImage:v28];

      [v3 setMenu:0];
      v29 = [v3 customView];
      if (v29)
      {
        v30 = v29;
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          [v31 setMenu:0];

          v32 = v73;
          goto LABEL_57;
        }
      }

      v57 = [v3 customView];
      v32 = v73;
      if (v57)
      {
        v58 = v57;
        type metadata accessor for SymbolButton(0);
        v59 = swift_dynamicCastClass();
        if (v59)
        {
          v60 = (v59 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v61 = *v60;
          v62 = v60[1];
          *v60 = 0;
          v60[1] = 0;
          sub_17654(v61, v62);
        }
      }

LABEL_57:
      if ((v70 & 1) == 0)
      {
        if ((v32 & 1) == 0)
        {
          v65 = [v3 menuRepresentation];
          if (!v65)
          {

            sub_3EB30(a1, a2);
            v63 = v72;
            v64 = v32;
            goto LABEL_62;
          }

          v66 = v65;
          sub_13C80(0, &qword_E1E070, UIMenuElement_ptr);
          v67 = v72;
          v68 = sub_ABA790();

          sub_3EB30(v72, v32);
          if (v68)
          {
            [v3 setMenuRepresentation:a1];

            sub_3EB30(a1, a2);
            sub_3EB30(a1, a2);
            v63 = v72;
            v64 = v32;
            goto LABEL_62;
          }

          sub_3EB30(v72, v32);
LABEL_61:
          v63 = a1;
          v64 = a2;
LABEL_62:
          sub_3EB30(v63, v64);
          return;
        }

        sub_3EB30(v72, v32);
      }

      goto LABEL_61;
    }

    v27 = sub_AB9260();

    goto LABEL_28;
  }

  v14 = v6;
  [v3 setPrimaryAction:0];
  [v3 setMenuRepresentation:0];
  [v3 setMenu:0];
  v74 = [v3 customView];
  if (v74)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      [v15 setMenu:0];
      sub_3EB30(v14, v8);

      return;
    }
  }

  sub_3EB30(v14, v8);
}

uint64_t sub_7B46A0(void *a1)
{
  v1 = [a1 children];
  sub_13C80(0, &qword_E1E070, UIMenuElement_ptr);
  v2 = sub_AB9760();

  return v2;
}

void (*UIBarButtonItem.primaryActionKind.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = [v1 primaryAction];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v3 = [v1 menu];
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  return sub_7B4794;
}

void sub_7B4794(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_37C074(*a1, v3);
    UIBarButtonItem.primaryActionKind.setter(v2, v3);

    sub_3EB30(v2, v3);
  }

  else
  {
    UIBarButtonItem.primaryActionKind.setter(*a1, v3);
  }
}

id UIBarButtonItem.plastify()()
{
  [v0 _setPrefersNoPlatter:1];

  return v2;
}

void *UIBarButtonItemGroup.split()()
{
  v1 = [v0 barButtonItems];
  sub_13C80(0, &qword_E179F8, UIBarButtonItem_ptr);
  v2 = sub_AB9760();

  v11 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_ABAE20();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v5;
      sub_7B49D0(&v11, &v10, v0);

      ++v4;
      if (v7 == i)
      {
        v8 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_15:

  return v8;
}

void sub_7B49D0(void *a1, void **a2, void *a3)
{
  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AF82B0;
  *(v6 + 32) = v5;
  v7 = objc_allocWithZone(UIBarButtonItemGroup);
  sub_13C80(0, &qword_E179F8, UIBarButtonItem_ptr);
  v8 = v5;
  isa = sub_AB9740().super.isa;

  [v7 initWithBarButtonItems:isa representativeItem:0];

  sub_AB9730();
  if (*(&dword_10 + (*a1 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a1 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  v10 = v8;
  v11 = [a3 barButtonItems];
  v12 = sub_AB9760();

  if (v12 >> 62)
  {
    v13 = sub_ABB060();
    if (v13)
    {
LABEL_5:
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v14)
      {
        __break(1u);
      }

      else if ((v12 & 0xC000000000000001) == 0)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v15 < *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
        {
          v16 = *(v12 + 8 * v15 + 32);
          goto LABEL_10;
        }

        __break(1u);
        return;
      }

      v16 = sub_ABAE20();
LABEL_10:
      v17 = v16;

      v18 = sub_ABA790();

      if (v18)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_14:
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_AF82B0;
  *(v19 + 32) = [objc_opt_self() fixedSpaceItemOfWidth:0.0];
  v20 = objc_allocWithZone(UIBarButtonItemGroup);
  v21 = sub_AB9740().super.isa;

  [v20 initWithBarButtonItems:v21 representativeItem:0];

  sub_AB9730();
  if (*(&dword_10 + (*a1 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*a1 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
}

uint64_t UIAction.init(target:selector:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = a2;

      v5 = sub_ABA7D0();

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_7B4DD4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_7B4E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    [result performSelector:a3];
    return v5;
  }

  return result;
}

Class static UIBarButtonItem.contextBarButtonItem(representativeOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  v3 = _sSo15UIBarButtonItemC11MusicCoreUIE010contextBarbC07options16childrenProviderABSo13UIMenuOptionsV_SaySo0L7ElementCGyctFZ_0((&dword_0 + 1), sub_7B6A44, v2);

  return v3;
}

uint64_t sub_7B4EF0(uint64_t a1)
{
  sub_13C80(0, &qword_E179E8, UIMenu_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF82B0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 1;
  aBlock[4] = sub_7B7A24;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_7B191C;
  aBlock[3] = &block_descriptor_132_1;
  v5 = _Block_copy(aBlock);

  v6 = [v3 elementWithUncachedProvider:v5];
  _Block_release(v5);
  *(v2 + 32) = v6;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  v7.value = (&dword_0 + 1);
  isa = sub_ABA5B0(v15, v16, v14, v7, 0xFFFFFFFFFFFFFFFFLL, v2, v12).super.super.isa;
  v9 = [(objc_class *)isa children];

  sub_13C80(0, &qword_E1E070, UIMenuElement_ptr);
  v10 = sub_AB9760();

  return v10;
}

id static UIBarButtonItem.loading.getter()
{
  v0 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v0 startAnimating];
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v0];

  return v1;
}

uint64_t UIButton.reconfigure(with:)(void (*a1)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A10, &qword_B2AB40);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = sub_ABA8C0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ABA8E0();
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    sub_ABA8A0();
    if (v10(v5, 1, v6) != 1)
    {
      sub_12E1C(v5, &qword_E17A10, &qword_B2AB40);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  a1(v9);
  (*(v7 + 16))(v3, v9, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  sub_ABA8F0();
  return (*(v7 + 8))(v9, v6);
}

uint64_t UITraitCollection.isAccessibilitySizeCategory.getter()
{
  v1 = [v0 preferredContentSizeCategory];
  v2 = sub_ABA320();

  return v2 & 1;
}

uint64_t UITraitCollection.preferredLargeTitleDisplayMode.getter()
{
  if (![v0 userInterfaceIdiom])
  {
    return 3;
  }

  if ([v0 userInterfaceIdiom] == &dword_0 + 1)
  {
    return 3;
  }

  return 1;
}

Swift::Bool __swiftcall UIViewController.scrollToTopIfPossible()()
{
  v1 = [v0 contentScrollView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 _scrollToTopIfPossible:1];

  return v3;
}

Swift::Bool __swiftcall UIViewController.focusOnSearchBarIfPossible()()
{
  v1 = [v0 navigationItem];
  v2 = [v1 searchController];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 searchBar];
  v4 = [v3 canBecomeFirstResponder];

  if (v4)
  {
    v5 = [v2 searchBar];
    v6 = [v5 becomeFirstResponder];

    v2 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id static UIKeyCommand.findKeyCommand(affecting:)()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = v17 - v4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_AB91E0();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v7 = qword_E73660;
  sub_AB3550();
  sub_AB9320();
  (*(v1 + 8))(v5, v0);
  v8 = objc_opt_self();
  v9 = sub_AB9260();
  v10 = [v8 keyCommandWithInput:v9 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v11 = v10;
  v12 = sub_AB9260();

  [v11 setTitle:v12];

  if (qword_E16960 != -1)
  {
    swift_once();
  }

  v13 = qword_E179E0;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_7B77C4;
  *(v14 + 24) = v6;
  v17[1] = sub_381190;
  v17[2] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A18, &unk_B2AB48);
  v15 = sub_ABB470();
  objc_setAssociatedObject(v11, v13, v15, &dword_0 + 3);

  swift_unknownObjectRelease();

  return v11;
}

void sub_7B58B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setActive:1];
    v4 = [v3 searchBar];
    [v4 becomeFirstResponder];

    v5 = UISearchController.searchText.getter();
    if (v6)
    {
      v7 = v5;
      v8 = v6;

      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v9)
      {
        v10 = [v3 searchBar];
        v11 = [v10 searchTextField];

        [v11 selectAll:v3];
      }
    }
  }
}

uint64_t UISearchController.searchText.getter()
{
  v1 = sub_AB2B70();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 searchBar];
  v7 = [v6 text];

  if (v7)
  {
    v8 = sub_AB92A0();
    v10 = v9;

    v16[0] = v8;
    v16[1] = v10;
    sub_AB2B60();
    sub_7ABE60();
    v11 = sub_ABAAA0();
    v13 = v12;
    (*(v2 + 8))(v5, v1);

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      return v11;
    }
  }

  return 0;
}

id UIKeyCommand.init(title:input:modifierFlags:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = sub_AB9260();

  v12 = [ObjCClassFromMetadata keyCommandWithInput:v11 modifierFlags:a5 action:"music_handleKeyCommand:"];

  v13 = v12;
  v14 = sub_AB9260();

  [v13 setTitle:v14];

  v15 = qword_E16960;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_E179E0;
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A18, &unk_B2AB48);
  v18 = sub_ABB470();
  objc_setAssociatedObject(v13, v16, v18, &dword_0 + 3);

  swift_unknownObjectRelease();

  return v13;
}

uint64_t UIKeyCommand.handler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_E16960 != -1)
  {
    swift_once();
  }

  v6 = qword_E179E0;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A18, &unk_B2AB48);
    v8 = sub_ABB470();
  }

  else
  {
    v8 = 0;
  }

  objc_setAssociatedObject(v3, v6, v8, &dword_0 + 3);
  swift_unknownObjectRelease();
  return sub_17654(a1, a2);
}

uint64_t (*UIKeyCommand.handler.getter())(uint64_t a1)
{
  if (qword_E16960 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_E179E0))
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A18, &unk_B2AB48);
    if (swift_dynamicCast())
    {
      *(swift_allocObject() + 16) = v2;
      return sub_7B77CC;
    }
  }

  else
  {
    sub_12E1C(v5, &qword_E1E0B0, &unk_B2A450);
  }

  return 0;
}

void (*UIKeyCommand.handler.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = UIKeyCommand.handler.getter();
  v4[1] = v5;
  return sub_7B5F94;
}

void sub_7B5F94(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    sub_307CC(**a1, v3);
    if (qword_E16960 != -1)
    {
      swift_once();
    }

    v5 = qword_E179E0;
    if (v4)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v2[2] = sub_3A8170;
      v2[3] = v6;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A18, &unk_B2AB48);
      v7 = sub_ABB470();
    }

    else
    {
      v7 = 0;
    }

    objc_setAssociatedObject(v2[4], v5, v7, &dword_0 + 3);
    swift_unknownObjectRelease();
    sub_17654(v4, v3);
    v11 = *v2;
    v12 = v2[1];
  }

  else
  {
    if (qword_E16960 != -1)
    {
      swift_once();
    }

    v8 = qword_E179E0;
    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v3;
      v2[2] = sub_3A8170;
      v2[3] = v9;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A18, &unk_B2AB48);
      v10 = sub_ABB470();
    }

    else
    {
      v10 = 0;
    }

    objc_setAssociatedObject(v2[4], v8, v10, &dword_0 + 3);
    swift_unknownObjectRelease();
    v11 = v4;
    v12 = v3;
  }

  sub_17654(v11, v12);

  free(v2);
}

uint64_t sub_7B617C()
{
  result = swift_slowAlloc();
  qword_E179E0 = result;
  return result;
}

id UIKeyCommand.pioritizedOverSystemBehavior(_:)(char a1)
{
  [v1 setWantsPriorityOverSystemBehavior:a1 & 1];

  return v3;
}

void sub_7B61F0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v3 = UIKeyCommand.handler.getter();
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v3(v7);

    sub_17654(v5, v6);
  }

  else
  {
  }
}

id UIFont.monospacedDigits()()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A20, &qword_B2AB58);
  inited = swift_initStackObject();
  v2 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 6;
  *(inited + 16) = xmmword_AF85F0;
  v3 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = v3;
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = 0;
  v4 = v2;
  v5 = v3;
  v6 = sub_7B6B64(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A28, &qword_B2AB60);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A30, &qword_B2AB68);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_AF4EC0;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A38, &qword_B2AB70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_AF4EC0;
  *(v9 + 32) = v6;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A40, &qword_B2AB78);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_7B6C8C(v8);
  swift_setDeallocating();
  sub_12E1C(v8 + 32, &qword_E17A48, &qword_B2AB80);
  _s3__C13AttributeNameVMa_1(0);
  sub_7B7804();
  isa = sub_AB8FD0().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  v13 = [swift_getObjCClassFromMetadata() fontWithDescriptor:v12 size:0.0];
  return v13;
}

uint64_t (*static UIPointerStyle.capsule(in:)(void *a1))(void *a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_7B7894;
}

uint64_t sub_7B6540(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1E060, &qword_B2AC70);
  __chkstk_darwin();
  v8 = &v38 - v7;
  v9 = sub_AB4D00();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (a4)
  {
    v22 = a4;
    v39.origin.x = v15;
    v39.origin.y = v17;
    v39.size.width = v19;
    v39.size.height = v21;
    Width = CGRectGetWidth(v39);
    [v22 frame];
    v25 = Width - v24;
    v40.origin.x = v15;
    v40.origin.y = v17;
    v40.size.width = v19;
    v40.size.height = v21;
    Height = CGRectGetHeight(v40);
    [v22 frame];
    v28 = v27;

    v15 = UIEdgeInsetsInsetRect(v15, v17, v19, v21, (Height - v28) * 0.5, v25 * 0.5);
    v17 = v29;
    v19 = v30;
    v21 = v31;
  }

  (*(v10 + 16))(v13, a2, v9);
  v41.origin.x = v15;
  v41.origin.y = v17;
  v41.size.width = v19;
  v41.size.height = v21;
  v32 = CGRectGetWidth(v41);
  v42.origin.x = v15;
  v42.origin.y = v17;
  v42.size.width = v19;
  v42.size.height = v21;
  v33 = CGRectGetHeight(v42);
  if (v33 < v32)
  {
    v32 = v33;
  }

  sub_13C80(0, &qword_E17A68, UIPointerStyle_ptr);
  *v8 = v15;
  *(v8 + 1) = v17;
  *(v8 + 2) = v19;
  *(v8 + 3) = v21;
  *(v8 + 4) = v32 * 0.5;
  v34 = enum case for UIPointerShape.roundedRect(_:);
  v35 = sub_AB4CC0();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v8, v34, v35);
  (*(v36 + 56))(v8, 0, 1, v35);
  return sub_AB9F80();
}

uint64_t sub_7B6834(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_ABB060();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_ABB060();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_7B69C4();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A00, &qword_B2AB38);
            v9 = sub_735F44(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_13C80(0, &qword_E179F8, UIBarButtonItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_7B69C4()
{
  result = qword_E17A08;
  if (!qword_E17A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E17A00, &qword_B2AB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17A08);
  }

  return result;
}

unint64_t sub_7B6A4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A88, &qword_B2AC90);
    v3 = sub_ABB0C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_90090(v7, v8);
      result = sub_2EBF88(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_7B6B64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A78, &unk_B2AC80);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v11, &qword_E17A28, &qword_B2AB60);
      v5 = v11;
      result = sub_85C958();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_9ACFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_7B6C8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A70, &qword_B2AC78);
    v3 = sub_ABB0C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_15F84(v4, &v11, &qword_E17A48, &qword_B2AB80);
      v5 = v11;
      result = sub_85C958();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_9ACFC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_7B6DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A60, &qword_B2AC68);
    v3 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2EBF88(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_7B6EB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A58, &qword_B2AC60);
    v3 = sub_ABB0C0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2EBF88(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_7B6FB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A50, &qword_B2AC58);
    v3 = sub_ABB0C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_85A8E8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

Class _sSo15UIBarButtonItemC11MusicCoreUIE010contextBarbC07options16childrenProviderABSo13UIMenuOptionsV_SaySo0L7ElementCGyctFZ_0(NSString *a1, uint64_t a2, uint64_t a3)
{
  sub_AB35C0();
  __chkstk_darwin();
  v6 = sub_AB9250();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &aBlock[-1] - v10;
  sub_AB91E0();
  (*(v7 + 16))(v9, v11, v6);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v12 = qword_E73660;
  sub_AB3550();
  v13 = sub_AB9320();
  v15 = v14;
  (*(v7 + 8))(v11, v6);
  sub_13C80(0, &qword_E179F8, UIBarButtonItem_ptr);
  v16 = sub_AB9260();
  v17 = [objc_opt_self() systemImageNamed:v16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_AF82B0;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  aBlock[4] = sub_7B7AB8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_7B191C;
  aBlock[3] = &block_descriptor_125;
  v21 = _Block_copy(aBlock);

  v22 = [v19 elementWithUncachedProvider:v21];
  _Block_release(v21);
  *(v18 + 32) = v22;
  sub_13C80(0, &qword_E179E8, UIMenu_ptr);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v37.value._countAndFlagsBits = 0;
  v37.value._object = 0;
  v35.value.super.isa = 0;
  v35.is_nil = 0;
  v23.value = a1;
  isa = sub_ABA5B0(v36, v37, v35, v23, 0xFFFFFFFFFFFFFFFFLL, v18, v32).super.super.isa;
  v25 = AccessibilityIdentifier.contextualMenuButton.unsafeMutableAddressor();
  v26 = *v25;
  v27 = v25[1];
  v29 = v25[2];
  v28 = v25[3];

  v30 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v13, v15, v17, 0, isa, 1, v26, v27, v29, v28);
  [(objc_class *)v30 setPreferredMenuElementOrder:2];
  return v30;
}

id _sSo12UIKeyCommandC11MusicCoreUIE07findKeyB0yAByABcFZ_0(uint64_t a1, uint64_t a2)
{
  sub_AB35C0();
  __chkstk_darwin();
  v4 = sub_AB9250();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v20 - v8;
  sub_AB91E0();
  (*(v5 + 16))(v7, v9, v4);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v10 = qword_E73660;
  sub_AB3550();
  sub_AB9320();
  (*(v5 + 8))(v9, v4);
  v11 = objc_opt_self();
  v12 = sub_AB9260();
  v13 = [v11 keyCommandWithInput:v12 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v14 = v13;
  v15 = sub_AB9260();

  [v14 setTitle:v15];

  if (qword_E16960 != -1)
  {
    swift_once();
  }

  v16 = qword_E179E0;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v20[1] = sub_3A8170;
  v20[2] = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A18, &unk_B2AB48);
  v18 = sub_ABB470();
  objc_setAssociatedObject(v14, v16, v18, &dword_0 + 3);
  swift_unknownObjectRelease();

  return v14;
}

uint64_t sub_7B77CC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_7B7804()
{
  result = qword_E17000;
  if (!qword_E17000)
  {
    _s3__C13AttributeNameVMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17000);
  }

  return result;
}

uint64_t sub_7B785C()
{

  return swift_deallocObject();
}

double sub_7B78B8(void (*a1)(void))
{
  (*(v1 + 16))();
  a1();

  return result;
}

uint64_t sub_7B7914()
{

  return swift_deallocObject();
}

uint64_t sub_7B794C()
{

  return swift_deallocObject();
}

uint64_t sub_7B7984()
{

  return swift_deallocObject();
}

uint64_t sub_7B79BC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t *UIView.Border.artwork.unsafeMutableAddressor()
{
  if (qword_E16968 != -1)
  {
    swift_once();
  }

  return &static UIView.Border.artwork;
}

void sub_7B7B60()
{
  v0 = objc_allocWithZone(UIColor);
  v5[4] = sub_7B7C48;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_119878;
  v5[3] = &block_descriptor_217;
  v1 = _Block_copy(v5);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  UIView.Border.init(thickness:color:)();
  static UIView.Border.artwork = v2;
  byte_E73908 = v3 & 1;
  qword_E73910 = v4;
}

id sub_7B7C48(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  v3 = 0.0;
  if (v1 == &dword_0 + 2)
  {
    v3 = 1.0;
  }

  return [v2 initWithWhite:v3 alpha:0.1];
}

uint64_t static UIView.Border.artwork.getter()
{
  if (qword_E16968 != -1)
  {
    swift_once();
  }

  v0 = static UIView.Border.artwork;
  v1 = qword_E73910;
  return v0;
}

void sub_7B7D28()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_E17A90 = v1 == &dword_4 + 2;
}

uint64_t sub_7B7D8C()
{
  v0 = sub_ABA680();
  __swift_allocate_value_buffer(v0, static UIView.Corner.extraSmall);
  __swift_project_value_buffer(v0, static UIView.Corner.extraSmall);
  if (qword_E16970 != -1)
  {
    swift_once();
  }

  return sub_ABA600();
}

uint64_t sub_7B7E78()
{
  v0 = sub_ABA680();
  __swift_allocate_value_buffer(v0, static UIView.Corner.small);
  __swift_project_value_buffer(v0, static UIView.Corner.small);
  if (qword_E16970 != -1)
  {
    swift_once();
  }

  return sub_ABA600();
}

uint64_t sub_7B7F40()
{
  v0 = sub_ABA680();
  __swift_allocate_value_buffer(v0, static UIView.Corner.medium);
  __swift_project_value_buffer(v0, static UIView.Corner.medium);
  if (qword_E16970 != -1)
  {
    swift_once();
  }

  return sub_ABA600();
}

uint64_t sub_7B8008()
{
  v0 = sub_ABA680();
  __swift_allocate_value_buffer(v0, static UIView.Corner.large);
  __swift_project_value_buffer(v0, static UIView.Corner.large);
  if (qword_E16970 != -1)
  {
    swift_once();
  }

  return sub_ABA600();
}

uint64_t sub_7B80F4()
{
  v0 = sub_ABA680();
  __swift_allocate_value_buffer(v0, static UIView.Corner.extraLarge);
  __swift_project_value_buffer(v0, static UIView.Corner.extraLarge);
  if (qword_E16970 != -1)
  {
    swift_once();
  }

  return sub_ABA600();
}

uint64_t sub_7B81BC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_ABA680();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_7B8234@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_ABA680();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

double block_copy_helper_217(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *HI.Color.prominentTextColor.unsafeMutableAddressor()
{
  if (qword_E169A0 != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentTextColor;
}

id sub_7B83C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 userInterfaceStyle];
  sub_7B0A80();
  if (v7 == &dword_0 + 2)
  {
    v8 = 250;
    v9 = 45;
    v10 = 72;
  }

  else
  {
    v8 = a2;
    v9 = a3;
    v10 = a4;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v8, v9, v10, 1.0);
}

void *HI.Color.prominentBackgroundColor.unsafeMutableAddressor()
{
  if (qword_E169A8 != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentBackgroundColor;
}

double block_copy_helper_218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_7B857C@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicCoreUI2HIO9SizeClassO8rawValueAESg0B8Graphics7CGFloatV_tcfC_0(*a1);
  *a2 = result;
  return result;
}

double sub_7B85A8@<D0>(double *a1@<X8>)
{
  result = dbl_B2B110[*v1];
  *a1 = result;
  return result;
}

Swift::Int sub_7B8690(uint64_t a1, char a2)
{
  sub_ABB5C0();
  sub_ABB600(qword_B2B0D0[a2]);
  return sub_ABB610();
}

double sub_7B86E0(char a1, char a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 != 2)
      {
        return dbl_B2B090[a1];
      }

      v4 = a1;
      result = 3.0;
      v5 = 4.0;
      if (a1 != 2)
      {
        v5 = 2.0;
      }

      v6 = 1.0;
      if (a2)
      {
        v6 = 3.0;
      }

      if (!a1)
      {
        result = v6;
      }

      goto LABEL_49;
    }

    if (!a3)
    {
      return dbl_B2B070[a1];
    }

    v4 = a1;
    result = 1.0;
    v5 = 3.0;
    v11 = 4.0;
    if ((a2 & 1) == 0)
    {
      v11 = 1.0;
    }

    if (a1 != 2)
    {
      v5 = v11;
    }

    v12 = 2.0;
LABEL_47:
    if (v4)
    {
      result = v12;
    }

LABEL_49:
    if (v4 > 1)
    {
      return v5;
    }

    return result;
  }

  if (a3 <= 5u)
  {
    if (a3 == 4)
    {
      return dbl_B2B0B0[a1];
    }

    v4 = a1;
    result = 3.0;
    v5 = 7.0;
    v13 = 5.0;
    if (a2)
    {
      v13 = 9.0;
    }

    if (a1 != 2)
    {
      v5 = v13;
    }

    v12 = 6.0;
    goto LABEL_47;
  }

  result = 7.0;
  v7 = 8.0;
  v8 = 6.0;
  if (a2)
  {
    v8 = 28.0;
  }

  if (a1 != 2)
  {
    v7 = v8;
  }

  v9 = 4.0;
  if (a2)
  {
    v9 = 7.0;
  }

  if (a1)
  {
    v9 = 7.0;
  }

  if (a1 <= 1u)
  {
    v7 = v9;
  }

  v10 = 5.0;
  if (a2)
  {
    result = 15.0;
  }

  if (a1 == 2)
  {
    result = 12.0;
  }

  if (a1)
  {
    v10 = 10.0;
  }

  if (a1 <= 1u)
  {
    result = v10;
  }

  if (a3 == 6)
  {
    return v7;
  }

  return result;
}

void HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(char a1@<W0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (a5 <= 374.0)
  {
    v13 = 0;
    v10 = 10.0;
    v11 = 16.0;
    goto LABEL_19;
  }

  v10 = 12.0;
  v11 = 20.0;
  if (a5 <= 500.0)
  {
    v13 = 1;
    goto LABEL_19;
  }

  if (a5 <= 726.0)
  {
    v13 = 2;
    goto LABEL_19;
  }

  v10 = 20.0;
  if (a5 <= 981.0)
  {
    v13 = 3;
LABEL_18:
    v11 = 34.0;
    goto LABEL_19;
  }

  if (a5 <= 1194.0)
  {
    v13 = 4;
    goto LABEL_18;
  }

  if (a5 <= 2500.0)
  {
    v12 = 6;
  }

  else
  {
    v12 = 7;
  }

  if (a5 > 1500.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 5;
  }

  v11 = 34.0;
LABEL_19:
  v14 = a5 - (v11 + v11);
  if (a3)
  {
    v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    [v15 scaledValueForValue:1.0];
    v17 = v16;

    v18 = round(sub_7B86E0(a1, a2 & 1, v13) * (1.0 / (v17 * 0.7)));
  }

  else
  {
    v18 = sub_7B86E0(a1, a2 & 1, v13);
  }

  v19 = 1.0;
  if (v13 <= 4)
  {
    v20 = 3.0;
    if (((a1 == 3) & a2) == 0)
    {
      v20 = 1.0;
    }

    v22 = 2.0;
    if (((a1 == 0) & a2) == 0)
    {
      v22 = 1.0;
    }

    if (v13 == 2)
    {
      v19 = v22;
    }

    v21 = v13 == 1;
    goto LABEL_40;
  }

  if (v13 == 5)
  {
    v23 = ((a1 == 3) & a2) == 0;
  }

  else
  {
    if (v13 != 6)
    {
      v20 = 1.0;
      if (((a1 == 3) & a2) != 0)
      {
        v20 = 2.0;
      }

      v21 = v13 == 7;
LABEL_40:
      if (v21)
      {
        v19 = v20;
      }

      goto LABEL_46;
    }

    if (a1)
    {
      v20 = 5.0;
      if ((a2 & 1) == 0)
      {
        v20 = 1.0;
      }

      v21 = a1 == 3;
      goto LABEL_40;
    }

    v23 = (a2 & 1) == 0;
  }

  if (!v23)
  {
    v19 = 2.0;
  }

LABEL_46:
  v24 = (v14 - v10 * (v18 + -1.0)) / v18 * v19;
  v25 = v19 + -1.0;
  if (v25 > 0.0)
  {
    v24 = v24 + v10 * v25;
  }

  v26 = v18 == 1.0 || v24 > 300.0;
  if ((a3 & 1) == 0)
  {
    v26 = 0;
  }

  *a4 = a5;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
  *(a4 + 24) = v13;
  *(a4 + 25) = a1;
  *(a4 + 26) = a2 & 1;
  *(a4 + 32) = v14;
  *(a4 + 40) = v18;
  *(a4 + 48) = v24;
  *(a4 + 56) = v26;
}

void HI.Grid.Metrics.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_ABB600(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_ABB600(*&v2);
  v3 = *(v0 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_ABB600(*&v3);
  sub_ABB600(qword_B2B0D0[*(v0 + 24)]);
  sub_ABB5D0(*(v0 + 25));
  sub_ABB5E0(*(v0 + 26) & 1);
  v4 = *(v0 + 32);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_ABB600(*&v4);
  v5 = *(v0 + 40);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_ABB600(*&v5);
  v6 = *(v0 + 48);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  sub_ABB600(*&v6);
  sub_ABB5E0(*(v0 + 56) & 1);
}

Swift::Int HI.Grid.Metrics.hashValue.getter()
{
  sub_ABB5C0();
  HI.Grid.Metrics.hash(into:)();
  return sub_ABB610();
}

Swift::Int sub_7B8CE8(uint64_t a1)
{
  sub_ABB5C0();
  HI.Grid.Metrics.hash(into:)();
  return sub_ABB610();
}

uint64_t sub_7B8D24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s11MusicCoreUI2HIO4GridO7MetricsV23__derived_struct_equalsySbAG_AGtFZ_0(v5, v7) & 1;
}

uint64_t *HI.BottomPlayer.Ornament.overlappingHeight.unsafeMutableAddressor()
{
  if (qword_E169B0 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.overlappingHeight;
}

double sub_7B8EC8()
{
  if (qword_E169B0 != -1)
  {
    swift_once();
  }

  result = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  static HI.BottomPlayer.Ornament.offset = 0;
  *&qword_E739B0 = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  return result;
}

uint64_t *HI.BottomPlayer.Ornament.offset.unsafeMutableAddressor()
{
  if (qword_E169B8 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.Ornament.offset.getter()
{
  if (qword_E169B8 != -1)
  {
    swift_once();
  }

  return *&static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.size(dynamicTypeSize:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E178B8, &qword_B2A8D8);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = sub_AB5C70();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v14 - v8;
  sub_7B9648(a1, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_7B96B8(v3);
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    (*(v5 + 104))(v7, enum case for DynamicTypeSize.accessibility1(_:), v4);
    sub_7B9720();
    v10 = sub_AB9160();
    v11 = *(v5 + 8);
    v11(v7, v4);
    v11(v9, v4);
    if ((v10 & 1) == 0)
    {
      return 924.0;
    }
  }

  return 784.0;
}

uint64_t *HI.BottomPlayer.buttonSpacing.unsafeMutableAddressor()
{
  if (qword_E169C0 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.buttonSpacing;
}

uint64_t *HI.BottomPlayer.contentHorizontalPadding.unsafeMutableAddressor()
{
  if (qword_E169C8 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.contentHorizontalPadding;
}

double sub_7B930C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t _s11MusicCoreUI2HIO4GridO7MetricsV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v3 > 3)
  {
    if (*(a2 + 24) > 5u)
    {
      if (v3 == 6)
      {
        if (v2 != 6)
        {
          return 0;
        }
      }

      else if (v2 != 7)
      {
        return 0;
      }
    }

    else if (v3 == 4)
    {
      if (v2 != 4)
      {
        return 0;
      }
    }

    else if (v2 != 5)
    {
      return 0;
    }
  }

  else if (*(a2 + 24) > 1u)
  {
    if (v3 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 3)
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (*(a1 + 24))
  {
    return 0;
  }

  if (*(a1 + 25) == *(a2 + 25) && ((*(a1 + 26) ^ *(a2 + 26)) & 1) == 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return (*(a1 + 56) ^ *(a2 + 56) ^ 1) & 1;
  }

  return 0;
}

uint64_t _s11MusicCoreUI2HIO9SizeClassOyAE0B8Graphics7CGFloatVcfC_0(double a1)
{
  if (a1 <= 374.0)
  {
    return 0;
  }

  if (a1 <= 500.0)
  {
    return 1;
  }

  if (a1 <= 726.0)
  {
    return 2;
  }

  if (a1 <= 981.0)
  {
    return 3;
  }

  if (a1 > 2500.0)
  {
    v1 = 7;
  }

  else
  {
    v1 = 6;
  }

  if (a1 > 1500.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 5;
  }

  if (a1 > 1194.0)
  {
    return v2;
  }

  else
  {
    return 4;
  }
}

uint64_t _s11MusicCoreUI2HIO9SizeClassO8rawValueAESg0B8Graphics7CGFloatV_tcfC_0(double a1)
{
  if (a1 == 374.0)
  {
    return 0;
  }

  if (a1 == 500.0)
  {
    return 1;
  }

  if (a1 == 726.0)
  {
    return 2;
  }

  if (a1 == 981.0)
  {
    return 3;
  }

  if (a1 == 1194.0)
  {
    return 4;
  }

  if (a1 == 2501.0)
  {
    v2 = 7;
  }

  else
  {
    v2 = 8;
  }

  if (a1 == 2500.0)
  {
    v3 = 6;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 1500.0)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_7B9648(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E178B8, &qword_B2A8D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7B96B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E178B8, &qword_B2A8D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_7B9720()
{
  result = qword_E17A98;
  if (!qword_E17A98)
  {
    sub_AB5C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17A98);
  }

  return result;
}

unint64_t sub_7B97A8()
{
  result = qword_E17AB0;
  if (!qword_E17AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17AB0);
  }

  return result;
}

unint64_t sub_7B9834()
{
  result = qword_E17AC8;
  if (!qword_E17AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17AC8);
  }

  return result;
}

unint64_t sub_7B988C()
{
  result = qword_E17AD0;
  if (!qword_E17AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17AD0);
  }

  return result;
}

__n128 __swift_memcpy57_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_7B9948(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 26);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_7B999C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 26) = a2 + 1;
    }
  }

  return result;
}

double sub_7B9A7C(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
{
  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (a4 <= 1u)
  {
    if (a4)
    {
LABEL_9:
      result = 540.0;
      if (v8 == &dword_4 + 2)
      {
        return 512.0;
      }

      return result;
    }

    result = 540.0;
    if (v8 == &dword_4 + 2)
    {
      return 512.0;
    }
  }

  else
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        return 512.0;
      }

      goto LABEL_9;
    }

    result = 712.0;
    if (a3 & 1 | (*&a1 <= 1194.0))
    {
      return 540.0;
    }
  }

  return result;
}

double static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v8 = sub_7B9A7C(a2, a3, a4 & 1, a1);
  v9 = [objc_opt_self() currentTraitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == &dword_4 + 2 && (a4 & 1) == 0 && (a5 & 1) == 0)
  {
    v11 = *&a2;
    if (qword_E169D0 != -1)
    {
      swift_once();
      v11 = *&a2;
    }

    if (v8 + *&qword_E739C8 + *&qword_E739C8 > v11)
    {
      return v11 - (*&qword_E739C8 + *&qword_E739C8);
    }
  }

  return v8;
}

unint64_t sub_7B9D20()
{
  result = qword_E17AD8;
  if (!qword_E17AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17AD8);
  }

  return result;
}

uint64_t sub_7B9D98()
{
  sub_ABAD90(42);

  v4._countAndFlagsBits = sub_AB8680();
  sub_AB94A0(v4);

  v5._countAndFlagsBits = 0x64692E676E6F7320;
  v5._object = 0xE90000000000003DLL;
  sub_AB94A0(v5);
  sub_AB8660();
  v0 = sub_AB8040();
  v2 = v1;

  v6._countAndFlagsBits = v0;
  v6._object = v2;
  sub_AB94A0(v6);

  v7._object = 0x8000000000B74B40;
  v7._countAndFlagsBits = 0xD000000000000010;
  sub_AB94A0(v7);
  sub_AB85F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17BC0, &qword_B2B3B8);
  v8._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v8);

  return 0x7469742E676E6F73;
}

uint64_t LyricsLoader.loadLyrics(for:)(uint64_t a1)
{
  v2[65] = v1;
  v2[64] = a1;
  v3 = sub_AB31C0();
  v2[66] = v3;
  v2[67] = *(v3 - 8);
  v2[68] = swift_task_alloc();
  v4 = sub_AB4BC0();
  v2[69] = v4;
  v2[70] = *(v4 - 8);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v5 = sub_AB9300();
  v2[75] = v5;
  v2[76] = *(v5 - 8);
  v2[77] = swift_task_alloc();
  v6 = sub_AB86C0();
  v2[78] = v6;
  v2[79] = *(v6 - 8);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();

  return _swift_task_switch(sub_7BA138, 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B08, &qword_B2B200);
  v2[4] = swift_task_alloc();
  v3 = sub_AB86C0();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_7BCE34, 0, 0);
}

uint64_t sub_7BA138()
{
  v40 = v0;
  if (sub_AB86B0() & 1) != 0 || (sub_AB85C0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
    v1 = swift_allocObject();
    v0[89] = v1;
    *(v1 + 16) = xmmword_AF82B0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17AE8, &qword_B2B1D8);
    *(v1 + 32) = sub_AB7D00();
    v2 = swift_task_alloc();
    v0[90] = v2;
    v3 = sub_7C2AA0();
    *v2 = v0;
    v2[1] = sub_7BA5B0;
    v4 = v0[88];
    v5 = v0[78];

    return MusicItem<>.with(_:)(v4, v1, v5, &protocol witness table for Song, &protocol witness table for Song, v3);
  }

  else
  {
    v6 = v0[83];
    v7 = v0[79];
    v8 = v0[78];
    v9 = v0[72];
    v10 = v0[70];
    v11 = v0[69];
    v12 = v0[65];
    v13 = v0[64];
    v14 = Logger.lyrics.unsafeMutableAddressor();
    (*(v10 + 16))(v9, v14, v11);
    (*(v7 + 16))(v6, v13, v8);
    v15 = v12;
    v16 = sub_AB4BA0();
    v17 = sub_AB9F50();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[83];
    v20 = v0[79];
    v21 = v0[78];
    v22 = v0[72];
    v23 = v0[70];
    v24 = v0[69];
    if (v18)
    {
      v38 = v0[72];
      v25 = v0[65];
      v37 = v0[69];
      v26 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v26 = 136446466;
      v0[57] = v25;
      v27 = sub_AB9350();
      v29 = sub_7AB3E0(v27, v28, v39);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      v30 = sub_7B9D98();
      v32 = v31;
      (*(v20 + 8))(v19, v21);
      v33 = sub_7AB3E0(v30, v32, v39);

      *(v26 + 14) = v33;
      _os_log_impl(&dword_0, v16, v17, "Loader<%{public}s> loadLyrics(for:completion:) returned without loading lyrics [hasLyrics and hasCustomLyrics were false] %{public}s", v26, 0x16u);
      swift_arrayDestroy();

      (*(v23 + 8))(v38, v37);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      (*(v23 + 8))(v22, v24);
    }

    sub_7C2A4C();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_7BA5B0()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_7BBDF4;
  }

  else
  {

    v2 = sub_7BA6CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7BA6CC()
{
  v138 = v0;
  v1 = sub_AB85A0();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v5 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = [objc_opt_self() standardUserDefaults];
      v7 = sub_AB9260();
      v8 = [v6 BOOLForKey:v7];

      if (v8 && *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1 && (v9 = String.trim()(), v10 = sub_7BC7B8(544502844, 0xE400000000000000, v9._countAndFlagsBits, v9._object), , (v10 & 1) != 0) && (v11 = *(v0 + 616), v12 = *(v0 + 608), v13 = *(v0 + 600), sub_AB92F0(), v14 = sub_AB92B0(), v16 = v15, *(v0 + 736) = v14, *(v0 + 744) = v15, (*(v12 + 8))(v11, v13), v16 >> 60 != 15))
      {

        v114 = objc_allocWithZone(MSVLyricsTTMLParser);
        sub_90090(v14, v16);
        isa = sub_AB3250().super.isa;
        v116 = [v114 initWithTTMLData:isa];
        *(v0 + 752) = v116;

        sub_466A4(v14, v16);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 488;
        *(v0 + 24) = sub_7BB5CC;
        v117 = swift_continuation_init();
        *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B00, &qword_B2B1F0);
        *(v0 + 336) = _NSConcreteStackBlock;
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = sub_7BC914;
        *(v0 + 360) = &block_descriptor_219;
        *(v0 + 368) = v117;
        [v116 parseWithCompletion:v0 + 336];

        return _swift_continuation_await(v0 + 16);
      }

      else
      {
        (*(*(v0 + 632) + 8))(*(v0 + 704), *(v0 + 624));

        v17 = *(v0 + 8);

        return v17(v3, v4, 0);
      }
    }
  }

  if ((sub_AB86B0() & 1) == 0)
  {
    v54 = *(v0 + 704);
    v55 = *(v0 + 696);
    v56 = *(v0 + 688);
    v57 = *(v0 + 632);
    v58 = *(v0 + 624);
    v59 = *(v0 + 592);
    v60 = *(v0 + 560);
    v61 = *(v0 + 552);
    v131 = *(v0 + 680);
    v135 = *(v0 + 520);
    v62 = *(v0 + 512);
    v63 = Logger.lyrics.unsafeMutableAddressor();
    (*(v60 + 16))(v59, v63, v61);
    v64 = *(v57 + 16);
    v64(v55, v62, v58);
    v64(v56, v54, v58);
    v64(v131, v62, v58);
    v65 = v135;
    v66 = sub_AB4BA0();
    v67 = sub_AB9F50();

    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 696);
    v70 = *(v0 + 688);
    v136 = *(v0 + 680);
    v71 = *(v0 + 632);
    v72 = *(v0 + 624);
    v73 = *(v0 + 592);
    v74 = *(v0 + 560);
    v75 = *(v0 + 552);
    if (v68)
    {
      v132 = *(v0 + 592);
      v76 = *(v0 + 520);
      v130 = *(v0 + 552);
      v77 = swift_slowAlloc();
      v137[0] = swift_slowAlloc();
      *v77 = 136446978;
      *(v0 + 464) = v76;
      v78 = sub_AB9350();
      v126 = v67;
      v80 = sub_7AB3E0(v78, v79, v137);

      *(v77 + 4) = v80;
      *(v77 + 12) = 2082;
      v81 = sub_AB85C0();
      if (v81)
      {
        v82 = 1702195828;
      }

      else
      {
        v82 = 0x65736C6166;
      }

      if (v81)
      {
        v83 = 0xE400000000000000;
      }

      else
      {
        v83 = 0xE500000000000000;
      }

      loga = v66;
      v84 = *(v71 + 8);
      v84(v69, v72);
      v85 = sub_7AB3E0(v82, v83, v137);

      *(v77 + 14) = v85;
      *(v77 + 22) = 2082;
      *(v0 + 424) = sub_AB85A0();
      *(v0 + 432) = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0, &qword_B32B20);
      v87 = sub_AB9350();
      v89 = v88;
      v84(v70, v72);
      v90 = sub_7AB3E0(v87, v89, v137);

      *(v77 + 24) = v90;
      *(v77 + 32) = 2082;
      v91 = sub_7B9D98();
      v93 = v92;
      v84(v136, v72);
      v94 = sub_7AB3E0(v91, v93, v137);

      *(v77 + 34) = v94;
      _os_log_impl(&dword_0, loga, v126, "Loader<%{public}s> loadLyrics(for:completion:) didn't load lyrics [no lyrics found] song.hasLyrics=false song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v77, 0x2Au);
      swift_arrayDestroy();

      (*(v74 + 8))(v132, v130);
    }

    else
    {

      v84 = *(v71 + 8);
      v84(v136, v72);
      v84(v70, v72);
      v84(v69, v72);
      (*(v74 + 8))(v73, v75);
    }

    v107 = *(v0 + 704);
    v108 = *(v0 + 624);
    sub_7C2A4C();
    swift_allocError();
    *v109 = 1;
    swift_willThrow();
    v84(v107, v108);
    goto LABEL_36;
  }

  static ApplicationCapabilities.shared.getter(v0 + 208);
  sub_70C54(v0 + 208);
  if ((*(v0 + 218) & 1) == 0)
  {
    v19 = *(v0 + 672);
    v20 = *(v0 + 632);
    v21 = *(v0 + 624);
    v22 = *(v0 + 584);
    v23 = *(v0 + 560);
    v24 = *(v0 + 552);
    v133 = *(v0 + 520);
    v25 = *(v0 + 512);
    v26 = [objc_opt_self() sharedController];
    v27 = [v26 musicSubscriptionStatus];

    static ApplicationCapabilities.shared.getter(v0 + 80);
    sub_70C54(v0 + 80);
    v129 = *(v0 + 88);
    v28 = Logger.lyrics.unsafeMutableAddressor();
    (*(v23 + 16))(v22, v28, v24);
    (*(v20 + 16))(v19, v25, v21);
    v29 = v133;
    v30 = v27;
    v31 = sub_AB4BA0();
    v32 = sub_AB9F50();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 672);
    v35 = *(v0 + 632);
    v36 = *(v0 + 624);
    v37 = *(v0 + 584);
    v38 = *(v0 + 560);
    v39 = *(v0 + 552);
    if (v33)
    {
      v128 = v32;
      v40 = *(v0 + 520);
      log = *(v0 + 624);
      v41 = swift_slowAlloc();
      v137[0] = swift_slowAlloc();
      *v41 = 136446978;
      *(v0 + 472) = v40;
      v42 = sub_AB9350();
      v134 = v37;
      v127 = v39;
      v44 = sub_7AB3E0(v42, v43, v137);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2082;
      *(v0 + 480) = v30;
      v45 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17AF8, &qword_B2B1E0);
      v46 = sub_AB9350();
      v48 = sub_7AB3E0(v46, v47, v137);

      *(v41 + 14) = v48;
      *(v41 + 22) = 1026;
      *(v41 + 24) = WORD1(v129) & 1;
      *(v41 + 28) = 2082;
      v49 = sub_7B9D98();
      v51 = v50;
      v52 = *(v35 + 8);
      v52(v34, log);
      v53 = sub_7AB3E0(v49, v51, v137);

      *(v41 + 30) = v53;
      _os_log_impl(&dword_0, v31, v128, "Loader<%{public}s> loadLyrics(for:completion:) didn't load store lyrics [not supported by subscription] subscriptionStatus=%{public}s subscriptionStatus.capabilities.contains(.catalogLyricsViewing)=%{BOOL,public}d %{public}s", v41, 0x26u);
      swift_arrayDestroy();

      (*(v38 + 8))(v134, v127);
    }

    else
    {

      v52 = *(v35 + 8);
      v52(v34, v36);
      (*(v38 + 8))(v37, v39);
    }

    v110 = *(v0 + 704);
    v111 = *(v0 + 624);
    sub_7C2A4C();
    swift_allocError();
    *v112 = 2;
    swift_willThrow();

    v52(v110, v111);
LABEL_36:

    v113 = *(v0 + 8);

    return v113();
  }

  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() != 1)
  {
    goto LABEL_29;
  }

  v95 = sub_AB85F0();
  *(v0 + 768) = v96;
  if (!v96)
  {
    goto LABEL_29;
  }

  v97 = v95;
  v98 = v96;
  v99 = *(v0 + 728);
  sub_ABAD90(30);

  v137[0] = 0xD000000000000017;
  v137[1] = 0x8000000000B74A70;
  v140._countAndFlagsBits = v97;
  v140._object = v98;
  sub_AB94A0(v140);
  v141._countAndFlagsBits = 0x6C6D74742ELL;
  v141._object = 0xE500000000000000;
  sub_AB94A0(v141);
  sub_AB30C0();

  v100 = sub_AB31F0();
  *(v0 + 776) = v100;
  *(v0 + 784) = v101;
  if (v99)
  {
    v102 = *(v0 + 544);
    v103 = *(v0 + 536);
    v104 = *(v0 + 528);

    (*(v103 + 8))(v102, v104);
LABEL_29:
    v105 = swift_task_alloc();
    *(v0 + 816) = v105;
    *v105 = v0;
    v105[1] = sub_7BBB64;
    v106 = *(v0 + 512);

    return sub_7BD6F8(v106);
  }

  v118 = v100;
  v119 = v101;
  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  v120 = *LyricsOptionsManager.shared.unsafeMutableAddressor();

  BagProvider.shared.unsafeMutableAddressor();

  v121 = BagProvider.bag.getter();

  (*(*v120 + 120))(v121);

  v122 = swift_task_alloc();
  *(v0 + 792) = v122;
  v122[2] = v118;
  v122[3] = v119;
  v122[4] = v97;
  v122[5] = v98;
  v123 = swift_task_alloc();
  *(v0 + 800) = v123;
  *v123 = v0;
  v123[1] = sub_7BB894;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 400, 0, 0, 0xD000000000000010, 0x8000000000B74A90, sub_7C2AF8, v122, &type metadata for LyricsLoader.Result);
}

uint64_t sub_7BB5CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 760) = v1;
  if (v1)
  {
    v2 = sub_7BBF38;
  }

  else
  {
    v2 = sub_7BB6DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7BB6DC()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[88];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[61];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(0, 0, v7);

  sub_466A4(v3, v2);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(v10, 0, 1);
}

uint64_t sub_7BB894()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_7BC4F4;
  }

  else
  {
    v2 = sub_7BB9E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7BB9E4()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  sub_466B8(*(v0 + 776), *(v0 + 784));
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 408);
  v8 = *(v0 + 400);
  v6 = *(v0 + 416);

  v4 = *(v0 + 8);

  return v4(v8, v7, v6);
}

uint64_t sub_7BBB64(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 824) = v1;

  if (v1)
  {
    v5 = sub_7BC660;
  }

  else
  {
    *(v4 + 832) = a1;
    v5 = sub_7BBC8C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_7BBC8C()
{
  v3 = v0[104];
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1(v3, 0, 1);
}

uint64_t sub_7BBDF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_7BBF38(__n128 a1)
{
  v67 = v1;
  v2 = v1[82];
  v59 = v1[81];
  v61 = v1[88];
  v3 = v1[79];
  v4 = v1[78];
  v5 = v1[71];
  v6 = v1[70];
  v7 = v1[69];
  v63 = v1[80];
  v65 = v1[65];
  v8 = v1[64];
  swift_willThrow();
  v9 = Logger.lyrics.unsafeMutableAddressor();
  (*(v6 + 16))(v5, v9, v7);
  v10 = *(v3 + 16);
  v10(v2, v8, v4);
  v10(v59, v61, v4);
  v10(v63, v8, v4);
  v11 = v65;
  swift_errorRetain();
  v12 = sub_AB4BA0();
  v13 = sub_AB9F50();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v1[95];
    v15 = v1[82];
    v57 = v1[81];
    v58 = v1[80];
    v16 = v1[79];
    v17 = v1[78];
    v60 = v1[70];
    v62 = v1[69];
    v64 = v1[71];
    v18 = v1[65];
    v19 = swift_slowAlloc();
    v66[0] = swift_slowAlloc();
    *v19 = 136447234;
    v1[62] = v18;
    v20 = sub_AB9350();
    v22 = sub_7AB3E0(v20, v21, v66);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2082;
    v1[63] = v14;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710, &qword_B309D0);
    v23 = sub_AB9350();
    v25 = sub_7AB3E0(v23, v24, v66);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2082;
    v26 = sub_AB85C0();
    if (v26)
    {
      v27 = 1702195828;
    }

    else
    {
      v27 = 0x65736C6166;
    }

    if (v26)
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v29 = *(v16 + 8);
    v29(v15, v17);
    v30 = sub_7AB3E0(v27, v28, v66);

    *(v19 + 24) = v30;
    *(v19 + 32) = 2082;
    v1[55] = sub_AB85A0();
    v1[56] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0, &qword_B32B20);
    v32 = sub_AB9350();
    v34 = v33;
    v29(v57, v17);
    v35 = sub_7AB3E0(v32, v34, v66);

    *(v19 + 34) = v35;
    *(v19 + 42) = 2082;
    v36 = sub_7B9D98();
    v38 = v37;
    v29(v58, v17);
    v39 = sub_7AB3E0(v36, v38, v66);

    *(v19 + 44) = v39;
    _os_log_impl(&dword_0, v12, v13, "Loader<%{public}s> loadLyrics(for:completion:) didn't parse TTML custom lyrics with error=%{public}s song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v19, 0x34u);
    swift_arrayDestroy();

    (*(v60 + 8))(v64, v62);
  }

  else
  {
    v40 = v1[82];
    v41 = v1[81];
    v42 = v1[80];
    v43 = v1[79];
    v44 = v1[78];
    v45 = v1[71];
    v46 = v12;
    v47 = v1[70];
    v48 = v1[69];

    v29 = *(v43 + 8);
    v29(v42, v44);
    v29(v41, v44);
    v29(v40, v44);
    (*(v47 + 8))(v45, v48);
  }

  v49 = v1[94];
  v50 = v1[93];
  v51 = v1[92];
  v52 = v1[88];
  v53 = v1[78];
  sub_7C2A4C();
  swift_allocError();
  *v54 = 0;
  swift_willThrow();

  sub_466A4(v51, v50);
  v29(v52, v53);

  v55 = v1[1];

  return v55();
}

uint64_t sub_7BC4F4()
{
  v1 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  sub_466B8(v0[97], v0[98]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_7BC660()
{
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_7BC7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_AB94B0();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_AB94B0();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_ABB3C0();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_AB94B0();
      v7 = v9;
    }

    while (v9);
  }

  sub_AB94B0();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t *sub_7BC914(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710, &qword_B309D0);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_7BC9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B60, &qword_B2B368);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = aBlock - v11;
  v13 = objc_allocWithZone(MSVLyricsTTMLParser);
  isa = sub_AB3250().super.isa;
  v15 = [v13 initWithTTMLData:isa];

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a4;
  v18[1] = a5;
  aBlock[4] = sub_7C3F9C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_17_5;
  v19 = _Block_copy(aBlock);

  [v15 parseWithCompletion:v19];
  _Block_release(v19);
}

void sub_7BCC10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for Lyrics(0);
    swift_allocObject();
    v8 = a1;

    Lyrics.init(identifier:songInfo:)(a4, a5, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B60, &qword_B2B368);
    sub_AB98D0();
  }

  else
  {
    if (!a2)
    {
      sub_7C2A4C();
      swift_allocError();
      *v9 = 3;
    }

    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B60, &qword_B2B368);
    sub_AB98C0();
  }
}

uint64_t sub_7BCE34()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_AB4A80();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_12E1C(*(v0 + 32), &qword_E17B08, &qword_B2B200);
    sub_7C2A4C();
    swift_allocError();
    *v5 = 4;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = sub_7BCFC4;
    v9 = *(v0 + 56);

    return LyricsLoader.loadLyrics(for:)(v9);
  }
}

uint64_t sub_7BCFC4(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = sub_7BD19C;
  }

  else
  {
    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = sub_7BD100;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_7BD100()
{
  v1 = *(v0 + 96);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v2 = *(v0 + 8);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2(v3, v4, v1 & 1);
}

uint64_t sub_7BD19C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

id static LyricsLoader.requiredProperties()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3D0, &qword_B315F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_AF85D0;
  *(v0 + 32) = sub_AB92A0();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_AB92A0();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_AB92A0();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_AB92A0();
  *(v0 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B10, &qword_B2B208);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF4EC0;
  *(v7 + 32) = sub_AB92A0();
  *(v7 + 40) = v8;
  isa = sub_AB9740().super.isa;

  v10 = objc_opt_self();
  v11 = [v10 propertySetWithProperties:isa];

  *(inited + 48) = v11;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_AF85D0;
  *(v13 + 32) = sub_AB92A0();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_AB92A0();
  *(v13 + 56) = v15;
  *(v13 + 64) = sub_AB92A0();
  *(v13 + 72) = v16;
  *(v13 + 80) = sub_AB92A0();
  *(v13 + 88) = v17;
  v18 = sub_AB9740().super.isa;

  v19 = [v10 propertySetWithProperties:v18];

  *(inited + 72) = v19;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_AF4EC0;
  *(v21 + 32) = sub_AB92A0();
  *(v21 + 40) = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_AF4EC0;
  *(v23 + 32) = sub_AB92A0();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_AF4EC0;
  *(v25 + 32) = sub_AB92A0();
  *(v25 + 40) = v26;
  v27 = sub_AB9740().super.isa;

  v28 = [v10 propertySetWithProperties:v27];

  *(v23 + 48) = v28;
  sub_7B6DB4(v23);
  swift_setDeallocating();
  sub_12E1C(v23 + 32, &qword_E17B18, &qword_B2B210);
  v29 = objc_allocWithZone(MPPropertySet);
  v30 = sub_AB9740().super.isa;

  sub_7C3DE8();
  v31 = sub_AB8FD0().super.isa;

  v32 = [v29 initWithProperties:v30 relationships:v31];

  *(inited + 96) = v32;
  sub_7B6DB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B18, &qword_B2B210);
  swift_arrayDestroy();
  v33 = objc_allocWithZone(MPPropertySet);
  v34 = sub_AB9740().super.isa;

  v35 = sub_AB8FD0().super.isa;

  v36 = [v33 initWithProperties:v34 relationships:v35];

  return v36;
}

uint64_t sub_7BD6F8(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  v3 = sub_AB9300();
  v2[80] = v3;
  v2[81] = *(v3 - 8);
  v2[82] = swift_task_alloc();
  v4 = sub_AB86C0();
  v2[83] = v4;
  v2[84] = *(v4 - 8);
  v2[85] = swift_task_alloc();
  v5 = sub_AB4BC0();
  v2[86] = v5;
  v2[87] = *(v5 - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v6 = sub_AB7DB0();
  v2[96] = v6;
  v2[97] = *(v6 - 8);
  v2[98] = swift_task_alloc();
  v7 = sub_AB7D90();
  v2[99] = v7;
  v2[100] = *(v7 - 8);
  v2[101] = swift_task_alloc();
  v8 = sub_AB2A90();
  v2[102] = v8;
  v2[103] = *(v8 - 8);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v9 = sub_AB2C10();
  v2[106] = v9;
  v2[107] = *(v9 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B68, &qword_B2B370);
  v2[111] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B70, &qword_B2B378);
  v2[112] = swift_task_alloc();
  v10 = sub_AB35A0();
  v2[113] = v10;
  v2[114] = *(v10 - 8);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B78, &qword_B2B380);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v11 = sub_AB35C0();
  v2[123] = v11;
  v2[124] = *(v11 - 8);
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B80, &qword_B2B388);
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060, &qword_B29C60);
  v2[130] = swift_task_alloc();
  v12 = sub_AB31C0();
  v2[131] = v12;
  v2[132] = *(v12 - 8);
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();

  return _swift_task_switch(sub_7BDD2C, 0, 0);
}

uint64_t sub_7BDD2C(uint64_t a1)
{
  v253 = v1;
  v2 = v1;
  sub_AB85F0();
  v250 = v1;
  if (!v3)
  {
    v47 = v1[90];
    v48 = v1[87];
    v49 = v1[86];
    v50 = Logger.lyrics.unsafeMutableAddressor();
    (*(v48 + 16))(v47, v50, v49);
    v51 = sub_AB4BA0();
    v52 = sub_AB9F30();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "fetchStoreLyrics: song has no storeID", v53, 2u);
    }

    v54 = v2[90];
    v55 = v2[87];
    v56 = v2[86];

    (*(v55 + 8))(v54, v56);
    sub_7C2A4C();
    swift_allocError();
    v58 = 2;
    goto LABEL_21;
  }

  BagProvider.shared.unsafeMutableAddressor();

  v4 = BagProvider.bag.getter();
  v1[135] = v4;

  if (!v4)
  {
    v59 = v1[91];
    v60 = v1[87];
    v61 = v1[86];

    v62 = Logger.lyrics.unsafeMutableAddressor();
    (*(v60 + 16))(v59, v62, v61);
    v63 = sub_AB4BA0();
    v64 = sub_AB9F30();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_0, v63, v64, "fetchStoreLyrics: Bag is nil", v65, 2u);
    }

    v66 = v2[91];
    v67 = v2[87];
    v68 = v2[86];

    (*(v67 + 8))(v66, v68);
    sub_7C2A4C();
    swift_allocError();
    v58 = 3;
LABEL_21:
    *v57 = v58;
    swift_willThrow();
LABEL_27:

    v80 = v250[1];

    return v80();
  }

  v5 = LyricsOptionsManager.shared.unsafeMutableAddressor();
  v6 = *(**v5 + 120);

  v7 = v4;
  v6(v4);

  v8 = [v7 stringForBagKey:ICURLBagKeyCountryCode];
  if (!v8)
  {
LABEL_23:

LABEL_24:
    v69 = v2[92];
    v70 = v2[87];
    v71 = v2[86];
    v72 = Logger.lyrics.unsafeMutableAddressor();
    (*(v70 + 16))(v69, v72, v71);
    v73 = sub_AB4BA0();
    v74 = sub_AB9F30();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_0, v73, v74, "fetchStoreLyrics: Unable to get the domain from the bag", v75, 2u);
    }

    v76 = v2[92];
    v77 = v2[87];
    v78 = v2[86];

    (*(v77 + 8))(v76, v78);
    sub_7C2A4C();
    swift_allocError();
    *v79 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v9 = v8;
  v10 = sub_AB92A0();
  v12 = v11;

  v13 = [v7 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v13 || (v14 = v13, v15 = sub_AB8FF0(), v14, sub_837374(v15), v17 = v16, , !v17))
  {
LABEL_22:

    goto LABEL_23;
  }

  v18 = sub_AB92A0();
  if (!*(v17 + 16))
  {

    goto LABEL_31;
  }

  v20 = sub_2EBF88(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_31:

    v2 = v250;
    goto LABEL_24;
  }

  v2 = v250;
  v23 = v250 + 75;
  sub_9ACA0(*(v17 + 56) + 40 * v20, (v250 + 23));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B88, &qword_B2B390);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v24 = *v23;
  if (!*(*v23 + 16) || (v25 = sub_2EBF88(0x746C7561666564, 0xE700000000000000), (v26 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_9ACA0(*(v24 + 56) + 40 * v25, (v250 + 18));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v245 = v250[132];
  v247 = v250[131];
  v243 = v250[130];
  v27 = v250[62];
  v28 = v250[63];
  sub_ABAD90(49);

  v251 = 0x2F2F3A7370747468;
  v252 = 0xE800000000000000;
  v255._countAndFlagsBits = v27;
  v255._object = v28;
  sub_AB94A0(v255);

  v256._countAndFlagsBits = 0x617461632F31762FLL;
  v256._object = 0xEC0000002F676F6CLL;
  sub_AB94A0(v256);
  v257._countAndFlagsBits = v10;
  v257._object = v12;
  sub_AB94A0(v257);
  v258._countAndFlagsBits = 0x2F73676E6F732FLL;
  v258._object = 0xE700000000000000;
  sub_AB94A0(v258);
  v29 = sub_AB8040();
  v31 = v30;

  v259._countAndFlagsBits = v29;
  v259._object = v31;
  sub_AB94A0(v259);

  v260._object = 0x8000000000B74B00;
  v260._countAndFlagsBits = 0xD000000000000010;
  sub_AB94A0(v260);
  sub_AB3180();
  if ((*(v245 + 48))(v243, 1, v247) == 1)
  {
    v32 = v250[130];
    v33 = v250[93];
    v34 = v250[87];
    v35 = v250[86];

    sub_12E1C(v32, &qword_E17060, &qword_B29C60);
    v36 = Logger.lyrics.unsafeMutableAddressor();
    (*(v34 + 16))(v33, v36, v35);

    v37 = sub_AB4BA0();
    v38 = sub_AB9F30();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v250[93];
    v41 = v250[87];
    v42 = v250[86];
    if (v39)
    {
      v43 = v250[93];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v251 = v45;
      *v44 = 136446210;
      v46 = sub_7AB3E0(0x2F2F3A7370747468, 0xE800000000000000, &v251);

      *(v44 + 4) = v46;
      _os_log_impl(&dword_0, v37, v38, "fetchStoreLyrics: Couldn't build URL: %{public}s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);

      (*(v41 + 8))(v43, v42);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
    }

    sub_7C2A4C();
    swift_allocError();
    *v173 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v82 = v250[134];
  v83 = v250[132];
  v84 = v250[131];
  v85 = v250[130];
  v86 = v250[129];
  v87 = v250[124];
  v248 = v250[123];

  (*(v83 + 32))(v82, v85, v84);
  v234 = *(v87 + 56);
  v234(v86, 1, 1, v248);
  v88 = sub_AB34D0();
  v89 = v88;
  v90 = *(v88 + 16);
  if (!v90)
  {
    v228 = 0;
    v229 = _swiftEmptyArrayStorage;
    v242 = _swiftEmptyArrayStorage;
    goto LABEL_84;
  }

  v228 = 0;
  v91 = 0;
  v92 = v250[124];
  v238 = (v92 + 48);
  v233 = (v92 + 16);
  v93 = (v250[114] + 8);
  v94 = (v92 + 8);
  v95 = v88 + 40;
  v236 = -v90;
  v237 = v94;
  v229 = _swiftEmptyArrayStorage;
  v242 = _swiftEmptyArrayStorage;
  v239 = v88;
  v227 = v88 + 40;
  do
  {
    v96 = v95 + 16 * v91;
    v97 = v91 + 1;
    while (1)
    {
      v249 = v97;
      if ((v97 - 1) >= *(v89 + 16))
      {
        __break(1u);
      }

      v100 = v93;
      v101 = v2[129];
      v102 = v2[128];
      v103 = v2[123];
      v246 = v96;

      sub_AB3480();
      sub_7C4070(v101, v102);
      if ((*v238)(v102, 1, v103) == 1)
      {
        v104 = v2[129];
        v105 = v2[128];
        v106 = v2[126];
        v107 = v2[123];
        sub_12E1C(v104, &qword_E17B80, &qword_B2B388);
        sub_12E1C(v105, &qword_E17B80, &qword_B2B388);
        (*v233)(v104, v106, v107);
        v234(v104, 0, 1, v107);
      }

      else
      {
        sub_12E1C(v2[128], &qword_E17B80, &qword_B2B388);
      }

      v108 = v2[122];
      v109 = v2[119];
      v110 = v2[113];
      sub_AB35B0();
      sub_AB3570();
      v244 = *v93;
      (*v93)(v109, v110);
      v111 = sub_AB34C0();
      v112 = *(v111 - 8);
      v241 = *(v112 + 48);
      v240 = v112;
      if (v241(v108, 1, v111) == 1)
      {
        sub_12E1C(v2[122], &qword_E17B78, &qword_B2B380);
      }

      else
      {
        v113 = v2[122];
        v114 = sub_AB34A0();
        v115 = v112;
        v116 = v114;
        v118 = v117;
        (*(v115 + 8))(v113, v111);
        v2[64] = sub_AB3490();
        v2[65] = v119;
        v2[56] = 45;
        v2[57] = 0xE100000000000000;
        sub_7ABE60();
        LOBYTE(v113) = sub_ABAB20();

        if (v113)
        {

          v120 = sub_AB3490();
          v122 = v121;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v242 = sub_8A4C44(0, *(v242 + 2) + 1, 1, v242);
          }

          v124 = *(v242 + 2);
          v123 = *(v242 + 3);
          if (v124 >= v123 >> 1)
          {
            v242 = sub_8A4C44((v123 > 1), v124 + 1, 1, v242);
          }

          *(v242 + 2) = v124 + 1;
          v125 = &v242[16 * v124];
          *(v125 + 4) = v120;
          *(v125 + 5) = v122;
        }

        else
        {
          v126 = v2[112];
          v251 = v116;
          v252 = v118;
          v261._countAndFlagsBits = 45;
          v261._object = 0xE100000000000000;
          sub_AB94A0(v261);
          sub_AB3540();
          v127 = sub_AB3510();
          v128 = v2;
          v129 = *(v127 - 8);
          v130 = (*(v129 + 48))(v126, 1, v127);
          v131 = v128[112];
          if (v130 == 1)
          {
            sub_12E1C(v131, &qword_E17B70, &qword_B2B378);
            v132._countAndFlagsBits = sub_AB9390();
            object = v132._object;
          }

          else
          {
            v134 = sub_AB3500();
            object = v135;
            (*(v129 + 8))(v131, v127);
            v132._countAndFlagsBits = v134;
          }

          v132._object = object;
          sub_AB94A0(v132);

          v136 = v251;
          v137 = v252;
          v2 = v250;
          v93 = v100;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v242 = sub_8A4C44(0, *(v242 + 2) + 1, 1, v242);
          }

          v139 = *(v242 + 2);
          v138 = *(v242 + 3);
          if (v139 >= v138 >> 1)
          {
            v242 = sub_8A4C44((v138 > 1), v139 + 1, 1, v242);
          }

          *(v242 + 2) = v139 + 1;
          v140 = &v242[16 * v139];
          *(v140 + 4) = v136;
          *(v140 + 5) = v137;
        }
      }

      *(v2 + 1194) = 6;
      v141 = sub_7C40E0();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v141) & 1) == 0)
      {
        (*v237)(v2[126], v2[123]);
LABEL_63:
        v89 = v239;
LABEL_64:
        v99 = v249;
        goto LABEL_37;
      }

      v235 = v111;
      v142 = v2[118];
      v143 = v2[113];
      v144 = v2[111];
      sub_AB35B0();
      sub_AB3590();
      v244(v142, v143);
      v145 = sub_AB3530();
      v146 = v93;
      v147 = *(v145 - 8);
      if ((*(v147 + 48))(v144, 1, v145) != 1)
      {
        break;
      }

      v98 = v2[111];
      (*v237)(v2[126], v2[123]);
      sub_12E1C(v98, &qword_E17B68, &qword_B2B370);
      v89 = v239;
      v99 = v249;
      v93 = v146;
LABEL_37:
      v96 = v246 + 16;
      v97 = v99 + 1;
      if (v236 + v97 == 1)
      {
        goto LABEL_84;
      }
    }

    v148 = v2[121];
    v149 = v2;
    v150 = v2[117];
    v231 = v149[113];
    v151 = v149[111];
    v230 = sub_AB3520();
    v232 = v152;
    (*(v147 + 8))(v151, v145);
    sub_AB35B0();
    sub_AB3570();
    v244(v150, v231);
    v93 = v146;
    if (v241(v148, 1, v235) == 1)
    {
      v153 = v149[121];
      (*v237)(v149[126], v149[123]);

      sub_12E1C(v153, &qword_E17B78, &qword_B2B380);
      v2 = v149;
      goto LABEL_63;
    }

    v154 = v149[121];
    v155 = sub_AB34A0();
    v157 = v156;
    (*(v240 + 8))(v154, v235);
    v158 = Lyrics.scriptMap.unsafeMutableAddressor();
    v159 = *v158;
    v2 = v149;
    if (*(*v158 + 16))
    {

      v160 = v232;
      v161 = sub_2EBF88(v230, v232);
      if (v162)
      {
        v163 = (*(v159 + 56) + 16 * v161);
        v164 = v163[1];
        v230 = *v163;

        v160 = v164;
      }
    }

    else
    {
      v160 = v232;
    }

    v251 = v155;
    v252 = v157;
    v262._countAndFlagsBits = 45;
    v262._object = 0xE100000000000000;
    sub_AB94A0(v262);
    v263._countAndFlagsBits = v230;
    v263._object = v160;
    sub_AB94A0(v263);
    v165 = v157;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v229 = sub_8A4C44(0, *(v229 + 2) + 1, 1, v229);
    }

    v167 = *(v229 + 2);
    v166 = *(v229 + 3);
    if (v167 >= v166 >> 1)
    {
      v229 = sub_8A4C44((v166 > 1), v167 + 1, 1, v229);
    }

    *(v229 + 2) = v167 + 1;
    v168 = &v229[16 * v167];
    *(v168 + 4) = v155;
    *(v168 + 5) = v165;
    v169 = Lyrics.defaultScript.unsafeMutableAddressor();
    v170 = v2[126];
    v171 = v2[123];
    if (v230 != *v169 || v160 != *(v169 + 1))
    {
      v172 = sub_ABB3C0();

      (*v237)(v170, v171);
      v89 = v239;
      if (v172)
      {
        goto LABEL_79;
      }

      goto LABEL_64;
    }

    (*v237)(v170, v171);
    v89 = v239;
LABEL_79:
    v228 = 1;
    v91 = v249;
    v95 = v227;
  }

  while (v236 + v249);
LABEL_84:
  v174 = v2[129];
  v175 = v2[127];
  v176 = v2[124];
  v177 = v2[123];

  sub_7C4070(v174, v175);
  if ((*(v176 + 48))(v175, 1, v177) == 1)
  {
    sub_12E1C(v2[127], &qword_E17B80, &qword_B2B388);
  }

  else
  {
    (*(v2[124] + 32))(v2[125], v2[127], v2[123]);
    if ((v228 & 1) != 0 || (v178 = v2[116], v179 = v2[114], v180 = v2[113], v181 = *v5, , sub_AB35B0(), v182 = (*(*v181 + 256))(v178), , v183 = *(v179 + 8), v183(v178, v180), (v182 & 1) == 0))
    {
      (*(v2[124] + 8))(v2[125], v2[123]);
    }

    else
    {
      v184 = v2[120];
      v185 = v2[115];
      v186 = v2[113];
      sub_AB35B0();
      sub_AB3570();
      v183(v185, v186);
      v187 = sub_AB34C0();
      v188 = *(v187 - 8);
      if ((*(v188 + 48))(v184, 1, v187) == 1)
      {
        v189 = v2[120];
        (*(v2[124] + 8))(v2[125], v2[123]);
        sub_12E1C(v189, &qword_E17B78, &qword_B2B380);
      }

      else
      {
        v215 = v2[120];
        v216 = sub_AB34A0();
        v218 = v217;
        (*(v188 + 8))(v215, v187);
        v251 = v216;
        v252 = v218;
        v264._countAndFlagsBits = 45;
        v264._object = 0xE100000000000000;
        sub_AB94A0(v264);
        v219 = Lyrics.defaultScript.unsafeMutableAddressor();
        v221 = *v219;
        v220 = v219[1];

        v265._countAndFlagsBits = v221;
        v265._object = v220;
        sub_AB94A0(v265);

        v223 = v251;
        v222 = v218;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v229 = sub_8A4C44(0, *(v229 + 2) + 1, 1, v229);
        }

        v225 = *(v229 + 2);
        v224 = *(v229 + 3);
        if (v225 >= v224 >> 1)
        {
          v229 = sub_8A4C44((v224 > 1), v225 + 1, 1, v229);
        }

        v2 = v250;
        (*(v250[124] + 8))(v250[125], v250[123]);
        *(v229 + 2) = v225 + 1;
        v226 = &v229[16 * v225];
        *(v226 + 4) = v223;
        *(v226 + 5) = v222;
      }
    }
  }

  v2[72] = v242;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B98, &qword_B2B398);
  sub_7C4134();
  sub_AB9140();

  sub_AB2BE0();

  v190 = sub_8A4D50(0, 1, 1, _swiftEmptyArrayStorage);
  v192 = *(v190 + 2);
  v191 = *(v190 + 3);
  if (v192 >= v191 >> 1)
  {
    v190 = sub_8A4D50((v191 > 1), v192 + 1, 1, v190);
  }

  v193 = v2[110];
  v194 = v2[107];
  v195 = v2[106];
  *(v190 + 2) = v192 + 1;
  v197 = *(v194 + 32);
  v194 += 32;
  v196 = v197;
  v198 = (*(v194 + 48) + 32) & ~*(v194 + 48);
  v199 = *(v194 + 40);
  v197(&v190[v198 + v199 * v192], v193, v195);
  *(v2 + 1193) = 6;
  v200 = sub_7C40E0();
  v2[136] = v200;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v200))
  {
    v2[76] = v229;
    sub_AB9140();

    sub_AB2BE0();

    v202 = *(v190 + 2);
    v201 = *(v190 + 3);
    if (v202 >= v201 >> 1)
    {
      v190 = sub_8A4D50((v201 > 1), v202 + 1, 1, v190);
    }

    v203 = v2[109];
    v204 = v2[106];
    *(v190 + 2) = v202 + 1;
    v196(&v190[v198 + v202 * v199], v203, v204);
    sub_AB2BE0();
    v206 = *(v190 + 2);
    v205 = *(v190 + 3);
    if (v206 >= v205 >> 1)
    {
      v190 = sub_8A4D50((v205 > 1), v206 + 1, 1, v190);
    }

    v207 = v2[108];
    v208 = v2[106];
    *(v190 + 2) = v206 + 1;
    v196(&v190[v198 + v206 * v199], v207, v208);
  }

  else
  {
  }

  v209 = v2[105];
  v210 = v2[104];
  v211 = v2[103];
  v212 = v2[102];
  sub_AB31A0();

  sub_AB2A50();
  (*(v211 + 16))(v210, v209, v212);
  sub_AB7D70();
  v213 = swift_task_alloc();
  v2[137] = v213;
  *v213 = v2;
  v213[1] = sub_7BF85C;
  v214 = v2[98];

  return MusicDataRequest.response()(v214);
}

uint64_t sub_7BF85C()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_7C0D4C;
  }

  else
  {
    v2 = sub_7BF99C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7BF99C()
{
  v121 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v119 = 0x3C726564616F4CLL;
  v120 = 0xE700000000000000;
  *(v0 + 560) = v6;
  v123._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v123);

  v124._countAndFlagsBits = 62;
  v124._object = 0xE100000000000000;
  sub_AB94A0(v124);
  v8 = v120;
  v107 = v119;
  v9 = Logger.lyrics.unsafeMutableAddressor();
  *(v0 + 1112) = v9;
  v10 = *(v2 + 16);
  *(v0 + 1120) = v10;
  *(v0 + 1128) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v112 = v9;
  v110 = v10;
  v10(v1);
  (*(v4 + 16))(v3, v7, v5);

  v11 = sub_AB4BA0();
  v12 = sub_AB9F50();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 760);
  v15 = *(v0 + 696);
  v115 = *(v0 + 688);
  v16 = *(v0 + 680);
  v17 = *(v0 + 672);
  v18 = *(v0 + 664);
  if (v13)
  {
    v105 = *(v0 + 760);
    v19 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v19 = 136446466;
    v20 = sub_7AB3E0(v107, v8, &v119);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2082;
    v21 = sub_7B9D98();
    v23 = v22;
    (*(v17 + 8))(v16, v18);
    v24 = sub_7AB3E0(v21, v23, &v119);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_0, v11, v12, "%{public}s loadLyrics(for:completion:) completed for %{public}s", v19, 0x16u);
    swift_arrayDestroy();

    v25 = *(v15 + 8);
    v25(v105, v115);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    v25 = *(v15 + 8);
    v25(v14, v115);
  }

  *(v0 + 1136) = v25;
  v26 = *(v0 + 1088);
  *(v0 + 1192) = 6;
  v27 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v26);
  if (v27)
  {
    v28 = 0xD000000000000011;
  }

  else
  {
    v28 = 1819112564;
  }

  if (v27)
  {
    v29 = 0x8000000000B74B20;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  v30 = objc_opt_self();
  v31 = sub_AB7DA0();
  v33 = v32;
  isa = sub_AB3250().super.isa;
  sub_466B8(v31, v33);
  *(v0 + 536) = 0;
  v35 = [v30 JSONObjectWithData:isa options:0 error:v0 + 536];

  v36 = *(v0 + 536);
  if (!v35)
  {
    v55 = *(v0 + 784);
    v56 = *(v0 + 776);
    v57 = *(v0 + 768);
    v58 = v36;

    sub_AB3050();

    swift_willThrow();
    (*(v56 + 8))(v55, v57);
LABEL_37:
    v73 = *(v0 + 712);
    v74 = *(v0 + 696);
    v75 = *(v0 + 688);
    v76 = Logger.lyrics.unsafeMutableAddressor();
    (*(v74 + 16))(v73, v76, v75);
    swift_errorRetain();
    v77 = sub_AB4BA0();
    v78 = sub_AB9F30();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138543362;
      swift_errorRetain();
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 4) = v81;
      *v80 = v81;
      _os_log_impl(&dword_0, v77, v78, "Data request error: %{public}@", v79, 0xCu);
      sub_12E1C(v80, &qword_E175A0, &qword_B2A1D0);
    }

    v106 = *(v0 + 1080);
    v82 = *(v0 + 1056);
    v114 = *(v0 + 1048);
    v118 = *(v0 + 1072);
    v111 = *(v0 + 840);
    v113 = *(v0 + 1032);
    v83 = *(v0 + 824);
    v109 = *(v0 + 816);
    v84 = *(v0 + 808);
    v85 = *(v0 + 800);
    v86 = *(v0 + 792);
    v87 = v77;
    v88 = *(v0 + 712);
    v89 = *(v0 + 696);
    v90 = *(v0 + 688);

    (*(v89 + 8))(v88, v90);
    swift_willThrow();

    (*(v85 + 8))(v84, v86);
    (*(v83 + 8))(v111, v109);
    sub_12E1C(v113, &qword_E17B80, &qword_B2B388);
    (*(v82 + 8))(v118, v114);

    v91 = *(v0 + 8);

    return v91();
  }

  v37 = v36;
  sub_ABAB50();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17BA8, &qword_B2B3A0);
  if (swift_dynamicCast())
  {
    v38 = *(v0 + 528);
  }

  else
  {
    v38 = 0;
  }

  if (!v38 || !*(v38 + 16))
  {
    goto LABEL_32;
  }

  v39 = sub_2EBF88(1635017060, 0xE400000000000000);
  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

  v41 = v0 + 616;
  sub_808B0(*(v38 + 56) + 32 * v39, v0 + 384);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17BB8, &qword_B2B3B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!*(*v41 + 16))
  {
LABEL_31:

LABEL_32:

    goto LABEL_33;
  }

  sub_808B0(*v41 + 32, v0 + 224);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v42 = *(v0 + 552);
  if (!*(v42 + 16))
  {
    goto LABEL_44;
  }

  v43 = sub_2EBF88(0x7475626972747461, 0xEA00000000007365);
  if ((v44 & 1) == 0)
  {
    goto LABEL_44;
  }

  v45 = (v0 + 568);
  sub_808B0(*(v42 + 56) + 32 * v43, v0 + 352);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v46 = *v45;
  if (!*(*v45 + 16))
  {
LABEL_44:

    goto LABEL_32;
  }

  v47 = sub_2EBF88(v28, v29);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_808B0(*(v46 + 56) + 32 * v47, v0 + 320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v116 = v25;
  v50 = *(v0 + 656);
  v51 = *(v0 + 648);
  v108 = *(v0 + 640);
  sub_AB92F0();
  v52 = sub_AB92B0();
  v54 = v53;

  *(v0 + 1144) = v52;
  *(v0 + 1152) = v54;
  (*(v51 + 8))(v50, v108);
  if (v54 >> 60 == 15)
  {
LABEL_27:

LABEL_28:
    v25 = v116;
LABEL_33:
    v110(*(v0 + 752), v112, *(v0 + 688));

    v59 = sub_AB4BA0();
    v60 = sub_AB9F30();

    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 752);
    v63 = *(v0 + 688);
    if (v61)
    {
      v64 = swift_slowAlloc();
      v117 = v25;
      v65 = swift_slowAlloc();
      v119 = v65;
      *v64 = 136446210;
      *(v0 + 544) = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17BB0, &qword_B2B3A8);
      v66 = sub_AB9350();
      v68 = sub_7AB3E0(v66, v67, &v119);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_0, v59, v60, "Invalid response: %{public}s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);

      v117(v62, v63);
    }

    else
    {

      v25(v62, v63);
    }

    v69 = *(v0 + 784);
    v70 = *(v0 + 776);
    v71 = *(v0 + 768);
    sub_7C2A4C();
    swift_allocError();
    *v72 = 1;
    swift_willThrow();
    (*(v70 + 8))(v69, v71);
    goto LABEL_37;
  }

  v25 = v116;
  if (!*(v46 + 16) || (v93 = sub_2EBF88(0x6172615079616C70, 0xEA0000000000736DLL), (v94 & 1) == 0))
  {
    sub_466A4(v52, v54);
    goto LABEL_32;
  }

  v95 = v54;
  v96 = (v0 + 584);
  sub_808B0(*(v46 + 56) + 32 * v93, v0 + 288);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_56;
  }

  v97 = *v96;
  if (!*(*v96 + 16) || (v98 = sub_2EBF88(25705, 0xE200000000000000), (v99 & 1) == 0))
  {
    sub_466A4(v52, v95);
    goto LABEL_27;
  }

  sub_808B0(*(v97 + 56) + 32 * v98, v0 + 256);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    sub_466A4(v52, v95);
    goto LABEL_28;
  }

  v100 = *(v0 + 488);
  *(v0 + 1160) = *(v0 + 480);
  *(v0 + 1168) = v100;
  v101 = objc_allocWithZone(MSVLyricsTTMLParser);
  sub_90090(v52, v95);
  v102 = sub_AB3250().super.isa;
  v103 = [v101 initWithTTMLData:v102];
  *(v0 + 1176) = v103;

  sub_466A4(v52, v95);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 592;
  *(v0 + 24) = sub_7C0848;
  v104 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B00, &qword_B2B1F0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_7BC914;
  *(v0 + 104) = &block_descriptor_21_2;
  *(v0 + 112) = v104;
  [v103 parseWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_7C0848()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1184) = v1;
  if (v1)
  {

    v2 = sub_7C1198;
  }

  else
  {
    v2 = sub_7C098C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_7C098C()
{
  v14 = v0[146];
  v1 = v0[145];
  v18 = v0[147];
  v19 = v0[144];
  v17 = v0[143];
  v23 = v0[134];
  v2 = v0[132];
  v22 = v0[131];
  v20 = v0[135];
  v21 = v0[129];
  v16 = v0[105];
  v3 = v0[103];
  v15 = v0[102];
  v13 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[74];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(v1, v14, v9);

  sub_466A4(v17, v19);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v13, v5);
  (*(v3 + 8))(v16, v15);
  sub_12E1C(v21, &qword_E17B80, &qword_B2B388);
  (*(v2 + 8))(v23, v22);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_7C0D4C(uint64_t a1)
{
  v2 = v1[89];
  v3 = v1[87];
  v4 = v1[86];
  v5 = Logger.lyrics.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_AB4BA0();
  v7 = sub_AB9F30();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v6, v7, "Data request error: %{public}@", v8, 0xCu);
    sub_12E1C(v9, &qword_E175A0, &qword_B2A1D0);
  }

  v11 = v1[135];
  v12 = v1[132];
  v26 = v1[131];
  v27 = v1[134];
  v24 = v1[105];
  v25 = v1[129];
  v13 = v6;
  v14 = v1[103];
  v23 = v1[102];
  v15 = v1[101];
  v16 = v1[100];
  v17 = v1[99];
  v18 = v1[89];
  v19 = v1[87];
  v20 = v1[86];

  (*(v19 + 8))(v18, v20);
  swift_willThrow();

  (*(v16 + 8))(v15, v17);
  (*(v14 + 8))(v24, v23);
  sub_12E1C(v25, &qword_E17B80, &qword_B2B388);
  (*(v12 + 8))(v27, v26);

  v21 = v1[1];

  return v21();
}

uint64_t sub_7C1198(__n128 a1)
{
  v2 = v1[140];
  v3 = v1[139];
  v4 = v1[88];
  v5 = v1[86];
  swift_willThrow();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = sub_AB4BA0();
  v7 = sub_AB9F30();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v6, v7, "Parsing error: %{public}@", v8, 0xCu);
    sub_12E1C(v9, &qword_E175A0, &qword_B2A1D0);
  }

  v11 = v1[147];
  v12 = v1[144];
  v13 = v1[143];
  v14 = v1[142];
  v15 = v1[97];
  v43 = v1[96];
  v45 = v1[98];
  v16 = v1[88];
  v17 = v1[86];

  v14(v16, v17);
  swift_willThrow();

  sub_466A4(v13, v12);
  (*(v15 + 8))(v45, v43);
  v18 = v1[89];
  v19 = v1[87];
  v20 = v1[86];
  v21 = Logger.lyrics.unsafeMutableAddressor();
  (*(v19 + 16))(v18, v21, v20);
  swift_errorRetain();
  v22 = sub_AB4BA0();
  v23 = sub_AB9F30();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138543362;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&dword_0, v22, v23, "Data request error: %{public}@", v24, 0xCu);
    sub_12E1C(v25, &qword_E175A0, &qword_B2A1D0);
  }

  v27 = v1[135];
  v28 = v1[132];
  v42 = v1[131];
  v44 = v1[134];
  v40 = v1[105];
  v41 = v1[129];
  v29 = v22;
  v30 = v1[103];
  v39 = v1[102];
  v31 = v1[101];
  v32 = v1[100];
  v33 = v1[99];
  v34 = v1[89];
  v35 = v1[87];
  v36 = v1[86];

  (*(v35 + 8))(v34, v36);
  swift_willThrow();

  (*(v32 + 8))(v31, v33);
  (*(v30 + 8))(v40, v39);
  sub_12E1C(v41, &qword_E17B80, &qword_B2B388);
  (*(v28 + 8))(v44, v42);

  v37 = v1[1];

  return v37();
}

id LyricsLoader.init()()
{
  v1 = OBJC_IVAR___MusicLyricsLoader_operationQueue;
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  [v2 setMaxConcurrentOperationCount:1];
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v4, "init");
}

id LyricsLoader.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(uint64_t a1)
{
  v2 = sub_AB86C0();
  v3 = *(v2 - 8);
  v180 = v2;
  v181 = v3;
  __chkstk_darwin();
  v5 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v178 = (&v169 - v6);
  __chkstk_darwin();
  v177 = (&v169 - v7);
  __chkstk_darwin();
  v176 = (&v169 - v8);
  __chkstk_darwin();
  v171 = &v169 - v9;
  __chkstk_darwin();
  v170 = &v169 - v10;
  __chkstk_darwin();
  v12 = &v169 - v11;
  __chkstk_darwin();
  v14 = &v169 - v13;
  __chkstk_darwin();
  v173 = (&v169 - v15);
  __chkstk_darwin();
  v172 = &v169 - v16;
  __chkstk_darwin();
  v175 = (&v169 - v17);
  __chkstk_darwin();
  v19 = &v169 - v18;
  v20 = sub_AB4BC0();
  v21 = *(v20 - 8);
  v183 = v20;
  v184 = v21;
  __chkstk_darwin();
  v23 = &v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = &v169 - v24;
  __chkstk_darwin();
  v174 = &v169 - v25;
  __chkstk_darwin();
  v27 = &v169 - v26;
  __chkstk_darwin();
  v29 = &v169 - v28;
  __chkstk_darwin();
  v31 = &v169 - v30;
  if ((sub_AB86B0() & 1) == 0 && (sub_AB85C0() & 1) == 0)
  {
    v59 = Logger.lyrics.unsafeMutableAddressor();
    v60 = v183;
    v61 = v184;
    (*(v184 + 16))(v23, v59, v183);
    v62 = v180;
    v63 = v181;
    (v181[2])(v5, a1, v180);
    v64 = sub_AB4BA0();
    v65 = sub_AB9F50();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v187 = v67;
      *v66 = 136446210;
      v68 = sub_7B9D98();
      v69 = v62;
      v71 = v70;
      (v63[1])(v5, v69);
      v72 = sub_7AB3E0(v68, v71, &v187);

      *(v66 + 4) = v72;
      _os_log_impl(&dword_0, v64, v65, "Loader supportsLyrics=false [hasLyrics and hasCustomLyrics were false] %{public}s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);

      (*(v184 + 8))(v23, v183);
    }

    else
    {

      (v63[1])(v5, v62);
      (*(v61 + 8))(v23, v60);
    }

    v143 = 0;
    return v143 & 1;
  }

  v182 = a1;
  BagProvider.shared.unsafeMutableAddressor();

  v32 = BagProvider.bag.getter();

  if (v32)
  {
    if (([objc_opt_self() supportsLyricsForURLBag:v32] & 1) == 0)
    {
      v73 = [v32 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
      v74 = v182;
      v75 = v180;
      if (v73)
      {

        v76 = Logger.lyrics.unsafeMutableAddressor();
        (*(v184 + 16))(v31, v76, v183);
        v77 = v181;
        v78 = v181[2];
        v78(v19, v74, v75);
        v79 = v175;
        v78(v175, v74, v75);
        v80 = sub_AB4BA0();
        v81 = sub_AB9F50();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v179 = v32;
          v83 = v82;
          v178 = swift_slowAlloc();
          v187 = v178;
          *v83 = 136446466;
          v177 = v80;
          v84 = sub_AB85C0();
          if (v84)
          {
            v85 = 1702195828;
          }

          else
          {
            v85 = 0x65736C6166;
          }

          LODWORD(v176) = v81;
          v86 = v75;
          if (v84)
          {
            v87 = 0xE400000000000000;
          }

          else
          {
            v87 = 0xE500000000000000;
          }

          v88 = v77[1];
          v88(v19, v86);
          v89 = sub_7AB3E0(v85, v87, &v187);

          *(v83 + 4) = v89;
          *(v83 + 12) = 2082;
          v90 = sub_7B9D98();
          v92 = v91;
          v88(v79, v86);
          v93 = sub_7AB3E0(v90, v92, &v187);

          *(v83 + 14) = v93;
          v94 = v177;
          _os_log_impl(&dword_0, v177, v176, "Loader supportsLyrics=%{public}s [no lyrics keys in bag] %{public}s", v83, 0x16u);
          swift_arrayDestroy();

          v32 = v179;
        }

        else
        {

          v164 = v77[1];
          v164(v79, v75);
          v164(v19, v75);
        }

        (*(v184 + 8))(v31, v183);
      }

      else
      {
        v144 = Logger.lyrics.unsafeMutableAddressor();
        (*(v184 + 16))(v29, v144, v183);
        v145 = v181;
        v146 = v181[2];
        v147 = v172;
        v146(v172, v74, v75);
        v148 = v173;
        v146(v173, v74, v75);
        v149 = sub_AB4BA0();
        v150 = sub_AB9F50();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v179 = v32;
          v152 = v151;
          v177 = swift_slowAlloc();
          v187 = v177;
          *v152 = 136446466;
          v176 = v149;
          v153 = sub_AB85C0();
          if (v153)
          {
            v154 = 1702195828;
          }

          else
          {
            v154 = 0x65736C6166;
          }

          v178 = v29;
          v155 = v148;
          if (v153)
          {
            v156 = 0xE400000000000000;
          }

          else
          {
            v156 = 0xE500000000000000;
          }

          LODWORD(v175) = v150;
          v157 = v145[1];
          v157(v147, v75);
          v158 = sub_7AB3E0(v154, v156, &v187);

          *(v152 + 4) = v158;
          *(v152 + 12) = 2082;
          v159 = sub_7B9D98();
          v161 = v160;
          v157(v155, v75);
          v162 = sub_7AB3E0(v159, v161, &v187);

          *(v152 + 14) = v162;
          v163 = v176;
          _os_log_impl(&dword_0, v176, v175, "Loader supportsLyrics=%{public}s [no musicSubscription key in bag] %{public}s", v152, 0x16u);
          swift_arrayDestroy();

          v32 = v179;

          (*(v184 + 8))(v178, v183);
        }

        else
        {

          v165 = v145[1];
          v165(v148, v75);
          v165(v147, v75);
          (*(v184 + 8))(v29, v183);
        }
      }

      v166 = sub_AB85C0();

      v143 = v166;
      return v143 & 1;
    }

    v33 = v183;
    v34 = v184;
    v36 = v180;
    v35 = v181;
    v37 = v176;
  }

  else
  {
    v38 = Logger.lyrics.unsafeMutableAddressor();
    v39 = v183;
    (*(v184 + 16))(v27, v38, v183);
    v35 = v181;
    v40 = v182;
    v41 = v181[2];
    v42 = v180;
    v41(v14, v182, v180);
    v41(v12, v40, v42);
    v43 = sub_AB4BA0();
    v44 = sub_AB9F50();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v187 = v175;
      *v45 = 136446466;
      v173 = v43;
      v46 = sub_AB85C0();
      if (v46)
      {
        v47 = 1702195828;
      }

      else
      {
        v47 = 0x65736C6166;
      }

      if (v46)
      {
        v48 = 0xE400000000000000;
      }

      else
      {
        v48 = 0xE500000000000000;
      }

      v49 = v180;
      LODWORD(v172) = v44;
      v50 = v181[1];
      v50(v14, v180);
      v51 = sub_7AB3E0(v47, v48, &v187);
      v35 = v181;

      *(v45 + 4) = v51;
      *(v45 + 12) = 2082;
      v52 = sub_7B9D98();
      v54 = v53;
      v50(v12, v49);
      v55 = v183;
      v34 = v184;
      v56 = sub_7AB3E0(v52, v54, &v187);

      *(v45 + 14) = v56;
      v57 = v173;
      _os_log_impl(&dword_0, v173, v172, "Loader supportsLyrics=%{public}s [bag is nil] %{public}s", v45, 0x16u);
      swift_arrayDestroy();

      v58 = v27;
      v33 = v55;
      (*(v34 + 8))(v58, v55);
      v36 = v49;
      v37 = v176;
    }

    else
    {

      v95 = v35[1];
      v96 = v12;
      v36 = v180;
      v95(v96, v180);
      v95(v14, v36);
      v97 = v184;
      (*(v184 + 8))(v27, v39);
      v37 = v176;
      v33 = v39;
      v34 = v97;
    }
  }

  v98 = sub_AB86B0();
  v99 = v179;
  v100 = v177;
  if (v98 & 1) != 0 && (static ApplicationCapabilities.shared.getter(v186), v101 = v186[4], , sub_70C54(v186), v102 = sub_472A84(2, v101), , (v102))
  {
    static ApplicationCapabilities.shared.getter(&v187);
    sub_70C54(&v187);
    if (v188)
    {
      v143 = 1;
      return v143 & 1;
    }

    v103 = Logger.lyrics.unsafeMutableAddressor();
    v104 = v174;
    (*(v34 + 16))(v174, v103, v33);
    v105 = v35[2];
    v106 = v170;
    v107 = v182;
    v105(v170, v182, v36);
    v108 = v35;
    v109 = v33;
    v110 = v171;
    v105(v171, v107, v36);
    v111 = sub_AB4BA0();
    v112 = sub_AB9F50();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v185 = v181;
      *v113 = 67240450;
      v114 = sub_AB85C0() & 1;
      v115 = v108[1];
      v115(v106, v36);
      *(v113 + 4) = v114;
      *(v113 + 8) = 2082;
      v116 = sub_7B9D98();
      v117 = v110;
      v118 = v184;
      v120 = v119;
      v115(v117, v36);
      v121 = sub_7AB3E0(v116, v120, &v185);

      *(v113 + 10) = v121;
      _os_log_impl(&dword_0, v111, v112, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false %{public}s", v113, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v181);

      (*(v118 + 8))(v174, v183);
    }

    else
    {
      v168 = v108[1];
      v168(v106, v36);

      v168(v110, v36);
      (*(v184 + 8))(v104, v109);
    }
  }

  else
  {
    v122 = Logger.lyrics.unsafeMutableAddressor();
    (*(v34 + 16))(v99, v122, v33);
    v123 = v35[2];
    v124 = v182;
    v123(v37, v182, v36);
    v125 = v100;
    v123(v100, v124, v36);
    v126 = v178;
    v123(v178, v124, v36);
    v127 = sub_AB4BA0();
    v128 = sub_AB9F50();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v185 = v181;
      *v129 = 67240962;
      LODWORD(v176) = v128;
      v130 = sub_AB85C0() & 1;
      v131 = v35[1];
      v131(v37, v36);
      *(v129 + 4) = v130;
      v132 = v125;
      v133 = v184;
      *(v129 + 8) = 1026;
      v134 = sub_AB86B0() & 1;
      v131(v132, v36);
      *(v129 + 10) = v134;
      *(v129 + 14) = 1026;
      static ApplicationCapabilities.shared.getter(&v187);
      v135 = v189;

      sub_70C54(&v187);
      v136 = sub_472A84(2, v135);

      *(v129 + 16) = v136 & 1;
      *(v129 + 20) = 2082;
      v137 = v178;
      v138 = sub_7B9D98();
      v140 = v139;
      v131(v137, v36);
      v141 = sub_7AB3E0(v138, v140, &v185);

      *(v129 + 22) = v141;
      _os_log_impl(&dword_0, v127, v176, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] song.hasLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d %{public}s", v129, 0x1Eu);
      __swift_destroy_boxed_opaque_existential_0(v181);

      (*(v133 + 8))(v179, v183);
    }

    else
    {
      v142 = v35[1];
      v142(v125, v36);
      v142(v37, v36);

      v142(v126, v36);
      (*(v184 + 8))(v99, v183);
    }
  }

  v143 = sub_AB85C0();
  return v143 & 1;
}

unint64_t sub_7C2A4C()
{
  result = qword_E17AE0;
  if (!qword_E17AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17AE0);
  }

  return result;
}

unint64_t sub_7C2AA0()
{
  result = qword_E17AF0;
  if (!qword_E17AF0)
  {
    sub_AB86C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17AF0);
  }

  return result;
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSbSo11MPModelSongC_tFZ_0(void *a1)
{
  v188 = sub_AB4BC0();
  v2 = *(v188 - 8);
  __chkstk_darwin();
  v4 = &v179 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v179 - v5;
  __chkstk_darwin();
  v8 = &v179 - v7;
  __chkstk_darwin();
  v10 = &v179 - v9;
  __chkstk_darwin();
  v12 = &v179 - v11;
  __chkstk_darwin();
  v14 = &v179 - v13;
  *&v15 = __chkstk_darwin().n128_u64[0];
  v17 = &v179 - v16;
  v187 = [a1 lyrics];
  if (v187)
  {
    if ([a1 hasVideo])
    {

      goto LABEL_4;
    }

    v185 = v8;
    v186 = v2;
    v30 = v187;
    v31 = [v187 hasLibraryLyrics];
    if (([v30 hasStoreLyrics] & 1) == 0 && !v31)
    {
      v32 = Logger.lyrics.unsafeMutableAddressor();
      v33 = v186;
      v34 = v188;
      (*(v186 + 16))(v6, v32, v188);
      v35 = a1;
      v36 = v187;
      v37 = sub_AB4BA0();
      v38 = sub_AB9F50();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v187 = swift_slowAlloc();
        v192[0] = v187;
        *v39 = 67240962;
        *(v39 + 4) = [v36 hasLibraryLyrics];
        *(v39 + 8) = 1026;
        *(v39 + 10) = [v36 hasStoreLyrics];

        *(v39 + 14) = 2082;
        v40 = [v35 title];
        if (v40)
        {
          v41 = v40;
          v42 = sub_AB92A0();
          v44 = v43;
        }

        else
        {
          v42 = 0;
          v44 = 0;
        }

        v193 = v42;
        v194 = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0, &qword_B32B20);
        v86 = sub_AB9350();
        v88 = sub_7AB3E0(v86, v87, v192);

        *(v39 + 16) = v88;
        *(v39 + 24) = 2082;
        v89 = [v35 identifiers];
        v90 = [v89 description];
        v91 = sub_AB92A0();
        v93 = v92;

        v94 = sub_7AB3E0(v91, v93, v192);

        *(v39 + 26) = v94;
        _os_log_impl(&dword_0, v37, v38, "Loader supportsLyrics=false [no lyrics found] lyrics.hasLibraryLyrics=%{BOOL,public}d lyrics.hasStoreLyrics=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v39, 0x22u);
        swift_arrayDestroy();

        (*(v186 + 8))(v6, v188);
      }

      else
      {

        (*(v33 + 8))(v6, v34);
      }

      return 0;
    }

    v184 = v31;
    BagProvider.shared.unsafeMutableAddressor();

    v45 = BagProvider.bag.getter();

    if (v45)
    {
      v46 = [objc_opt_self() supportsLyricsForURLBag:v45];
      v47 = v186;
      if ((v46 & 1) == 0)
      {
        v185 = v45;
        v73 = [v45 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
        if (v73)
        {

          v74 = Logger.lyrics.unsafeMutableAddressor();
          v75 = v188;
          (*(v47 + 16))(v17, v74, v188);
          v76 = v47;
          v77 = a1;
          v78 = sub_AB4BA0();
          v79 = sub_AB9F50();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            v192[0] = v183;
            *v80 = 67240706;
            *(v80 + 4) = v184;
            *(v80 + 8) = 2082;
            v81 = [v77 title];
            if (v81)
            {
              v82 = v81;
              v83 = sub_AB92A0();
              v85 = v84;
            }

            else
            {
              v83 = 0;
              v85 = 0;
            }

            v193 = v83;
            v194 = v85;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0, &qword_B32B20);
            v152 = sub_AB9350();
            v154 = sub_7AB3E0(v152, v153, v192);

            *(v80 + 10) = v154;
            *(v80 + 18) = 2082;
            v155 = [v77 identifiers];
            v156 = [v155 description];
            v157 = sub_AB92A0();
            v159 = v158;

            v160 = sub_7AB3E0(v157, v159, v192);

            *(v80 + 20) = v160;
            _os_log_impl(&dword_0, v78, v79, "Loader supportsLyrics=%{BOOL,public}d [no lyrics keys in bag] song.title=%{public}s song.identifiers=%{public}s", v80, 0x1Cu);
            swift_arrayDestroy();

            (*(v186 + 8))(v17, v188);
            return v184;
          }

          (*(v76 + 8))(v17, v75);
        }

        else
        {
          v95 = Logger.lyrics.unsafeMutableAddressor();
          v96 = v188;
          (*(v47 + 16))(v14, v95, v188);
          v97 = v47;
          v98 = a1;
          v99 = sub_AB4BA0();
          v100 = sub_AB9F50();

          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v183 = swift_slowAlloc();
            v192[0] = v183;
            *v101 = 67240706;
            *(v101 + 4) = v184;
            *(v101 + 8) = 2082;
            v102 = [v98 title];
            if (v102)
            {
              v103 = v102;
              v104 = sub_AB92A0();
              v106 = v105;
            }

            else
            {
              v104 = 0;
              v106 = 0;
            }

            v193 = v104;
            v194 = v106;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0, &qword_B32B20);
            v161 = sub_AB9350();
            v163 = sub_7AB3E0(v161, v162, v192);

            *(v101 + 10) = v163;
            *(v101 + 18) = 2082;
            v164 = [v98 identifiers];
            v165 = [v164 description];
            v166 = sub_AB92A0();
            v168 = v167;

            v169 = sub_7AB3E0(v166, v168, v192);

            *(v101 + 20) = v169;
            _os_log_impl(&dword_0, v99, v100, "Loader supportsLyrics=%{BOOL,public}d [no musicSubscription key in bag] song.title=%{public}s song.identifiers=%{public}s", v101, 0x1Cu);
            swift_arrayDestroy();

            (*(v186 + 8))(v14, v188);
            return v184;
          }

          (*(v97 + 8))(v14, v96);
        }

        return v184;
      }

      v48 = v10;

      v49 = v188;
    }

    else
    {
      v60 = Logger.lyrics.unsafeMutableAddressor();
      v47 = v186;
      v49 = v188;
      (*(v186 + 16))(v12, v60, v188);
      v61 = a1;
      v62 = sub_AB4BA0();
      v63 = sub_AB9F50();

      v48 = v10;
      if (os_log_type_enabled(v62, v63))
      {
        v181 = v63;
        v182 = v10;
        v183 = v62;
        v64 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v192[0] = v180;
        *v64 = 67240706;
        *(v64 + 4) = v184;
        v65 = v64;
        *(v64 + 8) = 2082;
        v66 = v61;
        v67 = [v61 title];
        v68 = &selRef_createSharedSessionWithIdentity_intentHandler_;
        if (v67)
        {
          v69 = v67;
          v70 = sub_AB92A0();
          v72 = v71;
        }

        else
        {
          v70 = 0;
          v72 = 0;
        }

        v193 = v70;
        v194 = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0, &qword_B32B20);
        v107 = sub_AB9350();
        v109 = sub_7AB3E0(v107, v108, v192);

        *(v65 + 10) = v109;
        *(v65 + 18) = 2082;
        v110 = [v66 identifiers];
        v111 = [v110 description];
        v112 = sub_AB92A0();
        v114 = v113;

        v115 = sub_7AB3E0(v112, v114, v192);

        *(v65 + 20) = v115;
        v116 = v183;
        _os_log_impl(&dword_0, v183, v181, "Loader supportsLyrics=%{BOOL,public}d [bag is nil] song.title=%{public}s song.identifiers=%{public}s", v65, 0x1Cu);
        swift_arrayDestroy();

        v49 = v188;
        (*(v47 + 8))(v12, v188);
        v48 = v182;
LABEL_38:
        if ([v187 v68[61]] && (static ApplicationCapabilities.shared.getter(v192), v117 = v192[4], , sub_70C54(v192), v118 = sub_472A84(2, v117), , (v118 & 1) != 0))
        {
          static ApplicationCapabilities.shared.getter(&v193);
          sub_70C54(&v193);
          if ((v194 & 0x10000) != 0)
          {

            return 1;
          }

          v119 = Logger.lyrics.unsafeMutableAddressor();
          (*(v47 + 16))(v48, v119, v49);
          v120 = a1;
          v121 = sub_AB4BA0();
          v122 = sub_AB9F50();

          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            v185 = swift_slowAlloc();
            v191 = v185;
            *v123 = 67240706;
            *(v123 + 4) = v184;
            *(v123 + 8) = 2082;
            v124 = [v120 title];
            if (v124)
            {
              v125 = v124;
              v126 = sub_AB92A0();
              v128 = v127;
            }

            else
            {
              v126 = 0;
              v128 = 0;
            }

            v189 = v126;
            v190 = v128;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0, &qword_B32B20);
            v170 = sub_AB9350();
            v172 = sub_7AB3E0(v170, v171, &v191);

            *(v123 + 10) = v172;
            *(v123 + 18) = 2082;
            v173 = [v120 identifiers];
            v174 = [v173 description];
            v175 = sub_AB92A0();
            v177 = v176;

            v178 = sub_7AB3E0(v175, v177, &v191);

            *(v123 + 20) = v178;
            _os_log_impl(&dword_0, v121, v122, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false song.title=%{public}s song.identifiers=%{public}s", v123, 0x1Cu);
            swift_arrayDestroy();

            (*(v186 + 8))(v48, v188);
            return v184;
          }

          (*(v47 + 8))(v48, v49);
        }

        else
        {
          v129 = Logger.lyrics.unsafeMutableAddressor();
          v130 = v185;
          (*(v47 + 16))(v185, v129, v49);
          v131 = a1;
          v132 = v187;
          v133 = sub_AB4BA0();
          v134 = sub_AB9F50();

          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            v191 = v187;
            *v135 = 67241218;
            *(v135 + 4) = v184;
            *(v135 + 8) = 1026;
            *(v135 + 10) = [v132 v68[61]];

            *(v135 + 14) = 1026;
            static ApplicationCapabilities.shared.getter(&v193);
            v136 = v195;

            sub_70C54(&v193);
            v137 = sub_472A84(2, v136);

            *(v135 + 16) = v137 & 1;
            *(v135 + 20) = 2082;
            v138 = [v131 title];
            if (v138)
            {
              v139 = v138;
              v140 = sub_AB92A0();
              v142 = v141;
            }

            else
            {
              v140 = 0;
              v142 = 0;
            }

            v189 = v140;
            v190 = v142;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0, &qword_B32B20);
            v143 = sub_AB9350();
            v145 = sub_7AB3E0(v143, v144, &v191);

            *(v135 + 22) = v145;
            *(v135 + 30) = 2082;
            v146 = [v131 identifiers];
            v147 = [v146 description];
            v148 = sub_AB92A0();
            v150 = v149;

            v151 = sub_7AB3E0(v148, v150, &v191);

            *(v135 + 32) = v151;
            _os_log_impl(&dword_0, v133, v134, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] lyrics.hasStoreLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v135, 0x28u);
            swift_arrayDestroy();

            (*(v186 + 8))(v185, v188);
            return v184;
          }

          (*(v47 + 8))(v130, v49);
        }

        return v184;
      }

      (*(v47 + 8))(v12, v49);
    }

    v68 = &selRef_createSharedSessionWithIdentity_intentHandler_;
    goto LABEL_38;
  }

LABEL_4:
  v18 = Logger.lyrics.unsafeMutableAddressor();
  v19 = v188;
  (*(v2 + 16))(v4, v18, v188);
  v20 = v2;
  v21 = a1;
  v22 = sub_AB4BA0();
  v23 = sub_AB9F50();

  if (os_log_type_enabled(v22, v23))
  {
    v186 = v20;
    v24 = swift_slowAlloc();
    v192[0] = swift_slowAlloc();
    *v24 = 136446466;
    v25 = [v21 title];
    if (v25)
    {
      v26 = v25;
      v27 = sub_AB92A0();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v193 = v27;
    v194 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DBB0, &qword_B32B20);
    v50 = sub_AB9350();
    v52 = sub_7AB3E0(v50, v51, v192);

    *(v24 + 4) = v52;
    *(v24 + 12) = 2082;
    v53 = [v21 identifiers];
    v54 = [v53 description];
    v55 = sub_AB92A0();
    v57 = v56;

    v58 = sub_7AB3E0(v55, v57, v192);

    *(v24 + 14) = v58;
    _os_log_impl(&dword_0, v22, v23, "Loader supportsLyrics=false [MPModelLyrics was nil] song.title=%{public}s song.identifiers=%{public}s", v24, 0x16u);
    swift_arrayDestroy();

    (*(v186 + 8))(v4, v188);
  }

  else
  {

    (*(v20 + 8))(v4, v19);
  }

  return 0;
}

unint64_t sub_7C3DE8()
{
  result = qword_E17B20;
  if (!qword_E17B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E17B20);
  }

  return result;
}

unint64_t sub_7C3E5C()
{
  result = qword_E17B30;
  if (!qword_E17B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17B30);
  }

  return result;
}

__n128 __swift_memcpy17_8_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_7C3EF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B60, &qword_B2B368);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_7C3F9C(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B60, &qword_B2B368) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_7BCC10(a1, a2, v2 + v6, v8, v9);
}

double block_copy_helper_15_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_7C4070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B80, &qword_B2B388);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_7C40E0()
{
  result = qword_E17B90;
  if (!qword_E17B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17B90);
  }

  return result;
}

unint64_t sub_7C4134()
{
  result = qword_E17BA0;
  if (!qword_E17BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E17B98, &qword_B2B398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E17BA0);
  }

  return result;
}

uint64_t Lyrics.StateManager.__allocating_init()()
{
  v0 = swift_allocObject();
  Lyrics.StateManager.init()();
  return v0;
}

uint64_t Lyrics.StateManager.init()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for Lyrics.StateManager.State(0);
  v4 = v2 + *(v3 + 20);
  v5 = enum case for ScenePhase.inactive(_:);
  v6 = sub_AB56F0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v4 + *(v7 + 20)) = 0;
  *(v4 + *(v7 + 24)) = 0;
  v8 = *(v3 + 24);
  v9 = sub_AB3430();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist) = 0;
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v11 = sub_AB86C0();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset) = 0;
  v12 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  v13 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage;
  v17 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__optionsObserver) = 0;
  v18 = [objc_allocWithZone(MPCLyricsReportingController) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v18;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  v19 = *LyricsOptionsManager.shared.unsafeMutableAddressor();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(*v19 + 224);

  v21(sub_7C5474, v20);

  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3980();

  return v1;
}

uint64_t sub_7C4628()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t Lyrics.StateManager.state.setter(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_7D1A74(v1 + v7, v6, type metadata accessor for Lyrics.StateManager.State);
  v8 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v6, a1);
  sub_7D1ADC(v6, type metadata accessor for Lyrics.StateManager.State);
  if (v8)
  {
    sub_7D1A74(a1, v6, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1A74(v1 + v7, v4, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_7D21C8(v6, v1 + v7, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_7C55D4(v4);
    sub_7D1ADC(v4, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1ADC(v6, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_AB3980();
  }

  return sub_7D1ADC(a1, type metadata accessor for Lyrics.StateManager.State);
}

void sub_7C4914(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 1;
  v6 = *a2;
  swift_beginAccess();
  if (*(v4 + v6) == v5)
  {
    *(v4 + v6) = v5;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_AB3980();
  }
}

void sub_7C4A30(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  type metadata accessor for LyricsLoader();
  v6 = v5;
  v7 = sub_ABA790();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_AB3980();
  }
}

void sub_7C4B94(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  sub_13C80(0, &qword_E18210, MPCLyricsReportingController_ptr);
  v6 = v5;
  v7 = sub_ABA790();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_AB3980();
  }
}

void sub_7C4D08(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C50, &qword_B2B510);
  __chkstk_darwin();
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v44 - v5;
  __chkstk_darwin();
  v8 = &v44 - v7;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_getKeyPath();
    v15 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
    v57 = v14;
    v16 = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    v53 = v15;
    v54 = v16;
    sub_AB3990();

    v17 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_7D1A74(v14 + v17, v12, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1A74(v12, v10, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1ADC(v12, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_7D1ADC(v10, type metadata accessor for Lyrics.StateManager.State.Loading);
      return;
    }

    v51 = v4;
    v52 = a1;
    v18 = *v10;
    v19 = *(v10 + 1);
    v21 = *(v10 + 2);
    v20 = *(v10 + 3);
    v22 = v10[32];
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460) + 48);
    v24 = sub_AB86C0();
    v25 = (*(*(v24 - 8) + 8))(&v10[v23], v24);
    if (v22 != 1)
    {

      return;
    }

    v26 = v19;
    v49 = v21;
    v50 = v20;
    v27 = (*v18 + 312);
    v28 = *v27;
    v29 = v27;
    (*v27)(v25);
    v30 = type metadata accessor for Lyrics.Transliteration(0);
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    v47 = v30;
    if ((v32)(v8, 1) == 1)
    {

      sub_7D2DFC(v18, v26, v49, v50, 1);
      v33 = v8;
    }

    else
    {
      v46 = v31;
      v44 = v29;
      v45 = v28;
      v48 = v18;
      sub_12E1C(v8, &qword_E17C50, &qword_B2B510);
      v34 = sub_88E520(3, v52);
      v35 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

      LODWORD(v35) = v35(3) & 1;

      if (v34 == v35)
      {
        sub_7D2DFC(v48, v26, v49, v50, 1);

        return;
      }

      v52 = v26;
      (*(*v48 + 440))(v36);
      swift_getKeyPath();
      v56 = v14;
      sub_AB3990();

      v37 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
      swift_beginAccess();
      sub_15F84(v14 + v37, v6, &qword_E17C50, &qword_B2B510);
      v38 = v47;
      v39 = v32(v6, 1, v47);
      sub_12E1C(v6, &qword_E17C50, &qword_B2B510);
      v40 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset;
      v41 = swift_beginAccess();
      if (*(v14 + v40) == 1)
      {
        *(v14 + v40) = 1;
      }

      else
      {
        swift_getKeyPath();
        __chkstk_darwin();
        *(&v44 - 2) = v14;
        *(&v44 - 8) = 1;
        v55 = v14;
        sub_AB3980();
      }

      v42 = v51;
      if (v39 == 1)
      {
        (*(v46 + 56))(v51, 1, 1, v38);
        v43 = v48;
      }

      else
      {
        v43 = v48;
        v45(v41);
      }

      swift_getKeyPath();
      __chkstk_darwin();
      *(&v44 - 2) = v14;
      *(&v44 - 1) = v42;
      v55 = v14;
      sub_AB3980();
      sub_7D2DFC(v43, v52, v49, v50, 1);

      v33 = v42;
    }

    sub_12E1C(v33, &qword_E17C50, &qword_B2B510);
  }
}

uint64_t Lyrics.StateManager.State.lyrics.getter()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7D1A74(v0, v2, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_7D1ADC(v2, type metadata accessor for Lyrics.StateManager.State.Loading);
    return 0;
  }

  v3 = *v2;
  v4 = v2[32];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460) + 48);
  v6 = sub_AB86C0();
  (*(*(v6 - 8) + 8))(&v2[v5], v6);
  if ((v4 & 1) == 0)
  {

    return 0;
  }

  return v3;
}

double sub_7C55D4(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18240, &qword_B2B8E8);
  __chkstk_darwin();
  v5 = &v72[-v4];
  v6 = sub_AB56F0();
  v85 = *(v6 - 8);
  __chkstk_darwin();
  v84 = &v72[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin();
  v86 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C50, &qword_B2B510);
  __chkstk_darwin();
  v81 = &v72[-v9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C48, &qword_B2B4E0);
  __chkstk_darwin();
  v80 = &v72[-v10];
  v93 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v83 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v72[-v12];
  v14 = sub_AB4BC0();
  v89 = *(v14 - 8);
  v90 = v14;
  __chkstk_darwin();
  v16 = &v72[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v79 = &v72[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v19 = &v72[-v18];
  __chkstk_darwin();
  v21 = &v72[-v20];
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v95[3] = v2;
  v23 = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v82 = v22;
  v87 = v23;
  sub_AB3990();

  v24 = v2 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  v91 = v24;
  sub_7D1A74(v24, v21, type metadata accessor for Lyrics.StateManager.State);
  v88 = a1;
  LOBYTE(v24) = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v21, a1);
  sub_7D1ADC(v21, type metadata accessor for Lyrics.StateManager.State);
  if ((v24 & 1) == 0)
  {
    v76 = v6;
    v77 = v5;
    v26 = Logger.lyrics.unsafeMutableAddressor();
    (*(v89 + 16))(v16, v26, v90);
    sub_7D1A74(v88, v19, type metadata accessor for Lyrics.StateManager.State);

    v27 = sub_AB4BA0();
    v28 = sub_AB9F50();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v95[0] = v75;
      *v29 = 136446466;
      sub_7D1A74(v19, v21, type metadata accessor for Lyrics.StateManager.State);
      v30 = sub_AB9350();
      v74 = v27;
      v31 = v30;
      v73 = v28;
      v33 = v32;
      sub_7D1ADC(v19, type metadata accessor for Lyrics.StateManager.State);
      v34 = sub_7AB3E0(v31, v33, v95);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2082;
      swift_getKeyPath();
      v94 = v2;
      sub_AB3990();

      v35 = v91;
      sub_7D1A74(v91, v21, type metadata accessor for Lyrics.StateManager.State);
      v36 = sub_AB9350();
      v38 = sub_7AB3E0(v36, v37, v95);

      *(v29 + 14) = v38;
      v39 = v74;
      _os_log_impl(&dword_0, v74, v73, "[State] changed from %{public}s to %{public}s", v29, 0x16u);
      swift_arrayDestroy();

      (*(v89 + 8))(v16, v90);
    }

    else
    {

      sub_7D1ADC(v19, type metadata accessor for Lyrics.StateManager.State);
      (*(v89 + 8))(v16, v90);
      v35 = v91;
    }

    swift_getKeyPath();
    v95[0] = v2;
    sub_AB3990();

    v40 = v79;
    sub_7D1A74(v35, v79, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1A74(v40, v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1ADC(v40, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = *v13;
      v42 = v13[32];
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460) + 48);
      v44 = sub_AB86C0();
      (*(*(v44 - 8) + 8))(&v13[v43], v44);
      if (v42)
      {
        v45 = v83;
        v46 = v81;
        if (v41)
        {
          v47 = *(*v41 + 288);

          v49 = v80;
          v47(v48);

          v50 = type metadata accessor for Lyrics.Translation(0);
          v51 = 1;
          v52 = (*(*(v50 - 8) + 48))(v49, 1, v50);
          sub_12E1C(v49, &qword_E17C48, &qword_B2B4E0);
          if (v52 != 1)
          {
            goto LABEL_17;
          }

          v53 = *(*v41 + 312);

          v53(v54);

          v55 = type metadata accessor for Lyrics.Transliteration(0);
          v51 = 1;
          if ((*(*(v55 - 8) + 48))(v46, 1, v55) != 1)
          {
LABEL_16:
            sub_12E1C(v46, &qword_E17C50, &qword_B2B510);
LABEL_17:
            v59 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton;
            swift_beginAccess();
            if (v51 == *(v2 + v59))
            {
              *(v2 + v59) = v51;
            }

            else
            {
              swift_getKeyPath();
              __chkstk_darwin();
              *&v72[-16] = v2;
              v72[-8] = v51;
              v94 = v2;
              sub_AB3980();
            }

            v60 = v77;
            swift_getKeyPath();
            v94 = v2;
            sub_AB3990();

            v61 = v91;
            sub_7D1A74(v91, v45, type metadata accessor for Lyrics.StateManager.State.Loading);
            swift_getKeyPath();
            v94 = v2;
            sub_AB3990();

            v62 = v61 + *(v92 + 20);
            v63 = v86;
            sub_7D1A74(v62, v86, type metadata accessor for Lyrics.StateManager.State.Display);
            v65 = v84;
            v64 = v85;
            v66 = v76;
            (*(v85 + 104))(v84, enum case for ScenePhase.active(_:), v76);
            v67 = sub_AB56E0();
            (*(v64 + 8))(v65, v66);
            if ((v67 & 1) != 0 && v63[*(v78 + 20)] == 1)
            {
              v68 = v63[*(v78 + 24)];
            }

            else
            {
              v68 = 0;
            }

            sub_7D1ADC(v63, type metadata accessor for Lyrics.StateManager.State.Display);
            sub_7D33D4(v45, v60);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                sub_7D2DFC(*v60, *(v60 + 8), *(v60 + 16), *(v60 + 24), *(v60 + 32));
                v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460) + 48);
                v71 = sub_AB86C0();
                (*(*(v71 - 8) + 8))(v60 + v70, v71);
                if (v68)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
              sub_7D1ADC(v60, type metadata accessor for Lyrics.StateManager.State.Loading);
            }

            sub_7CF3DC(v88);
LABEL_30:
            sub_7CEAB8();

            return result;
          }

LABEL_15:
          v51 = 0;
          goto LABEL_16;
        }

LABEL_14:
        v56 = type metadata accessor for Lyrics.Translation(0);
        v57 = v80;
        (*(*(v56 - 8) + 56))(v80, 1, 1, v56);
        sub_12E1C(v57, &qword_E17C48, &qword_B2B4E0);
        v58 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v58 - 8) + 56))(v46, 1, 1, v58);
        goto LABEL_15;
      }

      v45 = v83;
    }

    else
    {
      sub_7D1ADC(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
      v45 = v83;
    }

    v46 = v81;
    goto LABEL_14;
  }

  return result;
}

void (*sub_7C62E0(uint64_t *a1))(char **a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_7D1A74(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State);
  return sub_7C6408;
}

void sub_7C6408(char **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = *(*a1 + 13);
  v6 = *(*a1 + 10);
  v7 = *(*a1 + 11);
  v8 = *(*a1 + 9);
  if (a2)
  {
    sub_7D1A74(*(*a1 + 12), v7, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1A74(v8 + v5, v6, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_7D21C8(v7, v8 + v5, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_7C55D4(v6);
    sub_7D1ADC(v6, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    sub_7D1A74(v8 + v5, v7, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_7D21C8(v4, v8 + v5, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_7C55D4(v7);
  }

  sub_7D1ADC(v7, type metadata accessor for Lyrics.StateManager.State);
  sub_7D1ADC(v4, type metadata accessor for Lyrics.StateManager.State);
  free(v4);
  free(v7);
  free(v6);

  free(v3);
}

uint64_t Lyrics.StateManager.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_7D1A74(v5 + v3, a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_7C6654@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_7D1A74(v3 + v4, a2, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_7C6730(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7D1A74(a1, v3, type metadata accessor for Lyrics.StateManager.State);
  return Lyrics.StateManager.state.setter(v3);
}

uint64_t sub_7C67D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v10[-v6];
  sub_7D1A74(a2, &v10[-v6], type metadata accessor for Lyrics.StateManager.State);
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_7D1A74(a1 + v8, v5, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_7D21C8(v7, a1 + v8, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_7C55D4(v5);
  sub_7D1ADC(v5, type metadata accessor for Lyrics.StateManager.State);
  return sub_7D1ADC(v7, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t (*Lyrics.StateManager.state.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  *v4 = v1;
  swift_getKeyPath();
  sub_AB39B0();

  v4[7] = sub_7C62E0(v4);
  return sub_7C6A4C;
}

void sub_7C6A58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C50, &qword_B2B510);
  __chkstk_darwin();
  v3 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v51 = v46 - v4;
  __chkstk_darwin();
  v6 = v46 - v5;
  __chkstk_darwin();
  v8 = v46 - v7;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v56 = v1;
  v52 = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v53 = v13;
  sub_AB3990();

  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (v15)
  {
    v16 = [v15 vocalsControlCommand];
    if (v16)
    {
      v17 = [v16 isActive];
      swift_unknownObjectRelease();
      if (v17)
      {
        swift_getKeyPath();
        v55 = v1;
        sub_AB3990();

        v18 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
        swift_beginAccess();
        sub_7D1A74(v1 + v18, v12, type metadata accessor for Lyrics.StateManager.State);
        sub_7D1A74(v12, v10, type metadata accessor for Lyrics.StateManager.State.Loading);
        sub_7D1ADC(v12, type metadata accessor for Lyrics.StateManager.State);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v19 = *v10;
          v20 = *(v10 + 1);
          v21 = *(v10 + 3);
          v49 = *(v10 + 2);
          v50 = v21;
          v22 = v10[32];
          v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460) + 48);
          v24 = sub_AB86C0();
          v25 = (*(*(v24 - 8) + 8))(&v10[v23], v24);
          if (v22 == 1)
          {
            v48 = v20;
            v26 = (*v19 + 312);
            v47 = *v26;
            v46[1] = v26;
            v47(v25);
            v27 = type metadata accessor for Lyrics.Transliteration(0);
            v28 = *(*(v27 - 8) + 48);
            if (v28(v8, 1, v27) == 1)
            {
              sub_7D2DFC(v19, v48, v49, v50, 1);
              sub_12E1C(v8, &qword_E17C50, &qword_B2B510);
            }

            else
            {
              v46[0] = v19;
              sub_12E1C(v8, &qword_E17C50, &qword_B2B510);
              swift_getKeyPath();
              v55 = v1;
              sub_AB3990();

              v38 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
              swift_beginAccess();
              sub_15F84(v1 + v38, v6, &qword_E17C50, &qword_B2B510);
              v39 = v28(v6, 1, v27);
              v40 = v48;
              if (v39 == 1)
              {
                sub_12E1C(v6, &qword_E17C50, &qword_B2B510);
                v41 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

                LOBYTE(v41) = v41(2);

                v44 = v49;
                v43 = v50;
                if ((v41 & 1) == 0)
                {
                  v37 = v51;
                  v45 = v46[0];
                  v47(v42);
                  swift_getKeyPath();
                  __chkstk_darwin();
                  v46[-2] = v1;
                  v46[-1] = v37;
                  v55 = v1;
                  sub_AB3980();
                  sub_7D2DFC(v45, v40, v44, v43, 1);
                  goto LABEL_16;
                }

                sub_7D2DFC(v46[0], v40, v49, v50, 1);
              }

              else
              {
                sub_7D2DFC(v46[0], v48, v49, v50, 1);
                sub_12E1C(v6, &qword_E17C50, &qword_B2B510);
              }
            }
          }

          else
          {
          }
        }

        else
        {
          sub_7D1ADC(v10, type metadata accessor for Lyrics.StateManager.State.Loading);
        }
      }
    }
  }

  swift_getKeyPath();
  v55 = v1;
  sub_AB3990();

  v29 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  sub_15F84(v1 + v29, v3, &qword_E17C50, &qword_B2B510);
  v30 = type metadata accessor for Lyrics.Transliteration(0);
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v3, 1, v30);
  sub_12E1C(v3, &qword_E17C50, &qword_B2B510);
  if (v32 != 1)
  {
    v33 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    LOBYTE(v33) = v33(1);

    if ((v33 & 1) == 0)
    {
      swift_getKeyPath();
      v54 = v1;
      sub_AB3990();

      v34 = *(v1 + v14);
      if (!v34 || (v35 = [v34 vocalsControlCommand]) == 0 || (v36 = objc_msgSend(v35, "isActive"), swift_unknownObjectRelease(), (v36 & 1) == 0))
      {
        v37 = v51;
        (*(v31 + 56))(v51, 1, 1, v30);
        swift_getKeyPath();
        __chkstk_darwin();
        v46[-2] = v1;
        v46[-1] = v37;
        v54 = v1;
        sub_AB3980();
LABEL_16:

        sub_12E1C(v37, &qword_E17C50, &qword_B2B510);
      }
    }
  }
}

void (*sub_7C7334(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_7C7398;
}

void sub_7C7398(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_7C6A58();
  }
}

void *Lyrics.StateManager.tracklist.getter()
{
  swift_getKeyPath();
  v5 = v0;
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_7C7490@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void Lyrics.StateManager.tracklist.setter(void *a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_AB3980();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_13C80(0, &qword_E17C40, MPCPlayerResponseTracklist_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_ABA790();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;

  sub_7C6A58();
}

void sub_7C7714(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  sub_7C6A58();
}

uint64_t (*Lyrics.StateManager.tracklist.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  *v4 = v1;
  swift_getKeyPath();
  sub_AB39B0();

  v4[7] = sub_7C7334(v4);
  return sub_7C78C4;
}

double sub_7C78D0(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  __chkstk_darwin();
  v4 = &v30 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B08, &qword_B2B200);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = sub_AB86C0();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v30 - v12;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v36 = v2;
  v15 = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v33 = v14;
  v34 = v15;
  sub_AB3990();

  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_15F84(&v2[v16], v8, &qword_E17B08, &qword_B2B200);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_12E1C(v8, &qword_E17B08, &qword_B2B200);
  }

  else
  {
    v30 = v4;
    v18 = *(v10 + 32);
    v18(v13, v8, v9);
    sub_15F84(v32, v6, &qword_E17B08, &qword_B2B200);
    if (v17(v6, 1, v9) == 1)
    {
      (*(v10 + 8))(v13, v9);
      sub_12E1C(v6, &qword_E17B08, &qword_B2B200);
    }

    else
    {
      v19 = v31;
      v18(v31, v6, v9);
      sub_7D2FFC(&qword_E18220, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      if (sub_AB7F90())
      {
        v20 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v13);
        v21 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v19);
        v22 = *(v10 + 8);
        v22(v19, v9);
        v22(v13, v9);
        v4 = v30;
        if (((v20 ^ v21) & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }

      v24 = *(v10 + 8);
      v24(v19, v9);
      v24(v13, v9);
    }

    v4 = v30;
  }

LABEL_10:
  swift_getKeyPath();
  v35 = v2;
  sub_AB3990();

  v25 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (*&v2[OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask])
  {

    sub_AB9A00();
    if (*&v2[v25])
    {
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v30 - 2) = v2;
      *(&v30 - 1) = 0;
      v35 = v2;
      sub_AB3980();
    }
  }

  v26 = sub_AB9990();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  sub_AB9940();

  v27 = sub_AB9930();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v2;
  sub_7C7F60(0, 0, v4, &unk_B2B8D8, v28);

  sub_7CB324(v29);

  return result;
}

uint64_t sub_7C7EB4()
{
  v0[2] = sub_AB9940();
  v0[3] = sub_AB9930();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_750124;

  return sub_7CB75C();
}

uint64_t sub_7C7F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_15F84(a3, v24 - v9, &qword_E1C720, &qword_B309B0);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_E1C720, &qword_B309B0);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_AB93A0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_12E1C(a3, &qword_E1C720, &qword_B309B0);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_12E1C(a3, &qword_E1C720, &qword_B309B0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_7C8260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_15F84(a3, v24 - v9, &qword_E1C720, &qword_B309B0);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_E1C720, &qword_B309B0);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_AB93A0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18228, &qword_B2B8A0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_12E1C(a3, &qword_E1C720, &qword_B309B0);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_12E1C(a3, &qword_E1C720, &qword_B309B0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18228, &qword_B2B8A0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_7C8574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_15F84(a3, v24 - v9, &qword_E1C720, &qword_B309B0);
  v11 = sub_AB9990();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_12E1C(v10, &qword_E1C720, &qword_B309B0);
  }

  else
  {
    sub_AB9980();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_AB98B0();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_AB93A0() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A980, &qword_B2B800);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_12E1C(a3, &qword_E1C720, &qword_B309B0);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_12E1C(a3, &qword_E1C720, &qword_B309B0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A980, &qword_B2B800);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void (*sub_7C8888(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B08, &qword_B2B200) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_15F84(v1 + v8, v7, &qword_E17B08, &qword_B2B200);
  return sub_7C89B8;
}

void sub_7C89B8(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_15F84(*(*a1 + 12), v6, &qword_E17B08, &qword_B2B200);
    sub_15F84(v7 + v4, v5, &qword_E17B08, &qword_B2B200);
    swift_beginAccess();
    sub_1FBB9C(v6, v7 + v4, &qword_E17B08, &qword_B2B200);
    swift_endAccess();
    sub_7C78D0(v5);
    sub_12E1C(v5, &qword_E17B08, &qword_B2B200);
  }

  else
  {
    sub_15F84(v7 + v4, v6, &qword_E17B08, &qword_B2B200);
    swift_beginAccess();
    sub_1FBB9C(v3, v7 + v4, &qword_E17B08, &qword_B2B200);
    swift_endAccess();
    sub_7C78D0(v6);
  }

  sub_12E1C(v6, &qword_E17B08, &qword_B2B200);
  sub_12E1C(v3, &qword_E17B08, &qword_B2B200);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_7C8B50(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B08, &qword_B2B200);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_15F84(a1, &v5 - v2, &qword_E17B08, &qword_B2B200);
  return Lyrics.StateManager.song.setter(v3);
}

uint64_t Lyrics.StateManager.song.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B08, &qword_B2B200);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_15F84(v1 + v7, v6, &qword_E17B08, &qword_B2B200);
  v8 = sub_7D1BC8(v6, a1);
  sub_12E1C(v6, &qword_E17B08, &qword_B2B200);
  if (v8)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_AB3980();
  }

  else
  {
    sub_15F84(a1, v6, &qword_E17B08, &qword_B2B200);
    sub_15F84(v1 + v7, v4, &qword_E17B08, &qword_B2B200);
    swift_beginAccess();
    sub_1FBB9C(v6, v1 + v7, &qword_E17B08, &qword_B2B200);
    swift_endAccess();
    sub_7C78D0(v4);
    sub_12E1C(v4, &qword_E17B08, &qword_B2B200);
    sub_12E1C(v6, &qword_E17B08, &qword_B2B200);
  }

  return sub_12E1C(a1, &qword_E17B08, &qword_B2B200);
}

uint64_t sub_7C8E64(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B08, &qword_B2B200);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v10[-v6];
  sub_15F84(a2, &v10[-v6], &qword_E17B08, &qword_B2B200);
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_15F84(a1 + v8, v5, &qword_E17B08, &qword_B2B200);
  swift_beginAccess();
  sub_1FBB9C(v7, a1 + v8, &qword_E17B08, &qword_B2B200);
  swift_endAccess();
  sub_7C78D0(v5);
  sub_12E1C(v5, &qword_E17B08, &qword_B2B200);
  return sub_12E1C(v7, &qword_E17B08, &qword_B2B200);
}

uint64_t (*Lyrics.StateManager.song.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  *v4 = v1;
  swift_getKeyPath();
  sub_AB39B0();

  v4[7] = sub_7C8888(v4);
  return sub_7C90FC;
}

uint64_t (*Lyrics.StateManager.showTranslationButton.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  *v4 = v1;
  swift_getKeyPath();
  sub_AB39B0();

  v4[7] = sub_7C9108(v4);
  return sub_7C92B4;
}

uint64_t sub_7C9334(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void sub_7C93E8(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t (*Lyrics.StateManager.needsLyricsReset.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  *v4 = v1;
  swift_getKeyPath();
  sub_AB39B0();

  v4[7] = sub_7C92C0(v4);
  return sub_7C95E8;
}

uint64_t (*Lyrics.StateManager.currentTranslation.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  *v4 = v1;
  swift_getKeyPath();
  sub_AB39B0();

  v4[7] = sub_7C95F4(v4);
  return sub_7C97E0;
}

uint64_t sub_7C9870@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  v10 = *a2;
  swift_beginAccess();
  return sub_15F84(v12 + v10, a5, a3, a4);
}

uint64_t sub_7C9950@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  v11 = *a3;
  swift_beginAccess();
  return sub_15F84(v10 + v11, a6, a4, a5);
}

double sub_7C9A64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1FBB9C(a2, a1 + v9, a4, a5);
  swift_endAccess();
  return result;
}

uint64_t (*Lyrics.StateManager.currentTransliteration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  *v4 = v1;
  swift_getKeyPath();
  sub_AB39B0();

  v4[7] = sub_7C97EC(v4);
  return sub_7C9C1C;
}

uint64_t sub_7C9CAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  __chkstk_darwin();
  v13 = &v16[-v12];
  sub_15F84(a1, &v16[-v12], a5, a6);
  v14 = *a2;
  swift_getKeyPath();
  v17 = v14;
  v18 = v13;
  v19 = v14;
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3980();

  return sub_12E1C(v13, a5, a6);
}

uint64_t sub_7C9E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3980();

  return sub_12E1C(a1, a4, a5);
}

uint64_t (*Lyrics.StateManager.metricsPage.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  *v4 = v1;
  swift_getKeyPath();
  sub_AB39B0();

  v4[7] = sub_7C9C28(v4);
  return sub_7CA038;
}

void sub_7CA044(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_AB39A0();

  free(v3);
}

Swift::Void __swiftcall Lyrics.StateManager.retryLoadingLyrics()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  __chkstk_darwin();
  v3 = &v7 - v2;
  v4 = sub_AB9990();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_AB9940();

  v5 = sub_AB9930();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v1;
  sub_7C7F60(0, 0, v3, &unk_B2B550, v6);
}

uint64_t sub_7CA1FC()
{
  v0[2] = sub_AB9940();
  v0[3] = sub_AB9930();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_74FF38;

  return sub_7CB75C();
}

uint64_t sub_7CA2A8()
{
  v1 = sub_AB56F0();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin();
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AD40, &qword_B2FA50);
  __chkstk_darwin();
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v25 = type metadata accessor for Lyrics.StateManager.State(0);
  v8 = *(v25 + 24);
  sub_15F84(v0 + v8, v7, &qword_E1AD40, &qword_B2FA50);
  v9 = sub_AB3430();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = v7;
  v13 = v0;
  sub_12E1C(v12, &qword_E1AD40, &qword_B2FA50);
  if (v11 == 1)
  {
    sub_7D1A74(v0, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_7D2DFC(*v4, *(v4 + 1), *(v4 + 2), *(v4 + 3), v4[32]);
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460) + 48);
      v15 = sub_AB86C0();
      (*(*(v15 - 8) + 8))(&v4[v14], v15);
      v16 = v26;
      v17 = v0 + *(v25 + 20);
      v19 = v27;
      v18 = v28;
      (*(v27 + 104))(v26, enum case for ScenePhase.active(_:), v28);
      LOBYTE(v14) = sub_AB56E0();
      (*(v19 + 8))(v16, v18);
      if (v14)
      {
        v20 = type metadata accessor for Lyrics.StateManager.State.Display(0);
        if (*(v17 + *(v20 + 20)) == 1 && *(v17 + *(v20 + 24)) == 1)
        {
          v21 = v24;
          sub_AB3400();
          (*(v10 + 56))(v21, 0, 1, v9);
          return sub_7D31B0(v21, v13 + v8);
        }
      }
    }

    else
    {
      sub_7D1ADC(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    }
  }

  sub_12E1C(v13 + v8, &qword_E1AD40, &qword_B2FA50);
  return (*(v10 + 56))(v13 + v8, 1, 1, v9);
}

uint64_t Lyrics.StateManager.State.loading.setter(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v9 - v5;
  sub_7D1A74(v1, &v9 - v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_7D21C8(a1, v1, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_7D1A74(v1, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  v7 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v4, v6);
  sub_7D1ADC(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((v7 & 1) == 0)
  {
    sub_7CA2A8();
  }

  sub_7D1ADC(a1, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_7D1ADC(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
}

void (*Lyrics.StateManager.State.loading.modify(void *a1))(uint64_t **a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State.Loading(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  sub_7D1A74(v1, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_7CA918;
}

void sub_7CA918(uint64_t **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = (*a1)[5];
  if (a2)
  {
    v6 = v3[2];
    v5 = v3[3];
    v8 = *v3;
    v7 = v3[1];
    sub_7D1A74((*a1)[5], v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1A74(v8, v7, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D21C8(v6, v8, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1A74(v8, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    v9 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v5, v7);
    sub_7D1ADC(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v9 & 1) == 0)
    {
      sub_7CA2A8();
    }

    v11 = v3[4];
    v10 = v3[5];
    v13 = v3[2];
    v12 = v3[3];
    v14 = v3[1];
    sub_7D1ADC(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    v15 = v14;
    v16 = v10;
  }

  else
  {
    v18 = v3[3];
    v17 = v3[4];
    v19 = *v3;
    sub_7D1A74(*v3, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D21C8(v4, v19, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1A74(v19, v18, type metadata accessor for Lyrics.StateManager.State.Loading);
    v20 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v18, v17);
    sub_7D1ADC(v18, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v20 & 1) == 0)
    {
      sub_7CA2A8();
    }

    v10 = v3[4];
    v15 = v3[5];
    v13 = v3[2];
    v12 = v3[3];
    v14 = v3[1];
    v16 = v15;
    v11 = v10;
  }

  sub_7D1ADC(v15, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_7D1ADC(v10, type metadata accessor for Lyrics.StateManager.State.Loading);
  free(v16);
  free(v11);
  free(v12);
  free(v13);
  free(v14);

  free(v3);
}

uint64_t Lyrics.StateManager.State.display.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *(type metadata accessor for Lyrics.StateManager.State(0) + 20);
  sub_7D1A74(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_7D21C8(a1, v1 + v8, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_7D1A74(v1 + v8, v5, type metadata accessor for Lyrics.StateManager.State.Display);
  if ((sub_AB56E0() & 1) != 0 && v5[*(v3 + 20)] == v7[*(v3 + 20)])
  {
    v10 = v5[*(v3 + 24)];
    sub_7D1ADC(v5, type metadata accessor for Lyrics.StateManager.State.Display);
    if (v10 == v7[*(v3 + 24)])
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_7D1ADC(v5, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  sub_7CA2A8();
LABEL_5:
  sub_7D1ADC(a1, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_7D1ADC(v7, type metadata accessor for Lyrics.StateManager.State.Display);
}

void (*Lyrics.StateManager.State.display.modify(void *a1))(uint64_t a1, char a2, __n128 a3)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for Lyrics.StateManager.State.Display(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = type metadata accessor for Lyrics.StateManager.State(0);
  sub_7D1A74(v1 + *(v6 + 20), v5, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_7CADBC;
}

void sub_7CADBC(uint64_t a1, char a2, __n128 a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    sub_7D1A74(*(a1 + 16), v3, type metadata accessor for Lyrics.StateManager.State.Display);
    Lyrics.StateManager.State.display.setter(v3);
    sub_7D1ADC(v4, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  else
  {
    Lyrics.StateManager.State.display.setter(*(a1 + 16));
  }

  free(v4);

  free(v3);
}

uint64_t Lyrics.StateManager.State.Loading.lyricsType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7D1A74(v2, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  result = swift_getEnumCaseMultiPayload();
  v7 = 0uLL;
  if (!result)
  {
    result = sub_7D1ADC(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    v7 = 0uLL;
    goto LABEL_5;
  }

  if (result != 1)
  {
LABEL_5:
    v9 = -1;
    v12 = 0uLL;
    goto LABEL_6;
  }

  v8 = *v5;
  v13 = *(v5 + 1);
  v14 = v8;
  v9 = v5[32];
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460) + 48);
  v11 = sub_AB86C0();
  result = (*(*(v11 - 8) + 8))(&v5[v10], v11);
  v12 = v13;
  v7 = v14;
LABEL_6:
  *a1 = v7;
  *(a1 + 16) = v12;
  *(a1 + 32) = v9;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB56F0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.setter(uint64_t a1)
{
  v3 = sub_AB56F0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Lyrics.StateManager.State.Display.sceneIsVisible.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.hasAppeared.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t static Lyrics.StateManager.State.Display.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_AB56E0() & 1) != 0 && (v4 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_7CB230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_AB56E0() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_7CB2B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v5, v7) & 1;
}

double sub_7CB324(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (!*(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_AB3980();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_AB99E0();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

double sub_7CB4C8(uint64_t a1)
{
  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  return result;
}

double sub_7CB56C@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  *a4 = *(v6 + *a3);

  return result;
}

double sub_7CB64C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3980();

  return result;
}

uint64_t sub_7CB75C()
{
  v1[74] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C50, &qword_B2B510);
  v1[75] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C48, &qword_B2B4E0);
  v1[76] = swift_task_alloc();
  v2 = sub_AB4BC0();
  v1[77] = v2;
  v1[78] = *(v2 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  type metadata accessor for Lyrics.StateManager.State(0);
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17B08, &qword_B2B200);
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v3 = sub_AB86C0();
  v1[111] = v3;
  v1[112] = *(v3 - 8);
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  sub_AB9940();
  v1[119] = sub_AB9930();
  v5 = sub_AB98B0();
  v1[120] = v5;
  v1[121] = v4;

  return _swift_task_switch(sub_7CBB34, v5, v4);
}

uint64_t sub_7CBB34()
{
  v68 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[74];
  swift_getKeyPath();
  v0[122] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v0[41] = v4;
  v0[123] = sub_7D2FFC(&qword_E17C30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_AB3990();

  v5 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v0[124] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_15F84(v4 + v5, v3, &qword_E17B08, &qword_B2B200);
  v6 = *(v1 + 48);
  v0[125] = v6;
  v0[126] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v2) == 1)
  {
    v7 = v0[110];
    v8 = v0[98];
    v66 = v0[97];
    v9 = v0[85];
    v10 = v0[74];

    sub_12E1C(v7, &qword_E17B08, &qword_B2B200);
    *v8 = 0;
    *(v8 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[73] = v10;
    sub_AB3990();

    v0[69] = v10;
    swift_getKeyPath();
    sub_AB39B0();

    v11 = v10 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_7D1A74(v11, v9, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1A74(v9, v66, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D21C8(v8, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v9, v66) & 1) == 0)
    {
      sub_7CA2A8();
    }

    v12 = v0[98];
    v13 = v0[90];
    v14 = v0[85];
    v15 = v0[74];
    sub_7D1ADC(v0[97], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1ADC(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1A74(v11, v13, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_7D21C8(v14, v11, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_7C55D4(v13);
    sub_7D1ADC(v13, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1ADC(v14, type metadata accessor for Lyrics.StateManager.State);
    v0[63] = v15;
    swift_getKeyPath();
    sub_AB39A0();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[118];
    v19 = v0[112];
    v20 = v0[111];
    v21 = v0[110];
    v22 = v0[108];
    v63 = v0[107];
    v23 = v0[91];
    v24 = v0[74];
    v25 = *(v19 + 32);
    v0[127] = v25;
    v0[128] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v18, v21, v20);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[58] = v24;
    sub_AB3990();

    v0[55] = v24;
    swift_getKeyPath();
    sub_AB39B0();

    v26 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    v0[129] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_7D1A74(v24 + v26, v23, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1A74(v23, v63, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D21C8(v22, v23, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v23, v63) & 1) == 0)
    {
      sub_7CA2A8();
    }

    v61 = v0[117];
    v64 = v0[118];
    v27 = v0[112];
    v28 = v0[108];
    v29 = v0[91];
    v30 = v0[90];
    v56 = v0[82];
    v31 = v0[78];
    v57 = v0[77];
    v59 = v0[111];
    v32 = v0[74];
    sub_7D1ADC(v0[107], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1ADC(v28, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1A74(v24 + v26, v30, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_7D21C8(v29, v24 + v26, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_7C55D4(v30);
    sub_7D1ADC(v30, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1ADC(v29, type metadata accessor for Lyrics.StateManager.State);
    v0[52] = v32;
    swift_getKeyPath();
    sub_AB39A0();

    v33 = Logger.lyrics.unsafeMutableAddressor();
    v0[130] = v33;
    v34 = *(v31 + 16);
    v0[131] = v34;
    v0[132] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v56, v33, v57);
    v35 = *(v27 + 16);
    v0[133] = v35;
    v0[134] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v61, v64, v59);
    v36 = sub_AB4BA0();
    v37 = sub_AB9F50();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[117];
    v40 = v0[112];
    v41 = v0[111];
    v42 = v0[82];
    v43 = v0[78];
    v44 = v0[77];
    if (v38)
    {
      v45 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = v65;
      *v45 = 136446210;
      sub_7D2FFC(&qword_E18218, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v60 = v44;
      v62 = v42;
      v46 = sub_ABB330();
      v48 = v47;
      v58 = v37;
      v49 = *(v40 + 8);
      v49(v39, v41);
      v50 = sub_7AB3E0(v46, v48, &v67);

      *(v45 + 4) = v50;
      _os_log_impl(&dword_0, v36, v58, "[State] Loading lyrics song %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);

      v51 = *(v43 + 8);
      v51(v62, v60);
    }

    else
    {

      v49 = *(v40 + 8);
      v49(v39, v41);
      v51 = *(v43 + 8);
      v51(v42, v44);
    }

    v0[136] = v49;
    v0[135] = v51;
    v52 = v0[74];
    swift_getKeyPath();
    v0[50] = v52;
    sub_AB3990();

    v53 = *(v52 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
    v0[137] = v53;
    v53;
    v54 = swift_task_alloc();
    v0[138] = v54;
    *v54 = v0;
    v54[1] = sub_7CC5FC;
    v55 = v0[118];

    return LyricsLoader.loadLyrics(for:)(v55);
  }
}

uint64_t sub_7CC5FC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 1112) = a1;
  *(v5 + 1120) = a2;
  *(v5 + 323) = a3;
  *(v5 + 1128) = v3;

  if (v3)
  {
    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_7CDD38;
  }

  else
  {

    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_7CC72C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_7CC72C()
{
  v163 = v0;

  if (sub_AB9A10())
  {
    v1 = *(v0 + 1120);
    v2 = *(v0 + 1112);
    v3 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_36B74(v2, v1, v3 & 1);
    goto LABEL_36;
  }

  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 888);
  v7 = *(v0 + 872);
  v8 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 424) = v8;
  sub_AB3990();

  sub_15F84(v8 + v5, v7, &qword_E17B08, &qword_B2B200);
  if (v4(v7, 1, v6) == 1)
  {
    v9 = *(v0 + 1120);
    v10 = *(v0 + 1112);
    v11 = *(v0 + 872);
    v12 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_36B74(v10, v9, v12 & 1);
    sub_12E1C(v11, &qword_E17B08, &qword_B2B200);
    goto LABEL_36;
  }

  (*(v0 + 1016))(*(v0 + 928), *(v0 + 872), *(v0 + 888));
  sub_7D2FFC(&qword_E18220, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  v13 = sub_AB7F90();
  v14 = *(v0 + 323);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  if ((v13 & 1) == 0)
  {
    v53 = *(v0 + 1088);
    v54 = *(v0 + 944);
    v55 = *(v0 + 928);
    v56 = *(v0 + 888);
    sub_36B74(*(v0 + 1112), *(v0 + 1120), v14 & 1);
    v53(v55, v56);
    v53(v54, v56);
    goto LABEL_36;
  }

  v17 = *(v0 + 1064);
  v18 = *(v0 + 944);
  v19 = *(v0 + 920);
  v20 = *(v0 + 888);
  (*(v0 + 1048))(*(v0 + 648), *(v0 + 1040), *(v0 + 616));
  v17(v19, v18, v20);
  sub_AFF30(v16, v15, v14 & 1);
  v21 = sub_AB4BA0();
  v22 = sub_AB9F50();
  sub_36B74(v16, v15, v14 & 1);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1112);
    v24 = *(v0 + 920);
    v130 = *(v0 + 1088);
    v25 = *(v0 + 888);
    v149 = *(v0 + 648);
    v156 = *(v0 + 1080);
    v134 = *(v0 + 1120);
    v143 = *(v0 + 616);
    v132 = *(v0 + 323);
    v26 = swift_slowAlloc();
    v162[0] = swift_slowAlloc();
    *v26 = 136446466;
    sub_7D2FFC(&qword_E18218, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v27 = sub_ABB330();
    v29 = v28;
    v130(v24, v25);
    v30 = sub_7AB3E0(v27, v29, v162);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v0 + 304) = v23;
    *(v0 + 312) = v134;
    *(v0 + 320) = v132 & 1;
    sub_AFF30(v23, v134, v132 & 1);
    v31 = sub_AB9350();
    v33 = sub_7AB3E0(v31, v32, v162);

    *(v26 + 14) = v33;
    _os_log_impl(&dword_0, v21, v22, "[State] Successfully loaded lyrics for song %{public}s with result %{public}s", v26, 0x16u);
    swift_arrayDestroy();

    v156(v149, v143);
    if ((*(v0 + 323) & 1) == 0)
    {
LABEL_8:
      v34 = *(v0 + 1120);
      v35 = *(v0 + 1112);
      v36 = *(v0 + 1064);
      v150 = *(v0 + 1032);
      v37 = *(v0 + 944);
      v38 = *(v0 + 888);
      v39 = *(v0 + 848);
      v157 = *(v0 + 840);
      v40 = *(v0 + 712);
      v41 = *(v0 + 592);
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460) + 48);
      *v39 = v35;
      *(v39 + 8) = v34;
      *(v39 + 16) = _swiftEmptyArrayStorage;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      v36(v39 + v42, v37, v38);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 568) = v41;

      sub_AB3990();

      *(v0 + 576) = v41;
      swift_getKeyPath();
      sub_AB39B0();

      sub_7D1A74(v41 + v150, v40, type metadata accessor for Lyrics.StateManager.State);
      sub_7D1A74(v40, v157, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_7D21C8(v39, v40, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v40, v157) & 1) == 0)
      {
        sub_7CA2A8();
      }

      v43 = *(v0 + 1088);
      v44 = *(v0 + 1032);
      v151 = *(v0 + 1120);
      v158 = *(v0 + 944);
      v138 = *(v0 + 1112);
      v144 = *(v0 + 928);
      v45 = *(v0 + 888);
      v46 = *(v0 + 848);
      v47 = *(v0 + 720);
      v48 = *(v0 + 712);
      v49 = *(v0 + 592);
      sub_7D1ADC(*(v0 + 840), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_7D1ADC(v46, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_7D1A74(v49 + v44, v47, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_7D21C8(v48, v49 + v44, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_7C55D4(v47);
      sub_7D1ADC(v47, type metadata accessor for Lyrics.StateManager.State);
      sub_7D1ADC(v48, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 336) = v49;
      swift_getKeyPath();
      sub_AB39A0();

      v50 = v138;
      v51 = v151;
      v52 = 0;
LABEL_31:
      sub_36B74(v50, v51, v52);
      v43(v144, v45);
      v43(v158, v45);
      goto LABEL_36;
    }
  }

  else
  {
    v57 = *(v0 + 1088);
    v58 = *(v0 + 1080);
    v59 = *(v0 + 920);
    v60 = *(v0 + 888);
    v61 = *(v0 + 648);
    v62 = *(v0 + 616);

    v57(v59, v60);
    v58(v61, v62);
    if ((*(v0 + 323) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v63 = *(v0 + 1112);
  v64 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 432) = v64;
  sub_AB3990();

  v65 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v66 = *(v64 + v65);
  if (v66)
  {
    v67 = v66;
    if ((MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter() & 1) == 0)
    {
      v110 = *(v0 + 1112);
      v133 = *(v0 + 1120);
      v129 = *(v0 + 1064);
      v147 = *(v0 + 1032);
      v111 = *(v0 + 944);
      v112 = *(v0 + 888);
      v113 = *(v0 + 832);
      v154 = *(v0 + 824);
      v161 = v67;
      v114 = *(v0 + 704);
      v115 = *(v0 + 592);
      v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460) + 48);
      v117 = (*(*v63 + 384))();
      v118 = *&v63[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
      *v113 = v117;
      *(v113 + 8) = v119;
      *(v113 + 16) = v118;
      *(v113 + 24) = v110;
      *(v113 + 32) = 0;
      v129(v113 + v116, v111, v112);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 536) = v115;
      sub_AFF30(v110, v133, 1);

      sub_AB3990();

      *(v0 + 544) = v115;
      swift_getKeyPath();
      sub_AB39B0();

      sub_7D1A74(v115 + v147, v114, type metadata accessor for Lyrics.StateManager.State);
      sub_7D1A74(v114, v154, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_7D21C8(v113, v114, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v114, v154) & 1) == 0)
      {
        sub_7CA2A8();
      }

      v120 = *(v0 + 1088);
      v121 = *(v0 + 1032);
      v148 = *(v0 + 1120);
      v155 = *(v0 + 944);
      v137 = *(v0 + 1112);
      v142 = *(v0 + 928);
      v122 = *(v0 + 888);
      v123 = *(v0 + 832);
      v124 = *(v0 + 720);
      v125 = *(v0 + 704);
      v126 = *(v0 + 592);
      sub_7D1ADC(*(v0 + 824), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_7D1ADC(v123, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_7D1A74(v126 + v121, v124, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_7D21C8(v125, v126 + v121, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_7C55D4(v124);
      sub_7D1ADC(v124, type metadata accessor for Lyrics.StateManager.State);
      sub_7D1ADC(v125, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 560) = v126;
      swift_getKeyPath();
      sub_AB39A0();

      sub_36B74(v137, v148, 1);
      v120(v142, v122);
      v120(v155, v122);
      goto LABEL_36;
    }
  }

  v68 = v63;
  if (v63[56] - 1 > 1)
  {
    v95 = *(v0 + 1112);
    v136 = *(v0 + 1120);
    v131 = *(v0 + 1064);
    v152 = *(v0 + 1032);
    v96 = *(v0 + 944);
    v97 = *(v0 + 888);
    v98 = *(v0 + 800);
    v160 = *(v0 + 792);
    v99 = *(v0 + 688);
    v100 = *(v0 + 592);
    v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460) + 48);
    v102 = (*(*v68 + 384))();
    v103 = *&v68[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
    *v98 = v102;
    *(v98 + 8) = v104;
    *(v98 + 16) = v103;
    *(v98 + 24) = v95;
    *(v98 + 32) = 0;
    v131(v98 + v101, v96, v97);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 448) = v100;
    sub_AFF30(v95, v136, 1);

    sub_AB3990();

    *(v0 + 456) = v100;
    swift_getKeyPath();
    sub_AB39B0();

    sub_7D1A74(v100 + v152, v99, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1A74(v99, v160, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D21C8(v98, v99, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v99, v160) & 1) == 0)
    {
      sub_7CA2A8();
    }

    v43 = *(v0 + 1088);
    v105 = *(v0 + 1032);
    v153 = *(v0 + 1120);
    v158 = *(v0 + 944);
    v141 = *(v0 + 1112);
    v144 = *(v0 + 928);
    v45 = *(v0 + 888);
    v106 = *(v0 + 800);
    v107 = *(v0 + 720);
    v108 = *(v0 + 688);
    v109 = *(v0 + 592);
    sub_7D1ADC(*(v0 + 792), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1ADC(v106, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_7D1A74(v109 + v105, v107, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_7D21C8(v108, v109 + v105, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_7C55D4(v107);
    sub_7D1ADC(v107, type metadata accessor for Lyrics.StateManager.State);
    sub_7D1ADC(v108, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 472) = v109;
    swift_getKeyPath();
    sub_AB39A0();

    v50 = v141;
    v51 = v153;
    v52 = 1;
    goto LABEL_31;
  }

  v69 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

  if (v69(0))
  {
    v70 = *(v0 + 608);
    v71 = *(v0 + 592);
    (*(*v63 + 288))();
    swift_getKeyPath();
    v72 = swift_task_alloc();
    *(v72 + 16) = v71;
    *(v72 + 24) = v70;
    *(v0 + 528) = v71;
    sub_AB3980();

    sub_12E1C(v70, &qword_E17C48, &qword_B2B4E0);
  }

  v73 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 480) = v73;
  sub_AB3990();

  v74 = *(v64 + v65);
  if (v74 && (v75 = [v74 vocalsControlCommand]) != 0 && (v76 = objc_msgSend(v75, "isActive"), swift_unknownObjectRelease(), v76) && (v69(2) & 1) == 0 || (v69(1) & 1) != 0)
  {
    v77 = *(v0 + 600);
    v78 = *(v0 + 592);
    (*(*v63 + 312))();
    swift_getKeyPath();
    v79 = swift_task_alloc();
    *(v79 + 16) = v78;
    *(v79 + 24) = v77;
    *(v0 + 520) = v78;
    sub_AB3980();

    sub_12E1C(v77, &qword_E17C50, &qword_B2B510);
  }

  v80 = *(v0 + 1112);
  v81 = *(v0 + 1064);
  v139 = *(v0 + 1032);
  v82 = *(v0 + 944);
  v83 = *(v0 + 888);
  v84 = *(v0 + 816);
  v145 = *(v0 + 808);
  v85 = *(v0 + 696);
  v86 = *(v0 + 592);
  v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17C38, &qword_B2B460) + 48);
  *v84 = v80;
  *(v84 + 8) = 0;
  *(v84 + 16) = 0;
  *(v84 + 24) = 0;
  *(v84 + 32) = 1;
  v81(v84 + v87, v82, v83);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *(v0 + 488) = v86;

  sub_AB3990();

  *(v0 + 496) = v86;
  swift_getKeyPath();
  sub_AB39B0();

  sub_7D1A74(v86 + v139, v85, type metadata accessor for Lyrics.StateManager.State);
  sub_7D1A74(v85, v145, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_7D21C8(v84, v85, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v85, v145) & 1) == 0)
  {
    sub_7CA2A8();
  }

  v88 = *(v0 + 1088);
  v89 = *(v0 + 1032);
  v159 = *(v0 + 944);
  v140 = *(v0 + 928);
  v146 = *(v0 + 1120);
  v135 = *(v0 + 1112);
  v90 = *(v0 + 888);
  v91 = *(v0 + 816);
  v92 = *(v0 + 720);
  v93 = *(v0 + 696);
  v94 = *(v0 + 592);
  sub_7D1ADC(*(v0 + 808), type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_7D1ADC(v91, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_7D1A74(v94 + v89, v92, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_7D21C8(v93, v94 + v89, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_7C55D4(v92);
  sub_7D1ADC(v92, type metadata accessor for Lyrics.StateManager.State);
  sub_7D1ADC(v93, type metadata accessor for Lyrics.StateManager.State);
  *(v0 + 512) = v94;
  swift_getKeyPath();
  sub_AB39A0();

  sub_36B74(v135, v146, 1);
  v88(v140, v90);
  v88(v159, v90);
LABEL_36:

  v127 = *(v0 + 8);

  return v127();
}