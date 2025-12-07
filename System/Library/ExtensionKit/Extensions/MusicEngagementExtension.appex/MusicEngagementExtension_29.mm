unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11MusicCoreUI15BouncyBarsAsset33_1239B5B087AAB7692D5EF8FD4F2B07D1LLC15BarAnimationKeyO_So010CAKeyframeS0CTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11MusicCoreUI15BouncyBarsAsset33_1239B5B087AAB7692D5EF8FD4F2B07D1LLC15BarAnimationKeyOSo010CAKeyframeS0CGMd, &_ss18_DictionaryStorageCy11MusicCoreUI15BouncyBarsAsset33_1239B5B087AAB7692D5EF8FD4F2B07D1LLC15BarAnimationKeyOSo010CAKeyframeS0CGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
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

Class specialized static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(UIMenuIdentifier_optional a1, uint64_t a2, uint64_t a3)
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
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v12 = static NSBundle.module;
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v15 = v14;
  (*(v7 + 8))(v11, v6);
  type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0, UIBarButtonItem_ptr);
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() systemImageNamed:v16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004F2F10;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  aBlock[4] = partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:);
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
  aBlock[3] = &block_descriptor_125;
  v21 = _Block_copy(aBlock);

  v22 = [v19 elementWithUncachedProvider:v21];
  _Block_release(v21);
  *(v18 + 32) = v22;
  type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0, UIMenu_ptr);
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

id specialized static UIKeyCommand.findKeyCommand(_:)(uint64_t a1, uint64_t a2)
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
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v10 = static NSBundle.module;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  (*(v5 + 8))(v9, v4);
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 keyCommandWithInput:v12 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v14 = v13;
  v15 = String._bridgeToObjectiveC()();

  [v14 setTitle:v15];

  if (one-time initialization token for Handling != -1)
  {
    swift_once();
  }

  v16 = static UIKeyCommand.KeyCommandAssociatedKeys.Handling;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v20[1] = thunk for @escaping @callee_guaranteed (@guaranteed UIKeyCommand) -> ()partial apply;
  v20[2] = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySo12UIKeyCommandCcMd, &_sySo12UIKeyCommandCcMR);
  v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v14, v16, v18, 3);
  swift_unknownObjectRelease();

  return v14;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UIKeyCommand) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t _sSo29UIFontDescriptorAttributeNameaABSHSCWl_0()
{
  result = _sSo29UIFontDescriptorAttributeNameaABSHSCWL_0;
  if (!_sSo29UIFontDescriptorAttributeNameaABSHSCWL_0)
  {
    _sSo29UIFontDescriptorAttributeNameaMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSo29UIFontDescriptorAttributeNameaABSHSCWL_0);
  }

  return result;
}

uint64_t sub_1002CFCDC()
{

  return swift_deallocObject();
}

double partial apply for closure #1 in static UIMenu.lazy(title:image:options:cached:childrenProvider:)(void (*a1)(void))
{
  (*(v1 + 16))();
  a1();

  return result;
}

uint64_t sub_1002CFD94()
{

  return swift_deallocObject();
}

uint64_t sub_1002CFDCC()
{

  return swift_deallocObject();
}

uint64_t sub_1002CFE04()
{

  return swift_deallocObject();
}

uint64_t sub_1002CFE3C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t *UIView.Border.artwork.unsafeMutableAddressor()
{
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  return &static UIView.Border.artwork;
}

id closure #1 in variable initialization expression of static UIView.Border.artwork(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  v3 = 0.0;
  if (v1 == 2)
  {
    v3 = 1.0;
  }

  return [v2 initWithWhite:v3 alpha:0.1];
}

uint64_t static UIView.Border.artwork.getter()
{
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v0 = static UIView.Border.artwork;
  v1 = qword_10063EF70;
  return v0;
}

void one-time initialization function for isVision()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  static UIView.Corner.isVision = v1 == 6;
}

{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  static Corner.isVision = v1 == 6;
}

{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  static Collaboration.Management.View.Specs.isVision = v1 == 6;
}

{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  static Collaboration.Flow.Specs.isVision = v1 == 6;
}

uint64_t one-time initialization function for extraSmall()
{
  v0 = type metadata accessor for UIView.Corner();
  __swift_allocate_value_buffer(v0, static UIView.Corner.extraSmall);
  __swift_project_value_buffer(v0, static UIView.Corner.extraSmall);
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 0x4008000000000000;
  if (static Corner.isVision)
  {
    v0 = 0x4018000000000000;
  }

  static Corner.extraSmall = v0;
  unk_10063F040 = -1;
  byte_10063F048 = 0;
  return result;
}

uint64_t one-time initialization function for small()
{
  v0 = type metadata accessor for UIView.Corner();
  __swift_allocate_value_buffer(v0, static UIView.Corner.small);
  __swift_project_value_buffer(v0, static UIView.Corner.small);
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 0x4014000000000000;
  if (static Corner.isVision)
  {
    v0 = 0x4020000000000000;
  }

  static Corner.small = v0;
  *algn_10063F058 = -1;
  byte_10063F060 = 0;
  return result;
}

uint64_t one-time initialization function for medium()
{
  v0 = type metadata accessor for UIView.Corner();
  __swift_allocate_value_buffer(v0, static UIView.Corner.medium);
  __swift_project_value_buffer(v0, static UIView.Corner.medium);
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 0x4020000000000000;
  if (static Corner.isVision)
  {
    v0 = 0x4024000000000000;
  }

  static Corner.medium = v0;
  unk_10063F070 = -1;
  byte_10063F078 = 0;
  return result;
}

uint64_t one-time initialization function for large()
{
  v0 = type metadata accessor for UIView.Corner();
  __swift_allocate_value_buffer(v0, static UIView.Corner.large);
  __swift_project_value_buffer(v0, static UIView.Corner.large);
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 0x4024000000000000;
  if (static Corner.isVision)
  {
    v0 = 0x4030000000000000;
  }

  static Corner.large = v0;
  *algn_10063F088 = -1;
  byte_10063F090 = 0;
  return result;
}

uint64_t one-time initialization function for extraLarge()
{
  v0 = type metadata accessor for UIView.Corner();
  __swift_allocate_value_buffer(v0, static UIView.Corner.extraLarge);
  __swift_project_value_buffer(v0, static UIView.Corner.extraLarge);
  if (one-time initialization token for isVision != -1)
  {
    swift_once();
  }

  return static UIView.Corner.value(_:continuous:)();
}

{
  if (one-time initialization token for isVision != -1)
  {
    result = swift_once();
  }

  v0 = 0x402C000000000000;
  if (static Corner.isVision)
  {
    v0 = 0x4038000000000000;
  }

  static Corner.extraLarge = v0;
  unk_10063F0A0 = -1;
  byte_10063F0A8 = 0;
  return result;
}

uint64_t UIView.Corner.medium.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for UIView.Corner();

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static UIView.Corner.extraSmall.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for UIView.Corner();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *HI.Color.prominentTextColor.unsafeMutableAddressor()
{
  if (one-time initialization token for prominentTextColor != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentTextColor;
}

id closure #1 in variable initialization expression of static HI.Color.prominentTextColor(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 userInterfaceStyle];
  type metadata accessor for UIColor();
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
  if (one-time initialization token for prominentBackgroundColor != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentBackgroundColor;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HI.SizeClass@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized HI.SizeClass.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

double protocol witness for RawRepresentable.rawValue.getter in conformance HI.SizeClass@<D0>(double *a1@<X8>)
{
  result = dbl_10050A8C0[*v1];
  *a1 = result;
  return result;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_10050A880[a2]);
  return Hasher._finalize()();
}

double HI.SizeClass.columnCount(for:swiping:)(char a1, char a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 != 2)
      {
        return dbl_10050A840[a1];
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
      return dbl_10050A820[a1];
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
      return dbl_10050A860[a1];
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

    v18 = round(HI.SizeClass.columnCount(for:swiping:)(a1, a2 & 1, v13) * (1.0 / (v17 * 0.7)));
  }

  else
  {
    v18 = HI.SizeClass.columnCount(for:swiping:)(a1, a2 & 1, v13);
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
  Hasher._combine(_:)(qword_10050A880[*(v0 + 24)]);
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HI.Grid.Metrics(uint64_t a1)
{
  Hasher.init(_seed:)();
  HI.Grid.Metrics.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HI.Grid.Metrics(_OWORD *a1, _OWORD *a2)
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
  return specialized static HI.Grid.Metrics.__derived_struct_equals(_:_:)(v5, v7) & 1;
}

uint64_t *HI.BottomPlayer.Ornament.overlappingHeight.unsafeMutableAddressor()
{
  if (one-time initialization token for overlappingHeight != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.overlappingHeight;
}

double one-time initialization function for offset()
{
  if (one-time initialization token for overlappingHeight != -1)
  {
    swift_once();
  }

  result = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  static HI.BottomPlayer.Ornament.offset = 0;
  *&qword_10063F010 = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  return result;
}

uint64_t *HI.BottomPlayer.Ornament.offset.unsafeMutableAddressor()
{
  if (one-time initialization token for offset != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.Ornament.offset.getter()
{
  if (one-time initialization token for offset != -1)
  {
    swift_once();
  }

  return *&static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.size(dynamicTypeSize:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeOSgMd, &_s7SwiftUI15DynamicTypeSizeOSgMR);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v14 - v8;
  outlined init with copy of DynamicTypeSize?(a1, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of DynamicTypeSize?(v3);
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    (*(v5 + 104))(v7, enum case for DynamicTypeSize.accessibility1(_:), v4);
    lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize();
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
  if (one-time initialization token for buttonSpacing != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.buttonSpacing;
}

uint64_t *HI.BottomPlayer.contentHorizontalPadding.unsafeMutableAddressor()
{
  if (one-time initialization token for contentHorizontalPadding != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.contentHorizontalPadding;
}

double static HI.BottomPlayer.Ornament.overlappingHeight.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t specialized static HI.Grid.Metrics.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t specialized HI.SizeClass.init(_:)(double a1)
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

uint64_t specialized HI.SizeClass.init(rawValue:)(double a1)
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

uint64_t outlined init with copy of DynamicTypeSize?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeOSgMd, &_s7SwiftUI15DynamicTypeSizeOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DynamicTypeSize?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeOSgMd, &_s7SwiftUI15DynamicTypeSizeOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DynamicTypeSize and conformance DynamicTypeSize()
{
  result = lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize;
  if (!lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HI.SizeClass and conformance HI.SizeClass()
{
  result = lazy protocol witness table cache variable for type HI.SizeClass and conformance HI.SizeClass;
  if (!lazy protocol witness table cache variable for type HI.SizeClass and conformance HI.SizeClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HI.SizeClass and conformance HI.SizeClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HI.Grid.Variant and conformance HI.Grid.Variant()
{
  result = lazy protocol witness table cache variable for type HI.Grid.Variant and conformance HI.Grid.Variant;
  if (!lazy protocol witness table cache variable for type HI.Grid.Variant and conformance HI.Grid.Variant)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HI.Grid.Variant and conformance HI.Grid.Variant);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HI.Grid.Metrics and conformance HI.Grid.Metrics()
{
  result = lazy protocol witness table cache variable for type HI.Grid.Metrics and conformance HI.Grid.Metrics;
  if (!lazy protocol witness table cache variable for type HI.Grid.Metrics and conformance HI.Grid.Metrics)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HI.Grid.Metrics and conformance HI.Grid.Metrics);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for HI.Grid.Metrics(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HI.Grid.Metrics(uint64_t result, unsigned int a2, unsigned int a3)
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

double HI.Modal.ModalType.preferredModalSize(forSceneSize:)(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
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
  v8 = HI.Modal.ModalType.preferredModalSize(forSceneSize:)(a2, a3, a4 & 1, a1);
  v9 = [objc_opt_self() currentTraitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 6 && (a4 & 1) == 0 && (a5 & 1) == 0)
  {
    v11 = *&a2;
    if (one-time initialization token for padding != -1)
    {
      swift_once();
      v11 = *&a2;
    }

    if (v8 + *&static HI.Modal.padding + *&static HI.Modal.padding > v11)
    {
      return v11 - (*&static HI.Modal.padding + *&static HI.Modal.padding);
    }
  }

  return v8;
}

unint64_t lazy protocol witness table accessor for type HI.Modal.ModalType and conformance HI.Modal.ModalType()
{
  result = lazy protocol witness table cache variable for type HI.Modal.ModalType and conformance HI.Modal.ModalType;
  if (!lazy protocol witness table cache variable for type HI.Modal.ModalType and conformance HI.Modal.ModalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HI.Modal.ModalType and conformance HI.Modal.ModalType);
  }

  return result;
}

uint64_t Song.loggingInfo.getter()
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

  v6._object = 0x80000001004D1060;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  Song.catalogID.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6ItemIDVSgMd, &_s8MusicKit0A6ItemIDVSgMR);
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

  return _swift_task_switch(LyricsLoader.loadLyrics(for:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 824) = v1;

  if (v1)
  {
    v5 = LyricsLoader.loadLyrics(for:);
  }

  else
  {
    *(v4 + 832) = a1;
    v5 = LyricsLoader.loadLyrics(for:);
  }

  return _swift_task_switch(v5, 0, 0);
}

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
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v20, v21, v66);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2082;
    v1[63] = v14;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0, &_ss5Error_pMR_0);
    v23 = String.init<A>(describing:)();
    v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v23, v24, v66);

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
    v30 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v27, v28, v66);

    *(v19 + 24) = v30;
    *(v19 + 32) = 2082;
    v1[55] = Song.customLyrics.getter();
    v1[56] = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0, &_sSSSgMR_0);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    v29(v57, v17);
    v35 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v32, v34, v66);

    *(v19 + 34) = v35;
    *(v19 + 42) = 2082;
    v36 = Song.loggingInfo.getter();
    v38 = v37;
    v29(v58, v17);
    v39 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v36, v38, v66);

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
  lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
  swift_allocError();
  *v54 = 0;
  swift_willThrow();

  outlined consume of Data?(v51, v50);
  v29(v52, v53);

  v55 = v1[1];

  return v55();
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for Song();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(LyricsLoader.loadLyrics(for:), 0, 0);
}

uint64_t LyricsLoader.loadLyrics(for:)()
{
  v40 = v0;
  if (Song.hasLyrics.getter() & 1) != 0 || (Song.hasCustomLyrics.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
    v1 = swift_allocObject();
    v0[89] = v1;
    *(v1 + 16) = xmmword_1004F2F10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA4SongVGMd_0, &_s8MusicKit07PartialA13AsyncPropertyCyAA4SongVGMR_0);
    *(v1 + 32) = static PartialMusicProperty<A>.customLyrics.getter();
    v2 = swift_task_alloc();
    v0[90] = v2;
    v3 = lazy protocol witness table accessor for type Song and conformance Song();
    *v2 = v0;
    v2[1] = LyricsLoader.loadLyrics(for:);
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
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

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
      v27 = String.init<A>(describing:)();
      v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v27, v28, v39);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      v30 = Song.loggingInfo.getter();
      v32 = v31;
      (*(v20 + 8))(v19, v21);
      v33 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v30, v32, v39);

      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v16, v17, "Loader<%{public}s> loadLyrics(for:completion:) returned without loading lyrics [hasLyrics and hasCustomLyrics were false] %{public}s", v26, 0x16u);
      swift_arrayDestroy();

      (*(v23 + 8))(v38, v37);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      (*(v23 + 8))(v22, v24);
    }

    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();

    v35 = v0[1];

    return v35();
  }
}

