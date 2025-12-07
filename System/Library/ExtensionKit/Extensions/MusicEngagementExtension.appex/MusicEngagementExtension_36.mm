uint64_t SymbolButton.Intent.accessibilityIdentifier.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v1 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v1 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v2 = *v1;

  return v2;
}

void SymbolButton.update(to:)(unsigned int a1)
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = (&v16 - v5);
  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  outlined init with copy of SymbolButton.Configuration(v1 + v7, v4);
  if (*(v4 + 29) == 1)
  {
    outlined destroy of SymbolButton.Configuration(v4, type metadata accessor for SymbolButton.Configuration);
    v8 = 2;
  }

  else
  {
    v9 = v4[256];
    outlined destroy of SymbolButton.Configuration(v4, type metadata accessor for SymbolButton.Configuration);
    if (v9 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = (v9 & 1) == 0;
    }
  }

  SymbolButton.Configuration.init(intent:materialColor:)(a1, v8, v6);
  SymbolButton.setConfiguration(_:animation:updates:)(v6, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  outlined destroy of SymbolButton.Configuration(v6, type metadata accessor for SymbolButton.Configuration);
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v10 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v10 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];

  type metadata accessor for SymbolButton(0);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v15, v11, v12, v13, v14);
}

uint64_t SymbolButton.materialColor.getter()
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  outlined init with copy of SymbolButton.Configuration(v0 + v3, v2);
  if (*(v2 + 29) == 1)
  {
    outlined destroy of SymbolButton.Configuration(v2, type metadata accessor for SymbolButton.Configuration);
    return 2;
  }

  else
  {
    v5 = v2[256];
    outlined destroy of SymbolButton.Configuration(v2, type metadata accessor for SymbolButton.Configuration);
    if (v5 == 2)
    {
      return 2;
    }

    else
    {
      return (v5 & 1) == 0;
    }
  }
}

void SymbolButton.materialColor.setter(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MusicCoreUI12SymbolButtonC13ConfigurationVSgMd, &_s11MusicCoreUI12SymbolButtonC13ConfigurationVSgMR);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = type metadata accessor for SymbolButton.Configuration(0);
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = [v1 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 != 6)
  {
    if (a1 == 2)
    {
      v19 = 0;
      v20 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 1;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 2;
      v25 = 0;
      v26 = 0;
      closure #1 in SymbolButton.Material.init(materialColor:)(&v21, a1 & 1);
      v15 = v21;
      v19 = v23;
      v20 = v22;
      v12 = v24;
      v13 = v25;
      v14 = v26;
    }

    v16 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    outlined init with copy of SymbolButton.Configuration(v1 + v16, v9);
    outlined consume of SymbolButton.Material?(v9[29], v9[30], v9[31]);
    v17 = v19;
    v18 = v20;
    v9[29] = v15;
    v9[30] = v18;
    v9[31] = v17;
    v9[32] = v12;
    v9[33] = v13;
    v9[34] = v14;
    SymbolButton.setConfiguration(_:animation:updates:)(v9, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    outlined destroy of SymbolButton.Configuration(v9, type metadata accessor for SymbolButton.Configuration);
    (*(v6 + 56))(v4, 1, 1, v5);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v4, 0, 0, 0, 1);
    outlined destroy of TaskPriority?(v4, &_s11MusicCoreUI12SymbolButtonC13ConfigurationVSgMd, &_s11MusicCoreUI12SymbolButtonC13ConfigurationVSgMR);
  }
}

void (*SymbolButton.materialColor.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 32) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  outlined init with copy of SymbolButton.Configuration(v1 + v8, v7);
  if (*(v7 + 232) == 1)
  {
    outlined destroy of SymbolButton.Configuration(v7, type metadata accessor for SymbolButton.Configuration);
    v9 = 2;
  }

  else
  {
    v10 = *(v7 + 256);
    outlined destroy of SymbolButton.Configuration(v7, type metadata accessor for SymbolButton.Configuration);
    if (v10 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = (v10 & 1) == 0;
    }
  }

  *(v4 + 40) = v9;
  return SymbolButton.materialColor.modify;
}

void SymbolButton.materialColor.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  SymbolButton.materialColor.setter(*(*a1 + 40));
  free(v2);

  free(v1);
}

uint64_t SymbolButton.Intent.title.getter(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v7 = static NSBundle.module;
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t SymbolButton.Intent.symbolName.getter(char a1)
{
  if (!a1)
  {
    return 0x6C69662E79616C70;
  }

  if (a1 == 1)
  {
    return 0x656C6666756873;
  }

  return 0x69732E656C707061;
}

unint64_t SymbolButton.Intent.id.getter(char a1)
{
  result = 0xD000000000000015;
  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return result;
}

uint64_t SymbolButton.Intent.actionDetailsPlayType.getter(char a1)
{
  if (a1 == 1)
  {
    return 0x41656C6666756873;
  }

  else
  {
    return 7105633;
  }
}

uint64_t SymbolButton.Intent.actionType.getter(char a1)
{
  if ((a1 & 0xFE) != 0)
  {
    return 64;
  }

  else
  {
    return 31;
  }
}

unint64_t protocol witness for Identifiable.id.getter in conformance SymbolButton.Intent@<X0>(unint64_t *a1@<X8>)
{
  result = SymbolButton.Intent.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void closure #1 in SymbolButton.Material.init(materialColor:)(uint64_t a1, char a2)
{
  *(a1 + 24) = (a2 & 1) == 0;
  v3 = [objc_opt_self() effectWithBlurRadius:50.0];

  *a1 = v3;
  v4 = [objc_opt_self() colorEffectSaturate:1.6];

  *(a1 + 8) = v4;
  _StringGuts.grow(_:)(19);

  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  *(a1 + 32) = 0xD000000000000011;
  *(a1 + 40) = 0x80000001004D32D0;
}

double closure #1 in SymbolButton.Configuration.init(intent:materialColor:)(uint64_t a1, char a2, int a3)
{
  v37 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  __chkstk_darwin();
  v6 = &v36 - v5;
  specialized SymbolButton.Symbol.init()(&v47);
  v55 = v47;
  v7 = v48;
  v8 = v51;
  outlined destroy of TaskPriority?(&v55, &_sSSSgMd_0, &_sSSSgMR_0);
  v9 = a2;
  v10 = *&aPlayFilshuffle[8 * a2];
  v11 = *&aAppleSil[8 * a2 + 8];
  v54 = v49;
  v12 = UIFontTextStyleSubheadline;
  outlined destroy of SymbolButton.Configuration(&v54, type metadata accessor for UIFontTextStyle);
  v13 = *(a1 + 80);
  v44[4] = *(a1 + 64);
  v44[5] = v13;
  v44[6] = *(a1 + 96);
  v45 = *(a1 + 112);
  v14 = *(a1 + 16);
  v44[0] = *a1;
  v44[1] = v14;
  v15 = *(a1 + 48);
  v44[2] = *(a1 + 32);
  v44[3] = v15;
  outlined destroy of SymbolButton.Symbol(v44);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v7;
  *(a1 + 24) = v12;
  *(a1 + 32) = v50;
  *(a1 + 48) = 6;
  *(a1 + 56) = v8;
  *(a1 + 64) = xmmword_100507AA0;
  *(a1 + 80) = 1;
  *(a1 + 81) = v52;
  *(a1 + 97) = *v53;
  *(a1 + 112) = *&v53[15];
  v16 = SymbolButton.Intent.title.getter(a2);
  v18 = v17;

  v19 = UIFontTextStyleBody;

  v20 = *(a1 + 136);
  v21 = *(a1 + 168);
  v46[2] = *(a1 + 152);
  v46[3] = v21;
  v46[4] = *(a1 + 184);
  v46[0] = *(a1 + 120);
  v46[1] = v20;
  outlined destroy of SymbolButton.Title(v46);
  *(a1 + 120) = v16;
  *(a1 + 128) = v18;
  *(a1 + 136) = v19;
  *(a1 + 144) = UIFontWeightSemibold;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v22 = [objc_opt_self() currentTraitCollection];
  v23 = [v22 userInterfaceIdiom];

  if (v23 != 6)
  {
    if (v37 == 2)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 1;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 2;
      v42 = 0;
      v43 = 0;
      closure #1 in SymbolButton.Material.init(materialColor:)(&v38, v37 & 1);
      v29 = v38;
      v24 = v39;
      v25 = v40;
      v26 = v41;
      v27 = v42;
      v28 = v43;
    }

    outlined consume of SymbolButton.Material?(*(a1 + 232), *(a1 + 240), *(a1 + 248));
    *(a1 + 232) = v29;
    *(a1 + 240) = v24;
    *(a1 + 248) = v25;
    *(a1 + 256) = v26;
    *(a1 + 264) = v27;
    *(a1 + 272) = v28;
  }

  if (one-time initialization token for capsule != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for UIView.Corner();
  v31 = __swift_project_value_buffer(v30, static UIView.Corner.capsule);
  v32 = *(v30 - 8);
  (*(v32 + 16))(v6, v31, v30);
  (*(v32 + 56))(v6, 0, 1, v30);
  v33 = type metadata accessor for SymbolButton.Configuration(0);
  outlined assign with take of UIView.Corner?(v6, a1 + v33[9]);
  *(a1 + v33[12]) = qword_1005123E8[v9];
  *(a1 + v33[13]) = vdupq_n_s64(0x4048000000000000uLL);
  v34 = (a1 + v33[15]);
  result = 0.0;
  *v34 = xmmword_100507AB0;
  v34[1] = xmmword_100507AB0;
  return result;
}

Swift::Int static PlayIntentButtonStack.playShuffle(_:)()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11MusicCoreUI12SymbolButtonC6IntentO_Tt0g5Tf4g_n(&outlined read-only object #0 of static PlayIntentButtonStack.playShuffle(_:));

  return v0;
}

Swift::Int static PlayIntentButtonStack.sing(_:)()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11MusicCoreUI12SymbolButtonC6IntentO_Tt0g5Tf4g_n(&outlined read-only object #0 of static PlayIntentButtonStack.sing(_:));

  return v0;
}

Swift::Int PlayIntentButtonStack.init(_:handler:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MusicCoreUI12SymbolButtonC6IntentOGMd, &_ss23_ContiguousArrayStorageCy11MusicCoreUI12SymbolButtonC6IntentOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = a1;
  v3 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11MusicCoreUI12SymbolButtonC6IntentO_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  return v3;
}

uint64_t PlayIntentButtonStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v9 = static Axis.Set.horizontal.getter();
  v10 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v9)
  {
    v10 = Axis.Set.init(rawValue:)();
  }

  *a4 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA05TupleD0VyAA0D0PAAE011dynamicTypeF0yQrqd__SXRd__AA07DynamickF0O5BoundRtd__lFQOyAA15ModifiedContentVyAEy_AA07_LayoutH0Vy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAU06SymbolU0C0T0OGSSAU0stU7WrapperVGGAA06_FixedfP0VG_SNyANGQo__A15_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA05TupleD0VyAA0D0PAAE011dynamicTypeF0yQrqd__SXRd__AA07DynamickF0O5BoundRtd__lFQOyAA15ModifiedContentVyAEy_AA07_LayoutH0Vy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAU06SymbolU0C0T0OGSSAU0stU7WrapperVGGAA06_FixedfP0VG_SNyANGQo__A15_tGGMR);
  return closure #1 in PlayIntentButtonStack.body.getter(a1, a2, a3, &a4[*(v11 + 44)]);
}

uint64_t closure #1 in PlayIntentButtonStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAQ06SymbolS0C0R0OGSSAQ0qrS7WrapperVGGAA06_FixedfM0VG_SNyAFGQo_Md, &_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAQ06SymbolS0C0R0OGSSAQ0qrS7WrapperVGGAA06_FixedfM0VG_SNyAFGQo_MR);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v22 - v12;
  __chkstk_darwin();
  v15 = &v22 - v14;
  __chkstk_darwin();
  v17 = &v22 - v16;
  PlayIntentButtonStack.stack(iconOnly:)(0, a1, a2, a3, &v22 - v16);
  PlayIntentButtonStack.stack(iconOnly:)(1, a1, a2, a3, v15);
  v18 = *(v9 + 16);
  v18(v13, v17, v8);
  v18(v11, v15, v8);
  v18(a4, v13, v8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAQ06SymbolS0C0R0OGSSAQ0qrS7WrapperVGGAA06_FixedfM0VG_SNyAFGQo__A11_tMd, &_s7SwiftUI4ViewPAAE15dynamicTypeSizeyQrqd__SXRd__AA07DynamiceF0O5BoundRtd__lFQOyAA15ModifiedContentVyAA09_VariadicC0O4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAQ06SymbolS0C0R0OGSSAQ0qrS7WrapperVGGAA06_FixedfM0VG_SNyAFGQo__A11_tMR);
  v18(&a4[*(v19 + 48)], v11, v8);
  v20 = *(v9 + 8);
  v20(v15, v8);
  v20(v17, v8);
  v20(v11, v8);
  return (v20)(v13, v8);
}

void PlayIntentButtonStack.stack(iconOnly:)(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMR);
  __chkstk_darwin();
  v50 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v48 = &v43[-v10];
  v11 = type metadata accessor for DynamicTypeSize();
  v57 = *(v11 - 8);
  __chkstk_darwin();
  v56 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v55 = &v43[-v13];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy7SwiftUI15DynamicTypeSizeOGMd, &_sSNy7SwiftUI15DynamicTypeSizeOGMR);
  __chkstk_darwin();
  v47 = &v43[-v14];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAH06SymbolL0C0K0OGSSAH0jkL7WrapperVGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAH06SymbolL0C0K0OGSSAH0jkL7WrapperVGGMR);
  __chkstk_darwin();
  v16 = &v43[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAJ06SymbolN0C0M0OGSSAJ0lmN7WrapperVGGAA010_FixedSizeH0VGMd, &_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAJ06SymbolN0C0M0OGSSAJ0lmN7WrapperVGGAA010_FixedSizeH0VGMR);
  __chkstk_darwin();
  v19 = &v43[-v18];
  v54 = v16;
  *v16 = 0x4030000000000000;
  v20 = *(a2 + 16);
  v58 = v21;
  v59 = &v43[-v18];
  if (v20)
  {
    v44 = a1;
    v45 = a3;
    v46 = a4;
    v22 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11MusicCoreUI12SymbolButtonC6IntentO_Tt1g5(v20, 0);
    v23 = specialized Sequence._copySequenceContents(initializing:)(&v60, v22 + 32, v20, a2);
    v24 = a2;
    v25 = v60;
    v26 = v24;

    outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v25);
    if (v23 != v20)
    {
      goto LABEL_8;
    }

    v17 = v58;
    v19 = v59;
    a2 = v26;
    a3 = v45;
    a4 = v46;
    LOBYTE(a1) = v44;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v60 = v22;
  specialized MutableCollection<>.sort(by:)(&v60);
  v27 = swift_allocObject();
  *(v27 + 16) = a1 & 1;
  *(v27 + 24) = a2;
  *(v27 + 32) = a3;
  *(v27 + 40) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11MusicCoreUI12SymbolButtonC6IntentOGMd, &_sSay11MusicCoreUI12SymbolButtonC6IntentOGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type [SymbolButton.Intent] and conformance [A], &_sSay11MusicCoreUI12SymbolButtonC6IntentOGMd, &_sSay11MusicCoreUI12SymbolButtonC6IntentOGMR, &protocol conformance descriptor for [A]);
  lazy protocol witness table accessor for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper();
  lazy protocol witness table accessor for type SymbolButton.Intent and conformance SymbolButton.Intent();
  v28 = v54;
  ForEach<>.init(_:content:)();
  v29 = *(a2 + 16) < 2uLL;
  outlined init with take of URL?(v28, v19, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAH06SymbolL0C0K0OGSSAH0jkL7WrapperVGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAH06SymbolL0C0K0OGSSAH0jkL7WrapperVGGMR);
  v30 = &v19[*(v17 + 36)];
  *v30 = v29;
  v30[1] = 1;
  v31 = v57;
  v32 = *(v57 + 104);
  v33 = v55;
  v32(v55, enum case for DynamicTypeSize.xSmall(_:), v11);
  v34 = v56;
  v32(v56, enum case for DynamicTypeSize.accessibility2(_:), v11);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v35 = *(v31 + 32);
    v36 = v48;
    v35(v48, v33, v11);
    v37 = v51;
    v35((v36 + *(v51 + 48)), v34, v11);
    v38 = v50;
    outlined init with copy of TaskPriority?(v36, v50, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMR);
    v39 = *(v37 + 48);
    v40 = v47;
    v35(v47, v38, v11);
    v41 = *(v31 + 8);
    v41(&v38[v39], v11);
    outlined init with take of URL?(v36, v38, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMR);
    v35((v40 + *(v49 + 36)), &v38[*(v37 + 48)], v11);
    v41(v38, v11);
    lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ClosedRange<DynamicTypeSize> and conformance ClosedRange<A>, &_sSNy7SwiftUI15DynamicTypeSizeOGMd, &_sSNy7SwiftUI15DynamicTypeSizeOGMR, &protocol conformance descriptor for ClosedRange<A>);
    v42 = v59;
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of TaskPriority?(v40, &_sSNy7SwiftUI15DynamicTypeSizeOGMd, &_sSNy7SwiftUI15DynamicTypeSizeOGMR);
    outlined destroy of TaskPriority?(v42, &_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAJ06SymbolN0C0M0OGSSAJ0lmN7WrapperVGGAA010_FixedSizeH0VGMd, &_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAJ06SymbolN0C0M0OGSSAJ0lmN7WrapperVGGAA010_FixedSizeH0VGMR);
    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);

  __break(1u);
}

uint64_t PlayIntentButtonWrapper.init(intent:iconOnly:handler:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = result;
  *(a5 + 32) = 0;
  return result;
}

uint64_t PlayIntentButtonStack.SmartHStack.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, double *a6, double a7)
{
  v41 = a6;
  v40 = a4;
  v39 = a3;
  v38 = a2;
  v37[1] = a1;
  v9 = type metadata accessor for LayoutSubview();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LayoutSubviews();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR) - 8;
  v18 = __chkstk_darwin();
  v20 = v37 - v19;
  v21 = *(v14 + 16);
  v42 = a5;
  v21(v16, a5, v13, v18);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Sequence.makeIterator()();
  v22 = *(v17 + 44);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.endIndex.getter();
  v23 = 0.0;
  v24 = 0.0;
  if (*&v20[v22] != v44[0])
  {
    v25 = (v10 + 16);
    v26 = (v10 + 8);
    do
    {
      v27 = dispatch thunk of Collection.subscript.read();
      (*v25)(v12);
      v27(v44, 0);
      dispatch thunk of Collection.formIndex(after:)();
      static ProposedViewSize.zero.getter();
      LOBYTE(v44[0]) = v28 & 1;
      LOBYTE(v43) = v29 & 1;
      LayoutSubview.sizeThatFits(_:)();
      v31 = v30;
      v33 = v32;
      (*v26)(v12, v9);
      if (v24 <= v31)
      {
        v24 = v31;
      }

      if (v23 <= v33)
      {
        v23 = v33;
      }

      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v20[v22] != v44[0]);
  }

  outlined destroy of TaskPriority?(v20, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v34 = dispatch thunk of Collection.distance(from:to:)();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of Collection.distance(from:to:)();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v36 = v41;
    *v41 = v24;
    v36[1] = v24 * v34 + (result - 1) * a7;
  }

  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance PlayIntentButtonStack.SmartHStack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance PlayIntentButtonStack.SmartHStack(a1, a2, a3, a4, a5, a6, a7, a8, a9, &Layout.explicitAlignment(of:in:proposal:subviews:cache:));
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance PlayIntentButtonStack.SmartHStack(a1, a2, a3, a4, a5, a6, a7, a8, a9, &Layout.explicitAlignment(of:in:proposal:subviews:cache:));
}

void (*protocol witness for Animatable.animatableData.modify in conformance PlayIntentButtonStack.SmartHStack(uint64_t *a1))(void *a1)
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
  return protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View;
}

uint64_t protocol witness for View.body.getter in conformance PlayIntentButtonStack@<X0>(_BYTE *a1@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = static Axis.Set.horizontal.getter();
  v8 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v7)
  {
    v8 = Axis.Set.init(rawValue:)();
  }

  *a1 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA05TupleD0VyAA0D0PAAE011dynamicTypeF0yQrqd__SXRd__AA07DynamickF0O5BoundRtd__lFQOyAA15ModifiedContentVyAEy_AA07_LayoutH0Vy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAU06SymbolU0C0T0OGSSAU0stU7WrapperVGGAA06_FixedfP0VG_SNyANGQo__A15_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA16_SizeFittingRootVAA05TupleD0VyAA0D0PAAE011dynamicTypeF0yQrqd__SXRd__AA07DynamickF0O5BoundRtd__lFQOyAA15ModifiedContentVyAEy_AA07_LayoutH0Vy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAU06SymbolU0C0T0OGSSAU0stU7WrapperVGGAA06_FixedfP0VG_SNyANGQo__A15_tGGMR);
  return closure #1 in PlayIntentButtonStack.body.getter(v4, v5, v6, &a1[*(v9 + 44)]);
}

uint64_t EnvironmentValues.playIntentButtonMaterial.getter()
{
  lazy protocol witness table accessor for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t key path getter for EnvironmentValues.playIntentButtonMaterial : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

char *PlayIntentButtonWrapper.makeUIView(context:)()
{
  type metadata accessor for SymbolButton(0);
  v1 = SymbolButton.__allocating_init(intent:)(*v0);
  PlayIntentButtonWrapper.updateUIView(_:context:)(v1);
  return v1;
}

uint64_t PlayIntentButtonWrapper.updateUIView(_:context:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SymbolButton.update(to:)(*v2);
  v25 = v2[32];
  v10 = *(v2 + 3);
  v24 = v10;
  if (v25 != 1)
  {

    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of TaskPriority?(&v24, &_s7SwiftUI11EnvironmentVy09MusicCoreB012SymbolButtonC13MaterialColorOSgGMd, &_s7SwiftUI11EnvironmentVy09MusicCoreB012SymbolButtonC13MaterialColorOSgGMR);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v10) = v23[40];
  }

  SymbolButton.materialColor.setter(v10);
  v13 = v2[1];
  v14 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  outlined init with copy of SymbolButton.Configuration(a1 + v14, v5);
  *(v5 + 184) = v13;
  SymbolButton.setConfiguration(_:animation:updates:)(v5, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  outlined destroy of SymbolButton.Configuration(v5, type metadata accessor for SymbolButton.Configuration);
  outlined init with copy of SymbolButton.Configuration(a1 + v14, v5);
  *(v5 + 24) = 1;
  SymbolButton.setConfiguration(_:animation:updates:)(v5, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  outlined destroy of SymbolButton.Configuration(v5, type metadata accessor for SymbolButton.Configuration);
  v15 = *(v2 + 1);
  v16 = *(v2 + 2);
  v17 = swift_allocObject();
  v18 = *(v2 + 1);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = v2[32];
  v19 = (a1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = partial apply for closure #1 in PlayIntentButtonWrapper.updateUIView(_:context:);
  v19[1] = v17;
  outlined init with copy of TaskPriority?(&v24, v23, &_s7SwiftUI11EnvironmentVy09MusicCoreB012SymbolButtonC13MaterialColorOSgGMd, &_s7SwiftUI11EnvironmentVy09MusicCoreB012SymbolButtonC13MaterialColorOSgGMR);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v15, v16);
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v20, v21);
}

double PlayIntentButtonWrapper.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, int a3, int a4, id a5)
{
  [a5 intrinsicContentSize];
  if ((a2 & 1) == 0)
  {
    if (result > *&a1)
    {
      v8 = result;
    }

    else
    {
      v8 = *&a1;
    }

    if (*&a1 != INFINITY)
    {
      return v8;
    }
  }

  return result;
}

