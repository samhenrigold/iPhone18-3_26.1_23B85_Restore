uint64_t sub_10006DA78()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10006DAB0(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000065A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10006DAF4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView_mapView] = 0;
  v4[OBJC_IVAR____TtC7Journal12MapAssetView_mapType] = 0;
  v9 = OBJC_IVAR____TtC7Journal12MapAssetView_mapThumbnailView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView;
  v11 = [objc_opt_self() effectWithStyle:6];
  v12 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v11];

  *&v4[v10] = v12;
  v13 = OBJC_IVAR____TtC7Journal12MapAssetView_labelView;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC7Journal12MapAssetView_placeholderView;
  type metadata accessor for SymbolAndPlatterFallbackView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView____lazy_storage___platterBlurMaskView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView_locations] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView_annotationsDict] = &_swiftEmptyDictionarySingleton;
  v15 = OBJC_IVAR____TtC7Journal12MapAssetView_latestImageRequestID;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset] = 0;
  v17 = &v4[OBJC_IVAR____TtC7Journal12MapAssetView_platterPadding];
  *v17 = xmmword_100948650;
  v17[1] = xmmword_100948650;
  v18 = &v4[OBJC_IVAR____TtC7Journal12MapAssetView_platterLabelPadding];
  __asm { FMOV            V1.2D, #12.0 }

  *v18 = xmmword_100948660;
  v18[1] = _Q1;
  v24 = &v4[OBJC_IVAR____TtC7Journal12MapAssetView_gradientLabelPadding];
  *v24 = xmmword_100948670;
  v24[1] = xmmword_100948670;
  v25 = OBJC_IVAR____TtC7Journal12MapAssetView_clusterAnnotationsDict;
  *&v4[v25] = sub_100073348(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC7Journal12MapAssetView_newReplacementAnnotation] = 0;
  v4[OBJC_IVAR____TtC7Journal12MapAssetView_needsMapLoad] = 0;
  v28.receiver = v4;
  v28.super_class = type metadata accessor for MapAssetView(0);
  v26 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  sub_10007361C();

  return v26;
}

unint64_t sub_10006DD7C()
{
  result = qword_100AD43F0;
  if (!qword_100AD43F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD43F0);
  }

  return result;
}

unint64_t sub_10006DED4()
{
  result = qword_100ADE6A8;
  if (!qword_100ADE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADE6A8);
  }

  return result;
}

char *sub_10006DF28(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v27.receiver = v4;
  v27.super_class = type metadata accessor for CanvasFallbackAssetView();
  v10 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  [v10 setContentMode:2];
  if (qword_100ACFC18 != -1)
  {
    swift_once();
  }

  v11 = qword_100B2F7A8;
  [v10 setBackgroundColor:qword_100B2F7A8];
  v12 = OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView;
  [*&v10[OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView] setContentMode:2];
  [*&v10[v12] setTintColor:v11];
  [v10 addSubview:*&v10[v12]];
  v13 = *&v10[v12];
  v14 = [v13 superview];
  v15 = &selRef_setSuggestedName_;
  if (v14)
  {
    v16 = v14;
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [v13 centerYAnchor];
    v18 = [v16 centerYAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    [v19 setConstant:0.0];
    if (v19)
    {
      [v19 setActive:1];
    }

    v15 = &selRef_setSuggestedName_;
  }

  else
  {
    v19 = 0;
    v16 = v13;
  }

  v20 = *&v10[v12];
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    [v20 v15[278]];
    v23 = [v22 centerXAnchor];
    v24 = [v20 centerXAnchor];
    v25 = [v24 constraintEqualToAnchor:v23];

    [v25 setConstant:0.0];
    if (v25)
    {
      [v25 setActive:1];
    }
  }

  else
  {
    v25 = 0;
    v22 = v20;
  }

  return v10;
}

uint64_t sub_10006E25C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 initializeBufferWithCopyOfBuffer for DirectionalAttachmentPosition(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

id sub_10006E2AC()
{
  if (qword_100AD0358 != -1)
  {
    swift_once();
  }

  v1 = qword_100B30350;
  qword_100B2F7A8 = qword_100B30350;

  return v1;
}

uint64_t type metadata accessor for PhotoAssetView(uint64_t a1)
{
  result = qword_100ADA848;
  if (!qword_100ADA848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006E35C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADE628, &qword_10094F390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10006E3CC(uint64_t a1)
{
  sub_10006D1E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_10006E480(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_10006E4D8(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADE628, &qword_10094F390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double *sub_10006E540(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_1000F24EC(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = (v13 + 4);
  v17 = (a4 + 4);
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_10006E64C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterView];
  [v1 addSubview:v2];
  v3 = [v2 superview];
  if (v3)
  {
    v4 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v2 leadingAnchor];
    v6 = [v4 leadingAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    [v7 setConstant:4.0];
    [v7 setActive:1];
  }

  v8 = [v2 superview];
  if (v8)
  {
    v9 = v8;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v2 trailingAnchor];
    v11 = [v9 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 setConstant:-4.0];
    [v12 setActive:1];
  }

  [v2 _setCornerRadius:4.0];
  v13 = [v2 heightAnchor];
  v14 = [v1 heightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 multiplier:0.2];

  [v15 setActive:1];
  v16 = *&v1[OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterLabel];
  v17 = [objc_opt_self() secondaryLabelColor];
  [v16 setTextColor:v17];

  [v16 setTextAlignment:1];
  if (qword_100AD03F0 != -1)
  {
    swift_once();
  }

  [v16 setFont:qword_100B303E8];
  [v16 setNumberOfLines:1];
  [v16 setMinimumScaleFactor:0.6];
  [v16 setAdjustsFontForContentSizeCategory:1];
  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v2 addSubview:v16];
  v48 = [objc_allocWithZone(UIView) init];
  [v1 addSubview:v48];
  v18 = [v48 superview];
  if (v18)
  {
    v19 = v18;
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [v48 leadingAnchor];
    v21 = [v19 leadingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    [v22 setConstant:0.0];
    [v22 setActive:1];
  }

  v23 = [v48 superview];
  if (v23)
  {
    v24 = v23;
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v48 trailingAnchor];
    v26 = [v24 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    [v27 setConstant:0.0];
    [v27 setActive:1];
  }

  v28 = [v48 superview];
  if (v28)
  {
    v29 = v28;
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [v48 topAnchor];
    v31 = [v29 topAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    [v32 setConstant:12.0];
    [v32 setActive:1];
  }

  v33 = [v48 bottomAnchor];
  v34 = [v2 topAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  [v35 setActive:1];
  v36 = *&v1[OBJC_IVAR____TtC7Journal23CanvasFallbackAssetView_symbolImageView];
  [v36 removeFromSuperview];
  [v48 addSubview:v36];
  v37 = [v36 superview];
  if (v37)
  {
    v38 = v37;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [v38 centerXAnchor];
    v40 = [v36 centerXAnchor];
    v41 = [v40 constraintEqualToAnchor:v39];

    [v41 setConstant:0.0];
    [v41 setActive:1];
  }

  v42 = [v36 superview];
  if (v42)
  {
    v43 = v42;
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v44 = [v36 centerYAnchor];
    v45 = [v43 centerYAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];

    [v46 setConstant:0.0];
    [v46 setActive:1];

    v47 = v43;
  }

  else
  {
    v47 = v48;
  }
}

void sub_10006EE48(uint64_t a1, id *a2, double *a3, uint64_t *a4)
{
  v7 = objc_opt_self();
  v8 = *a2;
  v9 = [v7 preferredFontForTextStyle:v8];

  v10 = sub_10006F14C(*a3);
  *a4 = v10;
}

double *sub_10006EFE0(double *a1, int64_t a2, char a3)
{
  result = sub_10006E540(a1, a2, a3, *v3, &qword_100AD6670, &qword_100945370, &type metadata for JournalEntryCollectionViewController.Section);
  *v3 = result;
  return result;
}

id sub_10006F034(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  type metadata accessor for CanvasFallbackAssetView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] = 0;
  v4[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 6;
  *&v4[OBJC_IVAR____TtC7Journal16JournalAssetView_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for JournalAssetView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

double *sub_10006F108(double *a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD7CD0, &qword_100945368, type metadata accessor for JournalEntryCollectionViewController.Item);
  *v3 = result;
  return result;
}

id sub_10006F14C(double a1)
{
  v2 = v1;
  v4 = [v1 fontDescriptor];
  v5 = [v4 fontAttributes];

  type metadata accessor for AttributeName(0);
  sub_10006F5AC(&qword_100AD1C78, type metadata accessor for AttributeName, &unk_10093FA94);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = v6;
  if (*(v6 + 16) && (v8 = sub_1000517E0(UIFontDescriptorTraitsAttribute, v7), (v9 & 1) != 0) && (sub_10000BA20(*(v6 + 56) + 32 * v8, &v27), sub_1000F24EC(&qword_100ADFF40, &qword_100951680), (swift_dynamicCast() & 1) != 0))
  {
    v10 = *&v26[0];
  }

  else
  {
    v10 = sub_100072088(_swiftEmptyArrayStorage, &qword_100ADFF48, &qword_100951688, &unk_100ADFF50, &qword_100951690);
  }

  type metadata accessor for Weight(0);
  v28 = v11;
  *&v27 = a1;
  sub_10002432C(&v27, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100072538(v26, UIFontWeightTrait, isUniquelyReferenced_nonNull_native);
  sub_100651CB8(&v27);
  sub_100004F84(&v27, &qword_100AD13D0, &unk_100942DB0);
  v28 = sub_1000F24EC(&qword_100ADFF40, &qword_100951680);
  *&v27 = v10;
  sub_10002432C(&v27, v26);
  v13 = v29;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000730AC(v26, UIFontDescriptorTraitsAttribute, v14);
  v29 = v13;
  v15 = [v2 familyName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v28 = &type metadata for String;
  *&v27 = v16;
  *(&v27 + 1) = v18;
  sub_10002432C(&v27, v26);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000730AC(v26, UIFontDescriptorFamilyAttribute, v19);
  v20 = objc_allocWithZone(UIFontDescriptor);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v22 = [v20 initWithFontAttributes:{isa, v13}];

  [v2 pointSize];
  v24 = [objc_opt_self() fontWithDescriptor:v22 size:v23];

  return v24;
}

uint64_t sub_10006F4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006F554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006F5AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10006F5F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

Swift::Int sub_10006F68C()
{
  Hasher.init(_seed:)();
  sub_10006F6CC(v1);
  return Hasher._finalize()();
}

void sub_10006F6CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  __chkstk_darwin(v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000140BC(v2, v10, type metadata accessor for JournalEntryCollectionViewController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(2uLL);
      }

      return;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v12 = 6;
LABEL_8:
      Hasher._combine(_:)(v12);
      String.hash(into:)();
LABEL_21:

      return;
    }

    v15 = *v10;
    v16 = v10[2];
    Hasher._combine(_:)(7uLL);
    if (v15)
    {
      Hasher._combine(_:)(1u);
      sub_1002F74D0(a1, v15);
      if (v16)
      {
LABEL_16:
        Hasher._combine(_:)(1u);
        String.hash(into:)();

        goto LABEL_21;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v16)
      {
        goto LABEL_16;
      }
    }

    Hasher._combine(_:)(0);
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v14 = *v10;
      Hasher._combine(_:)(3uLL);
      NSObject.hash(into:)();

      return;
    }

    v12 = 1;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v13 = *v10;
    Hasher._combine(_:)(4uLL);
    Hasher._combine(_:)(v13);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(5uLL);
    sub_1000249D4(&qword_100AD4B40, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }
}

void sub_10006F9A8(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7)
{
  v16.receiver = a1;
  v16.super_class = type metadata accessor for PhotoAssetView(0);
  v12 = *a7;
  v13 = v16.receiver;
  objc_msgSendSuper2(&v16, v12, a2, a3, a4, a5);
  v14 = *&v13[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
  [v13 bounds];
  [v14 setFrame:?];

  v15 = *&v13[OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView];
  [v13 bounds];
  [v15 setFrame:?];
}

uint64_t sub_10006FA94(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for UUID();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v45 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JournalEntryCollectionViewController.Item(0);
  __chkstk_darwin(v5);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (&v44 - v9);
  __chkstk_darwin(v11);
  v46 = &v44 - v12;
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  __chkstk_darwin(v16);
  v18 = (&v44 - v17);
  __chkstk_darwin(v19);
  v21 = (&v44 - v20);
  v22 = sub_1000F24EC(&unk_100ADE568, &qword_10094F318);
  __chkstk_darwin(v22 - 8);
  v24 = &v44 - v23;
  v26 = (&v44 + *(v25 + 56) - v23);
  sub_1000140BC(a1, &v44 - v23, type metadata accessor for JournalEntryCollectionViewController.Item);
  sub_1000140BC(v49, v26, type metadata accessor for JournalEntryCollectionViewController.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1000140BC(v24, v10, type metadata accessor for JournalEntryCollectionViewController.Item);
        v29 = *v10;
        v28 = v10[1];
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1000140BC(v24, v7, type metadata accessor for JournalEntryCollectionViewController.Item);
        v35 = *v7;
        v36 = v7[2];
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v32 = _s7Journal12RecentSearchV23__derived_struct_equalsySbAC_ACtFZ_0(v35, v7[1], v36, *v26, v26[1], v26[2]);

          goto LABEL_27;
        }
      }

LABEL_32:

      goto LABEL_34;
    }

    if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_37;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 7)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1000140BC(v24, v21, type metadata accessor for JournalEntryCollectionViewController.Item);
      v29 = *v21;
      v28 = v21[1];
      if (!swift_getEnumCaseMultiPayload())
      {
LABEL_9:
        if (v29 == *v26 && v28 == v26[1])
        {
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v31 & 1) == 0)
          {
            sub_100014124(v24, type metadata accessor for JournalEntryCollectionViewController.Item);
LABEL_35:
            v32 = 0;
            return v32 & 1;
          }
        }

LABEL_37:
        sub_100014124(v24, type metadata accessor for JournalEntryCollectionViewController.Item);
        v32 = 1;
        return v32 & 1;
      }

      goto LABEL_32;
    }

    sub_1000140BC(v24, v18, type metadata accessor for JournalEntryCollectionViewController.Item);
    v33 = *v18;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = *v26;
      sub_1000065A8(0, &unk_100AD43A0, NSObject_ptr);
      v32 = static NSObject.== infix(_:_:)();

      goto LABEL_27;
    }

LABEL_34:
    sub_100004F84(v24, &unk_100ADE568, &qword_10094F318);
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1000140BC(v24, v15, type metadata accessor for JournalEntryCollectionViewController.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_34;
    }

    v32 = *v15 == *v26;
  }

  else
  {
    v37 = v46;
    sub_1000140BC(v24, v46, type metadata accessor for JournalEntryCollectionViewController.Item);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v47 + 8))(v37, v48);
      goto LABEL_34;
    }

    v38 = v47;
    v39 = v45;
    v40 = v26;
    v41 = v48;
    (*(v47 + 32))(v45, v40, v48);
    v32 = static UUID.== infix(_:_:)();
    v42 = *(v38 + 8);
    v42(v39, v41);
    v42(v37, v41);
  }

LABEL_27:
  sub_100014124(v24, type metadata accessor for JournalEntryCollectionViewController.Item);
  return v32 & 1;
}

id sub_1000700A4(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for PhotoAssetView(0);
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_100070114()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100B2F718);
  v1 = sub_10000617C(v0, qword_100B2F718);
  if (qword_100AD01F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30070);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000701DC()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView]];
  v1 = *&v0[OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView];
  [v0 addSubview:v1];
  [v1 setAlpha:0.0];
  [v1 setHidden:0];
  [v1 setContentMode:2];
  [v1 setIsAccessibilityElement:1];
  v2 = UIAccessibilityTraitImage;
  v3 = [v1 accessibilityTraits];
  if ((v2 & ~v3) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  [v1 setAccessibilityTraits:v4 | v3];
  [v1 setAccessibilityIgnoresInvertColors:1];
  if (qword_100AD0878 != -1)
  {
    swift_once();
  }

  v5 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityLabel:v5];

  v6 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v6];
}

double sub_10007039C(char a1, char a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  *(v11 + 32) = v9;
  *(v11 + 40) = a2;
  *(v11 + 41) = a1;
  *(v11 + 48) = ObjectType;

  sub_1003E9628(0, 0, v7, &unk_10094F590, v11);

  return result;
}

uint64_t sub_10007051C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100070554()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100070594(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v59 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v53 = (&v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for DispatchTime();
  v56 = *(v64 - 8);
  __chkstk_darwin(v64);
  v52 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v52 - v9;
  v10 = sub_1000F24EC(&qword_100AD7CD8, &unk_10094F3E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = sub_1000F24EC(&unk_100AE92B0, &unk_10094F350);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  LODWORD(v65) = v21(a1, 1, v19);
  sub_1000082B4(a1, v15, &qword_100AD7CD8, &unk_10094F3E0);
  if (v21(v15, 1, v19) == 1)
  {
    v22 = v66;
    v23 = *(v66 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
    if (v23)
    {
      v24 = v23;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    (*(v20 + 56))(v18, v25, 1, v19);
    if (v21(v15, 1, v19) != 1)
    {
      sub_100004F84(v15, &qword_100AD7CD8, &unk_10094F3E0);
    }
  }

  else
  {
    (*(v20 + 32))(v18, v15, v19);
    (*(v20 + 56))(v18, 0, 1, v19);
    v22 = v66;
  }

  sub_1000082B4(v18, v12, &qword_100AD7CD8, &unk_10094F3E0);
  if (v21(v12, 1, v19) == 1)
  {
    sub_100004F84(v12, &qword_100AD7CD8, &unk_10094F3E0);
  }

  else
  {
    v26 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v20 + 8))(v12, v19);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = (v26 + 16 + 16 * v27);
      v30 = *v28;
      v29 = v28[1];
      sub_100071864(*v28, v29);

      if (v29 > 5)
      {
        sub_100071878(v30, v29);
      }

      else if (v29 == 2)
      {
        if (v65 != 1)
        {
          return sub_100004F84(v18, &qword_100AD7CD8, &unk_10094F3E0);
        }

        *(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_hasLoadedContent) = 0;
        v31 = 1;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  if ((*(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_hasLoadedContent) & 1) == 0)
  {
    *(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_hasLoadedContent) = 1;
  }

  if (v65 == 1)
  {
    v31 = 0;
LABEL_20:
    if (*(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_shouldPlayVideoAfterDelay) == 1)
    {
      *(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_shouldPlayVideoAfterDelay) = 0;
      sub_1000065A8(0, &qword_100AD6210, OS_dispatch_queue_ptr);
      v65 = static OS_dispatch_queue.main.getter();
      LODWORD(v66) = v31;
      v32 = v52;
      static DispatchTime.now()();
      v34 = v53;
      v33 = v54;
      *v53 = 1000;
      v35 = v55;
      (*(v33 + 104))(v34, enum case for DispatchTimeInterval.milliseconds(_:), v55);
      + infix(_:_:)();
      (*(v33 + 8))(v34, v35);
      v56 = *(v56 + 8);
      (v56)(v32, v64);
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100319084;
      aBlock[5] = v36;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006C7C;
      aBlock[3] = &unk_100A67448;
      v37 = _Block_copy(aBlock);

      v38 = v57;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000249D4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
      sub_10000B58C(&qword_100AD1530, &unk_100AD6220, &unk_10093C0A0, &protocol conformance descriptor for [A]);
      v39 = v59;
      v40 = v62;
      v31 = v66;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v41 = v63;
      v42 = v65;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v37);

      (*(v61 + 8))(v39, v40);
      (*(v58 + 8))(v38, v60);
      (v56)(v41, v64);
    }

    v43 = OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus;
    if (*(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus) != 2)
    {
      v44 = [objc_opt_self() defaultCenter];
      if (qword_100ACFC00 != -1)
      {
        swift_once();
      }

      [v44 postNotificationName:qword_100B2F730 object:v22];
    }

    *(v22 + v43) = 2;
    v45 = v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_pendingScrollRequest;
    v46 = *(v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_pendingScrollRequest);
    if (v46)
    {
      *v45 = 0;
      v47 = v45[8];
      v45[8] = 0;
      sub_100304A74(v46, v47 & 1);
    }

    (*((swift_isaMask & *v22) + 0x398))(v31);
    v48 = v22 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v49 = *(v48 + 1);
      ObjectType = swift_getObjectType();
      (*(v49 + 8))(v22, v31, ObjectType, v49);
      swift_unknownObjectRelease();
    }
  }

  return sub_100004F84(v18, &qword_100AD7CD8, &unk_10094F3E0);
}

uint64_t sub_100070F18()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_100070F50()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - v3;
  v60 = type metadata accessor for UUID();
  v58 = *(v60 - 8);
  v5 = *(v58 + 64);
  __chkstk_darwin(v60);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = &v50 - v7;
  v61 = type metadata accessor for Date();
  v59 = *(v61 - 8);
  v8 = *(v59 + 64);
  __chkstk_darwin(v61);
  v56 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v50 - v10;
  v12 = type metadata accessor for JournalFeatureFlags();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v1[OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset];
  if (v17)
  {
    (*(v13 + 104))(v16, enum case for JournalFeatureFlags.debug(_:), v12, v14);
    v18 = v17;
    v19 = JournalFeatureFlags.isEnabled.getter();
    (*(v13 + 8))(v16, v12);
    if (v19)
    {
      v20 = *&v18[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata];
      v21 = [v1 layer];
      v22 = v21;
      if (v20)
      {
        [v21 setBorderColor:0];
        v23 = 0.0;
      }

      else
      {
        v24 = [objc_opt_self() redColor];
        v25 = [v24 CGColor];

        [v22 setBorderColor:v25];
        v23 = 5.0;
        v22 = v25;
      }

      v26 = [v1 layer];
      [v26 setBorderWidth:v23];
    }

    v27 = *&v18[OBJC_IVAR____TtC7Journal5Asset_attachments];
    if (v27 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        v54 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
        v55 = v18;
        v28 = v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
        v53 = v5;
        if (v28 > 6)
        {
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v29 & 1) == 0)
          {
            if (qword_100ACFB90 != -1)
            {
              swift_once();
            }

            v30 = &qword_100B2F628;
LABEL_18:
            v31 = *v30;
            v51 = v11;
            v52 = v31;
            v32 = v11;
            Date.init()();
            v33 = v62;
            UUID.init()();
            v34 = v58;
            v35 = *(v58 + 16);
            v36 = v60;
            v35(v4, v33, v60);
            (*(v34 + 56))(v4, 0, 1, v36);
            v37 = OBJC_IVAR____TtC7Journal14PhotoAssetView_latestImageRequestID;
            swift_beginAccess();
            sub_100014318(v4, &v1[v37], &qword_100AD1420, &unk_10093C080);
            swift_endAccess();
            LODWORD(v54) = v1[v54];
            v38 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v39 = v57;
            v35(v57, v33, v36);
            v40 = v59;
            v41 = v56;
            v42 = v61;
            (*(v59 + 16))(v56, v32, v61);
            v43 = (*(v34 + 80) + 24) & ~*(v34 + 80);
            v44 = (v53 + *(v40 + 80) + v43) & ~*(v40 + 80);
            v45 = swift_allocObject();
            *(v45 + 16) = v38;
            (*(v34 + 32))(v45 + v43, v39, v36);
            (*(v40 + 32))(v45 + v44, v41, v42);
            v46 = objc_opt_self();

            v47 = [v46 currentTraitCollection];
            v48 = v52;
            v49 = v55;
            sub_100076220(v54, 0, 1, v52, v47, sub_100260288, v45);

            (*(v34 + 8))(v62, v36);
            (*(v40 + 8))(v51, v42);

            return;
          }
        }

        if (qword_100ACFB98 != -1)
        {
          swift_once();
        }

        v30 = &qword_100B2F630;
        goto LABEL_18;
      }
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }
  }
}