{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = LyricsLoader.loadLyrics(for:);
  }

  else
  {

    v2 = LyricsLoader.loadLyrics(for:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v140 = v0;
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

      if (v8 && *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1 && (v9 = String.trim()(), v10 = specialized Sequence<>.starts<A>(with:)(544502844, 0xE400000000000000, v9._countAndFlagsBits, v9._object), , (v10 & 1) != 0) && (v11 = *(v0 + 616), v12 = *(v0 + 608), v13 = *(v0 + 600), static String.Encoding.utf8.getter(), v14 = String.data(using:allowLossyConversion:)(), v16 = v15, *(v0 + 736) = v14, *(v0 + 744) = v15, (*(v12 + 8))(v11, v13), v16 >> 60 != 15))
      {

        v116 = objc_allocWithZone(MSVLyricsTTMLParser);
        outlined copy of Data._Representation(v14, v16);
        isa = Data._bridgeToObjectiveC()().super.isa;
        v118 = [v116 initWithTTMLData:isa];
        *(v0 + 752) = v118;

        outlined consume of Data?(v14, v16);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 488;
        *(v0 + 24) = LyricsLoader.loadLyrics(for:);
        v119 = swift_continuation_init();
        *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo17MSVLyricsSongInfoCs5Error_pGMd, &_sSccySo17MSVLyricsSongInfoCs5Error_pGMR);
        *(v0 + 336) = _NSConcreteStackBlock;
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MSVLyricsSongInfo?, @unowned NSError?) -> () with result type MSVLyricsSongInfo;
        *(v0 + 360) = &block_descriptor_55;
        *(v0 + 368) = v119;
        [v118 parseWithCompletion:v0 + 336];

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
    v133 = *(v0 + 680);
    v137 = *(v0 + 520);
    v62 = *(v0 + 512);
    v63 = Logger.lyrics.unsafeMutableAddressor();
    (*(v60 + 16))(v59, v63, v61);
    v64 = *(v57 + 16);
    v64(v55, v62, v58);
    v64(v56, v54, v58);
    v64(v133, v62, v58);
    v65 = v137;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 696);
    v70 = *(v0 + 688);
    v138 = *(v0 + 680);
    v71 = *(v0 + 632);
    v72 = *(v0 + 624);
    v73 = *(v0 + 592);
    v74 = *(v0 + 560);
    v75 = *(v0 + 552);
    if (v68)
    {
      v134 = *(v0 + 592);
      v76 = *(v0 + 520);
      v132 = *(v0 + 552);
      v77 = swift_slowAlloc();
      v139[0] = swift_slowAlloc();
      *v77 = 136446978;
      *(v0 + 464) = v76;
      v78 = String.init<A>(describing:)();
      v128 = v67;
      v80 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v78, v79, v139);

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
      v85 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v82, v83, v139);

      *(v77 + 14) = v85;
      *(v77 + 22) = 2082;
      *(v0 + 424) = Song.customLyrics.getter();
      *(v0 + 432) = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0, &_sSSSgMR_0);
      v87 = String.init<A>(describing:)();
      v89 = v88;
      v84(v70, v72);
      v90 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v87, v89, v139);

      *(v77 + 24) = v90;
      *(v77 + 32) = 2082;
      v91 = Song.loggingInfo.getter();
      v93 = v92;
      v84(v138, v72);
      v94 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v91, v93, v139);

      *(v77 + 34) = v94;
      _os_log_impl(&_mh_execute_header, loga, v128, "Loader<%{public}s> loadLyrics(for:completion:) didn't load lyrics [no lyrics found] song.hasLyrics=false song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v77, 0x2Au);
      swift_arrayDestroy();

      (*(v74 + 8))(v134, v132);
    }

    else
    {

      v84 = *(v71 + 8);
      v84(v138, v72);
      v84(v70, v72);
      v84(v69, v72);
      (*(v74 + 8))(v73, v75);
    }

    v109 = *(v0 + 704);
    v110 = *(v0 + 624);
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
    swift_allocError();
    *v111 = 1;
    swift_willThrow();
    v84(v109, v110);
    goto LABEL_36;
  }

  static ApplicationCapabilities.shared.getter((v0 + 208));
  outlined destroy of ApplicationCapabilities(v0 + 208);
  if ((*(v0 + 218) & 1) == 0)
  {
    v19 = *(v0 + 672);
    v20 = *(v0 + 632);
    v21 = *(v0 + 624);
    v22 = *(v0 + 584);
    v23 = *(v0 + 560);
    v24 = *(v0 + 552);
    v135 = *(v0 + 520);
    v25 = *(v0 + 512);
    v26 = [objc_opt_self() sharedController];
    v27 = [v26 musicSubscriptionStatus];

    static ApplicationCapabilities.shared.getter((v0 + 80));
    outlined destroy of ApplicationCapabilities(v0 + 80);
    v131 = *(v0 + 88);
    v28 = Logger.lyrics.unsafeMutableAddressor();
    (*(v23 + 16))(v22, v28, v24);
    (*(v20 + 16))(v19, v25, v21);
    v29 = v135;
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
      v130 = v32;
      v40 = *(v0 + 520);
      log = *(v0 + 624);
      v41 = swift_slowAlloc();
      v139[0] = swift_slowAlloc();
      *v41 = 136446978;
      *(v0 + 472) = v40;
      v42 = String.init<A>(describing:)();
      v136 = v37;
      v129 = v39;
      v44 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v42, v43, v139);

      *(v41 + 4) = v44;
      *(v41 + 12) = 2082;
      *(v0 + 480) = v30;
      v45 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25ICMusicSubscriptionStatusCSgMd_0, &_sSo25ICMusicSubscriptionStatusCSgMR_0);
      v46 = String.init<A>(describing:)();
      v48 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v46, v47, v139);

      *(v41 + 14) = v48;
      *(v41 + 22) = 1026;
      *(v41 + 24) = WORD1(v131) & 1;
      *(v41 + 28) = 2082;
      v49 = Song.loggingInfo.getter();
      v51 = v50;
      v52 = *(v35 + 8);
      v52(v34, log);
      v53 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v49, v51, v139);

      *(v41 + 30) = v53;
      _os_log_impl(&_mh_execute_header, v31, v130, "Loader<%{public}s> loadLyrics(for:completion:) didn't load store lyrics [not supported by subscription] subscriptionStatus=%{public}s subscriptionStatus.capabilities.contains(.catalogLyricsViewing)=%{BOOL,public}d %{public}s", v41, 0x26u);
      swift_arrayDestroy();

      (*(v38 + 8))(v136, v129);
    }

    else
    {

      v52 = *(v35 + 8);
      v52(v34, v36);
      (*(v38 + 8))(v37, v39);
    }

    v112 = *(v0 + 704);
    v113 = *(v0 + 624);
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
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

  v139[0] = 0xD000000000000017;
  v139[1] = 0x80000001004D0F80;
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
    v107[1] = LyricsLoader.loadLyrics(for:);
    v108 = *(v0 + 512);

    return LyricsLoader.fetchStoreLyrics(for:)(v108);
  }

  v120 = v102;
  v121 = v103;
  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  v122 = *LyricsOptionsManager.shared.unsafeMutableAddressor();

  BagProvider.shared.unsafeMutableAddressor();

  v123 = BagProvider.bag.getter();

  (*(*v122 + 120))(v123);

  v124 = swift_task_alloc();
  *(v0 + 792) = v124;
  v124[2] = v120;
  v124[3] = v121;
  v124[4] = v97;
  v124[5] = v98;
  v125 = swift_task_alloc();
  *(v0 + 800) = v125;
  *v125 = v0;
  v125[1] = LyricsLoader.loadLyrics(for:);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 400, 0, 0, 0xD000000000000010, 0x80000001004D0FA0, partial apply for closure #1 in LyricsLoader.loadLyrics(for:), v124, &type metadata for LyricsLoader.Result);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 760) = v1;
  if (v1)
  {
    v2 = LyricsLoader.loadLyrics(for:);
  }

  else
  {
    v2 = LyricsLoader.loadLyrics(for:);
  }

  return _swift_task_switch(v2, 0, 0);
}

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

  outlined consume of Data?(v3, v2);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(v10, 0, 1);
}

{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = LyricsLoader.loadLyrics(for:);
  }

  else
  {
    v2 = LyricsLoader.loadLyrics(for:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 704);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  outlined consume of Data._Representation(*(v0 + 776), *(v0 + 784));
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 408);
  v8 = *(v0 + 400);
  v6 = *(v0 + 416);

  v4 = *(v0 + 8);

  return v4(v8, v7, v6);
}

{
  v3 = v0[104];
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1(v3, 0, 1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  outlined consume of Data._Representation(v0[97], v0[98]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 32), &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
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
    v8[1] = LyricsLoader.loadLyrics(for:);
    v9 = *(v0 + 56);

    return LyricsLoader.loadLyrics(for:)(v9);
  }
}

{
  v1 = *(v0 + 96);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v2 = *(v0 + 8);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2(v3, v4, v1 & 1);
}

{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t specialized Sequence<>.starts<A>(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MSVLyricsSongInfo?, @unowned NSError?) -> () with result type MSVLyricsSongInfo(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0, &_ss5Error_pMR_0);
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

void closure #1 in LyricsLoader.loadLyrics(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMd, &_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMR);
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
  aBlock[4] = partial apply for closure #1 in closure #1 in LyricsLoader.loadLyrics(for:);
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed ICURLResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_17_2;
  v19 = _Block_copy(aBlock);

  [v15 parseWithCompletion:v19];
  _Block_release(v19);
}

void closure #1 in closure #1 in LyricsLoader.loadLyrics(for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for Lyrics(0);
    swift_allocObject();
    v8 = a1;

    Lyrics.init(identifier:songInfo:)(a4, a5, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMd, &_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
      swift_allocError();
      *v9 = 3;
    }

    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMd, &_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }
}

uint64_t LyricsLoader.loadLyrics(for:)(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = LyricsLoader.loadLyrics(for:);
  }

  else
  {
    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = LyricsLoader.loadLyrics(for:);
  }

  return _swift_task_switch(v9, 0, 0);
}

id static LyricsLoader.requiredProperties()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd_0, &_ss23_ContiguousArrayStorageCySSGMR_0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2EE0;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v3;
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd_0, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EB0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004F2400;
  *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 40) = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = objc_opt_self();
  v11 = [v10 propertySetWithProperties:isa];

  *(inited + 48) = v11;
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1004F2EE0;
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
  *(v21 + 16) = xmmword_1004F2400;
  *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v21 + 40) = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1004F2400;
  *(v23 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1004F2400;
  *(v25 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v25 + 40) = v26;
  v27 = Array._bridgeToObjectiveC()().super.isa;

  v28 = [v10 propertySetWithProperties:v27];

  *(v23 + 48) = v28;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n_0(v23);
  swift_setDeallocating();
  outlined destroy of TaskPriority?(v23 + 32, &_sSS_So13MPPropertySetCtMd_0, &_sSS_So13MPPropertySetCtMR_0);
  v29 = objc_allocWithZone(MPPropertySet);
  v30 = Array._bridgeToObjectiveC()().super.isa;

  _sSo13MPPropertySetCMa_0();
  v31 = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = [v29 initWithProperties:v30 relationships:v31];

  *(inited + 96) = v32;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd_0, &_sSS_So13MPPropertySetCtMR_0);
  swift_arrayDestroy();
  v33 = objc_allocWithZone(MPPropertySet);
  v34 = Array._bridgeToObjectiveC()().super.isa;

  v35 = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = [v33 initWithProperties:v34 relationships:v35];

  return v36;
}

