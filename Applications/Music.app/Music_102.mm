UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:title:image:style:menuTitle:accessibilityIdentifier:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIBarButtonItemStyle style, Swift::String_optional menuTitle, MusicCore::AccessibilityIdentifier_optional *accessibilityIdentifier)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v41 = *&image.is_nil;
  isa = image.value.super.isa;
  v39 = title.value._countAndFlagsBits;
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
  sub_100009F78(0, &qword_1011B15A8, UIMenu_ptr);
  sub_10010FC20(&qword_1011B5630, "\b)\n");
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100EBC6C0;
  v38 = objc_opt_self();
  v13 = swift_allocObject();
  v13[2]._rawValue = representativeOf._rawValue;
  v13[3]._rawValue = 1;
  v47 = sub_100B182E4;
  v48 = v13;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100B127D0;
  v46 = &unk_1010E2290;
  v14 = _Block_copy(&aBlock);

  v15 = [v38 elementWithUncachedProvider:v14];
  _Block_release(v14);
  *(preferredElementSize + 32) = v15;
  v16._countAndFlagsBits = style;
  v16._object = countAndFlagsBits;
  v51.value.super.isa = 0;
  v51.is_nil = 0;
  v17 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v51, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v35).super.super.isa;
  v37 = isa;
  v18 = v17;
  v19 = v11;

  v20 = v18;
  v21 = UIBarButtonItem.init(title:image:target:action:menu:)();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100EBC6C0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_100B182F8;
  *(v24 + 24) = v22;
  v47 = sub_100B18314;
  v48 = v24;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100B127D0;
  v46 = &unk_1010E2308;
  v25 = _Block_copy(&aBlock);
  v26 = v20;
  v27 = v21;

  v28 = [v38 elementWithUncachedProvider:v25];
  _Block_release(v25);
  *(v23 + 32) = v28;
  if (v19)
  {
    v29 = v39;
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

  v31 = v37;
  v32._countAndFlagsBits = v29;
  v32._object = v30;
  v52.value.super.isa = isa;
  v52.is_nil = 0;
  v33 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v32, 0, v52, 0, 0xFFFFFFFFFFFFFFFFLL, v23, v36.super.super.isa).super.super.isa;

  [v27 setMenuRepresentation:v33];

  [v27 setStyle:v41];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(object, accessibilityIdentifier, v49, v50);

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
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v39 = 0;
    v10 = 0;
  }

  v36 = [(objc_class *)v6 image];

  v37 = [(objc_class *)v6 style];
  v38 = v6;
  if (!object)
  {
    if (v10)
    {

      countAndFlagsBits = v39;
      object = v10;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }
  }

  sub_100009F78(0, &qword_1011B15A8, UIMenu_ptr);
  sub_10010FC20(&qword_1011B5630, "\b)\n");
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100EBC6C0;
  v35 = objc_opt_self();
  v12 = swift_allocObject();
  v12[2]._rawValue = representativeOf._rawValue;
  v12[3]._rawValue = 1;
  v44 = sub_100B182E4;
  v45 = v12;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100B127D0;
  v43 = &unk_1010E2358;
  v13 = _Block_copy(&aBlock);

  v14 = [v35 elementWithUncachedProvider:v13];
  _Block_release(v13);
  *(preferredElementSize + 32) = v14;
  v15._countAndFlagsBits = countAndFlagsBits;
  v15._object = object;
  v46.value.super.isa = 0;
  v46.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v15, 0, v46, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v32).super.super.isa;

  v17 = isa;
  v34 = v36;
  v18 = v17;
  v19 = UIBarButtonItem.init(title:image:target:action:menu:)();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBC6C0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_100B182F8;
  *(v22 + 24) = v20;
  v44 = sub_100B18314;
  v45 = v22;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_100B127D0;
  v43 = &unk_1010E23D0;
  v23 = _Block_copy(&aBlock);
  v24 = v18;
  v25 = v19;

  v26 = [v35 elementWithUncachedProvider:v23];
  _Block_release(v23);
  *(v21 + 32) = v26;
  if (v10)
  {
    v27 = v39;
  }

  else
  {
    v27 = 0;
  }

  if (!v10)
  {
    v10 = 0xE000000000000000;
  }

  v28 = v34;
  v29._countAndFlagsBits = v27;
  v29._object = v10;
  v47.value.super.isa = v36;
  v47.is_nil = 0;
  v30 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, 0, v47, 0, 0xFFFFFFFFFFFFFFFFLL, v21, v33.super.super.isa).super.super.isa;

  [v25 setMenuRepresentation:v30];

  [v25 setStyle:v37];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(0, 0, 0, 0);

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
          sub_10004ADFC(a1, a2);

LABEL_42:
          [v3 setPrimaryAction:0];
          v42 = [v3 title];
          if (v42)
          {
            v43 = v42;
            v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
          sub_10010FC20(&qword_1011B5630, "\b)\n");
          preferredElementSize = swift_allocObject();
          *(preferredElementSize + 16) = xmmword_100EBC6C0;
          v49 = objc_opt_self();
          v50 = swift_allocObject();
          *(v50 + 16) = sub_100B17750;
          *(v50 + 24) = v47;
          aBlock[4] = sub_100B18314;
          aBlock[5] = v50;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100B127D0;
          aBlock[3] = &unk_1010E2448;
          v51 = _Block_copy(aBlock);
          sub_10004ADE8(a1, a2);

          v52 = [v49 elementWithUncachedProvider:v51];
          _Block_release(v51);
          *(preferredElementSize + 32) = v52;
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

          sub_100009F78(0, &qword_1011B15A8, UIMenu_ptr);
          v55._countAndFlagsBits = v53;
          v55._object = v54;
          v77.value.super.isa = v46;
          v77.is_nil = 0;
          isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v55, 0, v77, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v69).super.super.isa;

          [v3 setMenuRepresentation:isa];
          sub_10004ADFC(v72, v73);
          sub_10004ADFC(a1, a2);

          goto LABEL_61;
        }
      }

      sub_10004ADFC(a1, a2);
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
          sub_100020438(v39, v40);
        }
      }

      goto LABEL_42;
    }

    v70 = v7;
    v16 = [v2 title];
    if (v16)
    {
      v17 = v16;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v3 image];
    [v3 setPrimaryAction:a1];
    v21 = [a1 title];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      v26 = [a1 title];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
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
          sub_100020438(v61, v62);
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

            sub_10004ADFC(a1, a2);
            v63 = v72;
            v64 = v32;
            goto LABEL_62;
          }

          v66 = v65;
          sub_100009F78(0, &qword_1011B7C30, UIMenuElement_ptr);
          v67 = v72;
          v68 = static NSObject.== infix(_:_:)();

          sub_10004ADFC(v72, v32);
          if (v68)
          {
            [v3 setMenuRepresentation:a1];

            sub_10004ADFC(a1, a2);
            sub_10004ADFC(a1, a2);
            v63 = v72;
            v64 = v32;
            goto LABEL_62;
          }

          sub_10004ADFC(v72, v32);
LABEL_61:
          v63 = a1;
          v64 = a2;
LABEL_62:
          sub_10004ADFC(v63, v64);
          return;
        }

        sub_10004ADFC(v72, v32);
      }

      goto LABEL_61;
    }

    v27 = String._bridgeToObjectiveC()();

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
      sub_10004ADFC(v14, v8);

      return;
    }
  }

  sub_10004ADFC(v14, v8);
}

uint64_t sub_100B15404(void *a1)
{
  v1 = [a1 children];
  sub_100009F78(0, &qword_1011B7C30, UIMenuElement_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

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
  return sub_100B154F8;
}

void sub_100B154F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_10004ADE8(*a1, v3);
    UIBarButtonItem.primaryActionKind.setter(v2, v3);

    sub_10004ADFC(v2, v3);
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
  sub_100009F78(0, &qword_1011B15B8, UIBarButtonItem_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
      sub_100B15734(&v11, &v10, v0);

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

void sub_100B15734(void *a1, void **a2, void *a3)
{
  v5 = *a2;
  sub_10010FC20(&qword_1011B5630, "\b)\n");
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100EBC6C0;
  *(v6 + 32) = v5;
  v7 = objc_allocWithZone(UIBarButtonItemGroup);
  sub_100009F78(0, &qword_1011B15B8, UIBarButtonItem_ptr);
  v8 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 initWithBarButtonItems:isa representativeItem:0];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v10 = v8;
  v11 = [a3 barButtonItems];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
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

        else if (v15 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v12 + 8 * v15 + 32);
          goto LABEL_10;
        }

        __break(1u);
        return;
      }

      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
      v17 = v16;

      v18 = static NSObject.== infix(_:_:)();

      if (v18)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_14:
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBC6C0;
  *(v19 + 32) = [objc_opt_self() fixedSpaceItemOfWidth:0.0];
  v20 = objc_allocWithZone(UIBarButtonItemGroup);
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v20 initWithBarButtonItems:v21 representativeItem:0];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
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

      v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

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

id sub_100B15B38(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v3.value = 1;
  v4 = _sSo15UIBarButtonItemC11MusicCoreUIE010contextBarbC07options16childrenProviderABSo13UIMenuOptionsV_SaySo0L7ElementCGyctFZ_0(v3, sub_100B1776C, v2);

  return v4;
}

uint64_t sub_100B15C1C(uint64_t a1)
{
  sub_100009F78(0, &qword_1011B15A8, UIMenu_ptr);
  sub_10010FC20(&qword_1011B5630, "\b)\n");
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100EBC6C0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 1;
  aBlock[4] = sub_100B182E4;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100B127D0;
  aBlock[3] = &unk_1010E2758;
  v5 = _Block_copy(aBlock);

  v6 = [v3 elementWithUncachedProvider:v5];
  _Block_release(v5);
  *(preferredElementSize + 32) = v6;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v7, 0, v14, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v12).super.super.isa;
  v9 = [(objc_class *)isa children];

  sub_100009F78(0, &qword_1011B7C30, UIMenuElement_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

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
  sub_10010FC20(&qword_1011B15D0, &qword_100F003F0);
  __chkstk_darwin();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v12 - v4;
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIButton.configuration.getter();
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    static UIButton.Configuration.plain()();
    if (v10(v5, 1, v6) != 1)
    {
      sub_1000095E8(v5, &qword_1011B15D0, &qword_100F003F0);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  a1(v9);
  (*(v7 + 16))(v3, v9, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  UIButton.configuration.setter();
  return (*(v7 + 8))(v9, v6);
}

uint64_t UITraitCollection.isAccessibilitySizeCategory.getter()
{
  v1 = [v0 preferredContentSizeCategory];
  v2 = UIContentSizeCategory.isAccessibilityCategory.getter();

  return v2 & 1;
}

uint64_t UITraitCollection.preferredLargeTitleDisplayMode.getter()
{
  if (![v0 userInterfaceIdiom])
  {
    return 3;
  }

  if ([v0 userInterfaceIdiom] == 1)
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
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = v17 - v4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v7 = qword_10121B340;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 keyCommandWithInput:v9 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v11 = v10;
  v12 = String._bridgeToObjectiveC()();

  [v11 setTitle:v12];

  if (qword_1011B0520 != -1)
  {
    swift_once();
  }

  v13 = qword_1011B15A0;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100B181D4;
  *(v14 + 24) = v6;
  v17[1] = sub_100031C9C;
  v17[2] = v14;

  sub_10010FC20(&qword_1011B15D8, &unk_100F003F8);
  v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v11, v13, v15, 3);

  swift_unknownObjectRelease();

  return v11;
}

void sub_100B165DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setActive:1];
    v4 = [v3 searchBar];
    [v4 becomeFirstResponder];

    v6 = UISearchController.searchText.getter(v5);
    if (v7)
    {
      v8 = v6;
      v9 = v7;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        v11 = [v3 searchBar];
        v12 = [v11 searchTextField];

        [v12 selectAll:v3];
      }
    }
  }
}

uint64_t UISearchController.searchText.getter(__n128 a1)
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 searchBar];
  v8 = [v7 text];

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v17[0] = v9;
    v17[1] = v11;
    static CharacterSet.newlines.getter();
    sub_1000098E0();
    v12 = StringProtocol.trimmingCharacters(in:)();
    v14 = v13;
    (*(v3 + 8))(v6, v2);

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      return v12;
    }
  }

  return 0;
}

id UIKeyCommand.init(title:input:modifierFlags:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = String._bridgeToObjectiveC()();

  v12 = [ObjCClassFromMetadata keyCommandWithInput:v11 modifierFlags:a5 action:"music_handleKeyCommand:"];

  v13 = v12;
  v14 = String._bridgeToObjectiveC()();

  [v13 setTitle:v14];

  v15 = qword_1011B0520;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_1011B15A0;
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;

  sub_10010FC20(&qword_1011B15D8, &unk_100F003F8);
  v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v13, v16, v18, 3);

  swift_unknownObjectRelease();

  return v13;
}

uint64_t UIKeyCommand.handler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1011B0520 != -1)
  {
    swift_once();
  }

  v6 = qword_1011B15A0;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    sub_10010FC20(&qword_1011B15D8, &unk_100F003F8);
    v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  else
  {
    v8 = 0;
  }

  objc_setAssociatedObject(v3, v6, v8, 3);
  swift_unknownObjectRelease();
  return sub_100020438(a1, a2);
}

uint64_t (*UIKeyCommand.handler.getter())(uint64_t a1)
{
  if (qword_1011B0520 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011B15A0))
  {
    _bridgeAnyObjectToAny(_:)();
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
    sub_10010FC20(&qword_1011B15D8, &unk_100F003F8);
    if (swift_dynamicCast())
    {
      *(swift_allocObject() + 16) = v2;
      return sub_100031BE4;
    }
  }

  else
  {
    sub_1000095E8(v5, &qword_1011B7C70, &unk_100EFFD00);
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
  return sub_100B16CC0;
}

void sub_100B16CC0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    sub_100030444(**a1, v3);
    if (qword_1011B0520 != -1)
    {
      swift_once();
    }

    v5 = qword_1011B15A0;
    if (v4)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v2[2] = sub_100875A24;
      v2[3] = v6;

      sub_10010FC20(&qword_1011B15D8, &unk_100F003F8);
      v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v7 = 0;
    }

    objc_setAssociatedObject(v2[4], v5, v7, 3);
    swift_unknownObjectRelease();
    sub_100020438(v4, v3);
    v11 = *v2;
    v12 = v2[1];
  }

  else
  {
    if (qword_1011B0520 != -1)
    {
      swift_once();
    }

    v8 = qword_1011B15A0;
    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v3;
      v2[2] = sub_100875A24;
      v2[3] = v9;

      sub_10010FC20(&qword_1011B15D8, &unk_100F003F8);
      v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    }

    else
    {
      v10 = 0;
    }

    objc_setAssociatedObject(v2[4], v8, v10, 3);
    swift_unknownObjectRelease();
    v11 = v4;
    v12 = v3;
  }

  sub_100020438(v11, v12);

  free(v2);
}

uint64_t sub_100B16EA8()
{
  result = swift_slowAlloc();
  qword_1011B15A0 = result;
  return result;
}

id UIKeyCommand.pioritizedOverSystemBehavior(_:)(char a1)
{
  [v1 setWantsPriorityOverSystemBehavior:a1 & 1];

  return v3;
}

void sub_100B16F18(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v3 = UIKeyCommand.handler.getter();
  if (v3)
  {
    v5 = v3;
    v6 = v4;
    v3(v7);

    sub_100020438(v5, v6);
  }

  else
  {
  }
}

id UIFont.monospacedDigits()()
{
  swift_getObjectType();
  sub_10010FC20(&qword_1011B15E0, &qword_100F00408);
  inited = swift_initStackObject();
  v2 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 6;
  *(inited + 16) = xmmword_100EBDC20;
  v3 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = v3;
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = 0;
  v4 = v2;
  v5 = v3;
  v6 = sub_100B17774(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011B15E8, &qword_100F00410);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  sub_10010FC20(&qword_1011B15F0, &qword_100F00418);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_100EBC6B0;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_10010FC20(&qword_1011B15F8, &qword_100F00420);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6B0;
  *(v9 + 32) = v6;
  *(v8 + 64) = sub_10010FC20(&qword_1011B1600, &qword_100F00428);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_100B1789C(v8);
  swift_setDeallocating();
  sub_1000095E8(v8 + 32, &qword_1011B1608, &qword_100F00430);
  _s3__C13AttributeNameVMa_0(0);
  sub_100B181DC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  v13 = [swift_getObjCClassFromMetadata() fontWithDescriptor:v12 size:0.0];
  return v13;
}

uint64_t (*static UIPointerStyle.capsule(in:)(void *a1))(void *a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100B18234;
}

