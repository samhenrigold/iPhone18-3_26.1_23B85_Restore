uint64_t sub_100AFD068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return UIContentView.supports(_:)(a1, ObjectType, a3);
}

double Artwork.Caching.reference.setter(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

uint64_t (*Artwork.Caching.reference.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return sub_100AFD14C;
}

double sub_100AFD14C(void *a1)
{
  swift_weakAssign();

  return result;
}

double Artwork.Caching.init(reference:identifier:)@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_weakInit();
  *a4 = a2;
  a4[1] = a3;
  swift_weakAssign();

  return result;
}

void Artwork.Caching.init(reference:)(void *a2@<X8>)
{
  swift_weakInit();
  swift_weakAssign();

  *a2 = 0xD00000000000001CLL;
  a2[1] = 0x8000000100E64760;
}

uint64_t static Artwork.Content.__derived_struct_equals(_:_:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    if (a2)
    {
      if (a4)
      {
        sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
        v6 = a4;
        v7 = a2;
        v8 = static NSObject.== infix(_:_:)();

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100AFD358(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    if (v2)
    {
      if (v3)
      {
        sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
        v4 = v3;
        v5 = v2;
        v6 = static NSObject.== infix(_:_:)();

        if (v6)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Artwork.Decoration.border.getter()
{
  v1 = *v0;
  v2 = v0[2];
  return v1;
}

void Artwork.Decoration.border.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
}

id Artwork.Decoration.fillColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for Artwork.Decoration(0) + 24));

  return v1;
}

void Artwork.Decoration.fillColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Artwork.Decoration(0) + 24);

  *(v1 + v3) = a1;
}

uint64_t Artwork.Decoration.fillAxes.setter(uint64_t a1)
{
  result = type metadata accessor for Artwork.Decoration(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t static Artwork.Decoration.with(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v5 = v4[5];
  v6 = type metadata accessor for UIView.Corner();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = v4[6];
  *&a2[v7] = [objc_opt_self() blackColor];
  *&a2[v4[7]] = 1;
  return a1(a2);
}

BOOL static Artwork.Size.Dimension.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = *&a1 == *&a3;
    if (a4 != 1)
    {
      v4 = 0;
    }

    v5 = a4 == 2 && *&a1 == *&a3;
    if (a2 == 1)
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
    return !a4 && *&a1 == *&a3;
  }
}

uint64_t sub_100AFD820(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 == 1 && v2 == v3)
      {
        return 1;
      }
    }

    else if (v4 == 2 && v2 == v3)
    {
      return 1;
    }
  }

  else if (!*(a2 + 8) && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100AFD96C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = type metadata accessor for Artwork.Decoration(0);
  sub_100006080(v10, a2);
  v11 = sub_1000060E4(v10, a2);
  if (qword_1011B0528 != -1)
  {
    swift_once();
  }

  v12 = static UIView.Border.artwork;
  v13 = byte_10121B5E8;
  v14 = *a3;
  v15 = qword_10121B5F0;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for UIView.Corner();
  v17 = sub_1000060E4(v16, a4);
  v18 = *(v16 - 8);
  (*(v18 + 16))(v9, v17, v16);
  (*(v18 + 56))(v9, 0, 1, v16);
  v19 = [objc_opt_self() blackColor];
  *v11 = v12;
  v11[1] = v13;
  v11[2] = v15;
  result = sub_100AFE950(v9, v11 + v10[5]);
  *(v11 + v10[6]) = v19;
  *(v11 + v10[7]) = 1;
  return result;
}

uint64_t sub_100AFDB9C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Artwork.Decoration(0);

  return sub_1000060E4(v4, a2);
}

uint64_t sub_100AFDC14()
{
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = type metadata accessor for Artwork.Decoration(0);
  sub_100006080(v2, static Artwork.Decoration.round);
  v3 = sub_1000060E4(v2, static Artwork.Decoration.round);
  if (qword_1011B0528 != -1)
  {
    swift_once();
  }

  v4 = static UIView.Border.artwork;
  v5 = byte_10121B5E8;
  v6 = qword_10121B5F0;
  v7 = qword_10121B5F0;
  static UIView.Corner.rounded.getter();
  v8 = type metadata accessor for UIView.Corner();
  (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
  v9 = [objc_opt_self() blackColor];
  *v3 = v4;
  v3[1] = v5;
  v3[2] = v6;
  result = sub_100AFE950(v1, v3 + v2[5]);
  *(v3 + v2[6]) = v9;
  *(v3 + v2[7]) = 1;
  return result;
}

uint64_t sub_100AFDDEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Artwork.Decoration(0);
  v7 = sub_1000060E4(v6, a2);
  return sub_10004A5F0(v7, a4, type metadata accessor for Artwork.Decoration);
}

uint64_t Artwork.Decoration.scaled(using:compatibleWith:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v9 = &v27 - v8;
  v10 = type metadata accessor for UIView.Corner.Radius();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v28 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v14 = &v27 - v13;
  sub_10004A5F0(v4, a3, type metadata accessor for Artwork.Decoration);
  if (*(v4 + 16) && *(a3 + 16))
  {
    v15 = *(v4 + 8);
    [a1 scaledValueForValue:a2 compatibleWithTraitCollection:*v4];
    *a3 = v16;
    *(a3 + 8) = v15 & 1;
  }

  v29 = a1;
  v30 = a2;
  v17 = type metadata accessor for Artwork.Decoration(0);
  sub_1000089F8(v4 + *(v17 + 20), v9, &qword_1011B7710, &qword_100EFF6F0);
  v18 = type metadata accessor for UIView.Corner();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v9, 1, v18) == 1)
  {
    return sub_1000095E8(v9, &qword_1011B7710, &qword_100EFF6F0);
  }

  UIView.Corner.radius.getter();
  (*(v19 + 8))(v9, v18);
  v22 = (*(v11 + 88))(v14, v10);
  if (v22 != enum case for UIView.Corner.Radius.value(_:))
  {
    return (*(v11 + 8))(v14, v10);
  }

  v23 = v22;
  (*(v11 + 96))(v14, v10);
  result = (v20)(a3 + *(v17 + 20), 1, v18);
  if (!result)
  {
    v24 = v14[8];
    [v29 scaledValueForValue:v30 compatibleWithTraitCollection:*v14];
    v25 = v28;
    *v28 = v26;
    *(v25 + 8) = v24;
    (*(v11 + 104))(v25, v23, v10);
    return UIView.Corner.radius.setter();
  }

  return result;
}

BOOL _s11MusicCoreUI7ArtworkV7CachingV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (v3 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v3 & 1) != 0))
  {
    Strong = swift_weakLoadStrong();
    v6 = swift_weakLoadStrong();
    if (Strong)
    {
      if (v6)
      {
        v7 = v6;

        return Strong == v7;
      }
    }

    else if (!v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s11MusicCoreUI7ArtworkV10DecorationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for UIView.Corner();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v35 = &v32 - v8;
  v9 = sub_10010FC20(&qword_1011B1188, &qword_100EFFAA0);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v12 = a1[2];
  v13 = a2[2];
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v33 = v4;
    v34 = v7;
    v15 = *a1;
    v14 = a1[1];
    v32 = v5;
    v16 = a1;
    v18 = *a2;
    v17 = a2[1];
    v19 = v13;
    v37 = v14 & 1;
    v20 = v17 & 1;
    a1 = v16;
    v36 = v20;
    v21 = v18;
    v5 = v32;
    v4 = v33;
    v22 = static UIView.Border.__derived_struct_equals(_:_:)(v15, v14 & 1, v12, v21, v20, v19);

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v34 = v7;
    if (v13)
    {
      return 0;
    }
  }

  v23 = type metadata accessor for Artwork.Decoration(0);
  v24 = *(v23 + 20);
  v25 = *(v9 + 48);
  sub_1000089F8(a1 + v24, v11, &qword_1011B7710, &qword_100EFF6F0);
  sub_1000089F8(a2 + v24, &v11[v25], &qword_1011B7710, &qword_100EFF6F0);
  v26 = *(v5 + 48);
  if (v26(v11, 1, v4) != 1)
  {
    v27 = v35;
    sub_1000089F8(v11, v35, &qword_1011B7710, &qword_100EFF6F0);
    if (v26(&v11[v25], 1, v4) != 1)
    {
      v28 = v34;
      (*(v5 + 32))(v34, &v11[v25], v4);
      sub_100AFE700(&qword_1011B1190, &type metadata accessor for UIView.Corner, &protocol conformance descriptor for UIView.Corner);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v5 + 8);
      v30(v28, v4);
      v30(v27, v4);
      sub_1000095E8(v11, &qword_1011B7710, &qword_100EFF6F0);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v27, v4);
LABEL_11:
    sub_1000095E8(v11, &qword_1011B1188, &qword_100EFFAA0);
    return 0;
  }

  if (v26(&v11[v25], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1000095E8(v11, &qword_1011B7710, &qword_100EFF6F0);
LABEL_13:
  sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
  if (static NSObject.== infix(_:_:)())
  {
    return *(a1 + *(v23 + 28)) == *(a2 + *(v23 + 28));
  }

  return 0;
}

uint64_t sub_100AFE67C(uint64_t a1)
{
  *(a1 + 8) = sub_100AFE700(&qword_1011B0E40, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  result = sub_100AFE700(&qword_1011B0E48, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100AFE700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100AFE790(uint64_t a1)
{
  result = sub_100AFE700(&qword_1011B0E98, type metadata accessor for Artwork.View, &protocol conformance descriptor for Artwork.View);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_100AFE84C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100AFE860(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
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

uint64_t sub_100AFE8A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Artwork.Size.Dimension(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100AFE950(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void Artwork.Placeholder.View.typedConfiguration.setter(uint64_t *a1)
{
  sub_100B03528(a1);
  v4 = *a1;
  sub_1000095E8(&v4, &qword_1011B1178, &qword_100EFFA90);
  v3 = a1[1];
  sub_1000095E8(&v3, &qword_1011B1178, &qword_100EFFA90);
  v2 = a1[2];
  sub_1000095E8(&v2, &qword_1011B1180, &qword_100EFFA98);
}

void *Artwork.Placeholder.tint.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

id sub_100AFEB58()
{
  result = [objc_opt_self() tertiaryLabelColor];
  qword_1011B11A0 = result;
  return result;
}

__n128 static Artwork.Placeholder.with(_:)@<Q0>(void (*a1)(__int128 *)@<X0>, uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    swift_once();
  }

  v5 = qword_1011B11A0;
  v6 = objc_opt_self();
  v7 = v5;
  *&v11 = v4;
  *(&v11 + 1) = v5;
  v12 = 0;
  v13 = [v6 configurationWithWeight:4];
  v14 = xmmword_100EFDB30;
  a1(&v11);
  v8 = v12;
  v9 = v13;
  result = v14;
  *a2 = v11;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = result;
  return result;
}

id Artwork.Placeholder.preferredSymbolConfiguration(in:)(double a1, double a2)
{
  if (a1 > a2)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 < a1)
  {
    a1 = a2;
  }

  if (v3 * *(v2 + 32) >= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = v3 * *(v2 + 32);
  }

  v5 = *(v2 + 24);
  v6 = [objc_opt_self() configurationWithPointSize:v4];
  v7 = [v5 configurationByApplyingConfiguration:v6];

  return v7;
}

void Artwork.Placeholder.image(with:graphicsFormat:)(uint64_t a1, double a2, double a3)
{
  v4 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a1 format:{a2, a3}];
  v5 = *v3;
  v18 = v3[1];
  v19 = v5;
  v6 = v3[2];
  v7 = v3[3];
  v16 = 0;
  v17 = v6;
  v8 = swift_allocObject();
  v9 = *(v3 + 1);
  *(v8 + 16) = *v3;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v3 + 2);
  *(v8 + 64) = &v16;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100B036B4;
  *(v10 + 24) = v8;
  aBlock[4] = sub_1002CF914;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BD7C;
  aBlock[3] = &unk_1010E1790;
  v11 = _Block_copy(aBlock);
  sub_1000089F8(&v19, v14, &qword_1011B1178, &qword_100EFFA90);
  sub_1000089F8(&v18, v14, &qword_1011B1178, &qword_100EFFA90);
  sub_1000089F8(&v17, v14, &qword_1011B1180, &qword_100EFFA98);
  v12 = v7;

  v13 = [v4 imageWithActions:v11];

  _Block_release(v11);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_100AFEF58(void *a1, uint64_t a2, void **a3)
{
  v6 = [a1 format];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [objc_opt_self() secondarySystemBackgroundColor];
  [v15 setFill];

  v16 = objc_opt_self();
  v17 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
  [v17 fill];

  if (*a2)
  {
    v18 = *a2;
    [v18 setFill];
    v19 = [v16 bezierPathWithRect:{v8, v10, v12, v14}];
    [v19 fill];
  }

  if (v12 > v14)
  {
    v20 = v12;
  }

  else
  {
    v20 = v14;
  }

  if (v14 >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = v14;
  }

  v22 = v20 * *(a2 + 32);
  if (v22 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(a2 + 24);
  v25 = [objc_opt_self() configurationWithPointSize:v23];
  v26 = [v24 configurationByApplyingConfiguration:v25];

  v27 = *(a2 + 16);
  if (v27)
  {
    v28 = [v27 imageWithSymbolConfiguration:v26];
    if (v28)
    {
      v29 = v28;
      if (*(a2 + 8))
      {
        v30 = [v28 imageWithTintColor:?];

        v29 = v30;
      }

      [v29 size];
      v32 = v31;
      v33 = [objc_opt_self() mainScreen];
      [v33 scale];

      CGRect.centeringAlong(axes:bounds:scale:)();
      [v29 drawInRect:v32];
    }
  }

  v34 = [a1 currentImage];

  v35 = *a3;
  *a3 = v34;
}

char *Artwork.Placeholder.View.init(configuration:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = *a1;
  v17 = a1[1];
  v18 = v5;
  v6 = a1[3];
  v16 = a1[2];
  v7 = &v1[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  v8 = *(a1 + 2);
  v9 = *(a1 + 1);
  *v7 = *a1;
  *(v7 + 1) = v9;
  *(v7 + 2) = v8;
  sub_1000089F8(&v18, v19, &qword_1011B1178, &qword_100EFFA90);
  sub_1000089F8(&v17, v19, &qword_1011B1178, &qword_100EFFA90);
  sub_1000089F8(&v16, v19, &qword_1011B1180, &qword_100EFFA98);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v10 = v6;
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = *(v11 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView);
  v13 = v11;
  [v13 addSubview:v12];
  memset(v19, 0, sizeof(v19));
  sub_10004DF5C(v19);
  sub_1000095E8(&v18, &qword_1011B1178, &qword_100EFFA90);
  sub_1000095E8(&v17, &qword_1011B1178, &qword_100EFFA90);
  sub_1000095E8(&v16, &qword_1011B1180, &qword_100EFFA98);

  return v13;
}

void Artwork.Placeholder.View.init(coder:)()
{
  v1 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id Artwork.Placeholder.View.typedConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v11 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v11;
  *(a1 + 32) = *(v3 + 32);
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

void (*Artwork.Placeholder.View.typedConfiguration.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1E0uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  *(v3 + 464) = v1;
  *(v3 + 472) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  *(v4 + 48) = *v6;
  *(v4 + 56) = v8;
  v4 += 48;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v11;
  v12 = v9;
  v13 = v10;
  v14 = v7;
  v15 = v8;
  return sub_100AFF648;
}

void sub_100AFF648(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 58) + *(*a1 + 59));
  if (a2)
  {
    v4 = *(v2 + 4);
    v5 = *(v2 + 5);
    v6 = *(v2 + 3);
    v7 = v6;
    *(v2 + 19) = v4;
    *(v2 + 20) = v5;
    *(v2 + 18) = v6;
    *(v2 + 49) = *(v2 + 18);
    v8 = v2[39];
    v2[51] = v2[38];
    v10 = *(v3 + 1);
    v9 = *(v3 + 2);
    *v2 = *v3;
    *(v2 + 1) = v10;
    *(v2 + 2) = v9;
    v11 = *v3;
    v12 = v3[1];
    v13 = v3[2];
    v35 = v3[4];
    v36 = v3[3];
    v34 = v3[5];
    v2[46] = *v2;
    v14 = *(v2 + 5);
    *(v3 + 1) = v4;
    *(v3 + 2) = v14;
    *v3 = v7;
    sub_1000089F8((v2 + 49), (v2 + 57), &qword_1011B1178, &qword_100EFFA90);
    sub_1000089F8((v2 + 50), (v2 + 57), &qword_1011B1178, &qword_100EFFA90);
    sub_1000089F8((v2 + 51), (v2 + 57), &qword_1011B1180, &qword_100EFFA98);
    v15 = v8;
    sub_1000089F8((v2 + 49), (v2 + 57), &qword_1011B1178, &qword_100EFFA90);
    sub_1000089F8((v2 + 50), (v2 + 57), &qword_1011B1178, &qword_100EFFA90);
    sub_1000089F8((v2 + 51), (v2 + 57), &qword_1011B1180, &qword_100EFFA98);
    v16 = v15;
    if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0((v2 + 36), v2))
    {
      v2[30] = v11;
      v2[31] = v12;
      v2[32] = v13;
      v2[33] = v36;
      v2[34] = v35;
      v2[35] = v34;
      sub_10004DF5C((v2 + 30));
    }

    sub_1000095E8((v2 + 46), &qword_1011B1178, &qword_100EFFA90);
    v2[47] = v2[1];
    sub_1000095E8((v2 + 47), &qword_1011B1178, &qword_100EFFA90);
    v17 = v2[3];
    v2[48] = v2[2];
    sub_1000095E8((v2 + 48), &qword_1011B1180, &qword_100EFFA98);

    sub_1000095E8((v2 + 49), &qword_1011B1178, &qword_100EFFA90);
    sub_1000095E8((v2 + 50), &qword_1011B1178, &qword_100EFFA90);
    sub_1000095E8((v2 + 51), &qword_1011B1180, &qword_100EFFA98);

    v18 = v2[6];
    v19 = v2[7];
    v20 = v2[8];
  }

  else
  {
    v21 = *(v2 + 4);
    *(v2 + 9) = *(v2 + 3);
    *(v2 + 10) = v21;
    v23 = *(v2 + 3);
    v22 = *(v2 + 4);
    *(v2 + 11) = *(v2 + 5);
    v24 = *v3;
    v25 = *(v3 + 2);
    *(v2 + 13) = *(v3 + 1);
    *(v2 + 14) = v25;
    *(v2 + 12) = v24;
    v26 = v3[1];
    v37 = *v3;
    v27 = v3[2];
    v28 = v3[3];
    v29 = v3[4];
    v30 = v3[5];
    v2[54] = v2[24];
    v31 = v2[21];
    v2[45] = v2[20];
    *(v2 + 55) = *(v2 + 9);
    v32 = *(v2 + 5);
    *(v3 + 1) = v22;
    *(v3 + 2) = v32;
    *v3 = v23;
    sub_1000089F8((v2 + 55), (v2 + 57), &qword_1011B1178, &qword_100EFFA90);
    sub_1000089F8((v2 + 56), (v2 + 57), &qword_1011B1178, &qword_100EFFA90);
    sub_1000089F8((v2 + 45), (v2 + 57), &qword_1011B1180, &qword_100EFFA98);
    v20 = v31;
    if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0((v2 + 18), (v2 + 24)))
    {
      v2[12] = v37;
      v2[13] = v26;
      v2[14] = v27;
      v2[15] = v28;
      v2[16] = v29;
      v2[17] = v30;
      sub_10004DF5C((v2 + 12));
    }

    sub_1000095E8((v2 + 54), &qword_1011B1178, &qword_100EFFA90);
    v2[53] = v2[25];
    sub_1000095E8((v2 + 53), &qword_1011B1178, &qword_100EFFA90);
    v33 = v2[27];
    v2[52] = v2[26];
    sub_1000095E8((v2 + 52), &qword_1011B1180, &qword_100EFFA98);

    sub_1000095E8((v2 + 55), &qword_1011B1178, &qword_100EFFA90);
    sub_1000095E8((v2 + 56), &qword_1011B1178, &qword_100EFFA90);
    sub_1000095E8((v2 + 45), &qword_1011B1180, &qword_100EFFA98);
  }

  free(v2);
}

id sub_100AFFAAC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v11 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v11;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(v3 + 32);
  v7 = v5;
  v8 = v6;
  v9 = v4;

  return v11;
}

void sub_100AFFB38(__int128 *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = v1;
  v4 = a1[2];
  sub_100B03528(&v2);
  v5 = v2;
  sub_1000095E8(&v5, &qword_1011B1178, &qword_100EFFA90);
  v6 = *(&v2 + 1);
  sub_1000095E8(&v6, &qword_1011B1178, &qword_100EFFA90);
  v7 = v3;
  sub_1000095E8(&v7, &qword_1011B1180, &qword_100EFFA98);
}

void (*sub_100AFFBDC(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = Artwork.Placeholder.View.typedConfiguration.modify(v2);
  return sub_100260668;
}

id sub_100AFFC4C@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for Artwork.Placeholder;
  a1[4] = sub_100B03C68();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v12 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *(v3 + 16) = *v4;
  *(v3 + 24) = v12;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  *(v3 + 48) = *(v4 + 32);
  v8 = v6;
  v9 = v7;
  v10 = v5;

  return v12;
}

uint64_t sub_100AFFD08(void *a1)
{
  sub_100008FE4(a1, v6);
  sub_10010FC20(&qword_1011B1140, "p.\n");
  swift_dynamicCast();
  v7 = v3;
  v8 = v4;
  v9 = v5;
  sub_100B03528(&v7);
  v10 = v7;
  sub_1000095E8(&v10, &qword_1011B1178, &qword_100EFFA90);
  v11 = *(&v7 + 1);
  sub_1000095E8(&v11, &qword_1011B1178, &qword_100EFFA90);
  v12 = v8;
  sub_1000095E8(&v12, &qword_1011B1180, &qword_100EFFA98);

  return sub_10000959C(a1);
}

void (*sub_100AFFDFC(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x158uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[42] = v1;
  v3[21] = &type metadata for Artwork.Placeholder;
  v3[22] = sub_100B03C68();
  v5 = swift_allocObject();
  v4[18] = v5;
  v6 = v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  *(v5 + 16) = *v6;
  *(v5 + 24) = v8;
  *(v5 + 32) = v9;
  *(v5 + 40) = v10;
  *(v5 + 48) = *(v6 + 32);
  v11 = v9;
  v12 = v10;
  v13 = v7;
  v14 = v8;
  return sub_100AFFEF8;
}

void sub_100AFFEF8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100008FE4(v2 + 144, v2 + 184);
    sub_100008FE4(v2 + 184, v2 + 224);
    sub_10010FC20(&qword_1011B1140, "p.\n");
    swift_dynamicCast();
    v3 = *(v2 + 112);
    *v2 = *(v2 + 96);
    *(v2 + 16) = v3;
    *(v2 + 32) = *(v2 + 128);
    sub_100B03528(v2);
    *(v2 + 328) = *v2;
    sub_1000095E8(v2 + 328, &qword_1011B1178, &qword_100EFFA90);
    *(v2 + 320) = *(v2 + 8);
    sub_1000095E8(v2 + 320, &qword_1011B1178, &qword_100EFFA90);
    *(v2 + 312) = *(v2 + 16);
    sub_1000095E8(v2 + 312, &qword_1011B1180, &qword_100EFFA98);

    sub_10000959C((v2 + 184));
  }

  else
  {
    sub_100008FE4(v2 + 144, v2 + 184);
    sub_10010FC20(&qword_1011B1140, "p.\n");
    swift_dynamicCast();
    v4 = *(v2 + 112);
    *(v2 + 48) = *(v2 + 96);
    *(v2 + 64) = v4;
    *(v2 + 80) = *(v2 + 128);
    sub_100B03528((v2 + 48));
    *(v2 + 304) = *(v2 + 48);
    sub_1000095E8(v2 + 304, &qword_1011B1178, &qword_100EFFA90);
    *(v2 + 296) = *(v2 + 56);
    sub_1000095E8(v2 + 296, &qword_1011B1178, &qword_100EFFA90);
    *(v2 + 288) = *(v2 + 64);
    sub_1000095E8(v2 + 288, &qword_1011B1180, &qword_100EFFA98);
  }

  sub_10000959C((v2 + 144));

  free(v2);
}

char *sub_100B000DC()
{
  v1 = v0[1];
  v9[0] = *v0;
  v9[1] = v1;
  v9[2] = v0[2];
  v10 = v9[0];
  v2 = *(&v1 + 1);
  v11 = v1;
  v3 = objc_allocWithZone(type metadata accessor for Artwork.Placeholder.View());
  sub_1000089F8(&v10, v8, &qword_1011B1178, &qword_100EFFA90);
  sub_1000089F8(&v10 + 8, v8, &qword_1011B1178, &qword_100EFFA90);
  sub_1000089F8(&v11, v8, &qword_1011B1180, &qword_100EFFA98);
  v4 = v2;
  v5 = Artwork.Placeholder.View.init(configuration:)(v9);
  sub_100B03CCC(&qword_1011B1218, v6, type metadata accessor for Artwork.Placeholder.View, &protocol conformance descriptor for Artwork.Placeholder.View);
  return v5;
}

id sub_100B001D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v9 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v9;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = *(v1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v2;

  return v9;
}

BOOL sub_100B0023C(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8);
}

double sub_100B00284()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v1 colorWithAlphaComponent:0.1];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.12];

  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.nowPlaying = v2;
  unk_10121B3B0 = v4;
  qword_10121B3B8 = v6;
  unk_10121B3C0 = v7;
  result = 0.46;
  xmmword_10121B3C8 = xmmword_100EFDB40;
  return result;
}