uint64_t LyricsLoader.fetchStoreLyrics(for:)(uint64_t a1)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6ScriptVSgMd, &_s10Foundation6LocaleV6ScriptVSgMR);
  v2[111] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6RegionVSgMd, &_s10Foundation6LocaleV6RegionVSgMR);
  v2[112] = swift_task_alloc();
  v10 = type metadata accessor for Locale.Language();
  v2[113] = v10;
  v2[114] = *(v10 - 8);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v11 = type metadata accessor for Locale();
  v2[123] = v11;
  v2[124] = *(v11 - 8);
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd_0, &_s10Foundation6LocaleVSgMR_0);
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
  v2[130] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v2[131] = v12;
  v2[132] = *(v12 - 8);
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();

  return _swift_task_switch(LyricsLoader.fetchStoreLyrics(for:), 0, 0);
}

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
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
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
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
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
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
    swift_allocError();
    *v85 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [v7 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v13 || (v14 = v13, v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v14, specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v15), v17 = v16, , !v17))
  {
LABEL_22:

    goto LABEL_23;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v17 + 16))
  {

    goto LABEL_31;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_31:

    v2 = v263;
    goto LABEL_24;
  }

  v2 = v263;
  v23 = v263 + 75;
  outlined init with copy of AnyHashable(*(v17 + 56) + 40 * v20, (v263 + 23));

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSs11AnyHashableVGMd, &_sSDySSs11AnyHashableVGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v24 = *v23;
  if (!*(*v23 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(0x746C7561666564, 0xE700000000000000), (v26 & 1) == 0))
  {

    goto LABEL_23;
  }

  outlined init with copy of AnyHashable(*(v24 + 56) + 40 * v25, (v263 + 18));

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

  v37._object = 0x80000001004D1020;
  v37._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v37);
  URL.init(string:)();
  if ((*(v258 + 48))(v256, 1, v260) == 1)
  {
    v38 = v263[130];
    v39 = v263[93];
    v40 = v263[87];
    v41 = v263[86];

    outlined destroy of TaskPriority?(v38, &_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
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
      v52 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(0x2F2F3A7370747468, 0xE800000000000000, &v264);

      *(v50 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v43, v44, "fetchStoreLyrics: Couldn't build URL: %{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v51);

      (*(v47 + 8))(v49, v48);
    }

    else
    {

      (*(v47 + 8))(v46, v48);
    }

    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
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
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _swiftEmptyArrayStorage;
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
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _swiftEmptyArrayStorage;
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
      outlined init with copy of Locale?(v107, v108);
      if ((*v251)(v108, 1, v109) == 1)
      {
        v110 = v2[129];
        v111 = v2[128];
        v112 = v2[126];
        v113 = v2[123];
        outlined destroy of TaskPriority?(v110, &_s10Foundation6LocaleVSgMd_0, &_s10Foundation6LocaleVSgMR_0);
        outlined destroy of TaskPriority?(v111, &_s10Foundation6LocaleVSgMd_0, &_s10Foundation6LocaleVSgMR_0);
        (*v246)(v110, v112, v113);
        v247(v110, 0, 1, v113);
      }

      else
      {
        outlined destroy of TaskPriority?(v2[128], &_s10Foundation6LocaleVSgMd_0, &_s10Foundation6LocaleVSgMR_0);
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
        outlined destroy of TaskPriority?(v2[122], &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
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
        _sS2SSysWl_0();
        LOBYTE(v119) = StringProtocol.contains<A>(_:)();

        if (v119)
        {

          v126 = Locale.identifier.getter();
          v128 = v127;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0);
          }

          v130 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 + 2);
          v129 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 + 3);
          if (v130 >= v129 >> 1)
          {
            New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0((v129 > 1), v130 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0);
          }

          *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 + 2) = v130 + 1;
          v131 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0[16 * v130];
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
            outlined destroy of TaskPriority?(v138, &_s10Foundation6LocaleV6RegionVSgMd, &_s10Foundation6LocaleV6RegionVSgMR);
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
            New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0);
          }

          v148 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 + 2);
          v147 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 + 3);
          if (v148 >= v147 >> 1)
          {
            New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0((v147 > 1), v148 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0);
          }

          *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0 + 2) = v148 + 1;
          v149 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0[16 * v148];
          *(v149 + 4) = v145;
          *(v149 + 5) = v146;
        }
      }

      *(v2 + 1194) = 6;
      v150 = _s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWl_0();
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
      outlined destroy of TaskPriority?(v104, &_s10Foundation6LocaleV6ScriptVSgMd, &_s10Foundation6LocaleV6ScriptVSgMR);
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

      outlined destroy of TaskPriority?(v162, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
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
      v170 = specialized __RawDictionaryStorage.find<A>(_:)(v243, v245);
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
      v242 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(0, *(v242 + 2) + 1, 1, v242);
    }

    v178 = *(v242 + 2);
    v177 = *(v242 + 3);
    if (v178 >= v177 >> 1)
    {
      v242 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0((v177 > 1), v178 + 1, 1, v242);
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

  outlined init with copy of Locale?(v185, v186);
  if ((*(v187 + 48))(v186, 1, v188) == 1)
  {
    outlined destroy of TaskPriority?(v2[127], &_s10Foundation6LocaleVSgMd_0, &_s10Foundation6LocaleVSgMR_0);
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
        outlined destroy of TaskPriority?(v200, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
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
          v242 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0(0, *(v242 + 2) + 1, 1, v242);
        }

        v238 = *(v242 + 2);
        v237 = *(v242 + 3);
        if (v238 >= v237 >> 1)
        {
          v242 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0((v237 > 1), v238 + 1, 1, v242);
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

  v2[72] = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_0, &_sSaySSGMR_0);
  _sSaySSGSayxGSKsWl_0();
  BidirectionalCollection<>.joined(separator:)();

  URLQueryItem.init(name:value:)();

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0(0, 1, 1, _swiftEmptyArrayStorage);
  v203 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 2);
  v202 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 3);
  if (v203 >= v202 >> 1)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0((v202 > 1), v203 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0);
  }

  v204 = v2[110];
  v205 = v2[107];
  v206 = v2[106];
  *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 2) = v203 + 1;
  v208 = *(v205 + 32);
  v205 += 32;
  v207 = v208;
  v209 = (*(v205 + 48) + 32) & ~*(v205 + 48);
  v210 = *(v205 + 40);
  v208(&New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0[v209 + v210 * v203], v204, v206);
  *(v2 + 1193) = 6;
  v211 = _s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWl_0();
  v2[136] = v211;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v211))
  {
    v2[76] = v242;
    BidirectionalCollection<>.joined(separator:)();

    URLQueryItem.init(name:value:)();

    v213 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 2);
    v212 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 3);
    if (v213 >= v212 >> 1)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0((v212 > 1), v213 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0);
    }

    v214 = v2[109];
    v215 = v2[106];
    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 2) = v213 + 1;
    v207(&New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0[v209 + v213 * v210], v214, v215);
    URLQueryItem.init(name:value:)();
    v217 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 2);
    v216 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 3);
    if (v217 >= v216 >> 1)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0((v216 > 1), v217 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0);
    }

    v218 = v2[108];
    v219 = v2[106];
    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0 + 2) = v217 + 1;
    v207(&New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_0[v209 + v217 * v210], v218, v219);
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
  v224[1] = LyricsLoader.fetchStoreLyrics(for:);
  v225 = v2[98];

  return MusicDataRequest.response()(v225);
}

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
    outlined destroy of TaskPriority?(v9, &_sSo8NSObjectCSgMd_1, &_sSo8NSObjectCSgMR_1);
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
  outlined destroy of TaskPriority?(v25, &_s10Foundation6LocaleVSgMd_0, &_s10Foundation6LocaleVSgMR_0);
  (*(v12 + 8))(v27, v26);

  v21 = v1[1];

  return v21();
}

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
    outlined destroy of TaskPriority?(v9, &_sSo8NSObjectCSgMd_1, &_sSo8NSObjectCSgMR_1);
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

  outlined consume of Data?(v13, v12);
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
    outlined destroy of TaskPriority?(v25, &_sSo8NSObjectCSgMd_1, &_sSo8NSObjectCSgMR_1);
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
  outlined destroy of TaskPriority?(v41, &_s10Foundation6LocaleVSgMd_0, &_s10Foundation6LocaleVSgMR_0);
  (*(v28 + 8))(v44, v42);

  v37 = v1[1];

  return v37();
}

uint64_t LyricsLoader.fetchStoreLyrics(for:)()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = LyricsLoader.fetchStoreLyrics(for:);
  }

  else
  {
    v2 = LyricsLoader.fetchStoreLyrics(for:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v123 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v121 = 0x3C726564616F4CLL;
  v122 = 0xE700000000000000;
  *(v0 + 560) = v6;
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v10 = v122;
  v109 = v121;
  v11 = Logger.lyrics.unsafeMutableAddressor();
  *(v0 + 1112) = v11;
  v12 = *(v2 + 16);
  *(v0 + 1120) = v12;
  *(v0 + 1128) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v114 = v11;
  v112 = v12;
  v12(v1);
  (*(v4 + 16))(v3, v7, v5);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 760);
  v17 = *(v0 + 696);
  v117 = *(v0 + 688);
  v18 = *(v0 + 680);
  v19 = *(v0 + 672);
  v20 = *(v0 + 664);
  if (v15)
  {
    v107 = *(v0 + 760);
    v21 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *v21 = 136446466;
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v109, v10, &v121);

    *(v21 + 4) = v22;
    *(v21 + 12) = 2082;
    v23 = Song.loggingInfo.getter();
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v23, v25, &v121);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s loadLyrics(for:completion:) completed for %{public}s", v21, 0x16u);
    swift_arrayDestroy();

    v27 = *(v17 + 8);
    v27(v107, v117);
  }

  else
  {

    (*(v19 + 8))(v18, v20);
    v27 = *(v17 + 8);
    v27(v16, v117);
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
    v31 = 0x80000001004D1040;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  v32 = objc_opt_self();
  v33 = MusicDataResponse.data.getter();
  v35 = v34;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v33, v35);
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
      outlined destroy of TaskPriority?(v82, &_sSo8NSObjectCSgMd_1, &_sSo8NSObjectCSgMR_1);
    }

    v108 = *(v0 + 1080);
    v84 = *(v0 + 1056);
    v116 = *(v0 + 1048);
    v120 = *(v0 + 1072);
    v113 = *(v0 + 840);
    v115 = *(v0 + 1032);
    v85 = *(v0 + 824);
    v111 = *(v0 + 816);
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
    (*(v85 + 8))(v113, v111);
    outlined destroy of TaskPriority?(v115, &_s10Foundation6LocaleVSgMd_0, &_s10Foundation6LocaleVSgMR_0);
    (*(v84 + 8))(v120, v116);

    v93 = *(v0 + 8);

    return v93();
  }

  v39 = v38;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd_1, &_sSDySSypGMR_1);
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

  v41 = specialized __RawDictionaryStorage.find<A>(_:)(1635017060, 0xE400000000000000);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

  v43 = v0 + 616;
  outlined init with copy of Any(*(v40 + 56) + 32 * v41, v0 + 384);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd_0, &_sSayypGMR_0);
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

  outlined init with copy of Any(*v43 + 32, v0 + 224);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v44 = *(v0 + 552);
  if (!*(v44 + 16))
  {
    goto LABEL_44;
  }

  v45 = specialized __RawDictionaryStorage.find<A>(_:)(0x7475626972747461, 0xEA00000000007365);
  if ((v46 & 1) == 0)
  {
    goto LABEL_44;
  }

  v47 = (v0 + 568);
  outlined init with copy of Any(*(v44 + 56) + 32 * v45, v0 + 352);

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

  v49 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v31);
  v51 = v50;

  if ((v51 & 1) == 0)
  {
    goto LABEL_32;
  }

  outlined init with copy of Any(*(v48 + 56) + 32 * v49, v0 + 320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v118 = v27;
  v52 = *(v0 + 656);
  v53 = *(v0 + 648);
  v110 = *(v0 + 640);
  static String.Encoding.utf8.getter();
  v54 = String.data(using:allowLossyConversion:)();
  v56 = v55;

  *(v0 + 1144) = v54;
  *(v0 + 1152) = v56;
  (*(v53 + 8))(v52, v110);
  if (v56 >> 60 == 15)
  {
LABEL_27:

LABEL_28:
    v27 = v118;
LABEL_33:
    v112(*(v0 + 752), v114, *(v0 + 688));

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();

    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 752);
    v65 = *(v0 + 688);
    if (v63)
    {
      v66 = swift_slowAlloc();
      v119 = v27;
      v67 = swift_slowAlloc();
      v121 = v67;
      *v66 = 136446210;
      *(v0 + 544) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
      v68 = String.init<A>(describing:)();
      v70 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v68, v69, &v121);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v61, v62, "Invalid response: %{public}s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v67);

      v119(v64, v65);
    }

    else
    {

      v27(v64, v65);
    }

    v71 = *(v0 + 784);
    v72 = *(v0 + 776);
    v73 = *(v0 + 768);
    lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError();
    swift_allocError();
    *v74 = 1;
    swift_willThrow();
    (*(v72 + 8))(v71, v73);
    goto LABEL_37;
  }

  v27 = v118;
  if (!*(v48 + 16) || (v95 = specialized __RawDictionaryStorage.find<A>(_:)(0x6172615079616C70, 0xEA0000000000736DLL), (v96 & 1) == 0))
  {
    outlined consume of Data?(v54, v56);
    goto LABEL_32;
  }

  v97 = v56;
  v98 = (v0 + 584);
  outlined init with copy of Any(*(v48 + 56) + 32 * v95, v0 + 288);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_56;
  }

  v99 = *v98;
  if (!*(*v98 + 16) || (v100 = specialized __RawDictionaryStorage.find<A>(_:)(25705, 0xE200000000000000), (v101 & 1) == 0))
  {
    outlined consume of Data?(v54, v97);
    goto LABEL_27;
  }

  outlined init with copy of Any(*(v99 + 56) + 32 * v100, v0 + 256);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    outlined consume of Data?(v54, v97);
    goto LABEL_28;
  }

  v102 = *(v0 + 488);
  *(v0 + 1160) = *(v0 + 480);
  *(v0 + 1168) = v102;
  v103 = objc_allocWithZone(MSVLyricsTTMLParser);
  outlined copy of Data._Representation(v54, v97);
  v104 = Data._bridgeToObjectiveC()().super.isa;
  v105 = [v103 initWithTTMLData:v104];
  *(v0 + 1176) = v105;

  outlined consume of Data?(v54, v97);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 592;
  *(v0 + 24) = LyricsLoader.fetchStoreLyrics(for:);
  v106 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo17MSVLyricsSongInfoCs5Error_pGMd, &_sSccySo17MSVLyricsSongInfoCs5Error_pGMR);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MSVLyricsSongInfo?, @unowned NSError?) -> () with result type MSVLyricsSongInfo;
  *(v0 + 104) = &block_descriptor_21;
  *(v0 + 112) = v106;
  [v105 parseWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 1184) = v1;
  if (v1)
  {

    v2 = LyricsLoader.fetchStoreLyrics(for:);
  }

  else
  {
    v2 = LyricsLoader.fetchStoreLyrics(for:);
  }

  return _swift_task_switch(v2, 0, 0);
}

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

  outlined consume of Data?(v17, v19);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v13, v5);
  (*(v3 + 8))(v16, v15);
  outlined destroy of TaskPriority?(v21, &_s10Foundation6LocaleVSgMd_0, &_s10Foundation6LocaleVSgMR_0);
  (*(v2 + 8))(v23, v22);

  v11 = v0[1];

  return v11(v10);
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