uint64_t sub_100071714()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_100071864(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_100071878(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

double sub_10007188C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC7Journal14PhotoAssetView_assetImageView);
  [v5 setAlpha:0.0];
  [*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView) setHidden:0];
  v6 = OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset;
  v7 = *(v0 + OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset);
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = *&v7[OBJC_IVAR____TtC7Journal10PhotoAsset_metadata];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v7;

  sub_100046ADC(v4);

  v10 = type metadata accessor for PhotoLibraryAssetMetadata();
  if ((*(*(v10 - 8) + 48))(v4, 1, v10))
  {

    sub_100004F84(v4, &qword_100AD5B20, qword_1009521A0);
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  PhotoLibraryAssetMetadata.placeName.getter();
  v19 = v18;

  sub_100004F84(v4, &qword_100AD5B20, qword_1009521A0);
  if (!v19)
  {
    goto LABEL_5;
  }

  v8 = String._bridgeToObjectiveC()();

LABEL_6:
  [v5 setAccessibilityValue:v8];

  sub_100070F50();
  v12 = *(v1 + v6);
  if (v12)
  {
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = &v12[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v15 = *&v12[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v16 = *&v12[OBJC_IVAR____TtC7Journal5Asset_didUpdate + 8];
    *v14 = sub_100260280;
    v14[1] = v13;
    v17 = v12;

    sub_100004DF8(v15, v16);
  }

  return result;
}

uint64_t sub_100071AE0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_100071B2C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_opt_self();
  v4 = [v3 fractionalWidthDimension:1.0];
  v5 = [v3 estimatedDimension:100.0];
  v6 = objc_opt_self();
  v7 = [v6 sizeWithWidthDimension:v4 heightDimension:v5];

  v8 = [objc_opt_self() itemWithLayoutSize:v7];
  v9 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100941D50;
  *(v10 + 32) = v8;
  sub_1000065A8(0, &unk_100AD8A80, NSCollectionLayoutItem_ptr);
  v11 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v9 horizontalGroupWithLayoutSize:v7 subitems:isa];

  v14 = [objc_opt_self() sectionWithGroup:v13];
  [v14 setInterGroupSpacing:20.0];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v16 = Strong;
  v32 = v11;
  v17 = *(Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_dataSource);
  v18 = v17;

  if (!v17)
  {
    v11 = v32;
    goto LABEL_8;
  }

  dispatch thunk of UICollectionViewDiffableDataSource.sectionIdentifier(for:)();

  if (v35 > 2)
  {
    v11 = v32;
    if ((v35 - 3) >= 3)
    {
      if (v35 == 6)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_18:

    return v14;
  }

  v11 = v32;
  switch(v35)
  {
    case 0:
LABEL_15:
      sub_1000721A0(a2);
      goto LABEL_18;
    case 1:
      sub_1000721A0(a2);
      v22 = [v3 fractionalWidthDimension:1.0];
      v23 = [v3 estimatedDimension:50.0];
      v24 = [v6 sizeWithWidthDimension:v22 heightDimension:v23];

      v25 = v24;
      v26 = String._bridgeToObjectiveC()();
      v27 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v25 elementKind:v26 alignment:2];

      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100941D50;
      *(v28 + 32) = v27;
      sub_1000065A8(0, &unk_100ADE680, NSCollectionLayoutBoundarySupplementaryItem_ptr);
      v29 = v27;
      v30 = Array._bridgeToObjectiveC()().super.isa;

      [v14 setBoundarySupplementaryItems:v30];

      v11 = v32;
      goto LABEL_18;
    case 2:
      [v14 setContentInsets:{0.0, -8.0, 8.0, -8.0}];
      goto LABEL_15;
  }

LABEL_16:
  sub_10007258C(v34, v35);
LABEL_8:
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = sub_10007294C(1, a2);

    return v21;
  }

  else
  {

    return 0;
  }
}

void sub_100071FBC()
{
  v1 = v0 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail;
  if (*(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail) == 1)
  {
    sub_100707F50();
  }

  else
  {
    v2 = OBJC_IVAR____TtC7Journal10MosaicCell_overflowView;
    v3 = *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowView);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *(v0 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v0 + v2) = 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowView);
  if (v5)
  {
    v6 = *(v1 + 8);
    v7 = v5;
    sub_1001353BC(v6);
  }
}

unint64_t sub_100072088(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_1000F24EC(a2, a3);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = a1 + 32;

    while (1)
    {
      sub_1000082B4(v10, &v18, a4, a5);
      v11 = v18;
      result = sub_1000517E0(v18, v12);
      if (v14)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_10002432C(&v19, (v9[7] + 32 * result));
      v15 = v9[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v9[2] = v17;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

id sub_1000721A0(void *a1)
{
  v3 = sub_1000F24EC(&qword_100ADD520, &qword_100945570);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v13 - v5;
  [objc_msgSend(a1 container];
  v8 = v7;
  swift_unknownObjectRelease();
  v9 = [a1 traitCollection];
  [v9 horizontalSizeClass];

  UserInterfaceSizeClass.init(_:)();
  v10 = sub_10002DDD4(v8, 0, v6);
  [objc_msgSend(a1 container];
  swift_unknownObjectRelease();
  v11 = [a1 traitCollection];
  [v11 displayScale];

  [v1 contentInsets];
  [v1 setContentInsets:?];
  [v1 contentInsets];
  [v1 setContentInsets:?];
  return [v1 setContentInsetsReference:2];
}

BOOL sub_100072430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
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
    sub_1006B96F4(a4, a5, a6);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_10007258C(uint64_t a1, unint64_t a2)
{
  if (a2 != 6)
  {
    return sub_100071878(a1, a2);
  }

  return a1;
}

void sub_10007259C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1000F24EC(a3, a4);
  v37 = v6;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v4;
    v36 = v7;
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
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v24 = (v22 + 32 * v21);
      if (v37)
      {
        sub_10002432C(v24, v38);
      }

      else
      {
        sub_10000BA20(v24, v38);
        v25 = v23;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();

      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      sub_10002432C(v38, (*(v9 + 56) + 32 * v17));
      ++*(v9 + 16);
      v7 = v36;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v5 = v9;
}

id sub_10007294C(char a1, void *a2)
{
  v4 = [objc_allocWithZone(_UICollectionViewListLayoutSectionConfiguration) initWithAppearanceStyle:3 layoutEnvironment:a2];
  [objc_msgSend(a2 "container")];
  v6 = v5;
  swift_unknownObjectRelease();
  [v4 setEstimatedRowHeight:v6 * 0.75];
  [v4 setSeparatorStyle:0];
  v7 = &_UICollectionListLayoutUnavailable;
  if (a1)
  {
    v7 = &_UICollectionViewListLayoutSectionAutomaticDimension;
  }

  [v4 setSectionHeaderHeight:*v7];
  [v4 setHeaderTopPadding:0.0];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = sub_100319024;
  v19 = v8;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1003084B0;
  v17 = &unk_100A673F8;
  v9 = _Block_copy(&v14);

  [v4 setLeadingSwipeActionsConfigurationProvider:v9];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = sub_100319054;
  v19 = v10;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1003084B0;
  v17 = &unk_100A67420;
  v11 = _Block_copy(&v14);

  [v4 setTrailingSwipeActionsConfigurationProvider:v11];
  _Block_release(v11);
  v12 = [objc_allocWithZone(_UICollectionViewListLayoutSection) initWithConfiguration:v4 layoutEnvironment:a2];
  [v12 setInterGroupSpacing:20.0];
  sub_1000721A0(a2);

  return v12;
}

void sub_100072BF4(uint64_t a1)
{
  v2 = v1;
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MosaicCell();
  objc_msgSendSuper2(&v7, "_bridgedUpdateConfigurationUsingState:", isa);

  if ((UICellConfigurationState.isSelected.getter() & 1) == 0)
  {
    v5 = *&v1[OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeLayer];
    goto LABEL_5;
  }

  sub_1007071E0();
  v4 = OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeLayer;
  if ([*&v1[OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeLayer] isHidden])
  {
    v5 = *&v1[v4];
LABEL_5:
    [v5 removeFromSuperlayer];
    return;
  }

  v6 = [v1 layer];
  [v6 addSublayer:*&v2[v4]];
}

double sub_100072D60@<D0>(uint64_t (*a1)(void)@<X1>, void (*a2)(uint64_t, uint64_t)@<X2>, void (*a3)(void)@<X3>, _OWORD *a4@<X8>)
{
  v7 = v4;
  v9 = a1();
  if (v10)
  {
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v4;
    v15 = *v7;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a3();
      v13 = v15;
    }

    sub_10002432C((*(v13 + 56) + 32 * v11), a4);
    a2(v11, v13);
    *v7 = v13;
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_100072E1C(uint64_t a1)
{
  swift_getObjectType();
  sub_10005D974(a1, &v22);
  v3 = *(&v23 + 1);
  if (*(&v23 + 1))
  {
    v4 = sub_10000CA14(&v22, *(&v23 + 1));
    v5 = *(v3 - 8);
    v6 = __chkstk_darwin(v4);
    v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    sub_10000BA7C(&v22);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for MosaicLayout.Attributes();
  v26.receiver = v1;
  v26.super_class = v10;
  v11 = objc_msgSendSuper2(&v26, "isEqual:", v9);
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_10005D974(a1, &v22);
    if (*(&v23 + 1))
    {
      if (swift_dynamicCast())
      {
        v12 = v18;
        if (sub_10003C2FC(v1[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType], *(v18 + OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_sizeType)))
        {
          v22 = *&v12[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
          v23 = *&v12[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 16];
          v24 = *&v12[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 32];
          v25 = *&v12[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 48];
          v13 = *&v1[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 16];
          v17[0] = *&v1[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii];
          v17[1] = v13;
          v14 = *&v1[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 48];
          v17[2] = *&v1[OBJC_IVAR____TtCC7Journal12MosaicLayout10Attributes_cornerRadii + 32];
          v17[3] = v14;
          v18 = v22;
          v19 = v23;
          v20 = v24;
          v21 = v25;
          v15 = CACornerRadiiEqualToRadii();

          return v15;
        }
      }
    }

    else
    {
      sub_1000261D4(&v22);
    }
  }

  return 0;
}

uint64_t type metadata accessor for LivePhotoAssetView(uint64_t a1)
{
  result = qword_100AEF630;
  if (!qword_100AEF630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100073100(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  *&v4[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoSymbolView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset] = 0;
  v10 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_latestImageRequestID;
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLivePlayer] = 0;
  v4[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_shouldShowLiveSymbol] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for LivePhotoAssetView(0);
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  sub_100073B5C();

  return v12;
}

uint64_t sub_100073254(uint64_t a1)
{
  v2 = sub_1000F27D8(&qword_100AD1998, type metadata accessor for LAError, &unk_10093F288);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_100073348(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000F24EC(&qword_100AE0010, &unk_10096CFC0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a1 + 6);
  v7 = sub_10036250C(sub_1006D3064, sub_100362C00, v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;
    swift_unknownObjectRetain();
    v9 = sub_10036250C(sub_1006D3064, sub_100362C00, v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1000734B4(SEL *a1, double a2, double a3, double a4, double a5)
{
  v15.receiver = v5;
  v15.super_class = type metadata accessor for LivePhotoAssetView(0);
  objc_msgSendSuper2(&v15, *a1, a2, a3, a4, a5);
  v11 = *&v5[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
  [v5 bounds];
  [v11 setFrame:?];

  v12 = *&v5[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView];
  [v5 bounds];
  [v12 setFrame:?];
  v13 = *&v5[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView];
  if (v13)
  {
    v14 = v13;
    [v5 bounds];
    [v14 setFrame:?];
  }
}

id sub_1000735C0(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for LivePhotoAssetView(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_10007361C()
{
  v1 = v0;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal12MapAssetView_placeholderView]];
  sub_100013178(0.0);

  v2 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapThumbnailView];
  [v0 addSubview:v2];
  v3 = OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView]];
  v4 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_labelView];
  [v1 addSubview:*&v1[OBJC_IVAR____TtC7Journal12MapAssetView_labelView]];
  [v4 setMinimumScaleFactor:0.6];
  [v4 setLineBreakMode:4];
  [v4 setAdjustsFontForContentSizeCategory:1];
  [v2 setContentMode:2];
  [v2 setAlpha:0.0];
  [v2 setClipsToBounds:1];
  [*&v1[v3] setAlpha:0.0];
  v5 = [*&v1[v3] layer];
  [v5 setCornerCurve:kCACornerCurveContinuous];

  [v4 setAlpha:0.0];
  v6 = [objc_opt_self() secondaryLabelColor];
  [v4 setTextColor:v6];

  [v4 setTextAlignment:1];
  sub_1000F24EC(&unk_100AEBEC0, &unk_1009432D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100940080;
  *(v7 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v7 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  v10[3] = type metadata accessor for MapAssetView(0);
  v10[0] = v1;
  v8 = v1;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_10000BA7C(v10);
  v9 = [objc_opt_self() defaultCenter];
  [v9 addObserver:v8 selector:"userInterfaceStyleChanged" name:UIApplicationWillEnterForegroundNotification object:0];
}

uint64_t sub_1000738CC(char a1, unsigned __int8 a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = v11;
  *(v13 + 40) = a2;
  *(v13 + 41) = a1;
  *(v13 + 48) = ObjectType;

  sub_1003E9628(0, 0, v9, &unk_10094F590, v13);

  sub_1000746FC();
  v14 = (a2 | 2) == 3;
  if ((a2 | 2) == 3)
  {
    v15 = &selRef_tertiarySystemFillColor;
  }

  else
  {
    v15 = &selRef_clearColor;
  }

  if (v14)
  {
    v16 = 4.0;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = *(v3 + OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterView);
  v18 = [objc_opt_self() *v15];
  [v17 setBackgroundColor:v18];

  sub_100013178(v16);
}

uint64_t sub_100073AE4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100073B1C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_100073B5C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17 - v4;
  [v0 addSubview:{*&v0[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView], v3}];
  v6 = *&v0[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView];
  [v1 addSubview:v6];
  [v6 setAlpha:0.0];
  [v6 setContentMode:2];
  [v1 setIsAccessibilityElement:1];
  v7 = UIAccessibilityTraitImage;
  v8 = [v1 accessibilityTraits];
  if ((v7 & ~v8) != 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  [v1 setAccessibilityTraits:v9 | v8];
  [v1 setAccessibilityIgnoresInvertColors:1];
  if (qword_100AD0878 != -1)
  {
    swift_once();
  }

  v10 = String._bridgeToObjectiveC()();
  [v1 setAccessibilityLabel:v10];

  v11 = *&v1[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset];
  if (!v11)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v12 = *&v11[OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata];
  if (v12)
  {
    v13 = v11;

    sub_100046ADC(v5);

    v14 = type metadata accessor for PhotoLibraryAssetMetadata();
    if ((*(*(v14 - 8) + 48))(v5, 1, v14))
    {

      sub_100004F84(v5, &qword_100AD5B20, qword_1009521A0);
    }

    else
    {
      PhotoLibraryAssetMetadata.placeName.getter();
      v16 = v15;

      sub_100004F84(v5, &qword_100AD5B20, qword_1009521A0);
      if (v16)
      {
        v12 = String._bridgeToObjectiveC()();

        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

LABEL_11:
  [v1 setAccessibilityValue:v12];
}

void sub_100073E04()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - v3;
  v55 = type metadata accessor for UUID();
  v51 = *(v55 - 8);
  v5 = *(v51 + 64);
  __chkstk_darwin(v55);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v47 - v7;
  v56 = type metadata accessor for Date();
  v54 = *(v56 - 8);
  v9 = *(v54 + 64);
  __chkstk_darwin(v56);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v47 - v11;
  v12 = type metadata accessor for JournalFeatureFlags();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v1[OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset];
  if (v17)
  {
    (*(v13 + 104))(v16, enum case for JournalFeatureFlags.debug(_:), v12, v14);
    v18 = v17;
    v19 = JournalFeatureFlags.isEnabled.getter();
    (*(v13 + 8))(v16, v12);
    if (v19)
    {
      v20 = *&v18[OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata];
      v21 = [v1 layer];
      v22 = v21;
      if (v20)
      {
        [v21 setBorderColor:0];
        v23 = 0.0;
      }

      else
      {
        v24 = [objc_opt_self() redColor];
        v25 = [v24 CGColor];

        [v22 setBorderColor:v25];
        v23 = 5.0;
        v22 = v25;
      }

      v26 = [v1 layer];
      [v26 setBorderWidth:v23];
    }

    v27 = *&v18[OBJC_IVAR____TtC7Journal5Asset_attachments];
    if (v27 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        Date.init()();
        v49 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
        v50 = v18;
        if (v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] > 6u)
        {
        }

        else
        {
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v28 & 1) == 0)
          {
            if (qword_100ACFB90 != -1)
            {
              swift_once();
            }

            v29 = &qword_100B2F628;
LABEL_18:
            v48 = *v29;
            v30 = v8;
            UUID.init()();
            v31 = v51;
            v32 = *(v51 + 16);
            v47 = v30;
            v33 = v55;
            v32(v4, v30, v55);
            (*(v31 + 56))(v4, 0, 1, v33);
            v34 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_latestImageRequestID;
            swift_beginAccess();
            sub_100075184(v4, &v1[v34]);
            swift_endAccess();
            LODWORD(v49) = v1[v49];
            v35 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v36 = v53;
            v32(v53, v30, v33);
            v37 = v54;
            v38 = v52;
            v39 = v56;
            (*(v54 + 16))(v52, v57, v56);
            v40 = (*(v31 + 80) + 24) & ~*(v31 + 80);
            v41 = (v5 + *(v37 + 80) + v40) & ~*(v37 + 80);
            v42 = swift_allocObject();
            *(v42 + 16) = v35;
            (*(v31 + 32))(v42 + v40, v36, v33);
            (*(v37 + 32))(v42 + v41, v38, v39);
            v43 = objc_opt_self();

            v44 = [v43 currentTraitCollection];
            v45 = v48;
            v46 = v50;
            sub_100076220(v49, 0, 1, v48, v44, sub_1000A59CC, v42);

            (*(v31 + 8))(v47, v33);
            (*(v37 + 8))(v57, v39);

            return;
          }
        }

        if (qword_100ACFB98 != -1)
        {
          swift_once();
        }

        v29 = &qword_100B2F630;
        goto LABEL_18;
      }
    }

    else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }
  }
}

uint64_t sub_1000745AC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

id sub_1000746FC()
{
  v2 = v0;
  v3 = [v0 superview];
  if (v3)
  {
    v4 = v3;
    while (1)
    {
      v5 = v4;
      v6 = [v5 constraints];
      sub_1000065A8(0, &qword_100AD8000, NSLayoutConstraint_ptr);
      v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v7 >> 62)
      {
        break;
      }

      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_6;
      }

LABEL_3:

      v4 = [v5 superview];

      if (!v4)
      {
        goto LABEL_26;
      }
    }

    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v8 < 1)
    {
      goto LABEL_48;
    }

    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 firstItem];
      if (v12)
      {
        v1 = v12;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_1000065A8(0, &unk_100AD43A0, NSObject_ptr);
          if (static NSObject.== infix(_:_:)())
          {
            [v5 removeConstraint:v11];
          }
        }

        swift_unknownObjectRelease();
      }

      v13 = [v11 secondItem];
      if (v13)
      {
        v1 = v13;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          swift_unknownObjectRelease();
          goto LABEL_10;
        }

        sub_1000065A8(0, &unk_100AD43A0, NSObject_ptr);
        if (static NSObject.== infix(_:_:)())
        {
          [v5 removeConstraint:v11];
        }

        swift_unknownObjectRelease();
      }

LABEL_10:
      if (v8 == ++v9)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_26:
  v14 = [v2 constraints];
  sub_1000065A8(0, &qword_100AD8000, NSLayoutConstraint_ptr);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v1 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v28 = v1;
    v16 = 0;
    v17 = v1 & 0xC000000000000001;
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v29 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v16 >= *(v18 + 16))
        {
          goto LABEL_47;
        }

        v19 = *(v1 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if ([v19 firstItem])
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v22 = i;
          v23 = v17;
          sub_1000065A8(0, &qword_100ADC670, UIView_ptr);
          v24 = v2;
          v25 = static NSObject.== infix(_:_:)();

          swift_unknownObjectRelease();
          if (v25)
          {
            v17 = v23;
            v18 = v29;
            if ([v20 secondItem])
            {

              swift_unknownObjectRelease();
            }

            else
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              v18 = v29;
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            i = v22;
            v1 = v28;
          }

          else
          {

            v17 = v23;
            i = v22;
            v1 = v28;
            v18 = v29;
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      ++v16;
      if (v21 == i)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

LABEL_50:

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 removeConstraints:isa];

  return [v2 setTranslatesAutoresizingMaskIntoConstraints:1];
}

void sub_100074C10(void *a1, char a2)
{
  v3 = v2;
  v4 = a2;
  v2[OBJC_IVAR____TtC7Journal12MapAssetView_mapType] = a2;
  v5 = *&v2[OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset];
  *&v3[OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset] = a1;
  a1;

  sub_1000750F8();
  [v3 setIsAccessibilityElement:v4 != 2];
  sub_1000751F4();
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v3 setAccessibilityLabel:v7];

  sub_100075CB0();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v3 setAccessibilityValue:v9];
}

void sub_100074D28()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView;
    v4 = *(v1 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoView);
    if (v4)
    {
      v5 = *(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
      v32 = v4;
      v6 = v2;
      sub_1000B3430(v5, v6, &OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata, COERCE_CGFLOAT(type metadata accessor for LivePhotoAsset), v33);
      if (v34)
      {
        v7 = [*(v1 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView) layer];
        v8 = 0.0;
        v9 = 1.0;
        [v7 setContentsRect:{0.0, 0.0, 1.0, 1.0}];

        v10 = [v32 layer];
        v11 = 0.0;
        v12 = 1.0;
      }

      else
      {
        v14 = *&v33[2];
        v13 = *&v33[3];
        v16 = *v33;
        v15 = *&v33[1];
        sub_100067B84();
        v19 = v17 / v18;
        v20 = v32;
        [v20 frame];
        v22 = v21;
        [v20 frame];
        v24 = v23;

        sub_1003AE85C(v19, v22 / v24, v16, v15, v14, v13);
        v8 = v25;
        v11 = v26;
        v9 = v27;
        v12 = v28;
        v29 = *(v1 + v3);
        if (v29)
        {
          v30 = [v29 layer];
          [v30 setContentsRect:{v8, v11, v9, v12}];
        }

        v10 = [*(v1 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_thumbnailView) layer];
      }

      v31 = v10;
      [v31 setContentsRect:{v8, v11, v9, v12}];
    }
  }
}

double sub_100074F78()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v3 = *((swift_isaMask & *v2) + 0x58);
  v4 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v5 = v2;
  v3(0, v4);

  sub_100073E04();
  v7 = *(v1 + OBJC_IVAR____TtC7Journal18LivePhotoAssetView_livePhotoAsset);
  if (v7)
  {
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = &v7[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v10 = *&v7[OBJC_IVAR____TtC7Journal5Asset_didUpdate];
    v11 = *&v7[OBJC_IVAR____TtC7Journal5Asset_didUpdate + 8];
    *v9 = sub_100732FC0;
    v9[1] = v8;
    v12 = v7;

    sub_100004DF8(v10, v11);
  }

  return result;
}

uint64_t sub_1000750C0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_1000750F8()
{
  [v0 frame];
  if (v2 <= 0.0)
  {
    if (!v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapType])
    {
      goto LABEL_6;
    }
  }

  else if (!v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapType])
  {
    v1 = sub_10007BFCC();
    goto LABEL_6;
  }

  sub_10021F79C();