uint64_t *Artwork.Placeholder.nowPlaying.unsafeMutableAddressor()
{
  if (qword_1011B0458 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.nowPlaying;
}

id static Artwork.Placeholder.nowPlaying.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0458 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.nowPlaying;
  v2 = unk_10121B3B0;
  v4 = qword_10121B3B8;
  v3 = unk_10121B3C0;
  v10 = unk_10121B3C0;
  *a1 = static Artwork.Placeholder.nowPlaying;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B3C8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id static Artwork.Placeholder.miniPlayer.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0460 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.miniPlayer;
  v2 = unk_10121B3E0;
  v4 = qword_10121B3E8;
  v3 = unk_10121B3F0;
  v10 = unk_10121B3F0;
  *a1 = static Artwork.Placeholder.miniPlayer;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B3F8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

void static Artwork.Placeholder.device(representing:basedOn:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = v6;
  v11 = [v8 _symbolImageForRoute:a1];
  v12 = v11;
  if (!v6)
  {
    v19 = qword_1011B0450;
    v20 = v11;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = qword_1011B11A0;
    goto LABEL_12;
  }

  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 secondaryLabelColor];
  sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
  v17 = static NSObject.== infix(_:_:)();

  if (v17)
  {

    v18 = [v13 labelColor];
LABEL_11:
    v21 = v18;
LABEL_12:
    v25 = v21;
    goto LABEL_13;
  }

  v22 = v14;
  v23 = [v13 tertiaryLabelColor];
  v24 = static NSObject.== infix(_:_:)();

  if (v24)
  {

    v18 = [v13 secondaryLabelColor];
    goto LABEL_11;
  }

  v25 = v22;
  v26 = [v13 quaternaryLabelColor];
  v27 = static NSObject.== infix(_:_:)();

  if (v27)
  {

    v18 = [v13 tertiaryLabelColor];
    goto LABEL_11;
  }

LABEL_13:
  v28 = *(a2 + 40);
  v29 = *(a2 + 24);
  v30 = [objc_opt_self() configurationWithHierarchicalColor:v25];
  v31 = [v29 configurationByApplyingConfiguration:v30];

  *a3 = v7;
  a3[1] = v6;
  a3[2] = v12;
  a3[3] = v31;
  a3[4] = 0x3FE0000000000000;
  a3[5] = v28;
}

id sub_100B007D4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1011B11A0;
  static Artwork.Placeholder.music = v3;
  unk_10121B410 = qword_1011B11A0;
  qword_10121B418 = v1;
  unk_10121B420 = v2;
  xmmword_10121B428 = xmmword_100EFDB50;

  return v4;
}

uint64_t *Artwork.Placeholder.music.unsafeMutableAddressor()
{
  if (qword_1011B0468 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.music;
}

id static Artwork.Placeholder.music.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0468 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.music;
  v2 = unk_10121B410;
  v4 = qword_10121B418;
  v3 = unk_10121B420;
  v10 = unk_10121B420;
  *a1 = static Artwork.Placeholder.music;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B428;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_100B009E4()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1011B11A0;
  static Artwork.Placeholder.musicVideo = v3;
  unk_10121B440 = qword_1011B11A0;
  qword_10121B448 = v1;
  unk_10121B450 = v2;
  xmmword_10121B458 = xmmword_100EFDB30;

  return v4;
}

uint64_t *Artwork.Placeholder.musicVideo.unsafeMutableAddressor()
{
  if (qword_1011B0470 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.musicVideo;
}

id static Artwork.Placeholder.musicVideo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0470 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.musicVideo;
  v2 = unk_10121B440;
  v4 = qword_10121B448;
  v3 = unk_10121B450;
  v10 = unk_10121B450;
  *a1 = static Artwork.Placeholder.musicVideo;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B458;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_100B00C04()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:5];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1011B11A0;
  static Artwork.Placeholder.tv = v3;
  unk_10121B470 = qword_1011B11A0;
  qword_10121B478 = v1;
  unk_10121B480 = v2;
  xmmword_10121B488 = xmmword_100EFDB30;

  return v4;
}

uint64_t *Artwork.Placeholder.tv.unsafeMutableAddressor()
{
  if (qword_1011B0478 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.tv;
}

id static Artwork.Placeholder.tv.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0478 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.tv;
  v2 = unk_10121B470;
  v4 = qword_10121B478;
  v3 = unk_10121B480;
  v10 = unk_10121B480;
  *a1 = static Artwork.Placeholder.tv;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B488;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_100B00E0C()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1011B11A0;
  static Artwork.Placeholder.microphone = v3;
  unk_10121B4A0 = qword_1011B11A0;
  qword_10121B4A8 = v1;
  unk_10121B4B0 = v2;
  xmmword_10121B4B8 = xmmword_100EFDB40;

  return v4;
}

uint64_t *Artwork.Placeholder.microphone.unsafeMutableAddressor()
{
  if (qword_1011B0480 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.microphone;
}

id static Artwork.Placeholder.microphone.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0480 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.microphone;
  v2 = unk_10121B4A0;
  v4 = qword_10121B4A8;
  v3 = unk_10121B4B0;
  v10 = unk_10121B4B0;
  *a1 = static Artwork.Placeholder.microphone;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B4B8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

id sub_100B01024()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1011B11A0;
  static Artwork.Placeholder.person = v3;
  unk_10121B4D0 = qword_1011B11A0;
  qword_10121B4D8 = v1;
  unk_10121B4E0 = v2;
  xmmword_10121B4E8 = xmmword_100EFDB30;

  return v4;
}

uint64_t *Artwork.Placeholder.person.unsafeMutableAddressor()
{
  if (qword_1011B0488 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.person;
}

id static Artwork.Placeholder.person.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0488 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.person;
  v2 = unk_10121B4D0;
  v4 = qword_10121B4D8;
  v3 = unk_10121B4E0;
  v10 = unk_10121B4E0;
  *a1 = static Artwork.Placeholder.person;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B4E8;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double sub_100B01240()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:3];
  static Artwork.Placeholder.newPlaylist = [objc_opt_self() secondarySystemFillColor];
  unk_10121B500 = 0;
  qword_10121B508 = v1;
  unk_10121B510 = v2;
  result = 0.5;
  xmmword_10121B518 = xmmword_100EFDB30;
  return result;
}

uint64_t *Artwork.Placeholder.newPlaylist.unsafeMutableAddressor()
{
  if (qword_1011B0490 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.newPlaylist;
}

id static Artwork.Placeholder.newPlaylist.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0490 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.newPlaylist;
  v2 = unk_10121B500;
  v4 = qword_10121B508;
  v3 = unk_10121B510;
  v10 = unk_10121B510;
  *a1 = static Artwork.Placeholder.newPlaylist;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B518;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

double static Artwork.Placeholder.playlist(ofType:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10010FC20(&qword_1011B11C8, &qword_100EFFAD0);
  __chkstk_darwin();
  v5 = v14 - v4;
  v6 = type metadata accessor for Playlist.Variant();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MPModelPlaylistType.variant.getter(a1, v5);
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    (*(v7 + 104))(v9, enum case for Playlist.Variant.regular(_:), v6);
    if (v10(v5, 1, v6) != 1)
    {
      sub_1000095E8(v5, &qword_1011B11C8, &qword_100EFFAD0);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  v11 = sub_100B036C0(v9, v14);
  (*(v7 + 8))(v9, v6, v11);
  v12 = v14[1];
  *a2 = v14[0];
  a2[1] = v12;
  result = *&v15;
  a2[2] = v15;
  return result;
}

double static Artwork.Placeholder.playlist(withVariant:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100B036C0(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

id sub_100B01624()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  v2 = [objc_opt_self() configurationWithWeight:4];
  v3 = [objc_opt_self() secondarySystemFillColor];
  if (qword_1011B0450 != -1)
  {
    v6 = v3;
    swift_once();
    v3 = v6;
  }

  v4 = qword_1011B11A0;
  static Artwork.Placeholder.radio = v3;
  unk_10121B530 = qword_1011B11A0;
  qword_10121B538 = v1;
  unk_10121B540 = v2;
  xmmword_10121B548 = xmmword_100EFDB50;

  return v4;
}

uint64_t *Artwork.Placeholder.radio.unsafeMutableAddressor()
{
  if (qword_1011B0498 != -1)
  {
    swift_once();
  }

  return &static Artwork.Placeholder.radio;
}

id static Artwork.Placeholder.radio.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0498 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = static Artwork.Placeholder.radio;
  v2 = unk_10121B530;
  v4 = qword_10121B538;
  v3 = unk_10121B540;
  v10 = unk_10121B540;
  *a1 = static Artwork.Placeholder.radio;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = xmmword_10121B548;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

__n128 Artwork.Placeholder.withSolidBackgroundColor()@<Q0>(__n128 *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v21 = *(v1 + 32);
  if (*v1)
  {
    v7 = objc_opt_self();
    v8 = v5;
    v9 = v6;
    v10 = v3;
    v11 = v4;
    v12 = [v7 secondarySystemFillColor];
    sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      if (qword_1011B04A0 != -1)
      {
        swift_once();
      }

      v14 = qword_1011B11A8;
LABEL_11:
      v3 = v14;

      goto LABEL_12;
    }

    v18 = [v7 tertiarySystemFillColor];
    v19 = static NSObject.== infix(_:_:)();

    if (v19)
    {
      if (qword_1011B04A8 != -1)
      {
        swift_once();
      }

      v14 = qword_1011B11B0;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = v5;
    v16 = v6;
    v17 = v4;
  }

LABEL_12:
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1].n128_u64[0] = v5;
  a1[1].n128_u64[1] = v6;
  result = v21;
  a1[2] = v21;
  return result;
}

id Artwork.Placeholder.withBackground(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *(v2 + 8);
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

id Artwork.Placeholder.withScaleFactor(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 40);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 8);
  v11 = *v2;
  *a1 = *v2;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = a2;
  *(a1 + 40) = v3;
  v7 = v4;
  v8 = v5;
  v9 = v6;

  return v11;
}

id Artwork.Placeholder.withTint(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = *v2;
  *a2 = *v2;
  *(a2 + 8) = a1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = *(v2 + 32);
  v6 = v3;
  v7 = v4;
  v8 = v5;

  return a1;
}

id sub_100B01B88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [a1 userInterfaceStyle];
  sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
  if (v9 == 2)
  {
    v10 = a2;
    v11 = a2;
    v12 = a3;
  }

  else
  {
    v10 = a4;
    v11 = a4;
    v12 = a5;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v10, v11, v12, 1.0);
}

double sub_100B01D5C()
{
  sub_10010FC20(&qword_1011B5F90, &qword_100F06EA0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBC6B0;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = objc_opt_self();
  v5 = [v4 propertySetWithProperties:isa];

  LODWORD(isa) = [v0 hasLoadedValuesForPropertySet:v5];
  v6 = 1.0;
  if (isa)
  {
    if ([v0 hasVideo])
    {
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100EBC6B0;
      *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v7 + 40) = v8;
      v9 = Array._bridgeToObjectiveC()().super.isa;

      v10 = [v4 propertySetWithProperties:v9];

      v11 = [v0 hasLoadedValuesForPropertySet:v10];
      if (!v11)
      {
        return 1.77777778;
      }

      v12 = [v0 artworkCatalog];
      if (!v12)
      {
        return 1.77777778;
      }

      v13 = v12;
      v14 = COERCE_DOUBLE(MPArtworkCatalog.expectedRatio.getter());
      v16 = v15;

      if (v16)
      {
        return 1.77777778;
      }

      v6 = 0.5625;
      if (v14 >= 1.0)
      {
        return 1.77777778;
      }
    }
  }

  return v6;
}

id MPModelPlaylist.artworkPlaceholderImage.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    [v0 type];

    return sub_100B03A18();
  }

  else
  {
    v2 = String._bridgeToObjectiveC()();
    v3 = [objc_opt_self() _systemImageNamed:v2];

    return v3;
  }
}

void MPModelObject.artworkPlaceholder.getter(void *a1@<X8>)
{
  sub_10010FC20(&qword_1011B11C8, &qword_100EFFAD0);
  __chkstk_darwin();
  v3 = v26 - v2;
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      if ([v11 hasLoadedValueForKey:MPModelPropertyPlaylistType])
      {
        MPModelPlaylistType.variant.getter([v12 type], v3);
        v13 = *(v5 + 48);
        if (v13(v3, 1, v4) == 1)
        {
          (*(v5 + 104))(v7, enum case for Playlist.Variant.regular(_:), v4);
          if (v13(v3, 1, v4) != 1)
          {
            sub_1000095E8(v3, &qword_1011B11C8, &qword_100EFFAD0);
          }
        }

        else
        {
          (*(v5 + 32))(v7, v3, v4);
        }

        v15 = sub_100B036C0(v7, v26);
        (*(v5 + 8))(v7, v4, v15);
        goto LABEL_17;
      }
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (qword_1011B0480 != -1)
        {
          swift_once();
        }

        v14 = &static Artwork.Placeholder.microphone;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (qword_1011B0488 != -1)
        {
          swift_once();
        }

        v14 = &static Artwork.Placeholder.person;
        goto LABEL_32;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        if (qword_1011B0478 != -1)
        {
          swift_once();
        }

        v14 = &static Artwork.Placeholder.tv;
        goto LABEL_32;
      }
    }

LABEL_29:
    if (qword_1011B0468 != -1)
    {
      swift_once();
    }

    v14 = &static Artwork.Placeholder.music;
LABEL_32:
    v20 = *v14;
    v21 = v14[1];
    v19 = v14[2];
    v22 = v14[3];
    v16 = v14[4];
    v17 = v14[5];
    v23 = v19;
    v18 = v22;
    v24 = v20;
    v25 = v21;
    goto LABEL_33;
  }

  v9 = [v8 anyObject];
  if (!v9)
  {
    goto LABEL_29;
  }

  v10 = v9;
  MPModelObject.artworkPlaceholder.getter(v26);

LABEL_17:
  v16 = v26[4];
  v17 = v26[5];
  v19 = v26[2];
  v18 = v26[3];
  v20 = v26[0];
  v21 = v26[1];
LABEL_33:
  *a1 = v20;
  a1[1] = v21;
  a1[2] = v19;
  a1[3] = v18;
  a1[4] = v16;
  a1[5] = v17;
}