char *protocol witness for UIViewRepresentable.makeUIView(context:) in conformance PlayIntentButtonWrapper()
{
  v3 = *v0;
  type metadata accessor for SymbolButton(0);
  v1 = SymbolButton.__allocating_init(intent:)(v3);
  PlayIntentButtonWrapper.updateUIView(_:context:)(v1);
  return v1;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PlayIntentButtonWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PlayIntentButtonWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance PlayIntentButtonWrapper(uint64_t a1)
{
  lazy protocol witness table accessor for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double View.playIntentButtonMaterial(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance PlayIntentButtonMaterialKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = lazy protocol witness table accessor for type SymbolButton.MaterialColor? and conformance <A> A?();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.playIntentButtonMaterial.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = lazy protocol witness table accessor for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey();
  EnvironmentValues.subscript.getter();
  return EnvironmentValues.playIntentButtonMaterial.modify;
}

uint64_t static PlayIntentLayoutHelper.Configuration.with(_:)(void (*a1)(unsigned __int16 *))
{
  v2 = 513;
  v3 = 0x4030000000000000;
  a1(&v2);
  return v2;
}

uint64_t PlayIntentLayoutHelper.configuration.setter(uint64_t result, double a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

char *PlayIntentLayoutHelper.init()()
{
  type metadata accessor for SymbolButton(0);
  v0 = SymbolButton.__allocating_init(intent:)(0);
  SymbolButton.__allocating_init(intent:)(1);
  return v0;
}

uint64_t PlayIntentLayoutHelper.layout(in:rect:)(void *a1, double *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v7 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2FF0;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  v13 = a3;
  v14 = a4;
  specialized static PlayIntentLayoutHelper.layout(_:in:rect:configuration:)(inited, a1, a2, v7, a6);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t PlaybackIntentDescriptor.configure(for:)(unsigned __int8 a1)
{
  v2 = a1;
  v3 = PlaybackIntentDescriptor.intent.getter();
  [v3 setShuffleMode:v2 == 1];
  [v3 setRepeatMode:0];

  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 36)) = v2 == 2;
  return result;
}

id MPCPlaybackIntent.configure(for:)(char a1)
{
  [v1 setShuffleMode:a1 == 1];

  return [v1 setRepeatMode:0];
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11MusicCoreUI12SymbolButtonC6IntentO_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11MusicCoreUI12SymbolButtonC6IntentOGMd, &_ss23_ContiguousArrayStorageCy11MusicCoreUI12SymbolButtonC6IntentOGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    NewAByxGyFSnySiG_Tgq5_0 = _swiftEmptyArrayStorage;
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      NewAByxGyFSnySiG_Tgq5_0 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_0(NewAByxGyFSnySiG_Tgq5_0);
    }

    v77 = NewAByxGyFSnySiG_Tgq5_0 + 16;
    v78 = *(NewAByxGyFSnySiG_Tgq5_0 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &NewAByxGyFSnySiG_Tgq5_0[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + *v79), (*a3 + *v81), (*a3 + v82), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  NewAByxGyFSnySiG_Tgq5_0 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      NewAByxGyFSnySiG_Tgq5_0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(NewAByxGyFSnySiG_Tgq5_0 + 2) + 1, 1, NewAByxGyFSnySiG_Tgq5_0);
    }

    v31 = *(NewAByxGyFSnySiG_Tgq5_0 + 2);
    v30 = *(NewAByxGyFSnySiG_Tgq5_0 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      NewAByxGyFSnySiG_Tgq5_0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, NewAByxGyFSnySiG_Tgq5_0);
    }

    *(NewAByxGyFSnySiG_Tgq5_0 + 2) = v32;
    v33 = &NewAByxGyFSnySiG_Tgq5_0[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(NewAByxGyFSnySiG_Tgq5_0 + 4);
          v37 = *(NewAByxGyFSnySiG_Tgq5_0 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &NewAByxGyFSnySiG_Tgq5_0[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &NewAByxGyFSnySiG_Tgq5_0[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &NewAByxGyFSnySiG_Tgq5_0[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &NewAByxGyFSnySiG_Tgq5_0[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&NewAByxGyFSnySiG_Tgq5_0[16 * v73 + 32];
        v75 = *&NewAByxGyFSnySiG_Tgq5_0[16 * v35 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v74), (*a3 + *&NewAByxGyFSnySiG_Tgq5_0[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          NewAByxGyFSnySiG_Tgq5_0 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_0(NewAByxGyFSnySiG_Tgq5_0);
        }

        if (v73 >= *(NewAByxGyFSnySiG_Tgq5_0 + 2))
        {
          goto LABEL_100;
        }

        v76 = &NewAByxGyFSnySiG_Tgq5_0[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        _sSa6remove2atxSi_tFSnySiG_Tgq5_0(v35);
        v32 = *(NewAByxGyFSnySiG_Tgq5_0 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &NewAByxGyFSnySiG_Tgq5_0[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &NewAByxGyFSnySiG_Tgq5_0[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &NewAByxGyFSnySiG_Tgq5_0[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

{
  v6 = a3[1];
  if (v6 < 1)
  {
    NewAByxGyFSnySiG_Tgq5_1 = _swiftEmptyArrayStorage;
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
    }

    v77 = NewAByxGyFSnySiG_Tgq5_1 + 16;
    v78 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &NewAByxGyFSnySiG_Tgq5_1[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + *v79), (*a3 + *v81), (*a3 + v82), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  NewAByxGyFSnySiG_Tgq5_1 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_0(0, *(NewAByxGyFSnySiG_Tgq5_1 + 2) + 1, 1, NewAByxGyFSnySiG_Tgq5_1);
    }

    v31 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
    v30 = *(NewAByxGyFSnySiG_Tgq5_1 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_0((v30 > 1), v31 + 1, 1, NewAByxGyFSnySiG_Tgq5_1);
    }

    *(NewAByxGyFSnySiG_Tgq5_1 + 2) = v32;
    v33 = &NewAByxGyFSnySiG_Tgq5_1[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(NewAByxGyFSnySiG_Tgq5_1 + 4);
          v37 = *(NewAByxGyFSnySiG_Tgq5_1 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &NewAByxGyFSnySiG_Tgq5_1[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &NewAByxGyFSnySiG_Tgq5_1[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &NewAByxGyFSnySiG_Tgq5_1[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &NewAByxGyFSnySiG_Tgq5_1[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v73 + 32];
        v75 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v35 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + v74), (*a3 + *&NewAByxGyFSnySiG_Tgq5_1[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
        }

        if (v73 >= *(NewAByxGyFSnySiG_Tgq5_1 + 2))
        {
          goto LABEL_100;
        }

        v76 = &NewAByxGyFSnySiG_Tgq5_1[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        _sSa6remove2atxSi_tFSnySiG_Tgq5_1(v35);
        v32 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &NewAByxGyFSnySiG_Tgq5_1[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &NewAByxGyFSnySiG_Tgq5_1[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &NewAByxGyFSnySiG_Tgq5_1[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t _sSa6remove2atxSi_tFSnySiG_Tgq5_0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_0(v3);
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

void *specialized Sequence._copySequenceContents(initializing:)(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of SymbolButton.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double outlined consume of SymbolButton.Material?(void *a1, void *a2, void *a3)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_10039043C@<X0>(_BYTE *a1@<X8>)
{
  lazy protocol witness table accessor for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey()
{
  result = lazy protocol witness table cache variable for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey;
  if (!lazy protocol witness table cache variable for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayIntentButtonMaterialKey and conformance PlayIntentButtonMaterialKey);
  }

  return result;
}

uint64_t sub_10039052C()
{
  if (*(v0 + 24))
  {
  }

  outlined consume of Environment<Bool>.Content(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in PlayIntentButtonWrapper.updateUIView(_:context:)()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1(*(v0 + 16));
  }

  return result;
}

uint64_t specialized PlayIntentButtonStack.SmartHStack.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, double *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v39 = type metadata accessor for ViewDimensions();
  v36 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LayoutSubview();
  v35 = *(v15 - 8);
  __chkstk_darwin();
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LayoutSubviews();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR) - 8;
  __chkstk_darwin();
  v24 = &v35 - v23;
  v43.origin.x = a3;
  v43.origin.y = a4;
  v43.size.width = a5;
  v43.size.height = a6;
  CGRectGetWidth(v43);
  v40 = a2;
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v37 = dispatch thunk of Collection.distance(from:to:)();
  (*(v19 + 16))(v21, a1, v18);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(&lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Sequence.makeIterator()();
  v25 = *(v22 + 44);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v24[v25] != v41[0])
  {
    ++v36;
    v37 = (v35 + 2);
    ++v35;
    v26 = a3;
    do
    {
      v27 = dispatch thunk of Collection.subscript.read();
      (*v37)(v17);
      v27(v41, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v44.origin.x = a3;
      v44.origin.y = a4;
      v44.size.width = a5;
      v44.size.height = a6;
      CGRectGetHeight(v44);
      static UnitPoint.topLeading.getter();
      LOBYTE(v41[0]) = 0;
      v42 = 0;
      LayoutSubview.place(at:anchor:proposal:)();
      LOBYTE(v41[0]) = 0;
      v42 = 0;
      v28 = v18;
      v29 = v15;
      v30 = v38;
      LayoutSubview.dimensions(in:)();
      ViewDimensions.width.getter();
      v32 = v31;
      v33 = v30;
      v15 = v29;
      v18 = v28;
      (*v36)(v33, v39);
      (*v35)(v17, v15);
      v26 = v26 + v32 + a7;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v24[v25] != v41[0]);
  }

  return outlined destroy of TaskPriority?(v24, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMR);
}

void specialized static PlayIntentLayoutHelper.layout(_:in:rect:configuration:)(unint64_t a1, void *a2, double *a3, int a4, double a5)
{
  v76 = a5;
  LODWORD(v74) = a4;
  v5 = a3;
  v81 = a2;
  v8 = *a3;
  v7 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v12 = (&v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    v79 = *&v5;
    v80 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v15 + 16))
        {
          goto LABEL_15;
        }

        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      v5 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ([v16 isHidden])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v15 = v80;
      }

      ++v14;
      if (v5 == i)
      {
        v18 = v82;
        *&v5 = v79;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_18:
  v19 = v81;
  [v81 bounds];
  v79 = v21;
  v80 = v20;
  v77 = v23;
  v78 = v22;
  v24 = [v19 traitCollection];
  [v24 displayScale];

  v75 = [v19 effectiveUserInterfaceLayoutDirection];
  [v19 layoutMargins];
  v26 = v25;
  Width = v27;
  v30 = v29;
  LODWORD(v31) = v18 < 0 || (v18 & 0x4000000000000000) != 0;
  if (v31 == 1)
  {
    goto LABEL_90;
  }

  v32 = *(v18 + 16);
  v33 = v32 - 1;
  if (!__OFSUB__(v32, 1))
  {
    while (1)
    {
      v72 = v33;
      if (v5[4])
      {
        v8 = UIEdgeInsetsInsetRect(*&v80, v79, v78, v77, v26, Width);
        v7 = v34;
        v10 = v35;
        v9 = v36;
      }

      if (v31)
      {
        *&v5 = COERCE_DOUBLE(_CocoaArrayWrapper.endIndex.getter());
      }

      else
      {
        v5 = *(v18 + 16);
      }

      v73 = v32;
      if (*&v5 == 0.0)
      {
        break;
      }

      v37 = 0;
      Width = 0.0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v37 >= *(v18 + 16))
          {
            goto LABEL_85;
          }

          v38 = *(v18 + 8 * v37 + 32);
        }

        v31 = v38;
        v39 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
          break;
        }

        v40 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
        swift_beginAccess();
        outlined init with copy of SymbolButton.Configuration(v31 + v40, v12);
        *(v12 + 184) = 0;
        SymbolButton.setConfiguration(_:animation:updates:)(v12, 0, 0, 0, 1, _swiftEmptyArrayStorage);
        outlined destroy of SymbolButton.Configuration(v12, type metadata accessor for SymbolButton.Configuration);
        [v31 intrinsicContentSize];
        v26 = v41;
        CGFloat.ceilingValue(scale:)();
        Width = Width + v42;
        CGFloat.ceilingValue(scale:)();
        v44 = v43;

        ++v37;
        if (v39 == v5)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      v73 = v30;
      v70 = _CocoaArrayWrapper.endIndex.getter();
      v30 = v73;
      v32 = v70;
      v33 = v70 - 1;
      if (__OFSUB__(v70, 1))
      {
        goto LABEL_92;
      }
    }

    Width = 0.0;
    v44 = 0.0;
LABEL_38:
    v45 = LOBYTE(v74);
    v46 = BYTE1(v74);
    v47 = (v72 & ~(v72 >> 63)) * v76;
    if (BYTE1(v74))
    {
      v48 = v73;
      if (BYTE1(v74) == 1)
      {
        v49 = 0;
        Width = v47 + v44 * v73;
      }

      else
      {
        v83.origin.x = v8;
        v83.origin.y = v7;
        v83.size.width = v10;
        v83.size.height = v9;
        CGRectGetWidth(v83);
        CGFloat.ceilingValue(scale:)();
        v44 = v50;
        v84.origin.x = v8;
        v84.origin.y = v7;
        v84.size.width = v10;
        v84.size.height = v9;
        Width = CGRectGetWidth(v84);
        v49 = 0;
      }
    }

    else
    {
      Width = v47 + Width;
      v49 = 1;
      v44 = 0.0;
      v48 = v73;
    }

    v85.origin.x = v8;
    v85.origin.y = v7;
    v85.size.width = v10;
    v85.size.height = v9;
    v51 = Width - CGRectGetWidth(v85);
    if (v51 < 0.0)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v51;
    }

    if ((v49 & 1) == 0 && v26 > 0.0)
    {
      CGFloat.ceilingValue(scale:)();
      v44 = v44 - v52;
      v86.origin.x = v8;
      v86.origin.y = v7;
      v86.size.width = v10;
      v86.size.height = v9;
      Width = CGRectGetWidth(v86);
    }

    if (v46 != 2 && v45)
    {
      if (v45 != 1)
      {
        v91.origin.x = v8;
        v91.origin.y = v7;
        v91.size.width = v10;
        v91.size.height = v9;
        v8 = CGRectGetMaxX(v91) - Width;
        if (*&v5 != 0.0)
        {
          goto LABEL_54;
        }

LABEL_83:

        return;
      }

      v87.origin.x = v8;
      v87.origin.y = v7;
      v87.size.width = v10;
      v87.size.height = v9;
      CGRectGetWidth(v87);
      CGFloat.floorValue(scale:)();
      v8 = v8 + v53;
    }

    if (*&v5 != 0.0)
    {
LABEL_54:
      v31 = 0;
      v54 = v48;
      v55 = 0;
      v56 = v18 & 0xC000000000000001;
      v74 = v26 / v54;
      while (1)
      {
        if (v56)
        {
          v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= *(v18 + 16))
          {
            goto LABEL_87;
          }

          v58 = *(v18 + 8 * v31 + 32);
        }

        v59 = v58;
        v60 = (v31 + 1);
        if (__OFADD__(v31, 1))
        {
          goto LABEL_86;
        }

        v61 = [v58 superview];
        if (!v61 || (v62 = v61, v61, v62 != v81))
        {
          [v81 addSubview:v59];
        }

        v26 = v44;
        if (v49)
        {
          [v59 intrinsicContentSize];
          v64 = v63;
          CGFloat.ceilingValue(scale:)();
          v26 = v64 - v65;
        }

        CGRect.applyingLayoutDirection(_:inBounds:)();
        [v59 setFrame:?];
        v89.origin.x = v8;
        v89.origin.y = v7;
        v89.size.width = v26;
        v89.size.height = v9;
        CGRectGetWidth(v89);
        v90.origin.x = v8;
        v90.origin.y = v7;
        v90.size.width = v26;
        v90.size.height = v9;
        v10 = CGRectGetWidth(v90);
        if (v55)
        {

          if (v60 == v5)
          {
            if (v73 < 2)
            {
              goto LABEL_83;
            }

LABEL_74:
            v66 = 0;
            while (1)
            {
              if (v56)
              {
                v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v66 >= *(v18 + 16))
                {
                  goto LABEL_89;
                }

                v67 = *(v18 + 8 * v66 + 32);
              }

              v31 = v67;
              v68 = (v66 + 1);
              if (__OFADD__(v66, 1))
              {
                goto LABEL_88;
              }

              v69 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
              swift_beginAccess();
              outlined init with copy of SymbolButton.Configuration(v31 + v69, v12);
              *(v12 + 184) = 1;
              SymbolButton.setConfiguration(_:animation:updates:)(v12, 0, 0, 0, 1, _swiftEmptyArrayStorage);

              outlined destroy of SymbolButton.Configuration(v12, type metadata accessor for SymbolButton.Configuration);
              ++v66;
              if (v68 == v5)
              {
                goto LABEL_83;
              }
            }
          }

          v55 = 1;
        }

        else
        {
          [v59 intrinsicContentSize];
          Width = v57;
          v88.origin.x = v8;
          v88.origin.y = v7;
          v88.size.width = v26;
          v88.size.height = v9;
          v26 = CGRectGetWidth(v88);

          v55 = v26 < Width;
          if (v60 == v5)
          {
            if (v26 >= Width || v73 <= 1)
            {
              goto LABEL_83;
            }

            goto LABEL_74;
          }
        }

        v8 = v8 + v10 + v76;
        ++v31;
      }
    }

    goto LABEL_83;
  }

LABEL_92:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type SymbolButton.Intent and conformance SymbolButton.Intent()
{
  result = lazy protocol witness table cache variable for type SymbolButton.Intent and conformance SymbolButton.Intent;
  if (!lazy protocol witness table cache variable for type SymbolButton.Intent and conformance SymbolButton.Intent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Intent and conformance SymbolButton.Intent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SymbolButton.Intent and conformance SymbolButton.Intent;
  if (!lazy protocol witness table cache variable for type SymbolButton.Intent and conformance SymbolButton.Intent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.Intent and conformance SymbolButton.Intent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolButton.MaterialColor and conformance SymbolButton.MaterialColor()
{
  result = lazy protocol witness table cache variable for type SymbolButton.MaterialColor and conformance SymbolButton.MaterialColor;
  if (!lazy protocol witness table cache variable for type SymbolButton.MaterialColor and conformance SymbolButton.MaterialColor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.MaterialColor and conformance SymbolButton.MaterialColor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper()
{
  result = lazy protocol witness table cache variable for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper;
  if (!lazy protocol witness table cache variable for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper;
  if (!lazy protocol witness table cache variable for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlayIntentLayoutHelper.Alignment and conformance PlayIntentLayoutHelper.Alignment()
{
  result = lazy protocol witness table cache variable for type PlayIntentLayoutHelper.Alignment and conformance PlayIntentLayoutHelper.Alignment;
  if (!lazy protocol witness table cache variable for type PlayIntentLayoutHelper.Alignment and conformance PlayIntentLayoutHelper.Alignment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayIntentLayoutHelper.Alignment and conformance PlayIntentLayoutHelper.Alignment);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlayIntentLayoutHelper.Distribution and conformance PlayIntentLayoutHelper.Distribution()
{
  result = lazy protocol witness table cache variable for type PlayIntentLayoutHelper.Distribution and conformance PlayIntentLayoutHelper.Distribution;
  if (!lazy protocol witness table cache variable for type PlayIntentLayoutHelper.Distribution and conformance PlayIntentLayoutHelper.Distribution)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayIntentLayoutHelper.Distribution and conformance PlayIntentLayoutHelper.Distribution);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11MusicCoreUI12SymbolButtonC6IntentOIegy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for PlayIntentButtonWrapper(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PlayIntentButtonWrapper(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayIntentLayoutHelper.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10039167C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy09MusicCoreB012SymbolButtonC13MaterialColorOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy09MusicCoreB012SymbolButtonC13MaterialColorOSgGMR);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SymbolButton.MaterialColor?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy09MusicCoreB012SymbolButtonC13MaterialColorOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy09MusicCoreB012SymbolButtonC13MaterialColorOSgGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type PlayIntentButtonStack.SmartHStack and conformance PlayIntentButtonStack.SmartHStack()
{
  result = lazy protocol witness table cache variable for type PlayIntentButtonStack.SmartHStack and conformance PlayIntentButtonStack.SmartHStack;
  if (!lazy protocol witness table cache variable for type PlayIntentButtonStack.SmartHStack and conformance PlayIntentButtonStack.SmartHStack)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlayIntentButtonStack.SmartHStack and conformance PlayIntentButtonStack.SmartHStack);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SymbolButton.MaterialColor? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type SymbolButton.MaterialColor? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type SymbolButton.MaterialColor? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11MusicCoreUI12SymbolButtonC13MaterialColorOSgMd, &_s11MusicCoreUI12SymbolButtonC13MaterialColorOSgMR);
    lazy protocol witness table accessor for type SymbolButton.MaterialColor and conformance SymbolButton.MaterialColor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SymbolButton.MaterialColor? and conformance <A> A?);
  }

  return result;
}

uint64_t sub_100391878()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PlayIntentButtonStack.stack(iconOnly:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *a1;
  KeyPath = swift_getKeyPath();
  *a2 = v7;
  *(a2 + 1) = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = 0;
}

uint64_t lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAJ06SymbolN0C0M0OGSSAJ0lmN7WrapperVGGAA010_FixedSizeH0VGMd, &_s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAJ06SymbolN0C0M0OGSSAJ0lmN7WrapperVGGAA010_FixedSizeH0VGMR);
    lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>> and conformance <> _VariadicView.Tree<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>> and conformance <> _VariadicView.Tree<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAH06SymbolL0C0K0OGSSAH0jkL7WrapperVGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGAA7ForEachVySayAH06SymbolL0C0K0OGSSAH0jkL7WrapperVGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _LayoutRoot<PlayIntentButtonStack.SmartHStack> and conformance _LayoutRoot<A>, &_s7SwiftUI11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGMd, &_s7SwiftUI11_LayoutRootVy09MusicCoreB021PlayIntentButtonStackV11SmartHStack33_2727121886EA4678BFC0296976ECCDEBLLVGMR, &protocol conformance descriptor for _LayoutRoot<A>);
    lazy protocol witness table accessor for type ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper> and conformance <> ForEach<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<_LayoutRoot<PlayIntentButtonStack.SmartHStack>, ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay09MusicCoreB012SymbolButtonC6IntentOGSSAD04PlayiH7WrapperVGMd, &_s7SwiftUI7ForEachVySay09MusicCoreB012SymbolButtonC6IntentOGSSAD04PlayiH7WrapperVGMR);
    lazy protocol witness table accessor for type PlayIntentButtonWrapper and conformance PlayIntentButtonWrapper();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[SymbolButton.Intent], String, PlayIntentButtonWrapper> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t outlined init with take of SymbolButton.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SymbolButton.Configuration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *PlaylistCovers.CarouselItem.pageIndicatorImage.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

__n128 PlaylistCovers.CarouselItem.init(itemType:pageIndicatorImage:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = a1[5];
  v25 = a1[4];
  v26 = v4;
  v5 = a1[7];
  v27 = a1[6];
  v28 = v5;
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  v7 = a1[3];
  v23 = a1[2];
  v24 = v7;
  v13 = v22[0];
  v14 = v6;
  v15 = v23;
  v16 = v7;
  v17 = v25;
  v18 = v4;
  v19 = v27;
  v20 = v5;
  v21 = a2;
  v29 = a2;
  outlined init with copy of PlaylistCovers.CarouselItem(&v13, v12);
  outlined destroy of PlaylistCovers.CarouselItem(v22);
  v8 = v20;
  a3[6] = v19;
  a3[7] = v8;
  a3[8].n128_u64[0] = v21;
  v9 = v16;
  a3[2] = v15;
  a3[3] = v9;
  v10 = v18;
  a3[4] = v17;
  a3[5] = v10;
  result = v14;
  *a3 = v13;
  a3[1] = result;
  return result;
}

uint64_t static PlaylistCovers.CarouselItem.CarouselItemType.__derived_enum_equals(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v39 = a1[4];
  v40 = v3;
  v4 = a1[7];
  v41 = a1[6];
  v42 = v4;
  v5 = a1[1];
  v35 = *a1;
  v36 = v5;
  v6 = a1[3];
  v37 = a1[2];
  v38 = v6;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v35) == 1)
  {
    v7 = a2[5];
    v47 = a2[4];
    v48 = v7;
    v8 = a2[7];
    v49 = a2[6];
    v50 = v8;
    v9 = a2[1];
    v43 = *a2;
    v44 = v9;
    v10 = a2[3];
    v45 = a2[2];
    v46 = v10;
    v11 = _s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v43) == 1;
  }

  else
  {
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v50 = v42;
    v43 = v35;
    v44 = v36;
    v45 = v37;
    v46 = v38;
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v21 = a2[2];
    v22 = v14;
    v19 = v12;
    v20 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v25 = a2[6];
    v26 = v17;
    v23 = v15;
    v24 = v16;
    if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v19) == 1)
    {
      v11 = 0;
    }

    else
    {
      v31 = v23;
      v32 = v24;
      v33 = v25;
      v34 = v26;
      v27 = v19;
      v28 = v20;
      v29 = v21;
      v30 = v22;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)();
    }
  }

  return v11 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PlaylistCovers.CarouselItem.CarouselItemType(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v45 = a1[4];
  v46 = v3;
  v4 = a1[7];
  v47 = a1[6];
  v48 = v4;
  v5 = a1[1];
  v41 = *a1;
  v42 = v5;
  v6 = a1[3];
  v43 = a1[2];
  v44 = v6;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v41) == 1)
  {
    v7 = a2[5];
    v37 = a2[4];
    v38 = v7;
    v8 = a2[7];
    v39 = a2[6];
    v40 = v8;
    v9 = a2[1];
    v33 = *a2;
    v34 = v9;
    v10 = a2[3];
    v35 = a2[2];
    v36 = v10;
    v11 = _s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v33) == 1;
  }

  else
  {
    v29 = v45;
    v30 = v46;
    v31 = v47;
    v32 = v48;
    v25 = v41;
    v26 = v42;
    v27 = v43;
    v28 = v44;
    v12 = a2[7];
    v23 = a2[6];
    v24 = v12;
    v13 = a2[5];
    v21 = a2[4];
    v22 = v13;
    v14 = a2[3];
    v19 = a2[2];
    v20 = v14;
    v15 = a2[1];
    v17 = *a2;
    v18 = v15;
    if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v17) == 1)
    {
      v11 = 0;
    }

    else
    {
      v37 = v21;
      v38 = v22;
      v39 = v23;
      v40 = v24;
      v33 = v17;
      v34 = v18;
      v35 = v19;
      v36 = v20;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)();
    }
  }

  return v11 & 1;
}

uint64_t PlaylistCovers.CarouselItem.id.getter()
{
  v1 = v0[5];
  v7[4] = v0[4];
  v7[5] = v1;
  v2 = v0[7];
  v7[6] = v0[6];
  v7[7] = v2;
  v3 = v0[1];
  v7[0] = *v0;
  v7[1] = v3;
  v4 = v0[3];
  v7[2] = v0[2];
  v7[3] = v4;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(v7) == 1)
  {
    return 0x6369506F746F6850;
  }

  v5 = *(&v7[0] + 1);

  return v5;
}

double PlaylistCovers.CarouselItem.hash(into:)(uint64_t a1)
{
  v2 = v1[5];
  v7[4] = v1[4];
  v7[5] = v2;
  v3 = v1[7];
  v7[6] = v1[6];
  v7[7] = v3;
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  v5 = v1[3];
  v7[2] = v1[2];
  v7[3] = v5;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(v7) != 1)
  {
  }

  String.hash(into:)();

  return result;
}

uint64_t static PlaylistCovers.CarouselItem.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v3 = a1[5];
  v19[4] = a1[4];
  v19[5] = v3;
  v4 = a1[7];
  v19[6] = a1[6];
  v19[7] = v4;
  v5 = a1[1];
  v19[0] = *a1;
  v19[1] = v5;
  v6 = a1[3];
  v19[2] = a1[2];
  v19[3] = v6;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(v19) == 1)
  {
    v7 = a2[5];
    v24 = a2[4];
    v25 = v7;
    v8 = a2[7];
    v26 = a2[6];
    v27 = v8;
    v9 = a2[1];
    v20 = *a2;
    v21 = v9;
    v10 = a2[3];
    v22 = a2[2];
    v23 = v10;
    v11 = _s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v20) == 1;
  }

  else
  {
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v22 = a2[2];
    v23 = v14;
    v20 = v12;
    v21 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v26 = a2[6];
    v27 = v17;
    v24 = v15;
    v25 = v16;
    if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v20) == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)();
    }
  }

  return v11 & 1;
}