LABEL_6:
  v3 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset];
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC7Journal5Asset_delegates);

    [v4 addObject:{v0, v1}];
  }
}

uint64_t sub_100075184(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000751F4()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for AssetType();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v0, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == enum case for AssetType.photo(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008E0110;
    v10 = 1953458288;
LABEL_3:
    v11 = v10 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
LABEL_4:
    v12 = 0xE500000000000000;
LABEL_5:
    v13.super.isa = v9;
    v14 = 0;
    v15 = 0xE000000000000000;
    v16 = 0xD000000000000034;
LABEL_9:
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, 0, v13, *&v14, *(&v20 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v8 == enum case for AssetType.livePhoto(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008E00D0;
    v11 = 0x6F6870206576696CLL;
    v12 = 0xEA00000000006F74;
    v16 = 0xD000000000000038;
LABEL_8:
    v13.super.isa = v9;
    v14 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_9;
  }

  if (v8 == enum case for AssetType.video(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008E0090;
    v10 = 1701079414;
    goto LABEL_3;
  }

  if (v8 == enum case for AssetType.music(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008E0050;
    v11 = 0x636973756DLL;
    goto LABEL_4;
  }

  if (v8 == enum case for AssetType.podcast(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008E0010;
    v19 = 0x736163646F70;
LABEL_17:
    v11 = v19 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
LABEL_18:
    v16 = 0xD000000000000036;
LABEL_19:
    v12 = 0xE700000000000000;
    goto LABEL_8;
  }

  if (v8 == enum case for AssetType.book(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v16 = 0xD000000000000033;
    v20 = 0x80000001008DFFD0;
    v11 = 1802465122;
    v12 = 0xE400000000000000;
    goto LABEL_8;
  }

  if (v8 == enum case for AssetType.audio(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008DFF90;
    v11 = 0x6572206F69647561;
    v12 = 0xEF676E6964726F63;
    goto LABEL_5;
  }

  if (v8 == enum case for AssetType.visit(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008DFF10;
    v11 = 0x7469736976;
    goto LABEL_4;
  }

  if (v8 == enum case for AssetType.multiPinMap(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008DFF10;
    v11 = 0x6563616C70;
    goto LABEL_4;
  }

  if (v8 == enum case for AssetType.genericMap(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008DFF10;
    v11 = 0x20676E696B6C6177;
    v12 = 0xEC00000061657261;
    goto LABEL_5;
  }

  if (v8 == enum case for AssetType.link(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v16 = 0xD000000000000033;
    v20 = 0x80000001008DFED0;
    v11 = 1802398060;
    v12 = 0xE400000000000000;
    goto LABEL_8;
  }

  if (v8 == enum case for AssetType.contact(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008DFE90;
    v19 = 0x6361746E6F63;
    goto LABEL_17;
  }

  if (v8 == enum case for AssetType.workoutIcon(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008DFE50;
    v11 = 0x74756F6B726F77;
    v16 = 0xD00000000000003ALL;
    goto LABEL_19;
  }

  if (v8 == enum case for AssetType.workoutRoute(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008DFE10;
    v11 = 0x2074756F6B726F77;
    v12 = 0xED00006574756F72;
    v16 = 0xD00000000000003BLL;
    goto LABEL_8;
  }

  if (v8 == enum case for AssetType.reflection(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008DFDD0;
    v11 = 0x697463656C666572;
    v16 = 0xD000000000000039;
    v12 = 0xEA00000000006E6FLL;
    goto LABEL_8;
  }

  if (v8 == enum case for AssetType.stateOfMind(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008DFD90;
    v11 = 0x666F206574617473;
    v12 = 0xED0000646E696D20;
    v16 = 0xD00000000000003ALL;
    goto LABEL_8;
  }

  if (v8 == enum case for AssetType.motionActivity(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008DFD50;
    v11 = 0x61206E6F69746F6DLL;
    v12 = 0xEF79746976697463;
    v16 = 0xD00000000000003DLL;
    goto LABEL_8;
  }

  if (v8 == enum case for AssetType.thirdPartyMedia(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008DFD10;
    v11 = 0x616964656DLL;
    goto LABEL_4;
  }

  if (v8 == enum case for AssetType.placeholder(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008DFF50;
    v11 = 0x6C6F686563616C70;
    v12 = 0xEB00000000726564;
    v16 = 0xD00000000000003ALL;
    goto LABEL_8;
  }

  if (v8 == enum case for AssetType.streakEvent(_:))
  {
    return 0;
  }

  if (v8 == enum case for AssetType.drawing(_:))
  {
    v9 = [objc_opt_self() mainBundle];
    v20 = 0x80000001008DFCD0;
    v11 = 0x676E6977617264;
    goto LABEL_18;
  }

  if (v8 == enum case for AssetType.confetti(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  if (v8 == enum case for AssetType.unknown(_:))
  {
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100075CB0()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v40 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v39 - v5;
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  v10 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for MultiPinMapAssetMetadata();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v14 + 56))(v12, 1, 1, v13, v15);
    goto LABEL_12;
  }

  v39 = v0;

  sub_1000768B4(v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_12:
    sub_100004F84(v12, &unk_100AD5B30, &unk_100941F80);
    return 0;
  }

  (*(v14 + 32))(v17, v12, v13);
  v18 = MultiPinMapAssetMetadata.visitsData.getter();
  if (!v18)
  {
    goto LABEL_14;
  }

  if (*(v18 + 16))
  {
    v19 = v40;
    (*(v40 + 16))(v9, v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v1);

    v20 = VisitAssetMetadata.placeName.getter();
    v22 = v21;
    (*(v19 + 8))(v9, v1);
    if (!v22)
    {
      goto LABEL_14;
    }

    v23 = v20;
    v24 = sub_100076E78();
    if ((v25 & 1) == 0)
    {
      v26 = v24;
      if (v24 >= 2)
      {
        if (qword_100AD0858 != -1)
        {
          swift_once();
        }

        sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_100940050;
        *(v27 + 56) = &type metadata for String;
        v28 = sub_100031B20();
        *(v27 + 32) = v23;
        *(v27 + 40) = v22;
        *(v27 + 96) = &type metadata for Int;
        *(v27 + 104) = &protocol witness table for Int;
        *(v27 + 64) = v28;
        *(v27 + 72) = v26 - 1;
        v29 = static String.localizedStringWithFormat(_:_:)();

        goto LABEL_25;
      }
    }
  }

LABEL_14:
  sub_1000F24EC(&qword_100AD38F0, &unk_100941FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  v32 = MultiPinMapAssetMetadata.visitsData.getter();
  if (v32)
  {
    if (*(v32 + 16))
    {
      v33 = v40;
      (*(v40 + 16))(v6, v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v1);

      *(inited + 32) = VisitAssetMetadata.placeName.getter();
      *(inited + 40) = v34;
      (*(v33 + 8))(v6, v1);
      goto LABEL_19;
    }
  }

  *(inited + 32) = 0;
  *(inited + 40) = 0;
LABEL_19:
  v35 = MultiPinMapAssetMetadata.visitsData.getter();
  if (!v35)
  {
LABEL_23:
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    goto LABEL_24;
  }

  if (!*(v35 + 16))
  {

    goto LABEL_23;
  }

  v36 = v40;
  (*(v40 + 16))(v3, v35 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v1);

  *(inited + 48) = VisitAssetMetadata.city.getter();
  *(inited + 56) = v37;
  (*(v36 + 8))(v3, v1);
LABEL_24:
  sub_10009BB20(8236, 0xE200000000000000, inited);
  v29 = v38;
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AE4870, &qword_100945360);
  swift_arrayDestroy();
LABEL_25:
  (*(v14 + 8))(v17, v13);
  return v29;
}

double sub_100076220(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a7;
  v48 = a6;
  v57 = a4;
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v53 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UUID();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  v17 = __chkstk_darwin(v15);
  v18 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a3 & 1;
  if (a3)
  {
    v20 = 0;
  }

  else
  {
    v20 = a2;
  }

  v21 = (*((swift_isaMask & *v7) + 0x2F8))(v20, a1, a5, v17);
  v23 = v22;
  v45 = (*((swift_isaMask & *v7) + 0x2F0))(a1, a2, v19, v21, v22, a5);
  v24 = swift_getObjectType();
  v25 = swift_conformsToProtocol2();
  if (v25)
  {
    v44 = sub_1000387D4(v24, v25);
  }

  else
  {
    v44 = 0;
  }

  v26 = (v7 + OBJC_IVAR____TtC7Journal5Asset_thumbnailCacheKey);
  *v26 = v21;
  v26[1] = v23;

  v43 = *(v7 + OBJC_IVAR____TtC7Journal5Asset_attachmentIdsMissingFile);
  v27 = *(v7 + OBJC_IVAR____TtC7Journal5Asset_attachments);
  if (v27 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v46;
  v28 = v47;
  (*(v46 + 16))(&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + OBJC_IVAR____TtC7Journal5Asset_id, v47);
  v30 = (*(v29 + 80) + 72) & ~*(v29 + 80);
  v31 = v30 + v16;
  v32 = swift_allocObject();
  *(v32 + 2) = v21;
  *(v32 + 3) = v23;
  v33 = v50;
  *(v32 + 4) = v48;
  *(v32 + 5) = v33;
  v34 = v45;
  v35 = v57;
  *(v32 + 6) = v45;
  *(v32 + 7) = v35;
  *(v32 + 8) = v42;
  (*(v29 + 32))(&v32[v30], v18, v28);
  v32[v31] = v44;
  *&v32[(v31 & 0xFFFFFFFFFFFFFFF8) + 8] = v43;
  *&v32[((v31 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  aBlock[4] = sub_100077704;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A62A50;
  v36 = _Block_copy(aBlock);

  v37 = v34;
  v57;
  v38 = v51;
  static DispatchQoS.unspecified.getter();
  v58 = _swiftEmptyArrayStorage;
  sub_100034178(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
  sub_100006610();
  v39 = v53;
  v40 = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v55 + 8))(v39, v40);
  (*(v52 + 8))(v38, v54);

  return result;
}

uint64_t sub_1000767B4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_1000768B4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD38D0, &qword_1009522B0);
  __chkstk_darwin(v3);
  v5 = &v20[-v4];
  v6 = sub_1000F24EC(&qword_100ADA8B8, &qword_10094A5B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v20[-v10];
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_1000082B4(v1 + v12, v11, &qword_100ADA8B8, &qword_10094A5B0);
  v13 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_100004F84(v11, &qword_100ADA8B8, &qword_10094A5B0);
    sub_1000082B4(v1 + *(*v1 + 120), v5, &qword_100AD38D0, &qword_1009522B0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = type metadata accessor for MultiPinMapAssetMetadata();
      v16 = *(v15 - 8);
      (*(v16 + 32))(a1, v5, v15);
      (*(v16 + 56))(a1, 0, 1, v15);
    }

    else
    {
      v19 = *v5;
      v18 = v5[1];
      type metadata accessor for MultiPinMapAssetMetadata();
      sub_10004A6D8(&qword_100AD3870, &type metadata accessor for MultiPinMapAssetMetadata, &protocol conformance descriptor for MultiPinMapAssetMetadata);
      Data.asObject<A>(of:)();
      sub_1000340DC(v19, v18);
    }

    sub_1000082B4(a1, v8, &unk_100AD5B30, &unk_100941F80);
    (*(v14 + 56))(v8, 0, 1, v13);
    swift_beginAccess();
    sub_100014318(v8, v1 + v12, &qword_100ADA8B8, &qword_10094A5B0);
    swift_endAccess();
  }

  else
  {
    sub_100021CEC(v11, a1, &unk_100AD5B30, &unk_100941F80);
  }

  return result;
}

uint64_t sub_100076C58(uint64_t a1, unsigned __int8 a2)
{
  type metadata accessor for UUID();
  sub_100034178(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  if (a2 > 3u)
  {
    v13 = 0xE500000000000000;
    v14 = 0x6C6C616D73;
    if (a2 != 6)
    {
      v14 = 0x657263536C6C7566;
      v13 = 0xEA00000000006E65;
    }

    v15 = 0xE600000000000000;
    v16 = 0x6D756964656DLL;
    if (a2 != 4)
    {
      v16 = 0x61546D756964656DLL;
      v15 = 0xEA00000000006C6CLL;
    }

    if (a2 <= 5u)
    {
      v11 = v16;
    }

    else
    {
      v11 = v14;
    }

    if (a2 <= 5u)
    {
      v12 = v15;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v7 = 0x656772614C78;
    v8 = 0xEA00000000006564;
    v9 = 0x69576D756964656DLL;
    if (a2 != 2)
    {
      v9 = 0x656772616CLL;
      v8 = 0xE500000000000000;
    }

    if (a2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v7 = 0x6154656772614C78;
      v10 = 0xEA00000000006C6CLL;
    }

    if (a2 <= 1u)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    if (a2 <= 1u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }
  }

  v17 = v12;
  String.append(_:)(*&v11);

  return 0x2D626D756874;
}

uint64_t sub_100076E78()
{
  v1 = type metadata accessor for MultiPinMapAssetMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  if (*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {

    sub_1000768B4(v7);

    if ((*(v2 + 48))(v7, 1, v1))
    {
      sub_100004F84(v7, &unk_100AD5B30, &unk_100941F80);
    }

    else
    {
      (*(v2 + 16))(v4, v7, v1);
      sub_100004F84(v7, &unk_100AD5B30, &unk_100941F80);
      v9 = MultiPinMapAssetMetadata.visitsData.getter();
      (*(v2 + 8))(v4, v1);
      if (v9)
      {
        v10 = *(v9 + 16);

        return v10;
      }
    }
  }

  return 0;
}

NSObject *sub_100077050(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v12 = a1;
  v13 = objc_allocWithZone(type metadata accessor for ThumbnailCacheOperation(0));

  return sub_1000771E8(v6, v12, a2, a3 & 1, a4, a5, a6);
}

uint64_t type metadata accessor for ThumbnailCacheOperation(uint64_t a1)
{
  result = qword_100AF0150;
  if (!qword_100AF0150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100077130()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100907000;
  v1._object = 0x8000000100906FD0;
  v4._countAndFlagsBits = 0xD0000000000000D2;
  v1._countAndFlagsBits = 0xD00000000000002CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100B30C90 = v3;
}

NSObject *sub_1000771E8(NSObject *a1, int a2, uint64_t a3, int a4, uint64_t a5, void *a6, NSObject *a7)
{
  v8 = v7;
  v49 = a7;
  v50 = a5;
  v48 = a4;
  v47 = a3;
  v46 = a2;
  v11 = type metadata accessor for OSSignposter();
  v51 = *(v11 - 8);
  v52 = v11;
  __chkstk_darwin(v11);
  v13 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v53 = &v45[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v45[-v18];
  v20 = OBJC_IVAR____TtC7Journal5Asset_type;
  v21 = qword_100B302B8;
  v22 = type metadata accessor for AssetType();
  (*(*(v22 - 8) + 16))(&v8[v21], a1 + v20, v22);
  *&v8[qword_100B302C0] = *(a1 + OBJC_IVAR____TtC7Journal5Asset_attachments);
  v23 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  *&v8[qword_100B302C8] = *(a1 + v23);
  v24 = *(&a1->isa + OBJC_IVAR____TtC7Journal5Asset_assetMO);

  if (v24)
  {
    v25 = [v24 objectID];
  }

  else
  {
    v25 = 0;
  }

  *&v8[qword_100B302D0] = v25;
  v26 = *(&a1->isa + OBJC_IVAR____TtC7Journal5Asset_context);
  *&v8[qword_100B302D8] = v26;
  v8[qword_100B302E0] = v46;
  v27 = &v8[qword_100B302E8];
  *v27 = v47;
  v27[8] = v48 & 1;
  v28 = &v8[qword_100AF0110];
  v29 = v49;
  v30 = v50;
  *v28 = v50;
  v28[1] = a6;
  *&v8[qword_100B302F0] = v29;
  v55 = 0;
  v56 = 0xE000000000000000;
  v31 = v26;

  v49 = v29;
  _StringGuts.grow(_:)(26);

  v55 = 0xD000000000000018;
  v56 = 0x80000001009038F0;
  v32._countAndFlagsBits = v30;
  v32._object = a6;
  String.append(_:)(v32);

  Logger.init(subsystem:category:)();
  v33 = qword_100AF0118;
  (*(v15 + 32))(&v8[qword_100AF0118], v19, v14);
  v34 = *(v15 + 16);
  v34(v19, &v8[v33], v14);
  OSSignposter.init(logger:)();
  (*(v51 + 32))(&v8[qword_100AF0120], v13, v52);
  v35 = type metadata accessor for ThumbnailCacheOperation(0);
  v54.receiver = v8;
  v54.super_class = v35;
  v36 = [&v54 init];
  v37 = v53;
  v34(v53, v36 + qword_100AF0118, v14);
  v38 = v36;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "Initialized", v41, 2u);

    v42 = v49;
    v43 = a1;
    a1 = v38;
  }

  else
  {
    v42 = v38;
    v43 = v39;
    v39 = v49;
  }

  (*(v15 + 8))(v37, v14);
  return v38;
}

double sub_100077704()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  return sub_1000488A0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), (v0 + v2), *(v0 + v2 + *(v1 + 64)), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_1000777B4()
{
  result = qword_100AD6230;
  if (!qword_100AD6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6230);
  }

  return result;
}

void sub_100077808()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MosaicCell();
  objc_msgSendSuper2(&v9, "layoutSubviews");
  if ([v0 isSelected])
  {
    [v0 bounds];
    v12 = CGRectInset(v11, 4.0, 4.0);
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
    v5 = *&v0[OBJC_IVAR____TtC7Journal10MosaicCell_canvasAssetView];
    v6 = *&v0[OBJC_IVAR____TtC7Journal10MosaicCell_selectionShapeLayer];
    v7 = [v5 layer];
    [v7 cornerRadii];

    v8 = sub_100266838(v10, x, y, width, height);
    [v6 setPath:v8];
  }
}

double sub_100077964()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MapAssetView(0);
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapThumbnailView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  sub_100077A44();
  if (v0[OBJC_IVAR____TtC7Journal12MapAssetView_needsMapLoad] == 1)
  {
    v0[OBJC_IVAR____TtC7Journal12MapAssetView_needsMapLoad] = 0;
    if (v0[OBJC_IVAR____TtC7Journal12MapAssetView_mapType])
    {
      sub_10021F79C();
    }

    else
    {
      return sub_10007BFCC();
    }
  }

  return result;
}

void sub_100077A44()
{
  v1 = v0;
  v2 = type metadata accessor for VisitAssetMetadata();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v62 - v7;
  __chkstk_darwin(v9);
  v11 = &v62 - v10;
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  v15 = *(v0 + OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset);
  if (!v15)
  {
    return;
  }

  v69 = v15;
  v16 = sub_1001B4A00();
  sub_1000782E4(v16);
  v18 = v17;
  v20 = v19;
  v21 = sub_10007B9EC(v16, *(v1 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType));
  if (v21 > 2)
  {

    [*(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView) setHidden:1];
    v22 = *(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);
    [v22 setHidden:1];
    goto LABEL_20;
  }

  if (!v21)
  {
    v68 = v18;
    [*(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView) setHidden:0];
    v67 = *(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);
    [v67 setHidden:0];
    if (!*(v16 + 2))
    {

      goto LABEL_58;
    }

    v24 = *(v3 + 16);
    v64 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v65 = v24;
    v66 = v3 + 16;
    v24(v14, v16 + v64, v2);
    VisitAssetMetadata.typeOfPlace.getter();
    v26 = v25;
    v27 = v14;
    v28 = *(v3 + 8);
    v28(v27, v2);
    v63 = v26;
    if (v26)
    {
      goto LABEL_44;
    }

    if (!*(v16 + 2))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v65(v11, v16 + v64, v2);
    v29 = VisitAssetMetadata.mapItemData.getter();
    v62 = v28;
    if (v30 >> 60 == 15)
    {
      v28(v11, v2);
    }

    else
    {
      v42 = v29;
      v63 = v30;
      sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr);
      v43 = static NSCoding<>.create(from:)();
      v44 = sub_10003A5C8(v42, v63);
      v62(v11, v2, v44);
      if (v43)
      {
        v45 = [v43 _firstLocalizedCategoryName];

        if (v45)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v46;

          v28 = v62;
          goto LABEL_44;
        }
      }
    }

    if (!*(v16 + 2))
    {
LABEL_70:
      __break(1u);
      return;
    }

    v65(v8, v16 + v64, v2);
    v47 = VisitAssetMetadata.mapItemData.getter();
    if (v48 >> 60 == 15)
    {
      v28 = v62;
      (v62)(v8, v2);
    }

    else
    {
      v49 = v47;
      v50 = v48;
      sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr);
      v51 = static NSCoding<>.create(from:)();
      v52 = sub_10003A5C8(v49, v50);
      v28 = v62;
      v62(v8, v2, v52);
      if (v51)
      {
        v53 = v28;
        v54 = [v51 pointOfInterestCategory];

        if (v54)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v63 = v55;
        }

        else
        {

          v63 = 0;
        }

        v28 = v53;
        goto LABEL_44;
      }
    }

    v63 = 0;
LABEL_44:
    if (*(v16 + 2))
    {
      v65(v5, v16 + v64, v2);

      v56 = VisitAssetMetadata.city.getter();
      v58 = v57;
      v28(v5, v2);
      if (v63)
      {

        v59 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v59 = v68 & 0xFFFFFFFFFFFFLL;
        }

        if (v59 && v58)
        {
          v60 = HIBYTE(v58) & 0xF;
          if ((v58 & 0x2000000000000000) == 0)
          {
            v60 = v56 & 0xFFFFFFFFFFFFLL;
          }

          if (v60 && (v68 != v56 || v58 != v20) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            sub_10021EDBC(v68, v20, v56, v58);

LABEL_59:

            sub_10007BE4C();
LABEL_60:
            v32 = v69;
            v22 = v67;
            goto LABEL_21;
          }
        }

        else if (!v59)
        {

          if (v58)
          {
            v61 = HIBYTE(v58) & 0xF;
            if ((v58 & 0x2000000000000000) == 0)
            {
              v61 = v56 & 0xFFFFFFFFFFFFLL;
            }

            v32 = v69;
            if (v61)
            {
              sub_10007BA80(v56, v58);

              sub_10007BE4C();
            }

            else
            {
            }

            v22 = v67;
            goto LABEL_21;
          }

          goto LABEL_60;
        }
      }

LABEL_58:

      sub_10007BA80(v68, v20);
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_69;
  }

  if (v21 != 1)
  {

    [*(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView) setHidden:0];
    v22 = *(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);
    [v22 setHidden:0];
    v31 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v31 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      sub_10021EBC8(v18, v20);

      sub_10021EA48();
      goto LABEL_20;
    }

LABEL_19:

    goto LABEL_20;
  }

  [*(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView) setHidden:0];
  v22 = *(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);
  [v22 setHidden:0];
  v23 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v23 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    goto LABEL_19;
  }

  sub_10007BA80(v18, v20);

  sub_10007BE4C();
LABEL_20:
  v32 = v69;
LABEL_21:
  v33 = *(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_placeholderView);
  if (([v33 isHidden] & 1) == 0)
  {
    [*(v1 + OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView) setHidden:1];
    [v22 setHidden:1];
    v34 = [v22 text];
    if (v34)
    {
      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v39 = &v33[OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterText];
    *v39 = v36;
    v39[1] = v38;

    v40 = *&v33[OBJC_IVAR____TtC7Journal28SymbolAndPlatterFallbackView_platterLabel];
    if (v38)
    {

      v41 = String._bridgeToObjectiveC()();
    }

    else
    {
      v41 = 0;
    }

    [v40 setText:v41];

    v32 = v41;
  }
}

void sub_1000782E4(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v208[3] = v208 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v208[2] = v208 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v208[1] = v208 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AEED20, &qword_1009457E0);
  __chkstk_darwin(v8 - 8);
  v208[0] = v208 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v212 = v208 - v11;
  __chkstk_darwin(v12);
  v209 = v208 - v13;
  __chkstk_darwin(v14);
  v210 = v208 - v15;
  __chkstk_darwin(v16);
  v211 = v208 - v17;
  __chkstk_darwin(v18);
  v214 = v208 - v19;
  v20 = type metadata accessor for VisitAssetMetadata();
  __chkstk_darwin(v20);
  v219 = v208 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v225 = v208 - v23;
  __chkstk_darwin(v24);
  v220 = (v208 - v25);
  v28 = __chkstk_darwin(v26);
  v30 = v208 - v29;
  v31 = *(a1 + 16);
  v32 = _swiftEmptyArrayStorage;
  v224 = v33;
  v215 = v31;
  v217 = v27;
  v216 = a1;
  v213 = _swiftEmptyArrayStorage;
  if (v31)
  {
    v35 = *(v27 + 16);
    v34 = v27 + 16;
    v222 = v35;
    *&v221 = (*(v34 + 64) + 32) & ~*(v34 + 64);
    v36 = a1 + v221;
    v37 = *(v34 + 56);
    v218 = (v34 - 8);
    v223 = v34;
    v38 = (v34 + 16);
    v35(v30, a1 + v221, v20, v28);
    while (1)
    {
      v44 = VisitAssetMetadata.mapItemData.getter();
      if (v45 >> 60 == 15 || (v39 = v44, v40 = v45, sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr), v41 = static NSCoding<>.create(from:)(), v42.n128_f64[0] = sub_10003A5C8(v39, v40), !v41))
      {
        v46 = *v38;
        (*v38)(v225, v30, v20, v42);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v226 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100199CF8(0, *(v32 + 2) + 1, 1);
          v32 = v226;
        }

        v49 = *(v32 + 2);
        v48 = *(v32 + 3);
        if (v49 >= v48 >> 1)
        {
          sub_100199CF8((v48 > 1), v49 + 1, 1);
          v32 = v226;
        }

        *(v32 + 2) = v49 + 1;
        v50 = v32 + v221 + v49 * v37;
        v20 = v224;
        (v46)(v50, v225, v224);
      }

      else
      {

        (*v218)(v30, v20);
      }

      v36 += v37;
      if (!--v31)
      {
        break;
      }

      v222(v30, v36, v20, v43);
    }
  }

  v226 = _swiftEmptyArrayStorage;
  v51 = *(v32 + 2);
  if (v51)
  {
    v225 = *(v217 + 16);
    v52 = v32 + ((*(v217 + 80) + 32) & ~*(v217 + 80));
    v53 = (v217 + 8);
    v218 = _swiftEmptyArrayStorage;
    v223 = *(v217 + 72);
    v221 = xmmword_100940050;
    v54 = v220;
    v222 = (v217 + 16);
    (v225)(v220, v52, v20);
    while (1)
    {
      v55 = VisitAssetMetadata.latitude.getter();
      if (v56 & 1) != 0 || (v57 = *&v55, *&v58 = COERCE_DOUBLE(VisitAssetMetadata.longitude.getter()), (v59))
      {
        (*v53)(v54, v20);
      }

      else
      {
        v60 = v57;
        v61 = *&v58;
        sub_1000F24EC(&qword_100AD6BD0, &qword_1009457F8);
        inited = swift_initStackObject();
        *(inited + 16) = v221;
        *(inited + 32) = 1701667182;
        *(inited + 40) = 0xE400000000000000;
        v63 = VisitAssetMetadata.placeName.getter();
        v65 = v64;
        v66 = sub_1000F24EC(&unk_100AE4870, &qword_100945360);
        *(inited + 48) = v63;
        *(inited + 56) = v65;
        *(inited + 72) = v66;
        *(inited + 80) = 0x7974696C61636F6CLL;
        *(inited + 88) = 0xE800000000000000;
        v67 = VisitAssetMetadata.city.getter();
        *(inited + 120) = v66;
        v54 = v220;
        *(inited + 96) = v67;
        *(inited + 104) = v68;
        sub_100363528(inited);
        swift_setDeallocating();
        sub_1000F24EC(&qword_100ADFEB0, &unk_10096F5D0);
        swift_arrayDestroy();
        v69 = objc_allocWithZone(MKPlacemark);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v71 = [v69 initWithCoordinate:isa addressDictionary:{v60, v61}];

        (*v53)(v54, v20);
        if (v71)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v226 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v226 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v218 = v226;
        }
      }

      v52 = v223 + v52;
      if (!--v51)
      {
        break;
      }

      (v225)(v54, v52, v20);
    }

    v72 = v218;
  }

  else
  {

    v72 = _swiftEmptyArrayStorage;
  }

  v73 = v216;
  sub_100079F8C(v216);
  v75 = v214;
  v76 = v215;
  if (!v215)
  {

    v78 = 0;
    v79 = 0xE000000000000000;
LABEL_88:
    v77 = v217;
    goto LABEL_89;
  }

  v77 = v217;
  if (v215 == 1 || (v74 & 1) != 0)
  {
    goto LABEL_29;
  }

  v218 = v72;
  v226 = _swiftEmptyArrayStorage;
  v80 = v215;
  v81 = v73;
  v82 = *(v217 + 16);
  v83 = v81 + ((*(v217 + 80) + 32) & ~*(v217 + 80));
  v84 = *(v217 + 72);
  v85 = (v217 + 8);
  v82(v219, v83, v20);
  while (1)
  {
    v86 = VisitAssetMetadata.mapItemData.getter();
    if (v87 >> 60 == 15 || (v88 = v86, v89 = v87, sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr), v90 = static NSCoding<>.create(from:)(), v91 = v89, v20 = v224, v92 = sub_10003A5C8(v88, v91), !v90))
    {
      (*v85)(v219, v20);
    }

    else
    {
      v93 = v20;
      v94 = [v90 placemark];

      (*v85)(v219, v93);
      if (v94)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v226 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v226 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v213 = v226;
      }
    }

    v83 += v84;
    --v80;
    v20 = v224;
    if (!v80)
    {
      break;
    }

    v82(v219, v83, v224);
  }

  v226 = v213;
  sub_1006ADB00(v218);
  v95 = v226;
  v77 = v226 & 0xFFFFFFFFFFFFFF8;
  v96 = v226 >> 62;
  if (!(v226 >> 62))
  {
    v97 = *((v226 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v98 = v226 & 0xC000000000000001;
    if (v97)
    {
      goto LABEL_43;
    }

LABEL_62:
    v100 = _swiftEmptyArrayStorage;
    goto LABEL_63;
  }

LABEL_61:
  v97 = _CocoaArrayWrapper.endIndex.getter();
  v98 = v95 & 0xC000000000000001;
  if (!v97)
  {
    goto LABEL_62;
  }

LABEL_43:
  v99 = 0;
  v100 = _swiftEmptyArrayStorage;
  do
  {
    v101 = v99;
    while (1)
    {
      if (v98)
      {
        v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v101 >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v102 = *(v95 + 8 * v101 + 32);
      }

      v103 = v102;
      v99 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v104 = [v102 country];
      if (v104)
      {
        break;
      }

      ++v101;
      if (v99 == v97)
      {
        goto LABEL_63;
      }
    }

    v225 = v96;
    v105 = v104;
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v223 = v107;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = sub_10009BCC8(0, *(v100 + 2) + 1, 1, v100);
    }

    v109 = *(v100 + 2);
    v108 = *(v100 + 3);
    if (v109 >= v108 >> 1)
    {
      v100 = sub_10009BCC8((v108 > 1), v109 + 1, 1, v100);
    }

    *(v100 + 2) = v109 + 1;
    v110 = &v100[2 * v109];
    v111 = v223;
    *(v110 + 4) = v106;
    *(v110 + 5) = v111;
    v96 = v225;
  }

  while (v99 != v97);
LABEL_63:
  v226 = v100;
  v75 = sub_1000F24EC(&qword_100AD60A0, &qword_100943DB0);
  *&v225 = COERCE_DOUBLE(sub_10007B970());
  v112 = Collection<>.uniqued()();
  v113 = *(v100 + 2);

  if (v96)
  {
    v114 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v114 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = v216;
  if (v113 != v114)
  {

    v78 = 0;
    goto LABEL_86;
  }

  if (v112[2] != 1)
  {

    v78 = v112[2];
    if (v78)
    {
      v75 = v214;
      v76 = v215;
      v77 = v217;
      if (v78 != 1)
      {
        v97 = v112[4];
        v116 = v112[5];
        v96 = v112[6];
        v115 = v112[7];

        if (v78 < 3)
        {
          if (qword_100AD0510 == -1)
          {
LABEL_157:
            sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
            v183 = swift_allocObject();
            *(v183 + 16) = xmmword_100940050;
            *(v183 + 56) = &type metadata for String;
            v184 = sub_100031B20();
            *(v183 + 32) = v97;
            *(v183 + 40) = v116;
            *(v183 + 96) = &type metadata for String;
            *(v183 + 104) = v184;
            *(v183 + 64) = v184;
            *(v183 + 72) = v96;
            *(v183 + 80) = v115;
LABEL_158:
            v78 = static String.localizedStringWithFormat(_:_:)();
            v79 = v185;

            v76 = v215;
            v73 = v216;
            goto LABEL_89;
          }
        }

        else if (qword_100AD0508 == -1)
        {
          goto LABEL_157;
        }

LABEL_232:
        swift_once();
        goto LABEL_157;
      }

      goto LABEL_29;
    }

LABEL_86:
    v79 = 0xE000000000000000;
LABEL_87:
    v75 = v214;
    v76 = v215;
    goto LABEL_88;
  }

  v222 = v113;
  if (v97)
  {
    v115 = 0;
    v223 = _swiftEmptyArrayStorage;
    do
    {
      v116 = v115;
      while (1)
      {
        if (v98)
        {
          v117 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v116 >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_225;
          }

          v117 = *(v95 + 8 * v116 + 32);
        }

        v96 = v117;
        v115 = (v116 + 1);
        if (__OFADD__(v116, 1))
        {
          __break(1u);
LABEL_225:
          __break(1u);
          goto LABEL_226;
        }

        v118 = [v117 administrativeArea];
        if (v118)
        {
          break;
        }

        ++v116;
        if (v115 == v97)
        {
          goto LABEL_133;
        }
      }

      *&v221 = v75;
      v119 = v118;
      v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v220 = v121;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v223 = sub_10009BCC8(0, *(v223 + 2) + 1, 1, v223);
      }

      v123 = *(v223 + 2);
      v122 = *(v223 + 3);
      v96 = v123 + 1;
      if (v123 >= v122 >> 1)
      {
        v223 = sub_10009BCC8((v122 > 1), v123 + 1, 1, v223);
      }

      v124 = v223;
      *(v223 + 2) = v96;
      v125 = &v124[2 * v123];
      v126 = v220;
      *(v125 + 4) = v120;
      *(v125 + 5) = v126;
      v75 = v221;
    }

    while (v115 != v97);
  }

  else
  {
    v223 = _swiftEmptyArrayStorage;
  }

LABEL_133:
  v73 = v216;
  if (*(v223 + 2) != v222 || (v226 = v223, v171 = Collection<>.uniqued()(), , !v171[2]))
  {

    v75 = v214;
    v76 = v215;
    v77 = v217;
    if (v112[2])
    {
      v78 = v112[4];
      v79 = v112[5];

      goto LABEL_89;
    }

    goto LABEL_29;
  }

  v223 = v171[2];

  if (v171[2] > 1uLL)
  {
    v96 = v171[4];
    v115 = v171[5];

    v75 = v214;
    v76 = v215;
    v77 = v217;
    if (v171[2] < 2uLL)
    {
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

    v97 = v171[6];
    v171 = v171[7];

    if (v223 >= 3)
    {
      if (qword_100AD0508 == -1)
      {
        goto LABEL_194;
      }

      goto LABEL_236;
    }

    if (v223 == 2)
    {
      if (qword_100AD0510 == -1)
      {
LABEL_194:
        sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
        v197 = swift_allocObject();
        *(v197 + 16) = xmmword_100940050;
        *(v197 + 56) = &type metadata for String;
        v198 = sub_100031B20();
        *(v197 + 32) = v96;
        *(v197 + 40) = v115;
        *(v197 + 96) = &type metadata for String;
        *(v197 + 104) = v198;
        *(v197 + 64) = v198;
        *(v197 + 72) = v97;
        *(v197 + 80) = v171;
        goto LABEL_158;
      }

LABEL_236:
      swift_once();
      goto LABEL_194;
    }

LABEL_29:

    v78 = 0;
    v79 = 0xE000000000000000;
    goto LABEL_89;
  }

  v219 = v171[2];
  v220 = v171;
  *&v221 = v75;
  if (v97)
  {
    v115 = _swiftEmptyArrayStorage;
    v116 = 0;
    while (1)
    {
      if (v98)
      {
        v172 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v116 >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_227;
        }

        v172 = *(v95 + 8 * v116 + 32);
      }

      v173 = v172;
      v75 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        break;
      }

      v174 = [v172 subLocality];
      if (v174)
      {
        v175 = v174;
        v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v218 = v177;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_10009BCC8(0, *(v115 + 2) + 1, 1, v115);
        }

        v96 = *(v115 + 2);
        v178 = *(v115 + 3);
        if (v96 >= v178 >> 1)
        {
          v115 = sub_10009BCC8((v178 > 1), v96 + 1, 1, v115);
        }

        *(v115 + 2) = v96 + 1;
        v179 = &v115[2 * v96];
        v180 = v218;
        *(v179 + 4) = v176;
        *(v179 + 5) = v180;
        if (v75 == v97)
        {
          goto LABEL_165;
        }

        v116 = v75;
      }

      else
      {

        ++v116;
        if (v75 == v97)
        {
          goto LABEL_165;
        }
      }
    }

LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  v115 = _swiftEmptyArrayStorage;
LABEL_165:
  if (*(v115 + 2) == v222)
  {
    v226 = v115;
    v171 = Collection<>.uniqued()();

    v73 = v216;
    if (v171[2] == 1)
    {

      if (v171[2])
      {
        v78 = v171[4];
        v79 = v171[5];

        goto LABEL_87;
      }

      goto LABEL_235;
    }
  }

  if (v97)
  {
    v75 = 0;
    v115 = _swiftEmptyArrayStorage;
LABEL_171:
    v116 = v75;
    while (1)
    {
      if (v98)
      {
        v186 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v116 >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_229;
        }

        v186 = *(v95 + 8 * v116 + 32);
      }

      v187 = v186;
      v75 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        break;
      }

      v188 = [v186 locality];
      if (v188)
      {
        v189 = v188;
        v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v218 = v191;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_10009BCC8(0, *(v115 + 2) + 1, 1, v115);
        }

        v96 = *(v115 + 2);
        v192 = *(v115 + 3);
        if (v96 >= v192 >> 1)
        {
          v115 = sub_10009BCC8((v192 > 1), v96 + 1, 1, v115);
        }

        *(v115 + 2) = v96 + 1;
        v193 = &v115[2 * v96];
        v194 = v218;
        *(v193 + 4) = v190;
        *(v193 + 5) = v194;
        if (v75 != v97)
        {
          goto LABEL_171;
        }

        goto LABEL_187;
      }

      ++v116;
      if (v75 == v97)
      {
        goto LABEL_187;
      }
    }

LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  v115 = _swiftEmptyArrayStorage;
LABEL_187:
  v73 = v216;
  if (*(v115 + 2) == v222)
  {
    v226 = v115;
    v96 = v221;
    v195 = Collection<>.uniqued()();

    if (*(v195 + 16) == 1)
    {
      v226 = v195;
      v196 = Collection<>.uniqued()();

      if (v196[2])
      {

        if (!v196[2])
        {
          __break(1u);
          return;
        }

        v78 = v196[4];
        v79 = v196[5];

        goto LABEL_87;
      }
    }
  }

  if (v97)
  {
    v75 = 0;
    v115 = _swiftEmptyArrayStorage;
LABEL_197:
    v116 = v75;
    while (1)
    {
      if (v98)
      {
        v199 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v116 >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_231;
        }

        v199 = *(v95 + 8 * v116 + 32);
      }

      v200 = v199;
      v75 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        break;
      }

      v201 = [v199 subAdministrativeArea];
      if (v201)
      {
        v202 = v201;
        v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v218 = v204;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_10009BCC8(0, *(v115 + 2) + 1, 1, v115);
        }

        v96 = *(v115 + 2);
        v205 = *(v115 + 3);
        if (v96 >= v205 >> 1)
        {
          v115 = sub_10009BCC8((v205 > 1), v96 + 1, 1, v115);
        }

        *(v115 + 2) = v96 + 1;
        v206 = &v115[2 * v96];
        v207 = v218;
        *(v206 + 4) = v203;
        *(v206 + 5) = v207;
        if (v75 != v97)
        {
          goto LABEL_197;
        }

        goto LABEL_213;
      }

      ++v116;
      if (v75 == v97)
      {
        goto LABEL_213;
      }
    }

LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v115 = _swiftEmptyArrayStorage;
LABEL_213:

  if (*(v115 + 2) == v222)
  {
    v226 = v115;
    v171 = Collection<>.uniqued()();

    v75 = v214;
    v76 = v215;
    v77 = v217;
    v73 = v216;
    if (v171[2] == 1)
    {

      if (!v171[2])
      {
        __break(1u);
        goto LABEL_236;
      }

      v78 = v171[4];
      v79 = v171[5];

      goto LABEL_89;
    }

    v115 = v171;
  }

  else
  {
    v75 = v214;
    v76 = v215;
    v77 = v217;
    v73 = v216;
  }

  v171 = v220;
  if (!v219)
  {
    goto LABEL_29;
  }

  if (!v220[2])
  {
    goto LABEL_234;
  }

  v78 = v220[4];
  v79 = v220[5];

  if (v223 != 1)
  {
    goto LABEL_29;
  }

LABEL_89:
  v127 = HIBYTE(v79) & 0xF;
  if ((v79 & 0x2000000000000000) == 0)
  {
    v127 = v78 & 0xFFFFFFFFFFFFLL;
  }

  if (!v127)
  {

    if (v76)
    {
      v128 = v224;
      (*(v77 + 16))(v75, v73 + ((*(v77 + 80) + 32) & ~*(v77 + 80)), v224);
      v129 = 0;
    }

    else
    {
      v129 = 1;
      v128 = v224;
    }

    (*(v77 + 56))(v75, v129, 1, v128);
    v130 = v211;
    sub_1000082B4(v75, v211, &unk_100AEED20, &qword_1009457E0);
    v131 = *(v77 + 48);
    if (v131(v130, 1, v128) == 1)
    {
      sub_100004F84(v130, &unk_100AEED20, &qword_1009457E0);
    }

    else
    {
      v132 = VisitAssetMetadata.placeName.getter();
      v134 = v133;
      (*(v77 + 8))(v130, v128);
      if (v134)
      {
        goto LABEL_107;
      }
    }

    v135 = v210;
    sub_1000082B4(v75, v210, &unk_100AEED20, &qword_1009457E0);
    v136 = v224;
    if (v131(v135, 1, v224) == 1)
    {
      sub_100004F84(v135, &unk_100AEED20, &qword_1009457E0);
    }

    else
    {
      v137 = VisitAssetMetadata.mapItemData.getter();
      if (v138 >> 60 != 15)
      {
        v155 = v137;
        v156 = v76;
        v157 = v138;
        sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr);
        v158 = v135;
        v159 = static NSCoding<>.create(from:)();
        v160 = v155;
        v161 = v157;
        v76 = v156;
        v136 = v224;
        v162 = sub_10003A5C8(v160, v161);
        (*(v77 + 8))(v158, v136, v162);
        v139 = v209;
        if (v159)
        {
          v163 = [v159 addressRepresentations];

          if (v163)
          {
            v164 = [v163 cityName];

            if (v164)
            {
              v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v134 = v165;

              goto LABEL_107;
            }
          }
        }

LABEL_103:
        sub_1000082B4(v75, v139, &unk_100AEED20, &qword_1009457E0);
        if (v131(v139, 1, v136) == 1)
        {
          sub_100004F84(v139, &unk_100AEED20, &qword_1009457E0);
        }

        else
        {
          v140 = v136;
          v132 = VisitAssetMetadata.city.getter();
          v141 = v139;
          v134 = v142;
          (*(v77 + 8))(v141, v140);

          if (v134)
          {
            goto LABEL_107;
          }
        }

        v132 = 0;
        v134 = 0xE000000000000000;
LABEL_107:
        v143 = v212;
        v144 = HIBYTE(v134) & 0xF;
        if ((v134 & 0x2000000000000000) == 0)
        {
          v144 = v132 & 0xFFFFFFFFFFFFLL;
        }

        if (v144)
        {
          goto LABEL_114;
        }

        v145 = v77;
        sub_1000082B4(v75, v212, &unk_100AEED20, &qword_1009457E0);
        v146 = v224;
        if (v131(v143, 1, v224) == 1)
        {
          v147 = v143;
        }

        else
        {
          *&v225 = COERCE_DOUBLE(VisitAssetMetadata.latitude.getter());
          v149 = v148;
          v150 = v145 + 8;
          v151 = *(v145 + 8);
          v217 = v150;
          v151(v143, v146);
          if (v149)
          {
            goto LABEL_114;
          }

          v166 = v208[0];
          sub_1000082B4(v75, v208[0], &unk_100AEED20, &qword_1009457E0);
          if (v131(v166, 1, v146) != 1)
          {
            v167 = v76;
            v168 = VisitAssetMetadata.longitude.getter();
            v170 = v169;
            v151(v166, v146);
            if ((v170 & 1) == 0)
            {
              v181 = *&v225;

              v132 = sub_10032BA5C(v181, *&v168);
              v134 = v182;
            }

            v76 = v167;
            goto LABEL_114;
          }

          v147 = v166;
        }

        sub_100004F84(v147, &unk_100AEED20, &qword_1009457E0);
LABEL_114:
        if (v76 >= 2)
        {
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v152._countAndFlagsBits = 0;
          v152._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v152);
          v153._countAndFlagsBits = v132;
          v153._object = v134;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v153);

          v154._countAndFlagsBits = 0x726F6D20646E6120;
          v154._object = 0xE900000000000065;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v154);
          String.LocalizationValue.init(stringInterpolation:)();
          static Locale.current.getter();
          String.init(localized:defaultValue:table:bundle:locale:comment:)();
        }

        sub_100004F84(v75, &unk_100AEED20, &qword_1009457E0);
        return;
      }

      (*(v77 + 8))(v135, v136);
    }

    v139 = v209;
    goto LABEL_103;
  }
}