id MusicItem.artworkPlaceholder.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v129 = a2;
  v92 = type metadata accessor for Station();
  v89 = *(v92 - 8);
  __chkstk_darwin();
  v91 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for MusicMovie();
  v90 = *(v95 - 8);
  __chkstk_darwin();
  v94 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for TVSeason();
  v93 = *(v98 - 8);
  __chkstk_darwin();
  v97 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for TVEpisode();
  v96 = *(v101 - 8);
  __chkstk_darwin();
  v100 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for TVShow();
  v99 = *(v105 - 8);
  __chkstk_darwin();
  v104 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for Playlist.Folder();
  v103 = *(v110 - 8);
  __chkstk_darwin();
  v109 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B11C8, &qword_100EFFAD0);
  __chkstk_darwin();
  v108 = &v88 - v9;
  v116 = type metadata accessor for Playlist.Variant();
  v115 = *(v116 - 8);
  __chkstk_darwin();
  v102 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v88 - v11;
  v114 = type metadata accessor for Playlist();
  v106 = *(v114 - 8);
  __chkstk_darwin();
  v113 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v88 - v13;
  v119 = type metadata accessor for MusicVideo();
  v112 = *(v119 - 8);
  __chkstk_darwin();
  v118 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for SocialProfile();
  v117 = *(v122 - 8);
  __chkstk_darwin();
  v121 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for Curator();
  v120 = *(v125 - 8);
  __chkstk_darwin();
  v124 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Composer();
  v123 = *(v17 - 8);
  __chkstk_darwin();
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RecordLabel();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Artist();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin();
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v31;
  (*(v31 + 16))(v30, v126, a1, v28);
  if (swift_dynamicCast())
  {
    (*(v25 + 8))(v27, v24);
    v32 = a1;
LABEL_5:
    (*(v128 + 8))(v30, v32);
    if (qword_1011B0480 != -1)
    {
      swift_once();
    }

    v33 = &static Artwork.Placeholder.microphone;
    goto LABEL_18;
  }

  v32 = a1;
  if (swift_dynamicCast())
  {
    (*(v21 + 8))(v23, v20);
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    (*(v123 + 8))(v19, v17);
  }

  else
  {
    v35 = v124;
    v34 = v125;
    if (swift_dynamicCast())
    {
      v36 = v120;
    }

    else
    {
      v35 = v121;
      v34 = v122;
      if (!swift_dynamicCast())
      {
        v48 = v118;
        v47 = v119;
        if (swift_dynamicCast())
        {
          v49 = v30;
          if (qword_1011B0470 != -1)
          {
            swift_once();
          }

          v37 = static Artwork.Placeholder.musicVideo;
          v38 = unk_10121B440;
          v40 = qword_10121B448;
          v50 = unk_10121B450;
          v126 = xmmword_10121B458;
          v51 = *(v112 + 8);
          v52 = static Artwork.Placeholder.musicVideo;
          v53 = v38;
          v54 = v40;
          v42 = v50;
          v51(v48, v47);
          result = (*(v128 + 8))(v49, v32);
          goto LABEL_19;
        }

        v55 = v111;
        v56 = v114;
        if (swift_dynamicCast())
        {
          v57 = v106;
          (*(v106 + 32))(v113, v55, v56);
          v58 = v108;
          Playlist.variant.getter();
          v59 = v115;
          v60 = *(v115 + 48);
          v61 = v116;
          if (v60(v58, 1, v116) == 1)
          {
            v62 = v107;
            (*(v59 + 104))(v107, enum case for Playlist.Variant.regular(_:), v61);
            if (v60(v58, 1, v61) != 1)
            {
              sub_1000095E8(v58, &qword_1011B11C8, &qword_100EFFAD0);
            }
          }

          else
          {
            v62 = v107;
            (*(v59 + 32))(v107, v58, v61);
          }

          v70 = sub_100B036C0(v62, v130);
          (*(v59 + 8))(v62, v61, v70);
          (*(v57 + 8))(v113, v56);
        }

        else
        {
          v63 = v109;
          v64 = v110;
          v65 = swift_dynamicCast();
          v66 = v116;
          v67 = v115;
          if (!v65)
          {
            v71 = v104;
            v72 = v105;
            if (swift_dynamicCast())
            {
              v73 = v130;
            }

            else
            {
              v71 = v100;
              v72 = v101;
              if (swift_dynamicCast())
              {
                v73 = &v127;
              }

              else
              {
                v71 = v97;
                v72 = v98;
                if (swift_dynamicCast())
                {
                  v73 = &v125;
                }

                else
                {
                  v71 = v94;
                  v72 = v95;
                  if (!swift_dynamicCast())
                  {
                    v74 = v91;
                    v75 = v92;
                    if (swift_dynamicCast())
                    {
                      v76 = v30;
                      if (qword_1011B0498 != -1)
                      {
                        swift_once();
                      }

                      v37 = static Artwork.Placeholder.radio;
                      v38 = unk_10121B530;
                      v40 = qword_10121B538;
                      v77 = unk_10121B540;
                      v126 = xmmword_10121B548;
                      v78 = *(v89 + 8);
                      v79 = static Artwork.Placeholder.radio;
                      v80 = v38;
                      v81 = v40;
                      v42 = v77;
                      v78(v74, v75);
                      result = (*(v128 + 8))(v76, v32);
                    }

                    else
                    {
                      v82 = v30;
                      if (qword_1011B0468 != -1)
                      {
                        swift_once();
                      }

                      v37 = static Artwork.Placeholder.music;
                      v38 = unk_10121B410;
                      v40 = qword_10121B418;
                      v83 = unk_10121B420;
                      v126 = xmmword_10121B428;
                      v84 = *(v128 + 8);
                      v85 = static Artwork.Placeholder.music;
                      v86 = v38;
                      v87 = v40;
                      v42 = v83;
                      result = v84(v82, v32);
                    }

                    goto LABEL_19;
                  }

                  v73 = &v122;
                }
              }
            }

            (*(*(v73 - 32) + 8))(v71, v72);
            (*(v128 + 8))(v30, v32);
            if (qword_1011B0478 != -1)
            {
              swift_once();
            }

            v33 = &static Artwork.Placeholder.tv;
            goto LABEL_18;
          }

          v68 = v102;
          (*(v115 + 104))(v102, enum case for Playlist.Variant.folder(_:), v116);
          v69 = sub_100B036C0(v68, v130);
          (*(v67 + 8))(v68, v66, v69);
          (*(v103 + 8))(v63, v64);
        }

        result = (*(v128 + 8))(v30, v32);
        v45 = v131;
        v40 = v130[2];
        v42 = v130[3];
        v37 = v130[0];
        v38 = v130[1];
        goto LABEL_20;
      }

      v36 = v117;
    }

    (*(v36 + 8))(v35, v34);
  }

  (*(v128 + 8))(v30, v32);
  if (qword_1011B0488 != -1)
  {
    swift_once();
  }

  v33 = &static Artwork.Placeholder.person;
LABEL_18:
  v37 = *v33;
  v38 = v33[1];
  v40 = v33[2];
  v39 = v33[3];
  v126 = *(v33 + 2);
  v41 = v40;
  v42 = v39;
  v43 = v37;
  result = v38;
LABEL_19:
  v45 = v126;
LABEL_20:
  v46 = v129;
  *v129 = v37;
  v46[1] = v38;
  v46[2] = v40;
  v46[3] = v42;
  *(v46 + 2) = v45;
  return result;
}

void sub_100B03528(uint64_t *a1)
{
  v3 = (v1 + OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v20 = *v3;
  v21 = v4;
  v22 = v3[2];
  v5 = *(v3 + 1);
  v15 = *v3;
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v25 = v20;
  v8 = *a1;
  v17 = a1[1];
  v18 = v8;
  v9 = a1[3];
  v10 = *(v3 + 4);
  v11 = *(v3 + 5);
  v16 = a1[2];
  v12 = *(a1 + 1);
  *v3 = *a1;
  v3[1] = v12;
  v3[2] = *(a1 + 2);
  sub_1000089F8(&v18, v19, &qword_1011B1178, &qword_100EFFA90);
  sub_1000089F8(&v17, v19, &qword_1011B1178, &qword_100EFFA90);
  sub_1000089F8(&v16, v19, &qword_1011B1180, &qword_100EFFA98);
  v13 = v9;
  if (!_s11MusicCoreUI7ArtworkV11PlaceholderV23__derived_struct_equalsySbAE_AEtFZ_0(a1, &v20))
  {
    v19[0] = v15;
    v19[1] = v5;
    v19[2] = v6;
    v19[3] = v7;
    v19[4] = v10;
    v19[5] = v11;
    sub_10004DF5C(v19);
  }

  sub_1000095E8(&v25, &qword_1011B1178, &qword_100EFFA90);
  v24 = *(&v20 + 1);
  sub_1000095E8(&v24, &qword_1011B1178, &qword_100EFFA90);
  v14 = *(&v21 + 1);
  v23 = v21;
  sub_1000095E8(&v23, &qword_1011B1180, &qword_100EFFA98);
}

double sub_100B036C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = v20 - v9;
  v11 = enum case for Playlist.Variant.folder(_:);
  (*(v5 + 104))(v20 - v9, enum case for Playlist.Variant.folder(_:), v4, v8);
  sub_100B03CCC(&qword_1011B1288, 255, &type metadata accessor for Playlist.Variant, &protocol conformance descriptor for Playlist.Variant);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = *(v5 + 8);
  v12(v10, v4);
  v13 = 0;
  if (v20[1] != v20[0])
  {
    if (qword_1011B0450 != -1)
    {
      swift_once();
    }

    v13 = qword_1011B11A0;
    v14 = qword_1011B11A0;
  }

  (*(v5 + 16))(v7, a1, v4);
  v15 = (*(v5 + 88))(v7, v4);
  if (v15 != enum case for Playlist.Variant.smart(_:) && v15 != enum case for Playlist.Variant.genius(_:) && v15 != v11)
  {
    v12(v7, v4);
  }

  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() _systemImageNamed:v16];

  v18 = [objc_opt_self() configurationWithWeight:3];
  *a2 = [objc_opt_self() secondarySystemFillColor];
  *(a2 + 8) = v13;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  result = 0.4;
  *(a2 + 32) = xmmword_100EFDB50;
  return result;
}

id sub_100B03A18()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  return v1;
}

unint64_t sub_100B03AF0()
{
  result = qword_1011B11D0;
  if (!qword_1011B11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B11D0);
  }

  return result;
}

uint64_t sub_100B03B44(uint64_t a1, uint64_t a2)
{
  result = sub_100B03CCC(&qword_1011B1218, a2, type metadata accessor for Artwork.Placeholder.View, &protocol conformance descriptor for Artwork.Placeholder.View);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100B03BE4(uint64_t a1)
{
  *(a1 + 8) = sub_100B03C14();
  result = sub_100B03C68();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100B03C14()
{
  result = qword_1011B1250;
  if (!qword_1011B1250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1250);
  }

  return result;
}

unint64_t sub_100B03C68()
{
  result = qword_1011B1258;
  if (!qword_1011B1258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1258);
  }

  return result;
}

uint64_t sub_100B03CCC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

__n128 CAPackageDefinition.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
  result = *(v1 + 56);
  *(a1 + 32) = result;
  return result;
}

__n128 NowPlaying.TrackTitleStackView.Label.Attributes.marquee.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  result = *(a1 + 32);
  *(v1 + 56) = result;
  return result;
}

uint64_t CAPackageDefinition.size.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 80) = result;
  *(v3 + 88) = a2;
  *(v3 + 96) = a3 & 1;
  return result;
}

__n128 CAPackageDefinition.init(name:bundle:transform:states:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a4 + 16);
  *(a6 + 24) = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = v6;
  result = *(a4 + 32);
  *(a6 + 56) = result;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 72) = a5;
  *(a6 + 96) = 1;
  return result;
}

double CAPackageDefinition.scaled(byX:y:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  v5 = *(v3 + 56);
  v6 = *(v3 + 64);
  v21 = *v3;
  v22 = *(v3 + 16);
  v20[0] = *(v3 + 72);
  *(v20 + 9) = *(v3 + 81);
  v13 = *(v3 + 40);
  v15 = *(v3 + 24);
  CGAffineTransformMakeScale(&t1, a2, a3);
  v7 = *&t1.a;
  v8 = *&t1.c;
  v9 = *&t1.tx;
  *&t1.a = v15;
  *&t1.c = v13;
  t1.tx = v5;
  t1.ty = v6;
  *&t2.a = v7;
  *&t2.c = v8;
  *&t2.tx = v9;
  CGAffineTransformConcat(&v18, &t1, &t2);
  tx = v18.tx;
  ty = v18.ty;
  v14 = *&v18.c;
  v16 = *&v18.a;
  sub_100B03E90(v3, &t1);
  *a1 = v21;
  *(a1 + 16) = v22;
  *(a1 + 40) = v14;
  *(a1 + 24) = v16;
  *(a1 + 56) = tx;
  *(a1 + 64) = ty;
  *(a1 + 72) = v20[0];
  result = *(v20 + 9);
  *(a1 + 81) = *(v20 + 9);
  return result;
}

__n128 CAPackageDefinition.with(size:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, __n128 *a4@<X8>)
{
  v8 = v4[3];
  v16 = v4[2];
  v17 = v8;
  v18 = v4[4];
  v9 = v4[1];
  v14 = *v4;
  v15 = v9;
  v10 = a3 & 1;
  v13[0] = a3 & 1;
  sub_100B03E90(v4, v13);
  v11 = v17;
  a4[2] = v16;
  a4[3] = v11;
  a4[4] = v18;
  result = v15;
  *a4 = v14;
  a4[1] = result;
  a4[5].n128_u64[0] = a1;
  a4[5].n128_u64[1] = a2;
  a4[6].n128_u8[0] = v10;
  return result;
}

uint64_t sub_100B03F5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t sub_100B03FC8()
{

  return swift_deallocClassInstance();
}

id static CAPackageDefinition.skipBackward.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v6 = qword_10121B340;
  CGAffineTransformMakeScale(&v7, -1.0, 1.0);
  v2 = *&v7.a;
  v3 = *&v7.c;
  v4 = *&v7.tx;
  *a1 = 0x4264726177726F46;
  *(a1 + 8) = 0xEF647261776B6361;
  *(a1 + 16) = v6;
  *(a1 + 24) = v2;
  *(a1 + 40) = v3;
  *(a1 + 56) = v4;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = &off_1010E0998;
  *(a1 + 96) = 1;

  return v6;
}

uint64_t _s11MusicCoreUI19CAPackageDefinitionV23__derived_struct_equalsySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
    if (static NSObject.== infix(_:_:)() & 1) != 0 && (static CGAffineTransform.== infix(_:_:)() & 1) != 0 && (sub_100B6BF90(*(a1 + 9), *(a2 + 72)))
    {
      if (a1[12])
      {
        if (*(a2 + 96))
        {
          return 1;
        }
      }

      else if ((*(a2 + 96) & 1) == 0 && a1[10] == *(a2 + 80) && a1[11] == *(a2 + 88))
      {
        return 1;
      }
    }
  }

  return 0;
}

__n128 sub_100B0424C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100B04278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id CoreAnimationPackageView.init(definition:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = 0;
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = 0;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  v5 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v5;
  v4[96] = *(a1 + 96);
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v6;
  v7 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v7;
  sub_100B03E90(a1, v11);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CoreAnimationPackageView();
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100B04B98();
  CoreAnimationPackageView.reset()();
  sub_100009F78(0, &unk_1011B7AC0, UITraitCollection_ptr);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_10002A428(a1);

  return v8;
}

double sub_100B044E4(uint64_t *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v5 = *(v4 + 5);
  *&v27[48] = *(v4 + 4);
  v28 = v5;
  v29 = v4[96];
  v6 = *(v4 + 1);
  v26 = *v4;
  *v27 = v6;
  v7 = *(v4 + 3);
  *&v27[16] = *(v4 + 2);
  *&v27[32] = v7;
  v8 = *a1;
  v9 = a1[1];
  if (v26 == *a1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
    sub_100B03E90(&v26, v16);
    if (static NSObject.== infix(_:_:)() & 1) != 0 && (v16[0] = *&v27[8], v16[1] = *&v27[24], v16[2] = *&v27[40], v10 = *(a1 + 5), v20 = *(a1 + 3), v21 = v10, v22 = *(a1 + 7), (static CGAffineTransform.== infix(_:_:)()))
    {
      v11 = sub_100B6BF90(*&v27[56], a1[9]);
      sub_10002A428(&v26);
      if (v11)
      {
        if (v29)
        {
          if (a1[12])
          {
            return result;
          }
        }

        else if ((a1[12] & 1) == 0 && *&v28 == *(a1 + 10))
        {
          result = *(&v28 + 1);
          if (*(&v28 + 1) == *(a1 + 11))
          {
            return result;
          }
        }
      }
    }

    else
    {
      sub_10002A428(&v26);
    }
  }

  v13 = *v4 == *&v8 && *(v4 + 1) == v9;
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_100B04B98();
  }

  v14 = *(v4 + 40);
  v23 = *(v4 + 24);
  v24 = v14;
  v25 = *(v4 + 56);
  v15 = *(a1 + 5);
  v17 = *(a1 + 3);
  v18 = v15;
  v19 = *(a1 + 7);
  if ((static CGAffineTransform.== infix(_:_:)() & 1) == 0)
  {
    [v2 setNeedsLayout];
  }

  CoreAnimationPackageView.reset()();
  return result;
}

__n128 CoreAnimationPackageView.definition.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition);
  swift_beginAccess();
  v4 = v3[5];
  v15 = v3[4];
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v6 = v3[3];
  v13 = v3[2];
  v14 = v6;
  sub_100B03E90(&v11, &v10);
  v7 = v16;
  *(a1 + 64) = v15;
  *(a1 + 80) = v7;
  *(a1 + 96) = v17;
  v8 = v12;
  *a1 = v11;
  *(a1 + 16) = v8;
  result = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = result;
  return result;
}

uint64_t CoreAnimationPackageView.definition.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v15 = *(v3 + 64);
  v16 = v4;
  v17 = *(v3 + 96);
  v5 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v5;
  v6 = *(v3 + 48);
  v13 = *(v3 + 32);
  v14 = v6;
  v18[0] = v12[0];
  v18[1] = v5;
  v18[2] = v13;
  v18[3] = v6;
  v18[4] = v15;
  v18[5] = v4;
  v19 = v17;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v8;
  v9 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v9;
  sub_100B03E90(v12, v11);
  sub_100B03E90(a1, v11);
  sub_10002A428(v18);
  sub_100B044E4(v12);
  sub_10002A428(v12);
  return sub_10002A428(a1);
}

void (*CoreAnimationPackageView.definition.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x368uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v3 + 312);
  *(v3 + 856) = v1;
  v6 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  *(v3 + 864) = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  *(v4 + 16) = v7[1];
  *(v4 + 32) = v9;
  *v4 = v8;
  v10 = v7[3];
  v11 = v7[4];
  v12 = v7[5];
  *(v4 + 96) = *(v7 + 96);
  *(v4 + 64) = v11;
  *(v4 + 80) = v12;
  *(v4 + 48) = v10;
  v14 = v7[4];
  v13 = v7[5];
  v15 = v7[3];
  *(v4 + 408) = *(v7 + 96);
  v5[4] = v14;
  v5[5] = v13;
  v5[3] = v15;
  v16 = *v7;
  v17 = v7[2];
  v5[1] = v7[1];
  v5[2] = v17;
  *v5 = v16;
  sub_100B03E90(v4, v4 + 416);
  return sub_100B0495C;
}