uint64_t sub_100B17268(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10010FC20(&unk_1011B7C20, "|)\n");
  __chkstk_darwin();
  v8 = &v38 - v7;
  v9 = type metadata accessor for UIPointerEffect();
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

    v15 = sub_100058728(v15, v17, v19, v21, (Height - v28) * 0.5, v25 * 0.5);
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

  sub_100009F78(0, &qword_1011B1628, UIPointerStyle_ptr);
  *v8 = v15;
  *(v8 + 1) = v17;
  *(v8 + 2) = v19;
  *(v8 + 3) = v21;
  *(v8 + 4) = v32 * 0.5;
  v34 = enum case for UIPointerShape.roundedRect(_:);
  v35 = type metadata accessor for UIPointerShape();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v8, v34, v35);
  (*(v36 + 56))(v8, 0, 1, v35);
  return UIPointerStyle.init(effect:shape:)();
}

uint64_t sub_100B1755C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100B176EC();
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011B15C0, "()\n");
            v9 = sub_100AA5424(v13, i, a3);
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100009F78(0, &qword_1011B15B8, UIBarButtonItem_ptr);
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

unint64_t sub_100B176EC()
{
  result = qword_1011B15C8;
  if (!qword_1011B15C8)
  {
    sub_1001109D0(&qword_1011B15C0, "()\n");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B15C8);
  }

  return result;
}

unint64_t sub_100B17774(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1638, &unk_100F00530);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v11, &qword_1011B15E8, &qword_100F00410);
      v5 = v11;
      result = sub_100BB440C();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100016270(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100B1789C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1630, "|)\n");
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v11, &qword_1011B1608, &qword_100F00430);
      v5 = v11;
      result = sub_100BB440C();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100016270(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100B179C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1610, "F)\n");
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100BB2BEC(v5);
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

Class _sSo15UIBarButtonItemC11MusicCoreUIE010contextBarbC07options16childrenProviderABSo13UIMenuOptionsV_SaySo0L7ElementCGyctFZ_0(UIMenuIdentifier_optional a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &aBlock[-1] - v10;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v7 + 16))(v9, v11, v6);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v12 = qword_10121B340;
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v15 = v14;
  (*(v7 + 8))(v11, v6);
  sub_100009F78(0, &qword_1011B15B8, UIBarButtonItem_ptr);
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() systemImageNamed:v16];

  sub_10010FC20(&qword_1011B5630, "\b)\n");
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6C0;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  aBlock[4] = sub_100B18314;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100B127D0;
  aBlock[3] = &unk_1010E2708;
  v21 = _Block_copy(aBlock);

  v22 = [v19 elementWithUncachedProvider:v21];
  _Block_release(v21);
  *(v18 + 32) = v22;
  sub_100009F78(0, &qword_1011B15A8, UIMenu_ptr);
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v35.value.super.isa = 0;
  v35.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, 0, v35, a1, 0xFFFFFFFFFFFFFFFFLL, v18, v32).super.super.isa;
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
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v20 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v5 + 16))(v7, v9, v4);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v10 = qword_10121B340;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  (*(v5 + 8))(v9, v4);
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 keyCommandWithInput:v12 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v14 = v13;
  v15 = String._bridgeToObjectiveC()();

  [v14 setTitle:v15];

  if (qword_1011B0520 != -1)
  {
    swift_once();
  }

  v16 = qword_1011B15A0;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v20[1] = sub_100875A24;
  v20[2] = v17;

  sub_10010FC20(&qword_1011B15D8, &unk_100F003F8);
  v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v14, v16, v18, 3);
  swift_unknownObjectRelease();

  return v14;
}

unint64_t sub_100B181DC()
{
  result = qword_1011B0BC0;
  if (!qword_1011B0BC0)
  {
    _s3__C13AttributeNameVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B0BC0);
  }

  return result;
}

double sub_100B18258(void (*a1)(void))
{
  (*(v1 + 16))();
  a1();

  return result;
}

uint64_t *UIView.Border.artwork.unsafeMutableAddressor()
{
  if (qword_1011B0528 != -1)
  {
    swift_once();
  }

  return &static UIView.Border.artwork;
}

void sub_100B183BC()
{
  v0 = objc_allocWithZone(UIColor);
  v5[4] = sub_1007F132C;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10003640C;
  v5[3] = &unk_1010E27F8;
  v1 = _Block_copy(v5);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  UIView.Border.init(thickness:color:)();
  static UIView.Border.artwork = v2;
  byte_10121B5E8 = v3 & 1;
  qword_10121B5F0 = v4;
}

uint64_t static UIView.Border.artwork.getter()
{
  if (qword_1011B0528 != -1)
  {
    swift_once();
  }

  v0 = static UIView.Border.artwork;
  v1 = qword_10121B5F0;
  return v0;
}

void sub_100B1851C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_1011B1650 = v1 == 6;
}

uint64_t sub_100B18580()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.extraSmall);
  sub_1000060E4(v0, static UIView.Corner.extraSmall);
  if (qword_1011B0530 != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

uint64_t sub_100B1866C()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.small);
  sub_1000060E4(v0, static UIView.Corner.small);
  if (qword_1011B0530 != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

uint64_t sub_100B18734()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.medium);
  sub_1000060E4(v0, static UIView.Corner.medium);
  if (qword_1011B0530 != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

uint64_t sub_100B187FC()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.large);
  sub_1000060E4(v0, static UIView.Corner.large);
  if (qword_1011B0530 != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

uint64_t sub_100B188E8()
{
  v0 = type metadata accessor for UIView.Corner();
  sub_100006080(v0, static UIView.Corner.extraLarge);
  sub_1000060E4(v0, static UIView.Corner.extraLarge);
  if (qword_1011B0530 != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

uint64_t sub_100B189B0(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for UIView.Corner();

  return sub_1000060E4(v4, a2);
}

uint64_t sub_100B18A28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for UIView.Corner();
  v7 = sub_1000060E4(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void *HI.Color.prominentTextColor.unsafeMutableAddressor()
{
  if (qword_1011B0560 != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentTextColor;
}

id sub_100B18BA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 userInterfaceStyle];
  sub_100B11BFC();
  if (v7 == 2)
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
  if (qword_1011B0568 != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentBackgroundColor;
}

uint64_t sub_100B18D20@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicCoreUI2HIO9SizeClassO8rawValueAESg0B8Graphics7CGFloatV_tcfC_0(*a1);
  *a2 = result;
  return result;
}

double sub_100B18D4C@<D0>(double *a1@<X8>)
{
  result = dbl_100F009C0[*v1];
  *a1 = result;
  return result;
}

Swift::Int sub_100B18E34(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100F00980[a2]);
  return Hasher._finalize()();
}

double sub_100B18E84(char a1, char a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 != 2)
      {
        return dbl_100F00940[a1];
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
      return dbl_100F00920[a1];
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
      return dbl_100F00960[a1];
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

    v18 = round(sub_100B18E84(a1, a2 & 1, v13) * (1.0 / (v17 * 0.7)));
  }

  else
  {
    v18 = sub_100B18E84(a1, a2 & 1, v13);
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

  Hasher._combine(_:)(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = *(v0 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  Hasher._combine(_:)(qword_100F00980[*(v0 + 24)]);
  Hasher._combine(_:)(*(v0 + 25));
  Hasher._combine(_:)(*(v0 + 26) & 1);
  v4 = *(v0 + 32);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = *(v0 + 40);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = *(v0 + 48);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  Hasher._combine(_:)(*(v0 + 56) & 1);
}

Swift::Int HI.Grid.Metrics.hashValue.getter()
{
  Hasher.init(_seed:)();
  HI.Grid.Metrics.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100B19484(uint64_t a1)
{
  Hasher.init(_seed:)();
  HI.Grid.Metrics.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100B194C0(_OWORD *a1, _OWORD *a2)
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
  if (qword_1011B0570 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.overlappingHeight;
}

double sub_100B1966C()
{
  if (qword_1011B0570 != -1)
  {
    swift_once();
  }

  result = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  static HI.BottomPlayer.Ornament.offset = 0;
  *&qword_10121B690 = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  return result;
}

uint64_t *HI.BottomPlayer.Ornament.offset.unsafeMutableAddressor()
{
  if (qword_1011B0578 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.Ornament.offset.getter()
{
  if (qword_1011B0578 != -1)
  {
    swift_once();
  }

  return *&static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.size(dynamicTypeSize:)(uint64_t a1)
{
  sub_10010FC20(&qword_1011B1478, &qword_100F00188);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v14 - v8;
  sub_100B19D2C(a1, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100B19D9C(v3);
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    (*(v5 + 104))(v7, enum case for DynamicTypeSize.accessibility1(_:), v4);
    sub_100B19E04();
    v10 = dispatch thunk of static Comparable.< infix(_:_:)();
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
  if (qword_1011B0580 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.buttonSpacing;
}

uint64_t *HI.BottomPlayer.contentHorizontalPadding.unsafeMutableAddressor()
{
  if (qword_1011B0588 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.contentHorizontalPadding;
}

double sub_100B19AB0(void *a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100B19D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B1478, &qword_100F00188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B19D9C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B1478, &qword_100F00188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100B19E04()
{
  result = qword_1011B1658;
  if (!qword_1011B1658)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1658);
  }

  return result;
}

unint64_t sub_100B19E8C()
{
  result = qword_1011B1670;
  if (!qword_1011B1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1670);
  }

  return result;
}

unint64_t sub_100B19F14()
{
  result = qword_1011B1688;
  if (!qword_1011B1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1688);
  }

  return result;
}

unint64_t sub_100B19F6C()
{
  result = qword_1011B1690;
  if (!qword_1011B1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1690);
  }

  return result;
}

__n128 sub_100B1A000(uint64_t a1, uint64_t a2)
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

uint64_t sub_100B1A01C(uint64_t a1, unsigned int a2)
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

uint64_t sub_100B1A070(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_100B1A150(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
{
  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (a4 <= 1u)
  {
    if (a4)
    {
LABEL_9:
      result = 540.0;
      if (v8 == 6)
      {
        return 512.0;
      }

      return result;
    }

    result = 540.0;
    if (v8 == 6)
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
  v8 = sub_100B1A150(a2, a3, a4 & 1, a1);
  v9 = [objc_opt_self() currentTraitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 6 && (a4 & 1) == 0 && (a5 & 1) == 0)
  {
    v11 = *&a2;
    if (qword_1011B0590 != -1)
    {
      swift_once();
      v11 = *&a2;
    }

    if (v8 + *&qword_10121B6A8 + *&qword_10121B6A8 > v11)
    {
      return v11 - (*&qword_10121B6A8 + *&qword_10121B6A8);
    }
  }

  return v8;
}

unint64_t sub_100B1A3F4()
{
  result = qword_1011B1698;
  if (!qword_1011B1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1698);
  }

  return result;
}

uint64_t sub_100B1A46C()
{
  _StringGuts.grow(_:)(42);

  v0._countAndFlagsBits = Song.title.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0x64692E676E6F7320;
  v1._object = 0xE90000000000003DLL;
  String.append(_:)(v1);
  Song.id.getter();
  v2 = MusicItemID.description.getter();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._object = 0x8000000100E651A0;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  Song.catalogID.getter();
  sub_10010FC20(&qword_1011B1780, &qword_100F00C68);
  v7._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v7);

  return 0x7469742E676E6F73;
}

uint64_t LyricsLoader.loadLyrics(for:)(uint64_t a1)
{
  v2[65] = v1;
  v2[64] = a1;
  v3 = type metadata accessor for URL();
  v2[66] = v3;
  v2[67] = *(v3 - 8);
  v2[68] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[69] = v4;
  v2[70] = *(v4 - 8);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v5 = type metadata accessor for String.Encoding();
  v2[75] = v5;
  v2[76] = *(v5 - 8);
  v2[77] = swift_task_alloc();
  v6 = type metadata accessor for Song();
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

  return _swift_task_switch(sub_100B1A80C, 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  sub_10010FC20(&qword_1011B16C8, &qword_100F00AB0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for Song();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100B1D508, 0, 0);
}

uint64_t sub_100B1A80C(uint64_t a1)
{
  v41 = v1;
  if (Song.hasLyrics.getter() & 1) != 0 || (Song.hasCustomLyrics.getter())
  {
    sub_10010FC20(&qword_1011B5630, "\b)\n");
    v2 = swift_allocObject();
    v1[89] = v2;
    *(v2 + 16) = xmmword_100EBC6C0;
    sub_10010FC20(&qword_1011B16A8, &qword_100F00A88);
    *(v2 + 32) = static PartialMusicProperty<A>.customLyrics.getter();
    v3 = swift_task_alloc();
    v1[90] = v3;
    v4 = sub_100B23174();
    *v3 = v1;
    v3[1] = sub_100B1AC84;
    v5 = v1[88];
    v6 = v1[78];

    return MusicItem<>.with(_:)(v5, v2, v6, &protocol witness table for Song, &protocol witness table for Song, v4);
  }

  else
  {
    v7 = v1[83];
    v8 = v1[79];
    v9 = v1[78];
    v10 = v1[72];
    v11 = v1[70];
    v12 = v1[69];
    v13 = v1[65];
    v14 = v1[64];
    v15 = Logger.lyrics.unsafeMutableAddressor();
    (*(v11 + 16))(v10, v15, v12);
    (*(v8 + 16))(v7, v14, v9);
    v16 = v13;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v1[83];
    v21 = v1[79];
    v22 = v1[78];
    v23 = v1[72];
    v24 = v1[70];
    v25 = v1[69];
    if (v19)
    {
      v39 = v1[72];
      v26 = v1[65];
      v38 = v1[69];
      v27 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v27 = 136446466;
      v1[57] = v26;
      v28 = String.init<A>(describing:)();
      v30 = sub_100010744(v28, v29, v40);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2082;
      v31 = sub_100B1A46C();
      v33 = v32;
      (*(v21 + 8))(v20, v22);
      v34 = sub_100010744(v31, v33, v40);

      *(v27 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v17, v18, "Loader<%{public}s> loadLyrics(for:completion:) returned without loading lyrics [hasLyrics and hasCustomLyrics were false] %{public}s", v27, 0x16u);
      swift_arrayDestroy();

      (*(v24 + 8))(v39, v38);
    }

    else
    {

      (*(v21 + 8))(v20, v22);
      (*(v24 + 8))(v23, v25);
    }

    sub_100B23120();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();

    v36 = v1[1];

    return v36();
  }
}

uint64_t sub_100B1AC84()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_100B1C4C8;
  }

  else
  {

    v2 = sub_100B1ADA0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B1ADA0()
{
  v141 = v0;
  v1 = Song.customLyrics.getter();
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
      v7 = String._bridgeToObjectiveC()();
      v8 = [v6 BOOLForKey:v7];

      if (v8 && *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1 && (v9 = String.trim()(), v10 = sub_100B1CE8C(544502844, 0xE400000000000000, v9._countAndFlagsBits, v9._object), , (v10 & 1) != 0) && (v11 = *(v0 + 616), v12 = *(v0 + 608), v13 = *(v0 + 600), static String.Encoding.utf8.getter(), v14 = String.data(using:allowLossyConversion:)(), v16 = v15, *(v0 + 736) = v14, *(v0 + 744) = v15, (*(v12 + 8))(v11, v13), v16 >> 60 != 15))
      {

        v116 = objc_allocWithZone(MSVLyricsTTMLParser);
        sub_10002BC44(v14, v16);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v118 = [v116 initWithTTMLData:isa];
        *(v0 + 752) = v118;

        sub_100029CA4(v14, v16);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 488;
        *(v0 + 24) = sub_100B1BCA0;
        v119 = swift_continuation_init();
        *(v0 + 392) = sub_10010FC20(&qword_1011B16C0, &qword_100F00AA0);
        *(v0 + 336) = _NSConcreteStackBlock;
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = sub_100B1CFE8;
        *(v0 + 360) = &unk_1010E2BE0;
        *(v0 + 368) = v119;
        [v118 parseWithCompletion:v0 + 336];

        return _swift_continuation_await(v0 + 16, v120);
      }

      else
      {
        (*(*(v0 + 632) + 8))(*(v0 + 704), *(v0 + 624));

        v17 = *(v0 + 8);

        return v17(v3, v4, 0);
      }
    }
  }

  if ((Song.hasLyrics.getter() & 1) == 0)
  {
    v54 = *(v0 + 704);
    v55 = *(v0 + 696);
    v56 = *(v0 + 688);
    v57 = *(v0 + 632);
    v58 = *(v0 + 624);
    v59 = *(v0 + 592);
    v60 = *(v0 + 560);
    v61 = *(v0 + 552);
    v134 = *(v0 + 680);
    v138 = *(v0 + 520);
    v62 = *(v0 + 512);
    v63 = Logger.lyrics.unsafeMutableAddressor();
    (*(v60 + 16))(v59, v63, v61);
    v64 = *(v57 + 16);
    v64(v55, v62, v58);
    v64(v56, v54, v58);
    v64(v134, v62, v58);
    v65 = v138;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 696);
    v70 = *(v0 + 688);
    v139 = *(v0 + 680);
    v71 = *(v0 + 632);
    v72 = *(v0 + 624);
    v73 = *(v0 + 592);
    v74 = *(v0 + 560);
    v75 = *(v0 + 552);
    if (v68)
    {
      v135 = *(v0 + 592);
      v76 = *(v0 + 520);
      v133 = *(v0 + 552);
      v77 = swift_slowAlloc();
      v140[0] = swift_slowAlloc();
      *v77 = 136446978;
      *(v0 + 464) = v76;
      v78 = String.init<A>(describing:)();
      v129 = v67;
      v80 = sub_100010744(v78, v79, v140);

      *(v77 + 4) = v80;
      *(v77 + 12) = 2082;
      v81 = Song.hasCustomLyrics.getter();
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
      v85 = sub_100010744(v82, v83, v140);

      *(v77 + 14) = v85;
      *(v77 + 22) = 2082;
      *(v0 + 424) = Song.customLyrics.getter();
      *(v0 + 432) = v86;
      sub_10010FC20(&qword_1011B7770, &qword_100F083D0);
      v87 = String.init<A>(describing:)();
      v89 = v88;
      v84(v70, v72);
      v90 = sub_100010744(v87, v89, v140);

      *(v77 + 24) = v90;
      *(v77 + 32) = 2082;
      v91 = sub_100B1A46C();
      v93 = v92;
      v84(v139, v72);
      v94 = sub_100010744(v91, v93, v140);

      *(v77 + 34) = v94;
      _os_log_impl(&_mh_execute_header, loga, v129, "Loader<%{public}s> loadLyrics(for:completion:) didn't load lyrics [no lyrics found] song.hasLyrics=false song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v77, 0x2Au);
      swift_arrayDestroy();

      (*(v74 + 8))(v135, v133);
    }

    else
    {

      v84 = *(v71 + 8);
      v84(v139, v72);
      v84(v70, v72);
      v84(v69, v72);
      (*(v74 + 8))(v73, v75);
    }

    v109 = *(v0 + 704);
    v110 = *(v0 + 624);
    sub_100B23120();
    swift_allocError();
    *v111 = 1;
    swift_willThrow();
    v84(v109, v110);
    goto LABEL_36;
  }

  static ApplicationCapabilities.shared.getter(v0 + 208);
  sub_100014984(v0 + 208);
  if ((*(v0 + 218) & 1) == 0)
  {
    v19 = *(v0 + 672);
    v20 = *(v0 + 632);
    v21 = *(v0 + 624);
    v22 = *(v0 + 584);
    v23 = *(v0 + 560);
    v24 = *(v0 + 552);
    v136 = *(v0 + 520);
    v25 = *(v0 + 512);
    v26 = [objc_opt_self() sharedController];
    v27 = [v26 musicSubscriptionStatus];

    static ApplicationCapabilities.shared.getter(v0 + 80);
    sub_100014984(v0 + 80);
    v132 = *(v0 + 88);
    v28 = Logger.lyrics.unsafeMutableAddressor();
    (*(v23 + 16))(v22, v28, v24);
    (*(v20 + 16))(v19, v25, v21);
    v29 = v136;
    v30 = v27;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 672);
    v35 = *(v0 + 632);
    v36 = *(v0 + 624);
    v37 = *(v0 + 584);
    v38 = *(v0 + 560);
    v39 = *(v0 + 552);
    if (v33)
    {
      v131 = v32;
      v40 = *(v0 + 520);
      log = *(v0 + 624);
      v41 = swift_slowAlloc();
      v140[0] = swift_slowAlloc();
      *v41 = 136446978;
      *(v0 + 472) = v40;
      v42 = String.init<A>(describing:)();
      v137 = v37;
      v130 = v39;
      v44 = sub_100010744(v42, v43, v140);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2082;
      *(v0 + 480) = v30;
      v45 = v30;
      sub_10010FC20(&qword_1011B16B8, &qword_100F00A90);
      v46 = String.init<A>(describing:)();
      v48 = sub_100010744(v46, v47, v140);

      *(v41 + 14) = v48;
      *(v41 + 22) = 1026;
      *(v41 + 24) = WORD1(v132) & 1;
      *(v41 + 28) = 2082;
      v49 = sub_100B1A46C();
      v51 = v50;
      v52 = *(v35 + 8);
      v52(v34, log);
      v53 = sub_100010744(v49, v51, v140);

      *(v41 + 30) = v53;
      _os_log_impl(&_mh_execute_header, v31, v131, "Loader<%{public}s> loadLyrics(for:completion:) didn't load store lyrics [not supported by subscription] subscriptionStatus=%{public}s subscriptionStatus.capabilities.contains(.catalogLyricsViewing)=%{BOOL,public}d %{public}s", v41, 0x26u);
      swift_arrayDestroy();

      (*(v38 + 8))(v137, v130);
    }

    else
    {

      v52 = *(v35 + 8);
      v52(v34, v36);
      (*(v38 + 8))(v37, v39);
    }

    v112 = *(v0 + 704);
    v113 = *(v0 + 624);
    sub_100B23120();
    swift_allocError();
    *v114 = 2;
    swift_willThrow();

    v52(v112, v113);
LABEL_36:

    v115 = *(v0 + 8);

    return v115();
  }

  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() != 1)
  {
    goto LABEL_29;
  }

  v95 = Song.catalogID.getter();
  *(v0 + 768) = v96;
  if (!v96)
  {
    goto LABEL_29;
  }

  v97 = v95;
  v98 = v96;
  v99 = *(v0 + 728);
  _StringGuts.grow(_:)(30);

  v140[0] = 0xD000000000000017;
  v140[1] = 0x8000000100E650C0;
  v100._countAndFlagsBits = v97;
  v100._object = v98;
  String.append(_:)(v100);
  v101._countAndFlagsBits = 0x6C6D74742ELL;
  v101._object = 0xE500000000000000;
  String.append(_:)(v101);
  URL.init(fileURLWithPath:)();

  v102 = Data.init(contentsOf:options:)();
  *(v0 + 776) = v102;
  *(v0 + 784) = v103;
  if (v99)
  {
    v104 = *(v0 + 544);
    v105 = *(v0 + 536);
    v106 = *(v0 + 528);

    (*(v105 + 8))(v104, v106);
LABEL_29:
    v107 = swift_task_alloc();
    *(v0 + 816) = v107;
    *v107 = v0;
    v107[1] = sub_100B1C238;
    v108 = *(v0 + 512);

    return sub_100B1DDCC(v108);
  }

  v121 = v102;
  v122 = v103;
  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  v123 = *LyricsOptionsManager.shared.unsafeMutableAddressor();

  BagProvider.shared.unsafeMutableAddressor();

  v124 = BagProvider.bag.getter();

  (*(*v123 + 120))(v124);

  v125 = swift_task_alloc();
  *(v0 + 792) = v125;
  v125[2] = v121;
  v125[3] = v122;
  v125[4] = v97;
  v125[5] = v98;
  v126 = swift_task_alloc();
  *(v0 + 800) = v126;
  *v126 = v0;
  v126[1] = sub_100B1BF68;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 400, 0, 0, 0xD000000000000010, 0x8000000100E650E0, sub_100B231CC, v125, &type metadata for LyricsLoader.Result);
}

uint64_t sub_100B1BCA0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 760) = v1;
  if (v1)
  {
    v2 = sub_100B1C60C;
  }

  else
  {
    v2 = sub_100B1BDB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B1BDB0()
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

  sub_100029CA4(v3, v2);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(v10, 0, 1);
}

uint64_t sub_100B1BF68()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_100B1CBC8;
  }

  else
  {
    v2 = sub_100B1C0B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B1C0B8()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  sub_10002C064(*(v0 + 776), *(v0 + 784));
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 408);
  v8 = *(v0 + 400);
  v6 = *(v0 + 416);

  v4 = *(v0 + 8);

  return v4(v8, v7, v6);
}

uint64_t sub_100B1C238(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 824) = v1;

  if (v1)
  {
    v5 = sub_100B1CD34;
  }

  else
  {
    *(v4 + 832) = a1;
    v5 = sub_100B1C360;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100B1C360()
{
  v3 = v0[104];
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1(v3, 0, 1);
}

uint64_t sub_100B1C4C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B1C60C(uint64_t a1)
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
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

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
    v20 = String.init<A>(describing:)();
    v22 = sub_100010744(v20, v21, v66);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2082;
    v1[63] = v14;
    swift_errorRetain();
    sub_10010FC20(&qword_1011B62D0, &qword_100F06280);
    v23 = String.init<A>(describing:)();
    v25 = sub_100010744(v23, v24, v66);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2082;
    v26 = Song.hasCustomLyrics.getter();
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
    v30 = sub_100010744(v27, v28, v66);

    *(v19 + 24) = v30;
    *(v19 + 32) = 2082;
    v1[55] = Song.customLyrics.getter();
    v1[56] = v31;
    sub_10010FC20(&qword_1011B7770, &qword_100F083D0);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    v29(v57, v17);
    v35 = sub_100010744(v32, v34, v66);

    *(v19 + 34) = v35;
    *(v19 + 42) = 2082;
    v36 = sub_100B1A46C();
    v38 = v37;
    v29(v58, v17);
    v39 = sub_100010744(v36, v38, v66);

    *(v19 + 44) = v39;
    _os_log_impl(&_mh_execute_header, v12, v13, "Loader<%{public}s> loadLyrics(for:completion:) didn't parse TTML custom lyrics with error=%{public}s song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v19, 0x34u);
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
  sub_100B23120();
  swift_allocError();
  *v54 = 0;
  swift_willThrow();

  sub_100029CA4(v51, v50);
  v29(v52, v53);

  v55 = v1[1];

  return v55();
}

uint64_t sub_100B1CBC8()
{
  v1 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  sub_10002C064(v0[97], v0[98]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100B1CD34()
{
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100B1CE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = String.Iterator.next()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    object = v4.value._object;
    do
    {
      v9 = String.Iterator.next()();
      if (!v9.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v9.value._countAndFlagsBits && object == v9.value._object)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v8 = String.Iterator.next()();
      countAndFlagsBits = v8.value._countAndFlagsBits;
      object = v8.value._object;
    }

    while (v8.value._object);
  }

  v10 = String.Iterator.next()().value._object;

  if (!v10)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t *sub_100B1CFE8(uint64_t a1, void *a2, void *a3)
{
  result = sub_10000954C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10010FC20(&qword_1011B62D0, &qword_100F06280);
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

void sub_100B1D0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&qword_1011B1720, "j$\n");
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = aBlock - v11;
  v13 = objc_allocWithZone(MSVLyricsTTMLParser);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v15 = [v13 initWithTTMLData:isa];

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a4;
  v18[1] = a5;
  aBlock[4] = sub_100B245AC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B378;
  aBlock[3] = &unk_1010E2D50;
  v19 = _Block_copy(aBlock);

  [v15 parseWithCompletion:v19];
  _Block_release(v19);
}

void sub_100B1D2E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for Lyrics(0);
    swift_allocObject();
    v8 = a1;

    Lyrics.init(identifier:songInfo:)(a4, a5, v8);
    sub_10010FC20(&qword_1011B1720, "j$\n");
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      sub_100B23120();
      swift_allocError();
      *v9 = 3;
    }

    swift_errorRetain();
    sub_10010FC20(&qword_1011B1720, "j$\n");
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100B1D508()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 32), &qword_1011B16C8, &qword_100F00AB0);
    sub_100B23120();
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
    v8[1] = sub_100B1D698;
    v9 = *(v0 + 56);

    return LyricsLoader.loadLyrics(for:)(v9);
  }
}