double PlaylistCovers.CarouselItem.cover.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v25 = v1[4];
  v26 = v3;
  v4 = v1[7];
  v27 = v1[6];
  v28 = v4;
  v5 = v1[1];
  v22[0] = *v1;
  v22[1] = v5;
  v6 = v1[3];
  v23 = v1[2];
  v24 = v6;
  v35 = v27;
  v36 = v4;
  v33 = v25;
  v34 = v3;
  v31 = v23;
  v32 = v6;
  v29 = v22[0];
  v30 = v5;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(&v29) == 1)
  {
    _s9MusicCore23ApplicationCapabilitiesVSgWOi0_(&v37);
  }

  else
  {
    v18 = v33;
    v19 = v34;
    v20 = v35;
    v21 = v36;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    v8 = &v14;
    CFRange.init(_:)(*(&v7 - 1));
    v41 = v18;
    v42 = v19;
    v43 = v20;
    v44 = v21;
    v37 = v14;
    v38 = v15;
    v39 = v16;
    v40 = v17;
  }

  outlined init with copy of PlaylistCovers.CarouselItem.CarouselItemType(v22, &v14);
  v9 = v42;
  a1[4] = v41;
  a1[5] = v9;
  v10 = v44;
  a1[6] = v43;
  a1[7] = v10;
  v11 = v38;
  *a1 = v37;
  a1[1] = v11;
  result = *&v39;
  v13 = v40;
  a1[2] = v39;
  a1[3] = v13;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.picker.getter@<Q0>(__n128 *a1@<X8>)
{
  _s9MusicCore23ApplicationCapabilitiesVSgWOi0_(&v9);
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  v26[4] = v13;
  v26[5] = v14;
  v26[6] = v15;
  v26[7] = v16;
  v26[0] = v9;
  v26[1] = v10;
  v26[2] = v11;
  v26[3] = v12;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v3;
  v27 = v3;
  outlined init with copy of PlaylistCovers.CarouselItem(&v17, v8);
  outlined destroy of PlaylistCovers.CarouselItem(v26);
  v4 = v24;
  a1[6] = v23;
  a1[7] = v4;
  a1[8].n128_u64[0] = v25;
  v5 = v20;
  a1[2] = v19;
  a1[3] = v5;
  v6 = v22;
  a1[4] = v21;
  a1[5] = v6;
  result = v18;
  *a1 = v17;
  a1[1] = result;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.tracksTiled(image:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v21[-v8];
  v10 = a1;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v5 + 16))(v7, v9, v4);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.module;
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v14 = v13;
  (*(v5 + 8))(v9, v4);
  v15 = AccessibilityIdentifier.playlistEditorMetadataArtwork4Up.unsafeMutableAddressor();
  PlaylistCovers.Cover.init(image:id:accessibilityLabel:accessibilityIdentifier:)(v10, 0x6954736B63617254, 0xEB0000000064656CLL, v12, v14, *v15, v15[1], v15[2], &v22, v15[3]);
  v16.location = &v22;
  CFRange.init(_:)(v16);
  v39[4] = v26;
  v39[5] = v27;
  v39[6] = v28;
  v39[7] = v29;
  v39[0] = v22;
  v39[1] = v23;
  v39[2] = v24;
  v39[3] = v25;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v38 = 0;
  v40 = 0;

  outlined init with copy of PlaylistCovers.CarouselItem(&v30, v21);
  outlined destroy of PlaylistCovers.CarouselItem(v39);
  v17 = v37;
  *(a2 + 96) = v36;
  *(a2 + 112) = v17;
  *(a2 + 128) = v38;
  v18 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v18;
  v19 = v35;
  *(a2 + 64) = v34;
  *(a2 + 80) = v19;
  result = v31;
  *a2 = v30;
  *(a2 + 16) = result;
  return result;
}

Swift::Int PlaylistCovers.CarouselItem.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(v6) != 1)
  {
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Identifiable.id.getter in conformance PlaylistCovers.CarouselItem(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v9[5] = v3;
  v4 = v1[7];
  v9[6] = v1[6];
  v9[7] = v4;
  v5 = v1[1];
  v9[0] = *v1;
  v9[1] = v5;
  v6 = v1[3];
  v9[2] = v1[2];
  v9[3] = v6;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(v9) == 1)
  {
    v7 = 0xEB0000000072656BLL;
    v8 = 0x6369506F746F6850;
  }

  else
  {
    v8 = *(&v9[0] + 1);
  }

  *a1 = v8;
  a1[1] = v7;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PlaylistCovers.CarouselItem(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = v1[5];
  v7[4] = v1[4];
  v7[5] = v2;
  v3 = v1[7];
  v7[6] = v1[6];
  v7[7] = v3;
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  v5 = v1[3];
  v7[2] = v1[2];
  v7[3] = v5;
  if (_s9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeOWOg(v7) != 1)
  {
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 24) = a1;
  return _swift_task_switch(static PlaylistCovers.carouselItems(from:playlistTitle:size:), 0, 0);
}

uint64_t static PlaylistCovers.carouselItems(from:playlistTitle:size:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtMd, &_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtMR);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v5;
  v7[3] = v2;
  v7[4] = v1;
  v7[5] = v4;
  v7[6] = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemVGMd, &_sSay9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemVGMR);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = static PlaylistCovers.carouselItems(from:playlistTitle:size:);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v6, v8, 0, 0, &async function pointer to partial apply for closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:), v7, v6);
}

{

  return _swift_task_switch(static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:), 0, 0);
}

uint64_t closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 1728) = a5;
  *(v7 + 1720) = a4;
  *(v7 + 1712) = a7;
  *(v7 + 1704) = a6;
  *(v7 + 1696) = a3;
  *(v7 + 1688) = a2;
  *(v7 + 1680) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  *(v7 + 1736) = swift_task_alloc();
  *(v7 + 1744) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVy9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCt_GMd, &_sScG8IteratorVy9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCt_GMR);
  *(v7 + 1752) = v8;
  *(v7 + 1760) = *(v8 - 8);
  *(v7 + 1768) = swift_task_alloc();

  return _swift_task_switch(closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:), 0, 0);
}

uint64_t closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)()
{
  v1 = *(v0 + 1696);
  v2 = *(v1 + 16);
  *(v0 + 1776) = v2;
  if (v2)
  {
    v3 = (v0 + 1280);
    v36 = **(v0 + 1688);
    v4 = (v1 + 32);
    v5 = type metadata accessor for TaskPriority();
    v6 = *(v5 - 8);
    v35 = *(v6 + 56);
    v34 = (v6 + 48);
    v33 = (v6 + 8);
    while (1)
    {
      v7 = *(v0 + 1744);
      v8 = *(v0 + 1728);
      v9 = *(v0 + 1720);
      v10 = *(v0 + 1712);
      v11 = *(v0 + 1704);
      v13 = v4[1];
      v12 = v4[2];
      v14 = *v4;
      *(v0 + 1328) = *(v4 + 6);
      *(v0 + 1296) = v13;
      *(v0 + 1312) = v12;
      *v3 = v14;
      v35(v7, 1, 1, v5);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      v17 = *(v0 + 1296);
      *(v15 + 32) = *v3;
      *(v15 + 48) = v17;
      *(v15 + 64) = *(v0 + 1312);
      *(v15 + 80) = *(v0 + 1328);
      *(v15 + 88) = v11;
      *(v15 + 96) = v10;
      *(v15 + 104) = v9;
      *(v15 + 112) = v8;
      outlined init with copy of PlaylistCovers.Cover.Representation(v0 + 1280, v0 + 1448);
      outlined init with copy of PlaylistCovers.Cover.Representation(v0 + 1280, v0 + 1504);

      v18 = swift_taskGroup_addPending();
      v19 = *(v0 + 1744);
      if (v18)
      {
        break;
      }

      outlined destroy of TaskPriority?(v19, &_sScPSgMd_1, &_sScPSgMR_1);

      outlined destroy of PlaylistCovers.Cover.Representation(v0 + 1280);
LABEL_4:
      v4 = (v4 + 56);
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    v20 = *(v0 + 1736);
    _sScPSgWOc_0(v19, v20);
    v21 = (*v34)(v20, 1, v5);
    v22 = *(v0 + 1736);
    if (v21 == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 1736), &_sScPSgMd_1, &_sScPSgMR_1);
      if (*v16)
      {
LABEL_8:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = dispatch thunk of Actor.unownedExecutor.getter();
        v25 = v24;
        swift_unknownObjectRelease();
LABEL_11:
        v26 = swift_allocObject();
        *(v26 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:);
        *(v26 + 24) = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtMd, &_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtMR);
        v27 = v25 | v23;
        if (v25 | v23)
        {
          v27 = v0 + 1616;
          *(v0 + 1616) = 0;
          *(v0 + 1624) = 0;
          *(v0 + 1632) = v23;
          *(v0 + 1640) = v25;
        }

        v28 = *(v0 + 1744);
        *(v0 + 1648) = 1;
        *(v0 + 1656) = v27;
        *(v0 + 1664) = v36;
        swift_task_create();

        outlined destroy of PlaylistCovers.Cover.Representation(v0 + 1280);
        outlined destroy of TaskPriority?(v28, &_sScPSgMd_1, &_sScPSgMR_1);
        goto LABEL_4;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*v33)(v22, v5);
      if (*v16)
      {
        goto LABEL_8;
      }
    }

    v23 = 0;
    v25 = 0;
    goto LABEL_11;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtMd, &_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtMR);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 1784) = _swiftEmptyDictionarySingleton;
  v29 = lazy protocol witness table accessor for type TaskGroup<(PlaylistCovers.Cover.Representation, UIImage)>.Iterator and conformance TaskGroup<A>.Iterator();
  v30 = swift_task_alloc();
  *(v0 + 1792) = v30;
  *v30 = v0;
  v30[1] = closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:);
  v31 = *(v0 + 1752);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 1088, v31, v29);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[221];
    v4 = v2[220];
    v5 = v2[219];

    (*(v4 + 8))(v3, v5);

    v6 = CFRange.init(_:);
  }

  else
  {
    v6 = closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:);
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v1 = (v0 + 1088);
  if (*(v0 + 1096))
  {
    v2 = v0 + 424;
    v3 = (v0 + 960);
    v115 = *(v0 + 1784);
    v4 = *(v0 + 1136);
    *(v0 + 1248) = *(v0 + 1120);
    *(v0 + 1264) = v4;
    v5 = *(v0 + 1104);
    v109 = v0 + 1088;
    v110 = v0 + 1216;
    *(v0 + 1216) = *v1;
    *(v0 + 1232) = v5;
    v6 = *(v0 + 1224);
    v7 = *(v0 + 1232);
    v8 = *(v0 + 1240);
    v9 = *(v0 + 1248);
    v10 = *(v0 + 1256);
    v11 = *(v0 + 1264);
    v114 = *(v0 + 1272);
    *(v0 + 1392) = *(v0 + 1216);
    *(v0 + 1400) = v6;
    *(v0 + 1408) = v7;
    *(v0 + 1416) = v8;
    *(v0 + 1424) = v9;
    *(v0 + 1432) = v10;
    *(v0 + 1440) = v11;
    v12 = v6;
    v13 = v7;
    v112 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v114;
    v113 = v12;
    v108 = v13;
    v111 = v112;
    v18 = v14;
    v19 = v0 + 1392;
    v107 = v18;
    v20 = v15;
    v21 = v16;
    PlaylistCovers.Cover.init(image:representation:)(v17, (v0 + 1392), v0 + 960);
    v22 = *(v0 + 1040);
    *(v0 + 896) = *(v0 + 1024);
    *(v0 + 912) = v22;
    v23 = *(v0 + 1072);
    *(v0 + 928) = *(v0 + 1056);
    *(v0 + 944) = v23;
    v24 = *(v0 + 976);
    *(v0 + 832) = *(v0 + 960);
    *(v0 + 848) = v24;
    v25 = *(v0 + 1008);
    *(v0 + 864) = *(v0 + 992);
    *(v0 + 880) = v25;
    v26.location = v0 + 832;
    CFRange.init(_:)(v26);
    v27 = *(v0 + 896);
    v28 = *(v0 + 912);
    *(v0 + 352) = v27;
    *(v0 + 368) = v28;
    v29 = *(v0 + 928);
    v30 = *(v0 + 944);
    *(v0 + 384) = v29;
    *(v0 + 400) = v30;
    v31 = *(v0 + 832);
    v32 = *(v0 + 848);
    *(v0 + 288) = v31;
    *(v0 + 304) = v32;
    v33 = *(v0 + 864);
    v34 = *(v0 + 880);
    *(v0 + 320) = v33;
    *(v0 + 336) = v34;
    *(v0 + 424) = v31;
    *(v0 + 440) = v32;
    *(v0 + 456) = v33;
    *(v0 + 472) = v34;
    *(v0 + 488) = v27;
    *(v0 + 504) = v28;
    *(v0 + 520) = v29;
    *(v0 + 536) = v30;
    *(v0 + 552) = 0;
    *(v0 + 416) = 0;
    outlined init with copy of PlaylistCovers.CarouselItem(v0 + 424, v0 + 560);
    outlined destroy of PlaylistCovers.CarouselItem(v0 + 288);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 1672) = v115;
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v0 + 1392);
    v38 = *(v115 + 16);
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      LOBYTE(v12) = v37;
      v3 = (v0 + 1672);
      if (*(*(v0 + 1784) + 24) < v41)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, isUniquelyReferenced_nonNull_native);
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v19);
        if ((v12 & 1) != (v42 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_24:
        if (v12)
        {
LABEL_25:
          v71 = *v3;
          v72 = *(*v3 + 56) + 136 * v36;
          *(v0 + 696) = *v72;
          v73 = *(v72 + 64);
          v75 = *(v72 + 16);
          v74 = *(v72 + 32);
          *(v0 + 744) = *(v72 + 48);
          *(v0 + 760) = v73;
          *(v0 + 712) = v75;
          *(v0 + 728) = v74;
          v77 = *(v72 + 96);
          v76 = *(v72 + 112);
          v78 = *(v72 + 80);
          *(v0 + 824) = *(v72 + 128);
          *(v0 + 792) = v77;
          *(v0 + 808) = v76;
          *(v0 + 776) = v78;
          *v72 = *v2;
          v79 = *(v2 + 16);
          v80 = *(v2 + 32);
          v81 = *(v2 + 64);
          *(v72 + 48) = *(v2 + 48);
          *(v72 + 64) = v81;
          *(v72 + 16) = v79;
          *(v72 + 32) = v80;
          v82 = *(v2 + 80);
          v83 = *(v2 + 96);
          v84 = *(v2 + 112);
          *(v72 + 128) = *(v2 + 128);
          *(v72 + 96) = v83;
          *(v72 + 112) = v84;
          *(v72 + 80) = v82;
          outlined destroy of PlaylistCovers.CarouselItem(v0 + 696);

          outlined destroy of TaskPriority?(v110, &_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtSgMd, &_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtSgMR);
          goto LABEL_36;
        }

LABEL_34:
        v71 = *v3;
        *(*v3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
        v89 = v71[6] + 56 * v36;
        v90 = *v19;
        v91 = *(v19 + 16);
        v92 = *(v19 + 32);
        *(v89 + 48) = *(v19 + 48);
        *(v89 + 16) = v91;
        *(v89 + 32) = v92;
        *v89 = v90;
        v93 = v71[7] + 136 * v36;
        *v93 = *v2;
        v94 = *(v2 + 16);
        v95 = *(v2 + 32);
        v96 = *(v2 + 64);
        *(v93 + 48) = *(v2 + 48);
        *(v93 + 64) = v96;
        *(v93 + 16) = v94;
        *(v93 + 32) = v95;
        v97 = *(v2 + 80);
        v98 = *(v2 + 96);
        v99 = *(v2 + 112);
        *(v93 + 128) = *(v2 + 128);
        *(v93 + 96) = v98;
        *(v93 + 112) = v99;
        *(v93 + 80) = v97;

        v100 = outlined destroy of TaskPriority?(v110, &_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtSgMd, &_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtSgMR);
        v103 = v71[2];
        v40 = __OFADD__(v103, 1);
        v104 = v103 + 1;
        if (v40)
        {
          __break(1u);
          return dispatch thunk of AsyncIteratorProtocol.next()(v100, v101, v102);
        }

        v71[2] = v104;
LABEL_36:
        *(v0 + 1784) = v71;
        v105 = lazy protocol witness table accessor for type TaskGroup<(PlaylistCovers.Cover.Representation, UIImage)>.Iterator and conformance TaskGroup<A>.Iterator();
        v106 = swift_task_alloc();
        *(v0 + 1792) = v106;
        *v106 = v0;
        v106[1] = closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:);
        v101 = *(v0 + 1752);
        v100 = v109;
        v102 = v105;

        return dispatch thunk of AsyncIteratorProtocol.next()(v100, v101, v102);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }
    }

    v87 = v21;
    v88 = v36;
    specialized _NativeDictionary.copy()();
    v36 = v88;
    v21 = v87;
    if (v12)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v44 = *(v0 + 1776);
  (*(*(v0 + 1760) + 8))(*(v0 + 1768), *(v0 + 1752));
  v45 = *(v0 + 1104);
  *(v0 + 1152) = *v1;
  *(v0 + 1168) = v45;
  v46 = *(v0 + 1136);
  *(v0 + 1184) = *(v0 + 1120);
  *(v0 + 1200) = v46;
  v36 = outlined destroy of TaskPriority?(v0 + 1152, &_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtSgMd, &_s9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCtSgMR);
  if (!v44)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v3 = 0;
  v19 = v0 + 1336;
  v2 = *(v0 + 1784);
  v17 = (*(v0 + 1696) + 32);
  v21 = _swiftEmptyArrayStorage;
  v20 = 56;
  do
  {
    v47 = *(v0 + 1776);
    v48 = &v17[56 * v3];
    v12 = v3;
    while (1)
    {
      if (v12 >= v47)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v49 = *v48;
      v50 = *(v48 + 1);
      v51 = *(v48 + 2);
      *(v0 + 1384) = *(v48 + 6);
      *(v0 + 1352) = v50;
      *(v0 + 1368) = v51;
      *v19 = v49;
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_31;
      }

      if (*(v2 + 16))
      {
        break;
      }

LABEL_11:
      ++v12;
      v48 += 56;
      if (v3 == v47)
      {
        goto LABEL_27;
      }
    }

    outlined init with copy of PlaylistCovers.Cover.Representation(v0 + 1336, v0 + 1560);
    v52 = specialized __RawDictionaryStorage.find<A>(_:)(v0 + 1336);
    if ((v53 & 1) == 0)
    {
      v36 = outlined destroy of PlaylistCovers.Cover.Representation(v0 + 1336);
      v47 = *(v0 + 1776);
      goto LABEL_11;
    }

    v54 = *(v2 + 56) + 136 * v52;
    *(v0 + 16) = *v54;
    v55 = *(v54 + 16);
    v56 = *(v54 + 32);
    v57 = *(v54 + 64);
    *(v0 + 64) = *(v54 + 48);
    *(v0 + 80) = v57;
    *(v0 + 32) = v55;
    *(v0 + 48) = v56;
    v58 = *(v54 + 80);
    v59 = *(v54 + 96);
    v60 = *(v54 + 112);
    *(v0 + 144) = *(v54 + 128);
    *(v0 + 112) = v59;
    *(v0 + 128) = v60;
    *(v0 + 96) = v58;
    outlined init with copy of PlaylistCovers.CarouselItem(v0 + 16, v0 + 152);
    outlined destroy of PlaylistCovers.Cover.Representation(v0 + 1336);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    if ((v36 & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
      v21 = v36;
    }

    v62 = v21[2];
    v61 = v21[3];
    if (v62 >= v61 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v21);
      v21 = v36;
    }

    v63 = *(v0 + 1776);
    v21[2] = v62 + 1;
    v64 = &v21[17 * v62];
    *(v64 + 2) = *(v0 + 16);
    v65 = *(v0 + 32);
    v66 = *(v0 + 48);
    v67 = *(v0 + 80);
    *(v64 + 5) = *(v0 + 64);
    *(v64 + 6) = v67;
    *(v64 + 3) = v65;
    *(v64 + 4) = v66;
    v68 = *(v0 + 96);
    v69 = *(v0 + 112);
    v70 = *(v0 + 128);
    v64[20] = *(v0 + 144);
    *(v64 + 8) = v69;
    *(v64 + 9) = v70;
    *(v64 + 7) = v68;
  }

  while (v3 != v63);