void sub_100B0495C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 312;
  v4 = *a1 + 520;
  v5 = (*(v2 + 856) + *(v2 + 864));
  v6 = *(*a1 + 328);
  if (a2)
  {
    *(v2 + 624) = *v3;
    *(v2 + 640) = v6;
    *(v2 + 720) = *(v3 + 96);
    v7 = *(v3 + 80);
    *(v2 + 688) = *(v3 + 64);
    *(v2 + 704) = v7;
    v8 = *(v3 + 48);
    v10 = *v3;
    v9 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v2 + 656) = v11;
    *(v2 + 672) = v8;
    v12 = *v5;
    v13 = v5[1];
    *(v2 + 136) = v5[2];
    *(v2 + 120) = v13;
    *(v2 + 104) = v12;
    v14 = v5[3];
    v15 = v5[4];
    v16 = v5[5];
    *(v2 + 200) = *(v5 + 96);
    *(v2 + 184) = v16;
    *(v2 + 168) = v15;
    *(v2 + 152) = v14;
    v17 = *v5;
    v18 = v5[2];
    *(v4 + 16) = v5[1];
    *(v4 + 32) = v18;
    *v4 = v17;
    v19 = v5[3];
    v20 = v5[5];
    v21 = *(v5 + 96);
    *(v4 + 64) = v5[4];
    *(v4 + 80) = v20;
    *(v4 + 48) = v19;
    *(v4 + 96) = v21;
    v5[1] = v9;
    v5[2] = v11;
    *v5 = v10;
    v22 = *(v3 + 48);
    v23 = *(v3 + 64);
    v24 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v23;
    v5[5] = v24;
    v5[3] = v22;
    sub_100B03E90(v2 + 624, v2 + 728);
    sub_100B03E90(v2 + 624, v2 + 728);
    sub_100B03E90(v2 + 104, v2 + 728);
    sub_10002A428(v4);
    sub_100B044E4((v2 + 104));
    sub_10002A428(v2 + 104);
    sub_10002A428(v2 + 624);
    v25 = *(v3 + 80);
    *(v2 + 480) = *(v3 + 64);
    *(v2 + 496) = v25;
    *(v2 + 512) = *(v3 + 96);
    v26 = *(v3 + 16);
    *(v2 + 416) = *v3;
    *(v2 + 432) = v26;
    v27 = *(v3 + 48);
    *(v2 + 448) = *(v3 + 32);
    *(v2 + 464) = v27;
    v28 = v2 + 416;
  }

  else
  {
    *v4 = *v3;
    *(v4 + 16) = v6;
    *(v4 + 96) = *(v3 + 96);
    v29 = *(v3 + 80);
    *(v4 + 64) = *(v3 + 64);
    *(v4 + 80) = v29;
    v30 = *(v3 + 48);
    v32 = *v3;
    v31 = *(v3 + 16);
    v33 = *(v3 + 32);
    *(v4 + 32) = v33;
    *(v4 + 48) = v30;
    v34 = *v5;
    v35 = v5[2];
    *(v2 + 224) = v5[1];
    *(v2 + 240) = v35;
    *(v2 + 208) = v34;
    v36 = v5[3];
    v37 = v5[4];
    v38 = v5[5];
    *(v2 + 304) = *(v5 + 96);
    *(v2 + 272) = v37;
    *(v2 + 288) = v38;
    *(v2 + 256) = v36;
    v39 = *v5;
    v40 = v5[2];
    *(v2 + 432) = v5[1];
    *(v2 + 448) = v40;
    *(v2 + 416) = v39;
    v41 = v5[3];
    v42 = v5[5];
    v43 = *(v5 + 96);
    *(v2 + 480) = v5[4];
    *(v2 + 496) = v42;
    *(v2 + 464) = v41;
    *(v2 + 512) = v43;
    v5[1] = v31;
    v5[2] = v33;
    *v5 = v32;
    v44 = *(v3 + 48);
    v45 = *(v3 + 64);
    v46 = *(v3 + 80);
    *(v5 + 96) = *(v3 + 96);
    v5[4] = v45;
    v5[5] = v46;
    v5[3] = v44;
    sub_100B03E90(v2 + 208, v2 + 624);
    sub_100B03E90(v4, v2 + 624);
    sub_10002A428(v2 + 416);
    sub_100B044E4((v2 + 208));
    sub_10002A428(v2 + 208);
    v28 = v4;
  }

  sub_10002A428(v28);

  free(v2);
}

void sub_100B04B98()
{
  v1 = v0;
  sub_100009F78(0, &qword_1011B1410, CAPackage_ptr);
  v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v51[4] = *(v2 + 4);
  v51[5] = v3;
  v52 = v2[96];
  v4 = *(v2 + 1);
  v51[0] = *v2;
  v51[1] = v4;
  v5 = *(v2 + 3);
  v51[2] = *(v2 + 2);
  v51[3] = v5;
  sub_100B03E90(v51, v45);
  v6 = CAPackage.init(definition:)(v51);
  v26 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package] = v6;
  v27 = v6;

  v28 = [v27 rootLayer];
  if (v28)
  {
    v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer] = v28;
    v30 = v28;
    [v29 removeFromSuperlayer];

    v31 = [objc_allocWithZone(CAStateController) initWithLayer:v30];
    v32 = *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController];
    *&v1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController] = v31;

    [v30 removeFromSuperlayer];
    [v30 setGeometryFlipped:{objc_msgSend(v27, "isGeometryFlipped")}];
    v33 = [v1 layer];
    [v33 addSublayer:v30];

    v34 = [v1 layer];
    [v34 bounds];

    CGRect.center.getter();
    [v30 setPosition:?];
    sub_100B06030();
  }

  else
  {
    sub_100B06C10();
    v35 = swift_allocError();
    swift_willThrow();

    if (qword_1011B04C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_10121B560);
    v8 = v1;
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136446466;
      v13 = *(v2 + 3);
      v14 = *(v2 + 5);
      v48 = *(v2 + 4);
      v49 = v14;
      v15 = *(v2 + 1);
      v45[0] = *v2;
      v45[1] = v15;
      v16 = *(v2 + 3);
      v18 = *v2;
      v17 = *(v2 + 1);
      v46 = *(v2 + 2);
      v47 = v16;
      v19 = *(v2 + 5);
      v41 = v48;
      v42 = v19;
      v37 = v18;
      v38 = v17;
      v44[0] = v12;
      v50 = v2[96];
      v43 = v2[96];
      v39 = v46;
      v40 = v13;
      sub_100B03E90(v45, v36);
      v20 = String.init<A>(describing:)();
      v22 = sub_100010744(v20, v21, v44);

      *(v11 + 4) = v22;
      *(v11 + 12) = 2082;
      *&v37 = v35;
      swift_errorRetain();
      sub_10010FC20(&qword_1011B62D0, &qword_100F06280);
      v23 = String.init<A>(describing:)();
      v25 = sub_100010744(v23, v24, v44);

      *(v11 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to load CAPackage with definition=%{public}s. Error=%{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_100B05000(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    if (a2)
    {
      v8 = v7 == a1 && v6 == a2;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return;
      }
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v10 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v10)
    {
      return;
    }

    v11 = v10;

    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v9 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    v13 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
    if (!v13)
    {
      return;
    }

    v11 = v13;
    v12 = 0;
  }

  v14 = [v11 stateWithName:v12];

  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v15)
    {
      v16 = *v9;
      v17 = objc_opt_self();
      v18 = v16;
      v19 = v15;
      v20 = v14;
      v21 = [v17 areAnimationsEnabled];
      v22 = 0.0;
      if (v21)
      {
        *&v22 = 1.0;
      }

      [v19 setState:v20 ofLayer:v18 transitionSpeed:v22];
    }
  }
}

uint64_t CoreAnimationPackageView.stateName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double CoreAnimationPackageView.stateName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_100B05000(v6, v7);

  return result;
}

void (*CoreAnimationPackageView.stateName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_100B05318;
}

void sub_100B05318(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_100B05000(v9, v8);
  }

  else
  {
    sub_100B05000(v9, v8);
  }

  free(v2);
}

void *CoreAnimationPackageView.foregroundColor.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CoreAnimationPackageView.foregroundColor.setter(id a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v4)
    {
      sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
      a1 = a1;
      v5 = v4;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {

        v4 = v5;
LABEL_9:

        return;
      }
    }

    else
    {
      a1 = a1;
    }

LABEL_8:
    sub_100B06030();

    goto LABEL_9;
  }

  if (v4)
  {
    goto LABEL_8;
  }
}

void (*CoreAnimationPackageView.foregroundColor.modify(uint64_t *a1))(id a1, char a2)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_100B05570;
}

void sub_100B05570(id a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
        v5 = v3;
        v9 = v8;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    sub_100B06030();

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  CoreAnimationPackageView.foregroundColor.setter(v3);
  v5 = v2[3];
LABEL_11:

LABEL_12:

  free(v2);
}

Swift::Void __swiftcall CoreAnimationPackageView.reset()()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
  swift_beginAccess();
  v2 = *(v1 + 72);
  if (v2[2])
  {
    v4 = v2[4];
    v3 = v2[5];
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v5 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = v4;
  v5[1] = v3;
  sub_100B05000(v6, v7);

  v8 = *(v1 + 72);
  v9 = *(v8 + 16);
  if (v9)
  {
    sub_100B064D0(v8, v8 + 32, 1, (2 * v9) | 1);
    v8 = v11;
  }

  else
  {
  }

  v10 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  *(v0 + v10) = v8;
}

Swift::Void __swiftcall CoreAnimationPackageView.set(stateName:forSublayer:)(Swift::String stateName, Swift::String forSublayer)
{
  v3 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer);
  if (!v3)
  {
    return;
  }

  object = forSublayer._object;
  countAndFlagsBits = forSublayer._countAndFlagsBits;
  v6 = [v3 sublayers];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  sub_100009F78(0, &qword_1011B13D8, CALayer_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v2;
  if (v8 >> 62)
  {
LABEL_32:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_33:

    return;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v11 = *(v8 + 8 * v10 + 32);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_19;
      }
    }

    v31 = v11;
    v13 = [v11 name];
    if (!v13)
    {
      goto LABEL_6;
    }

    v14 = countAndFlagsBits;
    v15 = object;
    v16 = v13;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    object = v15;
    if (v17 == v14 && v19 == v15)
    {
      break;
    }

    countAndFlagsBits = v14;
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_22;
    }

LABEL_6:

    ++v10;
    if (v12 == v9)
    {
      goto LABEL_33;
    }
  }

LABEL_22:

  v22 = String._bridgeToObjectiveC()();
  v23 = [v31 stateWithName:v22];

  if (v23)
  {
    v24 = *(v30 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController);
    if (v24)
    {
      v25 = objc_opt_self();
      v26 = v24;
      v27 = v23;
      v31 = v31;
      v28 = [v25 areAnimationsEnabled];
      v29 = 0.0;
      if (v28)
      {
        *&v29 = 1.0;
      }

      [v26 setState:v27 ofLayer:v31 transitionSpeed:v29];
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.advanceState()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates;
  swift_beginAccess();
  if (!*(*(v0 + v1) + 16))
  {
    v2 = v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition;
    swift_beginAccess();
    *(v0 + v1) = *(v2 + 72);
  }

  swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3[2])
  {
    v5 = v3[4];
    v4 = v3[5];

    sub_100B06B48(0, 1);
    swift_endAccess();
    v6 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];
    *v6 = v5;
    v6[1] = v4;
    sub_100B05000(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.startCyclingThroughStates(with:)(Swift::Double with)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  v4 = *(v1 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer);
  if (!v4 || ([v4 timeInterval], v5 != with))
  {
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = sub_100B06C08;
    v12[5] = v7;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10027D328;
    v12[3] = &unk_1010E1A40;
    v8 = _Block_copy(v12);

    v9 = [v6 scheduledTimerWithTimeInterval:1 repeats:v8 block:with];
    _Block_release(v8);
    v10 = *(v1 + v3);
    *(v1 + v3) = v9;
    v11 = v9;
    [v10 invalidate];
  }
}

void sub_100B05CE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    CoreAnimationPackageView.advanceState()();
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.stopCyclingThroughStates()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer;
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer))
  {
    CoreAnimationPackageView.reset()();
    v2 = *(v0 + v1);
    v3 = v2;
    *(v0 + v1) = 0;
    [v2 invalidate];
  }
}

Swift::Void __swiftcall CoreAnimationPackageView.layoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for CoreAnimationPackageView();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer];
  if (v1)
  {
    v2 = &v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_definition];
    swift_beginAccess();
    if (v2[96])
    {
      v3 = v1;
      v4 = [v0 layer];
      [v4 bounds];
      v6 = v5;
      v8 = v7;
    }

    else
    {
      v6 = *(v2 + 10);
      v8 = *(v2 + 11);
      v9 = v1;
    }

    [v1 bounds];
    x = v22.origin.x;
    y = v22.origin.y;
    width = v22.size.width;
    height = v22.size.height;
    v14 = CGRectGetWidth(v22);
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (v14 / CGRectGetHeight(v23) >= v6 / v8)
    {
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v15 = v8 / CGRectGetHeight(v25);
    }

    else
    {
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v15 = v6 / CGRectGetWidth(v24);
    }

    CGAffineTransformMakeScale(&v18, v15, v15);
    v16 = *(v2 + 40);
    *&t2.a = *(v2 + 24);
    *&t2.c = v16;
    *&t2.tx = *(v2 + 56);
    CGAffineTransformConcat(&v19, &v18, &t2);
    t2 = v19;
    CATransform3DMakeAffineTransform(&v18, &t2);
    [v1 setTransform:&v18];
    v17 = [v0 layer];
    [v17 bounds];

    CGRect.center.getter();
    [v1 setPosition:?];
  }
}

void sub_100B06030()
{
  v1 = *&v0[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          sub_10000DD18(v10, v31);
          sub_10000DD18(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = String._bridgeToObjectiveC()();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              sub_100009F78(0, &qword_1011B13D8, CALayer_ptr);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              sub_100011EC0(v30);
            }
          }

          ++v9;
          sub_10000959C(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

id CoreAnimationPackageView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoreAnimationPackageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100B064D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10010FC20(&qword_1011B5F90, &qword_100F06EA0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100B065A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_10010FC20(&qword_1011B1408, &unk_100EFFCF0);
      v7 = *(type metadata accessor for PlaylistCurators.Curator(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for PlaylistCurators.Curator(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_100B0674C(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package];
  if (v1)
  {
    v2 = a1;
    v3 = OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v1;
      v26 = v4;
      v6 = [v5 publishedObjectNames];
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        v11 = &type metadata for String;
        v24 = v5;
        v25 = v2;
        while (v9 < *(v7 + 16))
        {
          sub_10000DD18(v10, v31);
          sub_10000DD18(v31, v30);
          if (swift_dynamicCast())
          {
            v12 = String._bridgeToObjectiveC()();

            v13 = [v5 publishedObjectWithName:v12];

            if (v13)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v28 = 0u;
              v29 = 0u;
            }

            v30[0] = v28;
            v30[1] = v29;
            if (*(&v29 + 1))
            {
              sub_100009F78(0, &qword_1011B13D8, CALayer_ptr);
              if (swift_dynamicCast())
              {
                v14 = v11;
                objc_opt_self();
                v15 = swift_dynamicCastObjCClass();
                if (v15)
                {
                  v16 = v15;
                  v17 = [v2 traitCollection];
                  v18 = [v26 resolvedColorWithTraitCollection:v17];

                  v19 = [v18 CGColor];
                  [v16 setFillColor:v19];

                  v2 = v25;
                }

                else
                {
                  v20 = v27;
                  v21 = [v2 traitCollection];
                  v22 = [v26 resolvedColorWithTraitCollection:v21];

                  v23 = [v22 CGColor];
                  [v20 setBackgroundColor:v23];

                  v2 = v25;
                }

                v11 = v14;
                v5 = v24;
              }
            }

            else
            {
              sub_100011EC0(v30);
            }
          }

          ++v9;
          sub_10000959C(v31);
          v10 += 32;
          if (v8 == v9)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_18:
      }
    }
  }
}

void sub_100B06A8C()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_foregroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateAnimationTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_currentStates) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_package) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_packageLayer) = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI24CoreAnimationPackageView_stateController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100B06B48(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100BF9974(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_10099CEBC(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_100B06C10()
{
  result = qword_1011B1418;
  if (!qword_1011B1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1418);
  }

  return result;
}

unint64_t sub_100B06C78()
{
  result = qword_1011B1420;
  if (!qword_1011B1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1420);
  }

  return result;
}

id sub_100B06CCC()
{
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v1 = qword_10121B340;
  static NSBundle.musicCoreUIBundle = qword_10121B340;

  return v1;
}

uint64_t *NSBundle.musicCoreUIBundle.unsafeMutableAddressor()
{
  if (qword_1011B04B8 != -1)
  {
    swift_once();
  }

  return &static NSBundle.musicCoreUIBundle;
}

id static NSBundle.musicCoreUIBundle.getter()
{
  if (qword_1011B04B8 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle.musicCoreUIBundle;

  return v1;
}

double MusicLibrary.ActionableState.updateSymbolConfiguration(from:)(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = a3;
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v7 = &v22 - v6;
  v8 = type metadata accessor for SymbolButton.Configuration(0);
  *(a1 + v8[13]) = vdupq_n_s64(0x4040000000000000uLL);
  static UIView.Corner.rounded.getter();
  v9 = type metadata accessor for UIView.Corner();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_100B070E4(v7, a1 + v8[9]);
  v10 = a1 + v8[10];
  if (*v10)
  {
    v11 = *&UIEdgeInsetsZero.bottom;
    *(v10 + 8) = *&UIEdgeInsetsZero.top;
    *(v10 + 24) = v11;
  }

  *(a1 + 112) = 0;
  objc_storeStrong((a1 + 24), UIFontTextStyleBody);
  *(a1 + 48) = xmmword_100EFDB70;
  if (!(v5 >> 14))
  {

    *a1 = xmmword_100EFDBC0;
    *(a1 + 48) = 7;
    goto LABEL_20;
  }

  if (v5 >> 14 != 1)
  {
    if (a2 | v5 ^ 0x8000)
    {
      if (v5 == 0x8000 && a2 == 1)
      {

        v17 = xmmword_100EFDB90;
      }

      else
      {

        v17 = xmmword_100EFDB80;
      }

      goto LABEL_19;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
LABEL_20:
    sub_100B07154(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48));
    *(v10 + 48) = 0;
    result = 0.0;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *v10 = 0u;
    return result;
  }

  if ((v5 & 0x100) != 0)
  {

    v17 = xmmword_100EFDBA0;
LABEL_19:
    *a1 = v17;
    goto LABEL_20;
  }

  v12 = *v10;
  if (*v10 && (type metadata accessor for CircularProgressView(), (v13 = swift_dynamicCastClass()) != 0))
  {
    v14 = v13;
    v15 = v12;
  }

  else
  {
    v19 = objc_allocWithZone(type metadata accessor for CircularProgressView());
    v14 = CircularProgressView.init(size:)(26.0, 26.0);
  }

  CircularProgressView.setState(_:animated:)(a2, v5 & 1, 1);
  sub_100282F24(*(a1 + 200), *(a1 + 208), *(a1 + 216), *(a1 + 224));
  *(a1 + 200) = xmmword_100EBCEE0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;

  *a1 = xmmword_100EFDBB0;
  *(a1 + 56) = 1;
  v20 = UIFontTextStyleFootnote;

  *(a1 + 24) = v20;
  sub_100B07154(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48));
  *v10 = v14;
  v21 = *&UIEdgeInsetsZero.top;
  *(v10 + 24) = *&UIEdgeInsetsZero.bottom;
  *(v10 + 8) = v21;
  result = 1.0;
  *(v10 + 40) = xmmword_100EBEF40;
  return result;
}

uint64_t sub_100B070E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100B07154(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a1)
  {
  }
}

uint64_t sub_100B07194()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_10121B560);
  sub_1000060E4(v0, qword_10121B560);
  sub_100005B7C();
  OS_os_log.init(musicCategory:)(0x726F43636973754DLL, 0xEB00000000495565);
  return Logger.init(_:)();
}

uint64_t ArtworkImageViewModelAttributeProviding.cropStyle.getter@<X0>(uint64_t a2@<X8>)
{
  static Artwork.CropStyle.boundedBox.getter();
  v3 = type metadata accessor for Artwork.CropStyle();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_100B07280@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &unk_1011B55F0, &unk_100EFFDC0);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    (*(v9 + 16))(a3, v12, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    a2();
    (*(v9 + 8))(v12, v8);
    v17 = type metadata accessor for Artwork.CropStyle();
    (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
    return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }
}