uint64_t sub_100B1D698(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = sub_100B1D870;
  }

  else
  {
    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = sub_100B1D7D4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100B1D7D4()
{
  v1 = *(v0 + 96);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v2 = *(v0 + 8);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2(v3, v4, v1 & 1);
}

uint64_t sub_100B1D870()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

id static LyricsLoader.requiredProperties()()
{
  sub_10010FC20(&qword_1011B5F90, &qword_100F06EA0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBEF50;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v3;
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  sub_10010FC20(&qword_1011B16D0, &qword_100F00AB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBC6B0;
  *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 40) = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = objc_opt_self();
  v11 = [v10 propertySetWithProperties:isa];

  *(inited + 48) = v11;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBEF50;
  *(v13 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 40) = v14;
  *(v13 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 56) = v15;
  *(v13 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 72) = v16;
  *(v13 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 88) = v17;
  v18 = Array._bridgeToObjectiveC()().super.isa;

  v19 = [v10 propertySetWithProperties:v18];

  *(inited + 72) = v19;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBC6B0;
  *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v21 + 40) = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_100EBC6B0;
  *(v23 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100EBC6B0;
  *(v25 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 40) = v26;
  v27 = Array._bridgeToObjectiveC()().super.isa;

  v28 = [v10 propertySetWithProperties:v27];

  *(v23 + 48) = v28;
  sub_10000C1BC(v23);
  swift_setDeallocating();
  sub_1000095E8(v23 + 32, &qword_1011B16D8, &qword_100F00AC0);
  v29 = objc_allocWithZone(MPPropertySet);
  v30 = Array._bridgeToObjectiveC()().super.isa;

  sub_100B244A4();
  v31 = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = [v29 initWithProperties:v30 relationships:v31];

  *(inited + 96) = v32;
  sub_10000C1BC(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011B16D8, &qword_100F00AC0);
  swift_arrayDestroy();
  v33 = objc_allocWithZone(MPPropertySet);
  v34 = Array._bridgeToObjectiveC()().super.isa;

  v35 = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = [v33 initWithProperties:v34 relationships:v35];

  return v36;
}

uint64_t sub_100B1DDCC(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  v3 = type metadata accessor for String.Encoding();
  v2[80] = v3;
  v2[81] = *(v3 - 8);
  v2[82] = swift_task_alloc();
  v4 = type metadata accessor for Song();
  v2[83] = v4;
  v2[84] = *(v4 - 8);
  v2[85] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
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
  v6 = type metadata accessor for MusicDataResponse();
  v2[96] = v6;
  v2[97] = *(v6 - 8);
  v2[98] = swift_task_alloc();
  v7 = type metadata accessor for MusicDataRequest();
  v2[99] = v7;
  v2[100] = *(v7 - 8);
  v2[101] = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  v2[102] = v8;
  v2[103] = *(v8 - 8);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v9 = type metadata accessor for URLQueryItem();
  v2[106] = v9;
  v2[107] = *(v9 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  sub_10010FC20(&qword_1011B1728, &qword_100F00C20);
  v2[111] = swift_task_alloc();
  sub_10010FC20(&qword_1011B1730, &qword_100F00C28);
  v2[112] = swift_task_alloc();
  v10 = type metadata accessor for Locale.Language();
  v2[113] = v10;
  v2[114] = *(v10 - 8);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  sub_10010FC20(&qword_1011B1738, &qword_100F00C30);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v11 = type metadata accessor for Locale();
  v2[123] = v11;
  v2[124] = *(v11 - 8);
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  sub_10010FC20(&qword_1011B1740, &qword_100F00C38);
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  sub_10010FC20(&qword_1011B0C20, &qword_100EFF510);
  v2[130] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v2[131] = v12;
  v2[132] = *(v12 - 8);
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();

  return _swift_task_switch(sub_100B1E400, 0, 0);
}

uint64_t sub_100B1E400(__n128 a1)
{
  v266 = v1;
  v2 = v1;
  Song.catalogID.getter();
  v263 = v1;
  if (!v3)
  {
    v53 = v1[90];
    v54 = v1[87];
    v55 = v1[86];
    v56 = Logger.lyrics.unsafeMutableAddressor();
    (*(v54 + 16))(v53, v56, v55);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "fetchStoreLyrics: song has no storeID", v59, 2u);
    }

    v60 = v2[90];
    v61 = v2[87];
    v62 = v2[86];

    (*(v61 + 8))(v60, v62);
    sub_100B23120();
    swift_allocError();
    v64 = 2;
    goto LABEL_21;
  }

  BagProvider.shared.unsafeMutableAddressor();

  v4 = BagProvider.bag.getter();
  v1[135] = v4;

  if (!v4)
  {
    v65 = v1[91];
    v66 = v1[87];
    v67 = v1[86];

    v68 = Logger.lyrics.unsafeMutableAddressor();
    (*(v66 + 16))(v65, v68, v67);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "fetchStoreLyrics: Bag is nil", v71, 2u);
    }

    v72 = v2[91];
    v73 = v2[87];
    v74 = v2[86];

    (*(v73 + 8))(v72, v74);
    sub_100B23120();
    swift_allocError();
    v64 = 3;
LABEL_21:
    *v63 = v64;
    swift_willThrow();
LABEL_27:

    v86 = v263[1];

    return v86();
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
    v75 = v2[92];
    v76 = v2[87];
    v77 = v2[86];
    v78 = Logger.lyrics.unsafeMutableAddressor();
    (*(v76 + 16))(v75, v78, v77);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "fetchStoreLyrics: Unable to get the domain from the bag", v81, 2u);
    }

    v82 = v2[92];
    v83 = v2[87];
    v84 = v2[86];

    (*(v83 + 8))(v82, v84);
    sub_100B23120();
    swift_allocError();
    *v85 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [v7 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v13 || (v14 = v13, v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v14, sub_100B917DC(v15), v17 = v16, , !v17))
  {
LABEL_22:

    goto LABEL_23;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {

    goto LABEL_31;
  }

  v20 = sub_10000F8B8(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_31:

    v2 = v263;
    goto LABEL_24;
  }

  v2 = v263;
  v23 = v263 + 75;
  sub_1000160F8(*(v17 + 56) + 40 * v20, (v263 + 23));

  sub_10010FC20(&qword_1011B1748, &qword_100F00C40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v24 = *v23;
  if (!*(*v23 + 16) || (v25 = sub_10000F8B8(0x746C7561666564, 0xE700000000000000), (v26 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_1000160F8(*(v24 + 56) + 40 * v25, (v263 + 18));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v258 = v263[132];
  v260 = v263[131];
  v256 = v263[130];
  v27 = v263[62];
  v28 = v263[63];
  _StringGuts.grow(_:)(49);

  v264 = 0x2F2F3A7370747468;
  v265 = 0xE800000000000000;
  v29._countAndFlagsBits = v27;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0x617461632F31762FLL;
  v30._object = 0xEC0000002F676F6CLL;
  String.append(_:)(v30);
  v31._countAndFlagsBits = v10;
  v31._object = v12;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x2F73676E6F732FLL;
  v32._object = 0xE700000000000000;
  String.append(_:)(v32);
  v33 = MusicItemID.description.getter();
  v35 = v34;

  v36._countAndFlagsBits = v33;
  v36._object = v35;
  String.append(_:)(v36);

  v37._object = 0x8000000100E65160;
  v37._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v37);
  URL.init(string:)();
  if ((*(v258 + 48))(v256, 1, v260) == 1)
  {
    v38 = v263[130];
    v39 = v263[93];
    v40 = v263[87];
    v41 = v263[86];

    sub_1000095E8(v38, &qword_1011B0C20, &qword_100EFF510);
    v42 = Logger.lyrics.unsafeMutableAddressor();
    (*(v40 + 16))(v39, v42, v41);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v263[93];
    v47 = v263[87];
    v48 = v263[86];
    if (v45)
    {
      v49 = v263[93];
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v264 = v51;
      *v50 = 136446210;
      v52 = sub_100010744(0x2F2F3A7370747468, 0xE800000000000000, &v264);

      *(v50 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, "fetchStoreLyrics: Couldn't build URL: %{public}s", v50, 0xCu);
      sub_10000959C(v51);

      (*(v47 + 8))(v49, v48);
    }

    else
    {

      (*(v47 + 8))(v46, v48);
    }

    sub_100B23120();
    swift_allocError();
    *v184 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v88 = v263[134];
  v89 = v263[132];
  v90 = v263[131];
  v91 = v263[130];
  v92 = v263[129];
  v93 = v263[124];
  v261 = v263[123];

  (*(v89 + 32))(v88, v91, v90);
  v247 = *(v93 + 56);
  v247(v92, 1, 1, v261);
  v94 = static Locale.preferredLanguages.getter();
  v95 = v94;
  v96 = *(v94 + 16);
  if (!v96)
  {
    v241 = 0;
    v242 = _swiftEmptyArrayStorage;
    v255 = _swiftEmptyArrayStorage;
    goto LABEL_84;
  }

  v241 = 0;
  v97 = 0;
  v98 = v263[124];
  v251 = (v98 + 48);
  v246 = (v98 + 16);
  v99 = (v263[114] + 8);
  v100 = (v98 + 8);
  v101 = v94 + 40;
  v249 = -v96;
  v250 = v100;
  v242 = _swiftEmptyArrayStorage;
  v255 = _swiftEmptyArrayStorage;
  v252 = v94;
  v240 = v94 + 40;
  do
  {
    v102 = v101 + 16 * v97;
    v103 = v97 + 1;
    while (1)
    {
      v262 = v103;
      if ((v103 - 1) >= *(v95 + 16))
      {
        __break(1u);
      }

      v106 = v99;
      v107 = v2[129];
      v108 = v2[128];
      v109 = v2[123];
      v259 = v102;

      Locale.init(identifier:)();
      sub_100B24680(v107, v108);
      if ((*v251)(v108, 1, v109) == 1)
      {
        v110 = v2[129];
        v111 = v2[128];
        v112 = v2[126];
        v113 = v2[123];
        sub_1000095E8(v110, &qword_1011B1740, &qword_100F00C38);
        sub_1000095E8(v111, &qword_1011B1740, &qword_100F00C38);
        (*v246)(v110, v112, v113);
        v247(v110, 0, 1, v113);
      }

      else
      {
        sub_1000095E8(v2[128], &qword_1011B1740, &qword_100F00C38);
      }

      v114 = v2[122];
      v115 = v2[119];
      v116 = v2[113];
      Locale.language.getter();
      Locale.Language.languageCode.getter();
      v257 = *v99;
      (*v99)(v115, v116);
      v117 = type metadata accessor for Locale.LanguageCode();
      v118 = *(v117 - 8);
      v254 = *(v118 + 48);
      v253 = v118;
      if (v254(v114, 1, v117) == 1)
      {
        sub_1000095E8(v2[122], &qword_1011B1738, &qword_100F00C30);
      }

      else
      {
        v119 = v2[122];
        v120 = Locale.LanguageCode.identifier.getter();
        v121 = v118;
        v122 = v120;
        v124 = v123;
        (*(v121 + 8))(v119, v117);
        v2[64] = Locale.identifier.getter();
        v2[65] = v125;
        v2[56] = 45;
        v2[57] = 0xE100000000000000;
        sub_1000098E0();
        LOBYTE(v119) = StringProtocol.contains<A>(_:)();

        if (v119)
        {

          v126 = Locale.identifier.getter();
          v128 = v127;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v255 = sub_100BF9974(0, *(v255 + 2) + 1, 1, v255);
          }

          v130 = *(v255 + 2);
          v129 = *(v255 + 3);
          if (v130 >= v129 >> 1)
          {
            v255 = sub_100BF9974((v129 > 1), v130 + 1, 1, v255);
          }

          *(v255 + 2) = v130 + 1;
          v131 = &v255[16 * v130];
          *(v131 + 4) = v126;
          *(v131 + 5) = v128;
        }

        else
        {
          v132 = v2[112];
          v264 = v122;
          v265 = v124;
          v133._countAndFlagsBits = 45;
          v133._object = 0xE100000000000000;
          String.append(_:)(v133);
          Locale.region.getter();
          v134 = type metadata accessor for Locale.Region();
          v135 = v2;
          v136 = *(v134 - 8);
          v137 = (*(v136 + 48))(v132, 1, v134);
          v138 = v135[112];
          if (v137 == 1)
          {
            sub_1000095E8(v138, &qword_1011B1730, &qword_100F00C28);
            v140 = String.uppercased()();
            countAndFlagsBits = v140._countAndFlagsBits;
            object = v140._object;
          }

          else
          {
            v142 = Locale.Region.identifier.getter();
            object = v143;
            (*(v136 + 8))(v138, v134);
            countAndFlagsBits = v142;
          }

          v144 = object;
          String.append(_:)(*&countAndFlagsBits);

          v145 = v264;
          v146 = v265;
          v2 = v263;
          v99 = v106;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v255 = sub_100BF9974(0, *(v255 + 2) + 1, 1, v255);
          }

          v148 = *(v255 + 2);
          v147 = *(v255 + 3);
          if (v148 >= v147 >> 1)
          {
            v255 = sub_100BF9974((v147 > 1), v148 + 1, 1, v255);
          }

          *(v255 + 2) = v148 + 1;
          v149 = &v255[16 * v148];
          *(v149 + 4) = v145;
          *(v149 + 5) = v146;
        }
      }

      *(v2 + 1194) = 6;
      v150 = sub_100025D88();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v150) & 1) == 0)
      {
        (*v250)(v2[126], v2[123]);
LABEL_63:
        v95 = v252;
LABEL_64:
        v105 = v262;
        goto LABEL_37;
      }

      v248 = v117;
      v151 = v2[118];
      v152 = v2[113];
      v153 = v2[111];
      Locale.language.getter();
      Locale.Language.script.getter();
      v257(v151, v152);
      v154 = type metadata accessor for Locale.Script();
      v155 = v99;
      v156 = *(v154 - 8);
      if ((*(v156 + 48))(v153, 1, v154) != 1)
      {
        break;
      }

      v104 = v2[111];
      (*v250)(v2[126], v2[123]);
      sub_1000095E8(v104, &qword_1011B1728, &qword_100F00C20);
      v95 = v252;
      v105 = v262;
      v99 = v155;
LABEL_37:
      v102 = v259 + 16;
      v103 = v105 + 1;
      if (v249 + v103 == 1)
      {
        goto LABEL_84;
      }
    }

    v157 = v2[121];
    v158 = v2;
    v159 = v2[117];
    v244 = v158[113];
    v160 = v158[111];
    v243 = Locale.Script.identifier.getter();
    v245 = v161;
    (*(v156 + 8))(v160, v154);
    Locale.language.getter();
    Locale.Language.languageCode.getter();
    v257(v159, v244);
    v99 = v155;
    if (v254(v157, 1, v248) == 1)
    {
      v162 = v158[121];
      (*v250)(v158[126], v158[123]);

      sub_1000095E8(v162, &qword_1011B1738, &qword_100F00C30);
      v2 = v158;
      goto LABEL_63;
    }

    v163 = v158[121];
    v164 = Locale.LanguageCode.identifier.getter();
    v166 = v165;
    (*(v253 + 8))(v163, v248);
    v167 = Lyrics.scriptMap.unsafeMutableAddressor();
    v168 = *v167;
    v2 = v158;
    if (*(*v167 + 16))
    {

      v169 = v245;
      v170 = sub_10000F8B8(v243, v245);
      if (v171)
      {
        v172 = (*(v168 + 56) + 16 * v170);
        v173 = v172[1];
        v243 = *v172;

        v169 = v173;
      }
    }

    else
    {
      v169 = v245;
    }

    v264 = v164;
    v265 = v166;
    v174._countAndFlagsBits = 45;
    v174._object = 0xE100000000000000;
    String.append(_:)(v174);
    v175._countAndFlagsBits = v243;
    v175._object = v169;
    String.append(_:)(v175);
    v176 = v166;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v242 = sub_100BF9974(0, *(v242 + 2) + 1, 1, v242);
    }

    v178 = *(v242 + 2);
    v177 = *(v242 + 3);
    if (v178 >= v177 >> 1)
    {
      v242 = sub_100BF9974((v177 > 1), v178 + 1, 1, v242);
    }

    *(v242 + 2) = v178 + 1;
    v179 = &v242[16 * v178];
    *(v179 + 4) = v164;
    *(v179 + 5) = v176;
    v180 = Lyrics.defaultScript.unsafeMutableAddressor();
    v181 = v2[126];
    v182 = v2[123];
    if (v243 != *v180 || v169 != *(v180 + 1))
    {
      v183 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v250)(v181, v182);
      v95 = v252;
      if (v183)
      {
        goto LABEL_79;
      }

      goto LABEL_64;
    }

    (*v250)(v181, v182);
    v95 = v252;