void sub_100079F8C(uint64_t a1)
{
  v2 = type metadata accessor for VisitAssetMetadata();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    v13 = (v8 - 8);
    v14 = _swiftEmptyArrayStorage;
    v34 = v10;
    v35 = v8;
    v10(v6, v11, v2, v4);
    while (1)
    {
      v17 = VisitAssetMetadata.latitude.getter();
      if (v18)
      {
        break;
      }

      v19 = v17;
      v20 = VisitAssetMetadata.longitude.getter();
      v15 = *v13;
      if (v21)
      {
        goto LABEL_4;
      }

      v36 = v20;
      v15(v6, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_10007AF8C(0, *(v14 + 2) + 1, 1, v14);
      }

      v23 = *(v14 + 2);
      v22 = *(v14 + 3);
      v24 = v36;
      if (v23 >= v22 >> 1)
      {
        v14 = sub_10007AF8C((v22 > 1), v23 + 1, 1, v14);
        v24 = v36;
      }

      *(v14 + 2) = v23 + 1;
      v25 = &v14[2 * v23];
      *(v25 + 4) = v19;
      *(v25 + 5) = v24;
      v9 = v34;
LABEL_5:
      v11 += v12;
      if (!--v7)
      {
        goto LABEL_15;
      }

      v9(v6, v11, v2, v16);
    }

    v15 = *v13;
LABEL_4:
    v15(v6, v2);
    goto LABEL_5;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_15:
  v26 = *(v14 + 2);
  v27 = v26 != 0;
  v28 = v26 - v27;
  if (v26 >= v27)
  {
    v29 = v26 - v27;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29 + 1;
  v31 = &v14[2 * v27 + 5];
  while (1)
  {
    if (!v28)
    {
LABEL_23:

      return;
    }

    if (!--v30)
    {
      break;
    }

    if (*(v31 - 1) == v14[4])
    {
      v32 = *v31;
      v31 += 2;
      --v28;
      if (v32 == v14[5])
      {
        continue;
      }
    }

    goto LABEL_23;
  }

  __break(1u);
}

void sub_10007A1D8()
{
  v2 = type metadata accessor for JournalFeatureFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndexPath();
  __chkstk_darwin(v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC7Journal14CanvasGridView_gridCollectionView);
  if (!v11)
  {
    return;
  }

  v62 = v10;
  v63 = v8;
  v64 = v7;
  v65 = v0;
  v59 = v5;
  v60 = v3;
  v61 = v2;
  v66 = v11;
  v12 = [v66 visibleCells];
  sub_1000065A8(0, &qword_100ADE560, UICollectionViewCell_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    goto LABEL_50;
  }

  v15 = 0;
  v16 = v13 & 0xC000000000000001;
  v68 = 0x80000001008E05A0;
  v67 = xmmword_100940080;
  v69 = v13;
  do
  {
    if (v16)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v20 = *(v13 + 8 * v15 + 32);
    }

    v19 = v20;
    type metadata accessor for MosaicCell();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = v21;
      v23 = v21 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail;
      *(v21 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail) = 0;
      v24 = OBJC_IVAR____TtC7Journal10MosaicCell_overflowView;
      v25 = *(v21 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowView);
      if (v25)
      {
        [v25 removeFromSuperview];
        v26 = *(v22 + v24);
      }

      else
      {
        v26 = 0;
      }

      *(v22 + v24) = 0;

      v27 = *(v22 + v24);
      if (v27)
      {
        v28 = v14;
        v29 = v16;
        v30 = *(v23 + 8);
        v31 = objc_opt_self();
        v32 = v27;
        v33 = [v31 mainBundle];
        v71._object = v68;
        v34._countAndFlagsBits = 25637;
        v34._object = 0xE200000000000000;
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        v71._countAndFlagsBits = 0xD000000000000018;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v71);

        sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
        v36 = swift_allocObject();
        *(v36 + 16) = v67;
        *(v36 + 56) = &type metadata for Int;
        *(v36 + 64) = &protocol witness table for Int;
        *(v36 + 32) = v30;
        static String.localizedStringWithFormat(_:_:)();

        v37 = *&v32[OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_overflowCountLabel];
        if (v37)
        {
          v17 = v37;
          v18 = String._bridgeToObjectiveC()();

          [v17 setText:v18];
        }

        else
        {
        }

        v16 = v29;

        v19 = v32;
        v14 = v28;
        v13 = v69;
      }
    }

    ++v15;
  }

  while (v14 != v15);