uint64_t sub_100B07524@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Artist();
  v8 = sub_100B07CB4();
  if ((*(v5 + 48))(v3, 1, v4, v8) == 1)
  {
    sub_1000095E8(v3, &unk_1011B55F0, &unk_100EFFDC0);
    v9 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    (*(v5 + 16))(a1, v7, v4);
    v11 = type metadata accessor for ArtworkImage.ViewModel(0);
    v12 = *(v11 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v5 + 8))(v7, v4);
    v13 = type metadata accessor for Artwork.CropStyle();
    (*(*(v13 - 8) + 56))(a1 + v12, 0, 1, v13);
    return (*(*(v11 - 8) + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_100B07794@<X0>(void (*a1)(__n128)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &unk_1011B55F0, &unk_100EFFDC0);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    (*(v9 + 16))(a3, v12, v8);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    a2();
    v17 = type metadata accessor for Artwork.CropStyle();
    (*(*(v17 - 8) + 56))(a3 + v16, 0, 1, v17);
    (*(v9 + 8))(v12, v8);
    return (*(*(v15 - 8) + 56))(a3, 0, 1, v15);
  }
}

uint64_t ArtworkImageViewModelAttributeProviding.artworkViewModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(a1, a2, v10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &unk_1011B55F0, &unk_100EFFDC0);
    v13 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    (*(v9 + 16))(a3, v12, v8);
    v15 = *(a2 + 24);
    v16 = type metadata accessor for ArtworkImage.ViewModel(0);
    v15(a1, a2);
    (*(v9 + 8))(v12, v8);
    return (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
  }
}

double sub_100B07CB4()
{
  sub_10010FC20(&qword_1011B1440, "Z*\n");
  swift_allocObject();
  MusicAttributeProperty.init(_:)();
  Artist.subscript.getter();

  return result;
}

uint64_t sub_100B07ED4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Artwork();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  Playlist.artwork.getter();
  sub_1000089F8(v9, v7, &unk_1011B55F0, &unk_100EFFDC0);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    sub_1000095E8(v9, &unk_1011B55F0, &unk_100EFFDC0);
    v10 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    (*(v3 + 32))(v5, v7, v2);
    (*(v3 + 16))(a1, v5, v2);
    v12 = type metadata accessor for ArtworkImage.ViewModel(0);
    v13 = *(v12 + 20);
    static Artwork.CropStyle.squareCenterCrop.getter();
    (*(v3 + 8))(v5, v2);
    sub_1000095E8(v9, &unk_1011B55F0, &unk_100EFFDC0);
    v14 = type metadata accessor for Artwork.CropStyle();
    (*(*(v14 - 8) + 56))(a1 + v13, 0, 1, v14);
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }
}

uint64_t Playlist.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  __chkstk_darwin();
  v52 = &v50 - v1;
  v2 = type metadata accessor for Artwork();
  v55 = *(v2 - 8);
  v56 = v2;
  __chkstk_darwin();
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v50 - v4;
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v50 - v7;
  __chkstk_darwin();
  v10 = &v50 - v9;
  __chkstk_darwin();
  v12 = &v50 - v11;
  sub_10010FC20(&qword_1011B5930, &qword_100EFDE70);
  __chkstk_darwin();
  v53 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v50 - v14;
  sub_10010FC20(&qword_1011B11C8, &qword_100EFFAD0);
  __chkstk_darwin();
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v50 - v18;
  Playlist.variant.getter();
  v20 = type metadata accessor for Playlist.Variant();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    goto LABEL_2;
  }

  sub_1000089F8(v19, v17, &qword_1011B11C8, &qword_100EFFAD0);
  v23 = (*(v21 + 88))(v17, v20);
  if (v23 != enum case for Playlist.Variant.regular(_:) && v23 != enum case for Playlist.Variant.smart(_:))
  {
    if (v23 == enum case for Playlist.Variant.genius(_:))
    {
      goto LABEL_2;
    }

    if (v23 == enum case for Playlist.Variant.favoriteSongs(_:))
    {
      goto LABEL_7;
    }

    if (v23 == enum case for Playlist.Variant.folder(_:))
    {
      goto LABEL_15;
    }

    if (v23 != enum case for Playlist.Variant.subscribed(_:))
    {
      if (v23 != enum case for Playlist.Variant.admin(_:))
      {
        if (v23 == enum case for Playlist.Variant.personalMix(_:))
        {
          Playlist.editorialArtwork.getter();
          sub_1000089F8(v8, v6, &unk_1011B55F0, &unk_100EFFDC0);
          v39 = v55;
          v38 = v56;
          if ((*(v55 + 48))(v6, 1, v56) == 1)
          {
            sub_1000095E8(v8, &unk_1011B55F0, &unk_100EFFDC0);
            v40 = type metadata accessor for ArtworkImage.ViewModel(0);
            v41 = v53;
            (*(*(v40 - 8) + 56))(v53, 1, 1, v40);
          }

          else
          {
            v42 = *(v39 + 32);
            v43 = v54;
            v42(v54, v6, v38);
            v44 = v51;
            (*(v39 + 16))(v51, v43, v38);
            v45 = v52;
            static Artwork.CropStyle.featuredContentCrop170T100B.getter();
            (*(v39 + 8))(v43, v38);
            sub_1000095E8(v8, &unk_1011B55F0, &unk_100EFFDC0);
            v46 = type metadata accessor for Artwork.CropStyle();
            (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
            v41 = v53;
            v42(v53, v44, v38);
            v40 = type metadata accessor for ArtworkImage.ViewModel(0);
            sub_100B08B34(v45, v41 + *(v40 + 20));
            (*(*(v40 - 8) + 56))(v41, 0, 1, v40);
          }

          type metadata accessor for ArtworkImage.ViewModel(0);
          v47 = *(v40 - 8);
          v48 = *(v47 + 48);
          if (v48(v41, 1, v40) == 1)
          {
            sub_100B07ED4(v57);
            if (v48(v41, 1, v40) != 1)
            {
              sub_1000095E8(v41, &qword_1011B5930, &qword_100EFDE70);
            }
          }

          else
          {
            v49 = v57;
            sub_100568BA8(v41, v57);
            (*(v47 + 56))(v49, 0, 1, v40);
          }

          goto LABEL_16;
        }

        (*(v21 + 8))(v17, v20);
LABEL_15:
        v37 = type metadata accessor for ArtworkImage.ViewModel(0);
        (*(*(v37 - 8) + 56))(v57, 1, 1, v37);
LABEL_16:
        v34 = &qword_1011B11C8;
        v35 = &qword_100EFFAD0;
        v36 = v19;
        return sub_1000095E8(v36, v34, v35);
      }

LABEL_2:
      sub_1000095E8(v19, &qword_1011B11C8, &qword_100EFFAD0);
      return sub_100B07ED4(v57);
    }
  }

LABEL_7:
  sub_1000095E8(v19, &qword_1011B11C8, &qword_100EFFAD0);
  sub_100B07ED4(v15);
  v24 = type metadata accessor for ArtworkImage.ViewModel(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  if (v26(v15, 1, v24) != 1)
  {
    v31 = v57;
    sub_100568BA8(v15, v57);
    return (*(v25 + 56))(v31, 0, 1, v24);
  }

  Playlist.tracksTiledArtwork.getter();
  sub_1000089F8(v12, v10, &unk_1011B55F0, &unk_100EFFDC0);
  v28 = v55;
  v27 = v56;
  if ((*(v55 + 48))(v10, 1, v56) == 1)
  {
    sub_1000095E8(v12, &unk_1011B55F0, &unk_100EFFDC0);
    v29 = 1;
    v30 = v57;
  }

  else
  {
    v32 = v54;
    (*(v28 + 32))(v54, v10, v27);
    v30 = v57;
    (*(v28 + 16))(v57, v32, v27);
    v53 = *(v24 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v28 + 8))(v32, v27);
    sub_1000095E8(v12, &unk_1011B55F0, &unk_100EFFDC0);
    v33 = type metadata accessor for Artwork.CropStyle();
    (*(*(v33 - 8) + 56))(v30 + v53, 0, 1, v33);
    v29 = 0;
  }

  (*(v25 + 56))(v30, v29, 1, v24);
  result = (v26)(v15, 1, v24);
  if (result != 1)
  {
    v34 = &qword_1011B5930;
    v35 = &qword_100EFDE70;
    v36 = v15;
    return sub_1000095E8(v36, v34, v35);
  }

  return result;
}

uint64_t sub_100B08B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Playlist.defaultCropStyle.getter@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v22 - v4;
  sub_10010FC20(&qword_1011B11C8, &qword_100EFFAD0);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v22 - v8;
  Playlist.variant.getter();
  v10 = type metadata accessor for Playlist.Variant();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_2;
  }

  sub_1000089F8(v9, v7, &qword_1011B11C8, &qword_100EFFAD0);
  v12 = (*(v11 + 88))(v7, v10);
  if (v12 == enum case for Playlist.Variant.regular(_:) || v12 == enum case for Playlist.Variant.smart(_:))
  {
    goto LABEL_8;
  }

  if (v12 == enum case for Playlist.Variant.genius(_:))
  {
LABEL_2:
    sub_1000095E8(v9, &qword_1011B11C8, &qword_100EFFAD0);
    goto LABEL_10;
  }

  if (v12 == enum case for Playlist.Variant.favoriteSongs(_:))
  {
    goto LABEL_8;
  }

  if (v12 == enum case for Playlist.Variant.folder(_:))
  {
    goto LABEL_15;
  }

  if (v12 == enum case for Playlist.Variant.subscribed(_:))
  {
LABEL_8:
    sub_1000095E8(v9, &qword_1011B11C8, &qword_100EFFAD0);
    Playlist.artwork.getter();
    v14 = type metadata accessor for Artwork();
    v15 = (*(*(v14 - 8) + 48))(v5, 1, v14);
    sub_1000095E8(v5, &unk_1011B55F0, &unk_100EFFDC0);
    if (v15 == 1)
    {
      static Artwork.CropStyle.boundedBox.getter();
LABEL_11:
      v16 = type metadata accessor for Artwork.CropStyle();
      return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
    }

LABEL_10:
    static Artwork.CropStyle.squareCenterCrop.getter();
    goto LABEL_11;
  }

  if (v12 == enum case for Playlist.Variant.admin(_:))
  {
    goto LABEL_2;
  }

  if (v12 == enum case for Playlist.Variant.personalMix(_:))
  {
    Playlist.editorialArtwork.getter();
    v19 = type metadata accessor for Artwork();
    v20 = (*(*(v19 - 8) + 48))(v3, 1, v19);
    sub_1000095E8(v3, &unk_1011B55F0, &unk_100EFFDC0);
    if (v20 == 1)
    {
      static Artwork.CropStyle.squareCenterCrop.getter();
    }

    else
    {
      static Artwork.CropStyle.featuredContentCrop170T100B.getter();
    }

    v21 = type metadata accessor for Artwork.CropStyle();
    (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
    return sub_1000095E8(v9, &qword_1011B11C8, &qword_100EFFAD0);
  }

  (*(v11 + 8))(v7, v10);
LABEL_15:
  v18 = type metadata accessor for Artwork.CropStyle();
  (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
  return sub_1000095E8(v9, &qword_1011B11C8, &qword_100EFFAD0);
}

uint64_t RecentlyAddedMusicItem.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = type metadata accessor for UploadedVideo();
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin();
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MusicVideo();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin();
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TVSeason();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin();
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Playlist();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicMovie();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Album();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RecentlyAddedMusicItem();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin();
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v45, v18, v20);
  v23 = (*(v19 + 88))(v22, v18);
  if (v23 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v15 + 32))(v17, v22, v14);
    sub_100B07280(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v46);
    return (*(v15 + 8))(v17, v14);
  }

  v25 = v46;
  if (v23 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    (*(v19 + 96))(v22, v18);
    (*(v11 + 32))(v13, v22, v10);
    sub_100B07280(&MusicMovie.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v25);
    return (*(v11 + 8))(v13, v10);
  }

  if (v23 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    (*(v19 + 96))(v22, v18);
    v27 = v42;
    v26 = v43;
    v28 = v44;
    (*(v43 + 32))(v42, v22, v44);
    v29 = &MusicVideo.artwork.getter;
LABEL_7:
    sub_100B07280(v29, &static Artwork.CropStyle.boundedBox.getter, v25);
    return (*(v26 + 8))(v27, v28);
  }

  if (v23 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v19 + 96))(v22, v18);
    v31 = v40;
    v30 = v41;
    (*(v40 + 32))(v9, v22, v41);
    Playlist.artworkViewModel.getter(v25);
    return (*(v31 + 8))(v9, v30);
  }

  else
  {
    if (v23 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      (*(v19 + 96))(v22, v18);
      v27 = v37;
      v26 = v38;
      v28 = v39;
      (*(v38 + 32))(v37, v22, v39);
      v29 = &TVSeason.artwork.getter;
      goto LABEL_7;
    }

    if (v23 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
      (*(v19 + 96))(v22, v18);
      v27 = v34;
      v26 = v35;
      v28 = v36;
      (*(v35 + 32))(v34, v22, v36);
      v29 = &UploadedVideo.artwork.getter;
      goto LABEL_7;
    }

    v32 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v32 - 8) + 56))(v25, 1, 1, v32);
    return (*(v19 + 8))(v22, v18);
  }
}

uint64_t TVEpisode.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_1011B55F0, &unk_100EFFDC0);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v18 - v10;
  TVEpisode.previewArtwork.getter();
  v12 = *(v7 + 48);
  if (v12(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &unk_1011B55F0, &unk_100EFFDC0);
    TVEpisode.artwork.getter();
    if (v12(v3, 1, v6) == 1)
    {
      sub_1000095E8(v3, &unk_1011B55F0, &unk_100EFFDC0);
      v13 = type metadata accessor for ArtworkImage.ViewModel(0);
      return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    (*(v7 + 32))(v9, v3, v6);
    (*(v7 + 16))(a1, v9, v6);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    (*(v7 + 16))(a1, v11, v6);
    v15 = type metadata accessor for ArtworkImage.ViewModel(0);
    v16 = *(v15 + 20);
    static Artwork.CropStyle.boundedBox.getter();
    (*(v7 + 8))(v11, v6);
  }

  v17 = type metadata accessor for Artwork.CropStyle();
  (*(*(v17 - 8) + 56))(a1 + v16, 0, 1, v17);
  return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
}

uint64_t sub_100B09D90@<X0>(uint64_t a2@<X8>)
{
  static Artwork.CropStyle.specificRectangle.getter();
  v3 = type metadata accessor for Artwork.CropStyle();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t sub_100B09E48@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  a1();
  v3 = type metadata accessor for Artwork.CropStyle();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t Track.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MusicVideo();
  v21 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Song();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Track();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v2, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for Track.song(_:))
  {
    (*(v12 + 96))(v15, v11);
    (*(v8 + 32))(v10, v15, v7);
    sub_100B07280(&Song.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
    return (*(v8 + 8))(v10, v7);
  }

  else if (v16 == enum case for Track.musicVideo(_:))
  {
    (*(v12 + 96))(v15, v11);
    v18 = v21;
    (*(v21 + 32))(v6, v15, v4);
    sub_100B07280(&MusicVideo.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, a1);
    return (*(v18 + 8))(v6, v4);
  }

  else
  {
    v19 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t GenericMusicItem.artworkViewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v123 = a1;
  v1 = type metadata accessor for CreditArtist();
  v121 = *(v1 - 8);
  v122 = v1;
  __chkstk_darwin();
  v120 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for SocialProfile();
  v94 = *(v95 - 8);
  __chkstk_darwin();
  v93 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for UploadedVideo();
  v73 = *(v74 - 8);
  __chkstk_darwin();
  v72 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for UploadedAudio();
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v75 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for TVShow();
  v79 = *(v80 - 8);
  __chkstk_darwin();
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for TVSeason();
  v82 = *(v83 - 8);
  __chkstk_darwin();
  v81 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TVEpisode();
  v85 = *(v86 - 8);
  __chkstk_darwin();
  v84 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for RecordLabel();
  v97 = *(v98 - 8);
  __chkstk_darwin();
  v96 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for RadioShow();
  v100 = *(v101 - 8);
  __chkstk_darwin();
  v99 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Station();
  v88 = *(v89 - 8);
  __chkstk_darwin();
  v87 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Song();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v90 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Playlist();
  v103 = *(v104 - 8);
  __chkstk_darwin();
  v102 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicVideo();
  v106 = *(v14 - 8);
  v107 = v14;
  __chkstk_darwin();
  v105 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicMovie();
  v109 = *(v16 - 8);
  v110 = v16;
  __chkstk_darwin();
  v108 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Genre();
  v112 = *(v18 - 8);
  v113 = v18;
  __chkstk_darwin();
  v111 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for EditorialItem();
  v115 = *(v20 - 8);
  v116 = v20;
  __chkstk_darwin();
  v114 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Curator();
  v118 = *(v22 - 8);
  v119 = v22;
  __chkstk_darwin();
  v117 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Artist();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Album();
  v29 = *(v28 - 8);
  __chkstk_darwin();
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for GenericMusicItem();
  v33 = *(v32 - 8);
  __chkstk_darwin();
  v71 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin();
  v37 = &v69 - v36;
  v70 = *(v33 + 16);
  v70(&v69 - v36, v124, v32, v35);
  v38 = (*(v33 + 88))(v37, v32);
  if (v38 == enum case for GenericMusicItem.album(_:))
  {
    (*(v33 + 96))(v37, v32);
    (*(v29 + 32))(v31, v37, v28);
    sub_100B07280(&Album.artwork.getter, &static Artwork.CropStyle.boundedBox.getter, v123);
    return (*(v29 + 8))(v31, v28);
  }

  v40 = v123;
  if (v38 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v33 + 96))(v37, v32);
    (*(v25 + 32))(v27, v37, v24);
    sub_100B07524(v40);
    return (*(v25 + 8))(v27, v24);
  }

  v41 = v37;
  if (v38 == enum case for GenericMusicItem.composer(_:))
  {
    v42 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v120;
    v43 = v121;
    v45 = v122;
    (*(v121 + 32))(v120, v37, v122);
    v46 = &CreditArtist.artwork.getter;
LABEL_14:
    v47 = v46;
    v48 = v40;
LABEL_15:
    sub_100B07280(v47, &static Artwork.CropStyle.boundedBox.getter, v48);
    return (*(v43 + 8))(v44, v45);
  }

  if (v38 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v117;
    v43 = v118;
    v45 = v119;
    (*(v118 + 32))(v117, v37, v119);
    v46 = &Curator.artwork.getter;
    goto LABEL_14;
  }

  if (v38 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v114;
    v43 = v115;
    v45 = v116;
    (*(v115 + 32))(v114, v37, v116);
    v46 = &EditorialItem.artwork.getter;
    goto LABEL_14;
  }

  if (v38 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v111;
    v43 = v112;
    v45 = v113;
    (*(v112 + 32))(v111, v37, v113);
    v49 = &Genre.artwork.getter;
LABEL_23:
    v47 = v49;
    v48 = v40;
    goto LABEL_15;
  }

  if (v38 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v108;
    v43 = v109;
    v45 = v110;
    (*(v109 + 32))(v108, v37, v110);
    v49 = &MusicMovie.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v33 + 96))(v37, v32);
    v44 = v105;
    v43 = v106;
    v45 = v107;
    (*(v106 + 32))(v105, v37, v107);
    v49 = &MusicVideo.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v103;
    v44 = v102;
    v45 = v104;
    (*(v103 + 32))(v102, v37, v104);
    Playlist.artworkViewModel.getter(v40);
    return (*(v43 + 8))(v44, v45);
  }

  if (v38 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v50 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v50 - 8) + 56))(v40, 1, 1, v50);
    return (*(v33 + 8))(v37, v32);
  }

  if (v38 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v100;
    v44 = v99;
    v45 = v101;
    (*(v100 + 32))(v99, v37, v101);
    v49 = &RadioShow.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v33 + 96))(v37, v32);
    v43 = v97;
    v44 = v96;
    v45 = v98;
    (*(v97 + 32))(v96, v37, v98);
    v49 = &RecordLabel.artwork.getter;
    goto LABEL_23;
  }

  if (v38 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v33 + 96))(v37, v32);
    v51 = v94;
    v52 = v93;
    v53 = v95;
    (*(v94 + 32))(v93, v37, v95);
    sub_100B07280(&SocialProfile.artwork.getter, &static Artwork.CropStyle.specificRectangle.getter, v40);
    return (*(v51 + 8))(v52, v53);
  }

  if (v38 == enum case for GenericMusicItem.song(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v91;
    v41 = v90;
    v32 = v92;
    (*(v91 + 32))(v90, v37, v92);
    v54 = &Song.artwork.getter;
LABEL_36:
    v55 = v54;
    v56 = &static Artwork.CropStyle.boundedBox.getter;
LABEL_39:
    sub_100B07280(v55, v56, v40);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.station(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v88;
    v41 = v87;
    v32 = v89;
    (*(v88 + 32))(v87, v37, v89);
    v55 = &Station.artwork.getter;
    v56 = &static Artwork.CropStyle.specificRectangle.getter;
    goto LABEL_39;
  }

  if (v38 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v85;
    v41 = v84;
    v32 = v86;
    (*(v85 + 32))(v84, v37, v86);
    TVEpisode.artworkViewModel.getter(v40);
    return (*(v33 + 8))(v41, v32);
  }

  if (v38 == enum case for GenericMusicItem.tvSeason(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v82;
    v41 = v81;
    v32 = v83;
    (*(v82 + 32))(v81, v37, v83);
    v54 = &TVSeason.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.tvShow(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v79;
    v41 = v78;
    v32 = v80;
    (*(v79 + 32))(v78, v37, v80);
    v54 = &TVShow.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v76;
    v41 = v75;
    v32 = v77;
    (*(v76 + 32))(v75, v37, v77);
    v54 = &UploadedAudio.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v33 + 96))(v37, v32);
    v33 = v73;
    v41 = v72;
    v32 = v74;
    (*(v73 + 32))(v72, v37, v74);
    v54 = &UploadedVideo.artwork.getter;
    goto LABEL_36;
  }

  if (v38 == enum case for GenericMusicItem.other(_:))
  {
    (*(v33 + 8))(v37, v32);
    v57 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v57 - 8) + 56))(v40, 1, 1, v57);
  }

  else
  {
    if (qword_1011B0628 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000060E4(v58, static Logger.artwork);
    (v70)(v71, v124, v32);
    v59 = Logger.logObject.getter();
    LODWORD(v122) = static os_log_type_t.fault.getter();
    v124 = v59;
    if (os_log_type_enabled(v59, v122))
    {
      v60 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v125 = v121;
      *v60 = 136315394;
      *(v60 + 4) = sub_100010744(0xD000000000000010, 0x8000000100E64B20, &v125);
      *(v60 + 12) = 2080;
      sub_100B0CD24();
      v61 = v71;
      v62 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v63;
      v65 = *(v33 + 8);
      v65(v61, v32);
      v66 = sub_100010744(v62, v64, &v125);

      *(v60 + 14) = v66;
      v67 = v124;
      _os_log_impl(&_mh_execute_header, v124, v122, "Unhandled case for %s: %s", v60, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v65 = *(v33 + 8);
      v65(v71, v32);
    }

    v68 = type metadata accessor for ArtworkImage.ViewModel(0);
    (*(*(v68 - 8) + 56))(v40, 1, 1, v68);
    return (v65)(v37, v32);
  }
}

uint64_t ArtworkImage.ViewModel.image(for:)(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  *(v3 + 40) = swift_task_alloc();
  v4 = type metadata accessor for Artwork.CropStyle();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = type metadata accessor for Artwork();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100B0BB5C, 0, 0);
}