LABEL_79:
    v241 = 1;
    v97 = v262;
    v101 = v240;
  }

  while (v249 + v262);
LABEL_84:
  v185 = v2[129];
  v186 = v2[127];
  v187 = v2[124];
  v188 = v2[123];

  sub_100B24680(v185, v186);
  if ((*(v187 + 48))(v186, 1, v188) == 1)
  {
    sub_1000095E8(v2[127], &qword_1011B1740, &qword_100F00C38);
  }

  else
  {
    (*(v2[124] + 32))(v2[125], v2[127], v2[123]);
    if ((v241 & 1) != 0 || (v189 = v2[116], v190 = v2[114], v191 = v2[113], v192 = *v5, , Locale.language.getter(), v193 = (*(*v192 + 256))(v189), , v194 = *(v190 + 8), v194(v189, v191), (v193 & 1) == 0))
    {
      (*(v2[124] + 8))(v2[125], v2[123]);
    }

    else
    {
      v195 = v2[120];
      v196 = v2[115];
      v197 = v2[113];
      Locale.language.getter();
      Locale.Language.languageCode.getter();
      v194(v196, v197);
      v198 = type metadata accessor for Locale.LanguageCode();
      v199 = *(v198 - 8);
      if ((*(v199 + 48))(v195, 1, v198) == 1)
      {
        v200 = v2[120];
        (*(v2[124] + 8))(v2[125], v2[123]);
        sub_1000095E8(v200, &qword_1011B1738, &qword_100F00C30);
      }

      else
      {
        v226 = v2[120];
        v227 = Locale.LanguageCode.identifier.getter();
        v229 = v228;
        (*(v199 + 8))(v226, v198);
        v264 = v227;
        v265 = v229;
        v230._countAndFlagsBits = 45;
        v230._object = 0xE100000000000000;
        String.append(_:)(v230);
        v231 = Lyrics.defaultScript.unsafeMutableAddressor();
        v233 = *v231;
        v232 = v231[1];

        v234._countAndFlagsBits = v233;
        v234._object = v232;
        String.append(_:)(v234);

        v236 = v264;
        v235 = v229;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v242 = sub_100BF9974(0, *(v242 + 2) + 1, 1, v242);
        }

        v238 = *(v242 + 2);
        v237 = *(v242 + 3);
        if (v238 >= v237 >> 1)
        {
          v242 = sub_100BF9974((v237 > 1), v238 + 1, 1, v242);
        }

        v2 = v263;
        (*(v263[124] + 8))(v263[125], v263[123]);
        *(v242 + 2) = v238 + 1;
        v239 = &v242[16 * v238];
        *(v239 + 4) = v236;
        *(v239 + 5) = v235;
      }
    }
  }

  v2[72] = v255;
  sub_10010FC20(&qword_1011B1758, &qword_100F00C48);
  sub_100B246F0();
  BidirectionalCollection<>.joined(separator:)();

  URLQueryItem.init(name:value:)();

  v201 = sub_100BF9A80(0, 1, 1, _swiftEmptyArrayStorage);
  v203 = *(v201 + 2);
  v202 = *(v201 + 3);
  if (v203 >= v202 >> 1)
  {
    v201 = sub_100BF9A80((v202 > 1), v203 + 1, 1, v201);
  }

  v204 = v2[110];
  v205 = v2[107];
  v206 = v2[106];
  *(v201 + 2) = v203 + 1;
  v208 = *(v205 + 32);
  v205 += 32;
  v207 = v208;
  v209 = (*(v205 + 48) + 32) & ~*(v205 + 48);
  v210 = *(v205 + 40);
  v208(&v201[v209 + v210 * v203], v204, v206);
  *(v2 + 1193) = 6;
  v211 = sub_100025D88();
  v2[136] = v211;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v211))
  {
    v2[76] = v242;
    BidirectionalCollection<>.joined(separator:)();

    URLQueryItem.init(name:value:)();

    v213 = *(v201 + 2);
    v212 = *(v201 + 3);
    if (v213 >= v212 >> 1)
    {
      v201 = sub_100BF9A80((v212 > 1), v213 + 1, 1, v201);
    }

    v214 = v2[109];
    v215 = v2[106];
    *(v201 + 2) = v213 + 1;
    v207(&v201[v209 + v213 * v210], v214, v215);
    URLQueryItem.init(name:value:)();
    v217 = *(v201 + 2);
    v216 = *(v201 + 3);
    if (v217 >= v216 >> 1)
    {
      v201 = sub_100BF9A80((v216 > 1), v217 + 1, 1, v201);
    }

    v218 = v2[108];
    v219 = v2[106];
    *(v201 + 2) = v217 + 1;
    v207(&v201[v209 + v217 * v210], v218, v219);
  }

  else
  {
  }

  v220 = v2[105];
  v221 = v2[104];
  v222 = v2[103];
  v223 = v2[102];
  URL.appending(queryItems:)();

  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  (*(v222 + 16))(v221, v220, v223);
  MusicDataRequest.init(urlRequest:)();
  v224 = swift_task_alloc();
  v2[137] = v224;
  *v224 = v2;
  v224[1] = sub_100B1FF30;
  v225 = v2[98];

  return MusicDataRequest.response()(v225);
}