uint64_t specialized static LyricsLoader.supportsLyrics(for:)(uint64_t a1)
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
      *&v188[0] = v67;
      *v66 = 136446210;
      v68 = Song.loggingInfo.getter();
      v69 = v62;
      v71 = v70;
      (v63[1])(v5, v69);
      v72 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v68, v71, v188);

      *(v66 + 4) = v72;
      _os_log_impl(&_mh_execute_header, v64, v65, "Loader supportsLyrics=false [hasLyrics and hasCustomLyrics were false] %{public}s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v67);

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
          *&v188[0] = v178;
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
          v89 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v85, v87, v188);

          *(v83 + 4) = v89;
          *(v83 + 12) = 2082;
          v90 = Song.loggingInfo.getter();
          v92 = v91;
          v88(v79, v86);
          v93 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v90, v92, v188);

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
          *&v188[0] = v177;
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
          v158 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v154, v156, v188);

          *(v152 + 4) = v158;
          *(v152 + 12) = 2082;
          v159 = Song.loggingInfo.getter();
          v161 = v160;
          v157(v155, v75);
          v162 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v159, v161, v188);

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
      *&v188[0] = v175;
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
      v51 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v47, v48, v188);
      v35 = v181;

      *(v45 + 4) = v51;
      *(v45 + 12) = 2082;
      v52 = Song.loggingInfo.getter();
      v54 = v53;
      v50(v12, v49);
      v55 = v183;
      v34 = v184;
      v56 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v52, v54, v188);

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
  if (v98 & 1) != 0 && (static ApplicationCapabilities.shared.getter(v186), v101 = v187, , outlined destroy of ApplicationCapabilities(v186), v102 = specialized Set.contains(_:)(2u, v101), , (v102))
  {
    static ApplicationCapabilities.shared.getter(v188);
    outlined destroy of ApplicationCapabilities(v188);
    if (BYTE10(v188[0]))
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
      v116 = Song.loggingInfo.getter();
      v117 = v110;
      v118 = v184;
      v120 = v119;
      v115(v117, v36);
      v121 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v116, v120, &v185);

      *(v113 + 10) = v121;
      _os_log_impl(&_mh_execute_header, v111, v112, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false %{public}s", v113, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v181);

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
      static ApplicationCapabilities.shared.getter(v188);
      v135 = v189;

      outlined destroy of ApplicationCapabilities(v188);
      v136 = specialized Set.contains(_:)(2u, v135);

      *(v129 + 16) = v136 & 1;
      *(v129 + 20) = 2082;
      v137 = v178;
      v138 = Song.loggingInfo.getter();
      v140 = v139;
      v131(v137, v36);
      v141 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v138, v140, &v185);

      *(v129 + 22) = v141;
      _os_log_impl(&_mh_execute_header, v127, v176, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] song.hasLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d %{public}s", v129, 0x1Eu);
      __swift_destroy_boxed_opaque_existential_0Tm(v181);

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

unint64_t lazy protocol witness table accessor for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError()
{
  result = lazy protocol witness table cache variable for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError;
  if (!lazy protocol witness table cache variable for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError;
  if (!lazy protocol witness table cache variable for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LyricsLoader.LyricsError and conformance LyricsLoader.LyricsError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Song and conformance Song()
{
  result = _s8MusicKit4SongVACSeAAWL_0;
  if (!_s8MusicKit4SongVACSeAAWL_0)
  {
    type metadata accessor for Song();
    result = swift_getWitnessTable();
    atomic_store(result, &_s8MusicKit4SongVACSeAAWL_0);
  }

  return result;
}

uint64_t specialized static LyricsLoader.supportsLyrics(for:)(void *a1)
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
        *&v192[0] = v187;
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

        *&v194[0] = v42;
        *(&v194[0] + 1) = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0, &_sSSSgMR_0);
        v86 = String.init<A>(describing:)();
        v88 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v86, v87, v192);

        *(v39 + 16) = v88;
        *(v39 + 24) = 2082;
        v89 = [v35 identifiers];
        v90 = [v89 description];
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v91, v93, v192);

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
            *&v192[0] = v183;
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

            *&v194[0] = v83;
            *(&v194[0] + 1) = v85;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0, &_sSSSgMR_0);
            v152 = String.init<A>(describing:)();
            v154 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v152, v153, v192);

            *(v80 + 10) = v154;
            *(v80 + 18) = 2082;
            v155 = [v77 identifiers];
            v156 = [v155 description];
            v157 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v159 = v158;

            v160 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v157, v159, v192);

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
            *&v192[0] = v183;
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

            *&v194[0] = v104;
            *(&v194[0] + 1) = v106;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0, &_sSSSgMR_0);
            v161 = String.init<A>(describing:)();
            v163 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v161, v162, v192);

            *(v101 + 10) = v163;
            *(v101 + 18) = 2082;
            v164 = [v98 identifiers];
            v165 = [v164 description];
            v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v168 = v167;

            v169 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v166, v168, v192);

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
        *&v192[0] = v180;
        *v64 = 67240706;
        *(v64 + 4) = v184;
        v65 = v64;
        *(v64 + 8) = 2082;
        v66 = v61;
        v67 = [v61 title];
        v68 = &stru_1005F2000;
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

        *&v194[0] = v70;
        *(&v194[0] + 1) = v72;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0, &_sSSSgMR_0);
        v107 = String.init<A>(describing:)();
        v109 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v107, v108, v192);

        *(v65 + 10) = v109;
        *(v65 + 18) = 2082;
        v110 = [v66 identifiers];
        v111 = [v110 description];
        v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v114 = v113;

        v115 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v112, v114, v192);

        *(v65 + 20) = v115;
        v116 = v183;
        _os_log_impl(&_mh_execute_header, v183, v181, "Loader supportsLyrics=%{BOOL,public}d [bag is nil] song.title=%{public}s song.identifiers=%{public}s", v65, 0x1Cu);
        swift_arrayDestroy();

        v49 = v188;
        (*(v47 + 8))(v12, v188);
        v48 = v182;
LABEL_38:
        if ([v187 v68[152].attr] && (static ApplicationCapabilities.shared.getter(v192), v117 = v193, , outlined destroy of ApplicationCapabilities(v192), v118 = specialized Set.contains(_:)(2u, v117), , (v118 & 1) != 0))
        {
          static ApplicationCapabilities.shared.getter(v194);
          outlined destroy of ApplicationCapabilities(v194);
          if (BYTE10(v194[0]))
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
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0, &_sSSSgMR_0);
            v170 = String.init<A>(describing:)();
            v172 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v170, v171, &v191);

            *(v123 + 10) = v172;
            *(v123 + 18) = 2082;
            v173 = [v120 identifiers];
            v174 = [v173 description];
            v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v177 = v176;

            v178 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v175, v177, &v191);

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
            *(v135 + 10) = [v132 v68[152].attr];

            *(v135 + 14) = 1026;
            static ApplicationCapabilities.shared.getter(v194);
            v136 = v195;

            outlined destroy of ApplicationCapabilities(v194);
            v137 = specialized Set.contains(_:)(2u, v136);

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
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0, &_sSSSgMR_0);
            v143 = String.init<A>(describing:)();
            v145 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v143, v144, &v191);

            *(v135 + 22) = v145;
            *(v135 + 30) = 2082;
            v146 = [v131 identifiers];
            v147 = [v146 description];
            v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v150 = v149;

            v151 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v148, v150, &v191);

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

    v68 = &stru_1005F2000;
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
    *&v192[0] = swift_slowAlloc();
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

    *&v194[0] = v27;
    *(&v194[0] + 1) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0, &_sSSSgMR_0);
    v50 = String.init<A>(describing:)();
    v52 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v50, v51, v192);

    *(v24 + 4) = v52;
    *(v24 + 12) = 2082;
    v53 = [v21 identifiers];
    v54 = [v53 description];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v55, v57, v192);

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

unint64_t _sSo13MPPropertySetCMa_0()
{
  result = _sSo13MPPropertySetCML_0;
  if (!_sSo13MPPropertySetCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo13MPPropertySetCML_0);
  }

  return result;
}

__n128 __swift_memcpy17_8_0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LyricsLoader.Result(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LyricsLoader.Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002DC414()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMd, &_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMR);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in LyricsLoader.loadLyrics(for:)(void *a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMd, &_sScCy11MusicCoreUI12LyricsLoaderC6ResultOs5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  closure #1 in closure #1 in LyricsLoader.loadLyrics(for:)(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper_15_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with copy of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd_0, &_s10Foundation6LocaleVSgMR_0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t _s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWl_0()
{
  result = _s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWL_0;
  if (!_s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWL_0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_s14MusicUtilities7FeatureO0A0OAE0C5Flags0cD3KeyAAWL_0);
  }

  return result;
}

unint64_t _sSaySSGSayxGSKsWl_0()
{
  result = _sSaySSGSayxGSKsWL_0;
  if (!_sSaySSGSayxGSKsWL_0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd_0, &_sSaySSGMR_0);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSaySSGSayxGSKsWL_0);
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

  v21(partial apply for closure #1 in Lyrics.StateManager.init(), v20);

  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return v1;
}

uint64_t sub_1002DCB4C()
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
  outlined init with copy of Lyrics.StateManager.State(v1 + v7, v6, type metadata accessor for Lyrics.StateManager.State);
  v8 = specialized static Lyrics.StateManager.State.__derived_struct_equals(_:_:)(v6, a1);
  outlined destroy of Lyrics.StateManager.State(v6, type metadata accessor for Lyrics.StateManager.State);
  if (v8)
  {
    outlined init with copy of Lyrics.StateManager.State(a1, v6, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v1 + v7, v4, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v6, v1 + v7, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v4);
    outlined destroy of Lyrics.StateManager.State(v4, type metadata accessor for Lyrics.StateManager.State);
    outlined destroy of Lyrics.StateManager.State(v6, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return outlined destroy of Lyrics.StateManager.State(a1, type metadata accessor for Lyrics.StateManager.State);
}

void Lyrics.StateManager.showTranslationButton.setter(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
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
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void Lyrics.StateManager.loader.setter(void *a1)
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
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void Lyrics.StateManager.lyricsReportingController.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCLyricsReportingController, MPCLyricsReportingController_ptr);
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
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void closure #1 in Lyrics.StateManager.init()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
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
    v16 = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    v53 = v15;
    v54 = v16;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    outlined init with copy of Lyrics.StateManager.State(v14 + v17, v12, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v12, v10, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v12, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      outlined destroy of Lyrics.StateManager.State(v10, type metadata accessor for Lyrics.StateManager.State.Loading);
      return;
    }

    v51 = v4;
    v52 = a1;
    v18 = *v10;
    v19 = *(v10 + 1);
    v21 = *(v10 + 2);
    v20 = *(v10 + 3);
    v22 = v10[32];
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR) + 48);
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

      outlined consume of Lyrics.StateManager.LyricsType(v18, v26, v49, v50, 1);
      v33 = v8;
    }

    else
    {
      v46 = v31;
      v44 = v29;
      v45 = v28;
      v48 = v18;
      outlined destroy of TaskPriority?(v8, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
      v34 = specialized Set.contains(_:)(3, v52);
      v35 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

      LODWORD(v35) = v35(3) & 1;

      if (v34 == v35)
      {
        outlined consume of Lyrics.StateManager.LyricsType(v48, v26, v49, v50, 1);

        return;
      }

      v52 = v26;
      (*(*v48 + 440))(v36);
      swift_getKeyPath();
      v56 = v14;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v37 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
      swift_beginAccess();
      outlined init with copy of TaskPriority?(v14 + v37, v6, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
      v38 = v47;
      v39 = v32(v6, 1, v47);
      outlined destroy of TaskPriority?(v6, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
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
      outlined consume of Lyrics.StateManager.LyricsType(v43, v52, v49, v50, 1);

      v33 = v42;
    }

    outlined destroy of TaskPriority?(v33, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
  }
}

uint64_t Lyrics.StateManager.State.lyrics.getter()
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Lyrics.StateManager.State(v0, v2, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Lyrics.StateManager.State(v2, type metadata accessor for Lyrics.StateManager.State.Loading);
    return 0;
  }

  v3 = *v2;
  v4 = v2[32];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR) + 48);
  v6 = type metadata accessor for Song();
  (*(*(v6 - 8) + 8))(&v2[v5], v6);
  if ((v4 & 1) == 0)
  {

    return 0;
  }

  return v3;
}

double Lyrics.StateManager._state.didset(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO_SbtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO_SbtMR);
  __chkstk_darwin();
  v5 = &v72[-v4];
  v6 = type metadata accessor for ScenePhase();
  v85 = *(v6 - 8);
  __chkstk_darwin();
  v84 = &v72[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin();
  v86 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
  __chkstk_darwin();
  v81 = &v72[-v9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd, &_s7LyricsX0A0C11TranslationVSgMR);
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
  v23 = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v82 = v22;
  v87 = v23;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = v2 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  v91 = v24;
  outlined init with copy of Lyrics.StateManager.State(v24, v21, type metadata accessor for Lyrics.StateManager.State);
  v88 = a1;
  LOBYTE(v24) = specialized static Lyrics.StateManager.State.__derived_struct_equals(_:_:)(v21, a1);
  outlined destroy of Lyrics.StateManager.State(v21, type metadata accessor for Lyrics.StateManager.State);
  if ((v24 & 1) == 0)
  {
    v76 = v6;
    v77 = v5;
    v26 = Logger.lyrics.unsafeMutableAddressor();
    (*(v89 + 16))(v16, v26, v90);
    outlined init with copy of Lyrics.StateManager.State(v88, v19, type metadata accessor for Lyrics.StateManager.State);

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v95[0] = v75;
      *v29 = 136446466;
      outlined init with copy of Lyrics.StateManager.State(v19, v21, type metadata accessor for Lyrics.StateManager.State);
      v30 = String.init<A>(describing:)();
      v74 = v27;
      v31 = v30;
      v73 = v28;
      v33 = v32;
      outlined destroy of Lyrics.StateManager.State(v19, type metadata accessor for Lyrics.StateManager.State);
      v34 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v31, v33, v95);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2082;
      swift_getKeyPath();
      v94 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v35 = v91;
      outlined init with copy of Lyrics.StateManager.State(v91, v21, type metadata accessor for Lyrics.StateManager.State);
      v36 = String.init<A>(describing:)();
      v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v36, v37, v95);

      *(v29 + 14) = v38;
      v39 = v74;
      _os_log_impl(&_mh_execute_header, v74, v73, "[State] changed from %{public}s to %{public}s", v29, 0x16u);
      swift_arrayDestroy();

      (*(v89 + 8))(v16, v90);
    }

    else
    {

      outlined destroy of Lyrics.StateManager.State(v19, type metadata accessor for Lyrics.StateManager.State);
      (*(v89 + 8))(v16, v90);
      v35 = v91;
    }

    swift_getKeyPath();
    v95[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = v79;
    outlined init with copy of Lyrics.StateManager.State(v35, v79, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v40, v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v40, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = *v13;
      v42 = v13[32];
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR) + 48);
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
          outlined destroy of TaskPriority?(v49, &_s7LyricsX0A0C11TranslationVSgMd, &_s7LyricsX0A0C11TranslationVSgMR);
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
            outlined destroy of TaskPriority?(v46, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
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
            outlined init with copy of Lyrics.StateManager.State(v91, v45, type metadata accessor for Lyrics.StateManager.State.Loading);
            swift_getKeyPath();
            v94 = v2;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v62 = v61 + *(v92 + 20);
            v63 = v86;
            outlined init with copy of Lyrics.StateManager.State(v62, v86, type metadata accessor for Lyrics.StateManager.State.Display);
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

            outlined destroy of Lyrics.StateManager.State(v63, type metadata accessor for Lyrics.StateManager.State.Display);
            outlined init with take of Lyrics.StateManager.State.Loading(v45, v60);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                outlined consume of Lyrics.StateManager.LyricsType(*v60, *(v60 + 8), *(v60 + 16), *(v60 + 24), *(v60 + 32));
                v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR) + 48);
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
              outlined destroy of Lyrics.StateManager.State(v60, type metadata accessor for Lyrics.StateManager.State.Loading);
            }

            Lyrics.StateManager.reportLyricsEvent(state:)(v88);