uint64_t sub_100B0BB5C()
{
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  (*(*(v0 + 10) + 16))(*(v0 + 11), v4, *(v0 + 9));
  v5 = type metadata accessor for ArtworkImage.ViewModel(0);
  sub_1000089F8(v4 + *(v5 + 20), v3, &qword_1011B4720, &qword_100F02D00);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    if (qword_1011B0618 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 7);
    v7 = *(v0 + 8);
    v10 = *(v0 + 5);
    v9 = *(v0 + 6);
    v11 = sub_1000060E4(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      sub_1000095E8(*(v0 + 5), &qword_1011B4720, &qword_100F02D00);
    }
  }

  else
  {
    (*(*(v0 + 7) + 32))(*(v0 + 8), *(v0 + 5), *(v0 + 6));
  }

  if (qword_1011B0620 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Artwork.ImageFormat();
  v13 = sub_1000060E4(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 12) = v14;
  *v14 = v0;
  v14[1] = sub_100B0BD7C;
  v15 = *(v0 + 8);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

uint64_t sub_100B0BD7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[13] = v1;

  v6 = v4[11];
  v7 = v4[10];
  v8 = v4[9];
  v9 = v4[7];
  if (v1)
  {
    (*(v9 + 8))(v4[8], v4[6]);
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_100B0BFCC, 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_100B0BFCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Artwork.image(for:cropStyle:format:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  sub_10010FC20(&qword_1011B1438, &qword_100EFFDE0);
  *(v5 + 56) = swift_task_alloc();
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100B0C124, 0, 0);
}

uint64_t sub_100B0C124()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[4];
  v3 = v0[5];
  v5 = [objc_opt_self() currentTraitCollection];
  [v5 displayScale];
  v7 = v6;

  v8 = type metadata accessor for Artwork.CropStyle();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v2, v4, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = type metadata accessor for Artwork.ImageFormat();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v1, v3, v10);
  (*(v11 + 56))(v1, 0, 1, v10);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_100B0C318;
  v14 = v0[7];
  v15 = v0[8];
  v16.n128_u64[0] = v0[2];
  v17.n128_u64[0] = v0[3];

  v13.n128_f64[0] = 1.0 / v7;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v15, v14, 0, 0, v16, v17, v13);
}

uint64_t sub_100B0C318(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  v6 = *(v4 + 64);
  sub_1000095E8(*(v4 + 56), &qword_1011B1438, &qword_100EFFDE0);
  sub_1000095E8(v6, &qword_1011B4720, &qword_100F02D00);
  if (v1)
  {

    return _swift_task_switch(sub_100B0C4D8, 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_100B0C4D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B0C544(double a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10030C430;

  return ArtworkImage.ViewModel.image(for:)(a1, a2);
}

uint64_t ArtworkImageFetching<>.image(for:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 40) = a2;
  *(v5 + 48) = v4;
  *(v5 + 32) = a1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  sub_10010FC20(&qword_1011B4720, &qword_100F02D00);
  *(v5 + 56) = swift_task_alloc();
  v6 = type metadata accessor for Artwork.CropStyle();
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = type metadata accessor for Artwork();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_100B0C744, 0, 0);
}

uint64_t sub_100B0C744()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 7);
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  (*(v4 + 8))(v5, v4);
  (*(v4 + 16))(v5, v4);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    if (qword_1011B0618 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 9);
    v7 = *(v0 + 10);
    v10 = *(v0 + 7);
    v9 = *(v0 + 8);
    v11 = sub_1000060E4(v9, static Artwork.CropStyle.fallback);
    (*(v8 + 16))(v7, v11, v9);
    if (v6(v10, 1, v9) != 1)
    {
      sub_1000095E8(*(v0 + 7), &qword_1011B4720, &qword_100F02D00);
    }
  }

  else
  {
    (*(*(v0 + 9) + 32))(*(v0 + 10), *(v0 + 7), *(v0 + 8));
  }

  if (qword_1011B0620 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Artwork.ImageFormat();
  v13 = sub_1000060E4(v12, static Artwork.ImageFormat.fallback);
  v14 = swift_task_alloc();
  *(v0 + 14) = v14;
  *v14 = v0;
  v14[1] = sub_100B0C964;
  v15 = *(v0 + 10);
  v16 = v0[2];
  v17 = v0[3];

  return Artwork.image(for:cropStyle:format:)(v15, v13, v16, v17);
}

uint64_t sub_100B0C964(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[15] = v1;

  v6 = v4[13];
  v7 = v4[12];
  v8 = v4[11];
  v9 = v4[9];
  if (v1)
  {
    (*(v9 + 8))(v4[10], v4[8]);
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_100B0CBB4, 0, 0);
  }

  else
  {
    (*(v9 + 8))();
    (*(v7 + 8))(v6, v8);

    v10 = v5[1];

    return v10(a1);
  }
}

uint64_t sub_100B0CBB4()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_100B0CC30(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011B1448, &qword_100F00148);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_100B0CD24()
{
  result = qword_1011B1430;
  if (!qword_1011B1430)
  {
    type metadata accessor for GenericMusicItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1430);
  }

  return result;
}

void sub_100B0CD88(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v10 = a1(v10);
    if (v3)
    {
      goto LABEL_12;
    }

LABEL_6:
    v8 &= v8 - 1;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  do
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v9)
    {
      goto LABEL_12;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
  }

  while (!v8);
  v11 = v12;
  v10 = a1(v10);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_12:
}

Swift::Bool __swiftcall Text.StringOption.evaluate(_:)(Swift::String a1)
{
  v1 = HIBYTE(a1._object) & 0xF;
  if ((a1._object & 0x2000000000000000) == 0)
  {
    v1 = a1._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

BOOL Text.StringOption.evaluate(_:)()
{
  v0 = type metadata accessor for AttributedString.Index();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v13 - v4;
  v6 = type metadata accessor for AttributedString.CharacterView();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.characters.getter();
  sub_100B0F2C8(&qword_1011B1450, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  sub_100B0F2C8(&qword_1011B1458, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v5, v0);
  (*(v7 + 8))(v9, v6);
  return (v10 & 1) == 0;
}

uint64_t Text.init(optional:options:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = 0;
    v4 = 1 << *(a3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a3 + 56);
    v7 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v7 = result & 0xFFFFFFFFFFFFLL;
    }

    v8 = (v4 + 63) >> 6;
    while (v6)
    {
LABEL_7:
      v6 &= v6 - 1;
      if (!v7)
      {

        goto LABEL_14;
      }
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v9 >= v8)
      {

        sub_1000098E0();
        return Text.init<A>(_:)();
      }

      v6 = *(a3 + 56 + 8 * v9);
      ++v3;
      if (v6)
      {
        v3 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    return 0;
  }

  return result;
}

uint64_t Text.init(optional:options:)(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011B1460, &qword_100F00170);
  __chkstk_darwin();
  v5 = &v16[-v4];
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v16[-v10];
  sub_100B0D48C(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100B0D4FC(a1);

    sub_100B0D4FC(v5);
  }

  else
  {
    (*(v7 + 32))(v11, v5, v6);
    __chkstk_darwin();
    *&v16[-16] = v11;
    sub_100B0CD88(sub_100B0D7BC, &v16[-32], a2);
    v13 = v12;

    if (v13)
    {
      (*(v7 + 16))(v9, v11, v6);
      v14 = Text.init(_:)();
      sub_100B0D4FC(a1);
      (*(v7 + 8))(v11, v6);
      return v14;
    }

    sub_100B0D4FC(a1);
    (*(v7 + 8))(v11, v6);
  }

  return 0;
}

uint64_t sub_100B0D48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B1460, &qword_100F00170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B0D4FC(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B1460, &qword_100F00170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100B0D564()
{
  v0 = type metadata accessor for AttributedString.Index();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v13 - v4;
  v6 = type metadata accessor for AttributedString.CharacterView();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AttributedString.characters.getter();
  sub_100B0F2C8(&qword_1011B1450, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  sub_100B0F2C8(&qword_1011B1458, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v5, v0);
  (*(v7 + 8))(v9, v6);
  return v10 & 1;
}

uint64_t static Edge.Set.on(_:)(unsigned int a1)
{
  v1 = Edge.Set.init(rawValue:)();
  v2 = static Axis.Set.horizontal.getter();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() == v2)
  {
    sub_10010FC20(&qword_1011B1468, &qword_100F00178);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    v4 = static Edge.Set.leading.getter();
    *(inited + 32) = v4;
    v5 = static Edge.Set.trailing.getter();
    *(inited + 33) = v5;
    v6 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v4)
    {
      v6 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v5)
    {
      v6 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v6)
    {
      v1 = Edge.Set.init(rawValue:)();
    }
  }

  v7 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() == v7)
  {
    sub_10010FC20(&qword_1011B1468, &qword_100F00178);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_100EBDC20;
    v9 = static Edge.Set.top.getter();
    *(v8 + 32) = v9;
    v10 = static Edge.Set.bottom.getter();
    *(v8 + 33) = v10;
    v11 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v9)
    {
      v11 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v10)
    {
      v11 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v11)
    {
      return Edge.Set.init(rawValue:)();
    }
  }

  return v1;
}

double EdgeInsets.init(_:length:)(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  if (a1)
  {
    v3 = static Axis.Set.vertical.getter();
  }

  else
  {
    v3 = static Axis.Set.horizontal.getter();
  }

  v4 = static Edge.Set.on(_:)(v3);

  return _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v4, v2);
}

double EdgeInsets.init(_:length:)(unsigned int a1, double a2)
{
  v3 = static Edge.Set.on(_:)(a1);

  return _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v3, a2);
}

void EdgeInsets.affecting(_:)(uint64_t a1)
{
  v2 = static Edge.Set.all.getter();
  _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v2, 0.0);
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return;
    }

    v6 = *(a1 + 56 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      do
      {
LABEL_9:
        v6 &= v6 - 1;
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
}

double EdgeInsets.affecting(_:)(char a1)
{
  sub_10010FC20(&qword_1011B1470, &qword_100F00180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = a1 & 1;
  v3 = sub_100B0EA50(inited);
  swift_setDeallocating();
  EdgeInsets.affecting(_:)(v3);
  v5 = v4;

  return v5;
}

double EdgeInsets.value(for:)(char a1, double a2, double a3, double a4, double a5)
{
  result = a2 + a4;
  v6 = a3 + a5;
  if ((a1 & 1) == 0)
  {
    return v6;
  }

  return result;
}

double CGSize.length(for:)(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return result;
}

uint64_t Axis.isOrthogonal(to:)(char a1, char a2)
{
  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 1;
  }

  return 0;
}

uint64_t Optional<A>.isOrthogonal(to:)(char a1, char a2)
{
  if (a2 == 2)
  {
    return 1;
  }

  if (a2)
  {
    if ((a1 & 1) == 0)
    {
      return 1;
    }
  }

  else if (a1)
  {
    return 1;
  }

  return 0;
}

uint64_t Axis.Set.init(_:)(uint64_t a1, __n128 a2)
{
  if (a1)
  {
    return static Axis.Set.vertical.getter();
  }

  else
  {
    return static Axis.Set.horizontal.getter();
  }
}

uint64_t View.always(perform:)@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  a1();
  v6 = *(*(a2 - 8) + 16);

  return v6(a3, v3, a2);
}

double DynamicTypeSize.scaledValue(_:relativeTo:)(uint64_t a1, double a2)
{
  sub_10010FC20(&qword_1011B1478, &qword_100F00188);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:a1];
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, v2, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = UIContentSizeCategory.init(_:)();
  v11 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v10];
  [v7 scaledValueForValue:v11 compatibleWithTraitCollection:a2];
  v13 = v12;

  return v13;
}

uint64_t static Color.random(opacity:)(double a1)
{
  v1 = type metadata accessor for Color.RGBColorSpace();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100173A78(0x20000000000001uLL);
  sub_100173A78(0x20000000000001uLL);
  sub_100173A78(0x20000000000001uLL);
  (*(v2 + 104))(v4, enum case for Color.RGBColorSpace.sRGB(_:), v1);
  return Color.init(_:red:green:blue:opacity:)();
}

uint64_t RoundedRectangle.outset(horizontal:vertical:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v8 = type metadata accessor for LayoutDirection();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v21 - v12;
  type metadata accessor for RoundedRectangle();
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B0EF40(v4, v15, &type metadata accessor for RoundedRectangle);
  v16 = enum case for LayoutDirection.leftToRight(_:);
  v17 = *(v9 + 104);
  v17(v13, enum case for LayoutDirection.leftToRight(_:), v8);
  sub_100B0EF40(v15, a1, &type metadata accessor for RoundedRectangle);
  v18 = _s21OmnidirectionalOutsetVMa(0);
  *(a1 + v18[5]) = a3;
  *(a1 + v18[6]) = a2;
  *(a1 + v18[7]) = a3;
  *(a1 + v18[8]) = a2;
  v17(v11, v16, v8);
  LOBYTE(v16) = static LayoutDirection.== infix(_:_:)();
  v19 = *(v9 + 8);
  v19(v11, v8);
  v19(v13, v8);
  result = sub_100B0EBDC(v15);
  *(a1 + v18[9]) = (v16 & 1) == 0;
  return result;
}

uint64_t RoundedRectangle.outset(top:leading:bottom:trailing:layoutDirection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v14 = type metadata accessor for LayoutDirection();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v25 - v18;
  type metadata accessor for RoundedRectangle();
  __chkstk_darwin();
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100B0EF40(v7, v21, &type metadata accessor for RoundedRectangle);
  (*(v15 + 16))(v19, a1, v14);
  sub_100B0EF40(v21, a2, &type metadata accessor for RoundedRectangle);
  v22 = _s21OmnidirectionalOutsetVMa(0);
  *(a2 + v22[5]) = a3;
  *(a2 + v22[6]) = a4;
  *(a2 + v22[7]) = a5;
  *(a2 + v22[8]) = a6;
  (*(v15 + 104))(v17, enum case for LayoutDirection.leftToRight(_:), v14);
  LOBYTE(v7) = static LayoutDirection.== infix(_:_:)();
  v23 = *(v15 + 8);
  v23(v17, v14);
  v23(v19, v14);
  result = sub_100B0EBDC(v21);
  *(a2 + v22[9]) = (v7 & 1) == 0;
  return result;
}

double sub_100B0E4D4@<D0>(int *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v5 = v3;
  v6 = a3.n128_f64[0];
  sub_100B0EF40(v5, a2, _s21OmnidirectionalOutsetVMa);
  v8 = a1[6];
  *(a2 + a1[5]) = *(a2 + a1[5]) - v6;
  *(a2 + v8) = *(a2 + v8) - v6;
  v9 = a1[8];
  *(a2 + a1[7]) = *(a2 + a1[7]) - v6;
  result = *(a2 + v9) - v6;
  *(a2 + v9) = result;
  return result;
}

double sub_100B0E55C@<D0>(int *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v8 = v6;
  v14 = type metadata accessor for RoundedCornerStyle();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RoundedRectangle() - 8;
  __chkstk_darwin();
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGRect.outset(by:for:)(*(v8 + a1[9]), *(v8 + a1[5]), *(v8 + a1[6]), *(v8 + a1[7]), *(v8 + a1[8]), a3, a4, a5, a6);
  sub_100B0EF40(v8, v20, &type metadata accessor for RoundedRectangle);
  (*(v15 + 32))(v17, &v20[*(v18 + 28)], v14);
  Path.init(roundedRect:cornerSize:style:)();
  result = *&v24;
  v22 = v25;
  *a2 = v24;
  *(a2 + 16) = v22;
  *(a2 + 32) = v26;
  return result;
}