uint64_t sub_100B1FF30()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_100B21420;
  }

  else
  {
    v2 = sub_100B20070;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B20070()
{
  v124 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v122 = 0x3C726564616F4CLL;
  v123 = 0xE700000000000000;
  *(v0 + 560) = v6;
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10 = v123;
  v110 = v122;
  v11 = Logger.lyrics.unsafeMutableAddressor();
  *(v0 + 1112) = v11;
  v12 = *(v2 + 16);
  *(v0 + 1120) = v12;
  *(v0 + 1128) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v115 = v11;
  v113 = v12;
  v12(v1);
  (*(v4 + 16))(v3, v7, v5);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 760);
  v17 = *(v0 + 696);
  v118 = *(v0 + 688);
  v18 = *(v0 + 680);
  v19 = *(v0 + 672);
  v20 = *(v0 + 664);
  if (v15)
  {
    v108 = *(v0 + 760);
    v21 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    *v21 = 136446466;
    v22 = sub_100010744(v110, v10, &v122);

    *(v21 + 4) = v22;
    *(v21 + 12) = 2082;
    v23 = sub_100B1A46C();
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = sub_100010744(v23, v25, &v122);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s loadLyrics(for:completion:) completed for %{public}s", v21, 0x16u);
    swift_arrayDestroy();

    v27 = *(v17 + 8);
    v27(v108, v118);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
    v27 = *(v17 + 8);
    v27(v16, v118);
  }

  *(v0 + 1136) = v27;
  v28 = *(v0 + 1088);
  *(v0 + 1192) = 6;
  v29 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v28);
  if (v29)
  {
    v30 = 0xD000000000000011;
  }

  else
  {
    v30 = 1819112564;
  }

  if (v29)
  {
    v31 = 0x8000000100E65180;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  v32 = objc_opt_self();
  v33 = MusicDataResponse.data.getter();
  v35 = v34;
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10002C064(v33, v35);
  *(v0 + 536) = 0;
  v37 = [v32 JSONObjectWithData:isa options:0 error:v0 + 536];

  v38 = *(v0 + 536);
  if (!v37)
  {
    v57 = *(v0 + 784);
    v58 = *(v0 + 776);
    v59 = *(v0 + 768);
    v60 = v38;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v58 + 8))(v57, v59);
LABEL_37:
    v75 = *(v0 + 712);
    v76 = *(v0 + 696);
    v77 = *(v0 + 688);
    v78 = Logger.lyrics.unsafeMutableAddressor();
    (*(v76 + 16))(v75, v78, v77);
    swift_errorRetain();
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138543362;
      swift_errorRetain();
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 4) = v83;
      *v82 = v83;
      _os_log_impl(&_mh_execute_header, v79, v80, "Data request error: %{public}@", v81, 0xCu);
      sub_1000095E8(v82, &qword_1011B1160, &qword_100EFFA80);
    }

    v109 = *(v0 + 1080);
    v84 = *(v0 + 1056);
    v117 = *(v0 + 1048);
    v121 = *(v0 + 1072);
    v114 = *(v0 + 840);
    v116 = *(v0 + 1032);
    v85 = *(v0 + 824);
    v112 = *(v0 + 816);
    v86 = *(v0 + 808);
    v87 = *(v0 + 800);
    v88 = *(v0 + 792);
    v89 = v79;
    v90 = *(v0 + 712);
    v91 = *(v0 + 696);
    v92 = *(v0 + 688);

    (*(v91 + 8))(v90, v92);
    swift_willThrow();

    (*(v87 + 8))(v86, v88);
    (*(v85 + 8))(v114, v112);
    sub_1000095E8(v116, &qword_1011B1740, &qword_100F00C38);
    (*(v84 + 8))(v121, v117);

    v93 = *(v0 + 8);

    return v93();
  }

  v39 = v38;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10010FC20(&qword_1011B1768, &qword_100F00C50);
  if (swift_dynamicCast())
  {
    v40 = *(v0 + 528);
  }

  else
  {
    v40 = 0;
  }

  if (!v40 || !*(v40 + 16))
  {
    goto LABEL_32;
  }

  v41 = sub_10000F8B8(1635017060, 0xE400000000000000);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

  v43 = v0 + 616;
  sub_10000DD18(*(v40 + 56) + 32 * v41, v0 + 384);

  sub_10010FC20(&qword_1011B1778, &qword_100F00C60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!*(*v43 + 16))
  {
LABEL_31:

LABEL_32:

    goto LABEL_33;
  }

  sub_10000DD18(*v43 + 32, v0 + 224);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v44 = *(v0 + 552);
  if (!*(v44 + 16))
  {
    goto LABEL_44;
  }

  v45 = sub_10000F8B8(0x7475626972747461, 0xEA00000000007365);
  if ((v46 & 1) == 0)
  {
    goto LABEL_44;
  }

  v47 = (v0 + 568);
  sub_10000DD18(*(v44 + 56) + 32 * v45, v0 + 352);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v48 = *v47;
  if (!*(*v47 + 16))
  {
LABEL_44:

    goto LABEL_32;
  }

  v49 = sub_10000F8B8(v30, v31);
  v51 = v50;

  if ((v51 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_10000DD18(*(v48 + 56) + 32 * v49, v0 + 320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v119 = v27;
  v52 = *(v0 + 656);
  v53 = *(v0 + 648);
  v111 = *(v0 + 640);
  static String.Encoding.utf8.getter();
  v54 = String.data(using:allowLossyConversion:)();
  v56 = v55;

  *(v0 + 1144) = v54;
  *(v0 + 1152) = v56;
  (*(v53 + 8))(v52, v111);
  if (v56 >> 60 == 15)
  {
LABEL_27:

LABEL_28:
    v27 = v119;
LABEL_33:
    v113(*(v0 + 752), v115, *(v0 + 688));

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 752);
    v65 = *(v0 + 688);
    if (v63)
    {
      v66 = swift_slowAlloc();
      v120 = v27;
      v67 = swift_slowAlloc();
      v122 = v67;
      *v66 = 136446210;
      *(v0 + 544) = v40;
      sub_10010FC20(&qword_1011B1770, &qword_100F00C58);
      v68 = String.init<A>(describing:)();
      v70 = sub_100010744(v68, v69, &v122);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v61, v62, "Invalid response: %{public}s", v66, 0xCu);
      sub_10000959C(v67);

      v120(v64, v65);
    }

    else
    {

      v27(v64, v65);
    }

    v71 = *(v0 + 784);
    v72 = *(v0 + 776);
    v73 = *(v0 + 768);
    sub_100B23120();
    swift_allocError();
    *v74 = 1;
    swift_willThrow();
    (*(v72 + 8))(v71, v73);
    goto LABEL_37;
  }

  v27 = v119;
  if (!*(v48 + 16) || (v95 = sub_10000F8B8(0x6172615079616C70, 0xEA0000000000736DLL), (v96 & 1) == 0))
  {
    sub_100029CA4(v54, v56);
    goto LABEL_32;
  }

  v97 = v56;
  v98 = (v0 + 584);
  sub_10000DD18(*(v48 + 56) + 32 * v95, v0 + 288);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_56;
  }

  v99 = *v98;
  if (!*(*v98 + 16) || (v100 = sub_10000F8B8(25705, 0xE200000000000000), (v101 & 1) == 0))
  {
    sub_100029CA4(v54, v97);
    goto LABEL_27;
  }

  sub_10000DD18(*(v99 + 56) + 32 * v100, v0 + 256);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    sub_100029CA4(v54, v97);
    goto LABEL_28;
  }

  v102 = *(v0 + 488);
  *(v0 + 1160) = *(v0 + 480);
  *(v0 + 1168) = v102;
  v103 = objc_allocWithZone(MSVLyricsTTMLParser);
  sub_10002BC44(v54, v97);
  v104 = Data._bridgeToObjectiveC()().super.isa;
  v105 = [v103 initWithTTMLData:v104];
  *(v0 + 1176) = v105;

  sub_100029CA4(v54, v97);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 592;
  *(v0 + 24) = sub_100B20F1C;
  v106 = swift_continuation_init();
  *(v0 + 136) = sub_10010FC20(&qword_1011B16C0, &qword_100F00AA0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100B1CFE8;
  *(v0 + 104) = &unk_1010E2D78;
  *(v0 + 112) = v106;
  [v105 parseWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16, v107);
}

uint64_t sub_100B20F1C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1184) = v1;
  if (v1)
  {

    v2 = sub_100B2186C;
  }

  else
  {
    v2 = sub_100B21060;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B21060()
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

  sub_100029CA4(v17, v19);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v13, v5);
  (*(v3 + 8))(v16, v15);
  sub_1000095E8(v21, &qword_1011B1740, &qword_100F00C38);
  (*(v2 + 8))(v23, v22);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_100B21420(__n128 a1)
{
  v2 = v1[89];
  v3 = v1[87];
  v4 = v1[86];
  v5 = Logger.lyrics.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Data request error: %{public}@", v8, 0xCu);
    sub_1000095E8(v9, &qword_1011B1160, &qword_100EFFA80);
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
  sub_1000095E8(v25, &qword_1011B1740, &qword_100F00C38);
  (*(v12 + 8))(v27, v26);

  v21 = v1[1];

  return v21();
}

uint64_t sub_100B2186C(uint64_t a1)
{
  v2 = v1[140];
  v3 = v1[139];
  v4 = v1[88];
  v5 = v1[86];
  swift_willThrow();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Parsing error: %{public}@", v8, 0xCu);
    sub_1000095E8(v9, &qword_1011B1160, &qword_100EFFA80);
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

  sub_100029CA4(v13, v12);
  (*(v15 + 8))(v45, v43);
  v18 = v1[89];
  v19 = v1[87];
  v20 = v1[86];
  v21 = Logger.lyrics.unsafeMutableAddressor();
  (*(v19 + 16))(v18, v21, v20);
  swift_errorRetain();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138543362;
    swift_errorRetain();
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&_mh_execute_header, v22, v23, "Data request error: %{public}@", v24, 0xCu);
    sub_1000095E8(v25, &qword_1011B1160, &qword_100EFFA80);
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
  sub_1000095E8(v41, &qword_1011B1740, &qword_100F00C38);
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
  v2 = type metadata accessor for Song();
  v3 = *(v2 - 8);
  v180 = v2;
  v181 = v3;
  __chkstk_darwin();
  v5 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v178 = &v169 - v6;
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
  v175 = &v169 - v17;
  __chkstk_darwin();
  v19 = &v169 - v18;
  v20 = type metadata accessor for Logger();
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
  if ((Song.hasLyrics.getter() & 1) == 0 && (Song.hasCustomLyrics.getter() & 1) == 0)
  {
    v59 = Logger.lyrics.unsafeMutableAddressor();
    v60 = v183;
    v61 = v184;
    (*(v184 + 16))(v23, v59, v183);
    v62 = v180;
    v63 = v181;
    (v181[2])(v5, a1, v180);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v187 = v67;
      *v66 = 136446210;
      v68 = sub_100B1A46C();
      v69 = v62;
      v71 = v70;
      (v63[1])(v5, v69);
      v72 = sub_100010744(v68, v71, &v187);

      *(v66 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "Loader supportsLyrics=false [hasLyrics and hasCustomLyrics were false] %{public}s", v66, 0xCu);
      sub_10000959C(v67);

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
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v179 = v32;
          v83 = v82;
          v178 = swift_slowAlloc();
          v187 = v178;
          *v83 = 136446466;
          v177 = v80;
          v84 = Song.hasCustomLyrics.getter();
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
          v89 = sub_100010744(v85, v87, &v187);

          *(v83 + 4) = v89;
          *(v83 + 12) = 2082;
          v90 = sub_100B1A46C();
          v92 = v91;
          v88(v79, v86);
          v93 = sub_100010744(v90, v92, &v187);

          *(v83 + 14) = v93;
          v94 = v177;
          _os_log_impl(&_mh_execute_header, v177, v176, "Loader supportsLyrics=%{public}s [no lyrics keys in bag] %{public}s", v83, 0x16u);
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
        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v179 = v32;
          v152 = v151;
          v177 = swift_slowAlloc();
          v187 = v177;
          *v152 = 136446466;
          v176 = v149;
          v153 = Song.hasCustomLyrics.getter();
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
          v158 = sub_100010744(v154, v156, &v187);

          *(v152 + 4) = v158;
          *(v152 + 12) = 2082;
          v159 = sub_100B1A46C();
          v161 = v160;
          v157(v155, v75);
          v162 = sub_100010744(v159, v161, &v187);

          *(v152 + 14) = v162;
          v163 = v176;
          _os_log_impl(&_mh_execute_header, v176, v175, "Loader supportsLyrics=%{public}s [no musicSubscription key in bag] %{public}s", v152, 0x16u);
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

      v166 = Song.hasCustomLyrics.getter();

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
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v187 = v175;
      *v45 = 136446466;
      v173 = v43;
      v46 = Song.hasCustomLyrics.getter();
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
      v51 = sub_100010744(v47, v48, &v187);
      v35 = v181;

      *(v45 + 4) = v51;
      *(v45 + 12) = 2082;
      v52 = sub_100B1A46C();
      v54 = v53;
      v50(v12, v49);
      v55 = v183;
      v34 = v184;
      v56 = sub_100010744(v52, v54, &v187);

      *(v45 + 14) = v56;
      v57 = v173;
      _os_log_impl(&_mh_execute_header, v173, v172, "Loader supportsLyrics=%{public}s [bag is nil] %{public}s", v45, 0x16u);
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

  v98 = Song.hasLyrics.getter();
  v99 = v179;
  v100 = v177;
  if (v98 & 1) != 0 && (static ApplicationCapabilities.shared.getter(v186), v101 = v186[4], , sub_100014984(v186), v102 = sub_10048BBDC(2, v101), , (v102))
  {
    static ApplicationCapabilities.shared.getter(&v187);
    sub_100014984(&v187);
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
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v185 = v181;
      *v113 = 67240450;
      v114 = Song.hasCustomLyrics.getter() & 1;
      v115 = v108[1];
      v115(v106, v36);
      *(v113 + 4) = v114;
      *(v113 + 8) = 2082;
      v116 = sub_100B1A46C();
      v117 = v110;
      v118 = v184;
      v120 = v119;
      v115(v117, v36);
      v121 = sub_100010744(v116, v120, &v185);

      *(v113 + 10) = v121;
      _os_log_impl(&_mh_execute_header, v111, v112, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false %{public}s", v113, 0x12u);
      sub_10000959C(v181);

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
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v185 = v181;
      *v129 = 67240962;
      LODWORD(v176) = v128;
      v130 = Song.hasCustomLyrics.getter() & 1;
      v131 = v35[1];
      v131(v37, v36);
      *(v129 + 4) = v130;
      v132 = v125;
      v133 = v184;
      *(v129 + 8) = 1026;
      v134 = Song.hasLyrics.getter() & 1;
      v131(v132, v36);
      *(v129 + 10) = v134;
      *(v129 + 14) = 1026;
      static ApplicationCapabilities.shared.getter(&v187);
      v135 = v189;

      sub_100014984(&v187);
      v136 = sub_10048BBDC(2, v135);

      *(v129 + 16) = v136 & 1;
      *(v129 + 20) = 2082;
      v137 = v178;
      v138 = sub_100B1A46C();
      v140 = v139;
      v131(v137, v36);
      v141 = sub_100010744(v138, v140, &v185);

      *(v129 + 22) = v141;
      _os_log_impl(&_mh_execute_header, v127, v176, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] song.hasLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d %{public}s", v129, 0x1Eu);
      sub_10000959C(v181);

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

  v143 = Song.hasCustomLyrics.getter();
  return v143 & 1;
}

unint64_t sub_100B23120()
{
  result = qword_1011B16A0;
  if (!qword_1011B16A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B16A0);
  }

  return result;
}

unint64_t sub_100B23174()
{
  result = qword_1011B16B0;
  if (!qword_1011B16B0)
  {
    type metadata accessor for Song();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B16B0);
  }

  return result;
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSbSo11MPModelSongC_tFZ_0(void *a1)
{
  v188 = type metadata accessor for Logger();
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
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

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
          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v42 = 0;
          v44 = 0;
        }

        v193 = v42;
        v194 = v44;
        sub_10010FC20(&qword_1011B7770, &qword_100F083D0);
        v86 = String.init<A>(describing:)();
        v88 = sub_100010744(v86, v87, v192);

        *(v39 + 16) = v88;
        *(v39 + 24) = 2082;
        v89 = [v35 identifiers];
        v90 = [v89 description];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = sub_100010744(v91, v93, v192);

        *(v39 + 26) = v94;
        _os_log_impl(&_mh_execute_header, v37, v38, "Loader supportsLyrics=false [no lyrics found] lyrics.hasLibraryLyrics=%{BOOL,public}d lyrics.hasStoreLyrics=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v39, 0x22u);
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
          v78 = Logger.logObject.getter();
          v79 = static os_log_type_t.default.getter();

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
              v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v85 = v84;
            }

            else
            {
              v83 = 0;
              v85 = 0;
            }

            v193 = v83;
            v194 = v85;
            sub_10010FC20(&qword_1011B7770, &qword_100F083D0);
            v152 = String.init<A>(describing:)();
            v154 = sub_100010744(v152, v153, v192);

            *(v80 + 10) = v154;
            *(v80 + 18) = 2082;
            v155 = [v77 identifiers];
            v156 = [v155 description];
            v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v159 = v158;

            v160 = sub_100010744(v157, v159, v192);

            *(v80 + 20) = v160;
            _os_log_impl(&_mh_execute_header, v78, v79, "Loader supportsLyrics=%{BOOL,public}d [no lyrics keys in bag] song.title=%{public}s song.identifiers=%{public}s", v80, 0x1Cu);
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
          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.default.getter();

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
              v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v106 = v105;
            }

            else
            {
              v104 = 0;
              v106 = 0;
            }

            v193 = v104;
            v194 = v106;
            sub_10010FC20(&qword_1011B7770, &qword_100F083D0);
            v161 = String.init<A>(describing:)();
            v163 = sub_100010744(v161, v162, v192);

            *(v101 + 10) = v163;
            *(v101 + 18) = 2082;
            v164 = [v98 identifiers];
            v165 = [v164 description];
            v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v168 = v167;

            v169 = sub_100010744(v166, v168, v192);

            *(v101 + 20) = v169;
            _os_log_impl(&_mh_execute_header, v99, v100, "Loader supportsLyrics=%{BOOL,public}d [no musicSubscription key in bag] song.title=%{public}s song.identifiers=%{public}s", v101, 0x1Cu);
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
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

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
        v68 = &selRef_setPhotosHeaderMetadata_;
        if (v67)
        {
          v69 = v67;
          v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v72 = v71;
        }

        else
        {
          v70 = 0;
          v72 = 0;
        }

        v193 = v70;
        v194 = v72;
        sub_10010FC20(&qword_1011B7770, &qword_100F083D0);
        v107 = String.init<A>(describing:)();
        v109 = sub_100010744(v107, v108, v192);

        *(v65 + 10) = v109;
        *(v65 + 18) = 2082;
        v110 = [v66 identifiers];
        v111 = [v110 description];
        v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v114 = v113;

        v115 = sub_100010744(v112, v114, v192);

        *(v65 + 20) = v115;
        v116 = v183;
        _os_log_impl(&_mh_execute_header, v183, v181, "Loader supportsLyrics=%{BOOL,public}d [bag is nil] song.title=%{public}s song.identifiers=%{public}s", v65, 0x1Cu);
        swift_arrayDestroy();

        v49 = v188;
        (*(v47 + 8))(v12, v188);
        v48 = v182;