LABEL_20:

  v3 = OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry;
  v1 = v65;
  v38 = *(v65 + OBJC_IVAR____TtC7Journal14CanvasGridView_journalEntry);
  if (v38)
  {
    v39 = *(v38 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
    if (!(v39 >> 62))
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_23;
    }

LABEL_50:
    v40 = _CocoaArrayWrapper.endIndex.getter();
LABEL_23:
    v41 = v66;
    if (*(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid))
    {
      if (v40 <= 5)
      {
        goto LABEL_41;
      }

LABEL_31:
      v42 = v62;
      IndexPath.init(row:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v63 + 8))(v42, v64);
      v44 = [v66 cellForItemAtIndexPath:isa];

      if (!v44)
      {
LABEL_47:

        return;
      }

      type metadata accessor for MosaicCell();
      v45 = swift_dynamicCastClass();
      if (!v45)
      {

        return;
      }

      v46 = v1;
      v47 = *(v1 + OBJC_IVAR____TtC7Journal14CanvasGridView_isExpanded);
      v48 = v45 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail;
      *(v45 + OBJC_IVAR____TtC7Journal10MosaicCell_overflowDetail) = (v47 & 1) == 0;
      sub_100071FBC();
      v50 = v59;
      v49 = v60;
      v51 = v61;
      (*(v60 + 104))(v59, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v61);
      v52 = JournalFeatureFlags.isEnabled.getter();
      (*(v49 + 8))(v50, v51);
      if (v52)
      {
        v53 = 5;
      }

      else
      {
        v53 = 4;
      }

      v54 = *(v46 + v3);
      if (v54)
      {
        v55 = *(v54 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
        if (v55 >> 62)
        {
          v58 = _CocoaArrayWrapper.endIndex.getter();
          v57 = v58 - v53;
          if (!__OFSUB__(v58, v53))
          {
            goto LABEL_46;
          }
        }

        else
        {
          v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v57 = v56 - v53;
          if (!__OFSUB__(v56, v53))
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        v57 = -v53;
        if (!__OFSUB__(0, v53))
        {
LABEL_46:
          *(v48 + 8) = v57;
          sub_100071FBC();

          goto LABEL_47;
        }
      }

      __break(1u);
      return;
    }

LABEL_28:
    if (qword_100AD0A28 != -1)
    {
      swift_once();
      v41 = v66;
    }

    if (qword_100B30F70 >= v40)
    {
      goto LABEL_41;
    }

    goto LABEL_31;
  }

  v41 = v66;
  if ((*(v65 + OBJC_IVAR____TtC7Journal14CanvasGridView_enforceShowCompressedAssetGrid) & 1) == 0)
  {
    v40 = 0;
    goto LABEL_28;
  }

LABEL_41:
}

void sub_10007A868()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100ADC5E0, &qword_10094C390);
  __chkstk_darwin(v2 - 8);
  v4 = &v58 - v3;
  v5 = type metadata accessor for PaperMarkup();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
  if (!v9)
  {
    return;
  }

  v10 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextView);
  swift_retain_n();
  v11 = v10;
  sub_10007B090(v9, 0);
  sub_10022D000();

  if (sub_10029EF80())
  {
    sub_1002D2854();
    v12 = *&v11[OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas];
    if (v12)
    {
      [v12 setAccessibilityElementsHidden:1];
    }

    v13 = *&v11[OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas];
    if (v13)
    {
      v14 = v13;
      [v14 setAccessibilityElementsHidden:1];
    }
  }

  else
  {

    sub_1002B1FB8();
  }

  [v11 setNeedsLayout];

  p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  if (sub_10029EF80())
  {
    if (sub_10029EF80())
    {
      v59 = v8;
      v60 = v6;
      v16 = *(v9 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
      v61 = v5;
      if (v16 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        v18 = 0;
        v19 = (v16 & 0xC000000000000001);
        while (1)
        {
          if (v19)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_63;
            }

            v20 = *(v16 + 8 * v18 + 32);
          }

          v21 = v20;
          v22 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          type metadata accessor for DrawingAsset(0);
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v18;
          if (v22 == v17)
          {
            goto LABEL_23;
          }
        }

        sub_1001B845C(v4);

        v41 = v60;
        v40 = v61;
        p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
        if ((*(v60 + 48))(v4, 1, v61) == 1)
        {
          goto LABEL_25;
        }

        v42 = v59;
        (*(v41 + 32))(v59, v4, v40);
        [*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextContainerView) setHidden:0];
        v43 = [v1 window];
        if (v43)
        {
          v44 = v43;
          [v43 bounds];
          v46 = v45;
          v48 = v47;
          v50 = v49;
          v52 = v51;
        }

        else
        {
          v46 = 0.0;
          v50 = 768.0;
          v48 = 0.0;
          v52 = 768.0;
        }

        v62.origin.x = v46;
        v62.origin.y = v48;
        v62.size.width = v50;
        v62.size.height = v52;
        v53 = CGRectGetHeight(v62) * 0.6;
        PaperMarkup.contentsRenderFrame.getter();
        Height = CGRectGetHeight(v63);
        PaperMarkup.contentsRenderFrame.getter();
        if (v53 >= Height + v55)
        {
          v56 = Height + v55;
        }

        else
        {
          v56 = v53;
        }

        v57 = sub_100082148();
        [v57 setConstant:v56];

        [*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell____lazy_storage___textMaskViewHeightConstraint) setActive:1];
        (*(v41 + 8))(v42, v40);
        goto LABEL_32;
      }

LABEL_23:

      p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
      v6 = v60;
      v5 = v61;
    }

    (*(v6 + 56))(v4, 1, 1, v5);
LABEL_25:
    sub_100004F84(v4, &unk_100ADC5E0, &qword_10094C390);
  }

  v23 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextContainerView);
  if (sub_10005AAB0(4))
  {
    v24 = 0;
  }

  else
  {
    v25 = *(v9 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
    if (v25 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v26 == 0;
  }

  [v23 p:v24 ivar:?lyt[418]];

  v27 = sub_100082148();
  [v27 setActive:0];

LABEL_32:
  if ((*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_maxCellHeight + 8) & 1) == 0)
  {
    v28 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_maxCellHeight);
    v29 = sub_100082148();
    [*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell____lazy_storage___textMaskViewHeightConstraint) constant];
    if (v28 < v30)
    {
      v30 = v28;
    }

    [v29 setConstant:v30];
  }

  v31 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_bundleTitle);
  *&v31[OBJC_IVAR____TtC7Journal24TimelineMomentsTitleView_journalEntry] = v9;

  sub_1000821F0();

  if (sub_10005AAB0(2))
  {
    v32 = *(v9 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) ^ 1;
  }

  else
  {
    v32 = 1;
  }

  [v31 p:v32 & 1 ivar:?lyt[418]];
  sub_100601D08();
  v19 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_textStackView);
  v33 = [v19 arrangedSubviews];
  sub_1000065A8(0, &qword_100ADC670, UIView_ptr);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_64:
    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = 0;
  do
  {
    v36 = v35;
    if (v34 == v35)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v35 >= *(v18 + 16))
      {
        goto LABEL_61;
      }

      v37 = *(v1 + 8 * v35 + 32);
    }

    v38 = v37;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v39 = [v37 isHidden];

    v35 = v36 + 1;
  }

  while ((v39 & 1) != 0);

  [v19 setHidden:v34 == v36];
}

double *sub_10007AF8C(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000F24EC(&qword_100AE2B68, &qword_100954318);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_10007B090(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v6 - 8);
  v67 = &v56 - v7;
  v8 = type metadata accessor for MergeableEntryAttributes();
  v61 = *(v8 - 8);
  v62 = v8;
  __chkstk_darwin(v8);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD6260, &qword_100944D10);
  __chkstk_darwin(v10 - 8);
  v12 = &v56 - v11;
  v13 = sub_1000F24EC(&unk_100AEBE80, &unk_100956FA0);
  __chkstk_darwin(v13 - 8);
  v64 = &v56 - v14;
  v15 = sub_1000F24EC(&qword_100AE4C80, &qword_10094A970);
  v65 = *(v15 - 8);
  __chkstk_darwin(v15);
  v66 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v56 - v18;
  v20 = type metadata accessor for JournalFeatureFlags();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, enum case for JournalFeatureFlags.enhancedSync(_:), v20, v22);
  v25 = JournalFeatureFlags.isEnabled.getter();
  (*(v21 + 8))(v24, v20);
  if ((v25 & 1) == 0)
  {
    goto LABEL_13;
  }

  v63 = a1;
  v58 = a2;
  v59 = v3;
  v26 = [v3 textStorage];
  sub_1000F24EC(&qword_100ADC5F8, &qword_10094C3A8);
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = v19;
    v30 = v63;
    v31 = v64;
    v56 = v26;
    v57 = v29;
    if (v63)
    {
      v32 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
      swift_beginAccess();
      sub_1000082B4(v30 + v32, v12, &qword_100AD6260, &qword_100944D10);
      v34 = v61;
      v33 = v62;
      if (!(*(v61 + 48))(v12, 1, v62))
      {
        v36 = v60;
        (*(v34 + 16))(v60, v12, v33);
        sub_100004F84(v12, &qword_100AD6260, &qword_100944D10);
        MergeableEntryAttributes.text.getter();
        (*(v34 + 8))(v36, v33);
        v35 = v65;
        (*(v65 + 56))(v31, 0, 1, v15);
        (*(v35 + 32))(v29, v31, v15);
LABEL_10:
        v37 = *((swift_isaMask & *v28) + 0x68);
        swift_beginAccess();
        v38 = *(v35 + 16);
        v39 = v66;
        v38(v66, &v28[v37], v15);
        v65 = CRAttributedString.count.getter();
        v40 = *(v35 + 8);
        v40(v39, v15);
        swift_beginAccess();
        (*(v35 + 24))(&v28[v37], v57, v15);
        swift_endAccess();
        v38(v39, &v28[v37], v15);
        v41 = *&v28[*((swift_isaMask & *v28) + 0x80)];
        sub_10008D118(&qword_100AE4B80, &type metadata accessor for MergeableTextAttributeScope, &protocol conformance descriptor for MergeableTextAttributeScope);
        v42 = v41;
        v43 = CRAttributedString<>.nsAttributedString(traitCollection:customAttributeProvider:)();
        v44 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v43];
        [v44 fixAttributesInRange:{0, objc_msgSend(v44, "length")}];

        v40(v39, v15);
        v45 = *((swift_isaMask & *v28) + 0x60);
        v46 = *&v28[v45];
        *&v28[v45] = v44;

        v47 = v57;
        v48 = CRAttributedString.count.getter();
        if (__OFSUB__(v48, v65))
        {
          __break(1u);
          return;
        }

        [v28 edited:3 range:0 changeInLength:{v65, v48 - v65}];

        v40(v47, v15);
        goto LABEL_12;
      }

      sub_100004F84(v12, &qword_100AD6260, &qword_100944D10);
    }

    v35 = v65;
    (*(v65 + 56))(v31, 1, 1, v15);
    type metadata accessor for MergeableTextAttributeScope();
    sub_10008D118(&unk_100ADC700, &type metadata accessor for MergeableTextAttributeScope, &protocol conformance descriptor for MergeableTextAttributeScope);
    CRAttributedString.init()();
    if ((*(v35 + 48))(v31, 1, v15) != 1)
    {
      sub_100004F84(v31, &unk_100AEBE80, &unk_100956FA0);
    }

    goto LABEL_10;
  }

LABEL_12:
  LOBYTE(a2) = v58;
  a1 = v63;
  v3 = v59;
LABEL_13:
  v49 = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
  *&v3[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry] = a1;

  if (a2)
  {
    sub_1002B0690();
    sub_1007BBA50();
  }

  v50 = *&v3[v49];
  if (v50)
  {
    v51 = type metadata accessor for TaskPriority();
    v52 = v67;
    (*(*(v51 - 8) + 56))(v67, 1, 1, v51);
    type metadata accessor for MainActor();
    swift_retain_n();
    v53 = v3;
    v54 = static MainActor.shared.getter();
    v55 = swift_allocObject();
    v55[2] = v54;
    v55[3] = &protocol witness table for MainActor;
    v55[4] = v53;
    v55[5] = v50;
    sub_1003E9628(0, 0, v52, &unk_10094C5F0, v55);
  }
}

unint64_t sub_10007B970()
{
  result = qword_100AD6BC8;
  if (!qword_100AD6BC8)
  {
    sub_1000F2A18(&qword_100AD60A0, &qword_100943DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6BC8);
  }

  return result;
}

uint64_t sub_10007B9EC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 3u)
  {
    if (a2 - 4 >= 3)
    {
      return 4;
    }

LABEL_9:
    if (!*(a1 + 16))
    {
      return 2;
    }

    sub_100079F8C(a1);
    if (v3)
    {
      return 2;
    }

    return 4;
  }

  if (a2 >= 2u)
  {
    if (a2 != 2)
    {
      return 1;
    }

    goto LABEL_9;
  }

  if (*(a1 + 16) == 1)
  {
    return 0;
  }

  sub_100079F8C(a1);
  return (v4 & 1) == 0;
}

id sub_10007BA80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v5 = *(v2 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);
  v16 = sub_1000065A8(0, &qword_100AE4890, NSAttributedString_ptr);
  sub_1000F24EC(&unk_100AD9200, &qword_1009488B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = NSFontAttributeName;
  v7 = objc_opt_self();

  v8 = NSFontAttributeName;
  v9 = [v7 preferredFontForTextStyle:{UIFontTextStyleCaption2, a2, v16}];
  v10 = sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr);
  *(inited + 40) = v9;
  *(inited + 64) = v10;
  *(inited + 72) = NSInlinePresentationIntentAttributeName;
  type metadata accessor for InlinePresentationIntent(0);
  *(inited + 104) = v11;
  *(inited + 80) = 2;
  v12 = NSInlinePresentationIntentAttributeName;
  sub_10007BDBC(inited);
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AD9210, &qword_10094C510);
  swift_arrayDestroy();
  AttributeContainer.init(_:)();
  AttributedString.init(_:attributes:)();
  v13 = NSAttributedString.init(_:)();
  [v5 setAttributedText:v13];

  [v5 setNumberOfLines:1];
  return [v5 setFrame:{sub_10021E364(8.0, 12.0, 12.0, 12.0)}];
}

uint64_t sub_10007BD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD6260, &qword_100944D10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007BD78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10007BE4C()
{
  v1 = OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal12MapAssetView_labelView);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal12MapAssetView_platterBlurView);
  [v2 frame];
  v4 = CGRectGetMinX(v13) + -4.0;
  [v2 frame];
  v5 = CGRectGetMinY(v14) + -8.0;
  [v2 frame];
  v6 = CGRectGetWidth(v15) + 4.0 + 4.0;
  [v2 frame];
  [v3 setFrame:{v4, v5, v6, CGRectGetHeight(v16) + 8.0 + 8.0}];

  [*(v0 + v1) setMaskView:0];
  v7 = [*(v0 + v1) layer];
  [v7 setCornerRadius:4.0];

  v8 = [*(v0 + v1) layer];
  LODWORD(v9) = 1065017672;
  [v8 setOpacity:v9];

  v10 = *(v0 + v1);

  return [v10 setClipsToBounds:1];
}

double sub_10007BFCC()
{
  v1 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v1 - 8);
  v3 = &v41 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = __chkstk_darwin(v14).n128_u64[0];
  v19 = &v41 - v18;
  v20 = *(v0 + OBJC_IVAR____TtC7Journal12MapAssetView_mapAsset);
  if (v20)
  {
    v44 = v6;
    v46 = v16;
    v47 = v15;
    v45 = v20;
    v48 = v19;
    Date.init()();
    UUID.init()();
    v21 = v5[2];
    v49 = v10;
    v22 = v10;
    v23 = v21;
    v21(v3, v22, v4);
    v43 = v5;
    v24 = v5[7];
    v25 = v4;
    v24(v3, 0, 1, v4);
    v26 = OBJC_IVAR____TtC7Journal12MapAssetView_latestImageRequestID;
    swift_beginAccess();
    sub_100075184(v3, v0 + v26);
    swift_endAccess();
    v27 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
    if (*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) > 6u)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        if (qword_100ACFB90 != -1)
        {
          swift_once();
        }

        v29 = &qword_100B2F628;
LABEL_11:
        v41 = *v29;
        v42 = *(v0 + v27);
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v23(v7, v49, v25);
        v32 = v46;
        v31 = v47;
        (*(v46 + 16))(v13, v48, v47);
        v33 = v43;
        v34 = (*(v43 + 80) + 24) & ~*(v43 + 80);
        v35 = (v44 + *(v32 + 80) + v34) & ~*(v32 + 80);
        v36 = swift_allocObject();
        *(v36 + 16) = v30;
        (v33[4])(v36 + v34, v7, v25);
        (*(v32 + 32))(v36 + v35, v13, v31);
        v37 = objc_opt_self();
        v38 = v41;

        v39 = [v37 currentTraitCollection];
        v40 = v45;
        sub_100076220(v42, 0, 1, v38, v39, sub_10005BCA4, v36);

        (v33[1])(v49, v25);
        (*(v32 + 8))(v48, v31);

        return result;
      }
    }

    if (qword_100ACFB98 != -1)
    {
      swift_once();
    }

    v29 = &qword_100B2F630;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_10007C588()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10007C5C0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