void (*sub_100B0E754(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100260668;
}

uint64_t sub_100B0E7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B0F2C8(&qword_1011B1558, _s21OmnidirectionalOutsetVMa, &unk_100F002E0);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B0E874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B0F2C8(&qword_1011B1558, _s21OmnidirectionalOutsetVMa, &unk_100F002E0);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100B0E908(uint64_t a1)
{
  v2 = sub_100B0F2C8(&qword_1011B1558, _s21OmnidirectionalOutsetVMa, &unk_100F002E0);

  return Shape.body.getter(a1, v2);
}

double _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(uint64_t a1, double a2)
{
  v3 = static Edge.Set.top.getter();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() == v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  static Edge.Set.leading.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  static Edge.Set.bottom.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  static Edge.Set.trailing.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  return v4;
}

Swift::Int sub_100B0EA50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1580, &qword_100F00380);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      v11 = Axis.rawValue.getter();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = Axis.rawValue.getter();
        result = Axis.rawValue.getter();
        if (v16 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t _s21OmnidirectionalOutsetVMa(uint64_t a1)
{
  result = qword_1011B14E8;
  if (!qword_1011B14E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100B0EBDC(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100B0EC3C()
{
  result = qword_1011B1480;
  if (!qword_1011B1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1480);
  }

  return result;
}

void sub_100B0ECC8(uint64_t a1)
{
  type metadata accessor for RoundedRectangle();
  if (v1 <= 0x3F)
  {
    _s3__C30UIUserInterfaceLayoutDirectionOMa_0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100B0ED64()
{
  result = qword_1011B1530;
  if (!qword_1011B1530)
  {
    sub_1001109D0(&qword_1011B1538, &qword_100F00238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1530);
  }

  return result;
}

unint64_t sub_100B0EDCC()
{
  result = qword_1011B1540;
  if (!qword_1011B1540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B1540);
  }

  return result;
}

uint64_t sub_100B0EF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_100B0EFA8(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for Calendar.Component();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10010FC20(&qword_1011B1560, &qword_100F00370);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v4 + 16);
    v11 = v4 + 16;
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
      v35(v37, v33 + v14 * v10, v3);
      sub_100B0F2C8(&qword_1011B1568, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
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
          v35(v6, *(v9 + 48) + v18 * v14, v3);
          sub_100B0F2C8(&qword_1011B1570, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v3);
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

        v24(v37, v3);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v3);
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

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100B0F2C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_100B0F310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1578, &qword_100F00378);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100B0F44C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_10121B578);
  sub_1000060E4(v0, qword_10121B578);
  sub_100005B7C();
  static OS_os_log.disabled.getter();
  return Logger.init(_:)();
}

unint64_t SymbolButton.Configuration.description.getter()
{
  v1 = v0;
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v216 = &v209 - v2;
  v3 = type metadata accessor for UIView.Corner();
  v217 = *(v3 - 1);
  v218 = v3;
  __chkstk_darwin();
  v214 = &v209 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v215 = &v209 - v5;
  v227 = 0xD00000000000001CLL;
  v228 = 0x8000000100E64B40;
  v221._countAndFlagsBits = 0;
  v221._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v221._countAndFlagsBits = 0xD000000000000017;
  v221._object = 0x8000000100E64B60;
  v6 = type metadata accessor for SymbolButton.Configuration(0);
  v7._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  String.append(_:)(v221);

  v221._countAndFlagsBits = 0;
  v221._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v221._countAndFlagsBits = 0x6D756D696E696D20;
  v221._object = 0xEF203A20657A6953;
  v9._countAndFlagsBits = CGSize.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 10;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  String.append(_:)(v221);

  if ((*(v0 + v6[14] + 16) & 1) == 0)
  {
    v221._countAndFlagsBits = 0;
    v221._object = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v221._countAndFlagsBits = 0xD000000000000014;
    v221._object = 0x8000000100E64F20;
    v11._countAndFlagsBits = CGSize.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 10;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    String.append(_:)(v221);
  }

  v221._countAndFlagsBits = 0;
  v221._object = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v226._countAndFlagsBits = 0xD000000000000011;
  v226._object = 0x8000000100E64B80;
  v13 = v0 + v6[15];
  v14 = *(v13 + 16);
  v221 = *v13;
  v222 = v14;
  _s3__C23NSDirectionalEdgeInsetsVMa_0(0);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 10;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  String.append(_:)(v226);

  v17 = *(v0 + v6[19]);
  if (v17 == 2)
  {
    v18._countAndFlagsBits = 0xD00000000000001ALL;
    v18._object = 0x8000000100E64BA0;
    String.append(_:)(v18);
  }

  else
  {
    v221._countAndFlagsBits = 0;
    v221._object = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v221._countAndFlagsBits = 0xD000000000000010;
    v221._object = 0x8000000100E64F00;
    if (v17)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (v17)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    v21 = v20;
    String.append(_:)(*&v19);

    v22._countAndFlagsBits = 10;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    String.append(_:)(v221);
  }

  v221._countAndFlagsBits = 0x3A206168706C6120;
  v221._object = 0xE900000000000020;
  v23._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 10;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  String.append(_:)(v221);

  v221._countAndFlagsBits = 0x203A20746E697420;
  v221._object = 0xE800000000000000;
  v226._countAndFlagsBits = *(v0 + v6[18]);
  v25 = v226._countAndFlagsBits;
  v219 = sub_10010FC20(&qword_1011B1178, &qword_100EFFA90);
  v26._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 10;
  v27._object = 0xE100000000000000;
  String.append(_:)(v27);
  String.append(_:)(v221);

  v28 = *(v0 + 8);
  v220 = v6;
  if (v28)
  {
    v29 = *(v0 + 16);
    v30 = *(v0 + 24);
    v31 = *(v0 + 40);
    v32 = *(v0 + 48);
    v211 = *(v0 + 56);
    v209 = *(v0 + 64);
    v212 = *(v0 + 80);
    v33 = *(v0 + 96);
    v210 = *(v0 + 88);
    v213 = *(v0 + 112);
    v34 = *v0;

    v35._countAndFlagsBits = 0x6D7953209480E220;
    v35._object = 0xAE000A7B206C6F62;
    String.append(_:)(v35);
    v221._countAndFlagsBits = 0x656D616E20202020;
    v221._object = 0xEB00000000203A20;
    v36._countAndFlagsBits = v34;
    v36._object = v28;
    String.append(_:)(v36);

    v37._countAndFlagsBits = 10;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    String.append(_:)(v221);

    if (v29)
    {
      v38 = [v29 bundlePath];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      strcpy(&v221, "    bundle : ");
      HIWORD(v221._object) = -4864;
      v42._countAndFlagsBits = v39;
      v42._object = v41;
      String.append(_:)(v42);

      v43._countAndFlagsBits = 10;
      v43._object = 0xE100000000000000;
      String.append(_:)(v43);
      String.append(_:)(v221);
    }

    strcpy(&v221, "    style : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v226._countAndFlagsBits = v30;
    _s3__C9TextStyleVMa_0(0);
    v44 = v30;
    v45._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v45);

    v46._countAndFlagsBits = 10;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    String.append(_:)(v221);

    if ((v31 & 1) == 0)
    {
      v221._countAndFlagsBits = 0xD000000000000014;
      v221._object = 0x8000000100E64EE0;
      v47._countAndFlagsBits = Double.description.getter();
      String.append(_:)(v47);

      v48._countAndFlagsBits = 10;
      v48._object = 0xE100000000000000;
      String.append(_:)(v48);
      String.append(_:)(v221);
    }

    strcpy(&v221, "    weight : ");
    HIWORD(v221._object) = -4864;
    v226._countAndFlagsBits = v32;
    type metadata accessor for SymbolWeight(0);
    v49._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v49);

    v50._countAndFlagsBits = 10;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
    String.append(_:)(v221);

    strcpy(&v221, "    scale : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v226._countAndFlagsBits = v211;
    type metadata accessor for SymbolScale(0);
    v51._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v51);

    v52._countAndFlagsBits = 10;
    v52._object = 0xE100000000000000;
    String.append(_:)(v52);
    String.append(_:)(v221);

    if (v212 != 255)
    {
      strcpy(&v226, "    offset : ");
      HIWORD(v226._object) = -4864;
      v221 = v209;
      LOBYTE(v222) = v212 & 1;
      sub_10010FC20(&qword_1011B1588, &qword_100F00388);
      v53._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v53);

      v54._countAndFlagsBits = 10;
      v54._object = 0xE100000000000000;
      String.append(_:)(v54);
      String.append(_:)(v226);
    }

    strcpy(&v221, "    alpha : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v55._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v55);

    v56._countAndFlagsBits = 10;
    v56._object = 0xE100000000000000;
    String.append(_:)(v56);
    String.append(_:)(v221);

    v221._countAndFlagsBits = 0x746E697420202020;
    v221._object = 0xEB00000000203A20;
    v226._countAndFlagsBits = v213;
    v57 = v213;
    v58._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v58);

    v59._countAndFlagsBits = 10;
    v59._object = 0xE100000000000000;
    String.append(_:)(v59);
    String.append(_:)(v221);

    if (v33)
    {
      v221._countAndFlagsBits = 0xD000000000000018;
      v221._object = 0x8000000100E64EC0;

      v60._countAndFlagsBits = v210;
      v60._object = v33;
      String.append(_:)(v60);

      v61._countAndFlagsBits = 10;
      v61._object = 0xE100000000000000;
      String.append(_:)(v61);
      String.append(_:)(v221);
    }

    v62._countAndFlagsBits = 687392;
    v62._object = 0xE300000000000000;
    String.append(_:)(v62);
    v6 = v220;
  }

  else
  {
    v63._object = 0x8000000100E64BC0;
    v63._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v63);
  }

  v64 = *(v1 + 128);
  if (v64)
  {
    v65 = *(v1 + 160);
    v213 = *(v1 + 152);
    v66 = *(v1 + 184);
    v67 = *(v1 + 176);
    v68 = *(v1 + 144);
    v69 = *(v1 + 136);
    v70 = *(v1 + 120);

    v71._countAndFlagsBits = 0x746954209480E220;
    v71._object = 0xAD00000A7B20656CLL;
    String.append(_:)(v71);
    v221._countAndFlagsBits = 0x7478657420202020;
    v221._object = 0xEB00000000203A20;
    v72._countAndFlagsBits = v70;
    v72._object = v64;
    String.append(_:)(v72);

    v73._countAndFlagsBits = 10;
    v73._object = 0xE100000000000000;
    String.append(_:)(v73);
    String.append(_:)(v221);

    strcpy(&v221, "    style : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v226._countAndFlagsBits = v69;
    _s3__C9TextStyleVMa_0(0);
    v74 = v69;
    v75._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v75);

    v76._countAndFlagsBits = 10;
    v76._object = 0xE100000000000000;
    String.append(_:)(v76);
    String.append(_:)(v221);

    strcpy(&v221, "    weight : ");
    HIWORD(v221._object) = -4864;
    v226._countAndFlagsBits = v68;
    type metadata accessor for Weight(0);
    v77._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v77);

    v78._countAndFlagsBits = 10;
    v78._object = 0xE100000000000000;
    String.append(_:)(v78);
    String.append(_:)(v221);

    strcpy(&v221, "    alpha : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v79._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v79);

    v80._countAndFlagsBits = 10;
    v80._object = 0xE100000000000000;
    String.append(_:)(v80);
    String.append(_:)(v221);

    v221._countAndFlagsBits = 0x746E697420202020;
    v221._object = 0xEB00000000203A20;
    v226._countAndFlagsBits = v67;
    v81 = v67;
    v82._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v82);

    v83._countAndFlagsBits = 10;
    v83._object = 0xE100000000000000;
    String.append(_:)(v83);
    String.append(_:)(v221);

    strcpy(&v221, "    hidden : ");
    HIWORD(v221._object) = -4864;
    if (v66)
    {
      v84 = 1702195828;
    }

    else
    {
      v84 = 0x65736C6166;
    }

    if (v66)
    {
      v85 = 0xE400000000000000;
    }

    else
    {
      v85 = 0xE500000000000000;
    }

    v86 = v85;
    String.append(_:)(*&v84);

    v87._countAndFlagsBits = 10;
    v87._object = 0xE100000000000000;
    String.append(_:)(v87);
    String.append(_:)(v221);

    if (v65)
    {
      v221._countAndFlagsBits = 0xD000000000000018;
      v221._object = 0x8000000100E64EC0;

      v88._countAndFlagsBits = v213;
      v88._object = v65;
      String.append(_:)(v88);

      v89._countAndFlagsBits = 10;
      v89._object = 0xE100000000000000;
      String.append(_:)(v89);
      String.append(_:)(v221);
    }

    v90._countAndFlagsBits = 687392;
    v90._object = 0xE300000000000000;
    String.append(_:)(v90);
    v6 = v220;
  }

  else
  {
    v91._countAndFlagsBits = 0x1000000000000011;
    v91._object = 0x8000000100E64BE0;
    String.append(_:)(v91);
  }

  v92 = *(v1 + 208);
  if (v92 == 1)
  {
    v93._countAndFlagsBits = 0x1000000000000016;
    v93._object = 0x8000000100E64C00;
    String.append(_:)(v93);
  }

  else
  {
    v95 = *(v1 + 216);
    v94 = *(v1 + 224);

    v96 = v92;
    v97._object = 0x8000000100E64EA0;
    v97._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v97);
    strcpy(&v221, "    alpha : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v98._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v98);

    v99._countAndFlagsBits = 10;
    v99._object = 0xE100000000000000;
    String.append(_:)(v99);
    String.append(_:)(v221);

    v221._countAndFlagsBits = 0x746E697420202020;
    v221._object = 0xEB00000000203A20;
    v226._countAndFlagsBits = v92;
    v100 = v96;
    v101._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v101);

    v102._countAndFlagsBits = 10;
    v102._object = 0xE100000000000000;
    String.append(_:)(v102);
    String.append(_:)(v221);

    if (v94)
    {
      v221._countAndFlagsBits = 0xD000000000000018;
      v221._object = 0x8000000100E64EC0;

      v103._countAndFlagsBits = v95;
      v103._object = v94;
      String.append(_:)(v103);

      v104._countAndFlagsBits = 10;
      v104._object = 0xE100000000000000;
      String.append(_:)(v104);
      String.append(_:)(v221);
    }

    v105._countAndFlagsBits = 687392;
    v105._object = 0xE300000000000000;
    String.append(_:)(v105);

    v6 = v220;
  }

  v106 = *(v1 + 296);
  if (v106)
  {
    v107 = *(v1 + 288);
    v108 = *(v1 + 280);
    v226._countAndFlagsBits = 0x726F42209480E220;
    v226._object = 0xAE00203A20726564;
    v221._countAndFlagsBits = v108;
    LOBYTE(v221._object) = v107 & 1;
    *&v222 = v106;
    v109 = v106;
    v110._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v110);

    v111._countAndFlagsBits = 10;
    v111._object = 0xE100000000000000;
    String.append(_:)(v111);
    String.append(_:)(v226);
  }

  else
  {
    v112._object = 0x8000000100E64C20;
    v112._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v112);
  }

  v113 = v216;
  sub_100B10E68(v1 + v6[9], v216);
  v115 = v217;
  v114 = v218;
  if ((v217[6])(v113, 1, v218) == 1)
  {
    sub_100B10ED8(v113);
    v116._object = 0x8000000100E64C40;
    v116._countAndFlagsBits = 0x1000000000000012;
    String.append(_:)(v116);
  }

  else
  {
    v117 = v215;
    v115[4](v215, v113, v114);
    v221._countAndFlagsBits = 0x726F43209480E220;
    v221._object = 0xAE00203A2072656ELL;
    v115[2](v214, v117, v114);
    v118._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v118);

    v119._countAndFlagsBits = 10;
    v119._object = 0xE100000000000000;
    String.append(_:)(v119);
    String.append(_:)(v221);

    (v115[1])(v117, v114);
  }

  v120 = *(v1 + 232);
  if (v120 == 1)
  {
    v121._countAndFlagsBits = 0x1000000000000014;
    v121._object = 0x8000000100E64C60;
    String.append(_:)(v121);
  }

  else
  {
    v123 = *(v1 + 240);
    v122 = *(v1 + 248);
    v124 = *(v1 + 272);
    v125 = *(v1 + 256);
    v215 = *(v1 + 264);
    v216 = v125;

    v126 = v120;
    v218 = v123;
    v217 = v122;
    v127._countAndFlagsBits = 0x1000000000000010;
    v127._object = 0x8000000100E64E20;
    String.append(_:)(v127);
    if (v120)
    {
      v221._countAndFlagsBits = 0xD000000000000017;
      v221._object = 0x8000000100E64E80;
      v128 = v126;
      v129 = [v128 description];
      v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v132 = v131;

      v133._countAndFlagsBits = v130;
      v133._object = v132;
      String.append(_:)(v133);

      v134._countAndFlagsBits = 10;
      v134._object = 0xE100000000000000;
      String.append(_:)(v134);
      String.append(_:)(v221);

      v6 = v220;
    }

    if (v123)
    {
      v221._countAndFlagsBits = 0xD000000000000017;
      v221._object = 0x8000000100E64E60;
      v135 = v218;
      v136 = [v135 description];
      v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v139 = v138;

      v140._countAndFlagsBits = v137;
      v140._object = v139;
      String.append(_:)(v140);

      v141._countAndFlagsBits = 10;
      v141._object = 0xE100000000000000;
      String.append(_:)(v141);
      String.append(_:)(v221);

      v6 = v220;
    }

    v142 = v217;
    if (v122)
    {
      v221._countAndFlagsBits = 0xD000000000000014;
      v221._object = 0x8000000100E64E40;
      v143 = v217;
      v144 = [v143 description];
      v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v147 = v146;

      v148._countAndFlagsBits = v145;
      v148._object = v147;
      String.append(_:)(v148);

      v149._countAndFlagsBits = 10;
      v149._object = 0xE100000000000000;
      String.append(_:)(v149);
      String.append(_:)(v221);

      v6 = v220;
    }

    if (v216 != 2)
    {
      strcpy(&v221, "    color : ");
      BYTE5(v221._object) = 0;
      HIWORD(v221._object) = -5120;
      LOBYTE(v226._countAndFlagsBits) = v216 & 1;
      v150._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v150);

      v151._countAndFlagsBits = 10;
      v151._object = 0xE100000000000000;
      String.append(_:)(v151);
      String.append(_:)(v221);
    }

    if (v124)
    {
      strcpy(&v221, "    group : ");
      BYTE5(v221._object) = 0;
      HIWORD(v221._object) = -5120;

      v152._countAndFlagsBits = v215;
      v152._object = v124;
      String.append(_:)(v152);

      v153._countAndFlagsBits = 10;
      v153._object = 0xE100000000000000;
      String.append(_:)(v153);
      String.append(_:)(v221);
    }

    v154._countAndFlagsBits = 687392;
    v154._object = 0xE300000000000000;
    String.append(_:)(v154);
  }

  v155 = v1 + v6[10];
  v156 = *v155;
  if (*v155)
  {
    v158 = *(v155 + 40);
    v157 = *(v155 + 48);
    v160 = *(v155 + 24);
    v159 = *(v155 + 32);
    v161 = *(v155 + 8);
    v162 = *(v155 + 16);
    v226._countAndFlagsBits = 0x1000000000000013;
    v226._object = 0x8000000100E64E00;
    v221._countAndFlagsBits = v156;
    v221._object = v161;
    *&v222 = v162;
    *(&v222 + 1) = v160;
    v223 = v159;
    v224 = v158;
    v225 = v157;
    sub_100B10F50(v156, v161, v162, v160, v159, v158, v157);
    v163 = v157;
    v164 = v156;
    v165._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v165);

    v166._countAndFlagsBits = 10;
    v166._object = 0xE100000000000000;
    String.append(_:)(v166);
    String.append(_:)(v226);

    v167 = v160;
    v6 = v220;
    sub_100B07154(v156, v161, v162, v167, v159, v158, v157);
  }

  else
  {
    v168._countAndFlagsBits = 0x1000000000000017;
    v168._object = 0x8000000100E64C80;
    String.append(_:)(v168);
  }

  v169 = (v1 + v6[11]);
  v170 = v169[2];
  if (v170 == 1)
  {
    v171._countAndFlagsBits = 0x1000000000000011;
    v171._object = 0x8000000100E64CA0;
    String.append(_:)(v171);
  }

  else
  {
    v173 = *v169;
    v172 = v169[1];
    v174 = v170;
    v175._countAndFlagsBits = 0x646142209480E220;
    v175._object = 0xAD00000A7B206567;
    String.append(_:)(v175);
    v221._countAndFlagsBits = 0xD000000000000014;
    v221._object = 0x8000000100E64DE0;
    v176._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v176);

    v177._countAndFlagsBits = 10;
    v177._object = 0xE100000000000000;
    String.append(_:)(v177);
    String.append(_:)(v221);

    strcpy(&v221, "    alpha : ");
    BYTE5(v221._object) = 0;
    HIWORD(v221._object) = -5120;
    v178._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v178);

    v179._countAndFlagsBits = 10;
    v179._object = 0xE100000000000000;
    String.append(_:)(v179);
    String.append(_:)(v221);

    v221._countAndFlagsBits = 0x746E697420202020;
    v221._object = 0xEB00000000203A20;
    v226._countAndFlagsBits = v170;
    v180 = v174;
    v181._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v181);

    v182._countAndFlagsBits = 10;
    v182._object = 0xE100000000000000;
    String.append(_:)(v182);
    String.append(_:)(v221);

    v183._countAndFlagsBits = 687392;
    v183._object = 0xE300000000000000;
    String.append(_:)(v183);
    sub_100B10F40(v173, v172, v170);
  }

  v184 = (v1 + v6[16]);
  v185 = *v184;
  v186 = *(v184 + 1);
  v187 = *(v184 + 2);
  v188 = v184[24];
  v189._countAndFlagsBits = 0x1000000000000015;
  v189._object = 0x8000000100E64CC0;
  String.append(_:)(v189);
  v221._countAndFlagsBits = 0xD00000000000001BLL;
  v221._object = 0x8000000100E64CE0;
  if (v185)
  {
    v190 = 1702195828;
  }

  else
  {
    v190 = 0x65736C6166;
  }

  if (v185)
  {
    v191 = 0xE400000000000000;
  }

  else
  {
    v191 = 0xE500000000000000;
  }

  v192 = v191;
  String.append(_:)(*&v190);

  v193._countAndFlagsBits = 10;
  v193._object = 0xE100000000000000;
  String.append(_:)(v193);
  String.append(_:)(v221);

  if (v186)
  {
    v221._countAndFlagsBits = 0xD000000000000021;
    v221._object = 0x8000000100E64DB0;
    v226._countAndFlagsBits = v186;
    type metadata accessor for UIContentSizeCategory(0);
    v194 = v186;
    v195._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v195);

    v196._countAndFlagsBits = 10;
    v196._object = 0xE100000000000000;
    String.append(_:)(v196);
    String.append(_:)(v221);

    if (v187)
    {
LABEL_72:
      v221._countAndFlagsBits = 0xD000000000000021;
      v221._object = 0x8000000100E64D80;
      v226._countAndFlagsBits = v187;
      type metadata accessor for UIContentSizeCategory(0);
      v197 = v187;
      v198._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v198);

      v199._countAndFlagsBits = 10;
      v199._object = 0xE100000000000000;
      String.append(_:)(v199);
      String.append(_:)(v221);

      goto LABEL_75;
    }
  }

  else
  {
    v200._countAndFlagsBits = 0xD00000000000002DLL;
    v200._object = 0x8000000100E64D00;
    String.append(_:)(v200);
    if (v187)
    {
      goto LABEL_72;
    }
  }

  v201._countAndFlagsBits = 0xD00000000000002DLL;
  v201._object = 0x8000000100E64D30;
  String.append(_:)(v201);