LABEL_27:
  v85 = *(v0 + 1680);

  *v85 = v21;

  v86 = *(v0 + 8);

  return v86();
}

uint64_t partial apply for closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v10 = *(v2 + 5);
  v9 = *(v2 + 6);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)(a1, a2, v6, v10, v9, v7, v8);
}

unint64_t lazy protocol witness table accessor for type PlaylistCovers.CarouselItem and conformance PlaylistCovers.CarouselItem()
{
  result = lazy protocol witness table cache variable for type PlaylistCovers.CarouselItem and conformance PlaylistCovers.CarouselItem;
  if (!lazy protocol witness table cache variable for type PlaylistCovers.CarouselItem and conformance PlaylistCovers.CarouselItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaylistCovers.CarouselItem and conformance PlaylistCovers.CarouselItem);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore14PlaylistCoversO5CoverV14RepresentationVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore14PlaylistCoversO0aB2UIE12CarouselItemV0fG4TypeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlaylistCovers.CarouselItem(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaylistCovers.CarouselItem(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaylistCovers.CarouselItem.CarouselItemType(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlaylistCovers.CarouselItem.CarouselItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PlaylistCovers.CarouselItem.CarouselItemType(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t closure #1 in closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 72) = a1;
  *(v8 + 80) = a6;
  return _swift_task_switch(closure #1 in closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:), 0, 0);
}

uint64_t closure #1 in closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)()
{
  v1 = *(v0 + 13);
  v2 = *(v0 + 14);
  v4 = v0[11];
  v3 = v0[12];
  v6 = *(v0 + 9);
  v5 = *(v0 + 10);
  v7 = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 32);
  *(v6 + 48) = *(v5 + 48);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *v6 = v7;
  v10 = *(v5 + 8);
  v11 = *(v5 + 48);
  _sSo29UIGraphicsImageRendererFormatCMa_0();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  outlined init with copy of PlaylistCovers.Cover.Representation(v5, (v0 + 2));
  v13 = [ObjCClassFromMetadata preferredFormat];
  static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(v10, v11, v1, v2, v13, v4, v3);
  v15 = v14;

  *(v6 + 56) = v15;
  v16 = *(v0 + 1);

  return v16();
}

uint64_t sub_100393EA0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[11];
  v7 = v1[12];
  v8 = *(v1 + 13);
  v9 = *(v1 + 14);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in static PlaylistCovers.carouselItems(from:playlistTitle:size:)(a1, v6, v7, v4, v5, (v1 + 4), v8, v9);
}

unint64_t lazy protocol witness table accessor for type TaskGroup<(PlaylistCovers.Cover.Representation, UIImage)>.Iterator and conformance TaskGroup<A>.Iterator()
{
  result = lazy protocol witness table cache variable for type TaskGroup<(PlaylistCovers.Cover.Representation, UIImage)>.Iterator and conformance TaskGroup<A>.Iterator;
  if (!lazy protocol witness table cache variable for type TaskGroup<(PlaylistCovers.Cover.Representation, UIImage)>.Iterator and conformance TaskGroup<A>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScG8IteratorVy9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCt_GMd, &_sScG8IteratorVy9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCt_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaskGroup<(PlaylistCovers.Cover.Representation, UIImage)>.Iterator and conformance TaskGroup<A>.Iterator);
  }

  return result;
}

uint64_t _sScPSgWOc_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003940BC()
{

  return swift_deallocObject();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTR9MusicCore14PlaylistCoversO5CoverV14RepresentationV_So7UIImageCt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

unint64_t _sSo29UIGraphicsImageRendererFormatCMa_0()
{
  result = _sSo29UIGraphicsImageRendererFormatCML_0;
  if (!_sSo29UIGraphicsImageRendererFormatCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo29UIGraphicsImageRendererFormatCML_0);
  }

  return result;
}

void ProgressiveBlur.makeUIView(context:)(double a1, uint64_t a2, char a3)
{
  v5 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
  v6 = type metadata accessor for ProgressiveBlurView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a1;
  v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a3;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = 0x3FD3333333333333;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = v5;
  v8 = v5;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 1.0;
  v24.size.height = 1.0;
  if (CGRectIsEmpty(v24))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a3;
  *(v11 + 56) = 0x3FD3333333333333;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in static ProgressiveBlurView.maskImage(bounds:edge:cutoff:interpolation:);
  *(v17 + 24) = v11;
  aBlock[4] = _sSo22MPMutableIdentifierSet_So012MPIdentifierC0CXcIgg_SoAA_ACXcIegg_TRTA_0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[3] = &block_descriptor_60;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v21 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a1 scale:1.0];

LABEL_6:
      v22.receiver = v7;
      v22.super_class = v6;
      objc_msgSendSuper2(&v22, "initWithEffect:", v21);

      return;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void ProgressiveBlurView.__allocating_init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v10 = a2;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 1.0;
  v26.size.height = 1.0;
  if (CGRectIsEmpty(v26))
  {
    goto LABEL_5;
  }

  v11 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v11 setScale:1.0];
  [v11 setPreferredRange:2];
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v11 format:{0.0, 0.0, 1.0, 1.0}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v13 + 32) = _Q0;
  *(v13 + 48) = a1;
  *(v13 + 56) = a4;
  *(v13 + 64) = v10;
  v19 = swift_allocObject();
  *(v19 + 16) = closure #1 in static ProgressiveBlurView.maskImage(bounds:edge:cutoff:interpolation:)partial apply;
  *(v19 + 24) = v13;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[3] = &block_descriptor_14_1;
  v20 = _Block_copy(aBlock);
  v21 = v10;

  v22 = [v12 imageWithActions:v20];

  _Block_release(v20);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    if (v22)
    {
      v23 = [objc_opt_self() _effectWithVariableBlurRadius:v22 imageMask:a3 scale:1.0];

LABEL_6:
      v24.receiver = v9;
      v24.super_class = v4;
      objc_msgSendSuper2(&v24, "initWithEffect:", v23);

      return;
    }

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void ProgressiveBlur.updateUIView(_:context:)(uint64_t a1, double a2, uint64_t a3, char a4)
{
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = a2;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = a4;
  ProgressiveBlurView.updateEffect()();
}

void protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance ProgressiveBlur(uint64_t a1)
{
  v2 = *(v1 + 8);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = *v1;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = v2;
  ProgressiveBlurView.updateEffect()();
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ProgressiveBlur(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ProgressiveBlur and conformance ProgressiveBlur();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ProgressiveBlur(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ProgressiveBlur and conformance ProgressiveBlur();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ProgressiveBlur(uint64_t a1)
{
  lazy protocol witness table accessor for type ProgressiveBlur and conformance ProgressiveBlur();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double ProgressiveBlurView.Edge.startPoint.getter(unsigned __int8 a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = a4();
    }

    else
    {
      v5 = a5();
    }
  }

  else if (a1)
  {
    v5 = a3();
  }

  else
  {
    v5 = a2();
  }

  v6 = v5;
  swift_beginAccess();
  return *v6;
}

void ProgressiveBlurView.init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v8 = a2;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 1.0;
  v24.size.height = 1.0;
  if (CGRectIsEmpty(v24))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a1;
  *(v11 + 56) = a4;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = closure #1 in static ProgressiveBlurView.maskImage(bounds:edge:cutoff:interpolation:)partial apply;
  *(v17 + 24) = v11;
  aBlock[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  aBlock[3] = &block_descriptor_25;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v21 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a3 scale:1.0];

LABEL_6:
      v22.receiver = v4;
      v22.super_class = type metadata accessor for ProgressiveBlurView();
      objc_msgSendSuper2(&v22, "initWithEffect:", v21);

      return;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

Swift::Void __swiftcall ProgressiveBlurView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ProgressiveBlurView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  ProgressiveBlurView.updateEffect()();
}

Swift::Void __swiftcall ProgressiveBlurView.updateEffect()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius];
  v10 = v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff];
  v12 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation];
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  if (CGRectIsEmpty(v21))
  {
    goto LABEL_5;
  }

  v13 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v13 setScale:1.0];
  [v13 setPreferredRange:2];
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v13 format:{v2, v4, v6, v8}];
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v4;
  *(v15 + 32) = v6;
  *(v15 + 40) = v8;
  *(v15 + 48) = v10;
  *(v15 + 56) = v11;
  *(v15 + 64) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = closure #1 in static ProgressiveBlurView.maskImage(bounds:edge:cutoff:interpolation:)partial apply;
  *(v16 + 24) = v15;
  v20[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
  v20[5] = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
  v20[3] = &block_descriptor_36_2;
  v17 = _Block_copy(v20);
  v12 = v12;

  v18 = [v14 imageWithActions:v17];

  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    if (v18)
    {
      v19 = [objc_opt_self() _effectWithVariableBlurRadius:v18 imageMask:v9 scale:1.0];

LABEL_6:
      [v0 setEffect:v19];

      return;
    }

LABEL_5:

    v19 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void closure #1 in static ProgressiveBlurView.maskImage(bounds:edge:cutoff:interpolation:)(void *a1, unsigned __int8 a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = [objc_allocWithZone(CAGradientLayer) init];
  [v16 setBounds:{a4, a5, a6, a7}];
  [v16 setStartPoint:{ProgressiveBlurView.Edge.startPoint.getter(a2, CGPoint.topCenter.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.bottomCenter.unsafeMutableAddressor)}];
  [v16 setEndPoint:{ProgressiveBlurView.Edge.startPoint.getter(a2, CGPoint.bottomCenter.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.topCenter.unsafeMutableAddressor)}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_0, &_ss23_ContiguousArrayStorageCyypGMR_0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004F2EF0;
  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  v20 = [v19 colorWithAlphaComponent:a8];

  v21 = [v20 CGColor];
  _sSo10CGColorRefaMa_0(0);
  v23 = v22;
  *(v17 + 56) = v22;
  *(v17 + 32) = v21;
  v24 = [v18 whiteColor];
  v25 = [v24 colorWithAlphaComponent:0.0];

  v26 = [v25 CGColor];
  *(v17 + 88) = v23;
  *(v17 + 64) = v26;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setColors:isa];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1004F2F10;
  *(v28 + 32) = a3;
  type metadata accessor for CAMediaTimingFunction();
  v29 = a3;
  v30 = Array._bridgeToObjectiveC()().super.isa;

  [v16 setInterpolations:v30];

  v31 = [a1 CGContext];
  [v16 renderInContext:v31];
}

uint64_t sub_1003954A0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id ProgressiveBlurView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect:a1];

  return v3;
}

id ProgressiveBlurView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressiveBlurView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t lazy protocol witness table accessor for type ProgressiveBlur and conformance ProgressiveBlur()
{
  result = lazy protocol witness table cache variable for type ProgressiveBlur and conformance ProgressiveBlur;
  if (!lazy protocol witness table cache variable for type ProgressiveBlur and conformance ProgressiveBlur)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressiveBlur and conformance ProgressiveBlur);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressiveBlur and conformance ProgressiveBlur;
  if (!lazy protocol witness table cache variable for type ProgressiveBlur and conformance ProgressiveBlur)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressiveBlur and conformance ProgressiveBlur);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressiveBlurView.Edge and conformance ProgressiveBlurView.Edge()
{
  result = lazy protocol witness table cache variable for type ProgressiveBlurView.Edge and conformance ProgressiveBlurView.Edge;
  if (!lazy protocol witness table cache variable for type ProgressiveBlurView.Edge and conformance ProgressiveBlurView.Edge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressiveBlurView.Edge and conformance ProgressiveBlurView.Edge);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProgressiveBlur(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProgressiveBlur(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t type metadata accessor for CAMediaTimingFunction()
{
  result = lazy cache variable for type metadata for CAMediaTimingFunction;
  if (!lazy cache variable for type metadata for CAMediaTimingFunction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAMediaTimingFunction);
  }

  return result;
}

id one-time initialization function for blurEffect(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle:a2];
  *a3 = result;
  return result;
}

char *QRCodeOverlayViewController.init(qrCode:title:subtitle:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *&v2[v4] = [objc_allocWithZone(UIVisualEffectView) init];
  v5 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *&v2[v6] = [objc_allocWithZone(CAShapeLayer) init];
  v7 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() _systemImageNamed:v8];

  v10 = [objc_allocWithZone(UIImageView) initWithImage:v9];
  *&v2[v7] = v10;
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *&v2[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (one-time initialization token for blurEffect != -1)
  {
    swift_once();
  }

  v13 = [objc_opt_self() effectForBlurEffect:static QRCodeOverlayViewController.Specs.blurEffect];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *&v2[v15] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = 0;
  v16 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *&v2[v16] = [objc_allocWithZone(UIScrollView) init];
  v17 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *&v2[v17] = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager] = 0;
  if (a1[4] == 76)
  {
    QRCode.with(errorCorrectionLevel:)(77, v38);
    v18 = v39;
    if (v39)
    {
      v19 = v40;
      v21 = v38[1];
      v20 = v38[2];
      v22 = v38[0];
    }

    else
    {
      v20 = a1[2];
      v18 = a1[3];
      v22 = *a1;
      v21 = a1[1];
      outlined init with copy of QRCode(a1, v36);
      v19 = 76;
    }

    v25 = &v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    *v25 = v22;
    *(v25 + 1) = v21;
    *(v25 + 2) = v20;
    *(v25 + 3) = v18;
    *(v25 + 4) = v19;
  }

  else
  {
    v23 = &v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v24 = *(a1 + 1);
    *v23 = *a1;
    *(v23 + 1) = v24;
    *(v23 + 4) = a1[4];
    outlined init with copy of QRCode(a1, v38);
  }

  v26 = type metadata accessor for QRCodeOverlayViewController();
  v37.receiver = v2;
  v37.super_class = v26;
  v27 = objc_msgSendSuper2(&v37, "initWithNibName:bundle:", 0, 0);
  v28 = *(v27 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel);
  v29 = v27;
  v30 = v28;
  v31 = String._bridgeToObjectiveC()();

  [v30 setText:v31];

  v32 = *(v29 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel);
  v33 = String._bridgeToObjectiveC()();

  [v32 setText:v33];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd_0, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR_0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1004F2400;
  *(v34 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  outlined destroy of QRCode(a1);

  return v29;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLoad()()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 3)
  {
    v4 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] text];
    [v1 setTitle:v4];
  }

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  [v6 setBackgroundColor:v8];

  v9 = [v1 navigationItem];
  type metadata accessor for UIAction(0, &_sSo15UIBarButtonItemCML_0, UIBarButtonItem_ptr);
  type metadata accessor for UIAction(0, &_sSo8UIActionCML_0, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v44.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v44, v45).super.super.isa;
  [v9 setLeftBarButtonItem:{isa, 0, 0, 0, partial apply for closure #1 in QRCodeOverlayViewController.viewDidLoad(), v10}];

  v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"dismissAnimated"];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v41 = v12;
  [v13 addGestureRecognizer:v12];

  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v16 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v42 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v17 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 24];
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = v17;
  v19 = v17;
  v20 = v16;

  [*&v20[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v19];
  v40 = v15;
  [*&v1[v15] setAlpha:0.0];
  v39 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setContentMode:1];
  v21 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel];
  type metadata accessor for UIAction(0, &_sSo6UIFontCML_0, UIFont_ptr);
  v23 = v22;
  v24 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v23 setFont:v24];

  v25 = *&v1[v21];
  v26 = [v7 whiteColor];
  [v25 setTextColor:v26];

  [*&v1[v21] setTextAlignment:1];
  [*&v1[v21] setNumberOfLines:0];
  [*&v1[v21] setAlpha:0.0];
  [*&v1[v21] setAdjustsFontForContentSizeCategory:1];
  v27 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  v28 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 preferredFontForTextStyle:UIFontTextStyleBody];
  [v30 setFont:v31];

  [*&v1[v27] setTextAlignment:1];
  [*&v1[v27] setNumberOfLines:0];
  [*&v1[v27] setAlpha:0.0];
  [*&v1[v27] setAdjustsFontForContentSizeCategory:1];
  v32 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  v33 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer];
  v34 = [v7 blackColor];
  v35 = [v34 CGColor];

  [v33 setFillColor:v35];
  [*&v1[v32] setFillRule:kCAFillRuleNonZero];
  [*&v1[v32] setCompositingFilter:kCAFilterDestOut];
  if (*(v42 + 4) != 76)
  {
    v36 = [*&v1[v40] layer];
    [v36 addSublayer:*&v1[v32]];

    [*&v1[v40] addSubview:*&v1[v39]];
  }

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    [v37 addSubview:*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView]];

    return;
  }

LABEL_11:
  __break(1u);
}

void closure #1 in QRCodeOverlayViewController.viewDidLoad()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    QRCodeOverlayViewController.dismissAnimated()();
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewIsAppearing(_:)(Swift::Bool a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  __chkstk_darwin();
  v5 = aBlock - v4;
  v6 = type metadata accessor for QRCodeOverlayViewController();
  v45.receiver = v2;
  v45.super_class = v6;
  objc_msgSendSuper2(&v45, "viewIsAppearing:", a1);
  v7 = [objc_allocWithZone(UIView) init];
  v8 = [v2 traitCollection];
  [v8 userInterfaceIdiom];

  static UIView.Corner.value(_:continuous:)();
  v9 = type metadata accessor for UIView.Corner();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  UIView.corner.setter();
  v10 = [v7 layer];
  [v10 setCornerCurve:kCACornerCurveContinuous];

  [v7 setClipsToBounds:1];
  [v7 setAlpha:0.0];
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  [v7 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView]];
  v12 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = v7;
  v13 = v7;

  v14 = [v2 traitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 != 3)
  {
    v32 = objc_opt_self();
    v33 = [v32 whiteColor];
    [v13 setBackgroundColor:v33];

    v34 = [*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView] contentView];
    v35 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [v34 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView]];

    v36 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v2[v35] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView]];
    [*&v2[v36] addSubview:v13];
    [*&v2[v36] addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel]];
    v37 = *&v2[v36];
    v38 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
    [v37 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView]];
    v39 = [*&v2[v38] contentView];
    [v39 addSubview:*&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel]];

    v40 = *&v2[v11];
    v41 = [v32 blackColor];
    v42 = *&v40[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v40[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v41;
    v43 = v41;

    QRCodeOverlayViewController.ContainerView.updateColor()();
    v30 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
    v31 = [v32 blackColor];
    [v30 setTintColor:v31];
    goto LABEL_6;
  }

  v16 = *&v2[v11];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 labelColor];
  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  *&v18[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v19;
  v21 = v19;

  QRCodeOverlayViewController.ContainerView.updateColor()();
  v22 = *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView];
  v23 = [v17 labelColor];
  [v22 setTintColor:v23];

  v24 = objc_allocWithZone(UIColor);
  aBlock[4] = closure #1 in QRCodeOverlayViewController.viewIsAppearing(_:);
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  aBlock[3] = &block_descriptor_61;
  v25 = _Block_copy(aBlock);
  v26 = [v24 initWithDynamicProvider:v25];
  _Block_release(v25);

  [v13 setBackgroundColor:v26];

  v27 = [v2 view];
  if (v27)
  {
    v28 = v27;
    [v27 addSubview:v13];

    v29 = [v2 view];
    if (v29)
    {
      v30 = v29;
      v31 = *&v2[v11];
      [v30 addSubview:v31];
LABEL_6:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id closure #1 in QRCodeOverlayViewController.viewIsAppearing(_:)(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];
  v5 = [v4 colorWithAlphaComponent:0.1];

  return v5;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1);
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager;
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {
LABEL_2:
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v12[4] = partial apply for closure #1 in QRCodeOverlayViewController.viewDidAppear(_:);
    v12[5] = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed () -> ();
    v12[3] = &block_descriptor_6_2;
    v6 = _Block_copy(v12);
    v7 = v1;

    [v4 animateWithDuration:v6 animations:0.25];
    _Block_release(v6);
    return;
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 window];

    if (v10)
    {
      v11 = [v10 windowScene];

      if (v11)
      {
        type metadata accessor for BrightnessManager();
        swift_allocObject();
        *&v1[v3] = BrightnessManager.init(windowScene:)(v11);
      }
    }

    goto LABEL_2;
  }

  __break(1u);
}