LABEL_30:
            Lyrics.StateManager.updateMetricsPage()();

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
        outlined destroy of TaskPriority?(v57, &_s7LyricsX0A0C11TranslationVSgMd, &_s7LyricsX0A0C11TranslationVSgMR);
        v58 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v58 - 8) + 56))(v46, 1, 1, v58);
        goto LABEL_15;
      }

      v45 = v83;
    }

    else
    {
      outlined destroy of Lyrics.StateManager.State(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
      v45 = v83;
    }

    v46 = v81;
    goto LABEL_14;
  }

  return result;
}

void (*Lyrics.StateManager._state.modify(uint64_t *a1))(char **a1, char a2)
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
  outlined init with copy of Lyrics.StateManager.State(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State);
  return Lyrics.StateManager._state.modify;
}

void Lyrics.StateManager._state.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    outlined init with copy of Lyrics.StateManager.State(*(*a1 + 12), v6, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v7 + v4, v5, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v6, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v5);
    outlined destroy of Lyrics.StateManager.State(v5, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    outlined init with copy of Lyrics.StateManager.State(v7 + v4, v6, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v3, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v6);
  }

  outlined destroy of Lyrics.StateManager.State(v6, type metadata accessor for Lyrics.StateManager.State);
  outlined destroy of Lyrics.StateManager.State(v3, type metadata accessor for Lyrics.StateManager.State);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Lyrics.StateManager.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return outlined init with copy of Lyrics.StateManager.State(v5 + v3, a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t key path getter for Lyrics.StateManager.state : Lyrics.StateManager@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return outlined init with copy of Lyrics.StateManager.State(v3 + v4, a2, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t key path setter for Lyrics.StateManager.state : Lyrics.StateManager(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Lyrics.StateManager.State(a1, v3, type metadata accessor for Lyrics.StateManager.State);
  return Lyrics.StateManager.state.setter(v3);
}

uint64_t closure #1 in Lyrics.StateManager.state.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v10[-v6];
  outlined init with copy of Lyrics.StateManager.State(a2, &v10[-v6], type metadata accessor for Lyrics.StateManager.State);
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  outlined init with copy of Lyrics.StateManager.State(a1 + v8, v5, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  outlined assign with copy of Lyrics.StateManager.State(v7, a1 + v8, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  Lyrics.StateManager._state.didset(v5);
  outlined destroy of Lyrics.StateManager.State(v5, type metadata accessor for Lyrics.StateManager.State);
  return outlined destroy of Lyrics.StateManager.State(v7, type metadata accessor for Lyrics.StateManager.State);
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
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._state.modify(v4);
  return Lyrics.StateManager.state.modify;
}

void Lyrics.StateManager._tracklist.didset()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
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
  v52 = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
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
        outlined init with copy of Lyrics.StateManager.State(v1 + v18, v12, type metadata accessor for Lyrics.StateManager.State);
        outlined init with copy of Lyrics.StateManager.State(v12, v10, type metadata accessor for Lyrics.StateManager.State.Loading);
        outlined destroy of Lyrics.StateManager.State(v12, type metadata accessor for Lyrics.StateManager.State);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v19 = *v10;
          v20 = *(v10 + 1);
          v21 = *(v10 + 3);
          v49 = *(v10 + 2);
          v50 = v21;
          v22 = v10[32];
          v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR) + 48);
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
              outlined consume of Lyrics.StateManager.LyricsType(v19, v48, v49, v50, 1);
              outlined destroy of TaskPriority?(v8, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
            }

            else
            {
              v46[0] = v19;
              outlined destroy of TaskPriority?(v8, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
              swift_getKeyPath();
              v55 = v1;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v38 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
              swift_beginAccess();
              outlined init with copy of TaskPriority?(v1 + v38, v6, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
              v39 = v28(v6, 1, v27);
              v40 = v48;
              if (v39 == 1)
              {
                outlined destroy of TaskPriority?(v6, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
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
                  outlined consume of Lyrics.StateManager.LyricsType(v45, v40, v44, v43, 1);
                  goto LABEL_16;
                }

                outlined consume of Lyrics.StateManager.LyricsType(v46[0], v40, v49, v50, 1);
              }

              else
              {
                outlined consume of Lyrics.StateManager.LyricsType(v46[0], v48, v49, v50, 1);
                outlined destroy of TaskPriority?(v6, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
              }
            }
          }

          else
          {
          }
        }

        else
        {
          outlined destroy of Lyrics.StateManager.State(v10, type metadata accessor for Lyrics.StateManager.State.Loading);
        }
      }
    }
  }

  swift_getKeyPath();
  v55 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v29, v3, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
  v30 = type metadata accessor for Lyrics.Transliteration(0);
  v31 = *(v30 - 8);
  v32 = (*(v31 + 48))(v3, 1, v30);
  outlined destroy of TaskPriority?(v3, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
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

        outlined destroy of TaskPriority?(v37, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
      }
    }
  }
}

void (*Lyrics.StateManager._tracklist.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return Lyrics.StateManager._tracklist.modify;
}

void Lyrics.StateManager._tracklist.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    Lyrics.StateManager._tracklist.didset();
  }
}

void *Lyrics.StateManager.tracklist.getter()
{
  swift_getKeyPath();
  v5 = v0;
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id key path getter for Lyrics.StateManager.tracklist : Lyrics.StateManager@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
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
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for UIAction(0, &_sSo26MPCPlayerResponseTracklistCML_0, MPCPlayerResponseTracklist_ptr);
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

  Lyrics.StateManager._tracklist.didset();
}

void closure #1 in Lyrics.StateManager.tracklist.setter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  Lyrics.StateManager._tracklist.didset();
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
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._tracklist.modify(v4);
  return Lyrics.StateManager.tracklist.modify;
}

double Lyrics.StateManager._song.didset(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v4 = &v30 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
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
  v15 = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v33 = v14;
  v34 = v15;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(&v2[v16], v8, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    outlined destroy of TaskPriority?(v8, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  }

  else
  {
    v30 = v4;
    v18 = *(v10 + 32);
    v18(v13, v8, v9);
    outlined init with copy of TaskPriority?(v32, v6, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    if (v17(v6, 1, v9) == 1)
    {
      (*(v10 + 8))(v13, v9);
      outlined destroy of TaskPriority?(v6, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    }

    else
    {
      v19 = v31;
      v18(v31, v6, v9);
      lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&_s8MusicKit4SongVACSQAAWL_0, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      if (static MusicItem<>.==~ infix(_:_:)())
      {
        v20 = specialized static LyricsLoader.supportsLyrics(for:)(v13);
        v21 = specialized static LyricsLoader.supportsLyrics(for:)(v19);
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
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v4, &async function pointer to partial apply for closure #1 in Lyrics.StateManager._song.didset, v28);

  Lyrics.StateManager.currentLyricsTask.setter(v29);

  return result;
}

uint64_t closure #1 in Lyrics.StateManager._song.didset()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #3 in GroupActivitiesManager.join();

  return Lyrics.StateManager.loadLyrics()();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v10 = v24 - v9;
  outlined init with copy of TaskPriority?(a3, v24 - v9, &_sScPSgMd_1, &_sScPSgMR_1);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd_1, &_sScPSgMR_1);
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

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_1, &_sScPSgMR_1);

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

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_1, &_sScPSgMR_1);
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

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v10 = v24 - v9;
  outlined init with copy of TaskPriority?(a3, v24 - v9, &_sScPSgMd_1, &_sScPSgMR_1);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd_1, &_sScPSgMR_1);
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd_0, &_sytSgMR_0);
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

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_1, &_sScPSgMR_1);

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

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_1, &_sScPSgMR_1);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd_0, &_sytSgMR_0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC8MusicKit8PlaylistV0eF8InternalE12CollaboratorVSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v10 = v24 - v9;
  outlined init with copy of TaskPriority?(a3, v24 - v9, &_sScPSgMd_1, &_sScPSgMR_1);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    outlined destroy of TaskPriority?(v10, &_sScPSgMd_1, &_sScPSgMR_1);
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

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
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

      outlined destroy of TaskPriority?(a3, &_sScPSgMd_1, &_sScPSgMR_1);

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

  outlined destroy of TaskPriority?(a3, &_sScPSgMd_1, &_sScPSgMR_1);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE12CollaboratorVSgMR);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void (*Lyrics.StateManager._song.modify(uint64_t *a1))(char **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0) - 8) + 64);
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
  outlined init with copy of TaskPriority?(v1 + v8, v7, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  return Lyrics.StateManager._song.modify;
}

