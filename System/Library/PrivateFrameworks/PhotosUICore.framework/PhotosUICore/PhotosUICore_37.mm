void PhotoStyleElement.semanticStyle.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  sub_1A40D3140(v4, v5, v6);
}

void sub_1A40D3140(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

__n128 PhotoStyleElement.semanticStyle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (v1 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v9;
  v5[4] = v3;
  v5[5] = v4;
  sub_1A40D31F4(v6, v7, v8);
  return result;
}

void sub_1A40D31F4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

void sub_1A40D3298(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getObjectType();
  sub_1A40D4F80(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = (v7 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle);
  *v9 = 0u;
  v9[1] = 0u;
  v9[2] = 0u;
  v10 = (v7 + OBJC_IVAR___PXPhotoStyleElement_legacyFilter);
  *v10 = 0u;
  v10[1] = 0u;
  sub_1A40D44D8(&qword_1EB131948, type metadata accessor for PhotoStyleElement, &protocol conformance descriptor for PhotoStyleElement);
  sub_1A5245754();
}

void sub_1A40D34FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A40D44D8(&qword_1EB131948, type metadata accessor for PhotoStyleElement, &protocol conformance descriptor for PhotoStyleElement);
  v1 = v0;
  sub_1A5245714();
}

void sub_1A40D35C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, double a6, double a7, double a8)
{
  if (sub_1A524C7A4() >= 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v10 = [objc_opt_self() semanticStyleCastDisplayName_];
  if (v10)
  {
    v11 = v10;
    sub_1A524C674();
  }

  v12 = objc_allocWithZone(v8);
  v13 = a5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40D36E4()
{
  v0 = sub_1A52411C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v4 = sub_1A5241164();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void PhotoStyleElement.copy(with:)()
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  swift_beginAccess();
  v1 = objc_allocWithZone(ObjectType);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

Swift::Bool __swiftcall PhotoStyleElement.updateSemanticStyle(tone:color:intensity:)(Swift::Double_optional tone, Swift::Double_optional color, Swift::Double_optional intensity)
{
  v7 = v5;
  v8 = v4;
  v9 = v3;
  v10 = *&intensity.is_nil;
  is_nil = color.is_nil;
  v12 = *&tone.is_nil;
  swift_getObjectType();
  v13 = (v6 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle);
  swift_beginAccess();
  if (v13[1])
  {
    if (is_nil)
    {
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13[3] = v12;
      if (v9)
      {
LABEL_4:
        if (v7)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    v13[4] = v10;
    if (v7)
    {
LABEL_6:
      sub_1A40D44D8(&qword_1EB131950, type metadata accessor for PhotoStyleElement, &protocol conformance descriptor for PhotoStyleElement);
      sub_1A5245F44();
    }

LABEL_5:
    v13[5] = v8;
    goto LABEL_6;
  }

  return 0;
}

Swift::Bool __swiftcall PhotoStyleElement.updateLegacyFilter(intensity:)(Swift::Double intensity)
{
  swift_getObjectType();
  v3 = v1 + OBJC_IVAR___PXPhotoStyleElement_legacyFilter;
  swift_beginAccess();
  if (*(v3 + 8))
  {
    *(v3 + 24) = intensity;
    sub_1A40D44D8(&qword_1EB131950, type metadata accessor for PhotoStyleElement, &protocol conformance descriptor for PhotoStyleElement);
    sub_1A5245F44();
  }

  return 0;
}

void PhotoStyleElement.hasNonDefaultValues.getter()
{
  v1 = v0 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle;
  swift_beginAccess();
  if (*(v1 + 8))
  {
    objc_opt_self();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void PhotoStyleElement.SemanticStyle.defaultTone.getter(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultValuesForCast_];
  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v4 = sub_1A524CA34();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0](0, v4);
    goto LABEL_4;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v4 + 32);
LABEL_4:
    v6 = v5;

    [v6 doubleValue];

    return;
  }

  __break(1u);
}

void PhotoStyleElement.SemanticStyle.defaultColor.getter(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultValuesForCast_];
  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v4 = sub_1A524CA34();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0](1, v4);
    goto LABEL_4;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v5 = *(v4 + 40);
LABEL_4:
    v6 = v5;

    [v6 doubleValue];

    return;
  }

  __break(1u);
}

void PhotoStyleElement.SemanticStyle.defaultIntensity.getter(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultValuesForCast_];
  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v4 = sub_1A524CA34();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0](2, v4);
    goto LABEL_4;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v5 = *(v4 + 48);
LABEL_4:
    v6 = v5;

    [v6 doubleValue];

    return;
  }

  __break(1u);
}

Swift::Void __swiftcall PhotoStyleElement.resetToDefaultValues()()
{
  v1 = v0 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle;
  swift_beginAccess();
  if (*(v1 + 8))
  {
    objc_opt_self();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A40D446C(uint64_t a1)
{
  v1 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v3 = (*(v1 + 8))(ObjectType, v1);
  return (*(v1 + 16))((v3 + 1), ObjectType, v1);
}

uint64_t sub_1A40D44D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void PhotoStyleElement.createMutator()()
{
  type metadata accessor for PhotoStyleElement.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A40D44D8(&qword_1EB131958, type metadata accessor for PhotoStyleElement.Mutator, &protocol conformance descriptor for PhotoStyleElement.Mutator);
  sub_1A52456D4();
}

void sub_1A40D45E0(uint64_t a1)
{
  swift_allocObject();
  swift_getKeyPath();
  sub_1A40D44D8(&qword_1EB131958, type metadata accessor for PhotoStyleElement.Mutator, &protocol conformance descriptor for PhotoStyleElement.Mutator);
  sub_1A52456D4();
}

void PhotoStyleElement.Mutator.contentVersion.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A40D4728()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A40D47A8(__int16 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleElement.Mutator.contentVersion.setter(__int16 a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void PhotoStyleElement.Mutator.contentVersion.modify(uint64_t *a1)
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

void sub_1A40D4930(void **a1)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A40D44D8(&qword_1EB131948, type metadata accessor for PhotoStyleElement, &protocol conformance descriptor for PhotoStyleElement);
  v3 = v2;
  sub_1A5245714();
}

void sub_1A40D4A04(__int16 *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A40D44D8(&qword_1EB131948, type metadata accessor for PhotoStyleElement, &protocol conformance descriptor for PhotoStyleElement);
  v3 = v2;
  sub_1A5245724();
}

uint64_t PhotoStyleElement.Mutator.deinit()
{
  v1 = OBJC_IVAR____TtCC12PhotosUICore17PhotoStyleElement7Mutator__contentVersion;
  sub_1A40D4B1C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

void sub_1A40D4B1C(uint64_t a1)
{
  if (!qword_1EB131960)
  {
    type metadata accessor for PhotoStyleElement.Mutator(255);
    sub_1A40D44D8(&qword_1EB131958, type metadata accessor for PhotoStyleElement.Mutator, &protocol conformance descriptor for PhotoStyleElement.Mutator);
    sub_1A52456C4();
  }
}

uint64_t PhotoStyleElement.Mutator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC12PhotosUICore17PhotoStyleElement7Mutator__contentVersion;
  sub_1A40D4B1C(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A40D4C5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A40D4CD0(__int16 a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1A52456B4();
}

void sub_1A40D4D40(uint64_t *a1)
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

id PhotoStyleElement.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotoStyleElement.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A40D4F80(uint64_t a1)
{
  if (!qword_1EB131968)
  {
    type metadata accessor for PhotoStyleElement(255);
    sub_1A40D44D8(&qword_1EB131948, type metadata accessor for PhotoStyleElement, &protocol conformance descriptor for PhotoStyleElement);
    sub_1A5245764();
  }
}

void sub_1A40D501C(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR___PXPhotoStyleElement_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40D5038()
{
  type metadata accessor for PhotoStyleElement.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A40D44D8(&qword_1EB131958, type metadata accessor for PhotoStyleElement.Mutator, &protocol conformance descriptor for PhotoStyleElement.Mutator);
  sub_1A52456D4();
}

void sub_1A40D5118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A40D44D8(&qword_1EB131950, type metadata accessor for PhotoStyleElement, &protocol conformance descriptor for PhotoStyleElement);

  sub_1A5245F44();
}

id sub_1A40D519C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR___PXPhotoStyleElement_observable);
  *a1 = v2;
  return v2;
}

void sub_1A40D51B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A40D44D8(&qword_1EB131948, type metadata accessor for PhotoStyleElement, &protocol conformance descriptor for PhotoStyleElement);

  sub_1A5245C54();
}

void PhotoStyleElement.SemanticStyle.defaultToneAndColorValues.getter(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultValuesForCast_];
  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v4 = sub_1A524CA34();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1A59097F0](1, v4);
  }

  else
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_11;
    }

    v5 = *(v4 + 40);
  }

  v6 = v5;
  [v5 doubleValue];

  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1A59097F0](0, v4);