double closure #1 in QRCodeOverlayViewController.viewDidAppear(_:)(char *a1)
{
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] setAlpha:1.0];
  [*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] setAlpha:1.0];
  v2 = *&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v3 = [a1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 3)
  {
    if (one-time initialization token for carPlayBlurEffect != -1)
    {
      swift_once();
    }

    v5 = &static QRCodeOverlayViewController.Specs.carPlayBlurEffect;
  }

  else
  {
    if (one-time initialization token for blurEffect != -1)
    {
      swift_once();
    }

    v5 = &static QRCodeOverlayViewController.Specs.blurEffect;
  }

  [v2 setEffect:*v5];

  if (*&a1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager])
  {

    BrightnessManager.increaseBrightnessIfNeeded()();
  }

  return result;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v224.receiver = v0;
  v224.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v224, "viewDidLayoutSubviews");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  v4 = [v1 view];
  v5 = v4;
  if (v3 != 3)
  {
    if (!v4)
    {
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    [v4 bounds];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    if (one-time initialization token for qrCodeHorizontalPadding != -1)
    {
      swift_once();
    }

    v56 = *&static QRCodeOverlayViewController.Specs.qrCodeHorizontalPadding;
    if (one-time initialization token for qrCodeBackgroundPadding != -1)
    {
      swift_once();
    }

    v57 = *&static QRCodeOverlayViewController.Specs.qrCodeBackgroundPadding;
    v58 = v56 + *&static QRCodeOverlayViewController.Specs.qrCodeBackgroundPadding;
    v59 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
    v227 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v228 = v59;
    v229 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
    outlined init with copy of QRCode(&v227, &v223);
    if (one-time initialization token for qrCodeMaxWidth != -1)
    {
      swift_once();
    }

    v60 = *&static QRCodeOverlayViewController.Specs.qrCodeMaxWidth;
    v244.origin.x = v49;
    v244.origin.y = v51;
    v244.size.width = v53;
    v244.size.height = v55;
    Width = CGRectGetWidth(v244);
    v245.origin.x = v49;
    v245.origin.y = v51;
    v245.size.width = v53;
    v245.size.height = v55;
    Height = CGRectGetHeight(v245);
    if (Height >= Width)
    {
      Height = Width;
    }

    v63 = Height - (v58 + v58);
    if (v63 >= v60)
    {
      v64 = v60;
    }

    else
    {
      v64 = v63;
    }

    v65 = [v1 traitCollection];
    [v65 displayScale];
    v67 = v66;

    v68 = QRCode.dotAdjustedWidth(with:scale:)(v64, v67);
    outlined destroy of QRCode(&v227);
    v246.origin.x = v49;
    v246.origin.y = v51;
    v246.size.width = v53;
    v246.size.height = v55;
    v69 = CGRectGetWidth(v246);
    v70 = [v1 view];
    if (!v70)
    {
      goto LABEL_57;
    }

    v71 = v70;
    [v70 safeAreaInsets];
    v73 = v72;

    v74 = [v1 view];
    if (!v74)
    {
LABEL_58:
      __break(1u);
      return;
    }

    v75 = v74;
    v222 = v68;
    v76 = v57 + v57 + v68;
    [v74 safeAreaInsets];

    v77 = UIEdgeInsetsInsetRect(v49, v51, v53, v55, v73, (v69 - v76) * 0.5);
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v217 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] sizeThatFits:{v80, v82}];
    v218 = v84;
    v86 = v85;
    v87 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel] sizeThatFits:{v81, v83}];
    v221 = v89;
    if (one-time initialization token for titleTopPadding != -1)
    {
      v212 = v88;
      swift_once();
      v88 = v212;
    }

    v214 = v76 + *&static QRCodeOverlayViewController.Specs.titleTopPadding;
    v90 = v86 + v76 + *&static QRCodeOverlayViewController.Specs.titleTopPadding;
    if (one-time initialization token for subtitleTopPadding != -1)
    {
      v213 = v88;
      swift_once();
      v88 = v213;
    }

    v219 = v86;
    v220 = v88;
    v216 = *&static QRCodeOverlayViewController.Specs.subtitleTopPadding;
    v91 = v88 + v90 + *&static QRCodeOverlayViewController.Specs.subtitleTopPadding;
    if (one-time initialization token for scrollContentViewVerticalPadding != -1)
    {
      swift_once();
    }

    v92 = *&static QRCodeOverlayViewController.Specs.scrollContentViewVerticalPadding;
    v93 = v91 + v92 + v92;
    v247.origin.x = v77;
    v247.origin.y = v79;
    v247.size.width = v81;
    v247.size.height = v83;
    v94 = CGRectGetWidth(v247);
    v95 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView] setFrame:{v77, v79, v81, v83}];
    [*&v1[v95] setContentSize:{v94, v93}];
    v248.origin.x = v77;
    v248.origin.y = v79;
    v248.size.width = v81;
    v248.size.height = v83;
    v96 = CGRectGetHeight(v248);
    v97 = *&v1[v95];
    v98 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView];
    v99 = v97;
    if (v96 >= v93)
    {
      v100 = 0.0;
    }

    else
    {
      v100 = v92;
    }

    CGRect.centeringAlong(axes:in:)(0.0, v100, v94, v93);
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;

    [v98 setFrame:{v102, v104, v106, v108}];
    v109 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView] bounds];
    v113 = v112;
    v114 = v110;
    v115 = v111;
    v116 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView;
    v117 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
    v215 = v118;
    if (v117)
    {
      v119 = *&v1[v109];
      v120 = v117;
      v121 = v119;
      CGRect.centeringAlong(axes:in:)(0.0, 0.0, v76, v76);
      v123 = v122;
      v125 = v124;
      v127 = v126;
      v129 = v128;

      [v120 setFrame:{v123, v125, v127, v129}];
      v130 = *&v1[v116];
      v131 = v115 - v214;
      v132 = v214 + v114;
      v133 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
      if (v130)
      {
        v134 = v133;
        [v130 bounds];
LABEL_44:
        v135 = v87;
        v136 = [v1 traitCollection];
        [v136 displayScale];

        CGRect.centeringAlong(axes:bounds:scale:)();
        [v134 setFrame:*&v222];

        v137 = *&v1[v217];
        v249.origin.x = v113;
        v249.origin.y = v132;
        v249.size.width = v215;
        v249.size.height = v131;
        MinY = CGRectGetMinY(v249);
        v139 = *&v1[v109];
        CGRect.centeringAlong(axes:in:)(0.0, MinY, v218, v219);
        v141 = v140;
        v143 = v142;
        v145 = v144;
        v147 = v146;

        [v137 setFrame:{v141, v143, v145, v147}];
        v148 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
        v149 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView];
        v250.origin.x = v113;
        v250.origin.y = v219 + v216 + v132;
        v250.size.width = v215;
        v250.size.height = v131 - (v219 + v216);
        v150 = CGRectGetMinY(v250);
        v151 = *&v1[v109];
        CGRect.centeringAlong(axes:in:)(0.0, v150, v221, v220);
        v153 = v152;
        v155 = v154;
        v157 = v156;
        v159 = v158;

        [v149 setFrame:{v153, v155, v157, v159}];
        v160 = *&v1[v148];
        v33 = *&v1[v135];
        [v160 bounds];
        goto LABEL_45;
      }
    }

    else
    {
      v131 = v111 - v214;
      v132 = v214 + v110;
      v133 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
    }

    v134 = v133;
    goto LABEL_44;
  }

  if (!v4)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v6 = [v4 safeAreaLayoutGuide];

  [v6 layoutFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (one-time initialization token for carPlayQRCodePadding != -1)
  {
    swift_once();
  }

  v15 = *&static QRCodeOverlayViewController.Specs.carPlayQRCodePadding;
  if (one-time initialization token for qrCodeBackgroundPaddingCarPlay != -1)
  {
    swift_once();
  }

  v16 = *&static QRCodeOverlayViewController.Specs.qrCodeBackgroundPaddingCarPlay;
  v17 = v15 + *&static QRCodeOverlayViewController.Specs.qrCodeBackgroundPaddingCarPlay;
  v18 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 16];
  v227 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v228 = v18;
  v229 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32];
  outlined init with copy of QRCode(&v227, &v223);
  if (one-time initialization token for qrCodeMaxWidth != -1)
  {
    swift_once();
  }

  v19 = *&static QRCodeOverlayViewController.Specs.qrCodeMaxWidth;
  v242.origin.x = v8;
  v242.origin.y = v10;
  v242.size.width = v12;
  v242.size.height = v14;
  v20 = CGRectGetWidth(v242);
  v243.origin.x = v8;
  v243.origin.y = v10;
  v243.size.width = v12;
  v243.size.height = v14;
  v21 = CGRectGetHeight(v243);
  if (v21 >= v20)
  {
    v21 = v20;
  }

  v22 = v21 - (v17 + v17);
  if (v22 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  v24 = [v1 traitCollection];
  [v24 displayScale];
  v26 = v25;

  v27 = QRCode.dotAdjustedWidth(with:scale:)(v23, v26);
  outlined destroy of QRCode(&v227);
  v28 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v29 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v30 = [v1 traitCollection];
  [v30 displayScale];

  CGRect.centeringAlong(axes:bounds:scale:)();
  [v29 setFrame:*&v27];

  v31 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView];
  if (v31)
  {
    v32 = *&v1[v28];
    v33 = v31;
    [v32 frame];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor();

    v43 = NSDirectionalEdgeInsets.init(edge:length:)(v42, v16);
    v47 = CGRect.outset(by:for:)(0, v43, v44, v45, v46, v35, v37, v39, v41);
LABEL_45:
    [v33 setFrame:v47];
  }

  v161 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView];
  v162 = [v1 view];
  if (!v162)
  {
    __break(1u);
    goto LABEL_55;
  }

  v163 = v162;
  [v162 bounds];
  v165 = v164;
  v167 = v166;
  v169 = v168;
  v171 = v170;

  [v161 setFrame:{v165, v167, v169, v171}];
  v172 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  if (*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 32] != 76)
  {
    v173 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView] frame];
    v174 = CGRectGetWidth(v251) * 0.3;
    if (one-time initialization token for logoMaxWidth != -1)
    {
      swift_once();
    }

    v175 = *&static QRCodeOverlayViewController.Specs.logoMaxWidth;
    if (*&static QRCodeOverlayViewController.Specs.logoMaxWidth < v174)
    {
      v174 = *&static QRCodeOverlayViewController.Specs.logoMaxWidth;
    }

    v176 = *&v1[v173];
    CGRect.centeringAlong(axes:in:)(0.0, 0.0, v174, v174);
    v178 = v177;
    v180 = v179;
    v182 = v181;
    v184 = v183;

    v185 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setFrame:{v178, v180, v182, v184}];
    CGAffineTransformMakeScale(&v223, v174 / v175, v174 / v175);
    a = v223.a;
    b = v223.b;
    c = v223.c;
    d = v223.d;
    tx = v223.tx;
    ty = v223.ty;
    v192 = *(v172 + 1);
    v225[0] = *v172;
    v225[1] = v192;
    v226 = *(v172 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo7CGPointVGMd_0, &_ss23_ContiguousArrayStorageCySo7CGPointVGMR_0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100507AC0;
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v230.x = 12.0;
    v230.y = 15.0;
    *(inited + 32) = CGPointApplyAffineTransform(v230, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v231.x = 12.0;
    v231.y = 6.0;
    *(inited + 48) = CGPointApplyAffineTransform(v231, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v232.y = 6.0;
    v232.x = 36.0;
    *(inited + 64) = CGPointApplyAffineTransform(v232, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v233.y = 0.0;
    v233.x = 36.0;
    *(inited + 80) = CGPointApplyAffineTransform(v233, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v234.y = 0.0;
    v234.x = 85.0;
    *(inited + 96) = CGPointApplyAffineTransform(v234, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v235.x = 85.0;
    v235.y = 90.0;
    *(inited + 112) = CGPointApplyAffineTransform(v235, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v236.x = 36.0;
    v236.y = 90.0;
    *(inited + 128) = CGPointApplyAffineTransform(v236, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v237.x = 36.0;
    v237.y = 95.0;
    *(inited + 144) = CGPointApplyAffineTransform(v237, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v238.x = 0.0;
    v238.y = 95.0;
    *(inited + 160) = CGPointApplyAffineTransform(v238, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v239.x = 0.0;
    v239.y = 57.0;
    *(inited + 176) = CGPointApplyAffineTransform(v239, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v240.x = 12.0;
    v240.y = 57.0;
    *(inited + 192) = CGPointApplyAffineTransform(v240, &v223);
    v223.a = a;
    v223.b = b;
    v223.c = c;
    v223.d = d;
    v223.tx = tx;
    v223.ty = ty;
    v241.x = 12.0;
    v241.y = 15.0;
    *(inited + 208) = CGPointApplyAffineTransform(v241, &v223);
    v194 = *&v1[v185];
    outlined init with copy of QRCode(v225, &v223);
    [v194 frame];
    v196 = v195;
    v198 = v197;
    v200 = v199;
    v202 = v201;
    [*&v1[v173] bounds];
    v207 = QRCode.dotAlignedPath(with:in:imageBounds:)(inited, v196, v198, v200, v202, v203, v204, v205, v206);
    outlined destroy of QRCode(v225);
    swift_setDeallocating();
    v208 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
    [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer] setPath:v207];
    v209 = *&v1[v208];
    v210 = *&v1[v173];
    v211 = v209;
    [v210 bounds];
    [v211 setFrame:?];
  }
}

Swift::Void __swiftcall QRCodeOverlayViewController.dismissAnimated()()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v12 = partial apply for closure #1 in QRCodeOverlayViewController.dismissAnimated();
  v13 = v2;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed () -> ();
  v11 = &block_descriptor_12_0;
  v3 = _Block_copy(&v8);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v12 = partial apply for closure #2 in QRCodeOverlayViewController.dismissAnimated();
  v13 = v5;
  v8 = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v11 = &block_descriptor_18_0;
  v6 = _Block_copy(&v8);
  v7 = v4;

  [v1 animateWithDuration:v3 animations:v6 completion:0.25];
  _Block_release(v6);
  _Block_release(v3);
}

double closure #1 in QRCodeOverlayViewController.dismissAnimated()(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel) setAlpha:0.0];
  [*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView) setEffect:0];
  if (*(a1 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager))
  {

    BrightnessManager.resetBrightnessToSystemDefault()();
  }

  return result;
}

double thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

char *QRCodeOverlayViewController.ContainerView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = 0;
  *&v4[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = 0;
  v10 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v11 = [objc_allocWithZone(UIImageView) init];
  v12 = UIView.forAutolayout.getter();

  *&v5[v10] = v12;
  v13 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *&v5[v13] = [objc_allocWithZone(CALayer) init];
  v14 = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v36.receiver = v5;
  v36.super_class = v14;
  v15 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v17 = *&v15[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView];
  v18 = v15;
  [v18 addSubview:v17];
  v19 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004F3040;
  v21 = [*&v15[v16] leadingAnchor];
  v22 = [v18 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v20 + 32) = v23;
  v24 = [*&v15[v16] trailingAnchor];
  v25 = [v18 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v20 + 40) = v26;
  v27 = [*&v15[v16] topAnchor];
  v28 = [v18 topAnchor];

  v29 = [v27 constraintEqualToAnchor:v28];
  *(v20 + 48) = v29;
  v30 = [*&v15[v16] bottomAnchor];
  v31 = [v18 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v20 + 56) = v32;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 activateConstraints:isa];

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UITraitCollection, UITraitCollection_ptr);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  v35[3] = v14;
  v35[0] = v18;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  return v18;
}

Swift::Void __swiftcall QRCodeOverlayViewController.ContainerView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QRCodeOverlayViewController.ContainerView();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CATransaction, CATransaction_ptr);
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  static CATransaction.performWithoutAnimation(_:)(partial apply for closure #1 in QRCodeOverlayViewController.ContainerView.layoutSubviews());
}

void closure #1 in QRCodeOverlayViewController.ContainerView.layoutSubviews()(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView);
  v2 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer);
  [v1 bounds];
  [v2 setFrame:?];
}

void QRCodeOverlayViewController.ContainerView.updateColor()()
{
  v1 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
  if (v1)
  {
    v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
    v3 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];
    v4 = kCAFilterSourceIn;
    v15 = v1;
    [v3 setCompositingFilter:v4];
    v5 = *&v0[v2];
    v6 = [v0 traitCollection];
    v7 = [v15 resolvedColorWithTraitCollection:v6];

    v8 = [v7 CGColor];
    [v5 setBackgroundColor:v8];

    v9 = [*&v0[v2] superlayer];
    if (v9)
    {
      v14 = v9;

      v10 = v14;
    }

    else
    {
      v12 = [*&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] layer];
      v13 = *&v0[v2];
      [v12 addSublayer:v13];

      v10 = v15;
    }
  }

  else
  {
    v11 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer];

    [v11 removeFromSuperlayer];
  }
}

id QRCodeOverlayViewController.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *QRCodeOverlayViewController.ImageViewRepresentable.makeUIView(context:)(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = a4;
  v13 = a4;

  [*&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v13];

  if ((a3 & 1) == 0)
  {
    v14 = static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v16 = outlined consume of Environment<Color?>.Content(a2);
    (*(v8 + 8))(v10, v7, v16);
    a2 = v21[1];
  }

  if (a2)
  {
    type metadata accessor for UIAction(0, &_sSo7UIColorCML_0, UIColor_ptr);

    v17 = UIColor.init(_:)();
    v18 = *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor];
    *&v11[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor] = v17;
    v19 = v17;

    QRCodeOverlayViewController.ContainerView.updateColor()();
  }

  return v11;
}

void QRCodeOverlayViewController.ImageViewRepresentable.updateUIView(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image);
  *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = a5;
  v14 = a5;

  [*(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView) setImage:v14];

  if ((a4 & 1) == 0)
  {
    v15 = static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v17 = outlined consume of Environment<Color?>.Content(a3);
    (*(v10 + 8))(v12, v9, v17);
    a3 = v21[1];
  }

  if (a3)
  {
    type metadata accessor for UIAction(0, &_sSo7UIColorCML_0, UIColor_ptr);

    v18 = UIColor.init(_:)();
    v19 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor);
    *(a1 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = v18;
    v20 = v18;

    QRCodeOverlayViewController.ContainerView.updateColor()();
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance QRCodeOverlayViewController.ImageViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance QRCodeOverlayViewController.ImageViewRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance QRCodeOverlayViewController.ImageViewRepresentable(uint64_t a1)
{
  lazy protocol witness table accessor for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

id thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void specialized closure #1 in QRCodeOverlayViewController.init(qrCode:title:subtitle:)(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003992B0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100399318()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable()
{
  result = lazy protocol witness table cache variable for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable;
  if (!lazy protocol witness table cache variable for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable;
  if (!lazy protocol witness table cache variable for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QRCodeOverlayViewController.ImageViewRepresentable and conformance QRCodeOverlayViewController.ImageViewRepresentable);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QRCodeOverlayViewController.ImageViewRepresentable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for QRCodeOverlayViewController.ImageViewRepresentable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized QRCodeOverlayViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  *(v0 + v4) = v7;
  v8 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *(v0 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (one-time initialization token for blurEffect != -1)
  {
    swift_once();
  }

  v10 = [objc_opt_self() effectForBlurEffect:static QRCodeOverlayViewController.Specs.blurEffect];
  v11 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];

  *(v0 + v9) = v11;
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *(v0 + v12) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView) = 0;
  v13 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *(v0 + v13) = [objc_allocWithZone(UIScrollView) init];
  v14 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *(v0 + v14) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized QRCodeOverlayViewController.ContainerView.init(coder:)()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image) = 0;
  *(v0 + OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayColor) = 0;
  v2 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView;
  v3 = [objc_allocWithZone(UIImageView) init];
  v4 = UIView.forAutolayout.getter();

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_overlayLayer;
  *(v1 + v5) = [objc_allocWithZone(CALayer) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t Radiosity.ViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25[0] = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v6 = v26[0];
  v7 = v3[5];
  v26[4] = v3[4];
  v26[5] = v7;
  v8 = v3[7];
  v26[6] = v3[6];
  v26[7] = v8;
  v9 = v3[1];
  v26[0] = *v3;
  v26[1] = v9;
  v10 = v3[3];
  v26[2] = v3[2];
  v26[3] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MusicCoreUI9RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_05SwiftC001_E16Modifier_ContentVyAC0eQ0VGGMd, &_s11MusicCoreUI9RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_05SwiftC001_E16Modifier_ContentVyAC0eQ0VGGMR);
  *(a2 + *(v11 + 40)) = v6;
  v12 = (a2 + *(v11 + 36));
  v13 = v3[5];
  v12[4] = v3[4];
  v12[5] = v13;
  v14 = v3[7];
  v12[6] = v3[6];
  v12[7] = v14;
  v15 = v3[1];
  *v12 = *v3;
  v12[1] = v15;
  v16 = v3[3];
  v12[2] = v3[2];
  v12[3] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB09RadiosityO0cD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB09RadiosityO0cD0VGMR);
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v18 = swift_allocObject();
  v19 = v3[7];
  v18[7] = v3[6];
  v18[8] = v19;
  v18[9] = v3[8];
  v20 = v3[3];
  v18[3] = v3[2];
  v18[4] = v20;
  v21 = v3[5];
  v18[5] = v3[4];
  v18[6] = v21;
  v22 = v3[1];
  v18[1] = *v3;
  v18[2] = v22;
  v23 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB09RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_AA01_h9Modifier_D0VyAF0hS0VGGAA017_PreferenceActionS0VyAD0g7EnabledT3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy09MusicCoreB09RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_AA01_h9Modifier_D0VyAF0hS0VGGAA017_PreferenceActionS0VyAD0g7EnabledT3KeyVGGMR) + 36));
  *v23 = partial apply for closure #2 in Radiosity.ViewModifier.body(content:);
  v23[1] = v18;
  outlined init with copy of Radiosity.Specs(v26, v25);
  return outlined init with copy of Radiosity.ViewModifier(v3, v25);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance Radiosity.ViewModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[7];
  v31 = v2[6];
  v32 = v5;
  v33 = v2[8];
  v6 = v2[3];
  v27 = v2[2];
  v28 = v6;
  v7 = v2[5];
  v29 = v2[4];
  v30 = v7;
  v8 = v2[1];
  v25 = *v2;
  v26 = v8;
  v24[0] = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v9 = v34[0];
  v34[4] = v29;
  v34[5] = v30;
  v34[6] = v31;
  v34[7] = v32;
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  v34[3] = v28;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MusicCoreUI9RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_05SwiftC001_E16Modifier_ContentVyAC0eQ0VGGMd, &_s11MusicCoreUI9RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_05SwiftC001_E16Modifier_ContentVyAC0eQ0VGGMR);
  *(a2 + *(v10 + 40)) = v9;
  v11 = (a2 + *(v10 + 36));
  v12 = v30;
  v11[4] = v29;
  v11[5] = v12;
  v13 = v32;
  v11[6] = v31;
  v11[7] = v13;
  v14 = v26;
  *v11 = v25;
  v11[1] = v14;
  v15 = v28;
  v11[2] = v27;
  v11[3] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB09RadiosityO0cD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB09RadiosityO0cD0VGMR);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = swift_allocObject();
  v18 = v32;
  v17[7] = v31;
  v17[8] = v18;
  v17[9] = v33;
  v19 = v28;
  v17[3] = v27;
  v17[4] = v19;
  v20 = v30;
  v17[5] = v29;
  v17[6] = v20;
  v21 = v26;
  v17[1] = v25;
  v17[2] = v21;
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB09RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_AA01_h9Modifier_D0VyAF0hS0VGGAA017_PreferenceActionS0VyAD0g7EnabledT3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy09MusicCoreB09RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_AA01_h9Modifier_D0VyAF0hS0VGGAA017_PreferenceActionS0VyAD0g7EnabledT3KeyVGGMR) + 36));
  *v22 = closure #2 in Radiosity.ViewModifier.body(content:)partial apply;
  v22[1] = v17;
  outlined init with copy of Radiosity.Specs(v34, v24);
  return outlined init with copy of Radiosity.ViewModifier(&v25, v24);
}

id Radiosity.UIView.__allocating_init(content:isRadiosityEnabled:specs:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(a1, v5, a3);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Radiosity.View<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance Radiosity.View<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void protocol witness for View.body.getter in conformance Radiosity.View<A>(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void Radiosity.UIView.isRadiosityEnabled.didset(char a1)
{
  v2 = a1 & 1;
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  if (v1[v3] != v2)
  {
    if (v1[v3])
    {
      [v1 addSubview:*&v1[direct field offset for Radiosity.UIView.dropShadow]];
      [v1 addSubview:*&v1[direct field offset for Radiosity.UIView.radiosity]];
    }

    else
    {
      [*&v1[direct field offset for Radiosity.UIView.dropShadow] removeFromSuperview];
      [*&v1[direct field offset for Radiosity.UIView.radiosity] removeFromSuperview];
    }
  }
}

uint64_t Radiosity.UIView.isRadiosityEnabled.getter()
{
  v1 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void Radiosity.UIView.isRadiosityEnabled.setter(char a1)
{
  v3 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  Radiosity.UIView.isRadiosityEnabled.didset(v4);
}

void (*Radiosity.UIView.isRadiosityEnabled.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return Radiosity.UIView.isRadiosityEnabled.modify;
}

void Radiosity.UIView.isRadiosityEnabled.modify(uint64_t a1)
{
  v1 = *a1;
  Radiosity.UIView.isRadiosityEnabled.setter(*(*a1 + 32));

  free(v1);
}

void Radiosity.UIView.specs.didset(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 72);
  if (!v2)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 1;
    goto LABEL_6;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:
  Radiosity.UIView.updateDropShadow(requireReinstallation:)(v5);
  Radiosity.UIView.updateRadiosity()();
}

double Radiosity.UIView.specs.getter@<D0>(_OWORD *a1@<X8>)
{
  specialized Radiosity.UIView.specs.getter(v8);
  outlined init with copy of Radiosity.Specs(v8, v7);
  v2 = v12;
  a1[4] = v11;
  a1[5] = v2;
  v3 = v14;
  a1[6] = v13;
  a1[7] = v3;
  v4 = v8[1];
  *a1 = v8[0];
  a1[1] = v4;
  result = *&v9;
  v6 = v10;
  a1[2] = v9;
  a1[3] = v6;
  return result;
}

uint64_t Radiosity.UIView.specs.setter(_OWORD *a1)
{
  specialized Radiosity.UIView.specs.setter(a1);

  return outlined destroy of Radiosity.Specs(a1);
}

void (*Radiosity.UIView.specs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x320uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 792) = v1;
  v5 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[7];
  v4[6] = v5[6];
  v4[7] = v11;
  v4[4] = v9;
  v4[5] = v10;
  v12 = v5[7];
  v14 = v5[4];
  v13 = v5[5];
  v4[30] = v5[6];
  v4[31] = v12;
  v4[28] = v14;
  v4[29] = v13;
  v15 = *v5;
  v16 = v5[1];
  v17 = v5[3];
  v4[26] = v5[2];
  v4[27] = v17;
  v4[24] = v15;
  v4[25] = v16;
  outlined init with copy of Radiosity.Specs(v4, (v4 + 32));
  return Radiosity.UIView.specs.modify;
}

void Radiosity.UIView.specs.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 464);
  if (a2)
  {
    v2[12] = v2[28];
    v2[13] = v3;
    v4 = v2[31];
    v2[14] = v2[30];
    v2[15] = v4;
    v5 = v2[25];
    v2[8] = v2[24];
    v2[9] = v5;
    v6 = v2[27];
    v2[10] = v2[26];
    v2[11] = v6;
    outlined init with copy of Radiosity.Specs((v2 + 8), (v2 + 40));
    specialized Radiosity.UIView.specs.setter(v2 + 8);
    outlined destroy of Radiosity.Specs((v2 + 8));
    v7 = v2[29];
    v2[36] = v2[28];
    v2[37] = v7;
    v8 = v2[31];
    v2[38] = v2[30];
    v2[39] = v8;
    v9 = v2[25];
    v2[32] = v2[24];
    v2[33] = v9;
    v10 = v2[27];
    v2[34] = v2[26];
    v2[35] = v10;
    v11 = (v2 + 32);
  }

  else
  {
    v2[20] = v2[28];
    v2[21] = v3;
    v12 = v2[31];
    v2[22] = v2[30];
    v2[23] = v12;
    v13 = v2[25];
    v2[16] = v2[24];
    v2[17] = v13;
    v14 = v2[27];
    v2[18] = v2[26];
    v2[19] = v14;
    specialized Radiosity.UIView.specs.setter(v2 + 16);
    v11 = (v2 + 16);
  }

  outlined destroy of Radiosity.Specs(v11);

  free(v2);
}