LABEL_38:
        if ([v187 v68[125]] && (static ApplicationCapabilities.shared.getter(v192), v117 = v192[4], , sub_100014984(v192), v118 = sub_10048BBDC(2, v117), , (v118 & 1) != 0))
        {
          static ApplicationCapabilities.shared.getter(&v193);
          sub_100014984(&v193);
          if ((v194 & 0x10000) != 0)
          {

            return 1;
          }

          v119 = Logger.lyrics.unsafeMutableAddressor();
          (*(v47 + 16))(v48, v119, v49);
          v120 = a1;
          v121 = Logger.logObject.getter();
          v122 = static os_log_type_t.default.getter();

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
              v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v128 = v127;
            }

            else
            {
              v126 = 0;
              v128 = 0;
            }

            v189 = v126;
            v190 = v128;
            sub_10010FC20(&qword_1011B7770, &qword_100F083D0);
            v170 = String.init<A>(describing:)();
            v172 = sub_100010744(v170, v171, &v191);

            *(v123 + 10) = v172;
            *(v123 + 18) = 2082;
            v173 = [v120 identifiers];
            v174 = [v173 description];
            v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v177 = v176;

            v178 = sub_100010744(v175, v177, &v191);

            *(v123 + 20) = v178;
            _os_log_impl(&_mh_execute_header, v121, v122, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false song.title=%{public}s song.identifiers=%{public}s", v123, 0x1Cu);
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
          v133 = Logger.logObject.getter();
          v134 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            v191 = v187;
            *v135 = 67241218;
            *(v135 + 4) = v184;
            *(v135 + 8) = 1026;
            *(v135 + 10) = [v132 v68[125]];

            *(v135 + 14) = 1026;
            static ApplicationCapabilities.shared.getter(&v193);
            v136 = v195;

            sub_100014984(&v193);
            v137 = sub_10048BBDC(2, v136);

            *(v135 + 16) = v137 & 1;
            *(v135 + 20) = 2082;
            v138 = [v131 title];
            if (v138)
            {
              v139 = v138;
              v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v142 = v141;
            }

            else
            {
              v140 = 0;
              v142 = 0;
            }

            v189 = v140;
            v190 = v142;
            sub_10010FC20(&qword_1011B7770, &qword_100F083D0);
            v143 = String.init<A>(describing:)();
            v145 = sub_100010744(v143, v144, &v191);

            *(v135 + 22) = v145;
            *(v135 + 30) = 2082;
            v146 = [v131 identifiers];
            v147 = [v146 description];
            v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v150 = v149;

            v151 = sub_100010744(v148, v150, &v191);

            *(v135 + 32) = v151;
            _os_log_impl(&_mh_execute_header, v133, v134, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] lyrics.hasStoreLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v135, 0x28u);
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

    v68 = &selRef_setPhotosHeaderMetadata_;
    goto LABEL_38;
  }

LABEL_4:
  v18 = Logger.lyrics.unsafeMutableAddressor();
  v19 = v188;
  (*(v2 + 16))(v4, v18, v188);
  v20 = v2;
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

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
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v193 = v27;
    v194 = v29;
    sub_10010FC20(&qword_1011B7770, &qword_100F083D0);
    v50 = String.init<A>(describing:)();
    v52 = sub_100010744(v50, v51, v192);

    *(v24 + 4) = v52;
    *(v24 + 12) = 2082;
    v53 = [v21 identifiers];
    v54 = [v53 description];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = sub_100010744(v55, v57, v192);

    *(v24 + 14) = v58;
    _os_log_impl(&_mh_execute_header, v22, v23, "Loader supportsLyrics=false [MPModelLyrics was nil] song.title=%{public}s song.identifiers=%{public}s", v24, 0x16u);
    swift_arrayDestroy();

    (*(v186 + 8))(v4, v188);
  }

  else
  {

    (*(v20 + 8))(v4, v19);
  }

  return 0;
}

unint64_t sub_100B244A4()
{
  result = qword_1011B16E0;
  if (!qword_1011B16E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B16E0);
  }

  return result;
}

unint64_t sub_100B24518()
{
  result = qword_1011B16F0;
  if (!qword_1011B16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B16F0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Corner(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

void sub_100B245AC(void *a1, uint64_t a2)
{
  v5 = *(sub_10010FC20(&qword_1011B1720, "j$\n") - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_100B1D2E4(a1, a2, v2 + v6, v8, v9);
}

double sub_100B24668(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100B24680(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B1740, &qword_100F00C38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100B246F0()
{
  result = qword_1011B1760;
  if (!qword_1011B1760)
  {
    sub_1001109D0(&qword_1011B1758, &qword_100F00C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1760);
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
  v6 = type metadata accessor for ScenePhase();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v4 + *(v7 + 20)) = 0;
  *(v4 + *(v7 + 24)) = 0;
  v8 = *(v3 + 24);
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist) = 0;
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v11 = type metadata accessor for Song();
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
  ObservationRegistrar.init()();
  v19 = *LyricsOptionsManager.shared.unsafeMutableAddressor();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(*v19 + 224);

  v21(sub_100B259F4, v20);

  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v1;
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
  sub_100B31D14(v1 + v7, v6, type metadata accessor for Lyrics.StateManager.State);
  v8 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v6, a1);
  sub_100B31D7C(v6, type metadata accessor for Lyrics.StateManager.State);
  if (v8)
  {
    sub_100B31D14(a1, v6, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v1 + v7, v4, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v6, v1 + v7, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v4);
    sub_100B31D7C(v4, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D7C(v6, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return sub_100B31D7C(a1, type metadata accessor for Lyrics.StateManager.State);
}

void sub_100B24E94(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
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
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_100B24FB0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  type metadata accessor for LyricsLoader();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_100B25114(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  sub_100009F78(0, &qword_1011B1DD0, MPCLyricsReportingController_ptr);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_100B25288(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011B1810, &qword_100F00DC0);
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
    v16 = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    v53 = v15;
    v54 = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_100B31D14(v14 + v17, v12, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v12, v10, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v12, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      sub_100B31D7C(v10, type metadata accessor for Lyrics.StateManager.State.Loading);
      return;
    }

    v51 = v4;
    v52 = a1;
    v18 = *v10;
    v19 = *(v10 + 1);
    v21 = *(v10 + 2);
    v20 = *(v10 + 3);
    v22 = v10[32];
    v23 = *(sub_10010FC20(&qword_1011B17F8, &qword_100F00D10) + 48);
    v24 = type metadata accessor for Song();
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

      sub_100B32A58(v18, v26, v49, v50, 1);
      v33 = v8;
    }

    else
    {
      v46 = v31;
      v44 = v29;
      v45 = v28;
      v48 = v18;
      sub_1000095E8(v8, &qword_1011B1810, &qword_100F00DC0);
      v34 = sub_100BE4230(3, v52);
      v35 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

      LODWORD(v35) = v35(3) & 1;

      if (v34 == v35)
      {
        sub_100B32A58(v48, v26, v49, v50, 1);

        return;
      }

      v52 = v26;
      (*(*v48 + 440))(v36);
      swift_getKeyPath();
      v56 = v14;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v37 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
      swift_beginAccess();
      sub_1000089F8(v14 + v37, v6, &qword_1011B1810, &qword_100F00DC0);
      v38 = v47;
      v39 = v32(v6, 1, v47);
      sub_1000095E8(v6, &qword_1011B1810, &qword_100F00DC0);
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
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
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
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      sub_100B32A58(v43, v52, v49, v50, 1);

      v33 = v42;
    }

    sub_1000095E8(v33, &qword_1011B1810, &qword_100F00DC0);
  }
}

uint64_t Lyrics.StateManager.State.lyrics.getter()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B31D14(v0, v2, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100B31D7C(v2, type metadata accessor for Lyrics.StateManager.State.Loading);
    return 0;
  }

  v3 = *v2;
  v4 = v2[32];
  v5 = *(sub_10010FC20(&qword_1011B17F8, &qword_100F00D10) + 48);
  v6 = type metadata accessor for Song();
  (*(*(v6 - 8) + 8))(&v2[v5], v6);
  if ((v4 & 1) == 0)
  {

    return 0;
  }

  return v3;
}

double sub_100B25B54(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011B1E00, &qword_100F01198);
  __chkstk_darwin();
  v5 = &v72[-v4];
  v6 = type metadata accessor for ScenePhase();
  v85 = *(v6 - 8);
  __chkstk_darwin();
  v84 = &v72[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin();
  v86 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&qword_1011B1810, &qword_100F00DC0);
  __chkstk_darwin();
  v81 = &v72[-v9];
  sub_10010FC20(&qword_1011B1808, &qword_100F00D90);
  __chkstk_darwin();
  v80 = &v72[-v10];
  v93 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v83 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v13 = &v72[-v12];
  v14 = type metadata accessor for Logger();
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
  v23 = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v82 = v22;
  v87 = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = v2 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  v91 = v24;
  sub_100B31D14(v24, v21, type metadata accessor for Lyrics.StateManager.State);
  v88 = a1;
  LOBYTE(v24) = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v21, a1);
  sub_100B31D7C(v21, type metadata accessor for Lyrics.StateManager.State);
  if ((v24 & 1) == 0)
  {
    v76 = v6;
    v77 = v5;
    v26 = Logger.lyrics.unsafeMutableAddressor();
    (*(v89 + 16))(v16, v26, v90);
    sub_100B31D14(v88, v19, type metadata accessor for Lyrics.StateManager.State);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v95[0] = v75;
      *v29 = 136446466;
      sub_100B31D14(v19, v21, type metadata accessor for Lyrics.StateManager.State);
      v30 = String.init<A>(describing:)();
      v74 = v27;
      v31 = v30;
      v73 = v28;
      v33 = v32;
      sub_100B31D7C(v19, type metadata accessor for Lyrics.StateManager.State);
      v34 = sub_100010744(v31, v33, v95);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2082;
      swift_getKeyPath();
      v94 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v35 = v91;
      sub_100B31D14(v91, v21, type metadata accessor for Lyrics.StateManager.State);
      v36 = String.init<A>(describing:)();
      v38 = sub_100010744(v36, v37, v95);

      *(v29 + 14) = v38;
      v39 = v74;
      _os_log_impl(&_mh_execute_header, v74, v73, "[State] changed from %{public}s to %{public}s", v29, 0x16u);
      swift_arrayDestroy();

      (*(v89 + 8))(v16, v90);
    }

    else
    {

      sub_100B31D7C(v19, type metadata accessor for Lyrics.StateManager.State);
      (*(v89 + 8))(v16, v90);
      v35 = v91;
    }

    swift_getKeyPath();
    v95[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = v79;
    sub_100B31D14(v35, v79, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v40, v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v40, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = *v13;
      v42 = v13[32];
      v43 = *(sub_10010FC20(&qword_1011B17F8, &qword_100F00D10) + 48);
      v44 = type metadata accessor for Song();
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
          sub_1000095E8(v49, &qword_1011B1808, &qword_100F00D90);
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
            sub_1000095E8(v46, &qword_1011B1810, &qword_100F00DC0);
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
              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            }

            v60 = v77;
            swift_getKeyPath();
            v94 = v2;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v61 = v91;
            sub_100B31D14(v91, v45, type metadata accessor for Lyrics.StateManager.State.Loading);
            swift_getKeyPath();
            v94 = v2;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v62 = v61 + *(v92 + 20);
            v63 = v86;
            sub_100B31D14(v62, v86, type metadata accessor for Lyrics.StateManager.State.Display);
            v65 = v84;
            v64 = v85;
            v66 = v76;
            (*(v85 + 104))(v84, enum case for ScenePhase.active(_:), v76);
            v67 = static ScenePhase.== infix(_:_:)();
            (*(v64 + 8))(v65, v66);
            if ((v67 & 1) != 0 && v63[*(v78 + 20)] == 1)
            {
              v68 = v63[*(v78 + 24)];
            }

            else
            {
              v68 = 0;
            }

            sub_100B31D7C(v63, type metadata accessor for Lyrics.StateManager.State.Display);
            sub_100B32E78(v45, v60);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                sub_100B32A58(*v60, *(v60 + 8), *(v60 + 16), *(v60 + 24), *(v60 + 32));
                v70 = *(sub_10010FC20(&qword_1011B17F8, &qword_100F00D10) + 48);
                v71 = type metadata accessor for Song();
                (*(*(v71 - 8) + 8))(v60 + v70, v71);
                if (v68)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
              sub_100B31D7C(v60, type metadata accessor for Lyrics.StateManager.State.Loading);
            }

            sub_100B2F81C(v88);
LABEL_30:
            sub_100B2EEF8();

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
        sub_1000095E8(v57, &qword_1011B1808, &qword_100F00D90);
        v58 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v58 - 8) + 56))(v46, 1, 1, v58);
        goto LABEL_15;
      }

      v45 = v83;
    }

    else
    {
      sub_100B31D7C(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
      v45 = v83;
    }

    v46 = v81;
    goto LABEL_14;
  }

  return result;
}

void (*sub_100B26860(uint64_t *a1))(char **a1, char a2, __n128 a3)
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
  sub_100B31D14(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State);
  return sub_100B26988;
}