LABEL_8:
    v8 = v7;

    [v8 doubleValue];

    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v4 + 32);
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1A40D53AC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x6469766976;
    v5 = 0x6F6F436469766976;
    if (a1 != 2)
    {
      v5 = 0x636974616D617264;
    }

    if (a1)
    {
      v4 = 0x7261576469766976;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1869508461;
    v2 = 0x6F747265766C6973;
    if (a1 != 7)
    {
      v2 = 1919512430;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 <= 5u)
    {
      return 0x636974616D617264;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1A40D54D8()
{
  v1 = *v0;
  sub_1A524EC94();
  sub_1A40D5528(v3, v1);
  return sub_1A524ECE4();
}

double sub_1A40D5528(uint64_t a1, unsigned __int8 a2)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A40D567C(uint64_t a1)
{
  v2 = *v1;
  sub_1A524EC94();
  sub_1A40D5528(v4, v2);
  return sub_1A524ECE4();
}

unint64_t sub_1A40D56C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A40D6AC8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1A40D56F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A40D53AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t Array<A>.PhotoStyleElementCustomOrder.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

void sub_1A40D57A8()
{
  sub_1A3C4ED78(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52F9790;
  sub_1A40D6DD8();
}

uint64_t sub_1A40D5848(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = sub_1A524C674();
    v6 = v5;
    if (v4 == sub_1A524C674() && v6 == v7)
    {
      break;
    }

    v9 = sub_1A524EAB4();

    if (v9)
    {
      return v3;
    }

    if (v2 == ++v3)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1A40D5920(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A40D6A24(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_1A40D59A8(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1A40D6908(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for PISemanticStyleCast(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1A40D5AA0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() allCreativeCasts];
  type metadata accessor for PISemanticStyleCast(0);
  v3 = sub_1A524CA34();

  v4 = *(v3 + 16);
  if (v4)
  {
    v8 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v5 = 32;
    do
    {
      v6 = *(v3 + v5);
      sub_1A40D6B14(v6);

      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      v5 += 8;
      --v4;
    }

    while (v4);

    return v8;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t PISemanticStyleCast.isUndertone.getter(uint64_t a1)
{
  v1 = sub_1A524C674();
  v3 = v2;
  if (v1 == sub_1A524C674() && v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = sub_1A524EAB4();

  if ((v6 & 1) == 0)
  {
    v8 = sub_1A524C674();
    v10 = v9;
    if (v8 != sub_1A524C674() || v10 != v11)
    {
      v13 = sub_1A524EAB4();

      if (v13)
      {
        goto LABEL_6;
      }

      v14 = sub_1A524C674();
      v16 = v15;
      if (v14 != sub_1A524C674() || v16 != v17)
      {
        v19 = sub_1A524EAB4();

        if (v19)
        {
          goto LABEL_6;
        }

        v20 = sub_1A524C674();
        v22 = v21;
        if (v20 != sub_1A524C674() || v22 != v23)
        {
          v24 = sub_1A524EAB4();

          if (v24)
          {
            goto LABEL_6;
          }

          v25 = sub_1A524C674();
          v27 = v26;
          if (v25 != sub_1A524C674() || v27 != v28)
          {
            v29 = sub_1A524EAB4();

            if (v29)
            {
              goto LABEL_6;
            }

            v30 = sub_1A524C674();
            v32 = v31;
            if (v30 != sub_1A524C674() || v32 != v33)
            {
              v34 = sub_1A524EAB4();

              if (v34)
              {
                goto LABEL_6;
              }

              v35 = sub_1A524C674();
              v37 = v36;
              if (v35 != sub_1A524C674() || v37 != v38)
              {
                v39 = sub_1A524EAB4();

                if (v39)
                {
                  goto LABEL_6;
                }

                v40 = sub_1A524C674();
                v42 = v41;
                if (v40 != sub_1A524C674() || v42 != v43)
                {
                  v7 = sub_1A524EAB4();
                  goto LABEL_15;
                }
              }
            }
          }
        }
      }
    }

LABEL_14:
    v7 = 1;
LABEL_15:

    return v7 & 1;
  }

LABEL_6:
  v7 = 1;
  return v7 & 1;
}

id sub_1A40D611C()
{
  v1 = v0 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle;
  swift_beginAccess();
  if (*(v1 + 8))
  {
    v2 = (v1 + 16);
  }

  else
  {
    v2 = MEMORY[0x1E69BE120];
  }

  v3 = *v2;

  return v3;
}

void sub_1A40D61C8()
{
  v1 = v0 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle;
  swift_beginAccess();
  if (*(v1 + 8))
  {
    objc_opt_self();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A40D6360()
{
  v1 = v0 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle;
  swift_beginAccess();
  if (*(v1 + 8))
  {
    objc_opt_self();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A40D64FC()
{
  v1 = v0 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle;
  swift_beginAccess();
  if (*(v1 + 8))
  {
    objc_opt_self();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t sub_1A40D665C(double a1, double a2, double a3)
{
  swift_getObjectType();
  v7 = v3 + OBJC_IVAR___PXPhotoStyleElement_semanticStyle;
  swift_beginAccess();
  if (*(v7 + 8))
  {
    *(v7 + 24) = a1;
    *(v7 + 32) = a2;
    *(v7 + 40) = a3;
    sub_1A40D44D8(&qword_1EB131950, type metadata accessor for PhotoStyleElement, &protocol conformance descriptor for PhotoStyleElement);
    sub_1A5245F44();
  }

  return 0;
}

uint64_t sub_1A40D67A4(uint64_t a1)
{
  sub_1A40D44D8(&qword_1EB1319E8, type metadata accessor for PISemanticStyleCast, &unk_1A5318D60);
  sub_1A40D44D8(&qword_1EB1319F0, type metadata accessor for PISemanticStyleCast, &unk_1A5318D08);

  return sub_1A524E7E4();
}

uint64_t sub_1A40D6860(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_1A40D6908(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A40D7A88(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for PISemanticStyleCast(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A40D6A38(void *a1, uint64_t *a2)
{
  v2 = sub_1A524C674();
  v4 = v3;
  if (v2 == sub_1A524C674() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A524EAB4();
  }

  return v7 & 1;
}

unint64_t sub_1A40D6AC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A524E824();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

void sub_1A40D6B14(void *a1)
{
  v2 = sub_1A52411C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultValuesForCast_];
  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v7 = sub_1A524CA34();

  v8 = v7 & 0xC000000000000001;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1A59097F0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;
  [v9 doubleValue];
  v12 = v11;

  if (!v8)
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v13 = *(v7 + 40);
      goto LABEL_8;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = MEMORY[0x1A59097F0](1, v7);
LABEL_8:
  v14 = v13;
  [v13 doubleValue];
  v16 = v15;

  if (v8)
  {
    v17 = MEMORY[0x1A59097F0](2, v7);
LABEL_12:
    v18 = v17;

    [v18 doubleValue];
    v20 = v19;

    sub_1A52411B4();
    v21 = sub_1A5241164();
    v23 = v22;
    (*(v3 + 8))(v5, v2);
    v24 = 0xE000000000000000;
    if (sub_1A524C7A4() <= 0 && (v26 = [objc_opt_self() semanticStyleCastDisplayName_]) != 0)
    {
      v27 = v26;
      v25 = sub_1A524C674();
      v24 = v28;
    }

    else
    {
      v25 = 0;
    }

    *&v31 = v25;
    *(&v31 + 1) = v24;
    v32 = a1;
    v33 = v12;
    v34 = v16;
    v35 = v20;
    v29 = objc_allocWithZone(type metadata accessor for PhotoStyleElement(0));
    v30 = a1;
    sub_1A40D3298(v21, v23, &v31, 0, 0, 0, 0);
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
  {
    v17 = *(v7 + 48);
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
}

void sub_1A40D6DD8()
{
  v0 = sub_1A52411C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = *MEMORY[0x1E69BE130];
  v6 = [v4 semanticStyleCastDisplayName_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A524C674();
    v10 = v9;
  }

  else
  {
    v10 = 0xE800000000000000;
    v8 = 0x647261646E617453;
  }

  sub_1A52411B4();
  v11 = sub_1A5241164();
  v13 = v12;
  (*(v1 + 8))(v3, v0);
  if (sub_1A524C7A4() <= 0)
  {

    v14 = [v4 semanticStyleCastDisplayName_];
    if (v14)
    {
      v15 = v14;
      v8 = sub_1A524C674();
      v10 = v16;
    }

    else
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }
  }

  *&v19 = v8;
  *(&v19 + 1) = v10;
  v20 = v5;
  v17 = type metadata accessor for PhotoStyleElement(0);
  v22 = 0;
  v23 = 0;
  v21 = 0;
  objc_allocWithZone(v17);
  v18 = v5;
  sub_1A40D3298(v11, v13, &v19, 0, 0, 0, 0);
}

void *sub_1A40D6FC8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = [objc_opt_self() allSystemCasts];
  type metadata accessor for PISemanticStyleCast(0);
  v5 = v4;
  v6 = sub_1A524CA34();

  if (v2 == 1)
  {
    v14 = v5;
    v21 = v6;
    v22 = MEMORY[0x1E69E7CC0];
    v7 = *MEMORY[0x1E69BE0F0];
    v15 = *MEMORY[0x1E69BE0D8];
    v16 = v7;
    v8 = *MEMORY[0x1E69BE0D0];
    v17 = *MEMORY[0x1E69BE118];
    v18 = v8;
    v9 = *MEMORY[0x1E69BE108];
    v19 = *MEMORY[0x1E69BE140];
    v20 = v9;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v10 = *(v6 + 16);
  if (v10)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v11 = 32;
    do
    {
      v12 = *(v6 + v11);
      sub_1A40D6B14(v12);

      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      v11 += 8;
      --v10;
    }

    while (v10);

    return v22;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

unint64_t sub_1A40D738C()
{
  result = qword_1EB131970;
  if (!qword_1EB131970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131970);
  }

  return result;
}

unint64_t sub_1A40D73E4()
{
  result = qword_1EB131978;
  if (!qword_1EB131978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131978);
  }

  return result;
}

unint64_t sub_1A40D743C()
{
  result = qword_1EB131980;
  if (!qword_1EB131980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131980);
  }

  return result;
}

unint64_t sub_1A40D7494()
{
  result = qword_1EB131988;
  if (!qword_1EB131988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131988);
  }

  return result;
}

unint64_t sub_1A40D74EC()
{
  result = qword_1EB131990;
  if (!qword_1EB131990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131990);
  }

  return result;
}

unint64_t sub_1A40D761C()
{
  result = qword_1EB1319A8;
  if (!qword_1EB1319A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1319A8);
  }

  return result;
}

unint64_t sub_1A40D7674()
{
  result = qword_1EB1319B0;
  if (!qword_1EB1319B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1319B0);
  }

  return result;
}

void sub_1A40D7710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EB1319C0)
  {
    v4 = type metadata accessor for Array<A>.PhotoStyleElementCustomOrder(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB1319C0);
    }
  }
}

void sub_1A40D7788(uint64_t a1)
{
  sub_1A40D4F80(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A40D7864(uint64_t a1)
{
  sub_1A40D4B1C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A40D7A88(uint64_t a1)
{
  if (!qword_1EB1319F8)
  {
    type metadata accessor for PISemanticStyleCast(255);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1319F8);
    }
  }
}

uint64_t PersonEntity.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E695A088];
  sub_1A40DD16C(0, &qword_1EB1260C0, sub_1A40D7C08, MEMORY[0x1E69E6370], MEMORY[0x1E695A088]);
  swift_getKeyPath();
  sub_1A3FC19D8();
  a2[1] = sub_1A523FE54();
  sub_1A40DD16C(0, &qword_1EB1260C8, sub_1A3DEB710, MEMORY[0x1E69E6158], v4);
  swift_getKeyPath();
  result = sub_1A523FE34();
  a2[2] = result;
  *a2 = a1;
  return result;
}

unint64_t sub_1A40D7C08()
{
  result = qword_1EB120E40;
  if (!qword_1EB120E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB120E40);
  }

  return result;
}

id PersonEntity.id.getter()
{
  result = [*v0 uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A40D7CBC(void *a1)
{
  result = [a1 uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PersonEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v21 = sub_1A5240214();
  v17 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E54();
  v18 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 2);
  sub_1A524D654();
  v20 = sub_1A4895DCC();
  v9 = *v20;
  sub_1A5246E44();
  sub_1A5246E04();

  v19 = *(v5 + 8);
  v16 = *v1;
  v19(v7, v4);
  v24 = v16;
  v25 = v8;
  v10 = MEMORY[0x1E695A3C0];
  sub_1A40D8D80(0, &qword_1EB131A00, MEMORY[0x1E695A3C0], MEMORY[0x1E69E6F90]);
  v11 = v17;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1A52FC9F0;
  sub_1A52401F4();
  sub_1A5240204();
  v23 = v12;
  sub_1A40D8D28();
  sub_1A40D8D80(0, &qword_1EB131A08, v10, MEMORY[0x1E69E62F8]);
  sub_1A40D8DE4();
  v13 = v21;
  sub_1A524E224();
  sub_1A40D8058(v3, v22);
  (*(v11 + 8))(v3, v13);
  sub_1A524D644();
  v14 = *v20;
  sub_1A5246E44();
  sub_1A5246E04();

  return (v19)(v7, v18);
}

uint64_t sub_1A40D8058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v52 = sub_1A5246F24();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5240BB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v59 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1A40D8D80(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v53 = v47 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v47 - v17;
  sub_1A40D8D80(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v11);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v64 = v47 - v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v47 - v26;
  v55 = *v63;
  v58 = v5;
  v62 = *(v5 + 56);
  v63 = (v5 + 56);
  v62(v47 - v26, 1, 1, v4, v25);
  v28 = sub_1A5240244();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v61 = v18;
  v48 = v30;
  v49 = v28;
  v47[1] = v29 + 56;
  (v30)(v18, 1, 1);
  sub_1A52401F4();
  sub_1A40D8D28();
  v56 = a1;
  LOBYTE(v18) = sub_1A524E114();
  v31 = *(v8 + 8);
  v31(v10, v7);
  if (v18)
  {
    v32 = [v55 px_localizedName];
    sub_1A524C674();
    v54 = v21;
    v33 = v27;

    v34 = v64;
    sub_1A5240B94();
    v35 = MEMORY[0x1E6968E10];
    sub_1A40DD58C(v33, &qword_1EB12B008, MEMORY[0x1E6968E10]);
    (v62)(v34, 0, 1, v4);
    v36 = v33;
    v37 = v35;
    v27 = v33;
    v21 = v54;
    sub_1A40DD5FC(v34, v36, &qword_1EB12B008, v37);
  }

  sub_1A5240204();
  v38 = sub_1A524E114();
  v31(v10, v7);
  if (v38)
  {
    type metadata accessor for PXAppDependencyManager();
    v39 = v53;
    sub_1A4897F4C(v55);
    v40 = MEMORY[0x1E695A3E8];
    v41 = v61;
    sub_1A40DD58C(v61, &qword_1EB12B0F0, MEMORY[0x1E695A3E8]);
    v48(v39, 0, 1, v49);
    sub_1A40DD5FC(v39, v41, &qword_1EB12B0F0, v40);
  }

  sub_1A40DD50C(v27, v21, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  v42 = v58;
  v43 = *(v58 + 48);
  if (v43(v21, 1, v4) == 1)
  {
    sub_1A5240B94();
    if (v43(v21, 1, v4) != 1)
    {
      sub_1A40DD58C(v21, &qword_1EB12B008, MEMORY[0x1E6968E10]);
    }
  }

  else
  {
    (*(v42 + 32))(v59, v21, v4);
  }

  (v62)(v64, 1, 1, v4);
  v44 = MEMORY[0x1E695A3E8];
  v45 = v61;
  sub_1A40DD50C(v61, v57, &qword_1EB12B0F0, MEMORY[0x1E695A3E8]);
  sub_1A5240264();
  sub_1A40DD58C(v45, &qword_1EB12B0F0, v44);
  return sub_1A40DD58C(v27, &qword_1EB12B008, MEMORY[0x1E6968E10]);
}

uint64_t PersonEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_1A5246E54();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = *v2;
  *(v3 + 72) = *(v2 + 16);
  sub_1A524CC54();
  *(v3 + 80) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40D8A6C, v6, v5);
}

uint64_t sub_1A40D8A6C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  sub_1A524D654();
  v6 = sub_1A4895DCC();
  v7 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8 = *(v2 + 8);
  v8(v1, v3);
  sub_1A40D8058(v4, v5);
  sub_1A524D644();
  v9 = *v6;
  sub_1A5246E44();
  sub_1A5246E04();

  v8(v1, v3);

  v10 = v0[1];

  return v10();
}

id sub_1A40D8C3C@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result == 1;
  return result;
}

uint64_t PersonEntity.name.getter()
{
  v1 = [*v0 px_localizedName];
  v2 = sub_1A524C674();

  return v2;
}

void sub_1A40D8CD0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 px_localizedName];
  v4 = sub_1A524C674();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

unint64_t sub_1A40D8D28()
{
  result = qword_1EB1260B8;
  if (!qword_1EB1260B8)
  {
    sub_1A5240214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1260B8);
  }

  return result;
}

void sub_1A40D8D80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A40D8DE4()
{
  result = qword_1EB131A10;
  if (!qword_1EB131A10)
  {
    sub_1A40D8D80(255, &qword_1EB131A08, MEMORY[0x1E695A3C0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A10);
  }

  return result;
}

void sub_1A40D8E6C(uint64_t *a1@<X8>)
{
  v3 = [*v1 uuid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A524C674();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A40D8ECC(uint64_t a1)
{
  v2 = sub_1A40DD450();

  return MEMORY[0x1EEDB39B0](a1, v2);
}

uint64_t sub_1A40D8F18(uint64_t a1)
{
  v2 = sub_1A3FC19D8();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1A40D8F68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return PersonEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_1A40D9010(uint64_t a1)
{
  v2 = sub_1A40DD084();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t PersonEntityQuery.entities(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1A5246F24();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_1A5246E54();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A40D9184, 0, 0);
}

uint64_t sub_1A40D9184(double a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v1[10] = *(v1[2] + 16);
  sub_1A524D654();
  v5 = sub_1A4895DCC();
  v1[11] = v5;
  v6 = *v5;
  sub_1A5246E44();
  sub_1A5246E04();

  v7 = *(v3 + 8);
  v1[12] = v7;
  v1[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v2, v4);
  type metadata accessor for PXAppDependencyManager();
  v8 = swift_task_alloc();
  v1[14] = v8;
  *v8 = v1;
  v8[1] = sub_1A40D92E0;

  return sub_1A4896234();
}

uint64_t sub_1A40D92E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A40D943C, 0, 0);
  }
}

id sub_1A40D943C()
{
  v9 = v0;
  v1 = sub_1A40DCAA8(*(v0 + 16), *(v0 + 120));
  *(v0 + 128) = v1;
  if ([v1 count] < 1)
  {
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v7 = *(v0 + 24);
    v8 = sub_1A3CB648C();
    (*(v6 + 16))(v5, v8, v7);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = [v1 fetchedObjects];
  if (result)
  {
    v3 = result;
    sub_1A3C52C70(0, &qword_1EB1265C0, 0x1E6978980);
    v4 = sub_1A524CA34();

    if (!(v4 >> 62))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A40D98F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_1A40D9B58;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_1A40D9A18;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A40D9A18(uint64_t a1)
{
  v2 = v1[15];
  v3 = v1[16];
  v11 = v1[12];
  v4 = v1[11];
  v5 = v1[9];
  v6 = v1[7];
  sub_1A524D644();
  v7 = *v4;
  sub_1A5246E44();
  sub_1A5246E04();

  v11(v5, v6);

  v8 = v1[1];
  v9 = v1[19];

  return v8(v9);
}

uint64_t sub_1A40D9B58()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PersonEntityQuery.displayRepresentations(for:requestedComponents:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v4 = sub_1A5246E54();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = sub_1A524CC54();
  v2[7] = sub_1A524CC44();
  v5 = swift_task_alloc();
  v2[8] = v5;
  *v5 = v2;
  v5[1] = sub_1A40D9CF0;

  return PersonEntityQuery.entities(for:)(a1);
}

uint64_t sub_1A40D9CF0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1A524CBC4();
    v7 = v6;
    v8 = sub_1A40DA048;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_1A524CBC4();
    v7 = v9;
    v8 = sub_1A40D9E70;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1A40D9E70()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  v14 = v4;
  v15 = v0[2];

  sub_1A524D654();
  v5 = sub_1A4895DCC();
  v6 = *v5;
  sub_1A5246E44();
  sub_1A5246E04();

  v7 = *(v2 + 8);
  v7(v3, v4);
  v8 = swift_task_alloc();
  *(v8 + 16) = v15;
  sub_1A40DA4B8(MEMORY[0x1E69E7CC8], sub_1A40DCE38, v8, v1);
  v10 = v9;

  sub_1A524D644();
  v11 = *v5;
  sub_1A5246E44();
  sub_1A5246E04();

  v7(v3, v14);

  v12 = v0[1];

  return v12(v10);
}

uint64_t sub_1A40DA048()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A40DA0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A40D8D80(0, &qword_1EB1260B0, MEMORY[0x1E695A3F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v18 - v6;
  v8 = sub_1A5240274();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v18[0];
  v19 = v12;
  sub_1A40D8058(a3, v11);
  result = [*&v18[0] uuid];
  if (result)
  {
    v14 = result;
    v15 = sub_1A524C674();
    v17 = v16;

    (*(v9 + 16))(v7, v11, v8);
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_1A40DA2B0(v7, v15, v17);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A40DA2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A40D8D80(0, &qword_1EB1260B0, MEMORY[0x1E695A3F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_1A5240274();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v12) == 1)
  {
    v15 = MEMORY[0x1E695A3F0];
    sub_1A40DD58C(a1, &qword_1EB1260B0, MEMORY[0x1E695A3F0]);
    sub_1A40DBF30(a2, a3, v9);

    sub_1A40DD58C(v9, &qword_1EB1260B0, v15);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1A40DC600(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }
}

void sub_1A40DA4B8(uint64_t a1, void (*a2)(uint64_t *, id *), uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 48); ; i += 3)
    {
      v9 = *(i - 1);
      v8 = *i;
      v12[0] = *(i - 2);
      v12[1] = v9;
      v12[2] = v8;
      v10 = v12[0];

      a2(&v13, v12);
      v11 = v12[0];

      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return;
      }
    }
  }
}

uint64_t PersonEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1A5246F24();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A40DA668, 0, 0);
}

uint64_t sub_1A40DA668(uint64_t a1, uint64_t a2)
{
  if ((sub_1A3DEFE6C(a1, a2) & 1) == 0)
  {
    v6 = v2[5];
    v5 = v2[6];
    v7 = v2[4];
    v8 = sub_1A3CB648C();
    (*(v6 + 16))(v5, v8, v7);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  type metadata accessor for PXAppDependencyManager();
  v3 = swift_task_alloc();
  v2[10] = v3;
  *v3 = v2;
  v3[1] = sub_1A40DA8D0;

  return sub_1A4896234();
}

uint64_t sub_1A40DA8D0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1A40DAA34, 0, 0);
  }
}

void sub_1A40DAA34()
{
  v1 = [*(v0 + 88) librarySpecificFetchOptions];
  v2 = [objc_opt_self() px_defaultDetectionTypes];
  if (!v2)
  {
    sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
    sub_1A524CA34();
    v2 = sub_1A524CA14();
  }

  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  [v1 setIncludedDetectionTypes_];

  sub_1A3C4D5E4(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  *(swift_allocObject() + 16) = xmmword_1A52F9DE0;
  sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
  sub_1A40D8D80(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52FC9F0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1A3D710E8();
  *(v5 + 32) = 1701667182;
  *(v5 + 40) = 0xE400000000000000;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = v4;
  *(v5 + 80) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40DB498(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_1A40DB664;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_1A40DB5C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A40DB5C0()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);
  v3 = *(v0 + 120);

  return v2(v3);
}

uint64_t sub_1A40DB664()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A40DB6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1A40DB798;

  return PersonEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_1A40DB798(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1A40DB8A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3FBBB04;

  return PersonEntityQuery.entities(for:)(a1);
}

uint64_t sub_1A40DB93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3D60150;

  return MEMORY[0x1EEDB2EB0](a1, a2, a3);
}

uint64_t sub_1A40DB9F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return PersonEntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2);
}

uint64_t sub_1A40DBA8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1A40DCF6C();
  *v5 = v2;
  v5[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1A40DBB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3CA8098;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

uint64_t sub_1A40DBBF8()
{
  v0 = sub_1A523FEB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  v5 = sub_1A523FEF4();
  __swift_allocate_value_buffer(v5, qword_1EB1A61C8);
  __swift_project_value_buffer(v5, qword_1EB1A61C8);
  sub_1A523FEC4();
  sub_1A523FEC4();
  (*(v1 + 8))(v4, v0);
  return sub_1A523FF14();
}

uint64_t static PersonEntity.__assistantSchemaEntity.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1A61C0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A523FEF4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1A61C8);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

char *sub_1A40DBDF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A3C4D5E4(0, &qword_1EB131A98, &type metadata for PersonEntity, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A40DBF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A3C5DCA4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A40DC830();
      v10 = v21;
    }

    v11 = *(v10 + 56);
    v12 = sub_1A5240274();
    v20 = *(v12 - 8);
    v13.n128_f64[0] = (*(v20 + 32))(a3, v11 + *(v20 + 72) * v8, v12);
    sub_1A40DC414(v8, v10, v13);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v12;
  }

  else
  {
    v18 = sub_1A5240274();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_1A40DC0A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_1A5240274();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A40DD4A4(0);
  v43 = v4;
  v8 = sub_1A524E774();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if ((v43 & 1) == 0)
      {
        (*v40)(v45, v28, v46);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      (*v44)(v45, v28, v46);
      sub_1A524EC94();
      sub_1A524C794();
      v29 = sub_1A524ECE4();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1A40DC414(unint64_t a1, uint64_t a2, __n128 a3)
{
  if ((*(a2 + 64 + ((((a1 + 1) & ~(-1 << *(a2 + 32))) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((a1 + 1) & ~(-1 << *(a2 + 32)))))
  {
    sub_1A524E244();
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(a2 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v3 = *(a2 + 16);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v5;
    ++*(a2 + 36);
  }
}

void sub_1A40DC600(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1A3C5DCA4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1A40DC830();
      goto LABEL_7;
    }

    sub_1A40DC0A0(v15, a4 & 1);
    v25 = sub_1A3C5DCA4(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1A40DC780(v12, a2, a3, a1, v18);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_17:
    sub_1A524EB84();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if ((v16 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v19 = v18[7];
  v20 = sub_1A5240274();
  v21 = *(v20 - 8);
  v22 = *(v21 + 40);
  v23 = v20;
  v24 = v19 + *(v21 + 72) * v12;

  v22(v24, a1, v23);
}

uint64_t sub_1A40DC780(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1A5240274();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_1A40DC830()
{
  v1 = v0;
  v36 = sub_1A5240274();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40DD4A4(0);
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v37 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v3;
    if (v13)
    {
      v15 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
      goto LABEL_17;
    }

    v16 = 0;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v31;
        v5 = v37;
        goto LABEL_20;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = *(v3 + 56);
        v21 = (*(v3 + 48) + 16 * v18);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v18;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, v20 + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v19);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {

LABEL_20:
    *v1 = v5;
  }
}

id sub_1A40DCAA8(uint64_t a1, id a2)
{
  v2 = [a2 librarySpecificFetchOptions];
  v3 = [objc_opt_self() px_defaultDetectionTypes];
  if (!v3)
  {
    sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
    sub_1A524CA34();
    v3 = sub_1A524CA14();
  }

  [v2 setIncludedDetectionTypes_];

  v4 = objc_opt_self();
  v5 = sub_1A524CA14();
  v6 = [v4 fetchPersonsWithLocalIdentifiers:v5 options:v2];

  return v6;
}

uint64_t sub_1A40DCBE0()
{
  result = [*(v0 + 16) count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      v3 = MEMORY[0x1E695A088];
      sub_1A40DD16C(0, &qword_1EB1260C0, sub_1A40D7C08, MEMORY[0x1E69E6370], MEMORY[0x1E695A088]);
      sub_1A40DD16C(0, &qword_1EB1260C8, sub_1A3DEB710, MEMORY[0x1E69E6158], v3);
      v4 = 0;
      v5 = MEMORY[0x1E69E7CC0];
      do
      {
        v6 = [*(v14 + 16) objectAtIndexedSubscript_];
        swift_getKeyPath();
        sub_1A3FC19D8();
        v7 = v6;
        v8 = sub_1A523FE54();
        swift_getKeyPath();
        v9 = sub_1A523FE34();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1A40DBDF8(0, *(v5 + 2) + 1, 1, v5);
        }

        v11 = *(v5 + 2);
        v10 = *(v5 + 3);
        if (v11 >= v10 >> 1)
        {
          v5 = sub_1A40DBDF8((v10 > 1), v11 + 1, 1, v5);
        }

        ++v4;

        *(v5 + 2) = v11 + 1;
        v12 = &v5[24 * v11];
        *(v12 + 4) = v7;
        *(v12 + 5) = v8;
        *(v12 + 6) = v9;
      }

      while (v2 != v4);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    v13 = *(v14 + 8);

    return v13(v5);
  }

  return result;
}

unint64_t sub_1A40DCE64()
{
  result = qword_1EB131A18;
  if (!qword_1EB131A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A18);
  }

  return result;
}

unint64_t sub_1A40DCEBC()
{
  result = qword_1EB131A20;
  if (!qword_1EB131A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A20);
  }

  return result;
}

unint64_t sub_1A40DCF14()
{
  result = qword_1EB131A28;
  if (!qword_1EB131A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A28);
  }

  return result;
}

unint64_t sub_1A40DCF6C()
{
  result = qword_1EB131A30;
  if (!qword_1EB131A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A30);
  }

  return result;
}

unint64_t sub_1A40DCFD0()
{
  result = qword_1EB131A38;
  if (!qword_1EB131A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A38);
  }

  return result;
}

unint64_t sub_1A40DD028()
{
  result = qword_1EB131A40;
  if (!qword_1EB131A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A40);
  }

  return result;
}

unint64_t sub_1A40DD084()
{
  result = qword_1EB131A48;
  if (!qword_1EB131A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A48);
  }

  return result;
}

unint64_t sub_1A40DD0DC()
{
  result = qword_1EB131A50;
  if (!qword_1EB131A50)
  {
    sub_1A40DD16C(255, &qword_1EB131A58, sub_1A3FC0108, &type metadata for PersonEntity, MEMORY[0x1E695A570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A50);
  }

  return result;
}

void sub_1A40DD16C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A40DD1D8()
{
  result = qword_1EB131A60;
  if (!qword_1EB131A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A60);
  }

  return result;
}

unint64_t sub_1A40DD230()
{
  result = qword_1EB131A68;
  if (!qword_1EB131A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A68);
  }

  return result;
}

unint64_t sub_1A40DD288()
{
  result = qword_1EB131A70;
  if (!qword_1EB131A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A70);
  }

  return result;
}