__int128 *Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (one-time initialization token for containerDetailHeaderArtwork != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.containerDetailHeaderArtwork;
}

id Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(void *a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = swift_isaMask & *v4;
  *(v4 + direct field offset for Radiosity.UIView.content) = a1;
  v10 = (v4 + direct field offset for Radiosity.UIView.specs);
  v11 = *(a3 + 80);
  v10[4] = *(a3 + 64);
  v10[5] = v11;
  v12 = *(a3 + 112);
  v10[6] = *(a3 + 96);
  v10[7] = v12;
  v13 = *(a3 + 16);
  *v10 = *a3;
  v10[1] = v13;
  v14 = *(a3 + 48);
  v10[2] = *(a3 + 32);
  v10[3] = v14;
  *(v4 + direct field offset for Radiosity.UIView.isRadiosityEnabled) = a2;
  if (*(a3 + 72))
  {
    v15 = objc_allocWithZone(UIView);
    v16 = a1;
    outlined init with copy of Radiosity.Specs(a3, v35);
    v17 = [v15 init];
  }

  else
  {
    v18 = objc_allocWithZone(_UIPortalView);
    v19 = a1;
    outlined init with copy of Radiosity.Specs(a3, v35);
    v17 = [v18 initWithSourceView:v19];
  }

  v20 = v17;
  *(v4 + direct field offset for Radiosity.UIView.dropShadow) = v17;
  v21 = objc_allocWithZone(_UIPortalView);
  v22 = a1;
  v23 = v20;
  v24 = [v21 initWithSourceView:v22];
  *(v4 + direct field offset for Radiosity.UIView.radiosity) = v24;
  v27 = type metadata accessor for Radiosity.UIView(0, *(v9 + 80), v25, v26);
  v34.receiver = v4;
  v34.super_class = v27;
  v28 = v24;
  v29 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v29 addSubview:{v22, v34.receiver, v34.super_class}];
  if (a2)
  {
    [v29 addSubview:v23];
    [v29 addSubview:v28];
  }

  [v29 bounds];
  [v22 setFrame:?];
  [v22 setAutoresizingMask:18];

  Radiosity.UIView.updateDropShadow(requireReinstallation:)(0);
  Radiosity.UIView.updateRadiosity()();
  v30 = [v29 traitCollection];
  v31 = [v30 userInterfaceStyle];

  Radiosity.UIView.updateUserInterfaceStyle(userInterfaceStyle:)(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd_0, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR_0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1004F2400;
  *(v32 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v32 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(swift_allocObject() + 16) = ObjectType;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  outlined destroy of Radiosity.Specs(a3);

  return v29;
}

double @objc Radiosity.UIView.intrinsicContentSize.getter(void *a1)
{
  v1 = a1;
  Radiosity.UIView.intrinsicContentSize.getter();
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall Radiosity.UIView.layoutSubviews()()
{
  v3 = type metadata accessor for Radiosity.UIView(0, *((swift_isaMask & *v2) + 0x50), v0, v1);
  v4.receiver = v2;
  v4.super_class = v3;
  objc_msgSendSuper2(&v4, "layoutSubviews");
  Radiosity.UIView.updateDropShadow(requireReinstallation:)(0);
  Radiosity.UIView.updateRadiosity()();
}

void @objc Radiosity.UIView.layoutSubviews()(void *a1)
{
  v1 = a1;
  Radiosity.UIView.layoutSubviews()();
}

void Radiosity.UIView.dropShadow.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for Radiosity.UIView.dropShadow);
  *(v1 + direct field offset for Radiosity.UIView.dropShadow) = a1;
}

void Radiosity.UIView.updateDropShadow(requireReinstallation:)(char a1)
{
  v2 = v1;
  if (a1)
  {
    [*&v1[direct field offset for Radiosity.UIView.dropShadow] removeFromSuperview];
    v3 = &v1[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    if (*(v3 + 9))
    {
      v4 = [objc_allocWithZone(UIView) init];
    }

    else
    {
      v4 = [objc_allocWithZone(_UIPortalView) initWithSourceView:*&v2[direct field offset for Radiosity.UIView.content]];
    }

    v5 = *&v2[direct field offset for Radiosity.UIView.dropShadow];
    *&v2[direct field offset for Radiosity.UIView.dropShadow] = v4;
    v6 = v4;

    v7 = direct field offset for Radiosity.UIView.isRadiosityEnabled;
    swift_beginAccess();
    if (v2[v7] == 1)
    {
      [v2 addSubview:v6];
    }
  }

  v8 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v9 = *(v8 + 5);
  v52 = *(v8 + 4);
  v53 = v9;
  v10 = *(v8 + 7);
  v54 = *(v8 + 6);
  v55 = v10;
  v11 = *(v8 + 1);
  *&v50.a = *v8;
  *&v50.c = v11;
  v12 = *(v8 + 3);
  *&v50.tx = *(v8 + 2);
  v51 = v12;
  outlined init with copy of Radiosity.Specs(&v50, &v49);
  [v2 bounds];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  v49 = v50;
  v59 = CGRectApplyAffineTransform(v58, &v49);
  v17 = v59.origin.x;
  v18 = v59.origin.y;
  v19 = v59.size.width;
  v20 = v59.size.height;
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v46 = CGRectGetWidth(v60);
  v61.origin.x = v17;
  v61.origin.y = v18;
  v61.size.width = v19;
  v61.size.height = v20;
  v45 = CGRectGetWidth(v61);
  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v21 = CGRectGetHeight(v62);
  v63.origin.x = v17;
  v63.origin.y = v18;
  v63.size.width = v19;
  v63.size.height = v20;
  v22 = CGRectGetHeight(v63);
  outlined destroy of Radiosity.Specs(&v50);
  v23 = *&v2[direct field offset for Radiosity.UIView.dropShadow];
  [v2 bounds];
  [v23 setFrame:?];

  v24 = [*&v2[direct field offset for Radiosity.UIView.dropShadow] layer];
  v25 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v24 setShadowColor:*(v25 + 7)];

  v26 = [*&v2[direct field offset for Radiosity.UIView.dropShadow] layer];
  v27 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  LODWORD(v28) = *(v27 + 12);
  [v26 setShadowOpacity:v28];

  v29 = [*&v2[direct field offset for Radiosity.UIView.dropShadow] layer];
  v30 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  [v29 setShadowRadius:v30[8]];

  v31 = [*&v2[direct field offset for Radiosity.UIView.dropShadow] layer];
  v32 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v57 = *(v32 + 72);
  v33 = v57;
  if (v57)
  {
    v34 = &v2[direct field offset for Radiosity.UIView.specs];
    swift_beginAccess();
    v35 = v34[8];
    v36 = outlined init with copy of Radiosity.Specs.Shadow.DrawMode(&v57, &v49);
    v37 = v33(v36, MinX + (v46 - v45) * 0.5, v21 - v22, v19, v20, v35);
    v39 = v38;
    outlined destroy of Radiosity.Specs.Shadow.DrawMode(&v57);
  }

  else
  {
    v37 = 0;
  }

  [v31 setShadowPath:v37];

  v40 = [*&v2[direct field offset for Radiosity.UIView.dropShadow] layer];
  v41 = &v2[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v56 = *(v41 + 72);
  v42 = v56;
  if (v56)
  {
    v43 = *(&v56 + 1);
    outlined init with copy of Radiosity.Specs.Shadow.DrawMode(&v56, v48);
    v44 = closure #1 in Radiosity.UIView.updateDropShadow(requireReinstallation:)(v42, v43, v2);
    outlined destroy of Radiosity.Specs.Shadow.DrawMode(&v56);
  }

  else
  {
    v44 = 0;
  }

  [v40 setMask:v44];
}

id closure #1 in Radiosity.UIView.updateDropShadow(requireReinstallation:)(uint64_t (*a1)(uint64_t, double, double, double, double, double), uint64_t a2, char *a3)
{
  v5 = [objc_allocWithZone(CAShapeLayer) init];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 blackColor];
  v9 = [v8 CGColor];

  [v7 setBackgroundColor:v9];
  [a3 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &a3[direct field offset for Radiosity.UIView.specs];
  v19 = swift_beginAccess();
  v20 = a1(v19, v11, v13, v15, v17, *(v18 + 8));
  v22 = v21;

  [v7 setPath:v22];
  [v7 setFillRule:kCAFillRuleEvenOdd];

  return v7;
}

void Radiosity.UIView.updateRadiosity()()
{
  v1 = v0;
  v2 = &v0[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v3 = *(v2 + 5);
  v46 = *(v2 + 4);
  v47 = v3;
  v4 = *(v2 + 7);
  v48 = *(v2 + 6);
  v49 = v4;
  v5 = *(v2 + 1);
  v42 = *v2;
  v43 = v5;
  v6 = *(v2 + 3);
  v44 = *(v2 + 2);
  v45 = v6;
  outlined init with copy of Radiosity.Specs(&v42, &rect[3]);
  [v1 bounds];
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  *&rect[3] = v42;
  *&rect[5] = v43;
  *&rect[7] = v44;
  v51 = CGRectApplyAffineTransform(v50, &rect[3]);
  v11 = v51.origin.x;
  rect[0] = *&v51.origin.x;
  rect[2] = *&v51.origin.y;
  v12 = v51.size.width;
  v13 = v51.size.height;
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  rect[1] = COERCE_ID(CGRectGetMinX(v51));
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v14 = CGRectGetWidth(v52);
  v53.origin.x = v11;
  *&v53.origin.y = rect[2];
  v53.size.width = v12;
  v53.size.height = v13;
  v15 = *&rect[1] + (v14 - CGRectGetWidth(v53)) * 0.5;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v16 = CGRectGetHeight(v54);
  *&v55.origin.x = rect[0];
  *&v55.origin.y = rect[2];
  v55.size.width = v12;
  v55.size.height = v13;
  v17 = CGRectGetHeight(v55);
  outlined destroy of Radiosity.Specs(&v42);
  v18 = *&v1[direct field offset for Radiosity.UIView.radiosity];
  [v18 setFrame:{v15, v16 - v17, v12, v13}];
  v19 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v20 = *(v19 + 1);
  *&rect[3] = *v19;
  *&rect[5] = v20;
  *&rect[7] = *(v19 + 2);
  [v18 setTransform:&rect[3]];
  rect[2] = [v18 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_0, &_ss23_ContiguousArrayStorageCyypGMR_0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004F2EF0;
  v22 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v23 = *(v22 + 13);

  v24 = [v1 traitCollection];
  v25 = [v24 userInterfaceStyle];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  v23(v25);
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v26 setValue:isa forKey:kCAFilterInputAmount];

  v28 = type metadata accessor for CAFilter();
  *(v21 + 56) = v28;
  *(v21 + 32) = v26;
  swift_beginAccess();
  v29 = kCAFilterGaussianBlur;
  v30 = objc_allocWithZone(CAFilter);

  v31 = [v30 initWithType:v29];
  v32 = Double._bridgeToObjectiveC()().super.super.isa;
  [v31 setValue:v32 forKey:kCAFilterInputRadius];

  v33 = Bool._bridgeToObjectiveC()().super.super.isa;
  [v31 setValue:v33 forKey:kCAFilterInputNormalizeEdges];

  *(v21 + 88) = v28;
  *(v21 + 64) = v31;
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [rect[2] setFilters:v34];

  v35 = [v18 layer];
  v36 = &v1[direct field offset for Radiosity.UIView.specs];
  swift_beginAccess();
  v37 = *(v36 + 11);

  v38 = [v1 traitCollection];
  v39 = [v38 userInterfaceStyle];

  LODWORD(v16) = v37(v39);

  LODWORD(v40) = LODWORD(v16);
  [v35 setOpacity:v40];
}

void Radiosity.UIView.updateUserInterfaceStyle(userInterfaceStyle:)(uint64_t a1)
{
  Radiosity.UIView.updateRadiosity()();
  v3 = [*(v1 + direct field offset for Radiosity.UIView.dropShadow) layer];
  v4 = v3;
  if (a1 == 2)
  {
    v5 = -1.0;
  }

  else
  {
    v5 = -2.0;
  }

  if (a1 == 2)
  {
    v6 = -2.0;
  }

  else
  {
    v6 = -1.0;
  }

  [v3 setZPosition:v5];

  v7 = [*(v1 + direct field offset for Radiosity.UIView.radiosity) layer];
  [v7 setZPosition:v6];
}

id Radiosity.UIView.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Radiosity.UIView(0, *((swift_isaMask & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void @objc Radiosity.UIView.__ivar_destroyer(uint64_t a1)
{
  v2 = *(a1 + direct field offset for Radiosity.UIView.specs + 80);
  v6[4] = *(a1 + direct field offset for Radiosity.UIView.specs + 64);
  v6[5] = v2;
  v3 = *(a1 + direct field offset for Radiosity.UIView.specs + 112);
  v6[6] = *(a1 + direct field offset for Radiosity.UIView.specs + 96);
  v6[7] = v3;
  v4 = *(a1 + direct field offset for Radiosity.UIView.specs + 16);
  v6[0] = *(a1 + direct field offset for Radiosity.UIView.specs);
  v6[1] = v4;
  v5 = *(a1 + direct field offset for Radiosity.UIView.specs + 48);
  v6[2] = *(a1 + direct field offset for Radiosity.UIView.specs + 32);
  v6[3] = v5;
  outlined destroy of Radiosity.Specs(v6);
}

__n128 Radiosity.Specs.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 Radiosity.Specs.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t Radiosity.Specs.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v7 = *(v1 + 72);
  v6 = *(v1 + 80);
  v8 = v4;
  result = outlined copy of (@escaping @callee_guaranteed () -> ())?(v7, v6);
  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  return result;
}

__n128 Radiosity.Specs.shadow.setter(uint64_t a1)
{
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v1 + 72), *(v1 + 80));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v4;
  *(v1 + 80) = *(a1 + 32);
  return result;
}

uint64_t SyncedLyricsManager.Configuration.animationDuration.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Whitetail.Binding.configurationBlock.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Radiosity.Specs.radiosity.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = *(v1 + 96);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

__n128 Radiosity.Specs.radiosity.setter(uint64_t a1)
{

  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v4;
  *(v1 + 120) = *(a1 + 32);
  return result;
}

uint64_t View.radiosity(specs:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  State.init(wrappedValue:)();
  LOBYTE(v5) = v14[0];
  *(&v5 + 1) = *(&v14[0] + 1);
  outlined init with copy of Radiosity.Specs(a1, v14);
  View.modifier<A>(_:)();
  v14[6] = v12;
  v14[7] = v13;
  v14[8] = v5;
  v14[2] = v8;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v11;
  v14[0] = v6;
  v14[1] = v7;
  return outlined destroy of Radiosity.ViewModifier(v14);
}

double Radiosity.Specs.with(_:)@<D0>(void (*a1)(__int128 *)@<X0>, _OWORD *a2@<X8>)
{
  v5 = v2[5];
  v19 = v2[4];
  v20 = v5;
  v6 = v2[7];
  v21 = v2[6];
  v22 = v6;
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  v8 = v2[3];
  v17 = v2[2];
  v18 = v8;
  outlined init with copy of Radiosity.Specs(v2, &v14);
  a1(&v15);
  v9 = v20;
  a2[4] = v19;
  a2[5] = v9;
  v10 = v22;
  a2[6] = v21;
  a2[7] = v10;
  v11 = v16;
  *a2 = v15;
  a2[1] = v11;
  result = *&v17;
  v13 = v18;
  a2[2] = v17;
  a2[3] = v13;
  return result;
}

__n128 one-time initialization function for containerDetailHeaderArtwork()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.85, 0.85);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.containerDetailHeaderArtwork = v6;
  *algn_10063F2F0 = v5;
  qword_10063F300 = *&tx;
  unk_10063F308 = *&ty;
  dword_10063F310 = 1050253722;
  qword_10063F318 = v3;
  unk_10063F320 = 0x402E000000000000;
  qword_10063F328 = 0;
  unk_10063F330 = 0;
  qword_10063F338 = closure #3 in variable initialization expression of static Radiosity.Specs.containerDetailHeaderArtwork;
  unk_10063F340 = 0;
  qword_10063F348 = closure #4 in variable initialization expression of static Radiosity.Specs.containerDetailHeaderArtwork;
  unk_10063F350 = 0;
  qword_10063F358 = 0x4040000000000000;
  return result;
}

float closure #3 in variable initialization expression of static Radiosity.Specs.containerDetailHeaderArtwork(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0.42;
  }

  else
  {
    return flt_100512E84[a1];
  }
}

double closure #4 in variable initialization expression of static Radiosity.Specs.containerDetailHeaderArtwork(unint64_t a1)
{
  if (a1 > 2)
  {
    return 1.8;
  }

  else
  {
    return dbl_100512E90[a1];
  }
}

__n128 one-time initialization function for nowPlaying()
{
  v8.a = 1.0;
  v8.b = 0.0;
  v8.c = 0.0;
  v8.d = 1.0;
  v8.tx = 0.0;
  v8.ty = 0.0;
  CGAffineTransformScale(&v7, &v8, 0.94, 0.94);
  tx = v7.tx;
  ty = v7.ty;
  v5 = *&v7.c;
  v6 = *&v7.a;
  v2 = [objc_opt_self() blackColor];
  v3 = [v2 CGColor];

  result = v6;
  static Radiosity.Specs.nowPlaying = v6;
  *algn_10063F370 = v5;
  qword_10063F380 = *&tx;
  unk_10063F388 = *&ty;
  dword_10063F390 = 1053609165;
  qword_10063F398 = v3;
  unk_10063F3A0 = 0x402E000000000000;
  qword_10063F3A8 = 0;
  unk_10063F3B0 = 0;
  qword_10063F3B8 = variable initialization expression of VerticalToggleSlider._maxValue;
  unk_10063F3C0 = 0;
  qword_10063F3C8 = closure #3 in variable initialization expression of static Radiosity.Specs.nowPlaying;
  unk_10063F3D0 = 0;
  qword_10063F3D8 = 0x4049000000000000;
  return result;
}

__int128 *Radiosity.Specs.nowPlaying.unsafeMutableAddressor()
{
  if (one-time initialization token for nowPlaying != -1)
  {
    swift_once();
  }

  return &static Radiosity.Specs.nowPlaying;
}

uint64_t static Radiosity.Specs.containerDetailHeaderArtwork.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return outlined init with copy of Radiosity.Specs(a2, v5);
}

double Radiosity.Specs.pathShadow(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = *(v4 + 48);
  v25 = *(v4 + 32);
  v26 = v7;
  v27 = *(v4 + 64);
  v8 = *(v4 + 16);
  v23 = *v4;
  v24 = v8;
  v9 = (v4 + 72);
  v10 = *(v4 + 72);
  v22 = *(v4 + 120);
  v11 = *(v4 + 80);
  v12 = *(v5 + 104);
  v20 = *(v5 + 88);
  v21 = v12;
  if (a3)
  {
    outlined init with copy of Radiosity.Specs(v5, v19);
  }

  else
  {
    v28 = *v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a1;
    outlined init with copy of Radiosity.Specs(v5, v19);
    outlined destroy of Radiosity.Specs.Shadow.DrawMode(&v28);
    v10 = partial apply for closure #1 in closure #1 in Radiosity.Specs.pathShadow(for:);
  }

  v15 = v26;
  *(a4 + 32) = v25;
  *(a4 + 48) = v15;
  v16 = v24;
  *a4 = v23;
  *(a4 + 16) = v16;
  result = *&v20;
  v18 = v21;
  *(a4 + 88) = v20;
  *(a4 + 64) = v27;
  *(a4 + 72) = v10;
  *(a4 + 80) = v11;
  *(a4 + 104) = v18;
  *(a4 + 120) = v22;
  return result;
}

id closure #1 in closure #1 in Radiosity.Specs.pathShadow(for:)(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRoundedRect:a1 byRoundingCorners:a2 cornerRadii:{a3, a4, a5, a7, a7}];
  v15 = [v14 CGPath];

  v16 = [v13 bezierPathWithRoundedRect:a2 cornerRadius:{a3, a4, a5, a7}];
  UIEdgeInsets.init(edges:inset:)();
  v19 = [v13 bezierPathWithRoundedRect:UIEdgeInsetsInsetRect(a2 cornerRadius:{a3, a4, a5, v17, v18)}];
  CGPathCreateMutable();
  v20 = [v16 CGPath];
  CGMutablePathRef.addPath(_:transform:)();

  v21 = [v19 CGPath];
  CGMutablePathRef.addPath(_:transform:)();

  return v15;
}

_BYTE *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance RadiosityEnabledPreferenceKey(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

__n128 specialized Radiosity.UIView.specs.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + direct field offset for Radiosity.UIView.specs;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(a1 + 64) = *(v3 + 64);
  *(a1 + 80) = v4;
  v5 = *(v3 + 112);
  *(a1 + 96) = *(v3 + 96);
  *(a1 + 112) = v5;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  result = *(v3 + 32);
  v8 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v8;
  return result;
}

id specialized Radiosity.View.makeUIView(context:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for _UIHostingView();
  v12 = type metadata accessor for Radiosity.UIView(0, v9, v10, v11);
  (*(v6 + 16))(v8, v3, v5);
  v13 = _UIHostingView.__allocating_init(rootView:)();
  v14 = *(v4 + 36);
  LOBYTE(v4) = *(v3 + *(v4 + 40));
  v15 = *(v3 + v14 + 80);
  v22[4] = *(v3 + v14 + 64);
  v22[5] = v15;
  v16 = *(v3 + v14 + 112);
  v22[6] = *(v3 + v14 + 96);
  v22[7] = v16;
  v17 = *(v3 + v14 + 16);
  v22[0] = *(v3 + v14);
  v22[1] = v17;
  v18 = *(v3 + v14 + 48);
  v22[2] = *(v3 + v14 + 32);
  v22[3] = v18;
  outlined init with copy of Radiosity.Specs(v22, v21);
  v19 = objc_allocWithZone(v12);
  return Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(v13, v4, v22);
}