void sub_100B26988(char **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = *(*a1 + 13);
  v6 = *(*a1 + 10);
  v7 = *(*a1 + 11);
  v8 = *(*a1 + 9);
  if (a2)
  {
    sub_100B31D14(*(*a1 + 12), v7, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v8 + v5, v6, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v7, v8 + v5, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v6);
    sub_100B31D7C(v6, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    sub_100B31D14(v8 + v5, v7, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v4, v8 + v5, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v7);
  }

  sub_100B31D7C(v7, type metadata accessor for Lyrics.StateManager.State);
  sub_100B31D7C(v4, type metadata accessor for Lyrics.StateManager.State);
  free(v4);
  free(v7);
  free(v6);

  free(v3);
}

uint64_t Lyrics.StateManager.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_100B31D14(v5 + v3, a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_100B26BD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_100B31D14(v3 + v4, a2, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_100B26CB0(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B31D14(a1, v3, type metadata accessor for Lyrics.StateManager.State);
  return Lyrics.StateManager.state.setter(v3);
}

uint64_t sub_100B26D50(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v10[-v6];
  sub_100B31D14(a2, &v10[-v6], type metadata accessor for Lyrics.StateManager.State);
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_100B31D14(a1 + v8, v5, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_100B32284(v7, a1 + v8, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_100B25B54(v5);
  sub_100B31D7C(v5, type metadata accessor for Lyrics.StateManager.State);
  return sub_100B31D7C(v7, type metadata accessor for Lyrics.StateManager.State);
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
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B26860(v4);
  return sub_100B26FCC;
}

void sub_100B26FD8()
{
  v1 = v0;
  sub_10010FC20(&qword_1011B1810, &qword_100F00DC0);
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
  v52 = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v53 = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

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
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v18 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
        swift_beginAccess();
        sub_100B31D14(v1 + v18, v12, type metadata accessor for Lyrics.StateManager.State);
        sub_100B31D14(v12, v10, type metadata accessor for Lyrics.StateManager.State.Loading);
        sub_100B31D7C(v12, type metadata accessor for Lyrics.StateManager.State);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v19 = *v10;
          v20 = *(v10 + 1);
          v21 = *(v10 + 3);
          v49 = *(v10 + 2);
          v50 = v21;
          v22 = v10[32];
          v23 = *(sub_10010FC20(&qword_1011B17F8, &qword_100F00D10) + 48);
          v24 = type metadata accessor for Song();
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
              sub_100B32A58(v19, v48, v49, v50, 1);
              sub_1000095E8(v8, &qword_1011B1810, &qword_100F00DC0);
            }

            else
            {
              v46[0] = v19;
              sub_1000095E8(v8, &qword_1011B1810, &qword_100F00DC0);
              swift_getKeyPath();
              v55 = v1;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v38 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
              swift_beginAccess();
              sub_1000089F8(v1 + v38, v6, &qword_1011B1810, &qword_100F00DC0);
              v39 = v28(v6, 1, v27);
              v40 = v48;
              if (v39 == 1)
              {
                sub_1000095E8(v6, &qword_1011B1810, &qword_100F00DC0);
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
                  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                  sub_100B32A58(v45, v40, v44, v43, 1);
                  goto LABEL_16;
                }

                sub_100B32A58(v46[0], v40, v49, v50, 1);
              }

              else
              {
                sub_100B32A58(v46[0], v48, v49, v50, 1);
                sub_1000095E8(v6, &qword_1011B1810, &qword_100F00DC0);
              }
            }
          }

          else
          {
          }
        }

        else
        {
          sub_100B31D7C(v10, type metadata accessor for Lyrics.StateManager.State.Loading);
        }
      }
    }
  }

  swift_getKeyPath();
  v55 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  sub_1000089F8(v1 + v29, v3, &qword_1011B1810, &qword_100F00DC0);
  v30 = type metadata accessor for Lyrics.Transliteration(0);
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v3, 1, v30);
  sub_1000095E8(v3, &qword_1011B1810, &qword_100F00DC0);
  if (v32 != 1)
  {
    v33 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    LOBYTE(v33) = v33(1);

    if ((v33 & 1) == 0)
    {
      swift_getKeyPath();
      v54 = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

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
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
LABEL_16:

        sub_1000095E8(v37, &qword_1011B1810, &qword_100F00DC0);
      }
    }
  }
}

void (*sub_100B278B4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100B27918;
}

void sub_100B27918(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100B26FD8();
  }
}

void *Lyrics.StateManager.tracklist.getter()
{
  swift_getKeyPath();
  v5 = v0;
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_100B27A10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

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
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100009F78(0, &qword_1011B1800, MPCPlayerResponseTracklist_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;

  sub_100B26FD8();
}

void sub_100B27C94(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  sub_100B26FD8();
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
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B278B4(v4);
  return sub_100B27E44;
}

double sub_100B27E50(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v4 = &v30 - v3;
  sub_10010FC20(&qword_1011B16C8, &qword_100F00AB0);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = type metadata accessor for Song();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v30 - v12;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v36 = v2;
  v15 = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v33 = v14;
  v34 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_1000089F8(&v2[v16], v8, &qword_1011B16C8, &qword_100F00AB0);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &qword_1011B16C8, &qword_100F00AB0);
  }

  else
  {
    v30 = v4;
    v18 = *(v10 + 32);
    v18(v13, v8, v9);
    sub_1000089F8(v32, v6, &qword_1011B16C8, &qword_100F00AB0);
    if (v17(v6, 1, v9) == 1)
    {
      (*(v10 + 8))(v13, v9);
      sub_1000095E8(v6, &qword_1011B16C8, &qword_100F00AB0);
    }

    else
    {
      v19 = v31;
      v18(v31, v6, v9);
      sub_100B32BB0(&qword_1011B1DE0, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      if (static MusicItem<>.==~ infix(_:_:)())
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
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (*&v2[OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask])
  {

    Task.cancel()();
    if (*&v2[v25])
    {
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v30 - 2) = v2;
      *(&v30 - 1) = 0;
      v35 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  type metadata accessor for MainActor();

  v27 = static MainActor.shared.getter();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v2;
  sub_100B284E0(0, 0, v4, &unk_100F01188, v28);

  sub_100B2B790(v29);

  return result;
}

uint64_t sub_100B28434()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002AC1CC;

  return sub_100B2BB9C();
}

uint64_t sub_100B284E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000089F8(a3, v24 - v9, &qword_1011B62E0, &qword_100F06260);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &qword_1011B62E0, &qword_100F06260);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
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

      sub_1000095E8(a3, &qword_1011B62E0, &qword_100F06260);

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

  sub_1000095E8(a3, &qword_1011B62E0, &qword_100F06260);
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

uint64_t sub_100B287E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000089F8(a3, v24 - v9, &qword_1011B62E0, &qword_100F06260);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &qword_1011B62E0, &qword_100F06260);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_10010FC20(&qword_1011B1DE8, &qword_100F01150);
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

      sub_1000095E8(a3, &qword_1011B62E0, &qword_100F06260);

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

  sub_1000095E8(a3, &qword_1011B62E0, &qword_100F06260);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10010FC20(&qword_1011B1DE8, &qword_100F01150);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100B28AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000089F8(a3, v24 - v9, &qword_1011B62E0, &qword_100F06260);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &qword_1011B62E0, &qword_100F06260);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_10010FC20(&unk_1011B4540, &qword_100F010B0);
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

      sub_1000095E8(a3, &qword_1011B62E0, &qword_100F06260);

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

  sub_1000095E8(a3, &qword_1011B62E0, &qword_100F06260);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10010FC20(&unk_1011B4540, &qword_100F010B0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void (*sub_100B28E08(uint64_t *a1))(char **a1, char a2)
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
  v5 = *(*(sub_10010FC20(&qword_1011B16C8, &qword_100F00AB0) - 8) + 64);
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
  sub_1000089F8(v1 + v8, v7, &qword_1011B16C8, &qword_100F00AB0);
  return sub_100B28F38;
}

void sub_100B28F38(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1000089F8(*(*a1 + 12), v6, &qword_1011B16C8, &qword_100F00AB0);
    sub_1000089F8(v7 + v4, v5, &qword_1011B16C8, &qword_100F00AB0);
    swift_beginAccess();
    sub_1002190E0(v6, v7 + v4, &qword_1011B16C8, &qword_100F00AB0);
    swift_endAccess();
    sub_100B27E50(v5);
    sub_1000095E8(v5, &qword_1011B16C8, &qword_100F00AB0);
  }

  else
  {
    sub_1000089F8(v7 + v4, v6, &qword_1011B16C8, &qword_100F00AB0);
    swift_beginAccess();
    sub_1002190E0(v3, v7 + v4, &qword_1011B16C8, &qword_100F00AB0);
    swift_endAccess();
    sub_100B27E50(v6);
  }

  sub_1000095E8(v6, &qword_1011B16C8, &qword_100F00AB0);
  sub_1000095E8(v3, &qword_1011B16C8, &qword_100F00AB0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_100B290D0(uint64_t a1)
{
  sub_10010FC20(&qword_1011B16C8, &qword_100F00AB0);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_1000089F8(a1, &v5 - v2, &qword_1011B16C8, &qword_100F00AB0);
  return Lyrics.StateManager.song.setter(v3);
}

uint64_t Lyrics.StateManager.song.setter(uint64_t a1)
{
  sub_10010FC20(&qword_1011B16C8, &qword_100F00AB0);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011B16C8, &qword_100F00AB0);
  v8 = sub_100B31DF8(v6, a1);
  sub_1000095E8(v6, &qword_1011B16C8, &qword_100F00AB0);
  if (v8)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000089F8(a1, v6, &qword_1011B16C8, &qword_100F00AB0);
    sub_1000089F8(v1 + v7, v4, &qword_1011B16C8, &qword_100F00AB0);
    swift_beginAccess();
    sub_1002190E0(v6, v1 + v7, &qword_1011B16C8, &qword_100F00AB0);
    swift_endAccess();
    sub_100B27E50(v4);
    sub_1000095E8(v4, &qword_1011B16C8, &qword_100F00AB0);
    sub_1000095E8(v6, &qword_1011B16C8, &qword_100F00AB0);
  }

  return sub_1000095E8(a1, &qword_1011B16C8, &qword_100F00AB0);
}

uint64_t sub_100B293E4(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011B16C8, &qword_100F00AB0);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v10[-v6];
  sub_1000089F8(a2, &v10[-v6], &qword_1011B16C8, &qword_100F00AB0);
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_1000089F8(a1 + v8, v5, &qword_1011B16C8, &qword_100F00AB0);
  swift_beginAccess();
  sub_1002190E0(v7, a1 + v8, &qword_1011B16C8, &qword_100F00AB0);
  swift_endAccess();
  sub_100B27E50(v5);
  sub_1000095E8(v5, &qword_1011B16C8, &qword_100F00AB0);
  return sub_1000095E8(v7, &qword_1011B16C8, &qword_100F00AB0);
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
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B28E08(v4);
  return sub_100B2967C;
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
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B29688(v4);
  return sub_100B29834;
}

uint64_t sub_100B298B4(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void sub_100B29968(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

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
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B29840(v4);
  return sub_100B29B68;
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
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B29B74(v4);
  return sub_100B29D60;
}

uint64_t sub_100B29DF0@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *a2;
  swift_beginAccess();
  return sub_1000089F8(v12 + v10, a5, a3, a4);
}

uint64_t sub_100B29ED0@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *a3;
  swift_beginAccess();
  return sub_1000089F8(v10 + v11, a6, a4, a5);
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
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B29D6C(v4);
  return sub_100B2A11C;
}

uint64_t sub_100B2A1AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  sub_10010FC20(a5, a6);
  __chkstk_darwin();
  v13 = &v16[-v12];
  sub_1000089F8(a1, &v16[-v12], a5, a6);
  v14 = *a2;
  swift_getKeyPath();
  v17 = v14;
  v18 = v13;
  v19 = v14;
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000095E8(v13, a5, a6);
}

uint64_t sub_100B2A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000095E8(a1, a4, a5);
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
  v4[6] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100B2A128(v4);
  return sub_100B2A538;
}

Swift::Void __swiftcall Lyrics.StateManager.retryLoadingLyrics()()
{
  v1 = v0;
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  __chkstk_darwin();
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v1;
  sub_100B284E0(0, 0, v3, &unk_100F00E00, v6);
}

uint64_t sub_100B2A668()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_100B2BB9C();
}

uint64_t sub_100B2A714()
{
  v1 = type metadata accessor for ScenePhase();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin();
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B4900, &qword_100F05300);
  __chkstk_darwin();
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v25 = type metadata accessor for Lyrics.StateManager.State(0);
  v8 = *(v25 + 24);
  sub_1000089F8(v0 + v8, v7, &qword_1011B4900, &qword_100F05300);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = v7;
  v13 = v0;
  sub_1000095E8(v12, &qword_1011B4900, &qword_100F05300);
  if (v11 == 1)
  {
    sub_100B31D14(v0, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100B32A58(*v4, *(v4 + 1), *(v4 + 2), *(v4 + 3), v4[32]);
      v14 = *(sub_10010FC20(&qword_1011B17F8, &qword_100F00D10) + 48);
      v15 = type metadata accessor for Song();
      (*(*(v15 - 8) + 8))(&v4[v14], v15);
      v16 = v26;
      v17 = v0 + *(v25 + 20);
      v19 = v27;
      v18 = v28;
      (*(v27 + 104))(v26, enum case for ScenePhase.active(_:), v28);
      LOBYTE(v14) = static ScenePhase.== infix(_:_:)();
      (*(v19 + 8))(v16, v18);
      if (v14)
      {
        v20 = type metadata accessor for Lyrics.StateManager.State.Display(0);
        if (*(v17 + *(v20 + 20)) == 1 && *(v17 + *(v20 + 24)) == 1)
        {
          v21 = v24;
          static Date.now.getter();
          (*(v10 + 56))(v21, 0, 1, v9);
          return sub_100B32D10(v21, v13 + v8);
        }
      }
    }

    else
    {
      sub_100B31D7C(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    }
  }

  sub_1000095E8(v13 + v8, &qword_1011B4900, &qword_100F05300);
  return (*(v10 + 56))(v13 + v8, 1, 1, v9);
}