void Lyrics.StateManager._song.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    outlined init with copy of TaskPriority?(*(*a1 + 12), v6, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    outlined init with copy of TaskPriority?(v7 + v4, v5, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    swift_beginAccess();
    outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v6, v7 + v4, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    swift_endAccess();
    Lyrics.StateManager._song.didset(v5);
    outlined destroy of TaskPriority?(v5, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  }

  else
  {
    outlined init with copy of TaskPriority?(v7 + v4, v6, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    swift_beginAccess();
    outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v3, v7 + v4, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    swift_endAccess();
    Lyrics.StateManager._song.didset(v6);
  }

  outlined destroy of TaskPriority?(v6, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  outlined destroy of TaskPriority?(v3, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t key path setter for Lyrics.StateManager.song : Lyrics.StateManager(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  __chkstk_darwin();
  v3 = &v5 - v2;
  outlined init with copy of TaskPriority?(a1, &v5 - v2, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  return Lyrics.StateManager.song.setter(v3);
}

uint64_t Lyrics.StateManager.song.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v7, v6, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  v8 = specialized Lyrics.StateManager.shouldNotifyObservers<A>(_:_:)(v6, a1);
  outlined destroy of TaskPriority?(v6, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  if (v8)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    outlined init with copy of TaskPriority?(a1, v6, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    outlined init with copy of TaskPriority?(v1 + v7, v4, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    swift_beginAccess();
    outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v6, v1 + v7, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    swift_endAccess();
    Lyrics.StateManager._song.didset(v4);
    outlined destroy of TaskPriority?(v4, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    outlined destroy of TaskPriority?(v6, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  }

  return outlined destroy of TaskPriority?(a1, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
}

uint64_t closure #1 in Lyrics.StateManager.song.setter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v10[-v6];
  outlined init with copy of TaskPriority?(a2, &v10[-v6], &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(a1 + v8, v5, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  swift_beginAccess();
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(v7, a1 + v8, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  swift_endAccess();
  Lyrics.StateManager._song.didset(v5);
  outlined destroy of TaskPriority?(v5, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  return outlined destroy of TaskPriority?(v7, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
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
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._song.modify(v4);
  return Lyrics.StateManager.song.modify;
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
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._showTranslationButton.modify(v4);
  return Lyrics.StateManager.showTranslationButton.modify;
}

uint64_t Lyrics.StateManager.showTranslationButton.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t key path getter for Lyrics.StateManager.showTranslationButton : Lyrics.StateManager@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a3;
  result = swift_beginAccess();
  *a4 = *(v6 + v7);
  return result;
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
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._needsLyricsReset.modify(v4);
  return Lyrics.StateManager.needsLyricsReset.modify;
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
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._currentTranslation.modify(v4);
  return Lyrics.StateManager.currentTranslation.modify;
}

uint64_t Lyrics.StateManager.metricsPage.getter@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *a2;
  swift_beginAccess();
  return outlined init with copy of TaskPriority?(v12 + v10, a5, a3, a4);
}

uint64_t key path getter for Lyrics.StateManager.metricsPage : Lyrics.StateManager@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *a3;
  swift_beginAccess();
  return outlined init with copy of TaskPriority?(v10 + v11, a6, a4, a5);
}

uint64_t closure #1 in Lyrics.StateManager.currentTranslation.setter(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  outlined assign with copy of PlaybackIntentDescriptor.IntentType?(a2, a1 + v9, a4, a5);
  return swift_endAccess();
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
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._currentTransliteration.modify(v4);
  return Lyrics.StateManager.currentTransliteration.modify;
}

uint64_t key path setter for Lyrics.StateManager.currentTranslation : Lyrics.StateManager(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  __chkstk_darwin();
  v13 = &v16[-v12];
  outlined init with copy of TaskPriority?(a1, &v16[-v12], a5, a6);
  v14 = *a2;
  swift_getKeyPath();
  v17 = v14;
  v18 = v13;
  v19 = v14;
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of TaskPriority?(v13, a5, a6);
}

uint64_t Lyrics.StateManager.currentTranslation.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return outlined destroy of TaskPriority?(a1, a4, a5);
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
  v4[6] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = Lyrics.StateManager._metricsPage.modify(v4);
  return Lyrics.StateManager.metricsPage.modify;
}

void Lyrics.StateManager.state.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

Swift::Void __swiftcall Lyrics.StateManager.retryLoadingLyrics()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
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
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_1(0, 0, v3, &async function pointer to partial apply for closure #1 in Lyrics.StateManager.retryLoadingLyrics(), v6);
}

uint64_t closure #1 in Lyrics.StateManager.retryLoadingLyrics()()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #2 in GroupActivitiesManager.join();

  return Lyrics.StateManager.loadLyrics()();
}

uint64_t Lyrics.StateManager.State.updateLoadedAndVisibleSince()()
{
  v1 = type metadata accessor for ScenePhase();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin();
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  __chkstk_darwin();
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v25 = type metadata accessor for Lyrics.StateManager.State(0);
  v8 = *(v25 + 24);
  outlined init with copy of TaskPriority?(v0 + v8, v7, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = v7;
  v13 = v0;
  outlined destroy of TaskPriority?(v12, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  if (v11 == 1)
  {
    outlined init with copy of Lyrics.StateManager.State(v0, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined consume of Lyrics.StateManager.LyricsType(*v4, *(v4 + 1), *(v4 + 2), *(v4 + 3), v4[32]);
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR) + 48);
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
          return outlined assign with take of Date?(v21, v13 + v8);
        }
      }
    }

    else
    {
      outlined destroy of Lyrics.StateManager.State(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    }
  }

  outlined destroy of TaskPriority?(v13 + v8, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  return (*(v10 + 56))(v13 + v8, 1, 1, v9);
}

uint64_t Lyrics.StateManager.State.loading.setter(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v9 - v5;
  outlined init with copy of Lyrics.StateManager.State(v1, &v9 - v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined assign with copy of Lyrics.StateManager.State(a1, v1, type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined init with copy of Lyrics.StateManager.State(v1, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  v7 = specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v4, v6);
  outlined destroy of Lyrics.StateManager.State(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((v7 & 1) == 0)
  {
    Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
  }

  outlined destroy of Lyrics.StateManager.State(a1, type metadata accessor for Lyrics.StateManager.State.Loading);
  return outlined destroy of Lyrics.StateManager.State(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
}

void (*Lyrics.StateManager.State.loading.modify(void *a1))(uint64_t **a1, char a2)
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
  outlined init with copy of Lyrics.StateManager.State(v1, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  return Lyrics.StateManager.State.loading.modify;
}

void Lyrics.StateManager.State.loading.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    v7 = *v2;
    v6 = v2[1];
    outlined init with copy of Lyrics.StateManager.State((*a1)[5], v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v7, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v5, v7, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v7, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    v8 = specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v4, v6);
    outlined destroy of Lyrics.StateManager.State(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v8 & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
    }

    v10 = v2[4];
    v9 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    outlined destroy of Lyrics.StateManager.State(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    v14 = v13;
    v15 = v9;
  }

  else
  {
    v17 = v2[3];
    v16 = v2[4];
    v18 = *v2;
    outlined init with copy of Lyrics.StateManager.State(*v2, v16, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v3, v18, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v18, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    v19 = specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v17, v16);
    outlined destroy of Lyrics.StateManager.State(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v19 & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
    }

    v9 = v2[4];
    v14 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    v15 = v14;
    v10 = v9;
  }

  outlined destroy of Lyrics.StateManager.State(v14, type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined destroy of Lyrics.StateManager.State(v9, type metadata accessor for Lyrics.StateManager.State.Loading);
  free(v15);
  free(v10);
  free(v11);
  free(v12);
  free(v13);

  free(v2);
}

uint64_t Lyrics.StateManager.State.display.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *(type metadata accessor for Lyrics.StateManager.State(0) + 20);
  outlined init with copy of Lyrics.StateManager.State(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State.Display);
  outlined assign with copy of Lyrics.StateManager.State(a1, v1 + v8, type metadata accessor for Lyrics.StateManager.State.Display);
  outlined init with copy of Lyrics.StateManager.State(v1 + v8, v5, type metadata accessor for Lyrics.StateManager.State.Display);
  if ((static ScenePhase.== infix(_:_:)() & 1) != 0 && v5[*(v3 + 20)] == v7[*(v3 + 20)])
  {
    v10 = v5[*(v3 + 24)];
    outlined destroy of Lyrics.StateManager.State(v5, type metadata accessor for Lyrics.StateManager.State.Display);
    if (v10 == v7[*(v3 + 24)])
    {
      goto LABEL_5;
    }
  }

  else
  {
    outlined destroy of Lyrics.StateManager.State(v5, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
LABEL_5:
  outlined destroy of Lyrics.StateManager.State(a1, type metadata accessor for Lyrics.StateManager.State.Display);
  return outlined destroy of Lyrics.StateManager.State(v7, type metadata accessor for Lyrics.StateManager.State.Display);
}

void (*Lyrics.StateManager.State.display.modify(void *a1))(uint64_t a1, char a2)
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
  outlined init with copy of Lyrics.StateManager.State(v1 + *(v6 + 20), v5, type metadata accessor for Lyrics.StateManager.State.Display);
  return Lyrics.StateManager.State.display.modify;
}

void Lyrics.StateManager.State.display.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    outlined init with copy of Lyrics.StateManager.State(*(a1 + 16), v2, type metadata accessor for Lyrics.StateManager.State.Display);
    Lyrics.StateManager.State.display.setter(v2);
    outlined destroy of Lyrics.StateManager.State(v3, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  else
  {
    Lyrics.StateManager.State.display.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t Lyrics.StateManager.State.Loading.lyricsType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Lyrics.StateManager.State(v2, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  result = swift_getEnumCaseMultiPayload();
  v7 = 0uLL;
  if (!result)
  {
    result = outlined destroy of Lyrics.StateManager.State(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
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
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR) + 48);
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Lyrics.StateManager.State.Display(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Lyrics.StateManager.LyricsType(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return specialized static Lyrics.StateManager.LyricsType.== infix(_:_:)(v5, v7) & 1;
}

double Lyrics.StateManager.currentLyricsTask.setter(uint64_t a1)
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
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
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

uint64_t Lyrics.StateManager.currentLyricsTask.getter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for Lyrics.StateManager.currentLyricsTask : Lyrics.StateManager@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

double key path setter for Lyrics.StateManager.optionsObserver : Lyrics.StateManager(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t Lyrics.StateManager.loadLyrics()()
{
  v1[74] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
  v1[75] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd, &_s7LyricsX0A0C11TranslationVSgMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
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

  return _swift_task_switch(Lyrics.StateManager.loadLyrics(), v5, v4);
}

{
  v68 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[74];
  swift_getKeyPath();
  v0[122] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v0[41] = v4;
  v0[123] = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v0[124] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v4 + v5, v3, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
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

    outlined destroy of TaskPriority?(v7, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
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
    outlined init with copy of Lyrics.StateManager.State(v11, v9, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v9, v66, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v8, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v9, v66) & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
    }

    v12 = v0[98];
    v13 = v0[90];
    v14 = v0[85];
    v15 = v0[74];
    outlined destroy of Lyrics.StateManager.State(v0[97], type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v11, v13, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v14, v11, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v13);
    outlined destroy of Lyrics.StateManager.State(v13, type metadata accessor for Lyrics.StateManager.State);
    outlined destroy of Lyrics.StateManager.State(v14, type metadata accessor for Lyrics.StateManager.State);
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
    outlined init with copy of Lyrics.StateManager.State(v24 + v26, v23, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v23, v63, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v22, v23, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v23, v63) & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
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
    outlined destroy of Lyrics.StateManager.State(v0[107], type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v28, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v24 + v26, v30, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v29, v24 + v26, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v30);
    outlined destroy of Lyrics.StateManager.State(v30, type metadata accessor for Lyrics.StateManager.State);
    outlined destroy of Lyrics.StateManager.State(v29, type metadata accessor for Lyrics.StateManager.State);
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
      lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v60 = v44;
      v62 = v42;
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      v58 = v37;
      v49 = *(v40 + 8);
      v49(v39, v41);
      v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v46, v48, &v67);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v36, v58, "[State] Loading lyrics song %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v65);

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
    v54[1] = Lyrics.StateManager.loadLyrics();
    v55 = v0[118];

    return LyricsLoader.loadLyrics(for:)(v55);
  }
}

{
  v163 = v0;

  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 1120);
    v2 = *(v0 + 1112);
    v3 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    outlined consume of Text.Storage(v2, v1, v3 & 1);
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

  outlined init with copy of TaskPriority?(v8 + v5, v7, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  if (v4(v7, 1, v6) == 1)
  {
    v9 = *(v0 + 1120);
    v10 = *(v0 + 1112);
    v11 = *(v0 + 872);
    v12 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    outlined consume of Text.Storage(v10, v9, v12 & 1);
    outlined destroy of TaskPriority?(v11, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    goto LABEL_36;
  }

  (*(v0 + 1016))(*(v0 + 928), *(v0 + 872), *(v0 + 888));
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&_s8MusicKit4SongVACSQAAWL_0, &type metadata accessor for Song, &protocol conformance descriptor for Song);
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
    outlined consume of Text.Storage(*(v0 + 1112), *(v0 + 1120), v14 & 1);
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
  outlined copy of Text.Storage(v16, v15, v14 & 1);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  outlined consume of Text.Storage(v16, v15, v14 & 1);
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
    lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v130(v24, v25);
    v30 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v27, v29, v162);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v0 + 304) = v23;
    *(v0 + 312) = v134;
    *(v0 + 320) = v132 & 1;
    outlined copy of Text.Storage(v23, v134, v132 & 1);
    v31 = String.init<A>(describing:)();
    v33 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v31, v32, v162);

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
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR) + 48);
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

      outlined init with copy of Lyrics.StateManager.State(v41 + v150, v40, type metadata accessor for Lyrics.StateManager.State);
      outlined init with copy of Lyrics.StateManager.State(v40, v157, type metadata accessor for Lyrics.StateManager.State.Loading);
      outlined assign with copy of Lyrics.StateManager.State(v39, v40, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v40, v157) & 1) == 0)
      {
        Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
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
      outlined destroy of Lyrics.StateManager.State(*(v0 + 840), type metadata accessor for Lyrics.StateManager.State.Loading);
      outlined destroy of Lyrics.StateManager.State(v46, type metadata accessor for Lyrics.StateManager.State.Loading);
      outlined init with copy of Lyrics.StateManager.State(v49 + v44, v47, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      outlined assign with copy of Lyrics.StateManager.State(v48, v49 + v44, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      Lyrics.StateManager._state.didset(v47);
      outlined destroy of Lyrics.StateManager.State(v47, type metadata accessor for Lyrics.StateManager.State);
      outlined destroy of Lyrics.StateManager.State(v48, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 336) = v49;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      v50 = v138;
      v51 = v151;
      v52 = 0;
LABEL_31:
      outlined consume of Text.Storage(v50, v51, v52);
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
      v116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR) + 48);
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
      outlined copy of Text.Storage(v110, v133, 1);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      *(v0 + 544) = v115;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      outlined init with copy of Lyrics.StateManager.State(v115 + v147, v114, type metadata accessor for Lyrics.StateManager.State);
      outlined init with copy of Lyrics.StateManager.State(v114, v154, type metadata accessor for Lyrics.StateManager.State.Loading);
      outlined assign with copy of Lyrics.StateManager.State(v113, v114, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v114, v154) & 1) == 0)
      {
        Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
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
      outlined destroy of Lyrics.StateManager.State(*(v0 + 824), type metadata accessor for Lyrics.StateManager.State.Loading);
      outlined destroy of Lyrics.StateManager.State(v123, type metadata accessor for Lyrics.StateManager.State.Loading);
      outlined init with copy of Lyrics.StateManager.State(v126 + v121, v124, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      outlined assign with copy of Lyrics.StateManager.State(v125, v126 + v121, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      Lyrics.StateManager._state.didset(v124);
      outlined destroy of Lyrics.StateManager.State(v124, type metadata accessor for Lyrics.StateManager.State);
      outlined destroy of Lyrics.StateManager.State(v125, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 560) = v126;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      outlined consume of Text.Storage(v137, v148, 1);
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
    v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR) + 48);
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
    outlined copy of Text.Storage(v95, v136, 1);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v0 + 456) = v100;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    outlined init with copy of Lyrics.StateManager.State(v100 + v152, v99, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v99, v160, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v98, v99, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v99, v160) & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
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
    outlined destroy of Lyrics.StateManager.State(*(v0 + 792), type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v106, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v109 + v105, v107, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v108, v109 + v105, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v107);
    outlined destroy of Lyrics.StateManager.State(v107, type metadata accessor for Lyrics.StateManager.State);
    outlined destroy of Lyrics.StateManager.State(v108, type metadata accessor for Lyrics.StateManager.State);
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

    outlined destroy of TaskPriority?(v70, &_s7LyricsX0A0C11TranslationVSgMd, &_s7LyricsX0A0C11TranslationVSgMR);
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

    outlined destroy of TaskPriority?(v77, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
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
  v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR) + 48);
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

  outlined init with copy of Lyrics.StateManager.State(v86 + v139, v85, type metadata accessor for Lyrics.StateManager.State);
  outlined init with copy of Lyrics.StateManager.State(v85, v145, type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined assign with copy of Lyrics.StateManager.State(v84, v85, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v85, v145) & 1) == 0)
  {
    Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
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
  outlined destroy of Lyrics.StateManager.State(*(v0 + 808), type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined destroy of Lyrics.StateManager.State(v91, type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined init with copy of Lyrics.StateManager.State(v94 + v89, v92, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  outlined assign with copy of Lyrics.StateManager.State(v93, v94 + v89, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  Lyrics.StateManager._state.didset(v92);
  outlined destroy of Lyrics.StateManager.State(v92, type metadata accessor for Lyrics.StateManager.State);
  outlined destroy of Lyrics.StateManager.State(v93, type metadata accessor for Lyrics.StateManager.State);
  *(v0 + 512) = v94;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  outlined consume of Text.Storage(v135, v146, 1);
  v88(v140, v90);
  v88(v159, v90);
LABEL_36:

  v127 = *(v0 + 8);

  return v127();
}

{
  v87 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);

  *(v0 + 360) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd_0, &_ss5Error_pMR_0);
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
      lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v69 = v19;
      v71 = v15;
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      v14(v16, v17);
      v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v21, v23, v86);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v0 + 322) = v74;
      v25 = String.init<A>(describing:)();
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v25, v26, v86);

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

    outlined init with copy of Lyrics.StateManager.State(v45 + v82, v44, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v44, v43, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v42, v44, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v44, v43) & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
    }

    v46 = *(v0 + 1032);
    v80 = *(v0 + 944);
    v83 = *(v0 + 1088);
    v75 = *(v0 + 888);
    v47 = *(v0 + 768);
    v48 = *(v0 + 720);
    v49 = *(v0 + 672);
    v50 = *(v0 + 592);
    outlined destroy of Lyrics.StateManager.State(*(v0 + 760), type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v47, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v50 + v46, v48, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v49, v50 + v46, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v48);
    outlined destroy of Lyrics.StateManager.State(v48, type metadata accessor for Lyrics.StateManager.State);
    outlined destroy of Lyrics.StateManager.State(v49, type metadata accessor for Lyrics.StateManager.State);
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
      lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Song and conformance Song, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      v68(v32, v33);
      v38 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v35, v37, v86);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v0 + 376) = v70;
      swift_errorRetain();
      v39 = String.init<A>(describing:)();
      v41 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v39, v40, v86);

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

    outlined init with copy of Lyrics.StateManager.State(v60 + v84, v59, type metadata accessor for Lyrics.StateManager.State);
    outlined init with copy of Lyrics.StateManager.State(v59, v58, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined assign with copy of Lyrics.StateManager.State(v57, v59, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(v59, v58) & 1) == 0)
    {
      Lyrics.StateManager.State.updateLoadedAndVisibleSince()();
    }

    v85 = *(v0 + 1088);
    v61 = *(v0 + 1032);
    v73 = *(v0 + 888);
    v76 = *(v0 + 944);
    v62 = *(v0 + 752);
    v63 = *(v0 + 720);
    v64 = *(v0 + 664);
    v65 = *(v0 + 592);
    outlined destroy of Lyrics.StateManager.State(*(v0 + 744), type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined destroy of Lyrics.StateManager.State(v62, type metadata accessor for Lyrics.StateManager.State.Loading);
    outlined init with copy of Lyrics.StateManager.State(v65 + v61, v63, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    outlined assign with copy of Lyrics.StateManager.State(v64, v65 + v61, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    Lyrics.StateManager._state.didset(v63);
    outlined destroy of Lyrics.StateManager.State(v63, type metadata accessor for Lyrics.StateManager.State);
    outlined destroy of Lyrics.StateManager.State(v64, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 368) = v65;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v85(v76, v73);
  }

  v66 = *(v0 + 8);

  return v66();
}

uint64_t Lyrics.StateManager.loadLyrics()(uint64_t a1, uint64_t a2, char a3)
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
    v8 = Lyrics.StateManager.loadLyrics();
  }

  else
  {

    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = Lyrics.StateManager.loadLyrics();
  }

  return _swift_task_switch(v8, v7, v6);
}

id Lyrics.StateManager.loader.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + *a2);

  return v4;
}