id sub_10007C744()
{
  v1 = v0;
  v2 = type metadata accessor for AssetCatalogColor();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AE2A40, &unk_100954010);
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SRGBColor();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MergeableColor();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for MergeableColor.sRGB(_:))
  {
    (*(v15 + 96))(v18, v14);
    (*(v11 + 32))(v13, v18, v10);
    v20 = SRGBColor.adaptivePlatformColor.getter();
    (*(v11 + 8))(v13, v10);
    return v20;
  }

  if (v19 == enum case for MergeableColor.catalogColor(_:))
  {
    (*(v15 + 96))(v18, v14);
    sub_100021CEC(v18, v9, &qword_100AE2A40, &unk_100954010);
    sub_10052D914(v9, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100004F84(v9, &qword_100AE2A40, &unk_100954010);
      sub_100004F84(v6, &qword_100AE2A40, &unk_100954010);
      return 0;
    }

    else
    {
      v23 = v29;
      v24 = v30;
      v25 = v31;
      (*(v30 + 32))(v29, v6, v31);
      AssetCatalogColor.rawValue.getter();
      v26 = String._bridgeToObjectiveC()();

      v20 = [objc_opt_self() colorNamed:v26];

      (*(v24 + 8))(v23, v25);
      sub_100004F84(v9, &qword_100AE2A40, &unk_100954010);
    }

    return v20;
  }

  if (v19 == enum case for MergeableColor.unknown(_:))
  {
    (*(v15 + 96))(v18, v14);
    v21 = *(sub_1000F24EC(&qword_100AE2A58, &qword_1009540E8) + 48);
    v22 = type metadata accessor for AnyCRValue();
    (*(*(v22 - 8) + 8))(&v18[v21], v22);
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

BOOL sub_10007CBF0()
{
  v0 = sub_1000F24EC(&qword_100AE2498, &qword_1009538C8);
  __chkstk_darwin(v0 - 8);
  v2 = &v21[-v1];
  v3 = sub_1000F24EC(&qword_100AE2488, &qword_1009538B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v21[-v4];
  v6 = sub_1000F24EC(&qword_100AE2480, &qword_1009538B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7];
  v9 = sub_1000F24EC(&qword_100AE2490, &qword_1009538C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21[-v10];
  swift_getKeyPath();
  sub_1000F24EC(&qword_100ADC6B8, &qword_10094C5A8);
  sub_1003D4E20(&qword_100AE24C0, &type metadata accessor for MergeableTextAttributeScope.BlockQuoteAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.BlockQuoteAttribute);
  CRAttributedString.Attributes.subscript.getter();

  if (v21[15] != 2)
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1003D4E20(&qword_100AE24E8, &type metadata accessor for MergeableTextAttributeScope.TextListsAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.TextListsAttribute);
  CRAttributedString.Attributes.subscript.getter();

  v12 = type metadata accessor for MergeableTextLists();
  v13 = 1;
  v14 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  sub_100004F84(v11, &qword_100AE2490, &qword_1009538C0);
  if (v14 == 1)
  {
    swift_getKeyPath();
    sub_1003D4E20(&qword_100AE2500, &type metadata accessor for MergeableTextAttributeScope.WritingDirectionAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.WritingDirectionAttribute);
    CRAttributedString.Attributes.subscript.getter();

    v15 = sub_1000F24EC(&qword_100AE2508, &qword_100953AD8);
    v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
    sub_100004F84(v8, &qword_100AE2480, &qword_1009538B0);
    if (v16 == 1)
    {
      swift_getKeyPath();
      sub_1003D4E20(&qword_100AE24F0, &type metadata accessor for MergeableTextAttributeScope.AlignmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.AlignmentAttribute);
      CRAttributedString.Attributes.subscript.getter();

      v17 = sub_1000F24EC(&qword_100AE24F8, &qword_100953AA0);
      v18 = (*(*(v17 - 8) + 48))(v5, 1, v17);
      sub_100004F84(v5, &qword_100AE2488, &qword_1009538B8);
      if (v18 == 1)
      {
        swift_getKeyPath();
        sub_1003D4E20(&qword_100AE24E0, &type metadata accessor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute, &protocol conformance descriptor for MergeableTextAttributeScope.FollowUpPromptAttachmentAttribute);
        CRAttributedString.Attributes.subscript.getter();

        v19 = type metadata accessor for MergeableFollowUpPromptAttachment();
        v13 = (*(*(v19 - 8) + 48))(v2, 1, v19) != 1;
        sub_100004F84(v2, &qword_100AE2498, &qword_1009538C8);
      }
    }
  }

  return v13;
}

uint64_t sub_10007D384()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 224) = v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v2 + 176);
  v7 = *(v2 + 168);
  if (v0)
  {
    v8 = sub_10049B38C;
  }

  else
  {
    v8 = sub_10007DF9C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10007D540(uint64_t a1, unsigned __int8 a2, void *a3)
{
  v7 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v3 + OBJC_IVAR____TtC7Journal5Asset_id, v10, v12);
  v38 = [a3 userInterfaceStyle];
  if (*(v3 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {

    sub_1000768B4(v9);

    v15 = type metadata accessor for MultiPinMapAssetMetadata();
    v16 = 1;
    if ((*(*(v15 - 8) + 48))(v9, 1, v15))
    {
      v17 = 0;
    }

    else
    {
      v17 = MultiPinMapAssetMetadata.revision.getter();
      v16 = v18;
    }

    sub_100004F84(v9, &unk_100AD5B30, &unk_100941F80);
  }

  else
  {
    v17 = 0;
    v16 = 1;
  }

  v41 = 0x2D626D756874;
  v42 = 0xE600000000000000;
  sub_10007DC68(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 45;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  v40._countAndFlagsBits = a1;
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 45;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23 = 0x656772614C78;
  v24 = 0xE500000000000000;
  v25 = 0x6C6C616D73;
  if (a2 != 6)
  {
    v25 = 0x657263536C6C7566;
    v24 = 0xEA00000000006E65;
  }

  v26 = 0xE600000000000000;
  v27 = 0x6D756964656DLL;
  if (a2 != 4)
  {
    v27 = 0x61546D756964656DLL;
    v26 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 5u)
  {
    v25 = v27;
    v24 = v26;
  }

  v28 = 0xEA00000000006564;
  v29 = 0x69576D756964656DLL;
  if (a2 != 2)
  {
    v29 = 0x656772616CLL;
    v28 = 0xE500000000000000;
  }

  if (a2)
  {
    v30 = 0xE600000000000000;
  }

  else
  {
    v23 = 0x6154656772614C78;
    v30 = 0xEA00000000006C6CLL;
  }

  if (a2 <= 1u)
  {
    v28 = v30;
  }

  else
  {
    v23 = v29;
  }

  if (a2 <= 3u)
  {
    v31 = v23;
  }

  else
  {
    v31 = v25;
  }

  if (a2 <= 3u)
  {
    v32 = v28;
  }

  else
  {
    v32 = v24;
  }

  v33 = v32;
  String.append(_:)(*&v31);

  if ((v16 & 1) == 0)
  {
    v40._countAndFlagsBits = 45;
    v40._object = 0xE100000000000000;
    v39 = v17;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    String.append(_:)(v40);
  }

  v40._countAndFlagsBits = 45;
  v40._object = 0xE100000000000000;
  v39 = v38;
  v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v35);

  String.append(_:)(v40);

  v36 = v41;
  (*(v11 + 8))(v14, v10);
  return v36;
}

uint64_t sub_10007D9D0()
{
  v1 = sub_1000F24EC(&qword_100AE24F8, &qword_100953AA0);
  __chkstk_darwin(v1);
  v3 = &v14 - v2;
  v4 = type metadata accessor for MergeableTextAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000082B4(v0, v3, &qword_100AE24F8, &qword_100953AA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100004F84(v3, &qword_100AE24F8, &qword_100953AA0);
    return 0;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v7, v10, v4);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for MergeableTextAlignment.natural(_:))
  {
    v11 = 4;
LABEL_13:
    (*(v5 + 8))(v10, v4);
    return v11;
  }

  if (v12 == enum case for MergeableTextAlignment.left(_:))
  {
    v11 = 0;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.right(_:))
  {
    v11 = 2;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.center(_:))
  {
    v11 = 1;
    goto LABEL_13;
  }

  if (v12 == enum case for MergeableTextAlignment.justified(_:))
  {
    v11 = 3;
    goto LABEL_13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10007DC68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007DCB0(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "AssetContentTypeOperation.scheduleOperation - running operation", v4, 2u);
  }

  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v5 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
  v6 = type metadata accessor for AssetContentTypeOperation(0);
  v7 = objc_allocWithZone(v6);
  *&v7[qword_100AE52E8] = v5;
  v7[qword_100AE52F0] = 0;
  v1[1].receiver = v7;
  v1[1].super_class = v6;
  v8 = v5;
  v9 = objc_msgSendSuper2(v1 + 1, "init");
  if (qword_100AD0038 != -1)
  {
    swift_once();
  }

  [qword_100B2FC18 addOperation:v9];

  qword_100AE52E0 = 0;

  super_class = v1->super_class;

  return super_class();
}

NSObject *sub_10007DE7C(int a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v20 = a4;
  v12 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  __chkstk_darwin(v12 - 8);
  v14 = &v19 - v13;
  v15 = objc_allocWithZone(type metadata accessor for MultiPinMapThumbnailCacheOperation(0));
  sub_10007F460(v14);
  sub_100021CEC(v14, v15 + qword_100B2FD78, &unk_100AD5B30, &unk_100941F80);
  v16 = v6;

  v17 = a6;
  return sub_1000771E8(v16, a1, a2, a3 & 1, v20, a5, v17);
}

uint64_t sub_10007DF9C()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  sub_10007E1CC(*(v0 + 184));

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10007E0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_10002432C(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_100004F84(v13, &qword_100AD13D0, &unk_100942DB0);
}

uint64_t type metadata accessor for MultiPinMapThumbnailCacheOperation(uint64_t a1)
{
  result = qword_100AEC1C8;
  if (!qword_100AEC1C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007E1CC(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACFDF0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  sub_10000617C(v9, qword_100AE52C8);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v11, v14, "AssetContentTypeOperation", v12, v13, 2u);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10007E480(uint64_t a1)
{
  sub_10007E61C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_10007E510()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    **(v2 + 16) = 0;
  }

  v4 = *(v3 + 8);

  return v4();
}

void sub_10007E61C(uint64_t a1)
{
  if (!qword_100AEC1D8)
  {
    type metadata accessor for MultiPinMapAssetMetadata();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100AEC1D8);
    }
  }
}

uint64_t sub_10007E674()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[3];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[8] + 8))(v1, v0[7]);
    type metadata accessor for OperationBase.Failure(0, v3, v4, v5);
    swift_getWitnessTable();
    v6 = swift_allocError();
    swift_willThrow();
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];
    *v7 = v6;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_10007F214(v7);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v10 = v0[11];
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    swift_storeEnumTagMultiPayload();
    sub_10007F214(v11);
    (*(v12 + 8))(v11, v13);
    (*(v2 + 8))(v10, v3);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10007E88C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10051CC10;
  }

  else
  {
    v2 = sub_10007E674;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10007E9A0(uint64_t a1)
{
  v2 = v1;
  v53 = type metadata accessor for MergeableEntryAttributes();
  v4 = *(v53 - 8);
  __chkstk_darwin(v53);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD6260, &qword_100944D10);
  __chkstk_darwin(v6 - 8);
  v52 = &v41 - v7;
  v45 = sub_1000F24EC(&qword_100AE4C80, &qword_10094A970);
  v8 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v41 - v9;
  v61 = type metadata accessor for JournalFeatureFlags();
  __chkstk_darwin(v61);
  v60 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v51 = OBJC_IVAR____TtC7Journal15AdminComposerVC_assetsTable;
  v62 = OBJC_IVAR____TtC7Journal15AdminComposerVC_model;
  v15 = (v12 + 63) >> 6;
  v58 = "truncationFadeLength";
  v59 = OBJC_IVAR____TtC7Journal15AdminComposerVC_textView;
  v57 = "ocationCollectionViewCell.";
  v56 = enum case for JournalFeatureFlags.enhancedSync(_:);
  v54 = (v10 + 8);
  v55 = (v10 + 104);
  v50 = (v4 + 48);
  v43 = (v4 + 16);
  v42 = (v4 + 8);
  v41 = (v8 + 8);

  v16 = 0;
  v17 = 0;
  while (v14)
  {
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = *(*(a1 + 48) + (v19 | (v16 << 6)));
    if (v20 > 0xC)
    {
LABEL_15:
      if (v20)
      {
        [*&v2[v51] reloadData];
      }

      else
      {
LABEL_18:
        v49 = v17;
        v48 = *&v2[v59];
        v47 = v2;
        v23 = *&v2[v62];
        v24 = [objc_opt_self() currentTraitCollection];
        v25 = type metadata accessor for CustomAttributeProviderConcrete(0);
        v26 = swift_allocObject();
        *(v26 + 16) = 0;
        Logger.init(subsystem:category:)();
        v27 = v26 + OBJC_IVAR____TtC7Journal31CustomAttributeProviderConcrete_attachmentConfigOverride;
        *(v27 + 4) = 0;
        *v27 = 2;
        v63[3] = v25;
        v63[4] = sub_10078A294(&qword_100AE2470, type metadata accessor for CustomAttributeProviderConcrete, &unk_10096CF30);
        v63[0] = v26;
        v28 = v60;
        v29 = v61;
        (*v55)(v60, v56, v61);
        v30 = JournalFeatureFlags.isEnabled.getter();
        (*v54)(v28, v29);
        if (v30)
        {
          v31 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
          swift_beginAccess();
          v32 = v23 + v31;
          v33 = v52;
          sub_10007BD08(v32, v52);
          v34 = v53;
          if ((*v50)(v33, 1, v53))
          {

            sub_100416458(v33);
            v35 = 0;
          }

          else
          {
            v36 = v46;
            (*v43)(v46, v33, v34);
            sub_100416458(v33);
            v37 = v44;
            MergeableEntryAttributes.text.getter();
            (*v42)(v36, v34);
            sub_10078A294(&qword_100AE4B80, &type metadata accessor for MergeableTextAttributeScope, &protocol conformance descriptor for MergeableTextAttributeScope);
            v38 = v45;
            v35 = CRAttributedString<>.nsAttributedString(traitCollection:customAttributeProvider:)();

            (*v41)(v37, v38);
          }
        }

        else
        {

          v35 = *(v23 + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText);
        }

        v2 = v47;
        sub_10000BA7C(v63);
        [v48 setAttributedText:v35];

        v17 = v49;
      }
    }

    else if (((1 << v20) & 0x15FC) == 0)
    {
      if (v20 != 9)
      {
        if (v20 == 11)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      }

      v21 = [v2 navigationController];
      if (v21)
      {
        v22 = v21;
      }
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(a1 + 56 + 8 * v18);
    ++v16;
    if (v14)
    {
      v16 = v18;
      goto LABEL_9;
    }
  }

  v39 = *&v2[OBJC_IVAR____TtC7Journal15AdminComposerVC_saveButton];
  if (v39)
  {
    v40 = v39;
    NSManagedObjectContext.performAndWait<A>(_:)();
    [v40 setEnabled:LOBYTE(v63[0])];

    sub_1007886A0();
    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_10007F0C8(uint64_t a1)
{
  result = type metadata accessor for AssetType();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for OSSignposter();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

void sub_10007F214(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = String._bridgeToObjectiveC()();
  [v2 willChangeValueForKey:v6];

  v7 = *&v2[qword_100AE7BA8];
  type metadata accessor for OperationBase.Locked(0, *((v5 & v4) + 0x50), v8, v9);
  sub_1000F2A18(&qword_100AD5BC0, &qword_100943550);
  type metadata accessor for Result();
  swift_getFunctionTypeMetadata1();
  type metadata accessor for Array();
  v10 = *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v11 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v11));
  sub_10008DB9C(v7 + v10, &v19);
  os_unfair_lock_unlock((v7 + v11));
  v12 = v19;
  v13 = String._bridgeToObjectiveC()();
  [v2 didChangeValueForKey:v13];

  if (Array.endIndex.getter())
  {
    v14 = 0;
    v15 = v12 + 40;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (!IsNativeType)
      {
        break;
      }

      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_8;
      }

      v18 = *(v15 - 8);

      v18(a1);

      ++v14;
      v15 += 16;
      if (v17 == Array.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    _ArrayBuffer._getElementSlowPath(_:)();
    __break(1u);
LABEL_8:
    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

void sub_10007F460(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD38D0, &qword_1009522B0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = (&v18 - v5);
  v7 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
  if (*(v1 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    goto LABEL_6;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
  if (v8)
  {
    v9 = [v8 assetMetaData];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *v6 = v11;
      v6[1] = v13;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AD38D8, &unk_100941FA0);
      v14 = swift_allocObject();
      v15 = *(*v14 + 104);
      v16 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
      (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
      *(v14 + *(*v14 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v6, v14 + *(*v14 + 120), &qword_100AD38D0, &qword_1009522B0);
      *(v1 + v7) = v14;
    }
  }

  if (*(v1 + v7))
  {
LABEL_6:

    sub_1000768B4(a1);
  }

  else
  {
    v17 = type metadata accessor for MultiPinMapAssetMetadata();
    (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }
}

double sub_10007F714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v8(v9, a3, a4, a5);

  return result;
}

void sub_10007F82C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v10 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v135 = COERCE_DOUBLE(&_swiftEmptyDictionarySingleton);
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;

  v16 = 0;
  v132 = v11;
  if (!v14)
  {
    goto LABEL_8;
  }

  while (2)
  {
    while (2)
    {
      v22 = v16;
LABEL_16:
      v25 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v26 = v25 | (v22 << 6);
      v27 = *(*(a1 + 48) + 8 * v26);
      sub_10000BA20(*(a1 + 56) + 32 * v26, &v137);
      *&v139 = v27;
      sub_10002432C(&v137, (&v139 + 8));
      v28 = v27;
LABEL_17:
      v142 = v139;
      v143 = v140;
      v144 = v141;
      v29 = v139;
      if (!v139)
      {

        if (*(*&v10 + 16))
        {
          v109 = sub_100051964(NSForegroundColorAttributeName, v108);
          v111 = a9;
          v110 = a3;
          v112 = a2;
          if (v113)
          {
            sub_10000BA20(*(*&v10 + 56) + 32 * v109, &v142);
            sub_1000261D4(&v142);
            if (!*(*&v10 + 16))
            {
              goto LABEL_89;
            }

LABEL_87:
            v117 = sub_100051964(NSFontAttributeName, v114);
            if (v118)
            {
              sub_10000BA20(*(*&v10 + 56) + 32 * v117, &v142);
              sub_1000261D4(&v142);
LABEL_92:
              sub_100080694(&v142);
              sub_1000261D4(&v142);
              type metadata accessor for Key(0);
              sub_1000806F8();
              isa = Dictionary._bridgeToObjectiveC()().super.isa;
              [v111 setAttributes:isa range:{v112, v110}];

              return;
            }

LABEL_89:
            v142 = 0u;
            v143 = 0u;
            sub_1000261D4(&v142);
            v119 = a8;
            *(&v143 + 1) = sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr);
            if (!a8)
            {
              v119 = a6;
            }

            *&v142 = v119;
            sub_10002432C(&v142, &v139);
            v120 = v119;
            v121 = v135;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v137 = v121;
            sub_100048100(&v139, NSFontAttributeName, isUniquelyReferenced_nonNull_native);
            v135 = *&v137;
            goto LABEL_92;
          }

          v10 = v135;
        }

        else
        {
          v111 = a9;
          v110 = a3;
          v112 = a2;
        }

        v142 = 0u;
        v143 = 0u;
        sub_1000261D4(&v142);
        *(&v143 + 1) = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
        *&v142 = a7;
        sub_10002432C(&v142, &v139);
        v115 = a7;
        v116 = swift_isUniquelyReferenced_nonNull_native();
        *&v137 = v10;
        sub_100048100(&v139, NSForegroundColorAttributeName, v116);
        v10 = *&v137;
        v135 = *&v137;
        if (!*(v137 + 16))
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      sub_10002432C((&v142 + 8), &v139);
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;
      if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
      {

        p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

        p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
        if ((v35 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      sub_10000BA20(&v139, &v137);
      v36 = sub_1000065A8(0, &qword_100AD2A78, UIFont_ptr);
      if (swift_dynamicCast())
      {
        v130 = v136[0];
        v37 = [v130 fontDescriptor];
        v38 = p_ivar_lyt;
        v39 = [v37 p_ivar_lyt[398]];

        if (v39 && (v40 = [a6 fontDescriptor], v41 = objc_msgSend(a6, "fontDescriptor"), v42 = objc_msgSend(v41, v38[398]), v41, v43 = objc_msgSend(v40, "fontDescriptorWithSymbolicTraits:", v42 | v39), v40, v43))
        {
          v44 = [objc_opt_self() fontWithDescriptor:v43 size:0.0];

          v45 = v130;
        }

        else
        {
          v45 = v130;

          v44 = a6;
        }

        v138 = v36;
        *&v137 = v44;
        sub_10002432C(&v137, v136);
        v71 = v44;
        v72 = v135;
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v134 = v72;
        v76 = sub_100051964(v29, v74);
        v77 = *(*&v72 + 16);
        v78 = (v75 & 1) == 0;
        v79 = v77 + v78;
        if (__OFADD__(v77, v78))
        {
          goto LABEL_94;
        }

        v80 = v75;
        if (*(*&v72 + 24) < v79)
        {
          sub_10008065C(v79, v73);
          v82 = sub_100051964(v29, v81);
          if ((v80 & 1) != (v83 & 1))
          {
            goto LABEL_100;
          }

          v76 = v82;
          v10 = v134;
          if ((v80 & 1) == 0)
          {
            goto LABEL_68;
          }

LABEL_56:
          v84 = (*(*&v10 + 56) + 32 * v76);
          sub_10000BA7C(v84);
          sub_10002432C(v136, v84);

          sub_10000BA7C(&v139);
LABEL_70:
          v135 = v10;
          goto LABEL_78;
        }

        if (v73)
        {
          v10 = v134;
          if (v75)
          {
            goto LABEL_56;
          }
        }

        else
        {
          sub_100821670();
          v10 = v134;
          if (v80)
          {
            goto LABEL_56;
          }
        }

LABEL_68:
        *(*&v10 + 8 * (v76 >> 6) + 64) |= 1 << v76;
        *(*(*&v10 + 48) + 8 * v76) = v29;
        sub_10002432C(v136, (*(*&v10 + 56) + 32 * v76));

        sub_10000BA7C(&v139);
        v99 = *(*&v10 + 16);
        v66 = __OFADD__(v99, 1);
        v100 = v99 + 1;
        if (v66)
        {
          goto LABEL_96;
        }

        *(*&v10 + 16) = v100;
        goto LABEL_70;
      }

LABEL_26:
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;
      if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
      {
      }

      else
      {
        v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v50 & 1) == 0)
        {
LABEL_38:
          v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v56 = v55;
          if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
          {
          }

          else
          {
            v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v58 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          sub_10000BA20(&v139, &v137);
          sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
          if (swift_dynamicCast())
          {
            v17 = v136[0];
            v18 = sub_1000804CC();
            [v18 setParagraphSpacingBefore:a4];
            sub_100051308();
            v138 = sub_1000065A8(0, &qword_100AD2A80, NSMutableParagraphStyle_ptr);
            *&v137 = v18;
            sub_10002432C(&v137, v136);
            v19 = v18;
            v20 = v135;
            v21 = swift_isUniquelyReferenced_nonNull_native();
            v134 = v20;
            sub_100048100(v136, NSParagraphStyleAttributeName, v21);

            sub_10000BA7C(&v139);
            v10 = v134;
            goto LABEL_6;
          }

LABEL_43:
          sub_10000BA20(&v139, &v137);
          v59 = v135;
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v136[0] = *&v59;
          v62 = sub_100051964(v29, v61);
          v64 = *(*&v59 + 16);
          v65 = (v63 & 1) == 0;
          v66 = __OFADD__(v64, v65);
          v67 = v64 + v65;
          if (v66)
          {
            goto LABEL_95;
          }

          v68 = v63;
          if (*(*&v59 + 24) >= v67)
          {
            if ((v60 & 1) == 0)
            {
              v101 = v62;
              sub_100821670();
              v62 = v101;
              v10 = *v136;
              if (v68)
              {
                goto LABEL_59;
              }

              goto LABEL_72;
            }
          }

          else
          {
            sub_10008065C(v67, v60);
            v62 = sub_100051964(v29, v69);
            if ((v68 & 1) != (v70 & 1))
            {
              goto LABEL_100;
            }
          }

          v10 = *v136;
          if (v68)
          {
LABEL_59:
            v85 = (*(*&v10 + 56) + 32 * v62);
            sub_10000BA7C(v85);
            sub_10002432C(&v137, v85);

            sub_10000BA7C(&v139);
LABEL_6:
            v135 = v10;
            v11 = v132;
            if (v14)
            {
              continue;
            }

            goto LABEL_8;
          }

LABEL_72:
          *(*&v10 + 8 * (v62 >> 6) + 64) |= 1 << v62;
          *(*(*&v10 + 48) + 8 * v62) = v29;
          sub_10002432C(&v137, (*(*&v10 + 56) + 32 * v62));
          sub_10000BA7C(&v139);
          v102 = *(*&v10 + 16);
          v66 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          if (v66)
          {
            goto LABEL_97;
          }

          *(*&v10 + 16) = v103;
          goto LABEL_6;
        }
      }

      break;
    }

    sub_10000BA20(&v139, &v137);
    v51 = sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_38;
    }

    v52 = v136[0];
    *&v137 = 0;
    v136[0] = 0;
    v133 = 0;
    v134 = 0.0;
    [v52 getRed:&v137 green:v136 blue:&v134 alpha:&v133];
    v53 = *&v137;
    if (*&v137 > 0.001 || (v53 = *v136, *v136 > 0.001) || (v53 = v134, v134 > 0.001))
    {
      *&v137 = 0;
      v136[0] = 0;
      v133 = 0;
      v134 = 0.0;
      [v52 getRed:&v137 green:v136 blue:&v134 alpha:{&v133, v53}];
      if (*&v137 < 0.99 || *v136 < 0.99 || v134 < 0.99)
      {

        goto LABEL_38;
      }
    }

    v138 = v51;
    *&v137 = a7;
    sub_10002432C(&v137, v136);
    v86 = a7;
    v87 = v135;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v134 = v87;
    v90 = sub_100051964(NSForegroundColorAttributeName, v89);
    v92 = *(*&v87 + 16);
    v93 = (v91 & 1) == 0;
    v66 = __OFADD__(v92, v93);
    v94 = v92 + v93;
    if (v66)
    {
      goto LABEL_98;
    }

    v95 = v91;
    if (*(*&v87 + 24) >= v94)
    {
      if ((v88 & 1) == 0)
      {
        v104 = v90;
        sub_100821670();
        v90 = v104;
        v10 = v134;
        if (v95)
        {
          goto LABEL_66;
        }

        goto LABEL_75;
      }

LABEL_65:
      v10 = v134;
      if (v95)
      {
LABEL_66:
        v98 = (*(*&v10 + 56) + 32 * v90);
        sub_10000BA7C(v98);
        sub_10002432C(v136, v98);

        sub_10000BA7C(&v139);
LABEL_77:
        v135 = v10;
LABEL_78:
        v11 = v132;
        if (v14)
        {
          continue;
        }

LABEL_8:
        if (v15 <= v16 + 1)
        {
          v23 = v16 + 1;
        }

        else
        {
          v23 = v15;
        }

        v24 = v23 - 1;
        while (1)
        {
          v22 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v22 >= v15)
          {
            v14 = 0;
            v141 = 0;
            v16 = v24;
            v139 = 0u;
            v140 = 0u;
            goto LABEL_17;
          }

          v14 = *(v11 + 8 * v22);
          ++v16;
          if (v14)
          {
            v16 = v22;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
      }

LABEL_75:
      *(*&v10 + 8 * (v90 >> 6) + 64) |= 1 << v90;
      *(*(*&v10 + 48) + 8 * v90) = NSForegroundColorAttributeName;
      sub_10002432C(v136, (*(*&v10 + 56) + 32 * v90));
      v105 = NSForegroundColorAttributeName;

      sub_10000BA7C(&v139);
      v106 = *(*&v10 + 16);
      v66 = __OFADD__(v106, 1);
      v107 = v106 + 1;
      if (v66)
      {
        goto LABEL_99;
      }

      *(*&v10 + 16) = v107;
      goto LABEL_77;
    }

    break;
  }

  sub_10008065C(v94, v88);
  v90 = sub_100051964(NSForegroundColorAttributeName, v96);
  if ((v95 & 1) == (v97 & 1))
  {
    goto LABEL_65;
  }

LABEL_100:
  type metadata accessor for Key(0);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_1000804CC()
{
  v1 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v1 setAlignment:{objc_msgSend(v0, "alignment")}];
  [v0 firstLineHeadIndent];
  [v1 setFirstLineHeadIndent:?];
  [v0 headIndent];
  [v1 setHeadIndent:?];
  [v1 setBaseWritingDirection:{objc_msgSend(v0, "baseWritingDirection")}];
  isa = [v0 textLists];
  if (!isa)
  {
    sub_10012CAB8();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v1 setTextLists:isa];

  return v1;
}

unint64_t sub_1000806F8()
{
  result = qword_100ADC650;
  if (!qword_100ADC650)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC650);
  }

  return result;
}

void sub_100080784()
{
  v1 = v0;
  v2 = [v0 attributedText];
  if (!v2)
  {
    return;
  }

  v128 = v2;
  v3 = [v0 textLayoutManager];
  if (!v3)
  {
    v8 = v128;
    goto LABEL_6;
  }

  v129 = v3;
  [v0 frame];
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v141.origin.x = CGRectZero.origin.x;
  v141.origin.y = y;
  v141.size.width = width;
  v141.size.height = height;
  if (CGRectEqualToRect(v140, v141))
  {

    v8 = v129;
LABEL_6:

    return;
  }

  v9 = [v0 textLayoutManager];
  if (!v9)
  {
    v10 = v128;
    v35 = v129;
LABEL_25:

    return;
  }

  v10 = v9;
  v11 = [v129 textViewportLayoutController];
  v12 = [v11 viewportRange];

  if (!v12)
  {

    v35 = v128;
    goto LABEL_25;
  }

  v13 = v12;
  v14 = [v10 documentRange];
  v15 = [v14 location];

  v16 = [v10 offsetFromLocation:v15 toLocation:{objc_msgSend(v13, "location")}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v17 = [v10 documentRange];
  v18 = [v17 location];

  v19 = [v10 offsetFromLocation:v18 toLocation:{objc_msgSend(v13, "endLocation")}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (__OFSUB__(v19, v16))
  {
    __break(1u);
    goto LABEL_91;
  }

  v137 = v16;
  v138 = (v19 - v16);
  v20 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_blockQuoteLayerView];
  v21 = OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_quoteAreas;
  swift_beginAccess();
  *&v20[v21] = _swiftEmptyArrayStorage;

  [v1 textContainerInset];
  *&v20[OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_barInset] = v22;
  [v1 textContainerInset];
  *&v20[OBJC_IVAR____TtC7Journal19BlockQuoteLayerView_topInset] = v23;
  v24 = &selRef_setRegion_;
  v25 = [v1 _placeholderLabel];
  if (v25)
  {
    v26 = v25;
    v27 = [v1 isEditable];
    v28 = 0.0;
    if (v27)
    {
      v28 = 1.0;
    }

    [v26 setAlpha:v28];
  }

  if ([v128 length] < &v138[v137])
  {
    v29 = [v128 length];
    if (__OFSUB__(v29, v137))
    {
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    v138 = &v29[-v137];
  }

  v30 = [v1 textStorage];
  v31 = [v30 length];

  v124 = v20;
  if (!v31)
  {
    v36 = [v1 selectedTextRange];
    if (!v36)
    {
      goto LABEL_52;
    }

    v37 = v36;
    v38 = COERCE_DOUBLE([v36 start]);

    if (v38 == 0.0)
    {
      goto LABEL_52;
    }

    v39 = [v1 typingAttributes];
    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
    v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v40 + 16) || (v42 = sub_100051964(NSParagraphStyleAttributeName, v41), (v43 & 1) == 0))
    {

      goto LABEL_51;
    }

    sub_10000BA20(*(v40 + 56) + 32 * v42, &aBlock);

    sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_51;
    }

    v44 = v130.origin.x;
    v45 = [v1 beginningOfDocument];
    v46 = [v1 offsetFromPosition:v45 toPosition:*&v38];

    [*&v130.origin.x firstLineHeadIndent];
    *v48.i64 = *v47.i64 - trunc(*v47.i64);
    v49.f64[0] = NAN;
    v49.f64[1] = NAN;
    v125 = vnegq_f64(v49);
    v50 = *vbslq_s8(v125, v48, v47).i64 + -0.1;
    [*&v130.origin.x headIndent];
    if (fabs(v50) >= 0.01)
    {
      goto LABEL_89;
    }

    *v52.i64 = *v51.i64 - trunc(*v51.i64);
    if (fabs(*vbslq_s8(v125, v52, v51).i64 + -0.1) >= 0.01)
    {
      goto LABEL_89;
    }

    v53 = [v1 textStorage];
    v54 = [v53 length];

    if (v54 < v46)
    {
      goto LABEL_87;
    }

    v55 = [v1 textLayoutManager];
    if (!v55)
    {
      goto LABEL_87;
    }

    v56 = v55;
    v57 = sub_1000F59DC(v46, 0);
    if (!v57)
    {
      goto LABEL_86;
    }

    v58 = v57;
    size = CGRectNull.size;
    v130.origin = CGRectNull.origin;
    v130.size = size;
    v60 = swift_allocObject();
    *(v60 + 16) = &v130;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1007C82F4;
    *(v61 + 24) = v60;
    v132 = sub_1007C82FC;
    v133 = v61;
    *&aBlock.origin.x = _NSConcreteStackBlock;
    *&aBlock.origin.y = 1107296256;
    *&aBlock.size.width = sub_1002B0148;
    *&aBlock.size.height = &unk_100A7E3F0;
    v62 = _Block_copy(&aBlock);

    [v56 enumerateTextSegmentsInRange:v58 type:0 options:0 usingBlock:v62];
    _Block_release(v62);
    LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

    if ((v62 & 1) == 0)
    {
      if (!CGRectIsNull(v130))
      {
        y = v130.origin.y;
        x = v130.origin.x;
        height = v130.size.height;
        width = v130.size.width;
      }

      goto LABEL_87;
    }

    goto LABEL_94;
  }

  v136 = v137;
  if (v137 <= 0)
  {
    v121 = 0;
    v122 = 0;
    v33 = NSParagraphStyleAttributeName;
    goto LABEL_55;
  }

  v32 = [v1 textStorage];
  v33 = NSParagraphStyleAttributeName;
  v34 = [v32 attribute:NSParagraphStyleAttributeName atIndex:v137 effectiveRange:0];

  if (v34)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(&v130, 0, sizeof(v130));
  }

  aBlock = v130;
  if (!*&v130.size.height)
  {
    goto LABEL_49;
  }

  sub_1000065A8(0, &qword_100ADFF70, NSParagraphStyle_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_54:
    v121 = 0;
    v122 = 0;
    goto LABEL_55;
  }

  v63 = v134[0];
  [v134[0] firstLineHeadIndent];
  *v65.i64 = *v64.i64 - trunc(*v64.i64);
  v66.f64[0] = NAN;
  v66.f64[1] = NAN;
  v126 = vnegq_f64(v66);
  v67 = *vbslq_s8(v126, v65, v64).i64 + -0.1;
  [v134[0] headIndent];
  if (fabs(v67) >= 0.01 || (*v69.i64 = *v68.i64 - trunc(*v68.i64), fabs(*vbslq_s8(v126, v69, v68).i64 + -0.1) >= 0.01))
  {

    goto LABEL_54;
  }

  v70 = [v1 textStorage];
  v127 = v137 - 1;
  if (__OFSUB__(v137, 1))
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    return;
  }

  v71 = v70;
  v72 = swift_allocObject();
  *(v72 + 16) = &v136;
  v73 = swift_allocObject();
  v121 = sub_100049728;
  v122 = v72;
  *(v73 + 16) = sub_100049728;
  *(v73 + 24) = v72;
  v132 = sub_100673DC8;
  v133 = v73;
  *&aBlock.origin.x = _NSConcreteStackBlock;
  *&aBlock.origin.y = 1107296256;
  *&aBlock.size.width = sub_10007E0A4;
  *&aBlock.size.height = &unk_100A7E378;
  v74 = _Block_copy(&aBlock);

  [v71 enumerateAttribute:NSParagraphStyleAttributeName inRange:0 options:v127 usingBlock:{2, v74}];

  _Block_release(v74);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_49:
    sub_100004F84(&aBlock, &qword_100AD13D0, &unk_100942DB0);
    goto LABEL_54;
  }

LABEL_55:
  v135 = _swiftEmptyArrayStorage;
  v134[0] = NSNotFound.getter();
  v134[1] = 0;
  v76 = [v1 textStorage];
  v77 = v137;
  v78 = v138;
  v79 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = swift_allocObject();
  v80[2] = v79;
  v80[3] = v134;
  v80[4] = &v137;
  v80[5] = &v135;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_1007C8220;
  *(v81 + 24) = v80;
  v132 = sub_100673DC8;
  v133 = v81;
  *&aBlock.origin.x = _NSConcreteStackBlock;
  *&aBlock.origin.y = 1107296256;
  *&aBlock.size.width = sub_10007E0A4;
  *&aBlock.size.height = &unk_100A7E288;
  v82 = _Block_copy(&aBlock);

  [v76 enumerateAttribute:v33 inRange:v77 options:v78 usingBlock:{0, v82}];

  _Block_release(v82);
  v83 = swift_isEscapingClosureAtFileLocation();

  if (v83)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v84 = *(v135 + 2);
  v85 = v124;
  p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  if (!v84)
  {
LABEL_83:

    [v85 setNeedsDisplay];

    sub_100004DF8(v121, v122);

    return;
  }

  *v123 = CGRectNull.origin;
  *&v123[16] = CGRectNull.size;
  v87 = ( + 40);
  while (1)
  {
    v91 = *(v87 - 1);
    v92 = *v87;
    if (v91 == v137)
    {
      v93 = v136;
    }

    else
    {
      v93 = *(v87 - 1);
    }

    v94 = [v1 textStorage];
    v95 = [v94 attributesAtIndex:v93 effectiveRange:0];

    type metadata accessor for Key(0);
    sub_100051798(&qword_100ADC650, type metadata accessor for Key, &unk_10093BF84);
    v96 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v96 + 16) || (v98 = sub_100051964(NSForegroundColorAttributeName, v97), (v99 & 1) == 0) || (sub_10000BA20(*(v96 + 56) + 32 * v98, &aBlock), sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr), !swift_dynamicCast()))
    {

LABEL_72:
      v38 = 0.0;
      goto LABEL_73;
    }

    v38 = v130.origin.x;
    if (qword_100AD0AC0 != -1)
    {
      swift_once();
    }

    v100 = qword_100B31098;
    v101 = static NSObject.== infix(_:_:)();

    if (v101)
    {

      v38 = 0.0;
      v85 = v124;
      p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
      goto LABEL_73;
    }

    v115 = [objc_opt_self() blackColor];
    v116 = static NSObject.== infix(_:_:)();

    v85 = v124;
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
    if (v116)
    {

      goto LABEL_72;
    }