unint64_t sub_1A40DD2E0()
{
  result = qword_1EB131A78;
  if (!qword_1EB131A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A78);
  }

  return result;
}

unint64_t sub_1A40DD338()
{
  result = qword_1EB131A80;
  if (!qword_1EB131A80)
  {
    sub_1A3C4D5E4(255, &qword_1EB12FB10, &type metadata for PersonEntity, MEMORY[0x1E69E62F8]);
    sub_1A3FC0108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A80);
  }

  return result;
}

unint64_t sub_1A40DD3D8()
{
  result = qword_1EB131A88;
  if (!qword_1EB131A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A88);
  }

  return result;
}

unint64_t sub_1A40DD450()
{
  result = qword_1EB131A90;
  if (!qword_1EB131A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131A90);
  }

  return result;
}

void sub_1A40DD4A4(uint64_t a1)
{
  if (!qword_1EB120450)
  {
    sub_1A5240274();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120450);
    }
  }
}

uint64_t sub_1A40DD50C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A40D8D80(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A40DD58C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A40D8D80(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A40DD5FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A40D8D80(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A40DD690()
{
  v1 = *(v0 + 8);
  sub_1A524EC94();
  sub_1A524DC04();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A40DD6EC(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1A524DC04();
  return MEMORY[0x1A590A010](v2);
}

uint64_t sub_1A40DD72C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1A524EC94();
  sub_1A524DC04();
  MEMORY[0x1A590A010](v2);
  return sub_1A524ECE4();
}

double sub_1A40DD7D8(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  result = 12.0;
  if (v7 != *MEMORY[0x1E69C2200] && v7 != *MEMORY[0x1E69C21F8])
  {
    result = 20.0;
    if (v7 != *MEMORY[0x1E69C21F0])
    {
      (*(v3 + 8))(v6, v2, 20.0);
      return 12.0;
    }
  }

  return result;
}

uint64_t type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationFeedProvider(uint64_t a1)
{
  result = qword_1EB1A6BF0;
  if (!qword_1EB1A6BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A40DD964@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A3C47918();
  v7 = v6;
  v8 = sub_1A3C52D68();
  v10 = v9;
  v12 = v11;
  v13 = sub_1A3C4ED50(v8);
  v17[8] = 1;
  *v4 = xmmword_1A53192D0;
  v4[16] = 1;
  *(v4 + 3) = 0;
  v4[32] = 1;
  *(v4 + 5) = sub_1A40DD7D8;
  *(v4 + 6) = 0;
  *(v4 + 7) = v5;
  *(v4 + 8) = v7;
  *(v4 + 9) = v8;
  *(v4 + 10) = v10;
  v4[88] = v12;
  v4[89] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = sub_1A3DC1AF8();
  return sub_1A437C3B8(v4, 0, v14, v15 & 1, a1);
}

uint64_t sub_1A40DDA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationFeedProvider(0) + 24);

  return sub_1A40DDACC(a3, v5);
}

uint64_t sub_1A40DDACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeFeedBodyStyle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A40DDB34()
{
  result = qword_1EB131AA0;
  if (!qword_1EB131AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131AA0);
  }

  return result;
}

uint64_t sub_1A40DDC04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A40DDCF8(uint64_t a1)
{
  result = sub_1A40DDC04(&qword_1EB131AB8, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationFeedProvider, &unk_1A5319364);
  *(a1 + 8) = result;
  return result;
}

void sub_1A40DDE00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem(255);
    v7 = sub_1A40DDC04(&qword_1EB130328, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem, &unk_1A5376E70);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A40DDEA0()
{
  result = qword_1EB131AD0;
  if (!qword_1EB131AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131AD0);
  }

  return result;
}

double sub_1A40DDFD0@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v3;
  v4 = v2;

  return result;
}

void sub_1A40DE014(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 96))(v5);
  sub_1A417975C(v7, a2);
}

uint64_t sub_1A40DE0F8()
{
  sub_1A40DDC04(&qword_1EB131AA8, type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationFeedProvider, &unk_1A5319348);

  return sub_1A3C47918();
}

void sub_1A40DE19C(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
  if (v1 <= 0x3F)
  {
    sub_1A40DDDE0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LemonadeFeedBodyStyle(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t *sub_1A40DE24C()
{
  result = sub_1A3F67960();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBB40) = *result;
  HIWORD(dword_1EB1EBB40) = v1;
  dword_1EB1EBB44 = v2;
  return result;
}

uint64_t *sub_1A40DE284()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBB48) = *result;
  HIWORD(dword_1EB1EBB48) = v1;
  dword_1EB1EBB4C = v2;
  return result;
}

uint64_t *sub_1A40DE2BC()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBB50) = *result;
  HIWORD(dword_1EB1EBB50) = v1;
  dword_1EB1EBB54 = v2;
  return result;
}

uint64_t sub_1A40DE2F4(uint64_t a1)
{
  v2 = sub_1A40DE36C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A40DE330(uint64_t a1)
{
  v2 = sub_1A40DE36C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A40DE36C()
{
  result = qword_1EB1A6C30;
  if (!qword_1EB1A6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1A6C30);
  }

  return result;
}

uint64_t sub_1A40DE3C0@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1A6C00 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1EBB44;
  *a1 = dword_1EB1EBB40;
  a1[1] = v1;
  return result;
}

uint64_t sub_1A40DE428@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1A6C08 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1EBB4C;
  *a1 = dword_1EB1EBB48;
  a1[1] = v1;
  return result;
}

void sub_1A40DE490(_DWORD *a1@<X8>)
{
  if (qword_1EB1A6C10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = dword_1EB1EBB54;
  *a1 = dword_1EB1EBB50;
  a1[1] = v2;
}

uint64_t sub_1A40DE538(void *a1)
{
  sub_1A40E4B5C(0, &qword_1EB131AE0, sub_1A40DE36C, &type metadata for OneUpSharePlayRequestInitializationMessagePayload.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A40DE36C();
  sub_1A524ED34();
  return (*(v4 + 8))(v6, v3);
}

uint64_t *sub_1A40DE678()
{
  result = sub_1A3F67960();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBB58) = *result;
  HIWORD(dword_1EB1EBB58) = v1;
  dword_1EB1EBB5C = v2;
  return result;
}

uint64_t *sub_1A40DE6B0()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBB60) = *result;
  HIWORD(dword_1EB1EBB60) = v1;
  dword_1EB1EBB64 = v2;
  return result;
}

uint64_t *sub_1A40DE6E8()
{
  result = sub_1A3F67A3C();
  v1 = *(result + 1);
  v2 = *(result + 1);
  LOWORD(dword_1EB1EBB68) = *result;
  HIWORD(dword_1EB1EBB68) = v1;
  dword_1EB1EBB6C = v2;
  return result;
}