id key path getter for Lyrics.StateManager.loader : Lyrics.StateManager@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

uint64_t Lyrics.StateManager.updateMetricsPage()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
  __chkstk_darwin();
  v48 = &v42[-v2];
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd_0, &_s9MusicCore12MetricsEventV4PageVSgMR_0);
  __chkstk_darwin();
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v42[-v7];
  v9 = type metadata accessor for MetricsEvent.Page(0);
  v49 = *(*(v9 - 8) + 56);
  v49(v8, 1, 1, v9);
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *&v52 = v1;
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v50 = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  outlined init with copy of Lyrics.StateManager.State(v1 + v11, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
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
        outlined consume of Lyrics.StateManager.LyricsType(*v4, v13, v14, v15, 0);
        outlined destroy of TaskPriority?(v8, &_s9MusicCore12MetricsEventV4PageVSgMd_0, &_s9MusicCore12MetricsEventV4PageVSgMR_0);
        v19 = type metadata accessor for URL();
        v20 = *(*(v19 - 8) + 56);
        goto LABEL_24;
      }

      v44 = *v4;
      v45 = v13;
      v46 = v14;
      v47 = v15;
      swift_getKeyPath();
      *&v52 = v1;
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
      *&v52 = v1;
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
                static ApplicationCapabilities.shared.getter(&v52);
                outlined destroy of ApplicationCapabilities(&v52);
                if (*(v44 + 56))
                {
                  v30 = (v53 == 1) & ~(v43 | v29);
                  if (*(v44 + 56) == 1)
                  {
                    outlined consume of Lyrics.StateManager.LyricsType(v44, v45, v46, v47, 1);
                    outlined destroy of TaskPriority?(v8, &_s9MusicCore12MetricsEventV4PageVSgMd_0, &_s9MusicCore12MetricsEventV4PageVSgMR_0);
                    v31 = type metadata accessor for URL();
                    v32 = v48;
                    (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
                    v33 = 0x80000001004D11C0;
                    v41 = v30;
                    v34 = v6;
                    v35 = 0xD000000000000010;
                  }

                  else
                  {
                    outlined consume of Lyrics.StateManager.LyricsType(v44, v45, v46, v47, 1);
                    outlined destroy of TaskPriority?(v8, &_s9MusicCore12MetricsEventV4PageVSgMd_0, &_s9MusicCore12MetricsEventV4PageVSgMR_0);
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

                outlined consume of Lyrics.StateManager.LyricsType(v44, v45, v46, v47, 1);
                outlined destroy of TaskPriority?(v8, &_s9MusicCore12MetricsEventV4PageVSgMd_0, &_s9MusicCore12MetricsEventV4PageVSgMR_0);
                v19 = type metadata accessor for URL();
                v20 = *(*(v19 - 8) + 56);
LABEL_24:
                v36 = v48;
                v20(v48, 1, 1, v19);
                MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x745373636972794CLL, 0xEC00000063697461, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v36, 0, 0, 0, v6, 1, 0, 0, 2);
LABEL_27:
                v49(v6, 0, 1, v9);
                outlined init with take of MetricsEvent.Page?(v6, v8);
                v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR) + 48);
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

    outlined destroy of TaskPriority?(v8, &_s9MusicCore12MetricsEventV4PageVSgMd_0, &_s9MusicCore12MetricsEventV4PageVSgMR_0);
  }

  else
  {
    outlined destroy of TaskPriority?(v8, &_s9MusicCore12MetricsEventV4PageVSgMd_0, &_s9MusicCore12MetricsEventV4PageVSgMR_0);
    outlined destroy of Lyrics.StateManager.State(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  }

  v49(v8, 1, 1, v9);
LABEL_28:
  outlined init with copy of TaskPriority?(v8, v6, &_s9MusicCore12MetricsEventV4PageVSgMd_0, &_s9MusicCore12MetricsEventV4PageVSgMR_0);
  swift_getKeyPath();
  __chkstk_darwin();
  v51 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of TaskPriority?(v8, &_s9MusicCore12MetricsEventV4PageVSgMd_0, &_s9MusicCore12MetricsEventV4PageVSgMR_0);
  return outlined destroy of TaskPriority?(v6, &_s9MusicCore12MetricsEventV4PageVSgMd_0, &_s9MusicCore12MetricsEventV4PageVSgMR_0);
}

uint64_t Lyrics.StateManager.reportLyricsEvent(state:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd, &_s10Foundation6LocaleV8LanguageVSgMR);
  __chkstk_darwin();
  v158 = &v150 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v150 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  __chkstk_darwin();
  v5 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v150 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
  __chkstk_darwin();
  v165 = &v150 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11TranslationVSgMd, &_s7LyricsX0A0C11TranslationVSgMR);
  __chkstk_darwin();
  v164 = &v150 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  __chkstk_darwin();
  v163 = &v150 - v10;
  v176 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v177 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v175 = &v150 - v12;
  __chkstk_darwin();
  v161 = &v150 - v13;
  v180 = type metadata accessor for Logger();
  v178 = *(v180 - 8);
  __chkstk_darwin();
  v179 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v167 = &v150 - v15;
  __chkstk_darwin();
  v162 = &v150 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  __chkstk_darwin();
  v168 = &v150 - v17;
  v172 = type metadata accessor for Date();
  v171 = *(v172 - 8);
  __chkstk_darwin();
  v170 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for ScenePhase();
  v173 = *(v174 - 8);
  __chkstk_darwin();
  v20 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v22 = &v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Song();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  outlined init with copy of Lyrics.StateManager.State(a1, v22, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Lyrics.StateManager.State(v22, type metadata accessor for Lyrics.StateManager.State.Loading);
LABEL_11:
    v43 = v180;
    v42 = v178;
LABEL_12:
    v45 = Logger.lyrics.unsafeMutableAddressor();
    v46 = v179;
    (*(v42 + 16))(v179, v45, v43);
    v47 = v177;
    outlined init with copy of Lyrics.StateManager.State(v27, v177, type metadata accessor for Lyrics.StateManager.State);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = v42;
      v52 = swift_slowAlloc();
      v184 = v52;
      *v50 = 136446210;
      outlined init with copy of Lyrics.StateManager.State(v47, v175, type metadata accessor for Lyrics.StateManager.State);
      v53 = String.init<A>(describing:)();
      v55 = v54;
      outlined destroy of Lyrics.StateManager.State(v47, type metadata accessor for Lyrics.StateManager.State);
      v56 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v53, v55, &v184);

      *(v50 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "Skipping Reporting lyrics for state=%{public}s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);

      return (*(v51 + 8))(v179, v180);
    }

    else
    {

      outlined destroy of Lyrics.StateManager.State(v47, type metadata accessor for Lyrics.StateManager.State);
      return (*(v42 + 8))(v46, v43);
    }
  }

  v151 = v7;
  v150 = v5;
  v28 = *(v22 + 1);
  v166 = *v22;
  v160 = v28;
  v29 = *(v22 + 2);
  v30 = *(v22 + 3);
  v31 = v22[32];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR);
  (*(v24 + 32))(v26, &v22[*(v32 + 48)], v23);
  if ((Song.hasLyrics.getter() & 1) == 0)
  {
    (*(v24 + 8))(v26, v23);
    outlined consume of Lyrics.StateManager.LyricsType(v166, v160, v29, v30, v31);
    goto LABEL_11;
  }

  v152 = v29;
  v153 = v30;
  v155 = v31;
  v156 = v26;
  v154 = v24;
  v157 = v23;
  v33 = v27 + *(v176 + 20);
  v34 = v173;
  v35 = v174;
  (v173[13])(v20, enum case for ScenePhase.active(_:), v174);
  v36 = static ScenePhase.== infix(_:_:)();
  v34[1](v20, v35);
  if ((v36 & 1) == 0 || (v37 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(v33 + *(v37 + 20)) != 1) || *(v33 + *(v37 + 24)) != 1)
  {
    v44 = outlined consume of Lyrics.StateManager.LyricsType(v166, v160, v152, v153, v155);
    (*(v154 + 8))(v156, v157, v44);
    goto LABEL_11;
  }

  v38 = v168;
  outlined init with copy of TaskPriority?(v27 + *(v176 + 24), v168, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  v39 = v171;
  v40 = v172;
  v41 = (*(v171 + 48))(v38, 1, v172);
  v42 = v178;
  if (v41 == 1)
  {
    (*(v154 + 8))(v156, v157);
    outlined consume of Lyrics.StateManager.LyricsType(v166, v160, v152, v153, v155);
    outlined destroy of TaskPriority?(v38, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
    v43 = v180;
    goto LABEL_12;
  }

  (*(v39 + 32))(v170, v38, v40);
  v58 = Logger.lyrics.unsafeMutableAddressor();
  v59 = *(v42 + 16);
  v60 = v162;
  v174 = v58;
  v61 = v180;
  v173 = v59;
  v168 = v42 + 16;
  (v59)(v162);
  v62 = v161;
  outlined init with copy of Lyrics.StateManager.State(v27, v161, type metadata accessor for Lyrics.StateManager.State);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v184 = v66;
    *v65 = 136446210;
    outlined init with copy of Lyrics.StateManager.State(v62, v175, type metadata accessor for Lyrics.StateManager.State);
    v67 = String.init<A>(describing:)();
    v69 = v68;
    v61 = v180;
    outlined destroy of Lyrics.StateManager.State(v62, type metadata accessor for Lyrics.StateManager.State);
    v70 = v67;
    v42 = v178;
    v71 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v70, v69, &v184);

    *(v65 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v63, v64, "Reporting lyrics for state=%{public}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
  }

  else
  {

    outlined destroy of Lyrics.StateManager.State(v62, type metadata accessor for Lyrics.StateManager.State);
  }

  v176 = *(v42 + 8);
  (v176)(v60, v61);
  v72 = v153;
  Date.timeIntervalSinceNow.getter();
  v74 = -v73;
  v75 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
  v76 = v154;
  v77 = v163;
  v78 = v157;
  (*(v154 + 16))(v163, v156, v157);
  (*(v76 + 56))(v77, 0, 1, v78);
  MPCReportingLyricsViewEvent.song.setter();
  swift_getKeyPath();
  v79 = v169;
  v184 = v169;
  v177 = lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Lyrics.StateManager and conformance Lyrics.StateManager, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v80 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v81 = *(v79 + v80);
  if (v81)
  {
    v82 = v81;
    v83 = MPCPlayerResponseTracklist.currentPlayEvent.getter();
  }

  else
  {
    v83 = 0;
  }

  [v75 setModelPlayEvent:v83];

  [v75 setVisibleDuration:v74];
  swift_getKeyPath();
  v179 = v75;
  v84 = v169;
  v183[4] = v169;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v85 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  swift_beginAccess();
  v86 = v164;
  outlined init with copy of TaskPriority?(v84 + v85, v164, &_s7LyricsX0A0C11TranslationVSgMd, &_s7LyricsX0A0C11TranslationVSgMR);
  v87 = type metadata accessor for Lyrics.Translation(0);
  v88 = (*(*(v87 - 8) + 48))(v86, 1, v87) != 1;
  outlined destroy of TaskPriority?(v86, &_s7LyricsX0A0C11TranslationVSgMd, &_s7LyricsX0A0C11TranslationVSgMR);
  [v179 setDisplayTranslationEnabled:v88];
  swift_getKeyPath();
  v183[1] = v84;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v89 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  v90 = v84 + v89;
  v91 = v165;
  outlined init with copy of TaskPriority?(v90, v165, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
  v92 = type metadata accessor for Lyrics.Transliteration(0);
  v93 = (*(*(v92 - 8) + 48))(v91, 1, v92) != 1;
  v94 = v179;
  outlined destroy of TaskPriority?(v91, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
  [v94 setDisplayTransliterationEnabled:v93];
  if (v155)
  {
    v95 = v166;
    v96 = v180;
    if (*(v166 + 24))
    {
      outlined copy of Lyrics.StateManager.LyricsType(v166, v160, v152, v72, 1);

      v97 = String._bridgeToObjectiveC()();
    }

    else
    {

      v97 = 0;
    }

    v106 = v159;
    [v179 setLyricsID:v97];

    (*(*v95 + 232))();
    v107 = type metadata accessor for Locale.Language();
    v108 = *(v107 - 8);
    if ((*(v108 + 48))(v106, 1, v107) == 1)
    {
      outlined destroy of TaskPriority?(v106, &_s10Foundation6LocaleV8LanguageVSgMd, &_s10Foundation6LocaleV8LanguageVSgMR);
      v109 = 0;
      v110 = v152;
      v111 = v160;
    }

    else
    {
      v112 = v151;
      Locale.Language.languageCode.getter();
      (*(v108 + 8))(v106, v107);
      v113 = type metadata accessor for Locale.LanguageCode();
      v114 = *(v113 - 8);
      if ((*(v114 + 48))(v112, 1, v113) == 1)
      {
        outlined destroy of TaskPriority?(v112, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
        v109 = 0;
      }

      else
      {
        Locale.LanguageCode.identifier.getter();
        (*(v114 + 8))(v112, v113);
        v109 = String._bridgeToObjectiveC()();
      }

      v72 = v153;
      v110 = v152;
      v111 = v160;
      v96 = v180;
    }

    v94 = v179;
    [v179 setLanguage:v109];

    v118 = v166;
    [v94 setDisplayType:*(v166 + 56)];
    outlined consume of Lyrics.StateManager.LyricsType(v118, v111, v110, v72, 1);
    v98 = v167;
  }

  else
  {
    v98 = v167;
    v96 = v180;
    if (v72 && v72[3])
    {

      v99 = String._bridgeToObjectiveC()();
    }

    else
    {

      v99 = 0;
    }

    [v94 setLyricsID:v99];

    if (v72)
    {
      v100 = *(*v72 + 232);

      v102 = v158;
      v100(v101);

      v103 = type metadata accessor for Locale.Language();
      v104 = *(v103 - 8);
      if ((*(v104 + 48))(v102, 1, v103) == 1)
      {
        outlined destroy of TaskPriority?(v102, &_s10Foundation6LocaleV8LanguageVSgMd, &_s10Foundation6LocaleV8LanguageVSgMR);
        v105 = 0;
        v98 = v167;
        v96 = v180;
      }

      else
      {
        v115 = v150;
        Locale.Language.languageCode.getter();
        (*(v104 + 8))(v102, v103);
        v116 = type metadata accessor for Locale.LanguageCode();
        v117 = *(v116 - 8);
        if ((*(v117 + 48))(v115, 1, v116) == 1)
        {
          outlined destroy of TaskPriority?(v115, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
          v105 = 0;
        }

        else
        {
          Locale.LanguageCode.identifier.getter();
          (*(v117 + 8))(v115, v116);
          v105 = String._bridgeToObjectiveC()();
        }

        v98 = v167;
        v72 = v153;
        v94 = v179;
        v96 = v180;
      }
    }

    else
    {
      v105 = 0;
    }

    [v94 setLanguage:v105];

    [v94 setDisplayType:0];
  }

  v119 = String._bridgeToObjectiveC()();
  [v94 setFeatureName:v119];

  [v94 setUserPreferenceSyllable:2];
  swift_getKeyPath();
  v120 = v169;
  v181 = v169;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(v120 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) recordLyricsViewEvent:v94];
  (v173)(v98, v174, v96);
  v121 = v94;
  v122 = Logger.logObject.getter();
  v123 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v183[0] = swift_slowAlloc();
    *v124 = 136446978;
    v181 = [v121 displayType];
    type metadata accessor for MPCReportingLyricsViewEventDisplayType(0);
    v125 = String.init<A>(describing:)();
    v127 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v125, v126, v183);

    *(v124 + 4) = v127;
    *(v124 + 12) = 2082;
    v128 = [v121 lyricsID];
    if (v128)
    {
      v129 = v128;
      v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v132 = v131;
    }

    else
    {
      v130 = 0;
      v132 = 0;
    }

    v181 = v130;
    v182 = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0, &_sSSSgMR_0);
    v135 = String.init<A>(describing:)();
    v137 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v135, v136, v183);

    *(v124 + 14) = v137;
    *(v124 + 22) = 2082;
    [v121 visibleDuration];
    v138 = Double.description.getter();
    v140 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v138, v139, v183);

    *(v124 + 24) = v140;
    *(v124 + 32) = 2082;
    v141 = [v121 modelSong];
    if (v141)
    {
      v142 = v141;
      v143 = [v141 humanDescription];

      v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v146 = v145;
    }

    else
    {
      v144 = 0;
      v146 = 0;
    }

    v181 = v144;
    v182 = v146;
    v147 = String.init<A>(describing:)();
    v149 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v147, v148, v183);

    *(v124 + 34) = v149;
    _os_log_impl(&_mh_execute_header, v122, v123, "Recorded PAF Event of type=%{public}s; id=%{public}s; duration=%{public}ss; song=%{public}s", v124, 0x2Au);
    swift_arrayDestroy();

    outlined consume of Lyrics.StateManager.LyricsType(v166, v160, v152, v153, v155);
    v133 = v167;
    v134 = v180;
  }

  else
  {

    outlined consume of Lyrics.StateManager.LyricsType(v166, v160, v152, v72, v155);
    v133 = v98;
    v134 = v96;
  }

  (v176)(v133, v134);
  (*(v171 + 8))(v170, v172);
  return (*(v154 + 8))(v156, v157);
}