LABEL_73:
    v102 = [v129 p_ivar_lyt[388]];
    v103 = [v102 location];

    v104 = [v129 locationFromLocation:v103 withOffset:v91];
    swift_unknownObjectRelease();
    v105 = 0.0;
    if (!v104)
    {
      goto LABEL_59;
    }

    v106 = [v129 locationFromLocation:v104 withOffset:v92];
    if (v106)
    {
      break;
    }

    swift_unknownObjectRelease();
LABEL_59:
    v88 = 0.0;
    v89 = 0.0;
    v90 = 0.0;
LABEL_60:
    v87 += 2;
    sub_1004E5DAC(*&v38, v105, v88, v89, v90);

    if (!--v84)
    {

      goto LABEL_83;
    }
  }

  v56 = [objc_allocWithZone(NSTextRange) initWithLocation:v104 endLocation:v106];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v88 = 0.0;
  v89 = 0.0;
  v90 = 0.0;
  if (!v56)
  {
    goto LABEL_60;
  }

  v130 = *v123;
  v44 = COERCE_DOUBLE(swift_allocObject());
  *(*&v44 + 16) = &v130;
  v107 = swift_allocObject();
  *(v107 + 16) = sub_1002D3718;
  *(v107 + 24) = v44;
  v132 = sub_10022DC60;
  v133 = v107;
  *&aBlock.origin.x = _NSConcreteStackBlock;
  *&aBlock.origin.y = 1107296256;
  *&aBlock.size.width = sub_1002B0148;
  *&aBlock.size.height = &unk_100A7E300;
  v108 = _Block_copy(&aBlock);

  [v129 enumerateTextSegmentsInRange:v56 type:0 options:0 usingBlock:v108];
  _Block_release(v108);
  v24 = swift_isEscapingClosureAtFileLocation();

  if ((v24 & 1) == 0)
  {
    IsNull = CGRectIsNull(v130);

    v105 = CGRectZero.origin.x;
    v110 = y;
    v111 = width;
    v112 = height;
    if (!IsNull)
    {
      v110 = v130.origin.y;
      v105 = v130.origin.x;
      v112 = v130.size.height;
      v111 = v130.size.width;
    }

    v113 = v110;
    v114 = v112;

    v90 = v114;
    v89 = v111;
    v88 = v113;
    v85 = v124;
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
    goto LABEL_60;
  }

  __break(1u);
LABEL_86:

  x = 0.0;
  y = 0.0;
  width = 0.0;
  height = 0.0;
LABEL_87:
  v117 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_currentSelectedColor];
  v118 = v117;
  sub_1004E5DAC(v117, x, y, width, height);

  v119 = [v1 *(v24 + 3400)];
  if (v119)
  {
    v120 = v119;
    [v120 setAlpha:0.0];
  }

LABEL_89:

LABEL_51:
  v20 = v124;
LABEL_52:
  [v20 setNeedsDisplay];
}

uint64_t sub_100081950()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for DrawingAsset(uint64_t a1)
{
  result = qword_100AD6C38;
  if (!qword_100AD6C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1000819F8()
{
  v1 = v0;
  v2 = type metadata accessor for MergeableEntryAttributes();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD6260, &qword_100944D10);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_1000F24EC(&unk_100AD6240, &unk_100944CF0);
  v23 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for JournalFeatureFlags();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for JournalFeatureFlags.enhancedSync(_:), v11, v13);
  v16 = JournalFeatureFlags.isEnabled.getter();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v17 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_1000082B4(v1 + v17, v7, &qword_100AD6260, &qword_100944D10);
    v18 = v24;
    if ((*(v24 + 48))(v7, 1, v2))
    {
      sub_100004F84(v7, &qword_100AD6260, &qword_100944D10);
      return 0;
    }

    else
    {
      (*(v18 + 16))(v4, v7, v2);
      sub_100004F84(v7, &qword_100AD6260, &qword_100944D10);
      MergeableEntryAttributes.title.getter();
      (*(v18 + 8))(v4, v2);
      v19 = CRAttributedString.attributedString.getter();
      (*(v23 + 8))(v10, v8);
    }
  }

  else
  {
    v19 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedTitle);
    v20 = v19;
  }

  return v19;
}

void *sub_100081D68()
{
  v1 = v0;
  v2 = type metadata accessor for MergeableEntryAttributes();
  v27 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD6260, &qword_100944D10);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_1000F24EC(&qword_100AE4C80, &qword_10094A970);
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for JournalFeatureFlags();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for JournalFeatureFlags.enhancedSync(_:), v11, v13);
  v16 = JournalFeatureFlags.isEnabled.getter();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v17 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_1000082B4(v1 + v17, v7, &qword_100AD6260, &qword_100944D10);
    v18 = v27;
    if ((*(v27 + 48))(v7, 1, v2))
    {
      sub_100004F84(v7, &qword_100AD6260, &qword_100944D10);
      return 0;
    }

    else
    {
      (*(v18 + 16))(v4, v7, v2);
      sub_100004F84(v7, &qword_100AD6260, &qword_100944D10);
      MergeableEntryAttributes.text.getter();
      (*(v18 + 8))(v4, v2);
      v22 = CRAttributedString.attributedString.getter();
      (*(v26 + 8))(v10, v8);
      v23 = [v22 string];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v24;
    }
  }

  else
  {
    result = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_attributedText);
    if (result)
    {
      v20 = [result string];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v21;
    }
  }

  return result;
}

id sub_100082148()
{
  v1 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell____lazy_storage___textMaskViewHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell____lazy_storage___textMaskViewHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell____lazy_storage___textMaskViewHeightConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_entryTextContainerView) heightAnchor];
    v5 = [v4 constraintEqualToConstant:0.0];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

double sub_1000821F0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal24TimelineMomentsTitleView_journalEntry];
  if (v2)
  {

    v3 = sub_1000819F8();

    if (v3)
    {
      v4 = [v3 string];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = v5;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = [v1 text];
  if (v6)
  {
    v8 = v6;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (!v3)
    {
      v14 = 0;
      goto LABEL_17;
    }

    if (v9 == v2 && v3 == v11)
    {

LABEL_21:

      return result;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_21;
    }
  }

  else if (!v3)
  {
    return result;
  }

  v14 = String._bridgeToObjectiveC()();
LABEL_17:

  [v1 setText:v14];

  return result;
}

uint64_t sub_1000823A8(char a1, char a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  *(v13 + 25) = a2;
  aBlock[4] = sub_1000918C8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A75B20;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000826D8();
  sub_1000F24EC(&unk_100AD6220, &unk_10093C0A0);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_100082668()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000826A0()
{

  return swift_deallocObject();
}

unint64_t sub_1000826D8()
{
  result = qword_100AD1520;
  if (!qword_100AD1520)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD1520);
  }

  return result;
}