uint64_t OneUpSharePlayDataSourceMessagePayload.init(dataSourceIdentifier:assetsMetadata:changes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  return sub_1A40E469C(a3, a4 + *(v6 + 24), &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
}

uint64_t OneUpSharePlayDataSourceMessagePayload.init(dataSourceIdentifier:assetsMetadata:changeDetails:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_1A40E45CC(0, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v14 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  if (a3)
  {
    sub_1A40DE9C4(a3, v10);
    sub_1A40E5BE8(v13, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
    v15(v10, 0, 1, v14);
    sub_1A40E469C(v10, v13, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
  }

  *a4 = a1;
  a4[1] = a2;
  v16 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  return sub_1A40E469C(v13, a4 + *(v16 + 24), &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
}

uint64_t sub_1A40DE9C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1A52414C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = [a1 fromDataSourceIdentifier];
  a2[1] = [a1 toDataSourceIdentifier];
  v9 = [a1 sectionChanges];
  v10 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
  sub_1A40DEBE4(v9, a2 + *(v10 + 24));
  v14 = sub_1A40E36EC(MEMORY[0x1E69E7CC0]);
  v11 = [a1 sectionsWithItemChanges];
  sub_1A5241444();

  sub_1A40E41B4(v8, &v14, a1);
  result = (*(v5 + 8))(v8, v4);
  *(a2 + *(v10 + 28)) = v14;
  return result;
}

void OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.sectionItemChanges.getter()
{
  type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40DEBE4(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A40E45CC(0, &unk_1EB12AF40, MEMORY[0x1E6969B50], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = [a1 removedIndexes];
  sub_1A5241444();

  v9 = [a1 insertedIndexes];
  v10 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  sub_1A5241444();

  v11 = [a1 movesToIndexes];
  if (v11)
  {
    v12 = v11;
    sub_1A5241444();

    v13 = sub_1A52414C4();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  }

  else
  {
    v14 = sub_1A52414C4();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_1A40E469C(v7, a2 + *(v10 + 24), &unk_1EB12AF40, MEMORY[0x1E6969B50]);
  v15 = [a1 movesFromIndexes];
  if (v15)
  {
    v20 = 0;
    v16 = v15;
    sub_1A524CA24();

    v17 = v20;
  }

  else
  {
    v17 = 0;
  }

  *(a2 + *(v10 + 28)) = v17;
  v18 = [a1 changedIndexes];
  sub_1A5241444();
}

uint64_t sub_1A40DEE38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A40E45CC(0, &qword_1EB131C00, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1A40E5BE8(a1, &qword_1EB131C00, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
    v14 = sub_1A3CAB9BC(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v23 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A40E3354();
        v18 = v23;
      }

      sub_1A40E5B08(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
      sub_1A40E2FB4(v16, v18, v19);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1A40E5BE8(v8, &qword_1EB131C00, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
  }

  else
  {
    sub_1A40E5B08(a1, v13, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    result = sub_1A40E3160(v13, a2, v20);
    *v3 = v23;
  }

  return result;
}

void __swiftcall OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.convertToChangeDetails(remoteFromDataSourceIdentifier:remoteToDataSourceIdentifier:)(PXSectionedDataSourceChangeDetails *__return_ptr retstr, Swift::Int remoteFromDataSourceIdentifier, Swift::Int remoteToDataSourceIdentifier)
{
  v12 = remoteFromDataSourceIdentifier;
  v13 = remoteToDataSourceIdentifier;
  v4 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  v15 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v14 = &v10 - v6;
  sub_1A40E45CC(0, &qword_1EB131AE8, sub_1A40E4630, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v17 = &v10 - v9;
  sub_1A3E8FFA8(MEMORY[0x1E69E7CC0]);
  v10 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
  v11 = v3;
  v16 = *(v3 + *(v10 + 28));
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes.convertToArrayChangeDetails()()
{
  sub_1A40E45CC(0, &unk_1EB12AF40, MEMORY[0x1E6969B50], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  if (*(v0 + v9[7]))
  {
    v27 = sub_1A524CA14();
  }

  else
  {
    v27 = 0;
  }

  v10 = v9[5];
  v11 = sub_1A52414C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(v8, v0 + v10, v11);
  v14 = *(v12 + 56);
  v14(v8, 0, 1, v11);
  sub_1A40E471C(v0 + v9[6], v5, &unk_1EB12AF40, MEMORY[0x1E6969B50]);
  v15 = v0 + v9[8];
  v16 = v28;
  v13(v28, v15, v11);
  v14(v16, 0, 1, v11);
  v17 = sub_1A5241414();
  v18 = *(v12 + 48);
  v19 = 0;
  if (v18(v8, 1, v11) != 1)
  {
    v19 = sub_1A5241414();
    (*(v12 + 8))(v8, v11);
  }

  if (v18(v5, 1, v11) == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_1A5241414();
    (*(v12 + 8))(v5, v11);
  }

  v21 = v28;
  if (v18(v28, 1, v11) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_1A5241414();
    (*(v12 + 8))(v21, v11);
  }

  v23 = objc_allocWithZone(off_1E7721450);
  v24 = v27;
  v25 = [v23 initWithIncrementalChangeDetailsRemovedIndexes:v17 insertedIndexes:v19 movesToIndexes:v20 movesFromIndexes:v27 changedIndexes:v22];

  return v25;
}

uint64_t OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes.removedIndexes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A52414C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes.insertedIndexes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0) + 20);
  v4 = sub_1A52414C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes.movesFromIndexes.getter()
{
  type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes.changedIndexes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0) + 32);
  v4 = sub_1A52414C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A40DFC78()
{
  v1 = *v0;
  v2 = 0x496465766F6D6572;
  v3 = 0x496F547365766F6DLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x496465676E616863;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6465747265736E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A40DFD28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A40E5650(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A40DFD5C(uint64_t a1)
{
  v2 = sub_1A40E479C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A40DFD98(uint64_t a1)
{
  v2 = sub_1A40E479C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1A40E4B5C(0, &qword_1EB131AF8, sub_1A40E479C, &type metadata for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A40E479C();
  sub_1A524ED34();
  v17 = 0;
  sub_1A52414C4();
  sub_1A40E47F0(&qword_1EB131B00, MEMORY[0x1E6969B50], MEMORY[0x1E6969B58]);
  sub_1A524E9D4();
  if (!v2)
  {
    v10 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
    v16 = 1;
    sub_1A524E9D4();
    v15 = 2;
    sub_1A524E984();
    v12[1] = *(v3 + *(v10 + 28));
    v14 = 3;
    sub_1A3DB4E34(0, &qword_1EB126E90, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    sub_1A40E4838(&qword_1EB131B08, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1A524E984();
    v13 = 4;
    sub_1A524E9D4();
  }

  return (*(v7 + 8))(v9, v6);
}

void OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_1A40E45CC(0, &unk_1EB12AF40, MEMORY[0x1E6969B50], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v29 - v4;
  v37 = sub_1A52414C4();
  v33 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v29 - v10;
  sub_1A40E4B5C(0, &qword_1EB131B10, sub_1A40E479C, &type metadata for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes.CodingKeys, MEMORY[0x1E69E6F48]);
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A40E479C();
  v38 = v13;
  v17 = v39;
  sub_1A524ED14();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v39 = v14;
    v18 = v16;
    v19 = a1;
    v45 = 0;
    sub_1A40E47F0(&qword_1EB131B18, MEMORY[0x1E6969B50], MEMORY[0x1E6969B80]);
    v20 = v37;
    sub_1A524E8E4();
    v21 = v20;
    v22 = v33 + 32;
    v23 = v18;
    v24 = v36;
    v36 = *(v33 + 32);
    (v36)(v18, v24, v21);
    v44 = 1;
    sub_1A524E8E4();
    (v36)(&v18[v39[5]], v8, v21);
    v43 = 2;
    v25 = v32;
    sub_1A524E894();
    v26 = v34;
    v29 = v22;
    sub_1A40E469C(v25, v23 + v39[6], &unk_1EB12AF40, MEMORY[0x1E6969B50]);
    sub_1A3DB4E34(0, &qword_1EB126E90, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    v42 = 3;
    sub_1A40E4838(&qword_1EB131B20, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
    sub_1A524E894();
    *(v23 + v39[7]) = v40;
    v41 = 4;
    v27 = v31;
    v28 = v37;
    sub_1A524E8E4();
    (*(v26 + 8))(v38, v35);
    (v36)(v23 + v39[8], v27, v28);
    sub_1A40E5D94(v23, v30, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
    __swift_destroy_boxed_opaque_existential_0(v19);
    sub_1A40E4AA8(v23, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
  }
}

void sub_1A40E07EC(uint64_t a1, uint64_t a2)
{
  v91 = sub_1A52414C4();
  v4 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6969B50];
  v8 = MEMORY[0x1E69E6720];
  sub_1A40E45CC(0, &unk_1EB12AF40, MEMORY[0x1E6969B50], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v75 - v10;
  sub_1A40E5B70(0, &qword_1EB131BF0, &unk_1EB12AF40, v7);
  v90 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  v15 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  v92 = *(v15 - 8);
  v93 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v86 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v75 - v20;
  sub_1A40E45CC(0, &qword_1EB131AE8, sub_1A40E4630, v8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  MEMORY[0x1EEE9AC00](v22);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v84 = v24;
    v85 = (&v75 - v23);
    v80 = v11;
    v81 = a1;
    v25 = 0;
    v28 = *(a1 + 64);
    v27 = a1 + 64;
    v26 = v28;
    v29 = 1 << *(v27 - 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & v26;
    v75 = (v29 + 63) >> 6;
    v76 = v27;
    v82 = a2;
    v83 = (v4 + 48);
    v77 = (v4 + 32);
    v78 = v6;
    v79 = (v4 + 8);
    v32 = v86;
    v33 = v88;
    while (v31)
    {
      v87 = (v31 - 1) & v31;
      v35 = __clz(__rbit64(v31)) | (v25 << 6);
LABEL_19:
      v40 = *(*(v81 + 48) + 8 * v35);
      v41 = v89;
      sub_1A40E5D94(*(v81 + 56) + *(v92 + 72) * v35, v89, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
      sub_1A40E4630(0);
      v43 = v42;
      v44 = *(v42 + 48);
      v45 = v84;
      *v84 = v40;
      v46 = v41;
      v47 = v45;
      sub_1A40E5B08(v46, v45 + v44, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
      (*(*(v43 - 8) + 56))(v47, 0, 1, v43);
LABEL_20:
      v48 = v85;
      sub_1A40E469C(v47, v85, &qword_1EB131AE8, sub_1A40E4630);
      sub_1A40E4630(0);
      if ((*(*(v43 - 8) + 48))(v48, 1, v43) == 1)
      {
        return;
      }

      v49 = *v48;
      sub_1A40E5B08(v48 + *(v43 + 48), v32, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
      v50 = sub_1A3CAB9BC(v49);
      if ((v51 & 1) == 0)
      {
        goto LABEL_42;
      }

      sub_1A40E5D94(*(a2 + 56) + *(v92 + 72) * v50, v33, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
      v52 = MEMORY[0x1A58FC7A0](v33, v32);
      v53 = v83;
      if ((v52 & 1) == 0 || (MEMORY[0x1A58FC7A0](v33 + v93[5], v32 + v93[5]) & 1) == 0)
      {
        goto LABEL_41;
      }

      v54 = v93[6];
      v55 = *(v90 + 48);
      v56 = MEMORY[0x1E6969B50];
      sub_1A40E471C(v33 + v54, v14, &unk_1EB12AF40, MEMORY[0x1E6969B50]);
      sub_1A40E471C(v32 + v54, &v14[v55], &unk_1EB12AF40, v56);
      v57 = *v53;
      v58 = v91;
      if ((*v53)(v14, 1, v91) == 1)
      {
        if (v57(&v14[v55], 1, v58) != 1)
        {
          goto LABEL_40;
        }

        sub_1A40E5BE8(v14, &unk_1EB12AF40, MEMORY[0x1E6969B50]);
        a2 = v82;
      }

      else
      {
        v60 = v14;
        v61 = v14;
        v62 = v80;
        sub_1A40E471C(v60, v80, &unk_1EB12AF40, MEMORY[0x1E6969B50]);
        if (v57((v61 + v55), 1, v58) == 1)
        {
          (*v79)(v62, v58);
          v14 = v61;
          v33 = v88;
LABEL_40:
          sub_1A40E5AAC(v14, &qword_1EB131BF0, &unk_1EB12AF40, MEMORY[0x1E6969B50], v59);
          goto LABEL_41;
        }

        v63 = v78;
        (*v77)(v78, v61 + v55, v58);
        sub_1A40E47F0(&qword_1EB131BF8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B70]);
        v64 = v58;
        v65 = sub_1A524C594();
        v66 = *v79;
        v67 = v63;
        v32 = v86;
        (*v79)(v67, v64);
        v66(v62, v64);
        sub_1A40E5BE8(v61, &unk_1EB12AF40, MEMORY[0x1E6969B50]);
        a2 = v82;
        v14 = v61;
        v33 = v88;
        if ((v65 & 1) == 0)
        {
          goto LABEL_41;
        }
      }

      v68 = v93[7];
      v69 = *(v33 + v68);
      v70 = *(v32 + v68);
      if (v69)
      {
        if (!v70)
        {
          goto LABEL_41;
        }

        v71 = *(v69 + 16);
        if (v71 != *(v70 + 16))
        {
          goto LABEL_41;
        }

        if (v71 && v69 != v70)
        {
          v72 = (v69 + 32);
          v73 = (v70 + 32);
          while (*v72 == *v73)
          {
            ++v72;
            ++v73;
            if (!--v71)
            {
              goto LABEL_8;
            }
          }

LABEL_41:
          sub_1A40E4AA8(v33, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
LABEL_42:
          sub_1A40E4AA8(v32, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
          return;
        }
      }

      else if (v70)
      {
        goto LABEL_41;
      }

LABEL_8:
      v34 = MEMORY[0x1A58FC7A0](v33 + v93[8], v32 + v93[8]);
      sub_1A40E4AA8(v33, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
      sub_1A40E4AA8(v32, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
      v31 = v87;
      if ((v34 & 1) == 0)
      {
        return;
      }
    }

    if (v75 <= v25 + 1)
    {
      v36 = v25 + 1;
    }

    else
    {
      v36 = v75;
    }

    v37 = v36 - 1;
    while (1)
    {
      v38 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v38 >= v75)
      {
        sub_1A40E4630(0);
        v43 = v74;
        v47 = v84;
        (*(*(v74 - 8) + 56))(v84, 1, 1, v74);
        v87 = 0;
        v25 = v37;
        goto LABEL_20;
      }

      v39 = *(v76 + 8 * v38);
      ++v25;
      if (v39)
      {
        v87 = (v39 - 1) & v39;
        v35 = __clz(__rbit64(v39)) | (v38 << 6);
        v25 = v38;
        goto LABEL_19;
      }
    }

    __break(1u);
    __break(1u);
  }
}

unint64_t sub_1A40E10E8()
{
  v1 = 0x436E6F6974636573;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  v2 = 0xD000000000000016;
  if (!*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A40E1174@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A40E581C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A40E119C(uint64_t a1)
{
  v2 = sub_1A40E48BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A40E11D8(uint64_t a1)
{
  v2 = sub_1A40E48BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1A40E4B5C(0, &qword_1EB131B28, sub_1A40E48BC, &type metadata for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A40E48BC();
  sub_1A524ED34();
  v16 = 0;
  sub_1A524E9C4();
  if (!v2)
  {
    v15 = 1;
    sub_1A524E9C4();
    v10 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
    v14 = 2;
    type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
    sub_1A40E47F0(&qword_1EB131B30, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes, &protocol conformance descriptor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
    sub_1A524E9D4();
    v12[1] = *(v3 + *(v10 + 28));
    v13 = 3;
    sub_1A40E5CBC(0, &qword_1EB131B38, MEMORY[0x1E69E5E28]);
    sub_1A40E4910();
    sub_1A524E9D4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v18 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40E4B5C(0, &qword_1EB131B48, sub_1A40E48BC, &type metadata for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.CodingKeys, MEMORY[0x1E69E6F48]);
  v19 = v5;
  v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A40E48BC();
  v20 = v7;
  v11 = v21;
  sub_1A524ED14();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v4;
  v13 = v17;
  v26 = 0;
  *v10 = sub_1A524E8D4();
  v25 = 1;
  v10[1] = sub_1A524E8D4();
  v24 = 2;
  sub_1A40E47F0(&qword_1EB131B50, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes, &protocol conformance descriptor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
  sub_1A524E8E4();
  sub_1A40E5B08(v12, v10 + *(v8 + 24), type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
  sub_1A40E5CBC(0, &qword_1EB131B38, MEMORY[0x1E69E5E28]);
  v23 = 3;
  sub_1A40E49DC();
  sub_1A524E8E4();
  (*(v13 + 8))(v20, v19);
  *(v10 + *(v8 + 28)) = v22;
  sub_1A40E5D94(v10, v16, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1A40E4AA8(v10, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
}

uint64_t OneUpSharePlayDataSourceMessagePayload.description.getter()
{
  v1 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A40E45CC(0, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v21 - v6;
  v8 = *(v0 + 8);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v21[1] = v21 - v6;
    v21[2] = v0;
    v24 = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, v9, 0);
    sub_1A40E5D94(v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v4, type metadata accessor for OneUpSharePlayAssetMetadata);
    v11 = v4[1];
    v22 = *v4;
    v23 = v11;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1A524E404();

  v22 = 0x203A737465737361;
  v23 = 0xE800000000000000;
  v12 = MEMORY[0x1A5907DB0](v10, MEMORY[0x1E69E6158]);
  v14 = v13;

  MEMORY[0x1A5907B60](v12, v14);

  MEMORY[0x1A5907B60](0x6843736168207C20, 0xEF203A7365676E61);
  v15 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  sub_1A40E471C(v0 + *(v15 + 24), v7, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
  v16 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
  v17 = (*(*(v16 - 8) + 48))(v7, 1, v16);
  sub_1A40E5BE8(v7, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
  if (v17 == 1)
  {
    v18 = 20302;
  }

  else
  {
    v18 = 5457241;
  }

  if (v17 == 1)
  {
    v19 = 0xE200000000000000;
  }

  else
  {
    v19 = 0xE300000000000000;
  }

  MEMORY[0x1A5907B60](v18, v19);

  return v22;
}

uint64_t sub_1A40E1C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A40E5D94(v13, v10, type metadata accessor for OneUpSharePlayAssetMetadata);
        sub_1A40E5D94(v14, v6, type metadata accessor for OneUpSharePlayAssetMetadata);
        sub_1A40E47F0(&qword_1EB12D7E0, type metadata accessor for OneUpSharePlayAssetMetadata, &protocol conformance descriptor for OneUpSharePlayAssetMetadata);
        v16 = sub_1A524C594();
        sub_1A40E4AA8(v6, type metadata accessor for OneUpSharePlayAssetMetadata);
        sub_1A40E4AA8(v10, type metadata accessor for OneUpSharePlayAssetMetadata);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A40E1E64()
{
  v1 = 0x737465737361;
  if (*v0 != 1)
  {
    v1 = 0x7365676E616863;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65644974736F68;
  }
}

uint64_t sub_1A40E1EC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A40E5990(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A40E1EF0(uint64_t a1)
{
  v2 = sub_1A40E4B08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A40E1F2C(uint64_t a1)
{
  v2 = sub_1A40E4B08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OneUpSharePlayDataSourceMessagePayload.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1A40E4B5C(0, &qword_1EB131B60, sub_1A40E4B08, &type metadata for OneUpSharePlayDataSourceMessagePayload.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A40E4B08();
  sub_1A524ED34();
  v14 = 0;
  sub_1A524E9C4();
  if (!v2)
  {
    v11[1] = *(v3 + 8);
    v13 = 1;
    sub_1A40E45CC(0, &qword_1EB131B68, type metadata accessor for OneUpSharePlayAssetMetadata, MEMORY[0x1E69E62F8]);
    sub_1A40E4BC4(&qword_1EB131B70, &qword_1EB131B78, &protocol conformance descriptor for OneUpSharePlayAssetMetadata, MEMORY[0x1E69E6300]);
    sub_1A524E9D4();
    type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
    v12 = 2;
    type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
    sub_1A40E47F0(&qword_1EB131B80, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges, &protocol conformance descriptor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
    sub_1A524E984();
  }

  return (*(v7 + 8))(v9, v6);
}

void OneUpSharePlayDataSourceMessagePayload.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_1A40E45CC(0, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  sub_1A40E4B5C(0, &qword_1EB131B88, sub_1A40E4B08, &type metadata for OneUpSharePlayDataSourceMessagePayload.CodingKeys, MEMORY[0x1E69E6F48]);
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A40E4B08();
  v19 = v8;
  v12 = v20;
  sub_1A524ED14();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v13 = a1;
    v15 = v17;
    v14 = v18;
    v24 = 0;
    *v11 = sub_1A524E8D4();
    sub_1A40E45CC(0, &qword_1EB131B68, type metadata accessor for OneUpSharePlayAssetMetadata, MEMORY[0x1E69E62F8]);
    v23 = 1;
    sub_1A40E4BC4(&qword_1EB131B90, &qword_1EB131B98, &protocol conformance descriptor for OneUpSharePlayAssetMetadata, MEMORY[0x1E69E6330]);
    sub_1A524E8E4();
    v11[1] = v21;
    type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
    v22 = 2;
    sub_1A40E47F0(&qword_1EB131BA0, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges, &protocol conformance descriptor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
    sub_1A524E894();
    (*(v15 + 8))(v19, v14);
    sub_1A40E469C(v5, v11 + *(v9 + 24), &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
    sub_1A40E5D94(v11, v16, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
    __swift_destroy_boxed_opaque_existential_0(v13);
    sub_1A40E4AA8(v11, type metadata accessor for OneUpSharePlayDataSourceMessagePayload);
  }
}

uint64_t sub_1A40E263C@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1A6C18 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1EBB5C;
  *a1 = dword_1EB1EBB58;
  a1[1] = v1;
  return result;
}

uint64_t sub_1A40E26A4@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1A6C20 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1EBB64;
  *a1 = dword_1EB1EBB60;
  a1[1] = v1;
  return result;
}

void sub_1A40E270C(_DWORD *a1@<X8>)
{
  if (qword_1EB1A6C28 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = dword_1EB1EBB6C;
  *a1 = dword_1EB1EBB68;
  a1[1] = v2;
}

uint64_t sub_1A40E27C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A3E91908(0);
    v2 = sub_1A524E784();
    v19 = v2;
    sub_1A524E694();
    v3 = sub_1A524E6C4();
    if (v3)
    {
      v4 = v3;
      sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1A3C52C70(0, &qword_1EB12D7F8, &off_1E7721450);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1A40E2D58(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1A524DBE4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1A524E6C4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void sub_1A40E2A00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1A40E5CBC(0, &qword_1EB131C08, MEMORY[0x1E69E6EC8]);
  v38 = v4;
  v9 = sub_1A524E774();
  v10 = v9;
  if (*(v8 + 16))
  {
    v36 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_1A40E5B08(v25, v7, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
      }

      else
      {
        sub_1A40E5D94(v25, v7, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
      }

      v26 = sub_1A524EC84();
      v27 = -1 << *(v10 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      sub_1A40E5B08(v7, *(v10 + 56) + v24 * v18, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1A40E2D58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3E91908(0);
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      v24 = sub_1A524DBE4();
      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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

    if (v4)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v7;
}

unint64_t sub_1A40E2FB4(unint64_t result, uint64_t a2, __n128 a3)
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
      v11 = (v10 + 8 * v7);
      result = sub_1A524EC84();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 < v9 || v4 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v9 && v4 < v12)
      {
        goto LABEL_5;
      }

      v15 = (v10 + 8 * v4);
      if (v4 != v7 || v15 >= v11 + 1)
      {
        *v15 = *v11;
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A40E3160(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A3CAB9BC(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A40E3354();
      goto LABEL_7;
    }

    sub_1A40E2A00(v13, a3 & 1);
    v20 = sub_1A3CAB9BC(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0) - 8) + 72) * v10;

    return sub_1A40E5C58(a1, v18);
  }

LABEL_13:

  return sub_1A40E32AC(v10, a2, a1, v16);
}

uint64_t sub_1A40E32AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  result = sub_1A40E5B08(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void sub_1A40E3354()
{
  v1 = v0;
  v2 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40E5CBC(0, &qword_1EB131C08, MEMORY[0x1E69E6EC8]);
  v5 = *v0;
  v6 = sub_1A524E764();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_1A40E5D94(*(v5 + 56) + v22, v4, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_1A40E5B08(v4, *(v7 + 56) + v22, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1A40E3598()
{
  v1 = v0;
  sub_1A3E91908(0);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        v21 = v19;
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

unint64_t sub_1A40E36EC(uint64_t a1)
{
  sub_1A40E5D2C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A40E5CBC(0, &qword_1EB131C08, MEMORY[0x1E69E6EC8]);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    while (1)
    {
      sub_1A40E5D94(v10, v6, sub_1A40E5D2C);
      v12 = *v6;
      result = sub_1A3CAB9BC(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
      result = sub_1A40E5B08(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t _s12PhotosUICore38OneUpSharePlayDataSourceMessagePayloadV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A40E45CC(0, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v23 - v9);
  sub_1A40E5B70(0, &qword_1EB131BE8, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  if (*a1 != *a2 || (sub_1A40E1C5C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v15 = *(type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0) + 24);
  v16 = a1 + v15;
  v17 = *(v12 + 48);
  sub_1A40E471C(v16, v14, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
  sub_1A40E471C(a2 + v15, &v14[v17], &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
  v18 = *(v5 + 48);
  if (v18(v14, 1, v4) == 1)
  {
    if (v18(&v14[v17], 1, v4) == 1)
    {
      sub_1A40E5BE8(v14, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
      return 1;
    }

    goto LABEL_8;
  }

  sub_1A40E471C(v14, v10, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
  if (v18(&v14[v17], 1, v4) == 1)
  {
    sub_1A40E4AA8(v10, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
LABEL_8:
    sub_1A40E5AAC(v14, &qword_1EB131BE8, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges, v19);
    return 0;
  }

  sub_1A40E5B08(&v14[v17], v7, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
  if (*v10 == *v7 && v10[1] == v7[1] && (_s12PhotosUICore38OneUpSharePlayDataSourceMessagePayloadV0gH7ChangesV0K0V2eeoiySbAG_AGtFZ_0(v10 + *(v4 + 24), v7 + *(v4 + 24)) & 1) != 0)
  {
    sub_1A40E07EC(*(v10 + *(v4 + 28)), *(v7 + *(v4 + 28)));
    v22 = v21;
    sub_1A40E4AA8(v7, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
    sub_1A40E4AA8(v10, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
    sub_1A40E5BE8(v14, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
    if (v22)
    {
      return 1;
    }
  }

  else
  {
    sub_1A40E4AA8(v7, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
    sub_1A40E4AA8(v10, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
    sub_1A40E5BE8(v14, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges);
  }

  return 0;
}

void _s12PhotosUICore38OneUpSharePlayDataSourceMessagePayloadV0gH7ChangesV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v4 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges(0);
    if (_s12PhotosUICore38OneUpSharePlayDataSourceMessagePayloadV0gH7ChangesV0K0V2eeoiySbAG_AGtFZ_0(a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {
      v5 = *(v4 + 28);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);

      sub_1A40E07EC(v6, v7);
    }
  }
}

uint64_t _s12PhotosUICore38OneUpSharePlayDataSourceMessagePayloadV0gH7ChangesV0K0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A52414C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969B50];
  sub_1A40E45CC(0, &unk_1EB12AF40, MEMORY[0x1E6969B50], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  sub_1A40E5B70(0, &qword_1EB131BF0, &unk_1EB12AF40, v8);
  v13 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  if ((MEMORY[0x1A58FC7A0](a1, a2, v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  if ((MEMORY[0x1A58FC7A0](a1 + *(v17 + 20), a2 + *(v17 + 20)) & 1) == 0)
  {
    goto LABEL_9;
  }

  v18 = a1;
  v19 = v5;
  v38 = v17;
  v20 = *(v17 + 24);
  v21 = *(v13 + 48);
  v22 = MEMORY[0x1E6969B50];
  v36 = v18;
  sub_1A40E471C(v18 + v20, v16, &unk_1EB12AF40, MEMORY[0x1E6969B50]);
  v37 = a2;
  sub_1A40E471C(a2 + v20, &v16[v21], &unk_1EB12AF40, v22);
  v23 = *(v19 + 48);
  if (v23(v16, 1, v4) != 1)
  {
    sub_1A40E471C(v16, v11, &unk_1EB12AF40, MEMORY[0x1E6969B50]);
    if (v23(&v16[v21], 1, v4) != 1)
    {
      (*(v19 + 32))(v7, &v16[v21], v4);
      sub_1A40E47F0(&qword_1EB131BF8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B70]);
      v27 = sub_1A524C594();
      v28 = *(v19 + 8);
      v28(v7, v4);
      v28(v11, v4);
      sub_1A40E5BE8(v16, &unk_1EB12AF40, MEMORY[0x1E6969B50]);
      if ((v27 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }

    v24 = (*(v19 + 8))(v11, v4);
LABEL_8:
    sub_1A40E5AAC(v16, &qword_1EB131BF0, &unk_1EB12AF40, MEMORY[0x1E6969B50], v24);
    goto LABEL_9;
  }

  if (v23(&v16[v21], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1A40E5BE8(v16, &unk_1EB12AF40, MEMORY[0x1E6969B50]);
LABEL_12:
  v29 = v37;
  v30 = v38;
  v31 = *(v38 + 28);
  v32 = v36;
  v33 = *(v36 + v31);
  v34 = *(v37 + v31);
  if (v33)
  {
    if (v34 && (sub_1A3F8D3B4(v33, v34) & 1) != 0)
    {
      goto LABEL_17;
    }
  }

  else if (!v34)
  {
LABEL_17:
    v25 = MEMORY[0x1A58FC7A0](v32 + *(v30 + 32), v29 + *(v30 + 32));
    return v25 & 1;
  }

LABEL_9:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_1A40E41B4(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = a3;
  v30 = a2;
  sub_1A40E45CC(0, &qword_1EB131C00, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v28 - v5;
  v6 = sub_1A52413E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A52414C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D9C6F4(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10, v15);
  v18 = MEMORY[0x1E6969B50];
  sub_1A40E47F0(&qword_1EB12AF68, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
  sub_1A524C914();
  sub_1A40E47F0(&qword_1EB12AF60, v18, MEMORY[0x1E6969B88]);
  v19 = (v7 + 8);
  while (1)
  {
    sub_1A524D034();
    sub_1A40E47F0(&qword_1EB12AF80, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v20 = sub_1A524C594();
    (*v19)(v9, v6);
    if (v20)
    {
      break;
    }

    v21 = sub_1A524D0C4();
    v23 = *v22;
    v21(v31, 0);
    sub_1A524D044();
    v24 = [v32 itemChangesInSection_];
    v25 = v29;
    sub_1A40DEBE4(v24, v29);
    v26 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
    (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
    sub_1A40DEE38(v25, v23);
  }

  return sub_1A40E4AA8(v17, sub_1A3D9C6F4);
}

void sub_1A40E45CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A40E4630(uint64_t a1)
{
  if (!qword_1EB131AF0)
  {
    type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB131AF0);
    }
  }
}

uint64_t sub_1A40E469C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A40E45CC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A40E471C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A40E45CC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A40E479C()
{
  result = qword_1EB1A6C38;
  if (!qword_1EB1A6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1A6C38);
  }

  return result;
}

uint64_t sub_1A40E47F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A40E4838(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A3DB4E34(255, &qword_1EB126E90, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A40E48BC()
{
  result = qword_1EB1A6C40;
  if (!qword_1EB1A6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1A6C40);
  }

  return result;
}

unint64_t sub_1A40E4910()
{
  result = qword_1EB131B40;
  if (!qword_1EB131B40)
  {
    sub_1A40E5CBC(255, &qword_1EB131B38, MEMORY[0x1E69E5E28]);
    sub_1A40E47F0(&qword_1EB131B30, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes, &protocol conformance descriptor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131B40);
  }

  return result;
}

unint64_t sub_1A40E49DC()
{
  result = qword_1EB131B58;
  if (!qword_1EB131B58)
  {
    sub_1A40E5CBC(255, &qword_1EB131B38, MEMORY[0x1E69E5E28]);
    sub_1A40E47F0(&qword_1EB131B50, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes, &protocol conformance descriptor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131B58);
  }

  return result;
}

uint64_t sub_1A40E4AA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A40E4B08()
{
  result = qword_1EB1A6C48[0];
  if (!qword_1EB1A6C48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1A6C48);
  }

  return result;
}

void sub_1A40E4B5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A40E4BC4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A40E45CC(255, &qword_1EB131B68, type metadata accessor for OneUpSharePlayAssetMetadata, MEMORY[0x1E69E62F8]);
    sub_1A40E47F0(a2, type metadata accessor for OneUpSharePlayAssetMetadata, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A40E4C8C()
{
  result = qword_1EB131BA8;
  if (!qword_1EB131BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131BA8);
  }

  return result;
}

unint64_t sub_1A40E4CE0(void *a1)
{
  a1[1] = sub_1A40E4D18();
  a1[2] = sub_1A40E4D6C();
  result = sub_1A40E4DC0();
  a1[3] = result;
  return result;
}

unint64_t sub_1A40E4D18()
{
  result = qword_1EB131BB0;
  if (!qword_1EB131BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131BB0);
  }

  return result;
}

unint64_t sub_1A40E4D6C()
{
  result = qword_1EB131BB8;
  if (!qword_1EB131BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131BB8);
  }

  return result;
}

unint64_t sub_1A40E4DC0()
{
  result = qword_1EB131BC0;
  if (!qword_1EB131BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131BC0);
  }

  return result;
}

uint64_t sub_1A40E4E14(void *a1)
{
  a1[1] = sub_1A40E47F0(&qword_1EB131BC8, type metadata accessor for OneUpSharePlayDataSourceMessagePayload, &protocol conformance descriptor for OneUpSharePlayDataSourceMessagePayload);
  a1[2] = sub_1A40E47F0(&qword_1EB131BD0, type metadata accessor for OneUpSharePlayDataSourceMessagePayload, &protocol conformance descriptor for OneUpSharePlayDataSourceMessagePayload);
  result = sub_1A40E47F0(&qword_1EB131BD8, type metadata accessor for OneUpSharePlayDataSourceMessagePayload, &protocol conformance descriptor for OneUpSharePlayDataSourceMessagePayload);
  a1[3] = result;
  return result;
}

void sub_1A40E4F08(uint64_t a1)
{
  sub_1A40E45CC(319, &qword_1EB131B68, type metadata accessor for OneUpSharePlayAssetMetadata, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1A40E45CC(319, &qword_1EB143820, type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A40E5024(uint64_t a1)
{
  type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(319);
  if (v1 <= 0x3F)
  {
    sub_1A40E5CBC(319, &qword_1EB131B38, MEMORY[0x1E69E5E28]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A40E50FC(uint64_t a1)
{
  sub_1A52414C4();
  if (v1 <= 0x3F)
  {
    sub_1A40E45CC(319, &unk_1EB12AF40, MEMORY[0x1E6969B50], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A40E51CC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A40E51CC(uint64_t a1)
{
  if (!qword_1EB131BE0)
  {
    sub_1A3DB4E34(255, &qword_1EB126E90, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131BE0);
    }
  }
}

unint64_t sub_1A40E528C()
{
  result = qword_1EB1A7680[0];
  if (!qword_1EB1A7680[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1A7680);
  }

  return result;
}

unint64_t sub_1A40E52E4()
{
  result = qword_1EB1A7890[0];
  if (!qword_1EB1A7890[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1A7890);
  }

  return result;
}

unint64_t sub_1A40E533C()
{
  result = qword_1EB1A7AA0[0];
  if (!qword_1EB1A7AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1A7AA0);
  }

  return result;
}

unint64_t sub_1A40E5394()
{
  result = qword_1EB1A7BB0;
  if (!qword_1EB1A7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1A7BB0);
  }

  return result;
}

unint64_t sub_1A40E53EC()
{
  result = qword_1EB1A7BB8[0];
  if (!qword_1EB1A7BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1A7BB8);
  }

  return result;
}

unint64_t sub_1A40E5444()
{
  result = qword_1EB1A7C40;
  if (!qword_1EB1A7C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1A7C40);
  }

  return result;
}

unint64_t sub_1A40E549C()
{
  result = qword_1EB1A7C48[0];
  if (!qword_1EB1A7C48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1A7C48);
  }

  return result;
}

unint64_t sub_1A40E54F4()
{
  result = qword_1EB1A7CD0;
  if (!qword_1EB1A7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1A7CD0);
  }

  return result;
}

unint64_t sub_1A40E554C()
{
  result = qword_1EB1A7CD8[0];
  if (!qword_1EB1A7CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1A7CD8);
  }

  return result;
}

unint64_t sub_1A40E55A4()
{
  result = qword_1EB1A7D60;
  if (!qword_1EB1A7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1A7D60);
  }

  return result;
}

unint64_t sub_1A40E55FC()
{
  result = qword_1EB1A7D68[0];
  if (!qword_1EB1A7D68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1A7D68);
  }

  return result;
}

uint64_t sub_1A40E5650(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496465766F6D6572 && a2 == 0xEE0073657865646ELL;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465747265736E69 && a2 == 0xEF73657865646E49 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496F547365766F6DLL && a2 == 0xEE0073657865646ELL || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A53C75A0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x496465676E616863 && a2 == 0xEE0073657865646ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1A40E581C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001A53C75C0 == a2;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A53C75E0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x436E6F6974636573 && a2 == 0xEE007365676E6168 || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A53C7600 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A40E5990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644974736F68 && a2 == 0xEE00726569666974;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737465737361 && a2 == 0xE600000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365676E616863 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A40E5AAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), double a5)
{
  sub_1A40E5B70(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A40E5B08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A40E5B70(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A40E45CC(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A40E5BE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A40E45CC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A40E5C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A40E5CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(255);
    v7 = a3(a1, MEMORY[0x1E69E6530], v6, MEMORY[0x1E69E6540]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A40E5D2C(uint64_t a1)
{
  if (!qword_1EB131C10)
  {
    type metadata accessor for OneUpSharePlayDataSourceMessagePayload.DataSourceChanges.Changes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB131C10);
    }
  }
}

uint64_t sub_1A40E5D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *static GenerativeStoryAnimationTraitsDataSource.elect(traits:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1A40E6944(0, &qword_1EB124C98, MEMORY[0x1E69C0F88], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v85 = &v82 - v4;
  v93 = sub_1A52446D4();
  v84 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v99 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1A52447B4();
  v6 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v97 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v82 - v9;
  sub_1A40E6944(0, &qword_1EB124CA8, MEMORY[0x1E69C0EF0], v2);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v83 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v82 - v13;
  v14 = sub_1A5244534();
  MEMORY[0x1EEE9AC00](v14);
  v98 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v94 = &v82 - v19;
  v20 = *(a1 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  v82 = v18;
  if (v20)
  {
    v22 = a1 + 32;
    v23 = (v18 + 56);
    v91 = (v18 + 32);
    v90 = *MEMORY[0x1E69C0FD0];
    v89 = (v6 + 104);
    v88 = v6 + 8;
    v86 = (v18 + 8);
    v92 = v14;
    v87 = (v18 + 56);
    v24 = (v6 + 8);
    do
    {
      sub_1A3C341C8(v22, &v102);
      __swift_project_boxed_opaque_existential_1(&v102, v103);
      v25 = sub_1A5245654();
      v27 = v26;

      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        sub_1A3C341C8(&v102, v101);
        sub_1A40E69A8();
        v29 = swift_dynamicCast();
        v30 = *v23;
        if (v29)
        {
          v31 = v100;
          v30(v100, 0, 1, v14);
          v32 = v94;
          (*v91)(v94, v31, v14);
          v33 = v96;
          sub_1A5244514();
          v34 = v97;
          v35 = v21;
          v36 = v95;
          (*v89)(v97, v90, v95);
          v37 = sub_1A52447A4();
          v38 = *v24;
          (*v24)(v34, v36);
          v39 = v33;
          v14 = v92;
          v40 = v36;
          v21 = v35;
          v23 = v87;
          v38(v39, v40);
          (*v86)(v32, v14);
          if (v37)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v41 = v100;
          v30(v100, 1, 1, v14);
          sub_1A40E8048(v41, &qword_1EB124CA8, MEMORY[0x1E69C0EF0]);
        }

        __swift_project_boxed_opaque_existential_1(&v102, v103);
        v42 = *(sub_1A5245644() + 16);

        if (v42)
        {
LABEL_13:
          sub_1A3C34460(&v102, v101);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v104 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1A40E8028(0, *(v21 + 16) + 1, 1);
            v21 = v104;
          }

          v45 = *(v21 + 16);
          v44 = *(v21 + 24);
          if (v45 >= v44 >> 1)
          {
            sub_1A40E8028((v44 > 1), v45 + 1, 1);
            v21 = v104;
          }

          *(v21 + 16) = v45 + 1;
          sub_1A3C34460(v101, v21 + 40 * v45 + 32);
          goto LABEL_4;
        }
      }

      __swift_destroy_boxed_opaque_existential_0(&v102);
LABEL_4:
      v22 += 40;
      --v20;
    }

    while (v20);
  }

  v100 = v21;
  v104 = MEMORY[0x1E69E7CC0];
  sub_1A3C56110(0, v17);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = [ObjCClassFromMetadata sharedInstance];
  v48 = [v47 shouldUseGlobalTraitsForLoadingAnimation];

  if (v48)
  {
    v97 = ObjCClassFromMetadata;
    v50 = *(v100 + 2);
    if (v50)
    {
      v51 = (v100 + 32);
      v52 = (v82 + 56);
      v53 = (v82 + 48);
      v54 = (v82 + 32);
      v55 = MEMORY[0x1E69E7CC0];
      v56 = v83;
      v57 = (v82 + 32);
      do
      {
        sub_1A3C341C8(v51, &v102);
        sub_1A3C34460(&v102, v101);
        sub_1A40E69A8();
        v58 = swift_dynamicCast();
        (*v52)(v56, v58 ^ 1u, 1, v14);
        if ((*v53)(v56, 1, v14) == 1)
        {
          sub_1A40E8048(v56, &qword_1EB124CA8, MEMORY[0x1E69C0EF0]);
        }

        else
        {
          v59 = *v54;
          (*v54)(v98, v56, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = sub_1A40E7E34(0, *(v55 + 2) + 1, 1, v55, &unk_1EB120310, MEMORY[0x1E69C0EF0], MEMORY[0x1E69C0EF0]);
          }

          v61 = *(v55 + 2);
          v60 = *(v55 + 3);
          if (v61 >= v60 >> 1)
          {
            v55 = sub_1A40E7E34((v60 > 1), v61 + 1, 1, v55, &unk_1EB120310, MEMORY[0x1E69C0EF0], MEMORY[0x1E69C0EF0]);
          }

          *(v55 + 2) = v61 + 1;
          v54 = v57;
          v59(&v55[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v61], v98, v14);
          v56 = v83;
        }

        v51 += 40;
        --v50;
      }

      while (v50);
    }

    else
    {
      v55 = MEMORY[0x1E69E7CC0];
    }

    v62 = sub_1A40E83B4(v55, v49);

    sub_1A40E6A84(v62, v63);
    ObjCClassFromMetadata = v97;
  }

  v64 = [ObjCClassFromMetadata sharedInstance];
  v65 = [v64 shouldUsePersonalTraitsForLoadingAnimation];

  v66 = v93;
  if (v65)
  {
    v67 = *(v100 + 2);
    if (v67)
    {
      v68 = (v100 + 32);
      v69 = (v84 + 56);
      v70 = (v84 + 48);
      v71 = (v84 + 32);
      v72 = MEMORY[0x1E69E7CC0];
      v73 = v85;
      do
      {
        sub_1A3C341C8(v68, &v102);
        sub_1A3C34460(&v102, v101);
        sub_1A40E69A8();
        v74 = swift_dynamicCast();
        (*v69)(v73, v74 ^ 1u, 1, v66);
        if ((*v70)(v73, 1, v66) == 1)
        {
          sub_1A40E8048(v73, &qword_1EB124C98, MEMORY[0x1E69C0F88]);
        }

        else
        {
          v75 = *v71;
          (*v71)(v99, v73, v66);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v72 = sub_1A40E7E34(0, *(v72 + 2) + 1, 1, v72, &qword_1EB131C18, MEMORY[0x1E69C0F88], MEMORY[0x1E69C0F88]);
          }

          v77 = *(v72 + 2);
          v76 = *(v72 + 3);
          if (v77 >= v76 >> 1)
          {
            v72 = sub_1A40E7E34((v76 > 1), v77 + 1, 1, v72, &qword_1EB131C18, MEMORY[0x1E69C0F88], MEMORY[0x1E69C0F88]);
          }

          *(v72 + 2) = v77 + 1;
          v66 = v93;
          v75(&v72[((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v77], v99, v93);
          v73 = v85;
        }

        v68 += 40;
        --v67;
      }

      while (v67);
    }

    else
    {

      v72 = MEMORY[0x1E69E7CC0];
    }

    v79 = sub_1A40E86A4(v72, v78);

    sub_1A40E6A84(v79, v80);
  }

  else
  {
  }

  sub_1A40E6A0C(&v104);
  return v104;
}

void sub_1A40E6944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A40E69A8()
{
  result = qword_1EB124BD0;
  if (!qword_1EB124BD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB124BD0);
  }

  return result;
}

void sub_1A40E6A0C(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_1A3E2AE98(v2, v3);
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v4;
  sub_1A40E6B74(v5);
  *a1 = v2;
}

void sub_1A40E6A84(unint64_t a1, __n128 a2)
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
  sub_1A40E8218(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1, v10);
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

void sub_1A40E6B74(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A524EA34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for GenerativeStoryAnimationText();
        v6 = sub_1A524CAC4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1A40E6EB4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1A40E6C78(0, v2, 1, a1);
  }
}

void sub_1A40E6C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = a1 - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = *(*v6 + 120);

      v10 = (v8)(v9);
      v11 = *(*v7 + 120);
      if (v10 == v11())
      {
        v12 = (*(*v6 + 96))();
        v14 = v13;
        if (v12 == (*(*v7 + 96))() && v14 == v15)
        {

LABEL_5:
          a3 = v25 + 1;
          v4 = v24 + 1;
          v5 = v23 - 1;
          if (v25 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

        v17 = sub_1A524EAB4();

        if ((v17 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v18 = v8();
        v19 = v11();

        if (v19 >= v18)
        {
          goto LABEL_5;
        }
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v20;
      --v4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1A40E6EB4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      v126 = v8;
      if (v7 < v6)
      {
        v124 = v6;
        v10 = *a3;
        v129 = v7;
        v11 = *(*a3 + 8 * v7);
        v119 = v9;
        v12 = *(*a3 + 8 * v9);
        v13 = *(*v11 + 120);

        v15 = (v13)(v14);
        v16 = *(*v12 + 120);
        if (v15 == v16())
        {
          v17 = (*(*v11 + 96))();
          v19 = v18;
          if (v17 == (*(*v12 + 96))() && v19 == v20)
          {

            v131 = 0;
          }

          else
          {
            v131 = sub_1A524EAB4();
          }
        }

        else
        {
          v22 = v13();
          v131 = v16() < v22;
        }

        v7 = v129;
        if (v5)
        {

          return;
        }

        v23 = v10 + 8 * v119 + 16;
        v24 = 8 * v119 + 8;
        v8 = v126;
        do
        {
          v28 = v24;
          v122 = v7++;
          if (v7 >= v124)
          {
            break;
          }

          v29 = *(v23 - 8);
          v30 = *v23;
          v31 = *(**v23 + 120);

          v33 = (v31)(v32);
          v34 = *(*v29 + 120);
          if (v33 == v34())
          {
            v35 = (*(*v30 + 96))();
            v37 = v36;
            v39 = v35 == (*(*v29 + 96))() && v37 == v38;
            v27 = v39 ? 0 : sub_1A524EAB4();
          }

          else
          {
            v25 = v31();
            v26 = v34();

            v27 = v26 < v25;
          }

          v23 += 8;
          v24 = v28 + 8;
          v8 = v126;
        }

        while (((v131 ^ v27) & 1) == 0);
        if (v131)
        {
          v9 = v119;
          if (v7 < v119)
          {
            goto LABEL_144;
          }

          if (v119 < v7)
          {
            v40 = v119;
            v41 = 8 * v119;
            v42 = v122;
            do
            {
              if (v40 != v42)
              {
                v44 = *a3;
                if (!*a3)
                {
                  goto LABEL_148;
                }

                v45 = *(v44 + v41);
                *(v44 + v41) = *(v44 + v28);
                *(v44 + v28) = v45;
              }

              ++v40;
              v28 -= 8;
              v41 += 8;
            }

            while (v40 < v42--);
          }
        }

        else
        {
          v9 = v119;
        }
      }

      v46 = a3[1];
      if (v7 >= v46)
      {
        goto LABEL_61;
      }

      if (__OFSUB__(v7, v9))
      {
        goto LABEL_141;
      }

      if (&v7[-v9] >= a4)
      {
        goto LABEL_61;
      }

      v47 = v9 + a4;
      if (__OFADD__(v9, a4))
      {
        goto LABEL_142;
      }

      if (v47 >= v46)
      {
        v47 = a3[1];
      }

      if (v47 < v9)
      {
LABEL_143:
        __break(1u);
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      if (v7 == v47)
      {
        goto LABEL_61;
      }

      v128 = v5;
      v132 = *a3;
      v48 = (*a3 + 8 * v7 - 8);
      v120 = v9;
      v121 = v47;
      v49 = v9 - v7;
LABEL_47:
      v130 = v7;
      v50 = *(v132 + 8 * v7);
      v123 = v49;
      v125 = v48;
      while (1)
      {
        v51 = *v48;
        v52 = *(*v50 + 120);

        v54 = (v52)(v53);
        v55 = *(*v51 + 120);
        if (v54 == v55())
        {
          break;
        }

        v62 = v52();
        v63 = v55();

        if (v63 >= v62)
        {
          goto LABEL_46;
        }

LABEL_56:
        if (!v132)
        {
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        v64 = *v48;
        v50 = v48[1];
        *v48 = v50;
        v48[1] = v64;
        --v48;
        if (__CFADD__(v49++, 1))
        {
          goto LABEL_46;
        }
      }

      v56 = (*(*v50 + 96))();
      v58 = v57;
      if (v56 != (*(*v51 + 96))() || v58 != v59)
      {
        break;
      }

LABEL_46:
      v7 = v130 + 1;
      v48 = v125 + 1;
      v49 = v123 - 1;
      if (v130 + 1 != v121)
      {
        goto LABEL_47;
      }

      v7 = v121;
      v5 = v128;
      v8 = v126;
      v9 = v120;
LABEL_61:
      if (v7 < v9)
      {
        goto LABEL_140;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1A3D8598C(0, *(v8 + 2) + 1, 1, v8);
      }

      v67 = *(v8 + 2);
      v66 = *(v8 + 3);
      v68 = v67 + 1;
      if (v67 >= v66 >> 1)
      {
        v8 = sub_1A3D8598C((v66 > 1), v67 + 1, 1, v8);
      }

      *(v8 + 2) = v68;
      v69 = &v8[16 * v67];
      *(v69 + 4) = v9;
      *(v69 + 5) = v7;
      v70 = *a1;
      if (!*a1)
      {
        goto LABEL_150;
      }

      if (v67)
      {
        while (2)
        {
          v71 = v68 - 1;
          if (v68 >= 4)
          {
            v76 = &v8[16 * v68 + 32];
            v77 = *(v76 - 64);
            v78 = *(v76 - 56);
            v82 = __OFSUB__(v78, v77);
            v79 = v78 - v77;
            if (v82)
            {
              goto LABEL_127;
            }

            v81 = *(v76 - 48);
            v80 = *(v76 - 40);
            v82 = __OFSUB__(v80, v81);
            v74 = v80 - v81;
            v75 = v82;
            if (v82)
            {
              goto LABEL_128;
            }

            v83 = &v8[16 * v68];
            v85 = *v83;
            v84 = *(v83 + 1);
            v82 = __OFSUB__(v84, v85);
            v86 = v84 - v85;
            if (v82)
            {
              goto LABEL_130;
            }

            v82 = __OFADD__(v74, v86);
            v87 = v74 + v86;
            if (v82)
            {
              goto LABEL_133;
            }

            if (v87 >= v79)
            {
              v105 = &v8[16 * v71 + 32];
              v107 = *v105;
              v106 = *(v105 + 1);
              v82 = __OFSUB__(v106, v107);
              v108 = v106 - v107;
              if (v82)
              {
                goto LABEL_137;
              }

              if (v74 < v108)
              {
                v71 = v68 - 2;
              }
            }

            else
            {
LABEL_81:
              if (v75)
              {
                goto LABEL_129;
              }

              v88 = &v8[16 * v68];
              v90 = *v88;
              v89 = *(v88 + 1);
              v91 = __OFSUB__(v89, v90);
              v92 = v89 - v90;
              v93 = v91;
              if (v91)
              {
                goto LABEL_132;
              }

              v94 = &v8[16 * v71 + 32];
              v96 = *v94;
              v95 = *(v94 + 1);
              v82 = __OFSUB__(v95, v96);
              v97 = v95 - v96;
              if (v82)
              {
                goto LABEL_135;
              }

              if (__OFADD__(v92, v97))
              {
                goto LABEL_136;
              }

              if (v92 + v97 < v74)
              {
                goto LABEL_95;
              }

              if (v74 < v97)
              {
                v71 = v68 - 2;
              }
            }
          }

          else
          {
            if (v68 == 3)
            {
              v72 = *(v8 + 4);
              v73 = *(v8 + 5);
              v82 = __OFSUB__(v73, v72);
              v74 = v73 - v72;
              v75 = v82;
              goto LABEL_81;
            }

            v98 = &v8[16 * v68];
            v100 = *v98;
            v99 = *(v98 + 1);
            v82 = __OFSUB__(v99, v100);
            v92 = v99 - v100;
            v93 = v82;
LABEL_95:
            if (v93)
            {
              goto LABEL_131;
            }

            v101 = &v8[16 * v71];
            v103 = *(v101 + 4);
            v102 = *(v101 + 5);
            v82 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v82)
            {
              goto LABEL_134;
            }

            if (v104 < v92)
            {
              break;
            }
          }

          v109 = v71 - 1;
          if (v71 - 1 >= v68)
          {
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
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
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
            goto LABEL_143;
          }

          if (!*a3)
          {
            goto LABEL_147;
          }

          v110 = *&v8[16 * v109 + 32];
          v111 = *&v8[16 * v71 + 40];
          sub_1A40E78E4((*a3 + 8 * v110), (*a3 + 8 * *&v8[16 * v71 + 32]), (*a3 + 8 * v111), v70);
          if (v5)
          {
            goto LABEL_122;
          }

          if (v111 < v110)
          {
            goto LABEL_125;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1A3D86884(v8);
          }

          if (v109 >= *(v8 + 2))
          {
            goto LABEL_126;
          }

          v112 = &v8[16 * v109];
          *(v112 + 4) = v110;
          *(v112 + 5) = v111;
          sub_1A3D867F8(v71);
          v68 = *(v8 + 2);
          if (v68 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_112;
      }
    }

    v61 = sub_1A524EAB4();

    if ((v61 & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_56;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_112:
  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_151;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_145:
    v8 = sub_1A3D86884(v8);
  }

  v113 = *(v8 + 2);
  if (v113 < 2)
  {
LABEL_122:

    return;
  }

  while (*a3)
  {
    v114 = *&v8[16 * v113];
    v115 = *&v8[16 * v113 + 24];
    sub_1A40E78E4((*a3 + 8 * v114), (*a3 + 8 * *&v8[16 * v113 + 16]), (*a3 + 8 * v115), v7);
    if (v5)
    {
      goto LABEL_122;
    }

    if (v115 < v114)
    {
      goto LABEL_138;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A3D86884(v8);
    }

    if (v113 - 2 >= *(v8 + 2))
    {
      goto LABEL_139;
    }

    v116 = &v8[16 * v113];
    *v116 = v114;
    *(v116 + 1) = v115;
    sub_1A3D867F8(v113 - 1);
    v113 = *(v8 + 2);
    if (v113 <= 1)
    {
      goto LABEL_122;
    }
  }

LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

uint64_t sub_1A40E78E4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v32 = __src;
    if (a4 != __src || &__src[8 * v11] <= a4)
    {
      memmove(a4, __src, 8 * v11);
    }

    v58 = &v4[8 * v11];
    if (v9 >= 8 && v32 > __dst)
    {
      v52 = v4;
LABEL_34:
      v33 = v32 - 8;
      v34 = v5;
      v35 = v58;
      v53 = v32 - 8;
      v55 = v32;
      do
      {
        v37 = *(v35 - 1);
        v35 -= 8;
        v36 = v37;
        v38 = *v33;
        v39 = *(*v37 + 120);

        v41 = (v39)(v40);
        v42 = *(*v38 + 120);
        if (v41 == v42())
        {
          v43 = (*(*v36 + 96))();
          v45 = v44;
          if (v43 == (*(*v38 + 96))() && v45 == v46)
          {
            v48 = 0;
          }

          else
          {
            v48 = sub_1A524EAB4();
          }

          v5 = v34 - 8;
          if (v48)
          {
LABEL_48:
            if (v34 != v55)
            {
              *v5 = *v53;
            }

            v4 = v52;
            if (v58 <= v52 || (v32 = v53, v53 <= __dst))
            {
              v32 = v53;
              goto LABEL_54;
            }

            goto LABEL_34;
          }
        }

        else
        {
          v49 = v39();
          v50 = v42();

          v5 = v34 - 8;
          if (v50 < v49)
          {
            goto LABEL_48;
          }
        }

        v33 = v53;
        if (v58 != v34)
        {
          *v5 = *v35;
        }

        v58 = v35;
        v34 = v5;
        v4 = v52;
      }

      while (v35 > v52);
      v58 = v35;
      v32 = v55;
    }
  }

  else
  {
    v13 = __dst;
    if (a4 != __dst || &__dst[8 * v8] <= a4)
    {
      memmove(a4, __dst, 8 * v8);
    }

    v58 = &v4[8 * v8];
    if (v6 >= 8 && __src < v5)
    {
      v14 = __src;
      do
      {
        v54 = v14;
        v56 = v13;
        v15 = *v14;
        v16 = *v4;
        v17 = *(**v14 + 120);

        v19 = (v17)(v18);
        v20 = *(*v16 + 120);
        if (v19 == v20())
        {
          v21 = v4;
          v22 = (*(*v15 + 96))();
          v24 = v23;
          v26 = v22 == (*(*v16 + 96))() && v24 == v25;
          if (v26)
          {

            v4 = v21;
            v28 = v56;
LABEL_23:
            v31 = v4;
            v26 = v28 == v4;
            v4 += 8;
            v14 = v54;
            if (v26)
            {
              goto LABEL_25;
            }

LABEL_24:
            *v28 = *v31;
            goto LABEL_25;
          }

          v27 = sub_1A524EAB4();

          v4 = v21;
          v28 = v56;
          if ((v27 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v29 = v17();
          v30 = v20();

          v28 = v56;
          if (v30 >= v29)
          {
            goto LABEL_23;
          }
        }

        v31 = v54;
        v14 = v54 + 8;
        if (v28 != v54)
        {
          goto LABEL_24;
        }

LABEL_25:
        v13 = v28 + 8;
      }

      while (v4 < v58 && v14 < v5);
    }

    v32 = v13;
  }

LABEL_54:
  if (v32 != v4 || v32 >= &v4[(v58 - v4 + (v58 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v32, v4, 8 * ((v58 - v4) / 8));
  }

  return 1;
}

void *sub_1A40E7E34(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A40E6944(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1A40E8028(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A40E80B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1A40E8048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A40E6944(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1A40E80B8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A40E6944(0, &qword_1EB1202E8, sub_1A40E69A8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A40E69A8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A40E8218(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1A524E2B4();
    a2 = v13;
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
    if (v6)
    {
      v8 = a2;
      result = sub_1A524E2B4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1A40E6944(0, &qword_1EB131C20, type metadata accessor for GenerativeStoryAnimationText, MEMORY[0x1E69E62F8]);
          sub_1A40E88E8();
          for (i = 0; i != v7; ++i)
          {
            v10 = sub_1A3E5C4E4(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
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
        type metadata accessor for GenerativeStoryAnimationText();
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

uint64_t sub_1A40E83B4(uint64_t a1, double a2)
{
  v3 = sub_1A5244534();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = v29 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v29[0] = v6;
    v11 = 0;
    v14 = *(v4 + 16);
    v12 = v4 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    v30 = (v12 - 8);
    v17 = MEMORY[0x1E69E7CD0];
    v31 = v14;
    v32 = v16;
    v29[1] = v12;
    v29[2] = v3;
    v14(v9, v15, v3, v7);
    while (1)
    {
      v20 = sub_1A5244504();
      v34 = v17;
      if (*(v20 + 16))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      ++v11;
      v18 = *v30;
      (*v30)(v9, v3);
      if (v11 == v10)
      {
        break;
      }

      v13(v9, v15 + v32 * v11, v3, v19);
    }

    v21 = *(v17 + 16);

    v22 = v21;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v29[3] = type metadata accessor for GenerativeStoryAnimationText();
    if (v22 <= 1.0)
    {
      v22 = 1.0;
    }

    v23 = v29[0];
    do
    {
      (v13)(v23, v15, v3);
      v24 = sub_1A5244524();
      v26 = v25;
      v27 = *(sub_1A5244504() + 16);

      GenerativeStoryAnimationText.__allocating_init(word:confidence:)(v24, v26, v27 / v22 * 0.8);
      v18(v23, v3);
      sub_1A524E514();
      sub_1A524E564();
      v13 = v31;
      sub_1A524E574();
      sub_1A524E524();
      v15 += v32;
      --v10;
    }

    while (v10);
    return v33;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1A40E86A4(uint64_t a1, double a2)
{
  v3 = sub_1A52446D4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v28 = *(v13 + 56);
    v29 = v14;
    v16 = (v13 - 8);
    v17 = 0.0;
    v18 = v15;
    v19 = v11;
    do
    {
      v29(v10, v18, v3, v8);
      sub_1A52446B4();
      v21 = v20;
      v22 = *v16;
      (*v16)(v10, v3);
      if (v17 <= v21)
      {
        v17 = v21;
      }

      v18 += v28;
      --v19;
    }

    while (v19);
    v30 = MEMORY[0x1E69E7CC0];
    sub_1A524E554();
    v27 = type metadata accessor for GenerativeStoryAnimationText();
    do
    {
      (v29)(v6, v15, v3);
      sub_1A52446B4();
      if (v17 <= 0.0)
      {
        v24 = v23;
      }

      else
      {
        v24 = v23 / v17;
      }

      v25 = sub_1A52446C4();
      GenerativeStoryAnimationText.__allocating_init(word:confidence:)(v25, v26, v24);
      v22(v6, v3);
      sub_1A524E514();
      sub_1A524E564();
      sub_1A524E574();
      sub_1A524E524();
      v15 += v28;
      --v11;
    }

    while (v11);
    return v30;
  }

  return result;
}

unint64_t sub_1A40E88E8()
{
  result = qword_1EB131C28;
  if (!qword_1EB131C28)
  {
    sub_1A40E6944(255, &qword_1EB131C20, type metadata accessor for GenerativeStoryAnimationText, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131C28);
  }

  return result;
}

void LemonadeSharedAlbumsActivityCellSpecs.init()(uint64_t a1@<X8>)
{
  v3 = sub_1A524B394();
  MEMORY[0x1EEE9AC00](v3);
  *a1 = xmmword_1A5319BB0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  (*(v5 + 104))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8]);
  *(a1 + 32) = sub_1A524B4B4();
  *(a1 + 40) = 0x4028000000000000;
  if (qword_1EB1A7DF0 != -1)
  {
    swift_once();
  }

  *(a1 + 48) = qword_1EB1A7DF8;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

UIImage *sub_1A40E8C64(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = sub_1A524C634();
  v5 = [v3 px:v4 imageNamed:?];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_1A524C634();
  v7 = [v3 px:v6 imageNamed:?];

  if (v7)
  {
    v8 = [v5 px:a1 tintedImageWithColor:?];
    v9 = [objc_opt_self() whiteColor];
    v10 = [v7 px:v9 tintedImageWithColor:?];

    v13.width = 23.0;
    v13.height = 23.0;
    UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
    [v8 drawAtPoint:17 blendMode:0.0 alpha:{0.0, 1.0}];
    [v10 drawAtPoint:20 blendMode:0.0 alpha:{0.0, 1.0}];
    v11 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    v5 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1A40E8E88(uint64_t a1, SEL *a2, unint64_t *a3)
{
  sub_1A40E9154(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  v6 = *MEMORY[0x1E69DB650];
  *(inited + 32) = *MEMORY[0x1E69DB650];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 *a2];
  *(inited + 64) = sub_1A40E91AC(0, v10);
  *(inited + 40) = v9;
  v11 = sub_1A3C8BCC0(inited);
  swift_setDeallocating();
  result = sub_1A3FE17B0(inited + 32);
  *a3 = v11;
  return result;
}

uint64_t sub_1A40E8F5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A40E8FA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A40E9034(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A40E9054(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1A40E90C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A40E90E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 144) = v3;
  return result;
}

void sub_1A40E9154(uint64_t a1)
{
  if (!qword_1EB120260)
  {
    sub_1A3C8BC40(255);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120260);
    }
  }
}

unint64_t sub_1A40E91AC(uint64_t a1, uint64_t a2)
{
  result = qword_1EB1205C0;
  if (!qword_1EB1205C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1205C0);
  }

  return result;
}

id sub_1A40E91F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for PXPhotoLibraryDefaultsChangeObserverExtended(a1, a2);
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC12PhotosUICoreP33_25E89F8648EB33DB900A566ECE80EAE544PXPhotoLibraryDefaultsChangeObserverExtended_block];
  *v9 = a1;
  *(v9 + 1) = a2;
  v12.receiver = v8;
  v12.super_class = v7;

  v10 = objc_msgSendSuper2(&v12, sel_init);
  result = [v3 registerChangeObserver:v10 context:{0, v12.receiver, v12.super_class}];
  a3[3] = v7;
  *a3 = v10;
  return result;
}

id sub_1A40E9370(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXPhotoLibraryDefaultsChangeObserverExtended(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A40E93E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A40E9448@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = sub_1A52497E4();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0);
  v6 = v5 - 8;
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v39 = v7;
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1A5249234();
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40E9B28(0);
  v11 = v10;
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40EB298(0);
  v44 = v14;
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40EB368(0);
  v45 = v17;
  v43 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524A044();
  v50 = v1;
  sub_1A40E9BBC(0);
  sub_1A40EA6E0(&qword_1EB131EE0, sub_1A40E9BBC, MEMORY[0x1E6981870]);
  sub_1A5247D14();
  v20 = v1 + *(v6 + 40);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    LOBYTE(v51) = *v20;
  }

  else
  {

    v22 = sub_1A524D254();
    v23 = sub_1A524A014();
    sub_1A5246DF4(v22, &dword_1A3C1C000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v21, 0);
    (*(v36 + 8))(v9, v37);
    LOBYTE(v21) = v51;
  }

  v55[0] = v21;
  v24 = v2;
  v25 = v40;
  sub_1A40F1258(v24, v40, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
  v26 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v27 = swift_allocObject();
  sub_1A40F0DAC(v25, v27 + v26, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
  v28 = sub_1A40EA6E0(&qword_1EB131EF0, sub_1A40E9B28, MEMORY[0x1E697BE60]);
  v29 = sub_1A3F17D14();
  sub_1A524B154();

  (*(v41 + 8))(v13, v11);
  v30 = v46;
  sub_1A52497D4();
  v31 = sub_1A524A044();
  sub_1A524A034();
  sub_1A524A034();
  if (sub_1A524A034() != v31)
  {
    sub_1A524A034();
  }

  v51 = v11;
  v52 = &type metadata for LemonadeHorizontalSizeClass;
  v53 = v28;
  v54 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v44;
  sub_1A524ADF4();
  (*(v47 + 8))(v30, v48);
  (*(v42 + 8))(v16, v33);
  v51 = v33;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = v45;
  sub_1A524AE34();
  return (*(v43 + 8))(v19, v34);
}

uint64_t type metadata accessor for LemonadeBookmarksSeeAllPopoverView(uint64_t a1)
{
  result = qword_1EB17AEC0;
  if (!qword_1EB17AEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A40E9B28(uint64_t a1)
{
  if (!qword_1EB131D10)
  {
    sub_1A40E9BBC(255);
    sub_1A40EA6E0(&qword_1EB131EE0, sub_1A40E9BBC, MEMORY[0x1E6981870]);
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131D10);
    }
  }
}

void sub_1A40E9C40(uint64_t a1)
{
  if (!qword_1EB131D28)
  {
    sub_1A40E9CD4(255);
    sub_1A40EA6E0(&qword_1EB131EC8, sub_1A40E9CD4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524A2B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131D28);
    }
  }
}

void sub_1A40E9D08(uint64_t a1)
{
  if (!qword_1EB131D38)
  {
    sub_1A40E9D90(255);
    sub_1A40EAEE4(255);
    sub_1A40EAFD8(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB131D38);
    }
  }
}

void sub_1A40E9D90(uint64_t a1)
{
  if (!qword_1EB131D40)
  {
    sub_1A3C2DE14(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1A40E9E48(255);
    sub_1A4035564();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131D40);
    }
  }
}

void sub_1A40E9F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A40E9FC0(uint64_t a1)
{
  if (!qword_1EB131D70)
  {
    sub_1A40EA054(255);
    sub_1A40EA6E0(&qword_1EB131E28, sub_1A40EA054, MEMORY[0x1E6981F48]);
    v1 = sub_1A524BA04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131D70);
    }
  }
}

void sub_1A40EA088(uint64_t a1)
{
  if (!qword_1EB131D80)
  {
    sub_1A40EF0C0(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A40EA14C(255);
    sub_1A40EA434(255);
    sub_1A40EA8C8(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB131D80);
    }
  }
}

void sub_1A40EA16C(uint64_t a1)
{
  if (!qword_1EB131D90)
  {
    sub_1A40EA1F0(255);
    sub_1A40EA284();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB131D90);
    }
  }
}

void sub_1A40EA1F0(uint64_t a1)
{
  if (!qword_1EB131D98)
  {
    sub_1A40EF0C0(255, &qword_1EB131DA0, MEMORY[0x1E6981748], MEMORY[0x1E697C868], MEMORY[0x1E697E830]);
    sub_1A3F32A14(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131D98);
    }
  }
}

unint64_t sub_1A40EA284()
{
  result = qword_1EB131DA8;
  if (!qword_1EB131DA8)
  {
    sub_1A40EA1F0(255);
    sub_1A40EA334();
    sub_1A40EA6E0(&unk_1EB1277E0, sub_1A3F32A14, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131DA8);
  }

  return result;
}

unint64_t sub_1A40EA334()
{
  result = qword_1EB131DB0;
  if (!qword_1EB131DB0)
  {
    sub_1A40EF0C0(255, &qword_1EB131DA0, MEMORY[0x1E6981748], MEMORY[0x1E697C868], MEMORY[0x1E697E830]);
    sub_1A40EA3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131DB0);
  }

  return result;
}

unint64_t sub_1A40EA3E0()
{
  result = qword_1EB131DB8;
  if (!qword_1EB131DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131DB8);
  }

  return result;
}

void sub_1A40EA434(uint64_t a1)
{
  if (!qword_1EB131DC0)
  {
    sub_1A40EB05C(255, &qword_1EB131DC8, sub_1A40EA4D8, sub_1A40EA728, MEMORY[0x1E6981860]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131DC0);
    }
  }
}

void sub_1A40EA4F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A40EAA78(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A40EA5B8(uint64_t a1)
{
  if (!qword_1EB131DE0)
  {
    sub_1A40EA64C(255);
    sub_1A40EA6E0(&qword_1EB13AE00, sub_1A40EA64C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131DE0);
    }
  }
}

void sub_1A40EA680()
{
  if (!qword_1EB131DE8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB131DE8);
    }
  }
}

uint64_t sub_1A40EA6E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A40EA728()
{
  result = qword_1EB131DF0;
  if (!qword_1EB131DF0)
  {
    sub_1A40EA4D8(255);
    sub_1A40EA7C8();
    sub_1A40EA878(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131DF0);
  }

  return result;
}

unint64_t sub_1A40EA7C8()
{
  result = qword_1EB131DF8;
  if (!qword_1EB131DF8)
  {
    sub_1A40EA57C(255);
    sub_1A40EA6E0(&unk_1EB13AE20, sub_1A40EA5B8, MEMORY[0x1E69817F8]);
    sub_1A40EA3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131DF8);
  }

  return result;
}

uint64_t sub_1A40EA878(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A40EAA78(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A40EA8FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A40EA9AC(uint64_t a1)
{
  if (!qword_1EB131E10)
  {
    sub_1A40E93E4(255, &qword_1EB131E18, sub_1A40EAA3C, MEMORY[0x1E69815F8]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131E10);
    }
  }
}

void sub_1A40EAA78(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3C2DE14(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A40EAAE4(uint64_t a1)
{
  if (!qword_1EB131E30)
  {
    sub_1A40EF0C0(255, &qword_1EB131E38, MEMORY[0x1E69815C0], MEMORY[0x1E6981580], type metadata accessor for LemonadeDetailsNavigationButton);
    sub_1A40EAB74();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131E30);
    }
  }
}

unint64_t sub_1A40EAB74()
{
  result = qword_1EB131E40;
  if (!qword_1EB131E40)
  {
    sub_1A40EF0C0(255, &qword_1EB131E38, MEMORY[0x1E69815C0], MEMORY[0x1E6981580], type metadata accessor for LemonadeDetailsNavigationButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131E40);
  }

  return result;
}

void sub_1A40EAC68(uint64_t a1)
{
  if (!qword_1EB131E58)
  {
    sub_1A40EACFC(255);
    sub_1A40EA6E0(&qword_1EB131E90, sub_1A40EACFC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524BA04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131E58);
    }
  }
}

void sub_1A40EAD64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A40EADE0(uint64_t a1)
{
  if (!qword_1EB131E70)
  {
    sub_1A40EF0C0(255, &qword_1EB131E78, MEMORY[0x1E69815C0], MEMORY[0x1E697C970], MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131E70);
    }
  }
}

void sub_1A40EAF5C(uint64_t a1)
{
  if (!qword_1EB1248E0)
  {
    sub_1A3D6F4A4();
    v1 = sub_1A5247D54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1248E0);
    }
  }
}

void sub_1A40EB05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A40EB0DC(uint64_t a1)
{
  if (!qword_1EB131EB8)
  {
    sub_1A40EF0C0(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131EB8);
    }
  }
}

unint64_t sub_1A40EB168()
{
  result = qword_1EB131EC0;
  if (!qword_1EB131EC0)
  {
    sub_1A40EB0DC(255);
    sub_1A3E003FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131EC0);
  }

  return result;
}

unint64_t sub_1A40EB1E8()
{
  result = qword_1EB131ED0;
  if (!qword_1EB131ED0)
  {
    sub_1A40E9C04(255);
    sub_1A40EA6E0(&qword_1EB131ED8, sub_1A40E9C40, MEMORY[0x1E697CD00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131ED0);
  }

  return result;
}

void sub_1A40EB298(uint64_t a1)
{
  if (!qword_1EB131EE8)
  {
    sub_1A40E9B28(255);
    sub_1A40EA6E0(&qword_1EB131EF0, sub_1A40E9B28, MEMORY[0x1E697BE60]);
    sub_1A3F17D14();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB131EE8);
    }
  }
}

void sub_1A40EB368(uint64_t a1)
{
  if (!qword_1EB131EF8)
  {
    sub_1A40EB298(255);
    sub_1A40E9B28(255);
    sub_1A40EA6E0(&qword_1EB131EF0, sub_1A40E9B28, MEMORY[0x1E697BE60]);
    sub_1A3F17D14();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB131EF8);
    }
  }
}

void sub_1A40EB468(uint64_t a1@<X8>)
{
  v4 = *(v2 + 16);
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A40F0860(0, &qword_1EB131F98, sub_1A40E9C04);
  v6 = a1 + *(v5 + 44);
  *v6 = sub_1A524BC74();
  *(v6 + 8) = v7;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  sub_1A40F08C4(0);
  sub_1A40EB50C(v4, (v6 + *(v8 + 44)));
  sub_1A40E9C04(0);
  *(v6 + *(v9 + 36)) = 257;
}

void sub_1A40EB50C(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v3 = sub_1A5249234();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v62 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40EB014(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A40EAFD8(0);
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v61 - v13;
  v14 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40E9D90(0);
  v73 = *(v18 - 8);
  v74 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v78 = &v61 - v21;
  v22 = sub_1A5243164();
  v23 = *(v22 + 16);
  v71 = v7;
  if (v23)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v84 = v22;
  swift_getKeyPath();
  sub_1A40F1258(a1, &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
  v24 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v66 = v24 + v16;
  v25 = (v24 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_1A40F0DAC(v17, v26 + v24, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
  v27 = (v26 + v25);
  *v27 = 0;
  v27[1] = 0;
  sub_1A3C2DE14(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1A40E9E48(0);
  sub_1A4035564();
  sub_1A40F0A34(&qword_1EB131FB0, sub_1A40E9E48, sub_1A40F0AA4, MEMORY[0x1E6982090]);
  sub_1A524B9B4();
  v68 = sub_1A524B294();
  sub_1A524BC74();
  sub_1A52481F4();
  *(v90 + 6) = *(&v90[3] + 6);
  *(&v90[1] + 6) = *(&v90[4] + 6);
  *(&v90[2] + 6) = *(&v90[5] + 6);
  sub_1A3C2DE14(0, &qword_1EB12F500, MEMORY[0x1E6980D08], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v65 = xmmword_1A52FC9F0;
  *(inited + 16) = xmmword_1A52FC9F0;
  LOBYTE(v25) = sub_1A524A044();
  *(inited + 32) = v25;
  v29 = sub_1A524A024();
  *(inited + 33) = v29;
  v30 = sub_1A524A034();
  sub_1A524A034();
  if (sub_1A524A034() != v25)
  {
    v30 = sub_1A524A034();
  }

  sub_1A524A034();
  if (sub_1A524A034() != v29)
  {
    v30 = sub_1A524A034();
  }

  v31 = *(a1 + 8);
  v32 = *(a1 + 16);

  v67 = v30;
  if ((v32 & 1) == 0)
  {
    v33 = sub_1A524D254();
    v34 = sub_1A524A014();
    sub_1A5246DF4(v33, &dword_1A3C1C000, v34, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v35 = v62;
    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v31);
    (*(v63 + 8))(v35, v64);
    v31 = v84;
  }

  if (v31)
  {
    sub_1A40F1258(a1, v17, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
    v36 = swift_allocObject();
    sub_1A40F0DAC(v17, v36 + v24, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
    sub_1A40EB0DC(0);
    v38 = v37;
    v39 = sub_1A40EB168();
    v40 = v71;
    sub_1A472916C(v31, sub_1A40EE440, 0, 0, sub_1A40F0CE4, v36, v38, v71, v39);
    v41 = swift_initStackObject();
    *(v41 + 16) = v65;
    v42 = sub_1A524A044();
    *(v41 + 32) = v42;
    v43 = sub_1A524A024();
    *(v41 + 33) = v43;
    v44 = sub_1A524A034();
    sub_1A524A034();
    if (sub_1A524A034() != v42)
    {
      v44 = sub_1A524A034();
    }

    sub_1A524A034();
    if (sub_1A524A034() != v43)
    {
      v44 = sub_1A524A034();
    }

    v45 = v40;
    v46 = v69;
    sub_1A40F0DAC(v45, v69, sub_1A40EB014);
    *(v46 + *(v70 + 36)) = v44;
    v47 = v46;
    v48 = v72;
    sub_1A40F0DAC(v47, v72, sub_1A40EAFD8);
    v50 = v73;
    v49 = v74;
    v51 = *(v73 + 16);
    v52 = v77;
    v51(v77, v78, v74);
    v79 = v90[0];
    v80 = v90[1];
    v81[0] = v90[2];
    *(v81 + 14) = *(&v90[2] + 14);
    v53 = v75;
    sub_1A40F1258(v48, v75, sub_1A40EAFD8);
    v54 = v76;
    v51(v76, v52, v49);
    sub_1A40E9D08(0);
    v56 = &v54[*(v55 + 48)];
    v57 = v68;
    *&v82[0] = v68;
    WORD4(v82[0]) = 256;
    *(&v82[1] + 10) = v80;
    *(v82 + 10) = v79;
    *(&v82[2] + 10) = v81[0];
    *(&v82[3] + 1) = *(v81 + 14);
    LOBYTE(v52) = v67;
    v83 = v67;
    v56[64] = v67;
    v58 = v82[3];
    *(v56 + 2) = v82[2];
    *(v56 + 3) = v58;
    v59 = v82[1];
    *v56 = v82[0];
    *(v56 + 1) = v59;
    sub_1A40F1258(v53, &v54[*(v55 + 64)], sub_1A40EAFD8);
    sub_1A40F1258(v82, &v84, sub_1A40EAEE4);
    sub_1A40F0E14(v48, sub_1A40EAFD8);
    v60 = *(v50 + 8);
    v60(v78, v49);
    sub_1A40F0E14(v53, sub_1A40EAFD8);
    v84 = v57;
    v85 = 256;
    v86 = v79;
    v87 = v80;
    *v88 = v81[0];
    *&v88[14] = *(v81 + 14);
    v89 = v52;
    sub_1A40F0E14(&v84, sub_1A40EAEE4);
    v60(v77, v49);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A40EBE60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a4;
  v56 = a3;
  v66 = a5;
  sub_1A40E9E7C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1A5249234();
  v45[2] = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45[1] = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40EAE6C(0);
  v51 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v53 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v52 = v45 - v16;
  sub_1A40EAC2C(0);
  v63 = v17;
  v62 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v60 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40EABF8(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v65 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v64 = v45 - v22;
  sub_1A40E9FC0(0);
  v24 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v26 = v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40E9F18(0);
  v57 = v27;
  MEMORY[0x1EEE9AC00](v27);
  sub_1A40E9EE4(0);
  v58 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v61 = v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v67 = v45 - v32;
  v33 = a1[1];
  v34 = a2;
  v54 = *a1;
  *&v71 = v54;
  *(&v71 + 1) = v33;
  v55 = v33;
  v35 = sub_1A52431A4();
  if (v35)
  {
    v48 = v11;
    v49 = v9;
    v50 = v8;
    v36 = *(*v35 + 160);
    v47 = v35;
    v36(&v71);
    sub_1A3C34460(&v71, v68);
    v37 = v69;
    v38 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    v39 = (*(v38 + 56))(v37, v38);
    v41 = v40;
    v42 = v69;
    v43 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    (*(v43 + 88))(v42, v43);
    *v26 = 0;
    v26[8] = 1;
    sub_1A40ECCDC(v39, v41, v34, v68, &v26[*(v24 + 36)]);
  }

  return (*(v9 + 56))(v66, 1, 1, v8);
}

uint64_t sub_1A40EC9D0(uint64_t a1)
{
  v18 = sub_1A5249234();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E697BF90];
  sub_1A40E93E4(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0);
  sub_1A40F12C0(a1 + *(v13 + 28), v8, &unk_1EB128A60, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v18);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A40ECC7C()
{
  v1 = *(type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A40EC9D0(v2);
}

void sub_1A40ECCDC(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v26[23] = a5;
  v26[24] = a6;
  v26[15] = a4;
  v26[10] = a3;
  v26[27] = a7;
  sub_1A40EA8C8(0);
  v26[25] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v26[31] = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v26[26] = v26 - v10;
  v11 = sub_1A52486A4();
  v26[17] = *(v11 - 8);
  v26[18] = v11;
  MEMORY[0x1EEE9AC00](v11);
  v26[16] = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v26[29] = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524A274();
  v26[13] = *(v15 - 8);
  v26[14] = v15;
  MEMORY[0x1EEE9AC00](v15);
  v26[11] = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A5248544();
  v26[7] = *(v17 - 8);
  v26[8] = v17;
  MEMORY[0x1EEE9AC00](v17);
  sub_1A40EA1F0(0);
  MEMORY[0x1EEE9AC00](v18);
  sub_1A40EA16C(0);
  v26[12] = v19;
  v26[9] = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v26[5] = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40EA14C(0);
  v26[6] = v21 - 8;
  MEMORY[0x1EEE9AC00](v21 - 8);
  v26[30] = v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v26[28] = v26 - v25;
  sub_1A524BC74();
  sub_1A52481F4();
  v26[21] = v28;
  v26[22] = v26[123];
  v26[19] = v31;
  v26[20] = v30;
  v34 = 1;
  v33 = v27;
  v32 = v29;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40EDA70()
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A524A274();
  MEMORY[0x1EEE9AC00](v4);
  sub_1A5249314();
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40EDCF8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5249234();
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);

  if ((v14 & 1) == 0)
  {
    v15 = sub_1A524D254();
    v25 = v10;
    v16 = v7;
    v17 = a2;
    v18 = a3;
    v19 = v15;
    v20 = sub_1A524A014();
    v21 = v19;
    a3 = v18;
    a2 = v17;
    v7 = v16;
    v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1A5246DF4(v21, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v13);
    (*(v26 + 8))(v12, v25);
    v13 = *&v27[0];
  }

  if (v13)
  {
    sub_1A40F1258(a1, v9, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
    sub_1A3C341C8(a2, v27);
    v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v23 = swift_allocObject();
    sub_1A40F0DAC(v9, v23 + v22, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
    sub_1A3C34460(v27, v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
    sub_1A472916C(v13, sub_1A3F15F28, 0, 0, sub_1A40F0E74, v23, MEMORY[0x1E69815C0], a3, MEMORY[0x1E6981580]);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A40EDFD4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1A5248284();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0);
  sub_1A40F0F10(&unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697BF90], v7);
  sub_1A5248274();
  (*(v5 + 8))(v7, v4);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 112))(v8, v9);
  v10 = type metadata accessor for LemonadeNavigationDestination(0);
  return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
}

uint64_t sub_1A40EE164(void *a1)
{
  sub_1A40E9F54(0, &qword_1EB131FC0, sub_1A3F32994, &type metadata for LemonadeCollectionBookmarkCell.ThumbnailView, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v22 - v3;
  sub_1A3F32994(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if (sub_1A4838C90(v9, v10))
  {
    v11 = sub_1A524B544();
    sub_1A3EE213C(0);
    v13 = (v8 + *(v12 + 36));
    sub_1A3F32A14(0);
    v15 = *(v14 + 28);
    v16 = *MEMORY[0x1E69816C0];
    v17 = sub_1A524B5B4();
    (*(*(v17 - 8) + 104))(v13 + v15, v16, v17);
    *v13 = swift_getKeyPath();
    *v8 = v11;
    v18 = sub_1A524B4A4();
    KeyPath = swift_getKeyPath();
    v20 = (v8 + *(v6 + 36));
    *v20 = KeyPath;
    v20[1] = v18;
    sub_1A40F1258(v8, v4, sub_1A3F32994);
    swift_storeEnumTagMultiPayload();
    sub_1A3F373F8();
    sub_1A3F9515C();
    sub_1A5249744();
    return sub_1A40F0E14(v8, sub_1A3F32994);
  }

  else
  {
    sub_1A3C341C8(a1, v22);
    sub_1A3CA2CF0(v22, v23);
    sub_1A3F964BC(v23, v4);
    swift_storeEnumTagMultiPayload();
    sub_1A3F373F8();
    sub_1A3F9515C();
    sub_1A5249744();
    return sub_1A3F96518(v23);
  }
}

double sub_1A40EE440@<D0>(uint64_t a1@<X8>)
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524A274();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v39 = sub_1A3C38BD4(0xD000000000000024);
  *(&v39 + 1) = v9;
  sub_1A3D5F9DC();
  v10 = sub_1A524A464();
  v12 = v11;
  v14 = v13;
  v34[1] = v15;
  (*(v6 + 104))(v8, *MEMORY[0x1E6980F10], v5);
  v16 = sub_1A524A154();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  sub_1A524A1C4();
  sub_1A40F0E14(v4, sub_1A3E75D84);
  (*(v6 + 8))(v8, v5);
  v35 = sub_1A524A3C4();
  v18 = v17;
  LOBYTE(v5) = v19;
  v21 = v20;

  sub_1A3E04DF4(v10, v12, v14 & 1);

  LOBYTE(v6) = sub_1A524A0C4();
  sub_1A5247BC4();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v5) = v5 & 1;
  v37 = v5;
  v36 = 0;
  sub_1A524BC74();
  sub_1A5248AD4();
  *&v38[55] = v42;
  *&v38[71] = v43;
  *&v38[87] = v44;
  *&v38[103] = v45;
  *&v38[7] = v39;
  *&v38[23] = v40;
  *&v38[39] = v41;
  *a1 = v35;
  *(a1 + 8) = v18;
  *(a1 + 16) = v5;
  *(a1 + 24) = v21;
  *(a1 + 32) = v6;
  *(a1 + 40) = v23;
  *(a1 + 48) = v25;
  *(a1 + 56) = v27;
  *(a1 + 64) = v29;
  *(a1 + 72) = 0;
  v30 = *&v38[80];
  *(a1 + 137) = *&v38[64];
  *(a1 + 153) = v30;
  *(a1 + 169) = *&v38[96];
  *(a1 + 184) = *&v38[111];
  v31 = *&v38[16];
  *(a1 + 73) = *v38;
  *(a1 + 89) = v31;
  result = *&v38[32];
  v33 = *&v38[48];
  *(a1 + 105) = *&v38[32];
  *(a1 + 121) = v33;
  return result;
}

uint64_t sub_1A40EE7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  v3 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView(0);
  v4 = v3[7];
  *(a2 + v4) = swift_getKeyPath();
  v5 = MEMORY[0x1E697DCB8];
  sub_1A40E93E4(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[8];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = v3[9];
  *(a2 + v7) = swift_getKeyPath();
  sub_1A40E93E4(0, &qword_1EB128A50, MEMORY[0x1E697E730], v5);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A40EE918(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB124DC0)
  {
    type metadata accessor for LemonadeBookmarkItemListManager(255, a2);
    sub_1A40EEA04(255);
    sub_1A40EA6E0(&qword_1EB129738, type metadata accessor for LemonadeBookmarkItemListManager, &unk_1A53560A0);
    sub_1A40EA6E0(&qword_1EB129C68, sub_1A40EEA04, &unk_1A5368D50);
    v2 = sub_1A52431C4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB124DC0);
    }
  }
}

void sub_1A40EEA04(uint64_t a1)
{
  if (!qword_1EB129C60)
  {
    v2 = sub_1A40EEA6C();
    v3 = sub_1A3C76188();
    v4 = type metadata accessor for LemonadeObservableBookmark(a1, &type metadata for LemonadeBookmarkItem, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EB129C60);
    }
  }
}

unint64_t sub_1A40EEA6C()
{
  result = qword_1EB12A348;
  if (!qword_1EB12A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A348);
  }

  return result;
}

__n128 sub_1A40EEAC0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a1;
  sub_1A40EEC78(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = sub_1A5249574();
  *(v12 + 1) = 0;
  v12[16] = 1;
  sub_1A40F0860(0, &qword_1EB131F58, sub_1A40EEE2C);
  sub_1A40EF490(v8, a2, a3, a4, &v12[*(v13 + 44)]);
  sub_1A524BC74();
  sub_1A5248AD4();
  sub_1A40F1128(v12, a5, sub_1A40EEC78);
  sub_1A40E9F54(0, &qword_1EB131F60, sub_1A40EEC78, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  v15 = a5 + *(v14 + 36);
  v16 = v19[5];
  *(v15 + 64) = v19[4];
  *(v15 + 80) = v16;
  *(v15 + 96) = v19[6];
  v17 = v19[1];
  *v15 = v19[0];
  *(v15 + 16) = v17;
  result = v19[3];
  *(v15 + 32) = v19[2];
  *(v15 + 48) = result;
  return result;
}

void sub_1A40EEC78(uint64_t a1)
{
  if (!qword_1EB131F08)
  {
    sub_1A40EEE2C(255);
    sub_1A40EEFC0(255);
    sub_1A40EF414(255);
    sub_1A40EF0C0(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A40EA8FC(255, &qword_1EB131F20, sub_1A40EF114, sub_1A3E7D334);
    sub_1A3D6E520();
    sub_1A40EF210();
    swift_getOpaqueTypeConformance2();
    sub_1A40F0A34(&qword_1EB131F50, sub_1A40EF414, sub_1A403594C, MEMORY[0x1E69E7C80]);
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131F08);
    }
  }
}

void sub_1A40EEE2C(uint64_t a1)
{
  if (!qword_1EB131F10)
  {
    sub_1A40EEFC0(255);
    sub_1A40EF414(255);
    sub_1A40EF0C0(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A40EA8FC(255, &qword_1EB131F20, sub_1A40EF114, sub_1A3E7D334);
    sub_1A3D6E520();
    sub_1A40EF210();
    swift_getOpaqueTypeConformance2();
    sub_1A40F0A34(&qword_1EB131F50, sub_1A40EF414, sub_1A403594C, MEMORY[0x1E69E7C80]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB131F10);
    }
  }
}

void sub_1A40EEFC0(uint64_t a1)
{
  if (!qword_1EB131F18)
  {
    sub_1A40EF0C0(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A40EA8FC(255, &qword_1EB131F20, sub_1A40EF114, sub_1A3E7D334);
    sub_1A3D6E520();
    sub_1A40EF210();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB131F18);
    }
  }
}

void sub_1A40EF0C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A40EF148(uint64_t a1)
{
  if (!qword_1EB131F30)
  {
    type metadata accessor for LemonadeBookmarksSeeAllPopoverView(255);
    sub_1A40EA6E0(&unk_1EB1295D8, type metadata accessor for LemonadeBookmarksSeeAllPopoverView, &unk_1A5319E48);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB131F30);
    }
  }
}

unint64_t sub_1A40EF210()
{
  result = qword_1EB131F38;
  if (!qword_1EB131F38)
  {
    sub_1A40EA8FC(255, &qword_1EB131F20, sub_1A40EF114, sub_1A3E7D334);
    sub_1A40EF2F0();
    sub_1A40EA6E0(&qword_1EB127780, sub_1A3E7D334, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131F38);
  }

  return result;
}

unint64_t sub_1A40EF2F0()
{
  result = qword_1EB131F40;
  if (!qword_1EB131F40)
  {
    sub_1A40EF114(255);
    type metadata accessor for LemonadeBookmarksSeeAllPopoverView(255);
    sub_1A40EA6E0(&unk_1EB1295D8, type metadata accessor for LemonadeBookmarksSeeAllPopoverView, &unk_1A5319E48);
    swift_getOpaqueTypeConformance2();
    sub_1A40EA6E0(&qword_1EB127950, sub_1A3D639BC, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131F40);
  }

  return result;
}

void sub_1A40EF414(uint64_t a1)
{
  if (!qword_1EB131F48)
  {
    sub_1A3C2DE14(255, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131F48);
    }
  }
}