double specialized Radiosity.UIView.specs.setter(_OWORD *a1)
{
  v3 = (v1 + direct field offset for Radiosity.UIView.specs);
  swift_beginAccess();
  v4 = v3[5];
  v17 = v3[4];
  v18 = v4;
  v5 = v3[7];
  v19 = v3[6];
  v20 = v5;
  v6 = v3[1];
  v14[0] = *v3;
  v14[1] = v6;
  v7 = v3[3];
  v15 = v3[2];
  v16 = v7;
  v21[0] = v14[0];
  v21[1] = v6;
  v21[2] = v15;
  v21[3] = v7;
  v21[4] = v17;
  v21[5] = v4;
  v21[6] = v19;
  v21[7] = v5;
  v8 = a1[3];
  v3[2] = a1[2];
  v3[3] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  v10 = a1[7];
  v3[6] = a1[6];
  v3[7] = v10;
  v11 = a1[5];
  v3[4] = a1[4];
  v3[5] = v11;
  outlined init with copy of Radiosity.Specs(v14, v13);
  outlined init with copy of Radiosity.Specs(a1, v13);
  outlined destroy of Radiosity.Specs(v21);
  Radiosity.UIView.specs.didset(v14);
  outlined destroy of Radiosity.Specs(v14);
  return result;
}

void specialized Radiosity.View.updateUIView(_:context:)(void *a1, uint64_t a2)
{
  v5 = __chkstk_darwin();
  (*(v7 + 16))(&v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v5);
  dispatch thunk of _UIHostingView.rootView.setter();
  [a1 invalidateIntrinsicContentSize];
  v8 = (v2 + *(a2 + 36));
  v9 = v8[5];
  v14[4] = v8[4];
  v14[5] = v9;
  v10 = v8[7];
  v14[6] = v8[6];
  v14[7] = v10;
  v11 = v8[1];
  v14[0] = *v8;
  v14[1] = v11;
  v12 = v8[3];
  v14[2] = v8[2];
  v14[3] = v12;
  outlined init with copy of Radiosity.Specs(v14, v13);
  specialized Radiosity.UIView.specs.setter(v14);
  outlined destroy of Radiosity.Specs(v14);
  Radiosity.UIView.isRadiosityEnabled.setter(*(v2 + *(a2 + 40)));
}

void specialized closure #1 in Radiosity.UIView.init(content:isRadiosityEnabled:specs:)(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 userInterfaceStyle];

  Radiosity.UIView.updateUserInterfaceStyle(userInterfaceStyle:)(v2);
}

uint64_t get_enum_tag_for_layout_string_11MusicCoreUI9RadiosityO5SpecsV6ShadowV8DrawModeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy144_8_0(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for Radiosity.ViewModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Radiosity.ViewModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Radiosity.Specs(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Radiosity.Specs(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Radiosity.Specs.Shadow(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Radiosity.Specs.Shadow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Radiosity.Specs.Shadow.DrawMode(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Radiosity.Specs.Shadow.DrawMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for Radiosity.Specs.Shadow.DrawMode(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Radiosity.View<_ViewModifier_Content<Radiosity.ViewModifier>>, _PreferenceActionModifier<RadiosityEnabledPreferenceKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Radiosity.View<_ViewModifier_Content<Radiosity.ViewModifier>>, _PreferenceActionModifier<RadiosityEnabledPreferenceKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Radiosity.View<_ViewModifier_Content<Radiosity.ViewModifier>>, _PreferenceActionModifier<RadiosityEnabledPreferenceKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB09RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_AA01_h9Modifier_D0VyAF0hS0VGGAA017_PreferenceActionS0VyAD0g7EnabledT3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy09MusicCoreB09RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_AA01_h9Modifier_D0VyAF0hS0VGGAA017_PreferenceActionS0VyAD0g7EnabledT3KeyVGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Radiosity.View<_ViewModifier_Content<Radiosity.ViewModifier>> and conformance Radiosity.View<A>, &_s11MusicCoreUI9RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_05SwiftC001_E16Modifier_ContentVyAC0eQ0VGGMd, &_s11MusicCoreUI9RadiosityO4View33_1A6CDAF725D6EF4D9F4D12F451DF0EBBLLVy_05SwiftC001_E16Modifier_ContentVyAC0eQ0VGGMR, &protocol conformance descriptor for Radiosity.View<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _PreferenceActionModifier<RadiosityEnabledPreferenceKey> and conformance _PreferenceActionModifier<A>, &_s7SwiftUI25_PreferenceActionModifierVy09MusicCoreB0016RadiosityEnabledC3KeyVGMd, &_s7SwiftUI25_PreferenceActionModifierVy09MusicCoreB0016RadiosityEnabledC3KeyVGMR, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Radiosity.View<_ViewModifier_Content<Radiosity.ViewModifier>>, _PreferenceActionModifier<RadiosityEnabledPreferenceKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_10039C9E4(void *a1)
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type Radiosity.ViewModifier and conformance Radiosity.ViewModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type Radiosity.ViewModifier and conformance Radiosity.ViewModifier()
{
  result = lazy protocol witness table cache variable for type Radiosity.ViewModifier and conformance Radiosity.ViewModifier;
  if (!lazy protocol witness table cache variable for type Radiosity.ViewModifier and conformance Radiosity.ViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Radiosity.ViewModifier and conformance Radiosity.ViewModifier);
  }

  return result;
}

uint64_t type metadata completion function for Radiosity.View(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Radiosity.View(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 56);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * (((v6 + 7) & 0xF8) - 127));
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

double storeEnumTagSinglePayload for Radiosity.View(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 120) = 0;
          result = 0.0;
          *(v19 + 104) = 0u;
          *(v19 + 88) = 0u;
          *(v19 + 72) = 0u;
          *(v19 + 56) = 0u;
          *(v19 + 40) = 0u;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v19 + 56) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 129);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

uint64_t objectdestroyTm_17()
{
  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

unint64_t type metadata accessor for CAFilter()
{
  result = lazy cache variable for type metadata for CAFilter;
  if (!lazy cache variable for type metadata for CAFilter)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CAFilter);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.colorScheme : EnvironmentValues(uint64_t a1)
{
  type metadata accessor for ColorScheme();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t Reactions.StackView.Model.reaction.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double key path getter for Reactions.StackView.Model.reaction : Reactions.StackView.Model@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for Reactions.StackView.Model.reaction : Reactions.StackView.Model(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Reactions.StackView.Model.reaction.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*Reactions.StackView.Model.reaction.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
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
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.$reaction.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$reaction.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySSSg_GMd, &_s7Combine9PublishedV9PublisherVySSSg_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.count.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void key path getter for Reactions.StackView.Model.count : Reactions.StackView.Model(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t key path setter for Reactions.StackView.Model.count : Reactions.StackView.Model(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Reactions.StackView.Model.count.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*Reactions.StackView.Model.count.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
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
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.$count.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd_0, &_s7Combine9PublishedV9PublisherVySi_GMR_0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd_0, &_s7Combine9PublishedVySiGMR_0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$count.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd_0, &_s7Combine9PublishedV9PublisherVySi_GMR_0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd_0, &_s7Combine9PublishedVySiGMR_0);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.userImage.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void key path getter for Reactions.StackView.Model.userImage : Reactions.StackView.Model(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t key path setter for Reactions.StackView.Model.userImage : Reactions.StackView.Model(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t Reactions.StackView.Model.userImage.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*Reactions.StackView.Model.userImage.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
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
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.$userImage.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7UIImageCSg_GMd, &_s7Combine9PublishedV9PublisherVySo7UIImageCSg_GMR);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd, &_s7Combine9PublishedVySo7UIImageCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$userImage.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo7UIImageCSg_GMd, &_s7Combine9PublishedV9PublisherVySo7UIImageCSg_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd, &_s7Combine9PublishedVySo7UIImageCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$videoBounds.modify;
}

void (*Reactions.StackView.Model.isReacting.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
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
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.videoBounds.modify;
}

uint64_t Reactions.StackView.Model.$isReacting.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd_0, &_s7Combine9PublishedV9PublisherVySb_GMR_0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0, &_s7Combine9PublishedVySbGMR_0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$isReacting.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd_0, &_s7Combine9PublishedV9PublisherVySb_GMR_0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0, &_s7Combine9PublishedVySbGMR_0);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.isReacting.setter(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*Reactions.StackView.Model.hasAnimatedBackground.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
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
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.$hasAnimatedBackground.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd_0, &_s7Combine9PublishedV9PublisherVySb_GMR_0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0, &_s7Combine9PublishedVySbGMR_0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Reactions.StackView.Model.$hasAnimatedBackground.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd_0, &_s7Combine9PublishedV9PublisherVySb_GMR_0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0, &_s7Combine9PublishedVySbGMR_0);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

uint64_t Reactions.StackView.Model.__allocating_init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0, &_s7Combine9PublishedVySbGMR_0);
  v5 = *(v26 - 8);
  __chkstk_darwin();
  v7 = v24 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd, &_s7Combine9PublishedVySo7UIImageCSgGMR);
  v8 = *(v25 - 8);
  __chkstk_darwin();
  v10 = v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v24 - v13;
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0, &_sSSSgMR_0);
  Published.init(initialValue:)();
  (*(v12 + 32))(v15 + v16, v14, v11);
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
  Published.init(initialValue:)();
  (*(v8 + 32))(v15 + v17, v10, v25);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  Published.init(initialValue:)();
  v19 = *(v5 + 32);
  v20 = v26;
  v19(v15 + v18, v7, v26);
  v21 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  Published.init(initialValue:)();
  v19(v15 + v21, v7, v20);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v15 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v12 + 8))(v15 + v16, v11);
  v32 = v27;
  v33 = v28;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  static Published.subscript.setter();
  *(v15 + v22) = v31;
  return v15;
}

uint64_t Reactions.StackView.Model.init(reaction:count:userImage:isVibrant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v31 = a5;
  v29 = a3;
  v30 = a4;
  v27 = a1;
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0, &_s7Combine9PublishedVySbGMR_0);
  v6 = *(v26 - 8);
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd, &_s7Combine9PublishedVySo7UIImageCSgGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v34 = 0;
  v35 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_0, &_sSSSgMR_0);
  Published.init(initialValue:)();
  (*(v14 + 32))(v5 + v17, v16, v13);
  v18 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0);
  Published.init(initialValue:)();
  (*(v10 + 32))(v5 + v18, v12, v9);
  v19 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  LOBYTE(v34) = 0;
  Published.init(initialValue:)();
  v20 = *(v6 + 32);
  v21 = v26;
  v20(v5 + v19, v8, v26);
  v22 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground;
  LOBYTE(v34) = 1;
  Published.init(initialValue:)();
  v20(v5 + v22, v8, v21);
  v23 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant;
  *(v5 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) = 0;
  swift_beginAccess();
  (*(v14 + 8))(v5 + v17, v13);
  v32 = v27;
  v33 = v28;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v32 = v29;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v30;

  static Published.subscript.setter();
  *(v5 + v23) = v31;
  return v5;
}

uint64_t Reactions.StackView.Model.deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd_0, &_s7Combine9PublishedVySiGMR_0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd, &_s7Combine9PublishedVySo7UIImageCSgGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0, &_s7Combine9PublishedVySbGMR_0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);
  return v0;
}

uint64_t Reactions.StackView.Model.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__reaction;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__count;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd_0, &_s7Combine9PublishedVySiGMR_0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__userImage;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo7UIImageCSgGMd, &_s7Combine9PublishedVySo7UIImageCSgGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__isReacting;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd_0, &_s7Combine9PublishedVySbGMR_0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model__hasAnimatedBackground, v8);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance Reactions.StackView.Model@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Reactions.StackView.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t property wrapper backing initializer of Reactions.StackView.model(uint64_t a1)
{
  type metadata accessor for Reactions.StackView.Model(0);
  lazy protocol witness table accessor for type Reactions.StackView.Model and conformance Reactions.StackView.Model(&lazy protocol witness table cache variable for type Reactions.StackView.Model and conformance Reactions.StackView.Model, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);

  return ObservedObject.init(wrappedValue:)();
}

uint64_t Reactions.StackView.$model.getter()
{
  type metadata accessor for Reactions.StackView.Model(0);
  lazy protocol witness table accessor for type Reactions.StackView.Model and conformance Reactions.StackView.Model(&lazy protocol witness table cache variable for type Reactions.StackView.Model and conformance Reactions.StackView.Model, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);

  return ObservedObject.projectedValue.getter();
}

double Reactions.StackView.specs.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 Reactions.StackView.init(model:specs:)@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Reactions.StackView(0);
  v6 = v5[6];
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMR);
  swift_storeEnumTagMultiPayload();
  v7 = v5[7];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA19ColorSchemeContrastO_GMR);
  swift_storeEnumTagMultiPayload();
  v8 = v5[8];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR_0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Reactions.StackView.Model(0);
  lazy protocol witness table accessor for type Reactions.StackView.Model and conformance Reactions.StackView.Model(&lazy protocol witness table cache variable for type Reactions.StackView.Model and conformance Reactions.StackView.Model, type metadata accessor for Reactions.StackView.Model, &protocol conformance descriptor for Reactions.StackView.Model);
  *a3 = ObservedObject.init(wrappedValue:)();
  *(a3 + 8) = v9;
  result = *a2;
  v11 = *(a2 + 16);
  *(a3 + 16) = *a2;
  *(a3 + 32) = v11;
  *(a3 + 48) = *(a2 + 32);
  return result;
}

void Reactions.StackView.body.getter(uint64_t a1@<X8>)
{
  v106 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMR);
  __chkstk_darwin();
  v92 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = (&v83 - v3);
  v96 = *(type metadata accessor for Reactions.StackView(0) - 8);
  __chkstk_darwin();
  v97 = v4;
  v98 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVys18ReversedCollectionVySnySiGGSiAA15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAIyAIyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeQ5StyleVyAOGAA6CircleVGG_AIyArTyAVyAA03AnyqU0VGAYGGtGGAA013_TraitWritingR0VyAA010TransitionX3KeyVGGGMd, &_s7SwiftUI7ForEachVys18ReversedCollectionVySnySiGGSiAA15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAIyAIyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeQ5StyleVyAOGAA6CircleVGG_AIyArTyAVyAA03AnyqU0VGAYGGtGGAA013_TraitWritingR0VyAA010TransitionX3KeyVGGGMR);
  v101 = *(v5 - 8);
  v102 = v5;
  __chkstk_darwin();
  v100 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v83 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeOSgMd, &_s7SwiftUI15DynamicTypeSizeOSgMR);
  __chkstk_darwin();
  v9 = &v83 - v8;
  v91 = type metadata accessor for DynamicTypeSize();
  v10 = *(v91 - 8);
  __chkstk_darwin();
  v12 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BlendMode();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v95 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v15;
  v16 = __chkstk_darwin();
  v17 = *(v14 + 104);
  v105 = &v83 - v18;
  v17(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19 = v107;
  v20 = *(v1 + 16);
  if (v20 < v107)
  {
    v19 = *(v1 + 16);
  }

  v21 = __OFSUB__(v19, 1);
  v22 = v19 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v90 = v1;
    v88 = *(v1 + 48);
    v23 = *(v1 + 24);
    v24 = *(v1 + 32);
    v25 = *(v1 + 40);
    KeyPath = v22;
    v85 = v12;
    v87 = v20;
    _s7SwiftUI11EnvironmentV12wrappedValuexvgAA15DynamicTypeSizeO_Tg5_0(v12);
    v103 = v14;
    v86 = *(v10 + 16);
    v26 = v12;
    v27 = v91;
    v86(v9, v26, v91);
    v104 = v13;
    v84 = *(v10 + 56);
    v84(v9, 0, 1, v27);
    v28 = UIContentSizeCategory.init(_:)();
    v29 = objc_opt_self();
    v30 = [v29 traitCollectionWithPreferredContentSizeCategory:v28];
    v31 = objc_opt_self();
    v32 = [v31 defaultMetrics];
    [v32 scaledValueForValue:v30 compatibleWithTraitCollection:v23];
    v34 = v33;

    v35 = v9;
    v36 = v9;
    v37 = v85;
    v86(v35, v85, v27);
    v38 = v103;
    v39 = v106;
    v84(v36, 0, 1, v27);
    v40 = v104;
    v41 = UIContentSizeCategory.init(_:)();
    v42 = [v29 traitCollectionWithPreferredContentSizeCategory:v41];
    v43 = [v31 defaultMetrics];
    [v43 scaledValueForValue:v42 compatibleWithTraitCollection:v25];
    v45 = v44;

    (*(v10 + 8))(v37, v27);
    v46 = v87;
    *&v110 = v87;
    *(&v110 + 1) = v34;
    *&v111 = v24;
    *(&v111 + 1) = v45;
    LODWORD(v42) = v88;
    v112 = v88;
    *v39 = static VerticalAlignment.center.getter();
    *(v39 + 8) = v24 - v34;
    *(v39 + 16) = 0;
    v86 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA7ForEachVys18ReversedCollectionVySnySiGGSiAA15ModifiedContentVyAA6ZStackVyAIyASyASyAA5ColorVAA06_FrameG0VGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeU5StyleVyAWGAA6CircleVGG_ASyAZA0_yA2_yAA03AnyuY0VGA5_GGtGGAA013_TraitWritingV0VyAA18TransitionTraitKeyVGGGAUyAIyA7__ASyASyASyAA5GroupVyAA012_ConditionalO0VyASyAA010_AnimationD0VyAA4TextVGA19_GASyASyAA5ImageVAA011_ForegroundyV0VyAWGGAA022_EnvironmentKeyWritingV0VyAA4FontVSgGGGGA43_GAYGA11_GASyASyASyASyASyASyA33_AA012_AspectRatioG0VGAA20_MaskAlignmentEffectVyA5_GG09MusicCoreB006BorderdV033_F5ED3014321945F1E2BE58A044A15282LLVGA16_yAA14ZIndexTraitKeyVGGA19_GAYGSgtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA7ForEachVys18ReversedCollectionVySnySiGGSiAA15ModifiedContentVyAA6ZStackVyAIyASyASyAA5ColorVAA06_FrameG0VGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeU5StyleVyAWGAA6CircleVGG_ASyAZA0_yA2_yAA03AnyuY0VGA5_GGtGGAA013_TraitWritingV0VyAA18TransitionTraitKeyVGGGAUyAIyA7__ASyASyASyAA5GroupVyAA012_ConditionalO0VyASyAA010_AnimationD0VyAA4TextVGA19_GASyASyAA5ImageVAA011_ForegroundyV0VyAWGGAA022_EnvironmentKeyWritingV0VyAA4FontVSgGGGGA43_GAYGA11_GASyASyASyASyASyASyA33_AA012_AspectRatioG0VGAA20_MaskAlignmentEffectVyA5_GG09MusicCoreB006BorderdV033_F5ED3014321945F1E2BE58A044A15282LLVGA16_yAA14ZIndexTraitKeyVGGA19_GAYGSgtGGtGGMR) + 44));
    if (v42)
    {
      v47 = KeyPath & ~(KeyPath >> 63);
    }

    else
    {
      v47 = v46;
    }

    v91 = v47;
    *&v107 = 0;
    *(&v107 + 1) = KeyPath & ~(KeyPath >> 63);
    KeyPath = swift_getKeyPath();
    v48 = v90;
    v49 = v98;
    outlined init with copy of Reactions.StackView(v90, v98);
    v50 = v95;
    v51 = v105;
    (*(v38 + 16))(v95, v105, v40);
    v52 = (*(v96 + 80) + 49) & ~*(v96 + 80);
    v53 = (v97 + *(v38 + 80) + v52) & ~*(v38 + 80);
    v54 = swift_allocObject();
    v55 = v111;
    *(v54 + 16) = v110;
    *(v54 + 32) = v55;
    *(v54 + 48) = v112;
    outlined init with take of Reactions.StackView(v49, v54 + v52);
    (*(v38 + 32))(v54 + v53, v50, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySnySiGGMd, &_ss18ReversedCollectionVySnySiGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_ACyAlNyAPyAA03AnymQ0VGASGGtGGAA013_TraitWritingN0VyAA010TransitionT3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_ACyAlNyAPyAA03AnymQ0VGASGGtGGAA013_TraitWritingN0VyAA010TransitionT3KeyVGGMR);
    lazy protocol witness table accessor for type ReversedCollection<Range<Int>> and conformance <> ReversedCollection<A>();
    lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<Color>, Circle>>, ModifiedContent<ModifiedContent<Color, _FrameLayout>, _InsettableBackgroundShapeModifier<_BlendModeShapeStyle<AnyShapeStyle>, Circle>>)>>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>();
    v56 = v99;
    ForEach<>.init(_:id:content:)();
    v57 = static Alignment.center.getter();
    v58 = v93;
    *v93 = v57;
    *(v58 + 8) = v59;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ColorVAA06_FrameG0VGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeO5StyleVyAMGAA6CircleVGG_AKyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA010_AnimationD0VyAA4TextVGAA013_TraitWritingP0VyAA010TransitionY3KeyVGGAKyAKyAA5ImageVAA011_ForegroundsP0VyAMGGAA015_EnvironmentKeyzP0VyAA4FontVSgGGGGA24_GAOGARyATyAA03AnyoS0VGAWGGAKyAKyAKyAKyAKyAKyA14_AA012_AspectRatioG0VGAA20_MaskAlignmentEffectVyAWGG09MusicCoreB006BorderdP033_F5ED3014321945F1E2BE58A044A15282LLVGA8_yAA06ZIndexY3KeyVGGA11_GAOGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ColorVAA06_FrameG0VGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeO5StyleVyAMGAA6CircleVGG_AKyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA010_AnimationD0VyAA4TextVGAA013_TraitWritingP0VyAA010TransitionY3KeyVGGAKyAKyAA5ImageVAA011_ForegroundsP0VyAMGGAA015_EnvironmentKeyzP0VyAA4FontVSgGGGGA24_GAOGARyATyAA03AnyoS0VGAWGGAKyAKyAKyAKyAKyAKyA14_AA012_AspectRatioG0VGAA20_MaskAlignmentEffectVyAWGG09MusicCoreB006BorderdP033_F5ED3014321945F1E2BE58A044A15282LLVGA8_yAA06ZIndexY3KeyVGGA11_GAOGSgtGGMR);
    closure #2 in closure #1 in Reactions.StackView.body.getter(&v110, v48, v51, v58 + *(v60 + 44));
    v62 = v101;
    v61 = v102;
    v63 = *(v101 + 16);
    v64 = v100;
    v63(v100, v56, v102);
    v65 = v92;
    outlined init with copy of TaskPriority?(v58, v92, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMR);
    v66 = v86;
    *v86 = 0;
    *(v66 + 8) = 1;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA7ForEachVys18ReversedCollectionVySnySiGGSiAA15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAKyAKyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeR5StyleVyAQGAA6CircleVGG_AKyAtVyAXyAA03AnyrV0VGA_GGtGGAA013_TraitWritingS0VyAA010TransitionY3KeyVGGGAMyAOyA1__AKyAKyAKyAA5GroupVyAA012_ConditionalI0VyAKyAA010_AnimationL0VyAA4TextVGA13_GAKyAKyAA5ImageVAA011_ForegroundvS0VyAQGGAA015_EnvironmentKeyzS0VyAA4FontVSgGGGGA37_GASGA5_GAKyAKyAKyAKyAKyAKyA27_AA012_AspectRatioO0VGAA20_MaskAlignmentEffectVyA_GG09MusicCoreB006BorderlS033_F5ED3014321945F1E2BE58A044A15282LLVGA10_yAA06ZIndexY3KeyVGGA13_GASGSgtGGtMd, &_s7SwiftUI6SpacerV_AA7ForEachVys18ReversedCollectionVySnySiGGSiAA15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAKyAKyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeR5StyleVyAQGAA6CircleVGG_AKyAtVyAXyAA03AnyrV0VGA_GGtGGAA013_TraitWritingS0VyAA010TransitionY3KeyVGGGAMyAOyA1__AKyAKyAKyAA5GroupVyAA012_ConditionalI0VyAKyAA010_AnimationL0VyAA4TextVGA13_GAKyAKyAA5ImageVAA011_ForegroundvS0VyAQGGAA015_EnvironmentKeyzS0VyAA4FontVSgGGGGA37_GASGA5_GAKyAKyAKyAKyAKyAKyA27_AA012_AspectRatioO0VGAA20_MaskAlignmentEffectVyA_GG09MusicCoreB006BorderlS033_F5ED3014321945F1E2BE58A044A15282LLVGA10_yAA06ZIndexY3KeyVGGA13_GASGSgtGGtMR);
    v63(v66 + *(v67 + 48), v64, v61);
    outlined init with copy of TaskPriority?(v65, v66 + *(v67 + 64), &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMR);
    outlined destroy of TaskPriority?(v58, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMR);
    v68 = *(v62 + 8);
    v68(v56, v61);
    outlined destroy of TaskPriority?(v65, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_AGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA010_AnimationE0VyAA4TextVGAA013_TraitWritingN0VyAA010TransitionW3KeyVGGAGyAGyAA5ImageVAA011_ForegroundqN0VyAIGGAA012_EnvironmentzxN0VyAA4FontVSgGGGGA20_GAKGANyAPyAA03AnymQ0VGASGGAGyAGyAGyAGyAGyAGyA10_AA012_AspectRatioJ0VGAA20_MaskAlignmentEffectVyASGG09MusicCoreB006BordereN033_F5ED3014321945F1E2BE58A044A15282LLVGA4_yAA06ZIndexwZ0VGGA7_GAKGSgtGGMR);
    v68(v64, v61);
    if (!__OFADD__(v91, 1))
    {
      Int.seconds.getter(v91 + 1);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA7ForEachVys18ReversedCollectionVySnySiGGSiACyAA6ZStackVyAGyACyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeS5StyleVyASGAA6CircleVGG_ACyAvXyAZyAA03AnysW0VGA1_GGtGGAA013_TraitWritingT0VyAA010TransitionZ3KeyVGGGAQyAGyA3__ACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA010_AnimationG0VyAA4TextVGA15_GACyACyAA5ImageVAA011_ForegroundwT0VyASGGAA022_EnvironmentKeyWritingT0VyAA4FontVSgGGGGA39_GAUGA7_GACyACyACyACyACyACyA29_AA012_AspectRatioP0VGAA20_MaskAlignmentEffectVyA1_GG09MusicCoreB006BordergT033_F5ED3014321945F1E2BE58A044A15282LLVGA12_yAA06ZIndexZ3KeyVGGA15_GAUGSgtGGtGGAUGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA7ForEachVys18ReversedCollectionVySnySiGGSiACyAA6ZStackVyAGyACyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeS5StyleVyASGAA6CircleVGG_ACyAvXyAZyAA03AnysW0VGA1_GGtGGAA013_TraitWritingT0VyAA010TransitionZ3KeyVGGGAQyAGyA3__ACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA010_AnimationG0VyAA4TextVGA15_GACyACyAA5ImageVAA011_ForegroundwT0VyASGGAA022_EnvironmentKeyWritingT0VyAA4FontVSgGGGGA39_GAUGA7_GACyACyACyACyACyACyA29_AA012_AspectRatioP0VGAA20_MaskAlignmentEffectVyA1_GG09MusicCoreB006BordergT033_F5ED3014321945F1E2BE58A044A15282LLVGA12_yAA06ZIndexZ3KeyVGGA15_GAUGSgtGGtGGAUGMR);
      v70 = v106;
      v71 = (v106 + *(v69 + 36));
      v72 = v108;
      *v71 = v107;
      v71[1] = v72;
      v71[2] = v109;
      v73 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v82 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA7ForEachVys18ReversedCollectionVySnySiGGSiACyAA6ZStackVyAGyACyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeS5StyleVyASGAA6CircleVGG_ACyAvXyAZyAA03AnysW0VGA1_GGtGGAA013_TraitWritingT0VyAA010TransitionZ3KeyVGGGAQyAGyA3__ACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA010_AnimationG0VyAA4TextVGA15_GACyACyAA5ImageVAA011_ForegroundwT0VyASGGAA022_EnvironmentKeyWritingT0VyAA4FontVSgGGGGA39_GAUGA7_GACyACyACyACyACyACyA29_AA012_AspectRatioP0VGAA20_MaskAlignmentEffectVyA1_GG09MusicCoreB006BordergT033_F5ED3014321945F1E2BE58A044A15282LLVGA12_yAA06ZIndexZ3KeyVGGA15_GAUGSgtGGtGGAUGAA08_PaddingP0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA7ForEachVys18ReversedCollectionVySnySiGGSiACyAA6ZStackVyAGyACyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeS5StyleVyASGAA6CircleVGG_ACyAvXyAZyAA03AnysW0VGA1_GGtGGAA013_TraitWritingT0VyAA010TransitionZ3KeyVGGGAQyAGyA3__ACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA010_AnimationG0VyAA4TextVGA15_GACyACyAA5ImageVAA011_ForegroundwT0VyASGGAA022_EnvironmentKeyWritingT0VyAA4FontVSgGGGGA39_GAUGA7_GACyACyACyACyACyACyA29_AA012_AspectRatioP0VGAA20_MaskAlignmentEffectVyA1_GG09MusicCoreB006BordergT033_F5ED3014321945F1E2BE58A044A15282LLVGA12_yAA06ZIndexZ3KeyVGGA15_GAUGSgtGGtGGAUGAA08_PaddingP0VGMR) + 36);
      *v82 = v73;
      *(v82 + 8) = v75;
      *(v82 + 16) = v77;
      *(v82 + 24) = v79;
      *(v82 + 32) = v81;
      *(v82 + 40) = 0;
      (*(v103 + 8))(v105, v104);
      return;
    }
  }

  __break(1u);
}