id sub_100082730(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_entry;
  *(v1 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_entry) = a1;

  *(*(v1 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_metadataButton) + OBJC_IVAR____TtC7Journal26JournalEntryMetadataButton_entry) = a1;

  sub_10004A91C();
  if (*(v1 + v3))
  {

    v4 = sub_1002AC4A8();
    type metadata accessor for JournalEntryMO();
    v5 = MinimumSupportedVersion.isEditingSupported.getter();
    LOBYTE(v6) = 1;
    if ((v5 & 1) == 0)
    {
      v6 = sub_1002AC4A8() ^ 1;
    }

    [*(v1 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_unsupportedAlertButton) setHidden:v6 & 1];
    [*(v1 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_overflowButton) setHidden:(v4 & 1) == 0];
  }

  v7 = *(v1 + OBJC_IVAR____TtC7Journal24JournalEntryCellChinView_dividerLineView);
  if (sub_10005AAB0(4) & 1) != 0 || (v8 = sub_10005AAB0(2), v9 = 0.0, (v8))
  {
    v9 = 1.0;
  }

  return [v7 setAlpha:v9];
}

uint64_t sub_100082890@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  KeyPath = swift_getKeyPath();
  v7 = type metadata accessor for JournalEntryMetadataButton.ContentView(0);
  *(a3 + v7[6]) = KeyPath;
  sub_1000F24EC(&qword_100AD9990, &unk_100942950);
  swift_storeEnumTagMultiPayload();
  *(a3 + v7[7]) = swift_getKeyPath();
  sub_1000F24EC(&qword_100ADECB0, &qword_10094FB28);
  swift_storeEnumTagMultiPayload();
  v8 = swift_getKeyPath();
  type metadata accessor for JournalEntryMO();
  sub_100052258(&qword_100ADECB8, &type metadata accessor for JournalEntryMO, &protocol conformance descriptor for NSManagedObject);
  v9 = a1;
  result = ObservedObject.init(wrappedValue:)();
  *a3 = result;
  a3[1] = v11;
  a3[2] = sub_10003C53C;
  a3[3] = v5;
  v12 = a3 + v7[8];
  *v12 = v8;
  v12[8] = 0;
  return result;
}

uint64_t sub_100082A00()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100082A84@<X0>(_BYTE *a1@<X8>)
{
  sub_1001860A8();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100082B20(uint64_t a1)
{
  result = type metadata accessor for CRAttributedString();
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

double sub_100082BE4()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100ADE5A0, &unk_10094F330);
  __chkstk_darwin(v2 - 8);
  v4 = &v26[-v3];
  v5 = type metadata accessor for UnsupportedEntryMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&result = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v26[-v11];
  v13 = *(v0 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_journalEntry);
  if (v13)
  {
    v31 = *(v13 + 32);
    type metadata accessor for JournalEntryMO();

    if (MinimumSupportedVersion.isEditingSupported.getter())
    {
      goto LABEL_12;
    }

    v28 = v0;
    JournalEntryMO.unsupportedEntryMode.getter();
    v14 = *(v6 + 48);
    if (v14(v4, 1, v5) == 1)
    {
      v15 = *(v6 + 104);
      v27 = enum case for UnsupportedEntryMode.hiddenAll(_:);
      v15(v12);
      if (v14(v4, 1, v5) != 1)
      {
        sub_100004F84(v4, &qword_100ADE5A0, &unk_10094F330);
      }

      v1 = v28;
      v16 = v27;
    }

    else
    {
      (*(v6 + 32))(v12, v4, v5);
      v16 = enum case for UnsupportedEntryMode.hiddenAll(_:);
      v15 = *(v6 + 104);
      v1 = v28;
    }

    (v15)(v8, v16, v5);
    sub_100603A60(&unk_100ADE5E0, &type metadata accessor for UnsupportedEntryMode, &protocol conformance descriptor for UnsupportedEntryMode);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v17 = *(v6 + 8);
    v17(v8, v5);
    v17(v12, v5);
    if (v30 != v29)
    {
LABEL_12:
      v25 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_unsupportedEntryView);
      if (v25)
      {
        [v25 setHidden:1];
      }

      [*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_topContentMaskView) setHidden:0];
    }

    else
    {
      v18 = OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_unsupportedEntryView;
      v19 = *(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_unsupportedEntryView);
      if (v19 || (type metadata accessor for UnsupportedEntryView(), v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init], objc_msgSend(v20, "setTranslatesAutoresizingMaskIntoConstraints:", 0), v21 = objc_msgSend(v20, "heightAnchor"), v22 = objc_msgSend(v21, "constraintEqualToConstant:", 200.0), v21, objc_msgSend(v22, "setActive:", 1), v22, v23 = *(v1 + v18), *(v1 + v18) = v20, v23, (v19 = *(v1 + v18)) != 0))
      {
        v24 = v19;
        [v24 setHidden:0];
        [*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_contentStackView) insertArrangedSubview:v24 atIndex:0];
        [*(v1 + OBJC_IVAR____TtC7Journal30JournalEntryCollectionViewCell_topContentMaskView) setHidden:1];
      }
    }
  }

  return result;
}

uint64_t sub_1000831FC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for ColorResource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIBackgroundConfiguration.clear()();
  UIBackgroundConfiguration.cornerRadius.setter();
  sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
  if (qword_100AD0CC0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000617C(v1, qword_100B31550);
  v9 = *(v2 + 16);
  v9(v4, v8, v1);
  v10 = UIColor.init(resource:)();
  v11 = UICellConfigurationState.traitCollection.getter();
  v12 = [v11 userInterfaceStyle];

  if (v12 == 2)
  {
    v13 = 24;
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_opt_self() effectCompositingColor:v10 withMode:v13 alpha:1.0];

  UIBackgroundConfiguration.visualEffect.setter();
  if (qword_100AD0CC8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000617C(v1, qword_100B31568);
  v9(v4, v15, v1);
  UIColor.init(resource:)();
  v16 = UIBackgroundConfiguration.shadowProperties.modify();
  UIShadowProperties.color.setter();
  v16(v31, 0);
  v17 = UIBackgroundConfiguration.shadowProperties.modify();
  UIShadowProperties.opacity.setter();
  v17(v31, 0);
  v18 = UIBackgroundConfiguration.shadowProperties.modify();
  UIShadowProperties.radius.setter();
  v18(v31, 0);
  v19 = UIBackgroundConfiguration.shadowProperties.modify();
  v20 = UIShadowProperties.offset.modify();
  *(v21 + 8) = 0x4000000000000000;
  v20(v30, 0);
  v19(v31, 0);
  if ((UICellConfigurationState.isSwiped.getter() & 1) == 0)
  {
    if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (v23 = [v26 traitCollection], v24 = objc_msgSend(v23, "userInterfaceIdiom"), v23, v24 == 5) && (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 && (UICellConfigurationState.isEditing.getter())
    {
      v22 = [objc_opt_self() tintColor];
      UIBackgroundConfiguration.strokeColor.setter();
      UIBackgroundConfiguration.strokeOutset.setter();
      UIBackgroundConfiguration.strokeWidth.setter();
    }
  }

  return (*(v27 + 32))(v29, v7, v28);
}

unint64_t sub_10008375C()
{
  v1 = OBJC_IVAR____TtC7Journal12MosaicLayout_cachedAttributes;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (IndexPath.item.getter() >= v3)
  {
    return 0;
  }

  result = IndexPath.item.getter();
  v5 = *(v0 + v1);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    return v6;
  }

  else
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(v5 + 8 * result + 32);
    }

    __break(1u);
  }

  return result;
}

id sub_100083850()
{
  if ([v0 isScrollEnabled])
  {
    goto LABEL_6;
  }

  result = [v0 text];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 || (v7 = [v0 attributedPlaceholder]) == 0 || (v7, objc_msgSend(v0, "_preferredMaxLayoutWidth"), v9 = v8, objc_msgSend(v0, "textContainerInset"), v11 = v9 - v10, objc_msgSend(v0, "textContainerInset"), v13 = v11 - v12, v13 <= 0.0))
  {
LABEL_6:
    v15.receiver = v0;
    v15.super_class = type metadata accessor for JournalTextView();
    return objc_msgSendSuper2(&v15, "intrinsicContentSize");
  }

  result = [v0 _placeholderLabel];
  if (result)
  {
    v14 = result;
    [result sizeThatFits:{v13, 1.79769313e308}];

    [v0 textContainerInset];
    return [v0 textContainerInset];
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_100083A20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MergeableFont.Traits();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100083A64(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata) = a1;

  return result;
}

uint64_t sub_100083A7C(unint64_t a1)
{
  v2 = type metadata accessor for AssetAttachment.AssetType(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_16:

    v11 = _swiftEmptyArrayStorage;
LABEL_17:
    type metadata accessor for LivePhotoAsset.LivePhotoAttachments();
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 24) = 0;
    return result;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_3:
  v20 = _swiftEmptyArrayStorage;
  result = sub_100083D5C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v9; ++i)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100068AC8(v13 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v8, type metadata accessor for AssetAttachment.AssetType);
        swift_unknownObjectRelease();
        v20 = v11;
        v15 = *(v11 + 2);
        v14 = *(v11 + 3);
        if (v15 >= v14 >> 1)
        {
          sub_100083D5C((v14 > 1), v15 + 1, 1);
          v11 = v20;
        }

        *(v11 + 2) = v15 + 1;
        sub_100048E9C(v8, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, type metadata accessor for AssetAttachment.AssetType);
      }
    }

    else
    {
      v16 = 32;
      do
      {
        sub_100068AC8(*(a1 + v16) + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v5, type metadata accessor for AssetAttachment.AssetType);
        v20 = v11;
        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          sub_100083D5C((v17 > 1), v18 + 1, 1);
          v11 = v20;
        }

        *(v11 + 2) = v18 + 1;
        sub_100048E9C(v5, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, type metadata accessor for AssetAttachment.AssetType);
        v16 += 8;
        --v9;
      }

      while (v9);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

double *sub_100083D5C(double *a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6688, &qword_100945390, type metadata accessor for AssetAttachment.AssetType);
  *v3 = result;
  return result;
}

double sub_100083DA0()
{

  *(v0 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_livePhotoAttachments) = sub_100083A7C(v1);

  return result;
}

id sub_100083E38(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_previousSizeType] = 8;
  v9 = &v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_durationText];
  *v9 = 0;
  v9[1] = 0;
  v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_hasTranscription] = 0;
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___headerStackView] = 0;
  v10 = OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_playbackButton;
  type metadata accessor for PlaybackButton();
  *&v4[v10] = sub_100083FB0(0);
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___headerLabel] = 0;
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___bulletAndTranscriptImageAttributedString] = 0;
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___outerStackView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___waveformContainerView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewLeadingEdgeConstraint] = 0;
  *&v4[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewTrailingEdgeConstraint] = 0;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for AudioAssetTranscriptionGridView();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
  sub_100085208();

  return v11;
}

_BYTE *sub_100083FB0(char a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AE4250, &unk_100941870);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  v19 = [objc_allocWithZone(v2) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19[OBJC_IVAR____TtC7Journal14PlaybackButton_placementView] = a1 & 1;
  if (a1)
  {
    v20 = [objc_opt_self() whiteColor];
    v21 = objc_opt_self();
    v22 = [v21 configurationWithHierarchicalColor:v20];

    UIButton.configuration.getter();
    v23 = type metadata accessor for UIButton.Configuration();
    v24 = *(*(v23 - 8) + 48);
    if (v24(v9, 1, v23))
    {
      sub_1001BF174(v9, v15);
      UIButton.configuration.setter();
      sub_1001F5544(v9);
    }

    else
    {
      v32 = [objc_opt_self() effectWithStyle:6];
      v41 = v22;
      v33 = UIButton.Configuration.background.modify();
      v40 = v21;
      v34 = v33;
      v22 = v41;
      UIBackgroundConfiguration.visualEffect.setter();
      v34(v42, 0);
      v21 = v40;
      UIButton.configuration.setter();
    }

    UIButton.configuration.getter();
    if (v24(v6, 1, v23))
    {
      sub_1001BF174(v6, v15);
      UIButton.configuration.setter();

      sub_1001F5544(v6);
    }

    else
    {
      v35 = [v21 configurationWithTextStyle:UIFontTextStyleTitle2 scale:2];
      v36 = [v22 configurationByApplyingConfiguration:v35];

      UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
      UIButton.configuration.setter();
    }
  }

  else
  {
    sub_1000F24EC(&unk_100AD4780, &unk_100941070);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100941D60;
    v26 = objc_opt_self();
    *(v25 + 32) = [v26 whiteColor];
    *(v25 + 40) = [v26 systemIndigoColor];
    sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v28 = objc_opt_self();
    v29 = [v28 configurationWithPaletteColors:isa];

    UIButton.configuration.getter();
    v30 = type metadata accessor for UIButton.Configuration();
    v31 = *(*(v30 - 8) + 48);
    if (v31(v18, 1, v30))
    {
      sub_1001BF174(v18, v15);
      UIButton.configuration.setter();
      sub_1001F5544(v18);
    }

    else
    {
      UIButton.Configuration.contentInsets.setter();
      UIButton.configuration.setter();
    }

    UIButton.configuration.getter();
    if (v31(v12, 1, v30))
    {
      sub_1001BF174(v12, v15);
      UIButton.configuration.setter();

      sub_1001F5544(v12);
    }

    else
    {
      v37 = [v28 configurationWithTextStyle:UIFontTextStyleTitle2 scale:3];
      v38 = [v29 configurationByApplyingConfiguration:v37];

      UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
      UIButton.configuration.setter();
    }
  }

  return v19;
}

id sub_100084534(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AE4250, &unk_100941870);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  v4[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying] = 0;
  v4[OBJC_IVAR____TtC7Journal14PlaybackButton_placementView] = 1;
  v21 = type metadata accessor for PlaybackButton();
  v39.receiver = v4;
  v39.super_class = v21;
  v22 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  static UIButton.Configuration.plain()();
  v23 = type metadata accessor for UIButton.Configuration();
  v24 = *(v23 - 8);
  (*(v24 + 56))(v20, 0, 1, v23);
  UIButton.configuration.setter();
  UIButton.configuration.getter();
  v25 = *(v24 + 48);
  if (v25(v17, 1, v23))
  {
    sub_1001BF174(v17, v20);
    UIButton.configuration.setter();
    sub_1001F5544(v17);
  }

  else
  {
    v26 = [objc_opt_self() clearColor];
    v36 = v9;
    v27 = UIButton.Configuration.background.modify();
    v35 = v10;
    v28 = v27;
    v9 = v36;
    UIBackgroundConfiguration.backgroundColor.setter();
    v28(v38, 0);
    v10 = v35;
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  if (v25(v14, 1, v23))
  {
    sub_1001BF174(v14, v20);
    UIButton.configuration.setter();
    sub_1001F5544(v14);
  }

  else
  {
    (*(v10 + 104))(v37, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v9);
    UIButton.Configuration.cornerStyle.setter();
    UIButton.configuration.setter();
  }

  v29 = v22;
  [v29 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [v29 setContentHorizontalAlignment:3];
  [v29 setContentVerticalAlignment:3];
  [v29 setPreferredBehavioralStyle:1];

  v30 = [v29 heightAnchor];
  v31 = [v29 widthAnchor];

  v32 = [v30 constraintEqualToAnchor:v31];
  [v32 setActive:1];

  return v29;
}

char *sub_1000849BC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer];
  type metadata accessor for AudioPlayer(0);
  swift_allocObject();
  v11 = sub_100084D8C();
  v12 = sub_100084FA8(&qword_100AE4060, type metadata accessor for AudioPlayer, &unk_100958E6C);
  *v10 = v11;
  v10[1] = v12;
  v13 = OBJC_IVAR____TtC7Journal14AudioAssetView_waveformView;
  type metadata accessor for SelfSizingWaveformView();
  *&v5[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[OBJC_IVAR____TtC7Journal14AudioAssetView_enableScrubber] = 0;
  *&v5[OBJC_IVAR____TtC7Journal14AudioAssetView_playbackDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC7Journal14AudioAssetView_waveformLoaded] = 0;
  *&v5[OBJC_IVAR____TtC7Journal14AudioAssetView_audioAsset] = 0;
  v21.receiver = v5;
  v21.super_class = type metadata accessor for AudioAssetView();
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  v16 = *&v14[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
  v17 = v14;
  [v17 addSubview:v16];
  v18 = *&v14[v15];
  sub_100013178(0.0);

  [v17 addSubview:*&v17[OBJC_IVAR____TtC7Journal14AudioAssetView_waveformView]];
  v19 = [objc_opt_self() defaultCenter];
  if (qword_100ACFCC8 != -1)
  {
    swift_once();
  }

  [v19 addObserver:v17 selector:? name:? object:?];

  return v17;
}

uint64_t type metadata accessor for AudioPlayer(uint64_t a1)
{
  result = qword_100AE5FB8;
  if (!qword_100AE5FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100084C64(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100084D8C()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 56) = _swiftEmptyArrayStorage;
  *(v0 + 64) = 0;
  *(v0 + 72) = [objc_allocWithZone(AVPlayer) init];
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC7Journal11AudioPlayer__lastUpdatedTime) = 0;
  v1 = (v0 + OBJC_IVAR____TtC7Journal11AudioPlayer_playbackTimeObserverToken);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC7Journal11AudioPlayer_nowPlayingSessionIfLoaded) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal11AudioPlayer_automaticallyPublishesNowPlayingInfo) = 1;
  ObservationRegistrar.init()();
  sub_100084E70();
  return v0;
}

void sub_100084E70()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:"didPlayToEndWithNotification:" name:AVPlayerItemDidPlayToEndTimeNotification object:0];

  v4 = [v1 defaultCenter];
  v5 = [objc_opt_self() sharedInstance];
  [v4 addObserver:v0 selector:"handleAudioSessionInterruption:" name:AVAudioSessionInterruptionNotification object:v5];
}

uint64_t sub_100084FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100084FF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioPlayer(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100085034(uint64_t a1)
{
  *(a1 + 8) = sub_100084FF0(&qword_100AE6228, &unk_100958E34);
  result = sub_100084FF0(&qword_100AE6230, &unk_100958E50);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000850A0(uint64_t a1)
{
  result = sub_100084FF0(&qword_100AE6220, &unk_100958E18);
  *(a1 + 8) = result;
  return result;
}

NSString sub_1000851D0()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2F860 = result;
  return result;
}

uint64_t sub_100085208()
{
  v1 = v0;
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
  if (qword_100AD0BF0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000617C(v2, qword_100B312E0);
  (*(v3 + 16))(v5, v6, v2);
  v7 = UIColor.init(resource:)();
  [v1 setBackgroundColor:v7];

  v8 = sub_100085C70();
  [v1 addSubview:v8];

  v9 = OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___outerStackView;
  v10 = *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___outerStackView];
  v11 = sub_100028DA0(0, 1, 12.0);

  v12 = *&v1[v9];
  v13 = [v12 superview];
  if (v13)
  {
    v14 = v13;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [v12 topAnchor];
    v16 = [v14 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    [v17 setConstant:6.0];
    [v17 setActive:1];

    v12 = v14;
  }

  v18 = *&v1[v9];
  v19 = [v18 superview];
  if (v19)
  {
    v20 = v19;
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = [v18 leadingAnchor];
    v22 = [v20 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    [v23 setConstant:0.0];
    [v23 setActive:1];

    v18 = v20;
  }

  v24 = *&v1[v9];
  v25 = [v24 superview];
  if (v25)
  {
    v26 = v25;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v24 trailingAnchor];
    v28 = [v26 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    [v29 setConstant:0.0];
    [v29 setActive:1];

    v24 = v26;
  }

  v30 = sub_100085D48();
  v31 = *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_playbackButton];
  [v30 addArrangedSubview:v31];

  v32 = OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___headerStackView;
  v33 = *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___headerStackView];
  v34 = sub_1000A9870();
  [v33 addArrangedSubview:v34];

  [*&v1[v9] addArrangedSubview:*&v1[v32]];
  v35 = *&v1[v32];
  v36 = [v35 superview];
  if (v36)
  {
    v37 = v36;
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [v35 leadingAnchor];
    v39 = [v37 leadingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    [v40 setConstant:6.0];
    [v40 setActive:1];

    v35 = v37;
  }

  sub_1000065A8(0, &qword_100AD4420, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v31 addAction:v41 forControlEvents:64];

  v42 = *&v1[OBJC_IVAR____TtC7Journal14AudioAssetView_waveformView];
  [v42 removeFromSuperview];
  v43 = sub_100709744();
  [v43 addSubview:v42];

  sub_100013178(0.0);

  v44 = *&v1[v9];
  v45 = OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___waveformContainerView;
  [v44 addArrangedSubview:*&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView____lazy_storage___waveformContainerView]];
  v46 = *&v1[v45];
  v47 = [v46 superview];
  if (v47)
  {
    v48 = v47;
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = [v46 leadingAnchor];
    v50 = [v48 leadingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    [v51 setConstant:0.0];
    if (v51)
    {
      [v51 setActive:1];
    }
  }

  else
  {
    v51 = 0;
    v48 = v46;
  }

  v52 = *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewLeadingEdgeConstraint];
  *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewLeadingEdgeConstraint] = v51;

  v53 = *&v1[v45];
  v54 = [v53 superview];
  if (v54)
  {
    v55 = v54;
    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
    v56 = [v53 trailingAnchor];
    v57 = [v55 trailingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    [v58 setConstant:0.0];
    if (v58)
    {
      [v58 setActive:1];
    }
  }

  else
  {
    v58 = 0;
    v55 = v53;
  }

  v59 = *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewTrailingEdgeConstraint];
  *&v1[OBJC_IVAR____TtC7Journal31AudioAssetTranscriptionGridView_waveformContainerViewTrailingEdgeConstraint] = v58;

  v60 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  v61 = *&v1[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
  v62 = *((swift_isaMask & *v61) + 0x58);
  v63 = v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v64 = v61;
  v62(5, v63);

  [v1 addSubview:*&v1[v60]];
  v65 = *&v1[v60];
  sub_100013178(0.0);

  v66 = *&v1[OBJC_IVAR____TtC7Journal14AudioAssetView_audioPlayer + 8];
  ObjectType = swift_getObjectType();
  v68 = *(v66 + 24);
  swift_unknownObjectRetain();
  LOBYTE(v66) = v68(ObjectType, v66);
  swift_unknownObjectRelease();
  v69 = v31[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying];
  v31[OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying] = v66 & 1;
  if ((v66 & 1) != v69)
  {
    [v31 setNeedsUpdateConfiguration];
  }

  return sub_100709F30();
}