LABEL_75:
  v221._countAndFlagsBits = 0xD00000000000001ELL;
  v221._object = 0x8000000100E64D60;
  if (v188)
  {
    v202 = 1702195828;
  }

  else
  {
    v202 = 0x65736C6166;
  }

  if (v188)
  {
    v203 = 0xE400000000000000;
  }

  else
  {
    v203 = 0xE500000000000000;
  }

  v204 = v203;
  String.append(_:)(*&v202);

  v205._countAndFlagsBits = 10;
  v205._object = 0xE100000000000000;
  String.append(_:)(v205);
  String.append(_:)(v221);

  v206._countAndFlagsBits = 687392;
  v206._object = 0xE300000000000000;
  String.append(_:)(v206);
  v207._countAndFlagsBits = 41;
  v207._object = 0xE100000000000000;
  String.append(_:)(v207);
  return v227;
}

uint64_t sub_100B10E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100B10ED8(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100B10F40(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
  }
}

id sub_100B10F50(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (result)
  {
    v8 = result;
    v7 = a7;

    return v8;
  }

  return result;
}

id sub_100B10F94(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_100B11BFC();
    v5 = 1.0;
    v6 = 250;
    if (v4 == 1)
    {
      v7 = 88;
      v8 = 106;
    }

    else
    {
      v7 = 45;
      v8 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 204;
      v7 = 0;
      v8 = 20;
    }

    else
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 250;
      v7 = 35;
      v8 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100B11108(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_100B11BFC();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.rollover.unsafeMutableAddressor()
{
  if (qword_1011B04D8 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.rollover;
}

id sub_100B112CC(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_100B11BFC();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 113;
      v8 = 131;
    }

    else
    {
      v7 = 70;
      v8 = 97;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 187;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 224;
      v7 = 9;
      v8 = 33;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t *UIColor.MusicTint.pressed.unsafeMutableAddressor()
{
  if (qword_1011B04E0 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.pressed;
}

id sub_100B11490(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_100B11BFC();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_100B11BFC();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (qword_1011B04E8 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.deepPressed;
}

id sub_100B11654(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_100B11BFC();
    v5 = 250;
    if (v4 == 1)
    {
      v6 = 88;
      v7 = 106;
    }

    else
    {
      v6 = 45;
      v7 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_100B11BFC();
      v5 = 214;
      v6 = 0;
      v7 = 23;
    }

    else
    {
      sub_100B11BFC();
      v5 = 250;
      v6 = 35;
      v7 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.disabled.unsafeMutableAddressor()
{
  if (qword_1011B04F0 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.disabled;
}

uint64_t *Color.MusicTint.normal.unsafeMutableAddressor()
{
  if (qword_1011B04F8 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.normal;
}

uint64_t *Color.MusicTint.rollover.unsafeMutableAddressor()
{
  if (qword_1011B0500 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.rollover;
}

uint64_t *Color.MusicTint.pressed.unsafeMutableAddressor()
{
  if (qword_1011B0508 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.pressed;
}

uint64_t *Color.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (qword_1011B0510 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.deepPressed;
}

uint64_t sub_100B11AB4(uint64_t a1, void *a2, id *a3, uint64_t *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v8 = a3;
    swift_once();
    a3 = v8;
  }

  v6 = *a3;
  result = Color.init(_:)();
  *a4 = result;
  return result;
}

uint64_t *Color.MusicTint.disabled.unsafeMutableAddressor()
{
  if (qword_1011B0518 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.disabled;
}

double sub_100B11B7C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return result;
}

unint64_t sub_100B11BFC()
{
  result = qword_1011B4940;
  if (!qword_1011B4940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B4940);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaLibrary:)(MPMediaLibrary_optional mediaLibrary)
{
  isa = mediaLibrary.value.super.isa;
  sub_10010FC20(&qword_1011B5630, "\b)\n");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  v3 = objc_opt_self();
  v4 = isa;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_100009F78(0, &unk_1011B7AC0, UITraitCollection_ptr);
    v9 = Array._bridgeToObjectiveC()().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v9];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id UITraitCollection.mediaLibrary.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100009F78(0, &qword_1011B1590, MPMediaLibrary_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100011EC0(v7);
  }

  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(legacyLibraryFilter:)(__C::MPMediaLibraryFilteringOptions legacyLibraryFilter)
{
  sub_10010FC20(&qword_1011B5630, "\b)\n");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:legacyLibraryFilter.rawValue];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_100009F78(0, &unk_1011B7AC0, UITraitCollection_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.legacyLibraryFilter.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100009F78(0, &qword_1011B3A00, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    sub_100011EC0(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

BOOL UITraitCollection.isMediaPicker.getter()
{
  v0 = UITraitCollection.mediaPickerConfiguration.getter();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t UITraitCollection.mediaPickerConfiguration.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100009F78(0, &qword_1011B1598, MPMediaPickerConfiguration_ptr);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100011EC0(v7);
    return 0;
  }
}

id UITraitCollection.init(mediaPickerConfiguration:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 _traitCollectionWithValue:v3 forTraitNamed:v4];

  if (v5)
  {
    v6.rawValue = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    if (![v3 showsItemsWithProtectedAssets])
    {
      v6.rawValue |= 0x20;
    }

    if (![v3 showsCloudItems])
    {
      v6.rawValue |= 2;
    }

    sub_100009F78(0, &unk_1011B7AC0, UITraitCollection_ptr);
    isa = UITraitCollection.init(mediaPickerLibraryFilter:)(v6).super.isa;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_10010FC20(&qword_1011B5630, "\b)\n");
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100EBC6D0;
    *(v9 + 32) = v5;
    *(v9 + 40) = isa;
    v10 = v5;
    v11 = isa;
    v12 = Array._bridgeToObjectiveC()().super.isa;

    v13 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v12];

    return v13;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaPickerLibraryFilter:)(__C::MPMediaLibraryFilteringOptions mediaPickerLibraryFilter)
{
  sub_10010FC20(&qword_1011B5630, "\b)\n");
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:mediaPickerLibraryFilter.rawValue];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_100009F78(0, &unk_1011B7AC0, UITraitCollection_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.mediaPickerLibraryFilter.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100009F78(0, &qword_1011B3A00, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    sub_100011EC0(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

uint64_t UITraitCollection.configure<A, B>(libraryRequest:)(void *a1)
{
  v2 = [a1 mediaLibrary];
  v3 = UITraitCollection.mediaLibrary.getter();
  v4 = v3;
  if (v2)
  {
    sub_100009F78(0, &qword_1011B1590, MPMediaLibrary_ptr);
    v5 = static NSObject.== infix(_:_:)();

    if (v5)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = UITraitCollection.mediaLibrary.getter();
  [a1 setMediaLibrary:v7];

  v6 = 1;
LABEL_6:
  v8 = [a1 filteringOptions];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  if (((UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | rawValue) & ~v8) != 0)
  {
    v10 = UITraitCollection.legacyLibraryFilter.getter().rawValue;
    [a1 setFilteringOptions:{UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | v10 | objc_msgSend(a1, "filteringOptions")}];
    return 1;
  }

  return v6;
}

double sub_100B127D0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_100B182B4, v4);

  return result;
}

void sub_100B12864(uint64_t a1, uint64_t a2)
{
  sub_100009F78(0, &qword_1011B7C30, UIMenuElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

UIMenu __swiftcall UIMenu.init(representativeOf:title:image:options:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIMenuOptions options)
{
  v4.value = *&image.is_nil;
  isa = image.value.super.isa;
  if (title.value._object)
  {
    countAndFlagsBits = title.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (title.value._object)
  {
    object = title.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  sub_10010FC20(&qword_1011B5630, "\b)\n");
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_100EBC6C0;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2]._rawValue = representativeOf._rawValue;
  v11[3]._rawValue = v4.value;
  aBlock[4] = sub_100B12B9C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100B127D0;
  aBlock[3] = &unk_1010E2178;
  v12 = _Block_copy(aBlock);

  v13 = [v10 elementWithUncachedProvider:v12];
  _Block_release(v12);
  *(preferredElementSize + 32) = v13;
  v14._countAndFlagsBits = countAndFlagsBits;
  v14._object = object;
  v18.value.super.isa = isa;
  v18.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v18, v4, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v16);
}

double sub_100B12A54(void (*a1)(void *), uint64_t a2, unint64_t a3, NSString *a4)
{
  v16 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(a3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v15 = v8;
      sub_100B12BA4(&v16, &v15, &v14, a4);

      v11 = v14;
      v16 = v14;
      ++v7;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_15:
  a1(v11);

  return result;
}

void sub_100B12BA4(uint64_t *a1@<X0>, id *a2@<X1>, void *a3@<X8>, NSString *a4@<X2>)
{
  v6 = *a1;
  v7 = *a2;
  if ([*a2 isHidden])
  {
    *a3 = v6;

    return;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = (v8 + 16);

  v10 = [v7 menuRepresentation];
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    v13 = v11;
    if (v12)
    {
      v14.value = a4;
      sub_100B130BC(v12, v14, v8, v7);
    }

    else
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    goto LABEL_26;
  }

  v15 = [v7 menu];
  if (!v15)
  {
    v18 = [v7 primaryAction];
    if (v18 && (v19 = v18, [v18 copy], v19, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_100009F78(0, &qword_1011B1640, UIAction_ptr), (swift_dynamicCast() & 1) != 0))
    {
      v20 = v37;
    }

    else
    {
      v21 = v7;
      v22 = [v21 target];
      v23 = [v21 action];
      if (!v22)
      {

        goto LABEL_26;
      }

      v24 = v23;
      if (!v23)
      {

        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      sub_100009F78(0, &qword_1011B1640, UIAction_ptr);
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      *(v26 + 16) = v25;
      *(v26 + 24) = v24;

      v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

      swift_unknownObjectRelease();
      v20 = v27;
      v28 = [v21 title];
      if (v28)
      {
        v29 = v28;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v30 = String._bridgeToObjectiveC()();

      [v20 setTitle:v30];

      v31 = [v21 image];
      [v20 setImage:v31];
    }

    v32 = [v7 title];
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v34 = String._bridgeToObjectiveC()();

    [v20 setTitle:v34];

    v35 = [v7 image];
    [v20 setImage:v35];

    v36 = v20;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_26;
  }

  v16 = v15;
  v17.value = a4;
  sub_100B130BC(v15, v17, v8, v7);

LABEL_26:
  swift_beginAccess();
  *a3 = *(v8 + 16);
}

uint64_t sub_100B130BC(id a1, UIMenuIdentifier_optional a2, uint64_t a3, void *a4)
{
  if ((a2.value & 1) == 0)
  {
    v8 = [a1 title];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      goto LABEL_7;
    }

    v13 = [a1 image];
    if (v13)
    {

LABEL_7:
      swift_beginAccess();
      v14 = a1;
      goto LABEL_17;
    }
  }

  v15 = [a1 title];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    v20 = [a4 title];
    if (v20)
    {
      v21 = v20;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v22;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }
  }

  v23 = [a1 image];
  if (!v23)
  {
    v23 = [a4 image];
  }

  sub_100009F78(0, &qword_1011B15A8, UIMenu_ptr);
  v24 = [a1 children];
  sub_100009F78(0, &qword_1011B7C30, UIMenuElement_ptr);
  preferredElementSize = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26._countAndFlagsBits = v16;
  v26._object = v18;
  v29.value.super.isa = v23;
  v29.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v29, a2, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v28);
  swift_beginAccess();
LABEL_17:
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

UIAction_optional __swiftcall UIAction.init(barButtonItem:)(UIBarButtonItem barButtonItem)
{
  v2 = [(objc_class *)barButtonItem.super.super.isa target];
  v3 = [(objc_class *)barButtonItem.super.super.isa action];
  if (!v2)
  {

LABEL_7:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = v3;
  if (!v3)
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  swift_unknownObjectRelease();
  v8 = v7;
  v9 = [(objc_class *)barButtonItem.super.super.isa title:0];
  if (v9)
  {
    v10 = v9;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = String._bridgeToObjectiveC()();

  [v8 setTitle:v12];

  v13 = [(objc_class *)barButtonItem.super.super.isa image];
  [v8 setImage:v13];

LABEL_9:
  v14 = v8;
  result.value.super.super.isa = v14;
  result.is_nil = v11;
  return result;
}

void *UINavigationItem.effectiveTrailingBarButtonItems.getter()
{
  v0 = UINavigationItem.allTrailingBarButtonItems.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 isHidden])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

unint64_t UINavigationItem.allTrailingBarButtonItems.getter()
{
  v1 = [v0 trailingItemGroups];
  sub_100009F78(0, &qword_1011B15B0, UIBarButtonItemGroup_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v44 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v38 = v2 & 0xFFFFFFFFFFFFFF8;
    v39 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v37 = v2 + 32;
    v2 = "()\n";
    v35 = i;
    while (1)
    {
      if (v39)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v38 + 16))
        {
          goto LABEL_45;
        }

        v6 = *(v37 + 8 * v4);
      }

      v7 = v6;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      v9 = [v6 representativeItem];
      if (v9)
      {
        v10 = v9;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v5 = v44;
      }

      v11 = [v7 barButtonItems];
      sub_100009F78(0, &qword_1011B15B8, UIBarButtonItem_ptr);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = v12 >> 62;
      if (v12 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v5 >> 62;
      if (v5 >> 62)
      {
        v16 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v14;
      v8 = __OFADD__(v16, v14);
      v17 = v16 + v14;
      if (v8)
      {
        goto LABEL_46;
      }

      v40 = v7;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_25:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_26;
      }

      if (v15)
      {
        goto LABEL_25;
      }

      v18 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = v5;
        goto LABEL_27;
      }

LABEL_26:
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = v41 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v13)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
        if (v21)
        {
LABEL_31:
          if (((v20 >> 1) - v19) < v42)
          {
            goto LABEL_48;
          }

          v22 = v18 + 8 * v19 + 32;
          v36 = v18;
          if (v13)
          {
            if (v21 < 1)
            {
              goto LABEL_50;
            }

            sub_100B176EC();
            for (j = 0; j != v21; ++j)
            {
              sub_10010FC20(&qword_1011B15C0, "()\n");
              v25 = sub_100AA5424(v43, j, v12);
              v27 = *v26;
              (v25)(v43, 0);
              *(v22 + 8 * j) = v27;
            }

            i = v35;
            v23 = v42;
          }

          else
          {
            v23 = v42;
            swift_arrayInitWithCopy();
          }

          v5 = v41;
          if (v23 > 0)
          {
            v28 = *(v36 + 16);
            v8 = __OFADD__(v28, v23);
            v29 = v28 + v23;
            if (v8)
            {
              goto LABEL_49;
            }

            *(v36 + 16) = v29;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_31;
        }
      }

      v5 = v41;
      if (v42 > 0)
      {
        goto LABEL_47;
      }

LABEL_5:
      v44 = v5;
      if (v4 == i)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
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
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_53:

  v43[0] = v5;
  v30 = [v34 rightBarButtonItems];
  if (v30)
  {
    v31 = v30;
    sub_100009F78(0, &qword_1011B15B8, UIBarButtonItem_ptr);
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100B13B30(v32);
    return v43[0];
  }

  return v5;
}

void sub_100B13B30(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001270A4(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100B1755C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_100B13C20(uint64_t a1)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_100BF9BAC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for Playlist.Collaborator();
  if (v8 < v2)
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
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t static UIBarButtonItem.PrimaryActionKind.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

uint64_t sub_100B13DB4(uint64_t *a1, uint64_t *a2)
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

  sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
  return static NSObject.== infix(_:_:)() & 1;
}

Class UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = a5;
  if (a6)
  {
    image_8 = a3;
    v13 = v10;

    v47 = a1;
    v14 = UIBarButtonItem.init(title:image:target:action:menu:)();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    sub_10010FC20(&qword_1011B5630, "\b)\n");
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_100EBC6C0;
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = sub_100B182F8;
    *(v18 + 24) = v15;
    aBlock[4] = sub_100B18314;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100B127D0;
    aBlock[3] = &unk_1010E2240;
    v19 = v10;
    v20 = _Block_copy(aBlock);
    children = v13;
    v21 = v14;

    v22 = [v17 elementWithUncachedProvider:v20];
    _Block_release(v20);
    *(preferredElementSize + 32) = v22;
    if (a2)
    {
      v23 = v47;
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

    sub_100009F78(0, &qword_1011B15A8, UIMenu_ptr);
    v25 = image_8;
    v26._countAndFlagsBits = v23;
    v26._object = v24;
    v55.value.super.isa = a3;
    v55.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v26, 0, v55, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;

    [(objc_class *)v21 setMenuRepresentation:isa];
  }

  else
  {
    v29 = a5;
    v30 = [v29 title];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v34)
    {
      v35 = v10;

      v36 = String._bridgeToObjectiveC()();

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
    v54.value.super.isa = 0;
    v39 = v10;
    v54.is_nil = v10;
    v56.value.super.super.isa = 0;
    v21 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v54, v56, v57).super.super.isa;
    v40 = v21;
    if (!a2)
    {
      v41 = [v38 title];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v42 = String._bridgeToObjectiveC()();

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
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(a7, a8, a9, a10);

  return v21;
}