uint64_t Lyrics.StateManager.deinit()
{
  outlined destroy of Lyrics.StateManager.State(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state, type metadata accessor for Lyrics.StateManager.State);

  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation, &_s7LyricsX0A0C11TranslationVSgMd, &_s7LyricsX0A0C11TranslationVSgMR);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration, &_s7LyricsX0A0C15TransliterationVSgMd, &_s7LyricsX0A0C15TransliterationVSgMR);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage, &_s9MusicCore12MetricsEventV4PageVSgMd_0, &_s9MusicCore12MetricsEventV4PageVSgMR_0);

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Lyrics.StateManager.__deallocating_deinit()
{
  Lyrics.StateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5_0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0__0;

  return v6(a1);
}

uint64_t specialized static Lyrics.StateManager.LyricsType.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      return *a2 == v3;
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = v3 == *a2 && a1[1] == *(a2 + 8);
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v5, v7) & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    v10 = v6 == v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v6)
  {
    return v11;
  }

  else
  {
    return v8 == 0;
  }
}

BOOL specialized static Lyrics.StateManager.State.Loading.Error.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
        return static NSObject.== infix(_:_:)() & 1;
      }

      return 0;
    }

    if (a1)
    {
      return a4 == 2 && a3 == 1;
    }

    return a4 == 2 && !a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a3 == a1;
  }
}

uint64_t specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v37 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v36 - v7;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO_AJtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO_AJtMR);
  __chkstk_darwin();
  v13 = &v36 - v12;
  v15 = &v36 + *(v14 + 56) - v12;
  outlined init with copy of Lyrics.StateManager.State(a1, &v36 - v12, type metadata accessor for Lyrics.StateManager.State.Loading);
  outlined init with copy of Lyrics.StateManager.State(a2, v15, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Lyrics.StateManager.State(v13, v11, type metadata accessor for Lyrics.StateManager.State.Loading);
    v26 = *v11;
    v27 = v11[8];
    if (swift_getEnumCaseMultiPayload())
    {
      outlined consume of Lyrics.StateManager.State.Loading.Error(v26, v27);
      goto LABEL_11;
    }

    v28 = *v15;
    v29 = v15[8];
    if (v27)
    {
      if (v27 == 1)
      {
        if (v29 == 1)
        {
          v30 = *v15;
          type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
          v31 = static NSObject.== infix(_:_:)();
          outlined consume of Lyrics.StateManager.State.Loading.Error(v30, 1);
          outlined consume of Lyrics.StateManager.State.Loading.Error(v26, 1);
          if ((v31 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_9;
        }

        outlined consume of Lyrics.StateManager.State.Loading.Error(v28, v29);
        v28 = v26;
        LOBYTE(v29) = 1;
      }

      else if (v26)
      {
        if (v29 == 2 && v28 == 1)
        {
          goto LABEL_9;
        }
      }

      else if (v29 == 2 && v28 == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v15[8])
    {
      if (v28 != v26)
      {
        goto LABEL_33;
      }

LABEL_9:
      outlined destroy of Lyrics.StateManager.State(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
      v24 = 1;
      return v24 & 1;
    }

    outlined consume of Lyrics.StateManager.State.Loading.Error(v28, v29);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_9;
    }

LABEL_11:
    outlined destroy of TaskPriority?(v13, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO_AJtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO_AJtMR);
LABEL_34:
    v24 = 0;
    return v24 & 1;
  }

  outlined init with copy of Lyrics.StateManager.State(v13, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
  v17 = *(v9 + 1);
  v38[0] = *v9;
  v38[1] = v17;
  v39 = v9[32];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMd, &_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO_0B3Kit4SongVtMR) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v37 + 8))(&v9[v18], v4);
    outlined destroy of Lyrics.StateManager.LyricsType(v38);
    goto LABEL_11;
  }

  v19 = *(v15 + 1);
  v40[0] = *v15;
  v40[1] = v19;
  v41 = v15[32];
  v20 = v37;
  v21 = *(v37 + 32);
  v22 = &v9[v18];
  v23 = v36;
  v21(v36, v22, v4);
  v21(v6, &v15[v18], v4);
  if ((specialized static Lyrics.StateManager.LyricsType.== infix(_:_:)(v38, v40) & 1) == 0)
  {
    outlined destroy of Lyrics.StateManager.LyricsType(v40);
    outlined destroy of Lyrics.StateManager.LyricsType(v38);
    v32 = *(v20 + 8);
    v32(v6, v4);
    v32(v23, v4);
LABEL_33:
    outlined destroy of Lyrics.StateManager.State(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    goto LABEL_34;
  }

  v24 = static Song.== infix(_:_:)();
  outlined destroy of Lyrics.StateManager.LyricsType(v40);
  outlined destroy of Lyrics.StateManager.LyricsType(v38);
  v25 = *(v20 + 8);
  v25(v6, v4);
  v25(v23, v4);
  outlined destroy of Lyrics.StateManager.State(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
  return v24 & 1;
}

BOOL specialized static Lyrics.StateManager.State.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  __chkstk_darwin();
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  __chkstk_darwin();
  v12 = &v25 - v11;
  if ((specialized static Lyrics.StateManager.State.Loading.__derived_enum_equals(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v26 = v5;
  v13 = type metadata accessor for Lyrics.StateManager.State(0);
  v14 = *(v13 + 20);
  v15 = a1 + v14;
  v16 = a2 + v14;
  if ((static ScenePhase.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  if (*(v15 + *(v17 + 20)) != *(v16 + *(v17 + 20)) || *(v15 + *(v17 + 24)) != *(v16 + *(v17 + 24)))
  {
    return 0;
  }

  v18 = *(v13 + 24);
  v19 = *(v10 + 48);
  outlined init with copy of TaskPriority?(a1 + v18, v12, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  outlined init with copy of TaskPriority?(a2 + v18, &v12[v19], &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  v20 = v26;
  v21 = *(v26 + 48);
  if (v21(v12, 1, v4) == 1)
  {
    if (v21(&v12[v19], 1, v4) == 1)
    {
      outlined destroy of TaskPriority?(v12, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
      return 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of TaskPriority?(v12, v9, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  if (v21(&v12[v19], 1, v4) == 1)
  {
    (*(v20 + 8))(v9, v4);
LABEL_10:
    outlined destroy of TaskPriority?(v12, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    return 0;
  }

  (*(v20 + 32))(v7, &v12[v19], v4);
  lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v20 + 8);
  v24(v7, v4);
  v24(v9, v4);
  outlined destroy of TaskPriority?(v12, &_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  return (v23 & 1) != 0;
}

uint64_t outlined init with copy of Lyrics.StateManager.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Lyrics.StateManager.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002EA064(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  Lyrics.StateManager.tracklist.setter(v1);
}

uint64_t specialized Lyrics.StateManager.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSg_ADtMd, &_s8MusicKit4SongVSg_ADtMR);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v13 = *(v12 + 56);
  outlined init with copy of TaskPriority?(a1, &v19 - v10, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  outlined init with copy of TaskPriority?(a2, &v11[v13], &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    outlined init with copy of TaskPriority?(v11, v9, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v13], v4);
      lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(&_s8MusicKit4SongVACSQAAWL_0, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17 = *(v5 + 8);
      v17(v7, v4);
      v17(v9, v4);
      outlined destroy of TaskPriority?(v11, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of TaskPriority?(v11, &_s8MusicKit4SongVSg_ADtMd, &_s8MusicKit4SongVSg_ADtMR);
    v15 = 1;
    return v15 & 1;
  }

  outlined destroy of TaskPriority?(v11, &_s8MusicKit4SongVSgMd_0, &_s8MusicKit4SongVSgMR_0);
  v15 = 0;
  return v15 & 1;
}

uint64_t partial apply for closure #1 in Lyrics.StateManager.retryLoadingLyrics()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Lyrics.StateManager.retryLoadingLyrics()();
}

uint64_t outlined assign with copy of Lyrics.StateManager.State(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void type metadata completion function for Lyrics.StateManager(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Song?(319, &lazy cache variable for type metadata for Song?, &type metadata accessor for Song);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Song?(319, &lazy cache variable for type metadata for Lyrics.Translation?, type metadata accessor for Lyrics.Translation);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Song?(319, &lazy cache variable for type metadata for Lyrics.Transliteration?, type metadata accessor for Lyrics.Transliteration);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Song?(319, &_s9MusicCore12MetricsEventV4PageVSgML_0, type metadata accessor for MetricsEvent.Page);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ObservationRegistrar();
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1002EA9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1002EAB20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void type metadata completion function for Lyrics.StateManager.State(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Lyrics.StateManager.State.Display(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Song?(319, &_s10Foundation4DateVSgML_0, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Song?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for Lyrics.StateManager.State.Loading(uint64_t a1)
{
  type metadata accessor for (Lyrics.StateManager.LyricsType, Song)(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (Lyrics.StateManager.LyricsType, Song)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Lyrics.StateManager.LyricsType, Song))
  {
    type metadata accessor for Song();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Lyrics.StateManager.LyricsType, Song));
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO5ErrorO(uint64_t a1)
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

uint64_t sub_1002EAE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScenePhase();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1002EAF78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ScenePhase();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata completion function for Lyrics.StateManager.State.Display(uint64_t a1)
{
  result = type metadata accessor for ScenePhase();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy33_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Lyrics.StateManager.LyricsType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Lyrics.StateManager.LyricsType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002EB178()
{

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSg_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTR8MusicKit8PlaylistV0dE8InternalE12CollaboratorVSg_Tg5TA_116(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

double outlined consume of Lyrics.StateManager.LyricsType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }

  return result;
}

double outlined copy of Lyrics.StateManager.LyricsType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }

  return result;
}

uint64_t outlined init with take of MetricsEvent.Page?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd_0, &_s9MusicCore12MetricsEventV4PageVSgMR_0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in Lyrics.StateManager.lyricsReportingController.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v2;
  v4 = v2;
}