uint64_t closure #1 in closure #1 in Reactions.StackView.body.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v22 = a3;
  v6 = type metadata accessor for ScaleTransition();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10TransitionPAAE9animationyQrAA9AnimationVSgFQOyAA05ScaleC0V_Qo_Md, &_s7SwiftUI10TransitionPAAE9animationyQrAA9AnimationVSgFQOyAA05ScaleC0V_Qo_MR);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v21 - v14;
  *a4 = static Alignment.center.getter();
  a4[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ColorVAA06_FrameG0VGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeO5StyleVyAMGAA6CircleVGG_AKyApRyATyAA03AnyoS0VGAWGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ColorVAA06_FrameG0VGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeO5StyleVyAMGAA6CircleVGG_AKyApRyATyAA03AnyoS0VGAWGGtGGMR);
  closure #1 in closure #1 in closure #1 in Reactions.StackView.body.getter(a2, v22, a4 + *(v17 + 44));
  static UnitPoint.center.getter();
  ScaleTransition.init(_:anchor:)();
  static Animation.easeInOut(duration:)();
  v18 = lazy protocol witness table accessor for type Reactions.StackView.Model and conformance Reactions.StackView.Model(&lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
  Transition.animation(_:)();

  (*(v7 + 8))(v9, v6);
  (*(v11 + 16))(v13, v15, v10);
  v23 = v6;
  v24 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = AnyTransition.init<A>(_:)();
  (*(v11 + 8))(v15, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_ACyAlNyAPyAA03AnymQ0VGASGGtGGAA013_TraitWritingN0VyAA010TransitionT3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeM5StyleVyAIGAA6CircleVGG_ACyAlNyAPyAA03AnymQ0VGASGGtGGAA013_TraitWritingN0VyAA010TransitionT3KeyVGGMR);
  *(a4 + *(result + 36)) = v19;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in Reactions.StackView.body.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v43 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMR) - 8;
  __chkstk_darwin();
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMR) - 8;
  __chkstk_darwin();
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v38 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v37 = v44[1];
  LODWORD(v36) = v45;
  v12 = v46;
  v35 = v47;
  v34 = v48;
  v33 = v49;
  v13 = static Color.white.getter();
  v14 = &v11[*(v8 + 44)];
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI20_BlendModeShapeStyleVyAA5ColorVGMd, &_s7SwiftUI20_BlendModeShapeStyleVyAA5ColorVGMR) + 36);
  v16 = enum case for BlendMode.destinationOut(_:);
  v17 = type metadata accessor for BlendMode();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v14 + v15, v16, v17);
  *v14 = v13;
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA010_BlendModeE5StyleVyAA5ColorVGAA6CircleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA010_BlendModeE5StyleVyAA5ColorVGAA6CircleVGMR) + 56)) = 256;
  v19 = v37;
  *v11 = v38;
  *(v11 + 1) = v19;
  v11[16] = v36;
  *(v11 + 3) = v12;
  v11[32] = v35;
  v20 = v33;
  *(v11 + 5) = v34;
  *(v11 + 6) = v20;
  v38 = static Color.clear.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = v50;
  LOBYTE(v12) = v51;
  v22 = v52;
  LOBYTE(v16) = v53;
  v37 = v54;
  v36 = v55;
  Reactions.StackView.backgroundColor.getter(v44);
  v23 = v44[0];
  v24 = &v7[*(v4 + 44)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI20_BlendModeShapeStyleVyAA03AnyeF0VGMd, &_s7SwiftUI20_BlendModeShapeStyleVyAA03AnyeF0VGMR);
  (*(v18 + 16))(v24 + *(v25 + 36), v41, v17);
  *v24 = v23;
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA010_BlendModeE5StyleVyAA03AnyeI0VGAA6CircleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA010_BlendModeE5StyleVyAA03AnyeI0VGAA6CircleVGMR) + 56)) = 256;
  v26 = v39;
  *v7 = v38;
  *(v7 + 1) = v21;
  v7[16] = v12;
  *(v7 + 3) = v22;
  v7[32] = v16;
  v27 = v36;
  *(v7 + 5) = v37;
  *(v7 + 6) = v27;
  outlined init with copy of TaskPriority?(v11, v26, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMR);
  v28 = v42;
  outlined init with copy of TaskPriority?(v7, v42, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMR);
  v29 = v43;
  outlined init with copy of TaskPriority?(v26, v43, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMR);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGG_ACyAhJyALyAA03AnyjN0VGAOGGtMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGG_ACyAhJyALyAA03AnyjN0VGAOGGtMR);
  outlined init with copy of TaskPriority?(v28, v29 + *(v30 + 48), &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMR);
  outlined destroy of TaskPriority?(v7, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMR);
  outlined destroy of TaskPriority?(v11, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMR);
  outlined destroy of TaskPriority?(v28, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAA03AnyjN0VGAA6CircleVGGMR);
  return outlined destroy of TaskPriority?(v26, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMR);
}

uint64_t Reactions.StackView.backgroundColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ColorSchemeO_AA0cD8ContrastOtMd, &_s7SwiftUI11ColorSchemeO_AA0cD8ContrastOtMR) - 8;
  __chkstk_darwin();
  v21 = &v20 - v4;
  v5 = type metadata accessor for ColorSchemeContrast();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorScheme();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Reactions.StackView(0);
  specialized Environment.wrappedValue.getter(v12);
  specialized Environment.wrappedValue.getter(v8);
  v13 = *(v3 + 56);
  v14 = v10;
  v15 = v21;
  (*(v14 + 32))(v21, v12, v9);
  (*(v6 + 32))(v15 + v13, v8, v5);
  v16 = (*(v14 + 88))(v15, v9);
  if (v16 == enum case for ColorScheme.light(_:))
  {
    if ((*(v6 + 88))(v15 + v13, v5) == enum case for ColorSchemeContrast.increased(_:))
    {
      v17 = [objc_opt_self() secondarySystemFillColor];
      v23 = Color.init(_:)();
LABEL_7:
      *v22 = AnyShapeStyle.init<A>(_:)();
      return (*(v14 + 8))(v15, v9);
    }
  }

  else if (v16 == enum case for ColorScheme.dark(_:) && (*(v6 + 88))(v15 + v13, v5) == enum case for ColorSchemeContrast.increased(_:))
  {
    LODWORD(v23) = static HierarchicalShapeStyle.quinary.getter();
    goto LABEL_7;
  }

  if (*(*(v2 + 8) + OBJC_IVAR____TtCVO11MusicCoreUI9Reactions9StackView5Model_isVibrant) == 1)
  {
    LODWORD(v23) = static HierarchicalShapeStyle.quaternary.getter();
  }

  else
  {
    v19 = [objc_opt_self() secondarySystemFillColor];
    v23 = Color.init(_:)();
  }

  *v22 = AnyShapeStyle.init<A>(_:)();
  return outlined destroy of TaskPriority?(v15, &_s7SwiftUI11ColorSchemeO_AA0cD8ContrastOtMd, &_s7SwiftUI11ColorSchemeO_AA0cD8ContrastOtMR);
}

uint64_t closure #2 in closure #1 in Reactions.StackView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a2;
  v86 = a3;
  v80 = a1;
  v89 = a4;
  v76 = type metadata accessor for ScaleTransition();
  v73 = *(v76 - 8);
  __chkstk_darwin();
  v70 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10TransitionPAAE9animationyQrAA9AnimationVSgFQOyAA05ScaleC0V_Qo_Md, &_s7SwiftUI10TransitionPAAE9animationyQrAA9AnimationVSgFQOyAA05ScaleC0V_Qo_MR);
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin();
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v66 - v8;
  v9 = type metadata accessor for Image.ResizingMode();
  v68 = *(v9 - 8);
  v69 = v9;
  __chkstk_darwin();
  v67 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  __chkstk_darwin();
  v83 = &v66 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMR) - 8;
  __chkstk_darwin();
  v88 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMR) - 8;
  __chkstk_darwin();
  v90 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v66 - v17;
  v87 = static Color.clear.getter();
  v19 = *(a1 + 8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = v118;
  LODWORD(v82) = v119;
  v81 = v120;
  LODWORD(v79) = v121;
  v77 = v123;
  *&v78 = v122;
  v21 = static Color.white.getter();
  v22 = &v18[*(v15 + 44)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI20_BlendModeShapeStyleVyAA5ColorVGMd, &_s7SwiftUI20_BlendModeShapeStyleVyAA5ColorVGMR) + 36);
  v24 = enum case for BlendMode.destinationOut(_:);
  v25 = type metadata accessor for BlendMode();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v22 + v23, v24, v25);
  *v22 = v21;
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA010_BlendModeE5StyleVyAA5ColorVGAA6CircleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA010_BlendModeE5StyleVyAA5ColorVGAA6CircleVGMR) + 56)) = 256;
  *v18 = v87;
  *(v18 + 1) = v20;
  v18[16] = v82;
  *(v18 + 3) = v81;
  v18[32] = v79;
  v27 = v77;
  *(v18 + 5) = v78;
  *(v18 + 6) = v27;
  v87 = v18;
  closure #1 in closure #2 in closure #1 in Reactions.StackView.body.getter(&v124);
  v81 = *(&v126 + 1);
  v82 = v126;
  LOBYTE(v22) = v127;
  v28 = type metadata accessor for Font.Design();
  v78 = v125;
  v79 = v124;
  v29 = v83;
  (*(*(v28 - 8) + 56))(v83, 1, 1, v28);
  v30 = static Font.system(size:weight:design:)();
  outlined destroy of TaskPriority?(v29, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  KeyPath = swift_getKeyPath();
  LOBYTE(v124) = v22;
  static Alignment.center.getter();
  v83 = v19;
  _FrameLayout.init(width:height:alignment:)();
  Reactions.StackView.backgroundColor.getter(&v124);
  v32 = v124;
  v33 = &v14[*(v84 + 44)];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI20_BlendModeShapeStyleVyAA03AnyeF0VGMd, &_s7SwiftUI20_BlendModeShapeStyleVyAA03AnyeF0VGMR);
  (*(v26 + 16))(&v33[*(v34 + 36)], v86, v25);
  *v33 = v32;
  *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA010_BlendModeE5StyleVyAA03AnyeI0VGAA6CircleVGMd, &_s7SwiftUI34_InsettableBackgroundShapeModifierVyAA010_BlendModeE5StyleVyAA03AnyeI0VGAA6CircleVGMR) + 56)] = 256;
  v35 = v78;
  *v14 = v79;
  *(v14 + 1) = v35;
  v36 = v81;
  *(v14 + 4) = v82;
  *(v14 + 5) = v36;
  v14[48] = v22;
  *(v14 + 7) = KeyPath;
  *(v14 + 8) = v30;
  v37 = v134[1];
  *(v14 + 72) = v134[0];
  *(v14 + 88) = v37;
  v38 = v14;
  *(v14 + 104) = v134[2];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v39 = v124;
  if (!v124)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v124 != 1)
  {

LABEL_5:
    _s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA20_MaskAlignmentEffectVyAA6CircleVGG09MusicCoreB018BorderViewModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA013_TraitWritingQ0VyAA06ZIndexY3KeyVGGAUyAA010TransitionY3KeyVGGAA06_FrameH0VGSgWOi0_(&v124);
    goto LABEL_6;
  }

  v40 = v39;
  Image.init(uiImage:)();
  v42 = v67;
  v41 = v68;
  v43 = v69;
  (*(v68 + 104))(v67, enum case for Image.ResizingMode.stretch(_:), v69);
  v86 = Image.resizable(capInsets:resizingMode:)();

  (*(v41 + 8))(v42, v43);
  v44 = static Alignment.center.getter();
  v84 = v45;
  v85 = v44;
  static Color.black.getter();
  v82 = Color.opacity(_:)();

  static UnitPoint.center.getter();
  v46 = v70;
  ScaleTransition.init(_:anchor:)();
  static Animation.easeInOut(duration:)();
  v47 = lazy protocol witness table accessor for type Reactions.StackView.Model and conformance Reactions.StackView.Model(&lazy protocol witness table cache variable for type ScaleTransition and conformance ScaleTransition, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
  v48 = v72;
  v49 = v76;
  Transition.animation(_:)();

  (*(v73 + 8))(v46, v49);
  v50 = v74;
  v51 = v75;
  (*(v74 + 16))(v71, v48, v75);
  *&v124 = v49;
  *(&v124 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  v52 = AnyTransition.init<A>(_:)();
  (*(v50 + 8))(v48, v51);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  *(v117 + 8) = v101;
  v111 = v86;
  LOWORD(v112) = 257;
  *(&v112 + 1) = v85;
  *&v113 = v84;
  *(&v113 + 1) = v82;
  *&v114 = 0x3FE0000000000000;
  BYTE8(v114) = 0;
  v115 = 0uLL;
  LOBYTE(v116) = 2;
  *(&v116 + 1) = 0x3FF0000000000000;
  *&v117[0] = v52;
  *(&v117[1] + 8) = v102;
  *(&v117[2] + 8) = v103;
  v53.location = &v111;
  CFRange.init(_:)(v53);
  v130 = v117[0];
  v131 = v117[1];
  v132 = v117[2];
  v133 = *&v117[3];
  v126 = v113;
  v127 = v114;
  v128 = v115;
  v129 = v116;
  v124 = v111;
  v125 = v112;
LABEL_6:
  v54 = v87;
  v55 = v90;
  outlined init with copy of TaskPriority?(v87, v90, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMR);
  v56 = v88;
  outlined init with copy of TaskPriority?(v38, v88, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMR);
  v97 = v130;
  v98 = v131;
  v99 = v132;
  v100 = v133;
  v93 = v126;
  v94 = v127;
  v95 = v128;
  v96 = v129;
  v91 = v124;
  v92 = v125;
  v57 = v55;
  v58 = v89;
  outlined init with copy of TaskPriority?(v57, v89, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMR);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGG_ACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA013_TraitWritingK0VyAA010TransitionU3KeyVGGACyACyAA5ImageVAA011_ForegroundnK0VyAEGGAA012_EnvironmentxvK0VyAA4FontVSgGGGGA16_GAGGAJyALyAA03AnyjN0VGAOGGACyACyACyACyACyACyA6_AA012_AspectRatioG0VGAA20_MaskAlignmentEffectVyAOGG09MusicCoreB006BordersK033_F5ED3014321945F1E2BE58A044A15282LLVGA0_yAA06ZIndexuX0VGGA3_GAGGSgtMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGG_ACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA013_TraitWritingK0VyAA010TransitionU3KeyVGGACyACyAA5ImageVAA011_ForegroundnK0VyAEGGAA012_EnvironmentxvK0VyAA4FontVSgGGGGA16_GAGGAJyALyAA03AnyjN0VGAOGGACyACyACyACyACyACyA6_AA012_AspectRatioG0VGAA20_MaskAlignmentEffectVyAOGG09MusicCoreB006BordersK033_F5ED3014321945F1E2BE58A044A15282LLVGA0_yAA06ZIndexuX0VGGA3_GAGGSgtMR);
  outlined init with copy of TaskPriority?(v56, v58 + *(v59 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMR);
  v60 = v58 + *(v59 + 64);
  v107 = v97;
  v108 = v98;
  v109 = v99;
  v110 = v100;
  v105 = v95;
  v106 = v96;
  v103 = v93;
  v104 = v94;
  v101 = v91;
  v102 = v92;
  outlined init with copy of TaskPriority?(&v101, &v111, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA20_MaskAlignmentEffectVyAA6CircleVGG09MusicCoreB018BorderViewModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA013_TraitWritingQ0VyAA06ZIndexY3KeyVGGAUyAA010TransitionY3KeyVGGAA06_FrameH0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA20_MaskAlignmentEffectVyAA6CircleVGG09MusicCoreB018BorderViewModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA013_TraitWritingQ0VyAA06ZIndexY3KeyVGGAUyAA010TransitionY3KeyVGGAA06_FrameH0VGSgMR);
  outlined destroy of TaskPriority?(v38, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMR);
  outlined destroy of TaskPriority?(v54, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMR);
  v61 = v108;
  *(v60 + 96) = v107;
  *(v60 + 112) = v61;
  *(v60 + 128) = v109;
  *(v60 + 144) = v110;
  v62 = v104;
  *(v60 + 32) = v103;
  *(v60 + 48) = v62;
  v63 = v106;
  *(v60 + 64) = v105;
  *(v60 + 80) = v63;
  v64 = v102;
  *v60 = v101;
  *(v60 + 16) = v64;
  v117[0] = v97;
  v117[1] = v98;
  v117[2] = v99;
  *&v117[3] = v100;
  v113 = v93;
  v114 = v94;
  v115 = v95;
  v116 = v96;
  v111 = v91;
  v112 = v92;
  outlined destroy of TaskPriority?(&v111, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA20_MaskAlignmentEffectVyAA6CircleVGG09MusicCoreB018BorderViewModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA013_TraitWritingQ0VyAA06ZIndexY3KeyVGGAUyAA010TransitionY3KeyVGGAA06_FrameH0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA20_MaskAlignmentEffectVyAA6CircleVGG09MusicCoreB018BorderViewModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA013_TraitWritingQ0VyAA06ZIndexY3KeyVGGAUyAA010TransitionY3KeyVGGAA06_FrameH0VGSgMR);
  outlined destroy of TaskPriority?(v56, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA14_AnimationViewVyAA4TextVGAA21_TraitWritingModifierVyAA010TransitionJ3KeyVGGACyACyAA5ImageVAA016_ForegroundStyleL0VyAA5ColorVGGAA012_EnvironmentnkL0VyAA4FontVSgGGGGA4_GAA12_FrameLayoutVGAA026_InsettableBackgroundShapeL0VyAA010_BlendModeyQ0VyAA03AnyyQ0VGAA6CircleVGGMR);
  return outlined destroy of TaskPriority?(v90, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ColorVAA12_FrameLayoutVGAA34_InsettableBackgroundShapeModifierVyAA010_BlendModeJ5StyleVyAEGAA6CircleVGGMR);
}