uint64_t Lyrics.StateManager.State.loading.setter(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v9 - v5;
  sub_100B31D14(v1, &v9 - v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_100B32284(a1, v1, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_100B31D14(v1, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  v7 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v4, v6);
  sub_100B31D7C(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((v7 & 1) == 0)
  {
    sub_100B2A714();
  }

  sub_100B31D7C(a1, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_100B31D7C(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
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
  sub_100B31D14(v1, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_100B2AD84;
}

void sub_100B2AD84(uint64_t **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = (*a1)[5];
  if (a2)
  {
    v6 = v3[2];
    v5 = v3[3];
    v8 = *v3;
    v7 = v3[1];
    sub_100B31D14((*a1)[5], v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v8, v7, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v6, v8, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v8, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    v9 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v5, v7);
    sub_100B31D7C(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v9 & 1) == 0)
    {
      sub_100B2A714();
    }

    v11 = v3[4];
    v10 = v3[5];
    v13 = v3[2];
    v12 = v3[3];
    v14 = v3[1];
    sub_100B31D7C(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    v15 = v14;
    v16 = v10;
  }

  else
  {
    v18 = v3[3];
    v17 = v3[4];
    v19 = *v3;
    sub_100B31D14(*v3, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v4, v19, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v19, v18, type metadata accessor for Lyrics.StateManager.State.Loading);
    v20 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v18, v17);
    sub_100B31D7C(v18, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v20 & 1) == 0)
    {
      sub_100B2A714();
    }

    v10 = v3[4];
    v15 = v3[5];
    v13 = v3[2];
    v12 = v3[3];
    v14 = v3[1];
    v16 = v15;
    v11 = v10;
  }

  sub_100B31D7C(v15, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_100B31D7C(v10, type metadata accessor for Lyrics.StateManager.State.Loading);
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
  sub_100B31D14(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_100B32284(a1, v1 + v8, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_100B31D14(v1 + v8, v5, type metadata accessor for Lyrics.StateManager.State.Display);
  if ((static ScenePhase.== infix(_:_:)() & 1) != 0 && v5[*(v3 + 20)] == v7[*(v3 + 20)])
  {
    v10 = v5[*(v3 + 24)];
    sub_100B31D7C(v5, type metadata accessor for Lyrics.StateManager.State.Display);
    if (v10 == v7[*(v3 + 24)])
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_100B31D7C(v5, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  sub_100B2A714();
LABEL_5:
  sub_100B31D7C(a1, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_100B31D7C(v7, type metadata accessor for Lyrics.StateManager.State.Display);
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
  sub_100B31D14(v1 + *(v6 + 20), v5, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_100B2B228;
}

void sub_100B2B228(uint64_t a1, char a2, __n128 a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    sub_100B31D14(*(a1 + 16), v3, type metadata accessor for Lyrics.StateManager.State.Display);
    Lyrics.StateManager.State.display.setter(v3);
    sub_100B31D7C(v4, type metadata accessor for Lyrics.StateManager.State.Display);
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
  sub_100B31D14(v2, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  result = swift_getEnumCaseMultiPayload();
  v7 = 0uLL;
  if (!result)
  {
    result = sub_100B31D7C(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
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
  v10 = *(sub_10010FC20(&qword_1011B17F8, &qword_100F00D10) + 48);
  v11 = type metadata accessor for Song();
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
  v3 = type metadata accessor for ScenePhase();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.setter(uint64_t a1)
{
  v3 = type metadata accessor for ScenePhase();
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
  if ((static ScenePhase.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100B2B69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static ScenePhase.== infix(_:_:)() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100B2B71C(uint64_t a1, uint64_t a2)
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

double sub_100B2B790(uint64_t a1)
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
    sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = static Task.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

double sub_100B2B934(uint64_t a1)
{
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double sub_100B2B9D8@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);

  return result;
}

double sub_100B2BA90(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_100B2BB9C()
{
  v1[74] = v0;
  sub_10010FC20(&qword_1011B1810, &qword_100F00DC0);
  v1[75] = swift_task_alloc();
  sub_10010FC20(&qword_1011B1808, &qword_100F00D90);
  v1[76] = swift_task_alloc();
  v2 = type metadata accessor for Logger();
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
  sub_10010FC20(&qword_1011B16C8, &qword_100F00AB0);
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v3 = type metadata accessor for Song();
  v1[111] = v3;
  v1[112] = *(v3 - 8);
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[119] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[120] = v5;
  v1[121] = v4;

  return _swift_task_switch(sub_100B2BF74, v5, v4);
}

uint64_t sub_100B2BF74()
{
  v68 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[74];
  swift_getKeyPath();
  v0[122] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v0[41] = v4;
  v0[123] = sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v0[124] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_1000089F8(v4 + v5, v3, &qword_1011B16C8, &qword_100F00AB0);
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

    sub_1000095E8(v7, &qword_1011B16C8, &qword_100F00AB0);
    *v8 = 0;
    *(v8 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[73] = v10;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[69] = v10;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v11 = v10 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_100B31D14(v11, v9, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v9, v66, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v8, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v9, v66) & 1) == 0)
    {
      sub_100B2A714();
    }

    v12 = v0[98];
    v13 = v0[90];
    v14 = v0[85];
    v15 = v0[74];
    sub_100B31D7C(v0[97], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v11, v13, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v14, v11, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v13);
    sub_100B31D7C(v13, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D7C(v14, type metadata accessor for Lyrics.StateManager.State);
    v0[63] = v15;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

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
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v0[55] = v24;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v26 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    v0[129] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_100B31D14(v24 + v26, v23, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v23, v63, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v22, v23, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v23, v63) & 1) == 0)
    {
      sub_100B2A714();
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
    sub_100B31D7C(v0[107], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v28, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v24 + v26, v30, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v29, v24 + v26, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v30);
    sub_100B31D7C(v30, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D7C(v29, type metadata accessor for Lyrics.StateManager.State);
    v0[52] = v32;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

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
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
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
      sub_100B32BB0(&qword_1011B1DD8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v60 = v44;
      v62 = v42;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v58 = v37;
      v49 = *(v40 + 8);
      v49(v39, v41);
      v50 = sub_100010744(v46, v48, &v67);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v36, v58, "[State] Loading lyrics song %{public}s", v45, 0xCu);
      sub_10000959C(v65);

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
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v53 = *(v52 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
    v0[137] = v53;
    v53;
    v54 = swift_task_alloc();
    v0[138] = v54;
    *v54 = v0;
    v54[1] = sub_100B2CA3C;
    v55 = v0[118];

    return LyricsLoader.loadLyrics(for:)(v55);
  }
}

uint64_t sub_100B2CA3C(uint64_t a1, uint64_t a2, char a3)
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
    v8 = sub_100B2E178;
  }

  else
  {

    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_100B2CB6C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100B2CB6C()
{
  v163 = v0;

  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1120);
    v2 = *(v0 + 1112);
    v3 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_10011895C(v2, v1, v3 & 1);
    goto LABEL_36;
  }

  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 888);
  v7 = *(v0 + 872);
  v8 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 424) = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000089F8(v8 + v5, v7, &qword_1011B16C8, &qword_100F00AB0);
  if (v4(v7, 1, v6) == 1)
  {
    v9 = *(v0 + 1120);
    v10 = *(v0 + 1112);
    v11 = *(v0 + 872);
    v12 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_10011895C(v10, v9, v12 & 1);
    sub_1000095E8(v11, &qword_1011B16C8, &qword_100F00AB0);
    goto LABEL_36;
  }

  (*(v0 + 1016))(*(v0 + 928), *(v0 + 872), *(v0 + 888));
  sub_100B32BB0(&qword_1011B1DE0, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  v13 = static MusicItem<>.==~ infix(_:_:)();
  v14 = *(v0 + 323);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  if ((v13 & 1) == 0)
  {
    v53 = *(v0 + 1088);
    v54 = *(v0 + 944);
    v55 = *(v0 + 928);
    v56 = *(v0 + 888);
    sub_10011895C(*(v0 + 1112), *(v0 + 1120), v14 & 1);
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
  sub_10021D0C0(v16, v15, v14 & 1);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  sub_10011895C(v16, v15, v14 & 1);
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
    sub_100B32BB0(&qword_1011B1DD8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v130(v24, v25);
    v30 = sub_100010744(v27, v29, v162);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v0 + 304) = v23;
    *(v0 + 312) = v134;
    *(v0 + 320) = v132 & 1;
    sub_10021D0C0(v23, v134, v132 & 1);
    v31 = String.init<A>(describing:)();
    v33 = sub_100010744(v31, v32, v162);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "[State] Successfully loaded lyrics for song %{public}s with result %{public}s", v26, 0x16u);
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
      v42 = *(sub_10010FC20(&qword_1011B17F8, &qword_100F00D10) + 48);
      *v39 = v35;
      *(v39 + 8) = v34;
      *(v39 + 16) = _swiftEmptyArrayStorage;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      v36(v39 + v42, v37, v38);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 568) = v41;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 576) = v41;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      sub_100B31D14(v41 + v150, v40, type metadata accessor for Lyrics.StateManager.State);
      sub_100B31D14(v40, v157, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_100B32284(v39, v40, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v40, v157) & 1) == 0)
      {
        sub_100B2A714();
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
      sub_100B31D7C(*(v0 + 840), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_100B31D7C(v46, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_100B31D14(v49 + v44, v47, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_100B32284(v48, v49 + v44, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_100B25B54(v47);
      sub_100B31D7C(v47, type metadata accessor for Lyrics.StateManager.State);
      sub_100B31D7C(v48, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 336) = v49;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v50 = v138;
      v51 = v151;
      v52 = 0;
LABEL_31:
      sub_10011895C(v50, v51, v52);
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
  ObservationRegistrar.access<A, B>(_:keyPath:)();

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
      v116 = *(sub_10010FC20(&qword_1011B17F8, &qword_100F00D10) + 48);
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
      sub_10021D0C0(v110, v133, 1);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 544) = v115;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      sub_100B31D14(v115 + v147, v114, type metadata accessor for Lyrics.StateManager.State);
      sub_100B31D14(v114, v154, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_100B32284(v113, v114, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v114, v154) & 1) == 0)
      {
        sub_100B2A714();
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
      sub_100B31D7C(*(v0 + 824), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_100B31D7C(v123, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_100B31D14(v126 + v121, v124, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_100B32284(v125, v126 + v121, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_100B25B54(v124);
      sub_100B31D7C(v124, type metadata accessor for Lyrics.StateManager.State);
      sub_100B31D7C(v125, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 560) = v126;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      sub_10011895C(v137, v148, 1);
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
    v101 = *(sub_10010FC20(&qword_1011B17F8, &qword_100F00D10) + 48);
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
    sub_10021D0C0(v95, v136, 1);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 456) = v100;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    sub_100B31D14(v100 + v152, v99, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v99, v160, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v98, v99, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v99, v160) & 1) == 0)
    {
      sub_100B2A714();
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
    sub_100B31D7C(*(v0 + 792), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v106, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v109 + v105, v107, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v108, v109 + v105, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v107);
    sub_100B31D7C(v107, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D7C(v108, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 472) = v109;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

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
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000095E8(v70, &qword_1011B1808, &qword_100F00D90);
  }

  v73 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 480) = v73;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

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
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_1000095E8(v77, &qword_1011B1810, &qword_100F00DC0);
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
  v87 = *(sub_10010FC20(&qword_1011B17F8, &qword_100F00D10) + 48);
  *v84 = v80;
  *(v84 + 8) = 0;
  *(v84 + 16) = 0;
  *(v84 + 24) = 0;
  *(v84 + 32) = 1;
  v81(v84 + v87, v82, v83);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *(v0 + 488) = v86;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 496) = v86;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  sub_100B31D14(v86 + v139, v85, type metadata accessor for Lyrics.StateManager.State);
  sub_100B31D14(v85, v145, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_100B32284(v84, v85, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v85, v145) & 1) == 0)
  {
    sub_100B2A714();
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
  sub_100B31D7C(*(v0 + 808), type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_100B31D7C(v91, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_100B31D14(v94 + v89, v92, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_100B32284(v93, v94 + v89, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_100B25B54(v92);
  sub_100B31D7C(v92, type metadata accessor for Lyrics.StateManager.State);
  sub_100B31D7C(v93, type metadata accessor for Lyrics.StateManager.State);
  *(v0 + 512) = v94;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  sub_10011895C(v135, v146, 1);
  v88(v140, v90);
  v88(v159, v90);
LABEL_36:

  v127 = *(v0 + 8);

  return v127();
}

uint64_t sub_100B2E178()
{
  v87 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);

  *(v0 + 360) = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011B62D0, &qword_100F06280);
  v3 = swift_dynamicCast();
  v77 = *(v0 + 1064);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 944);
  v7 = *(v0 + 888);
  v8 = *(v0 + 616);
  if (v3)
  {
    v9 = *(v0 + 912);
    v10 = *(v0 + 640);

    v74 = *(v0 + 321);
    v4(v10, v5, v8);
    v77(v9, v6, v7);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 912);
    v17 = *(v0 + 888);
    v18 = *(v0 + 640);
    v19 = *(v0 + 616);
    if (v13)
    {
      v78 = *(v0 + 640);
      v20 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v20 = 136446466;
      sub_100B32BB0(&qword_1011B1DD8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v69 = v19;
      v71 = v15;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v14(v16, v17);
      v24 = sub_100010744(v21, v23, v86);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v0 + 322) = v74;
      v25 = String.init<A>(describing:)();
      v27 = sub_100010744(v25, v26, v86);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v11, v12, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      v71(v78, v69);
    }

    else
    {

      v14(v16, v17);
      v15(v18, v19);
    }

    v82 = *(v0 + 1032);
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    v44 = *(v0 + 672);
    v45 = *(v0 + 592);
    *v42 = v74;
    *(v42 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 384) = v45;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 392) = v45;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    sub_100B31D14(v45 + v82, v44, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v44, v43, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v42, v44, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v44, v43) & 1) == 0)
    {
      sub_100B2A714();
    }

    v46 = *(v0 + 1032);
    v80 = *(v0 + 944);
    v83 = *(v0 + 1088);
    v75 = *(v0 + 888);
    v47 = *(v0 + 768);
    v48 = *(v0 + 720);
    v49 = *(v0 + 672);
    v50 = *(v0 + 592);
    sub_100B31D7C(*(v0 + 760), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v47, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v50 + v46, v48, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v49, v50 + v46, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v48);
    sub_100B31D7C(v48, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D7C(v49, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 408) = v50;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v83(v80, v75);
  }

  else
  {
    v28 = *(v0 + 904);
    v29 = *(v0 + 632);

    v4(v29, v5, v8);
    v77(v28, v6, v7);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v68 = *(v0 + 1088);
      v70 = *(v0 + 1128);
      v32 = *(v0 + 904);
      v33 = *(v0 + 888);
      v79 = *(v0 + 632);
      v81 = *(v0 + 1080);
      v72 = *(v0 + 616);
      v34 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v34 = 136446466;
      sub_100B32BB0(&qword_1011B1DD8, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v68(v32, v33);
      v38 = sub_100010744(v35, v37, v86);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v0 + 376) = v70;
      swift_errorRetain();
      v39 = String.init<A>(describing:)();
      v41 = sub_100010744(v39, v40, v86);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v34, 0x16u);
      swift_arrayDestroy();

      v81(v79, v72);
    }

    else
    {
      v51 = *(v0 + 1088);
      v52 = *(v0 + 1080);
      v53 = *(v0 + 904);
      v54 = *(v0 + 888);
      v55 = *(v0 + 632);
      v56 = *(v0 + 616);

      v51(v53, v54);
      v52(v55, v56);
    }

    v84 = *(v0 + 1032);
    v57 = *(v0 + 752);
    v58 = *(v0 + 744);
    v59 = *(v0 + 664);
    v60 = *(v0 + 592);
    *v57 = 1;
    *(v57 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 344) = v60;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 352) = v60;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    sub_100B31D14(v60 + v84, v59, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D14(v59, v58, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B32284(v57, v59, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v59, v58) & 1) == 0)
    {
      sub_100B2A714();
    }

    v85 = *(v0 + 1088);
    v61 = *(v0 + 1032);
    v73 = *(v0 + 888);
    v76 = *(v0 + 944);
    v62 = *(v0 + 752);
    v63 = *(v0 + 720);
    v64 = *(v0 + 664);
    v65 = *(v0 + 592);
    sub_100B31D7C(*(v0 + 744), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D7C(v62, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_100B31D14(v65 + v61, v63, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_100B32284(v64, v65 + v61, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_100B25B54(v63);
    sub_100B31D7C(v63, type metadata accessor for Lyrics.StateManager.State);
    sub_100B31D7C(v64, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 368) = v65;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v85(v76, v73);
  }

  v66 = *(v0 + 8);

  return v66();
}

id sub_100B2ED84(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_100B2EE34@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

uint64_t sub_100B2EEF8()
{
  v1 = v0;
  sub_10010FC20(&qword_1011B0C20, &qword_100EFF510);
  __chkstk_darwin();
  v48 = &v42[-v2];
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&qword_1011B1818, &qword_100F00DF0);
  __chkstk_darwin();
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v42[-v7];
  v9 = type metadata accessor for MetricsEvent.Page(0);
  v49 = *(*(v9 - 8) + 56);
  v49(v8, 1, 1, v9);
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v52[0] = v1;
  sub_100B32BB0(&qword_1011B17F0, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v50 = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_100B31D14(v1 + v11, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(v4 + 1);
      v14 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v4[32] != 1)
      {
        sub_100B32A58(*v4, v13, v14, v15, 0);
        sub_1000095E8(v8, &qword_1011B1818, &qword_100F00DF0);
        v19 = type metadata accessor for URL();
        v20 = *(*(v19 - 8) + 56);
        goto LABEL_24;
      }

      v44 = *v4;
      v45 = v13;
      v46 = v14;
      v47 = v15;
      swift_getKeyPath();
      v52[0] = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
      swift_beginAccess();
      v17 = *(v1 + v16);
      if (v17 && (v18 = [v17 vocalsControlCommand]) != 0)
      {
        v43 = [v18 isDisabled];
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 1;
      }

      swift_getKeyPath();
      v52[0] = v1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v21 = *(v1 + v16);
      if (v21)
      {
        v22 = [v21 playingItem];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 metadataObject];

          if (v24)
          {
            v25 = [v24 innermostModelObject];

            objc_opt_self();
            v26 = swift_dynamicCastObjCClass();
            if (v26)
            {
              v27 = [v26 lyrics];

              if (v27)
              {
                v28 = [v27 hasStoreLyrics];

                v29 = v28 ^ 1;
LABEL_20:
                static ApplicationCapabilities.shared.getter(v52);
                sub_100014984(v52);
                if (*(v44 + 56))
                {
                  v30 = (v52[2] == 1) & ~(v43 | v29);
                  if (*(v44 + 56) == 1)
                  {
                    sub_100B32A58(v44, v45, v46, v47, 1);
                    sub_1000095E8(v8, &qword_1011B1818, &qword_100F00DF0);
                    v31 = type metadata accessor for URL();
                    v32 = v48;
                    (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
                    v33 = 0x8000000100E51C70;
                    v41 = v30;
                    v34 = v6;
                    v35 = 0xD000000000000010;
                  }

                  else
                  {
                    sub_100B32A58(v44, v45, v46, v47, 1);
                    sub_1000095E8(v8, &qword_1011B1818, &qword_100F00DF0);
                    v37 = type metadata accessor for URL();
                    v32 = v48;
                    (*(*(v37 - 8) + 56))(v48, 1, 1, v37);
                    v41 = v30;
                    v35 = 0x795373636972794CLL;
                    v33 = 0xEE00656C62616C6CLL;
                    v34 = v6;
                  }

                  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v35, v33, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v32, 0, 0, 0, v34, 1, 0, 0, v41);
                  goto LABEL_27;
                }

                sub_100B32A58(v44, v45, v46, v47, 1);
                sub_1000095E8(v8, &qword_1011B1818, &qword_100F00DF0);
                v19 = type metadata accessor for URL();
                v20 = *(*(v19 - 8) + 56);
LABEL_24:
                v36 = v48;
                v20(v48, 1, 1, v19);
                MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x745373636972794CLL, 0xEC00000063697461, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v36, 0, 0, 0, v6, 1, 0, 0, 2);
LABEL_27:
                v49(v6, 0, 1, v9);
                sub_100B32B00(v6, v8);
                v38 = *(sub_10010FC20(&qword_1011B17F8, &qword_100F00D10) + 48);
                v39 = type metadata accessor for Song();
                (*(*(v39 - 8) + 8))(&v4[v38], v39);
                goto LABEL_28;
              }
            }

            else
            {
            }
          }
        }
      }

      v29 = 1;
      goto LABEL_20;
    }

    sub_1000095E8(v8, &qword_1011B1818, &qword_100F00DF0);
  }

  else
  {
    sub_1000095E8(v8, &qword_1011B1818, &qword_100F00DF0);
    sub_100B31D7C(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  }

  v49(v8, 1, 1, v9);
LABEL_28:
  sub_1000089F8(v8, v6, &qword_1011B1818, &qword_100F00DF0);
  swift_getKeyPath();
  __chkstk_darwin();
  v51 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_1000095E8(v8, &qword_1011B1818, &qword_100F00DF0);
  return sub_1000095E8(v6, &qword_1011B1818, &qword_100F00DF0);
}