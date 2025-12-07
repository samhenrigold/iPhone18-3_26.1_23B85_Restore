void BorderlessButtonLabelShapeStyle.apply(to:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (v3[1] == 1)
  {
    if (*v3)
    {
      (*(*(a2 + 24) + 32))(a1, *(a2 + 16), a3);
    }

    else
    {
      static Color.red.getter();
      Color._apply(to:)();
    }
  }

  else
  {

    MEMORY[0x1EEDE18C8](a1, 2);
  }
}

uint64_t outlined init with copy of Environment<HoverEffectContext?>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for Environment<ToolbarItemPlacement?>.Content(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

double specialized Environment.wrappedValue.getter@<D0>(uint64_t a1@<X8>)
{
  if (*(v1 + 72))
  {
    *a1 = *v1;
    *(a1 + 8) = *(v1 + 8);
    *(a1 + 24) = *(v1 + 24);
    *(a1 + 40) = *(v1 + 40);
    *(a1 + 56) = *(v1 + 56);
    outlined init with copy of Environment<HoverEffectContext?>(v1, &v7, &lazy cache variable for type metadata for Environment<BorderedButtonColorSpec?>, &lazy cache variable for type metadata for BorderedButtonColorSpec?, &type metadata for BorderedButtonColorSpec, MEMORY[0x1E697DCC0]);
  }

  else
  {
    outlined init with copy of Environment<HoverEffectContext?>(v1, &v7, &lazy cache variable for type metadata for Environment<BorderedButtonColorSpec?>, &lazy cache variable for type metadata for BorderedButtonColorSpec?, &type metadata for BorderedButtonColorSpec, MEMORY[0x1E697DCC0]);
    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x800000018CD3F810, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<ToolbarItemMetrics?>(v1, &lazy cache variable for type metadata for Environment<BorderedButtonColorSpec?>, &lazy cache variable for type metadata for BorderedButtonColorSpec?, &type metadata for BorderedButtonColorSpec);
  }

  return result;
}

{
  if (*(v1 + 65))
  {
    *a1 = *v1;
    *(a1 + 8) = *(v1 + 8);
    *(a1 + 24) = *(v1 + 24);
    *(a1 + 40) = *(v1 + 40);
    v2 = *(v1 + 49);
    *(a1 + 49) = v2;
  }

  else
  {
    outlined init with copy of Environment<HeaderFooterConfiguration>(v1, &v8, &lazy cache variable for type metadata for Environment<ListPadding>, &type metadata for ListPadding, MEMORY[0x1E697DCC0]);
    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v8 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x646461507473694CLL, 0xEB00000000676E69, &v8);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<NavigationEventHandlers>(v1, &lazy cache variable for type metadata for Environment<ListPadding>, &type metadata for ListPadding);
  }

  return *&v2;
}

{
  if (*(v1 + 81))
  {
    *a1 = *v1;
    *(a1 + 24) = *(v1 + 24);
    *(a1 + 40) = *(v1 + 40);
    *(a1 + 56) = *(v1 + 56);
    *(a1 + 65) = *(v1 + 65);
    *(a1 + 8) = *(v1 + 8);
    outlined init with copy of Environment<HeaderFooterConfiguration>(v1, &v7, &lazy cache variable for type metadata for Environment<ListContentStyling>, &type metadata for ListContentStyling, MEMORY[0x1E697DCC0]);
  }

  else
  {
    outlined init with copy of Environment<HeaderFooterConfiguration>(v1, &v7, &lazy cache variable for type metadata for Environment<ListContentStyling>, &type metadata for ListContentStyling, MEMORY[0x1E697DCC0]);
    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x800000018CD3F510, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<NavigationEventHandlers>(v1, &lazy cache variable for type metadata for Environment<ListContentStyling>, &type metadata for ListContentStyling);
  }

  return result;
}

{
  if (*(v1 + 56) == 1)
  {
    *a1 = *v1;
    *(a1 + 8) = *(v1 + 8);
    *(a1 + 24) = *(v1 + 24);
    *(a1 + 40) = *(v1 + 40);
    outlined init with copy of Environment<HeaderFooterConfiguration>(v1, &v7, &lazy cache variable for type metadata for Environment<ResolvedSubviewsSizingOptions>, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E697DCC0]);
  }

  else
  {
    outlined init with copy of Environment<HeaderFooterConfiguration>(v1, &v7, &lazy cache variable for type metadata for Environment<ResolvedSubviewsSizingOptions>, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E697DCC0]);
    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000018CD3F6D0, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<NavigationEventHandlers>(v1, &lazy cache variable for type metadata for Environment<ResolvedSubviewsSizingOptions>, &type metadata for ResolvedSubviewsSizingOptions);
  }

  return result;
}

{
  if (*(v1 + 56) == 1)
  {
    *a1 = *v1;
    *(a1 + 8) = *(v1 + 8);
    *(a1 + 24) = *(v1 + 24);
    *(a1 + 40) = *(v1 + 40);
    outlined init with copy of Environment<HoverEffectContext?>(v1, &v7, &lazy cache variable for type metadata for Environment<HoverEffectContext?>, &lazy cache variable for type metadata for HoverEffectContext?, MEMORY[0x1E697F3F0], MEMORY[0x1E697DCC0]);
  }

  else
  {
    outlined init with copy of Environment<HoverEffectContext?>(v1, &v7, &lazy cache variable for type metadata for Environment<HoverEffectContext?>, &lazy cache variable for type metadata for HoverEffectContext?, MEMORY[0x1E697F3F0], MEMORY[0x1E697DCC0]);
    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x800000018CD3F3C0, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<ToolbarItemMetrics?>(v1, &lazy cache variable for type metadata for Environment<HoverEffectContext?>, &lazy cache variable for type metadata for HoverEffectContext?, MEMORY[0x1E697F3F0]);
  }

  return result;
}

{
  if (*(v1 + 72))
  {
    *a1 = *v1;
    *(a1 + 8) = *(v1 + 8);
    *(a1 + 24) = *(v1 + 24);
    *(a1 + 40) = *(v1 + 40);
    *(a1 + 56) = *(v1 + 56);
    outlined init with copy of Environment<HeaderFooterConfiguration>(v1, &v7, &lazy cache variable for type metadata for Environment<HeaderFooterConfiguration>, &type metadata for HeaderFooterConfiguration, MEMORY[0x1E697DCC0]);
  }

  else
  {
    outlined init with copy of Environment<HeaderFooterConfiguration>(v1, &v7, &lazy cache variable for type metadata for Environment<HeaderFooterConfiguration>, &type metadata for HeaderFooterConfiguration, MEMORY[0x1E697DCC0]);
    v3 = static os_log_type_t.fault.getter();
    v4 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v4, v3))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000018CD3F970, &v7);
      _os_log_impl(&dword_18BD4A000, v4, v3, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x18D0110E0](v6, -1, -1);
      MEMORY[0x18D0110E0](v5, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined destroy of Environment<NavigationEventHandlers>(v1, &lazy cache variable for type metadata for Environment<HeaderFooterConfiguration>, &type metadata for HeaderFooterConfiguration);
  }

  return result;
}

double OpacityButtonHighlightModifier.opacity.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[16];
  v4 = *(v0 + 40);
  v5 = *(v0 + 72);
  v11 = *(v0 + 56);
  v12[0] = v5;
  *(v12 + 9) = *(v0 + 81);
  v9 = *(v0 + 24);
  v10 = v4;
  specialized Environment.wrappedValue.getter(v13);
  if (v13[0])
  {
    v6 = *&v13[7];
    outlined destroy of BorderedButtonColorSpec?(v13);
  }

  else
  {
    v6 = 1.0;
    if (v1)
    {
      specialized Environment.wrappedValue.getter(v2, v3, &v8);
      if (v8)
      {
        return 0.4;
      }

      else
      {
        return 0.2;
      }
    }
  }

  return v6;
}

uint64_t assignWithTake for BorderlessButtonStyle(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  outlined consume of Environment<Color?>.Content(v5);
  v6 = *(a2 + 24);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;
  outlined consume of Environment<Selector?>.Content(v7, v8);
  return a1;
}

uint64_t BorderlessButtonStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = *v2;
  v30 = *(v2 + 8);
  v29 = v2[2];
  v28 = *(v2 + 24);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_1(a1, v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  *v10 = *v7;
  v11 = *(v5 + 32);
  _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(0, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_1(&v7[v11], &v10[*(v12 + 36)], type metadata accessor for ButtonAction);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_0(v7, type metadata accessor for PrimitiveButtonStyleConfiguration);
  KeyPath = swift_getKeyPath();
  v40 = 0;
  v14 = swift_getKeyPath();
  v39 = 0;
  v15 = swift_getKeyPath();
  v38 = 0;
  v16 = swift_getKeyPath();
  v37[64] = 0;
  v17 = v40;
  v18 = v39;
  v19 = v38;
  *&v41 = KeyPath;
  BYTE8(v41) = v40;
  *&v42 = v14;
  BYTE8(v42) = v39;
  *&v43[0] = v15;
  BYTE8(v43[0]) = v38;
  *&v43[1] = v16;
  BYTE8(v43[1]) = 0;
  type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>(0, v20, v21, v22);
  v24 = &v10[*(v23 + 36)];
  v25 = v42;
  *v24 = v41;
  v24[1] = v25;
  v24[2] = v43[0];
  *(v24 + 41) = *(v43 + 9);
  v44 = KeyPath;
  v45 = v17;
  v46 = v14;
  v47 = v18;
  v48 = v15;
  v49 = v19;
  v50 = v16;
  v51 = 0;
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOcTm_1(&v41, v37, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_0(&v44, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
  v33 = v31;
  v34 = v30;
  v35 = v29;
  v36 = v28;
  type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ConditionallyBorderedButton>, _PaddingLayout>, _BackgroundModifier<_ShapeView<ResolvedBorderShape, _OpacityShapeStyle<TintShapeStyle>>>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<BorderlessButtonStyleBase> and conformance ButtonStyleContainerModifier<A>);
  lazy protocol witness table accessor for type HasAccessibilityButtonUnderline and conformance HasAccessibilityButtonUnderline();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, _EnvironmentKeyWritingModifier<Text.LineStyle?>> and conformance <> ModifiedContent<A, B>();
  View.staticIf<A, B>(_:then:)();
  return _s7SwiftUI33PrimitiveButtonStyleConfigurationVWOhTm_0(v10, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>);
}

double closure #1 in BorderlessButtonStyle.makeBody(configuration:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  specialized Environment.wrappedValue.getter(a4, a5 & 1);
  specialized Environment.wrappedValue.getter(a2, a3 & 1);
  static Text.LineStyle.Pattern.solid.getter();
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>>, ButtonStyleContainerModifier<BorderlessButtonStyleBase>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>>, StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle_Car>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<BorderlessButtonStyleBase> and conformance ButtonStyleContainerModifier<A>);
  View.underline(_:pattern:color:)();

  return result;
}

_BYTE *initializeWithCopy for BorderlessButtonLabelShapeStyle(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))(&a1[*(v4 + 80) + 2] & ~*(v4 + 80), &a2[*(v4 + 80) + 2] & ~*(v4 + 80));
  return a1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance HasAccessibilityButtonUnderline(uint64_t *a1)
{
  lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder();

  PropertyList.subscript.getter();
  if (v4 == 1)
  {

    v1 = 0;
  }

  else
  {
    lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
    PropertyList.subscript.getter();

    v1 = v3 ^ 1;
  }

  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton()
{
  result = lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton;
  if (!lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsToggleButton, &type metadata for IsToggleButton, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton;
  if (!lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsToggleButton, &type metadata for IsToggleButton, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton;
  if (!lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsToggleButton, &type metadata for IsToggleButton, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton;
  if (!lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsToggleButton, &type metadata for IsToggleButton, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton;
  if (!lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsToggleButton, &type metadata for IsToggleButton, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton;
  if (!lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsToggleButton, &type metadata for IsToggleButton, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsToggleButton and conformance IsToggleButton);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasAccessibilityButtonBorder(uint64_t *a1)
{
  lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder();
  PropertyList.subscript.getter();
  if (v4 == 1)
  {
    lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
    PropertyList.subscript.getter();
    v1 = v3 ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t specialized static BorderlessButtonStyleEnvironment._makeInputs(modifier:inputs:)(int *a1, uint64_t *a2)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type BarItemBridgedTint and conformance BarItemBridgedTint();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder();
  PropertyList.subscript.getter();
  if (v3 == 1)
  {
    lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
    PropertyList.subscript.getter();
  }

  static StyleContextAcceptsAnyPredicate.evaluate(inputs:)();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type BorderlessButtonStyleEnvironment.UpdateEnvironment and conformance BorderlessButtonStyleEnvironment.UpdateEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsConditionallyBorderedPredicate(uint64_t *a1)
{
  lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
  PropertyList.subscript.getter();
  return v2;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ShouldRenderAsTemplate(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate();
  PropertyList.subscript.getter();
  return v3;
}

unint64_t lazy protocol witness table accessor for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate()
{
  result = lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate;
  if (!lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShouldRenderAsTemplate, &type metadata for ShouldRenderAsTemplate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate;
  if (!lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShouldRenderAsTemplate, &type metadata for ShouldRenderAsTemplate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate;
  if (!lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShouldRenderAsTemplate, &type metadata for ShouldRenderAsTemplate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate;
  if (!lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShouldRenderAsTemplate, &type metadata for ShouldRenderAsTemplate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate;
  if (!lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShouldRenderAsTemplate, &type metadata for ShouldRenderAsTemplate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate;
  if (!lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShouldRenderAsTemplate, &type metadata for ShouldRenderAsTemplate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ShouldRenderAsTemplate and conformance ShouldRenderAsTemplate);
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ShouldRenderAsTemplate@<X0>(BOOL *a1@<X8>)
{
  static Semantics.v2.getter();
  result = isLinkedOnOrAfter(_:)();
  *a1 = (result & 1) == 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>)
  {
    _s7SwiftUI6ButtonVyAA09PrimitiveC18StyleConfigurationV5LabelVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>, &type metadata for ButtonKeyboardShortcutKey, &protocol witness table for ButtonKeyboardShortcutKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ButtonKeyboardShortcutKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void protocol witness for static _ViewTraitKey.defaultValue.getter in conformance KeyboardShortcutPickerOptionTraitKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

double outlined consume of Environment<KeyboardShortcut?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }

  return result;
}

double outlined copy of Environment<KeyboardShortcut?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityButtonBorderModifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 57);
  v12 = *(v2 + 56);
  outlined copy of Environment<KeyboardShortcut?>.Content(v8, v9, v10, v12, v11);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v12;
  *(a1 + 57) = v11;
  v13 = *(v2 + 64);
  LOBYTE(v2) = *(v2 + 72);
  outlined copy of Environment<Selector?>.Content(v13, v2);
  *(a1 + 64) = v13;
  *(a1 + 72) = v2;
  return a1;
}

uint64_t destroy for AccessibilityButtonBorderModifier(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<KeyboardShortcut?>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 57));
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance BorderlessButtonStyleEnvironment(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

unint64_t lazy protocol witness table accessor for type BorderlessButtonStyleEnvironment.UpdateEnvironment and conformance BorderlessButtonStyleEnvironment.UpdateEnvironment()
{
  result = lazy protocol witness table cache variable for type BorderlessButtonStyleEnvironment.UpdateEnvironment and conformance BorderlessButtonStyleEnvironment.UpdateEnvironment;
  if (!lazy protocol witness table cache variable for type BorderlessButtonStyleEnvironment.UpdateEnvironment and conformance BorderlessButtonStyleEnvironment.UpdateEnvironment)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BorderlessButtonStyleEnvironment.UpdateEnvironment, &unk_1EFF97258, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type BorderlessButtonStyleEnvironment.UpdateEnvironment and conformance BorderlessButtonStyleEnvironment.UpdateEnvironment);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for BorderedButtonColorSpec(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder()
{
  result = lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder;
  if (!lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SupportsAccessibilityButtonBorder, &type metadata for SupportsAccessibilityButtonBorder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder;
  if (!lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SupportsAccessibilityButtonBorder, &type metadata for SupportsAccessibilityButtonBorder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder;
  if (!lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SupportsAccessibilityButtonBorder, &type metadata for SupportsAccessibilityButtonBorder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder;
  if (!lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SupportsAccessibilityButtonBorder, &type metadata for SupportsAccessibilityButtonBorder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder;
  if (!lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SupportsAccessibilityButtonBorder, &type metadata for SupportsAccessibilityButtonBorder, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SupportsAccessibilityButtonBorder and conformance SupportsAccessibilityButtonBorder);
  }

  return result;
}

void *protocol witness for ButtonStyle.makeBody(configuration:) in conformance BorderlessButtonStyleBase@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  closure #1 in BorderlessButtonStyleBase.makeBody(configuration:)(v3 | *a1, v5);
  return memcpy(a2, v5, 0x139uLL);
}

uint64_t initializeWithCopy for ConditionallyBorderedButton(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v2 + 32);
  v9 = *(v2 + 41);
  v10 = *(v2 + 40);
  outlined copy of Environment<CGFloat?>.Content(v8, v10, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 41) = v9;
  v11 = *(v2 + 48);
  v12 = *(v2 + 56);
  outlined copy of Environment<Selector?>.Content(v11, v12);
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  v13 = *(v2 + 64);
  v14 = *(v2 + 72);
  v15 = *(v2 + 80);
  v16 = *(v2 + 89);
  v17 = *(v2 + 88);
  outlined copy of Environment<KeyboardShortcut?>.Content(v13, v14, v15, v17, v16);
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v17;
  *(a1 + 89) = v16;
  v18 = *(v2 + 96);
  LOBYTE(v2) = *(v2 + 104);
  outlined copy of Environment<Selector?>.Content(v18, v2);
  *(a1 + 96) = v18;
  *(a1 + 104) = v2;
  return a1;
}

uint64_t destroy for ConditionallyBorderedButton(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<CGFloat?>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 41));
  outlined consume of Environment<Selector?>.Content(*(a1 + 48), *(a1 + 56));
  outlined consume of Environment<KeyboardShortcut?>.Content(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 89));
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

void outlined copy of AnyIdentifiableShareConfiguration?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a16)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a10 != 1)
  {
    a15(a2, a3, a4, a5, a6);
    a16(a7, a8, a9, a10);

    a16(a11, a12, a13, a14);
  }
}

uint64_t initializeWithCopy for SharingPickerHostModifier(uint64_t a1, uint64_t a2)
{
  v5 = (a2 + 112);
  v4 = *(a2 + 112);
  if (v4 != 1)
  {
    v10 = *(a2 + 72);
    if (v10 == 1)
    {
      v11 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v11;
      *(a1 + 96) = *(a2 + 96);
      v12 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v12;
      v13 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v13;
      if (!v4)
      {
        goto LABEL_12;
      }

LABEL_9:
      v26 = *(a2 + 120);
      *(a1 + 112) = v4;
      *(a1 + 120) = v26;

      goto LABEL_13;
    }

    v14 = *(a2 + 8);
    *a1 = *a2;
    v15 = *(a2 + 16);
    v16 = *(a2 + 24);
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    outlined copy of AnyShareConfiguration.Storage(v14, v15, v16, v17, v18);
    *(a1 + 8) = v14;
    *(a1 + 16) = v15;
    *(a1 + 24) = v16;
    *(a1 + 32) = v17;
    *(a1 + 40) = v18;
    if (v10)
    {
      v19 = *(a2 + 48);
      v20 = *(a2 + 56);
      v21 = *(a2 + 64);
      outlined copy of Text.Storage(v19, v20, v21);
      *(a1 + 48) = v19;
      *(a1 + 56) = v20;
      *(a1 + 64) = v21;
      *(a1 + 72) = v10;

      v22 = *(a2 + 104);
      if (v22)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v27 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v27;
      v22 = *(a2 + 104);
      if (v22)
      {
LABEL_8:
        v23 = *(a2 + 80);
        v24 = *(a2 + 88);
        v25 = *(a2 + 96);
        outlined copy of Text.Storage(v23, v24, v25);
        *(a1 + 80) = v23;
        *(a1 + 88) = v24;
        *(a1 + 96) = v25;
        *(a1 + 104) = v22;

        if (v4)
        {
          goto LABEL_9;
        }

LABEL_12:
        *(a1 + 112) = *v5;
        goto LABEL_13;
      }
    }

    v28 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v28;
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  v8 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v8;
  v9 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v9;
LABEL_13:
  *(a1 + 128) = *(a2 + 128);

  return a1;
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

void type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>)
  {
    type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>);
    }
  }
}

uint64_t getEnumTagSinglePayload for SharingPickerHostModifier.Model(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 112);
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

uint64_t getEnumTagSinglePayload for AnyIdentifiableShareConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

double destroy for PresentSharingPickerAction(uint64_t a1)
{

  v3 = *(a1 + 128);
  if (v3 != 1)
  {
    v4 = *(a1 + 88);
    if (v4 != 1)
    {
      outlined consume of AnyShareConfiguration.Storage(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
      if (v4)
      {
        outlined consume of Text.Storage(*(a1 + 64), *(a1 + 72), *(a1 + 80));
      }

      if (*(a1 + 120))
      {
        outlined consume of Text.Storage(*(a1 + 96), *(a1 + 104), *(a1 + 112));
      }
    }

    if (v3)
    {
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToConfiguration and conformance ToConfiguration()
{
  result = lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration;
  if (!lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToConfiguration, &unk_1EFFA8E90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration;
  if (!lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToConfiguration, &unk_1EFFA8E90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration;
  if (!lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToConfiguration, &unk_1EFFA8E90, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToConfiguration and conformance ToConfiguration);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsSharingPickerHost(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type IsSharingPickerHost and conformance IsSharingPickerHost();
  PropertyList.subscript.getter();
  return v3;
}

unint64_t lazy protocol witness table accessor for type _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key> and conformance _AnchorTransformModifier<A, B>()
{
  result = lazy protocol witness table cache variable for type _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key> and conformance _AnchorTransformModifier<A, B>;
  if (!lazy protocol witness table cache variable for type _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key> and conformance _AnchorTransformModifier<A, B>)
  {
    type metadata accessor for _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980450], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key> and conformance _AnchorTransformModifier<A, B>);
  }

  return result;
}

uint64_t outlined destroy of StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.sharingPickerHost()(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI25SharingPickerHostModifier33_16FA549D504C127F429806EC47FAADE4LLV5ModelVSgWOi0_(v23);
  v19 = v23[4];
  v20 = v23[5];
  v21 = v23[6];
  v22 = v23[7];
  v15 = v23[0];
  v16 = v23[1];
  v17 = v23[2];
  v18 = v23[3];
  _s7SwiftUI25SharingPickerHostModifier33_16FA549D504C127F429806EC47FAADE4LLV5ModelVSgWOi0_(&v32);
  v28 = v36;
  v29 = v37;
  v30 = v38;
  v31 = v39;
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  outlined destroy of SharingPickerHostModifier.Model?(&v6, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
  v10 = v28;
  v11 = v29;
  v12 = v30;
  v13 = v31;
  v6 = v24;
  v7 = v25;
  v8 = v26;
  v9 = v27;
  v14 = 0;
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(0);
  MEMORY[0x18D00A570](&v6, a1, v4, a2);
  v38 = v12;
  v39 = v13;
  v40 = v14;
  v34 = v8;
  v35 = v9;
  v36 = v10;
  v37 = v11;
  v32 = v6;
  v33 = v7;
  return outlined destroy of StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(&v32, type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>);
}

uint64_t outlined destroy of SharingPickerHostModifier.Model?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for _ContiguousArrayStorage<Any>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *SharingPickerHostModifier.body(content:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v3 = *(v1 + 80);
  v4 = *(v1 + 112);
  v99 = *(v1 + 96);
  v100 = v4;
  v5 = *(v1 + 48);
  v95 = *(v1 + 32);
  v96 = v5;
  v7 = *(v1 + 48);
  v6 = *(v1 + 64);
  v8 = v6;
  v98 = *(v1 + 80);
  v97 = v6;
  v9 = *v1;
  v94 = *(v1 + 16);
  v93 = v9;
  v10 = *(v1 + 112);
  v58 = v99;
  v59 = v10;
  v54 = v95;
  v55 = v7;
  v57 = v3;
  v56 = v8;
  v101 = *(v1 + 128);
  type metadata accessor for State<SharingPickerHostModifier.Model?>(0, &lazy cache variable for type metadata for State<SharingPickerHostModifier.Model?>, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model, MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v112 = v107;
  v113 = v108;
  v114 = v109;
  v115 = v110;
  v111[0] = v103;
  v111[1] = v104;
  v111[2] = v105;
  v111[3] = v106;
  v11 = _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(v111);
  v12 = *(&v112 + 1);
  lazy protocol witness table accessor for type ToBool and conformance ToBool();
  v33 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v34 = v102;

  outlined destroy of Binding<SharingPickerHostModifier.Model?>(&v102, &lazy cache variable for type metadata for Binding<SharingPickerHostModifier.Model?>, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
  v58 = v99;
  v59 = v100;
  *&v60 = v101;
  v54 = v95;
  v55 = v96;
  v57 = v98;
  v56 = v97;
  v53 = v94;
  v52 = v93;
  State.projectedValue.getter();
  v89 = v81;
  v90 = v82;
  v91 = v83;
  v92 = v84;
  v85 = v77;
  v86 = v78;
  v87 = v79;
  v88 = v80;
  if (_s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(&v85) == 1)
  {
    v13 = 0;
    v14 = 0;
    v31 = 0u;
    v32 = xmmword_18CD633F0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    outlined init with copy of AnyIdentifiableShareConfiguration?(&v85, &v52);
    v30 = v86;
    v31 = v85;
    v28 = v88;
    v29 = v87;
    v27 = v90;
    v32 = v89;
    v14 = *(&v91 + 1);
    v13 = v91;
  }

  v16 = v11 != 1 && v12 != 1;
  lazy protocol witness table accessor for type ToConfiguration and conformance ToConfiguration();
  v17 = dispatch thunk of AnyLocation.projecting<A>(_:)();
  v18 = v76;

  outlined destroy of Binding<SharingPickerHostModifier.Model?>(&v76, &lazy cache variable for type metadata for Binding<SharingPickerHostModifier.Model?>, &lazy cache variable for type metadata for SharingPickerHostModifier.Model?, &type metadata for SharingPickerHostModifier.Model);
  *&v40[0] = v18;
  *(&v40[0] + 1) = v17;
  v40[1] = v31;
  v40[2] = v30;
  v40[3] = v29;
  v40[4] = v28;
  v40[5] = v32;
  v40[6] = v27;
  *&v41 = v13;
  *(&v41 + 1) = v14;
  v47 = v32;
  v48 = v27;
  v49 = v41;
  v42 = v40[0];
  v43 = v31;
  v44 = v30;
  v45 = v29;
  v46 = v28;
  _s7SwiftUI19SharingPickerSourceOWOi_(&v42);
  v19 = static Anchor.Source<A>.bounds.getter();
  v58 = v48;
  v59 = v49;
  v54 = v44;
  v55 = v45;
  v57 = v47;
  v56 = v46;
  v53 = v43;
  v52 = v42;
  *&v60 = v50;
  *(&v60 + 1) = v19;
  *v75 = v34;
  *&v75[8] = v33;
  v75[16] = v16;
  outlined init with copy of Binding<AnyIdentifiableShareConfiguration?>(v40, v37, &lazy cache variable for type metadata for Binding<AnyIdentifiableShareConfiguration?>, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration, MEMORY[0x1E6981948]);
  type metadata accessor for _ContiguousArrayStorage<Any>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v74);
  v36[0] = v74[0];
  v20 = swift_allocObject();
  v21 = *(v2 + 112);
  *(v20 + 112) = *(v2 + 96);
  *(v20 + 128) = v21;
  *(v20 + 144) = *(v2 + 128);
  v22 = *(v2 + 48);
  *(v20 + 48) = *(v2 + 32);
  *(v20 + 64) = v22;
  v23 = *(v2 + 80);
  *(v20 + 80) = *(v2 + 64);
  *(v20 + 96) = v23;
  v24 = *(v2 + 16);
  *(v20 + 16) = *v2;
  *(v20 + 32) = v24;
  outlined init with copy of SharingPickerHostModifier(v2, v37);
  type metadata accessor for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, &lazy cache variable for type metadata for _ViewModifier_Content<SharingPickerHostModifier>, lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier, &type metadata for SharingPickerHostModifier);
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>();
  View.onChange<A>(of:initial:_:)();

  v51[6] = v58;
  v51[7] = v59;
  v51[8] = v60;
  v51[2] = v54;
  v51[3] = v55;
  v51[5] = v57;
  v51[4] = v56;
  v51[1] = v53;
  v51[0] = v52;
  outlined destroy of ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(v51);
  v62 = v37[10];
  v63 = v37[11];
  v64 = v38;
  v58 = v37[6];
  v59 = v37[7];
  v61 = v37[9];
  v60 = v37[8];
  v54 = v37[2];
  v55 = v37[3];
  v57 = v37[5];
  v56 = v37[4];
  v53 = v37[1];
  v52 = v37[0];
  KeyPath = swift_getKeyPath();
  *&v74[96] = v99;
  *&v74[112] = v100;
  *&v74[128] = v101;
  *&v74[32] = v95;
  *&v74[48] = v96;
  *&v74[80] = v98;
  *&v74[64] = v97;
  *&v74[16] = v94;
  *v74 = v93;
  State.projectedValue.getter();

  outlined destroy of Binding<SharingPickerHostModifier.Model?>(v40, &lazy cache variable for type metadata for Binding<AnyIdentifiableShareConfiguration?>, &lazy cache variable for type metadata for AnyIdentifiableShareConfiguration?, &type metadata for AnyIdentifiableShareConfiguration);
  v71 = *&v75[96];
  v72 = *&v75[112];
  v73 = *&v75[128];
  v67 = *&v75[32];
  v68 = *&v75[48];
  v70 = *&v75[80];
  v69 = *&v75[64];
  v66 = *&v75[16];
  v65 = *v75;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  *&v75[88] = v70;
  *&v75[104] = v71;
  *&v75[120] = v72;
  *&v75[136] = v73;
  *&v75[24] = v66;
  *&v75[40] = v67;
  *&v75[56] = v68;
  *&v75[72] = v69;
  *&v75[8] = v65;
  *&v74[88] = v70;
  *&v74[104] = v71;
  *&v74[120] = v72;
  *&v74[136] = v73;
  *&v74[24] = v66;
  *&v74[40] = v67;
  *&v74[56] = v68;
  *v74 = KeyPath;
  *&v74[72] = v69;
  *&v74[8] = v65;
  __src[10] = v62;
  __src[11] = v63;
  __src[6] = v58;
  __src[7] = v59;
  __src[8] = v60;
  __src[9] = v61;
  __src[2] = v54;
  __src[3] = v55;
  __src[4] = v56;
  __src[5] = v57;
  __src[0] = v52;
  __src[1] = v53;
  *(&__src[18] + 8) = *&v74[96];
  *(&__src[19] + 8) = *&v74[112];
  *(&__src[20] + 8) = *&v74[128];
  *(&__src[16] + 8) = *&v74[64];
  *(&__src[17] + 8) = *&v74[80];
  *(&__src[14] + 8) = *&v74[32];
  *(&__src[15] + 8) = *&v74[48];
  *(&__src[12] + 8) = *v74;
  *&__src[12] = v64;
  *(&__src[21] + 1) = *(&v73 + 1);
  *(&__src[13] + 8) = *&v74[16];
  *v75 = KeyPath;
  outlined init with copy of Binding<AnyIdentifiableShareConfiguration?>(v74, v36, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, MEMORY[0x1E6980A08]);
  outlined destroy of _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>(v75);
  return memcpy(a1, __src, 0x160uLL);
}

uint64_t sub_18BE58E8C()
{
  if (*(v0 + 128) != 1)
  {
    if (*(v0 + 88) != 1)
    {
      outlined consume of AnyShareConfiguration.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
      if (*(v0 + 88))
      {
        outlined consume of Text.Storage(*(v0 + 64), *(v0 + 72), *(v0 + 80));
      }

      if (*(v0 + 120))
      {
        outlined consume of Text.Storage(*(v0 + 96), *(v0 + 104), *(v0 + 112));
      }
    }

    if (*(v0 + 128))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t outlined destroy of Binding<SharingPickerHostModifier.Model?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for State<SharingPickerHostModifier.Model?>(0, a2, a3, a4, MEMORY[0x1E6981948]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double destroy for SharingPickerHostModifier(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2 != 1)
  {
    v3 = *(a1 + 72);
    if (v3 != 1)
    {
      outlined consume of AnyShareConfiguration.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40));
      if (v3)
      {
        outlined consume of Text.Storage(*(a1 + 48), *(a1 + 56), *(a1 + 64));
      }

      if (*(a1 + 104))
      {
        outlined consume of Text.Storage(*(a1 + 80), *(a1 + 88), *(a1 + 96));
      }
    }

    if (v2)
    {
    }
  }

  return result;
}

double _s7SwiftUI25SharingPickerHostModifier33_16FA549D504C127F429806EC47FAADE4LLV5ModelVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a1[6] = 0u;
  a1[7] = xmmword_18CD6A6D0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ToBool and conformance ToBool()
{
  result = lazy protocol witness table cache variable for type ToBool and conformance ToBool;
  if (!lazy protocol witness table cache variable for type ToBool and conformance ToBool)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToBool, &unk_1EFFA8EB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToBool and conformance ToBool);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToBool and conformance ToBool;
  if (!lazy protocol witness table cache variable for type ToBool and conformance ToBool)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToBool, &unk_1EFFA8EB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToBool and conformance ToBool);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToBool and conformance ToBool;
  if (!lazy protocol witness table cache variable for type ToBool and conformance ToBool)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ToBool, &unk_1EFFA8EB0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ToBool and conformance ToBool);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for SharingPickerHostModifier.Model(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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
      *(result + 112) = a2;
    }
  }

  return result;
}

uint64_t _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOg(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type InvertedViewInputPredicate<IsSharingPickerHost> and conformance InvertedViewInputPredicate<A>();
    v5[1] = lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t *initializeWithCopy for SharingActivityPickerModifier(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v14 = a2[8];
  v15 = a2[9];
  v16 = a2[10];
  v17 = a2[11];
  v18 = a2[12];
  v19 = a2[13];
  v20 = a2[14];
  v21 = a2[15];
  v22 = a2[16];
  outlined copy of SharingPickerSource(*a2, v5, v6, v7, v8, v9, v10, v11, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;
  a1[7] = v11;
  a1[8] = v14;
  a1[9] = v15;
  a1[10] = v16;
  a1[11] = v17;
  a1[12] = v18;
  a1[13] = v19;
  a1[14] = v20;
  a1[15] = v21;
  v12 = a2[17];
  a1[16] = v22;
  a1[17] = v12;

  return a1;
}

uint64_t outlined destroy of ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, &lazy cache variable for type metadata for _ViewModifier_Content<SharingPickerHostModifier>, lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier, &type metadata for SharingPickerHostModifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of Binding<AnyIdentifiableShareConfiguration?>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for State<SharingPickerHostModifier.Model?>(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

double destroy for SharingActivityPickerPresentation(uint64_t *a1)
{
  outlined consume of SharingPickerSource(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10], a1[11], a1[12], a1[13], a1[14], a1[15], a1[16]);

  return result;
}

uint64_t outlined destroy of _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>(uint64_t a1)
{
  type metadata accessor for State<SharingPickerHostModifier.Model?>(0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, MEMORY[0x1E6980A08]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void outlined consume of SharingPickerSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2 < 0)
  {

    outlined consume of AnyShareConfiguration.Storage(a5, a6, a7, a8, a9);
    outlined consume of Text?(a10, a11, a12, a13);

    outlined consume of Text?(a14, a15, a16, a17);
  }

  else
  {

    outlined copy of AnyIdentifiableShareConfiguration?(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, outlined consume of AnyShareConfiguration.Storage, outlined consume of Text?);
  }
}

void outlined copy of SharingPickerSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2 < 0)
  {

    outlined copy of AnyShareConfiguration.Storage(a5, a6, a7, a8, a9);
    outlined copy of Text?(a10, a11, a12, a13);

    outlined copy of Text?(a14, a15, a16, a17);
  }

  else
  {

    outlined copy of AnyIdentifiableShareConfiguration?(a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, outlined copy of AnyShareConfiguration.Storage, outlined copy of Text?);
  }
}

uint64_t initializeWithCopy for PresentSharingPickerAction(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = a2 + 16;
  v5 = a2[16];

  if (v5 != 1)
  {
    v11 = a2[11];
    if (v11 == 1)
    {
      v12 = *(a2 + 6);
      *(a1 + 80) = *(a2 + 5);
      *(a1 + 96) = v12;
      *(a1 + 112) = *(a2 + 7);
      v13 = *(a2 + 2);
      *(a1 + 16) = *(a2 + 1);
      *(a1 + 32) = v13;
      v14 = *(a2 + 4);
      *(a1 + 48) = *(a2 + 3);
      *(a1 + 64) = v14;
      if (!v5)
      {
        goto LABEL_12;
      }

LABEL_9:
      v27 = a2[17];
      *(a1 + 128) = v5;
      *(a1 + 136) = v27;

      return a1;
    }

    v15 = a2[3];
    *(a1 + 16) = a2[2];
    v16 = a2[4];
    v17 = a2[5];
    v18 = a2[6];
    v19 = *(a2 + 56);
    outlined copy of AnyShareConfiguration.Storage(v15, v16, v17, v18, v19);
    *(a1 + 24) = v15;
    *(a1 + 32) = v16;
    *(a1 + 40) = v17;
    *(a1 + 48) = v18;
    *(a1 + 56) = v19;
    if (v11)
    {
      v20 = a2[8];
      v21 = a2[9];
      v22 = *(a2 + 80);
      outlined copy of Text.Storage(v20, v21, v22);
      *(a1 + 64) = v20;
      *(a1 + 72) = v21;
      *(a1 + 80) = v22;
      *(a1 + 88) = v11;

      v23 = a2[15];
      if (v23)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v28 = *(a2 + 5);
      *(a1 + 64) = *(a2 + 4);
      *(a1 + 80) = v28;
      v23 = a2[15];
      if (v23)
      {
LABEL_8:
        v24 = a2[12];
        v25 = a2[13];
        v26 = *(a2 + 112);
        outlined copy of Text.Storage(v24, v25, v26);
        *(a1 + 96) = v24;
        *(a1 + 104) = v25;
        *(a1 + 112) = v26;
        *(a1 + 120) = v23;

        if (v5)
        {
          goto LABEL_9;
        }

LABEL_12:
        *(a1 + 128) = *v6;
        return a1;
      }
    }

    v29 = *(a2 + 7);
    *(a1 + 96) = *(a2 + 6);
    *(a1 + 112) = v29;
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v7 = *(a2 + 6);
  *(a1 + 80) = *(a2 + 5);
  *(a1 + 96) = v7;
  v8 = *(a2 + 8);
  *(a1 + 112) = *(a2 + 7);
  *(a1 + 128) = v8;
  v9 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v9;
  v10 = *(a2 + 4);
  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = v10;
  return a1;
}

void type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<IsSharingPickerHost>)
  {
    lazy protocol witness table accessor for type IsSharingPickerHost and conformance IsSharingPickerHost();
    v1 = type metadata accessor for InvertedViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for InvertedViewInputPredicate<IsSharingPickerHost>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type IsSharingPickerHost and conformance IsSharingPickerHost()
{
  result = lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost;
  if (!lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsSharingPickerHost, &type metadata for IsSharingPickerHost, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost;
  if (!lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsSharingPickerHost, &type metadata for IsSharingPickerHost, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost;
  if (!lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsSharingPickerHost, &type metadata for IsSharingPickerHost, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost;
  if (!lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsSharingPickerHost, &type metadata for IsSharingPickerHost, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost;
  if (!lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsSharingPickerHost, &type metadata for IsSharingPickerHost, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsSharingPickerHost and conformance IsSharingPickerHost);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for _ViewModifier_Content<SharingPickerHostModifier>(255, a3, a4, a5, MEMORY[0x1E697FDE8]);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, &lazy cache variable for type metadata for _ViewModifier_Content<SharingPickerHostModifier>, lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier, &type metadata for SharingPickerHostModifier);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<SharingPickerHostModifier> and conformance _ViewModifier_Content<A>();
    v5[1] = &protocol witness table for SharingActivityPickerModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>);
  }

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

uint64_t static SharingActivityPickerModifier._makeView(modifier:inputs:body:)(unsigned int *a1, __int128 *a2, uint64_t (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2[4];
  v23 = a2[3];
  v24 = v5;
  v6 = a2[1];
  v20 = *a2;
  v7 = a2[2];
  v8 = *a2;
  v21 = a2[1];
  v22 = v7;
  v14 = v8;
  v15 = v6;
  v9 = *a1;
  v25 = *(a2 + 20);
  v16 = v7;
  outlined init with copy of _GraphInputs(&v20, v26);
  v10 = specialized static AllowPresentationPredicate.evaluate(inputs:)(&v14);
  v26[0] = v14;
  v26[1] = v15;
  v26[2] = v16;
  v11 = outlined destroy of _GraphInputs(v26);
  if (v10)
  {
    v12 = v21;
    swift_beginAccess();
    *&v14 = __PAIR64__(*(v12 + 16), v9);
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key>(0);
    lazy protocol witness table accessor for type SharingActivityPickerModifier.Child and conformance SharingActivityPickerModifier.Child();
    Attribute.init<A>(body:value:flags:update:)();
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    v14 = v20;
    v15 = v21;
    lazy protocol witness table accessor for type _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key> and conformance _AnchorTransformModifier<A, B>();
    return static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  }

  else
  {
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    v14 = v20;
    v15 = v21;
    return a3(v11, &v14);
  }
}

unint64_t lazy protocol witness table accessor for type SharingActivityPickerModifier.Child and conformance SharingActivityPickerModifier.Child()
{
  result = lazy protocol witness table cache variable for type SharingActivityPickerModifier.Child and conformance SharingActivityPickerModifier.Child;
  if (!lazy protocol witness table cache variable for type SharingActivityPickerModifier.Child and conformance SharingActivityPickerModifier.Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SharingActivityPickerModifier.Child, &unk_1F001D208, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SharingActivityPickerModifier.Child and conformance SharingActivityPickerModifier.Child);
  }

  return result;
}

void type metadata accessor for _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key>)
  {
    type metadata accessor for Binding<AttributedString>(255, &lazy cache variable for type metadata for CGRect?, type metadata accessor for CGRect, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for _AnchorTransformModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _AnchorTransformModifier<CGRect?, SharingActivityPickerPresentation.Key>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InvertedViewInputPredicate<IsSharingPickerHost> and conformance InvertedViewInputPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InvertedViewInputPredicate<IsSharingPickerHost> and conformance InvertedViewInputPredicate<A>;
  if (!lazy protocol witness table cache variable for type InvertedViewInputPredicate<IsSharingPickerHost> and conformance InvertedViewInputPredicate<A>)
  {
    type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6980688], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InvertedViewInputPredicate<IsSharingPickerHost> and conformance InvertedViewInputPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier()
{
  result = lazy protocol witness table cache variable for type SharingPickerHostModifier and conformance SharingPickerHostModifier;
  if (!lazy protocol witness table cache variable for type SharingPickerHostModifier and conformance SharingPickerHostModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SharingPickerHostModifier, &type metadata for SharingPickerHostModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SharingPickerHostModifier and conformance SharingPickerHostModifier);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<SharingPickerHostModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>, ViewInputFlagModifier<IsSharingPickerHost>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>, ViewInputFlagModifier<IsSharingPickerHost>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>(255);
    type metadata accessor for _ViewModifier_Content<SharingPickerHostModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsSharingPickerHost>, lazy protocol witness table accessor for type IsSharingPickerHost and conformance IsSharingPickerHost, &type metadata for IsSharingPickerHost, MEMORY[0x1E697FD28]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>, ViewInputFlagModifier<IsSharingPickerHost>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, &lazy cache variable for type metadata for _ViewModifier_Content<SharingPickerHostModifier>, lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier, &type metadata for SharingPickerHostModifier);
    type metadata accessor for EnvironmentPropertyKey<PresentSharingPickerKey>(255, &lazy cache variable for type metadata for _ValueActionModifier2<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697FDD0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>, ViewInputFlagModifier<IsSharingPickerHost>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>);
    v5[1] = MEMORY[0x1E69805D0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<SharingPickerHostModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<SharingPickerHostModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<SharingPickerHostModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<SharingPickerHostModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<SharingPickerHostModifier>, lazy protocol witness table accessor for type SharingPickerHostModifier and conformance SharingPickerHostModifier, &type metadata for SharingPickerHostModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<SharingPickerHostModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>()
{
  result = lazy protocol witness table cache variable for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>;
  if (!lazy protocol witness table cache variable for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>)
  {
    type metadata accessor for Button<Text>(255, &lazy cache variable for type metadata for _ValueActionModifier2<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697FDD0]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDE0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<IsSharingPickerHost> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<IsSharingPickerHost> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<IsSharingPickerHost> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for _ViewModifier_Content<SharingPickerHostModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsSharingPickerHost>, lazy protocol witness table accessor for type IsSharingPickerHost and conformance IsSharingPickerHost, &type metadata for IsSharingPickerHost, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<IsSharingPickerHost> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

double View.clearSharingPickerHost()(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  _s7SwiftUI26PresentSharingPickerActionVSgWOi0_(&v3);
  View.environment<A>(_:_:)();

  return result;
}

uint64_t outlined init with copy of PresentSharingPickerAction?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CollectionOfOne<String>(0, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

__n128 protocol witness for static EnvironmentKey.defaultValue.getter in conformance PresentSharingPickerKey@<Q0>(uint64_t a1@<X8>)
{
  _s7SwiftUI26PresentSharingPickerActionVSgWOi0_(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v6[8];
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<PresentSharingPickerKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentSharingPickerKey>, &type metadata for PresentSharingPickerKey, &protocol witness table for PresentSharingPickerKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<PresentSharingPickerKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for State<SharingPickerHostModifier.Model?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for CollectionOfOne<String>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double _s7SwiftUI26PresentSharingPickerActionVSgWOi0_(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void type metadata accessor for EnvironmentPropertyKey<PresentSharingPickerKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for PresentSharingPickerAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

void type metadata accessor for _ContiguousArrayStorage<Any>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for [ViewResponder](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_5(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_6(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_7(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sSay7SwiftUI13ViewResponderCGMaTm_8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t storeEnumTagSinglePayload for PresentSharingPickerAction(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>, ViewInputFlagModifier<IsSharingPickerHost>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>(255);
    type metadata accessor for State<SharingPickerHostModifier.Model?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<SharingPickerHostModifier>, SharingActivityPickerModifier>, _ValueActionModifier2<Bool>>, _AppearanceActionModifier>, _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>>);
    }
  }
}

void type metadata accessor for Button<Text>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t initializeWithCopy for PlatformItemListButtonStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(v2 + 48);
  LOBYTE(v2) = *(v2 + 56);
  outlined copy of Environment<Selector?>.Content(v10, v2);
  *(a1 + 48) = v10;
  *(a1 + 56) = v2;
  return a1;
}

uint64_t destroy for PlatformItemListButtonStyle(uint64_t a1)
{
  outlined consume of Environment<Color?>.Content(*a1);
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<Selector?>.Content(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

uint64_t assignWithCopy for PlatformItemListButtonStyle(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2);
  v6 = *a1;
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  outlined copy of Environment<Selector?>.Content(v7, v8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  outlined copy of Environment<Selector?>.Content(v11, v12);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  *(a1 + 32) = v11;
  *(a1 + 40) = v12;
  outlined consume of Environment<Selector?>.Content(v13, v14);
  v15 = *(v2 + 48);
  LOBYTE(v2) = *(v2 + 56);
  outlined copy of Environment<Selector?>.Content(v15, v2);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  *(a1 + 48) = v15;
  *(a1 + 56) = v2;
  outlined consume of Environment<Selector?>.Content(v16, v17);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ResetScrollEnvironmentModifier.AdditionalResetModifier and conformance ResetScrollEnvironmentModifier.AdditionalResetModifier()
{
  result = lazy protocol witness table cache variable for type ResetScrollEnvironmentModifier.AdditionalResetModifier and conformance ResetScrollEnvironmentModifier.AdditionalResetModifier;
  if (!lazy protocol witness table cache variable for type ResetScrollEnvironmentModifier.AdditionalResetModifier and conformance ResetScrollEnvironmentModifier.AdditionalResetModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResetScrollEnvironmentModifier.AdditionalResetModifier, &type metadata for ResetScrollEnvironmentModifier.AdditionalResetModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResetScrollEnvironmentModifier.AdditionalResetModifier and conformance ResetScrollEnvironmentModifier.AdditionalResetModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<RefreshScopeModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<RefreshScopeModifier>, MEMORY[0x1E697FDF8]);
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<RefreshAction?> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>>)
  {
    type metadata accessor for _ViewModifier_Content<RefreshScopeModifier>(255);
    type metadata accessor for TaskPriority?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RefreshAction?>, type metadata accessor for RefreshAction?, MEMORY[0x1E6980A08]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<RefreshScopeModifier>, _EnvironmentKeyWritingModifier<RefreshAction?>>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<RefreshScopeModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<RefreshScopeModifier>)
  {
    lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<RefreshScopeModifier>);
    }
  }
}

void type metadata accessor for TaskPriority?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _sScPSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata accessor for RefreshAction?()
{
  if (!lazy cache variable for type metadata for RefreshAction?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RefreshAction?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<RefreshAction.Key> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<RefreshAction?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<RefreshAction?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<RefreshAction?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for TaskPriority?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RefreshAction?>, type metadata accessor for RefreshAction?, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<RefreshAction?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for State<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI5StateVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI5StateVySbGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI5StateVySbGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI5StateVySbGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider()
{
  result = lazy protocol witness table cache variable for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider;
  if (!lazy protocol witness table cache variable for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6980A78], MEMORY[0x1E6980A80], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider()
{
  result = lazy protocol witness table cache variable for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider;
  if (!lazy protocol witness table cache variable for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69807F0], MEMORY[0x1E6980800], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

char *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance HasContextMenuKey(char *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result)
  {
    v3 = 1;
  }

  else
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

double outlined copy of Environment<AppIntentExecutor?>.Content(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    outlined copy of AppIntentExecutor?(result, a2);
  }

  else
  {
  }

  return v3;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
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

unint64_t lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction()
{
  result = lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProvidesContextMenuInteraction, &type metadata for ProvidesContextMenuInteraction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProvidesContextMenuInteraction, &type metadata for ProvidesContextMenuInteraction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProvidesContextMenuInteraction, &type metadata for ProvidesContextMenuInteraction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProvidesContextMenuInteraction, &type metadata for ProvidesContextMenuInteraction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction;
  if (!lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProvidesContextMenuInteraction, &type metadata for ProvidesContextMenuInteraction, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PresentSharingPickerAction?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PresentSharingPickerAction?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PresentSharingPickerAction?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for State<SharingPickerHostModifier.Model?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PresentSharingPickerAction?>, &lazy cache variable for type metadata for PresentSharingPickerAction?, &type metadata for PresentSharingPickerAction, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PresentSharingPickerAction?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t static ToolbarContentBuilder.buildIf<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t type metadata completion function for AlertModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier()
{
  result = lazy protocol witness table cache variable for type ActionsModifier and conformance ActionsModifier;
  if (!lazy protocol witness table cache variable for type ActionsModifier and conformance ActionsModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionsModifier, &unk_1EFFCFD30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ActionsModifier and conformance ActionsModifier);
  }

  return result;
}

uint64_t static AlertModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v66 = a8;
  v114 = *MEMORY[0x1E69E9840];
  v15 = a2[1];
  v16 = a2[3];
  v109 = a2[2];
  v110 = v16;
  v111 = a2[4];
  v17 = a2[1];
  v107 = *a2;
  v108 = v17;
  v100 = v107;
  v101 = v15;
  v18 = *a1;
  v112 = *(a2 + 20);
  v102 = v109;
  outlined init with copy of _GraphInputs(&v107, &v88);
  v19 = specialized static AllowPresentationPredicate.evaluate(inputs:)(&v100);
  v113[0] = v100;
  v113[1] = v101;
  v113[2] = v102;
  v20 = outlined destroy of _GraphInputs(v113);
  if (v19)
  {
    v96 = v109;
    v97 = v110;
    v98 = v111;
    v99 = v112;
    v94 = v107;
    v95 = v108;
    v21 = v108;
    v22 = swift_beginAccess();
    v65 = a3;
    LODWORD(v88) = *(v21 + 16);
    MEMORY[0x1EEE9AC00](v22);
    v62 = a4;
    *&v100 = a5;
    *(&v100 + 1) = a6;
    *&v101 = a7;
    v23 = v66;
    *(&v101 + 1) = v66;
    v64 = a7;
    v56 = type metadata accessor for AlertModifier.AlertEnvironment(0, &v100);
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AlertModifier<A, B>.AlertEnvironment, v56);
    outlined init with copy of _ViewInputs(&v107, &v100);
    _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v88, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, v55, v56, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
    _GraphInputs.environment.setter();
    LOBYTE(v100) = 1;
    lazy protocol witness table accessor for type IncludesAccessibilityText and conformance IncludesAccessibilityText();
    v26 = PropertyList.subscript.setter();
    v102 = v109;
    v103 = v110;
    v104 = v111;
    *v105 = v112;
    v100 = v107;
    v101 = v108;
    v63 = a9;
    v27 = v64;
    v65(v26, &v100);
    LODWORD(v65) = v18;
    v69 = v18;
    *&v100 = a5;
    *(&v100 + 1) = a6;
    *&v101 = v27;
    *(&v101 + 1) = v23;
    type metadata accessor for AlertModifier(255, &v100);
    v28 = type metadata accessor for _GraphValue();
    _GraphValue.value.getter();
    if (*(*(a5 - 8) + 64))
    {
      closure #1 in static AlertModifier._makeView(modifier:inputs:body:)(1, a5, a6, v27, v66);
    }

    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v86[2] = v96;
    v86[3] = v97;
    v86[4] = v98;
    v87 = v99;
    v86[0] = v94;
    v86[1] = v95;
    v90 = v96;
    v91 = v97;
    v92 = v98;
    LODWORD(v93[0]) = v99;
    v88 = v94;
    v89 = v95;
    v31 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v88, 1, &v100);
    MEMORY[0x1EEE9AC00](v31);
    *&v88 = &type metadata for AllPlatformItemListFlags;
    *(&v88 + 1) = a5;
    *&v89 = &protocol witness table for AllPlatformItemListFlags;
    *(&v89 + 1) = v27;
    v32 = type metadata accessor for PlatformItemListGenerator(0, &v88);
    v56 = v32;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGenerator<A, B>, v32);
    outlined init with copy of _ViewInputs(v86, &v88);
    _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
    v34 = v33;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v100, closure #1 in Attribute.init<A>(_:)partial apply, v55, v32, MEMORY[0x1E69E73E0], v33, MEMORY[0x1E69E7410], v35);
    v92 = v104;
    v93[0] = *v105;
    *(v93 + 12) = *&v105[12];
    v88 = v100;
    v89 = v101;
    v90 = v102;
    v91 = v103;
    (*(*(v32 - 8) + 8))(&v88, v32);
    v60 = v74;
    v68 = v65;
    _GraphValue.value.getter();
    v36 = *(*(a6 - 8) + 64);
    v61 = a5;
    v62 = v28;
    if (v36)
    {
      closure #2 in static AlertModifier._makeView(modifier:inputs:body:)(1, a5, a6, v27, v66);
    }

    v37 = AGGraphCreateOffsetAttribute2();
    v72[2] = v96;
    v72[3] = v97;
    v72[4] = v98;
    v73 = v99;
    v72[0] = v94;
    v72[1] = v95;
    v38 = v95;
    v58 = DWORD2(v95);
    v76 = v96;
    v77 = v97;
    v78 = v98;
    LODWORD(v79[0]) = v99;
    v74 = v94;
    v75 = v95;
    v39 = v66;
    v40 = PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)(v37, &v74, 1, &v100);
    MEMORY[0x1EEE9AC00](v40);
    v59 = a6;
    *&v74 = &type metadata for TextPlatformItemListFlags;
    *(&v74 + 1) = a6;
    *&v75 = &protocol witness table for TextPlatformItemListFlags;
    *(&v75 + 1) = v39;
    v41 = type metadata accessor for PlatformItemListGenerator(0, &v74);
    v56 = v41;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGenerator<A, B>, v41);
    outlined init with copy of _ViewInputs(v72, &v74);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v100, closure #1 in Attribute.init<A>(_:)partial apply, v55, v41, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v42);
    v78 = v104;
    v79[0] = *v105;
    *(v79 + 12) = *&v105[12];
    v74 = v100;
    v75 = v101;
    v76 = v102;
    v77 = v103;
    (*(*(v41 - 8) + 8))(&v74, v41);
    swift_beginAccess();
    v43 = *(v38 + 16);
    LODWORD(v100) = v65;
    v44 = _GraphValue.value.getter();
    v45 = AGCreateWeakAttribute();
    v46 = AGCreateWeakAttribute();
    v47 = v46;
    v48 = HIDWORD(v46);
    type metadata accessor for PropertyList.Tracker();
    swift_allocObject();
    v49 = PropertyList.Tracker.init()();
    v67 = 1;
    *&v100 = __PAIR64__(v44, v43);
    *(&v100 + 1) = v45;
    *&v101 = __PAIR64__(v48, v47);
    LODWORD(v102) = 0;
    *(&v101 + 1) = v58;
    *(&v102 + 1) = v49;
    v103 = 0uLL;
    LOBYTE(v104) = 2;
    *(&v104 + 1) = v80;
    DWORD1(v104) = *(&v80 + 3);
    *v105 = 0;
    *(&v104 + 1) = 0;
    *&v105[8] = 0;
    *&v105[16] = 257;
    *&v105[18] = v70;
    *&v105[22] = WORD2(v70);
    memset(&v105[24], 0, 48);
    v106 = 0;
    v70 = v110;
    v71 = DWORD2(v110);
    MEMORY[0x1EEE9AC00](v110);
    v50 = v61;
    v51 = v59;
    v52 = v64;
    v53 = v66;
    v55[0] = v64;
    v55[1] = v66;
    v56 = &v100;

    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
    *&v80 = v50;
    *(&v80 + 1) = v51;
    *&v81 = v52;
    *(&v81 + 1) = v53;
    AlertStorage = type metadata accessor for MakeAlertStorage(0, &v80);
    (*(*(AlertStorage - 8) + 8))(&v100, AlertStorage);

    v82 = v96;
    v83 = v97;
    v84 = v98;
    v85 = v99;
    v80 = v94;
    v81 = v95;
    return outlined destroy of _ViewInputs(&v80);
  }

  else
  {
    v102 = v109;
    v103 = v110;
    v104 = v111;
    *v105 = v112;
    v100 = v107;
    v101 = v108;
    return (a3)(v20, &v100);
  }
}

unint64_t lazy protocol witness table accessor for type IncludesAccessibilityText and conformance IncludesAccessibilityText()
{
  result = lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText;
  if (!lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IncludesAccessibilityText, &type metadata for IncludesAccessibilityText, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText;
  if (!lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IncludesAccessibilityText, &type metadata for IncludesAccessibilityText, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText;
  if (!lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IncludesAccessibilityText, &type metadata for IncludesAccessibilityText, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText;
  if (!lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IncludesAccessibilityText, &type metadata for IncludesAccessibilityText, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText;
  if (!lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IncludesAccessibilityText, &type metadata for IncludesAccessibilityText, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IncludesAccessibilityText and conformance IncludesAccessibilityText);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OnTestViewModifier.AddTestCase and conformance OnTestViewModifier.AddTestCase()
{
  result = lazy protocol witness table cache variable for type OnTestViewModifier.AddTestCase and conformance OnTestViewModifier.AddTestCase;
  if (!lazy protocol witness table cache variable for type OnTestViewModifier.AddTestCase and conformance OnTestViewModifier.AddTestCase)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnTestViewModifier.AddTestCase, &unk_1EFFA85D8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnTestViewModifier.AddTestCase and conformance OnTestViewModifier.AddTestCase);
  }

  return result;
}

uint64_t closure #1 in static AlertModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for AlertModifier(0, v13);
  v8 = *(v7 + 60);
  v12[2] = v7;
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t closure #2 in static AlertModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for AlertModifier(0, v13);
  v8 = *(v7 + 64);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

id PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)@<X0>(int a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v10 = *MEMORY[0x1E698D3F8];
    *&v11[4] = *a3;
    *&v11[20] = *(a3 + 16);
    *&v11[84] = *(a3 + 80);
    *&v11[68] = *(a3 + 64);
    *&v11[52] = *(a3 + 48);
    *&v11[36] = *(a3 + 32);
    *a5 = result;
    *(a5 + 8) = a2;
    *(a5 + 28) = *&v11[16];
    *(a5 + 12) = *v11;
    *(a5 + 92) = *&v11[80];
    *(a5 + 76) = *&v11[64];
    *(a5 + 60) = *&v11[48];
    *(a5 + 44) = *&v11[32];
    *(a5 + 100) = a4 & 1;
    *(a5 + 104) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in Attribute.init<A>(_:)partial apply@<X0>(_DWORD *a1@<X8>)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_11(a1);
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_15(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

{
  return closure #1 in Attribute.init<A>(_:)partial apply(a1);
}

uint64_t implicit closure #1 in static AlertModifier._makeView(modifier:inputs:body:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a1[7];
  v25 = a1[6];
  v26 = v6;
  v27[0] = a1[8];
  *(v27 + 9) = *(a1 + 137);
  v7 = a1[3];
  v21 = a1[2];
  v22 = v7;
  v8 = a1[5];
  v23 = a1[4];
  v24 = v8;
  v9 = a1[1];
  v19 = *a1;
  v20 = v9;
  *&v28 = a2;
  *(&v28 + 1) = a3;
  *&v29 = a4;
  *(&v29 + 1) = a5;
  AlertStorage = type metadata accessor for MakeAlertStorage(0, &v28);
  v17 = AlertStorage;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for MakeAlertStorage<A, B>, AlertStorage);
  v11 = *(AlertStorage - 8);
  (*(v11 + 16))(&v28, a1, AlertStorage);
  type metadata accessor for Attribute<(_:)>(0);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v19, closure #1 in Attribute.init<A>(_:)partial apply, v16, AlertStorage, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  v34 = v25;
  v35 = v26;
  v36[0] = v27[0];
  *(v36 + 9) = *(v27 + 9);
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v33 = v24;
  v28 = v19;
  v29 = v20;
  (*(v11 + 8))(&v28, AlertStorage);
  return v15;
}

uint64_t initializeWithCopy for MakeAlertStorage(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v5;
  *(a1 + 97) = *(a2 + 97);
  v6 = *(a2 + 144);

  if (v6)
  {
    v7 = *(a2 + 128);
    if (v7)
    {
      v8 = *(a2 + 104);
      v9 = *(a2 + 112);
      v10 = *(a2 + 120);
      outlined copy of Text.Storage(v8, v9, v10);
      *(a1 + 104) = v8;
      *(a1 + 112) = v9;
      *(a1 + 120) = v10;
      *(a1 + 128) = v7;
    }

    else
    {
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 120) = *(a2 + 120);
    }

    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = v6;
    *(a1 + 152) = *(a2 + 152);
  }

  else
  {
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
  }

  return a1;
}

double destroy for MakeAlertStorage(uint64_t a1)
{

  if (*(a1 + 144))
  {
    if (*(a1 + 128))
    {
      outlined consume of Text.Storage(*(a1 + 104), *(a1 + 112), *(a1 + 120));
    }
  }

  return result;
}

void type metadata accessor for Binding<Bool>()
{
  if (!lazy cache variable for type metadata for Binding<Bool>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Bool>);
    }
  }
}

__n128 AlertModifier.init(presentedValue:isPresented:title:actions:message:auxiliaryContent:representsError:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12, char a13, __int128 a14, __int128 a15)
{
  v31 = a14;
  v32 = a15;
  v20 = type metadata accessor for AlertModifier(0, &v31);
  v21 = a9 + v20[17];
  *(v21 + 80) = 0;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *v21 = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  (*(*(a14 - 8) + 32))(a9 + v20[15], a10, a14);
  (*(*(*(&a14 + 1) - 8) + 32))(a9 + v20[16], a11, *(&a14 + 1));
  v22 = *(v21 + 48);
  v33 = *(v21 + 32);
  v34 = v22;
  v35 = *(v21 + 64);
  v36 = *(v21 + 80);
  v23 = *(v21 + 16);
  v31 = *v21;
  v32 = v23;
  outlined destroy of BoundInputsView?(&v31, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView);
  v24 = a12[3];
  *(v21 + 32) = a12[2];
  *(v21 + 48) = v24;
  *(v21 + 64) = a12[4];
  *(v21 + 80) = *(a12 + 10);
  result = *a12;
  v26 = a12[1];
  *v21 = *a12;
  *(v21 + 16) = v26;
  *(a9 + v20[18]) = a13;
  return result;
}

uint64_t outlined destroy of BoundInputsView?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI15BoundInputsViewVSgWOhTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t initializeWithCopy for AlertModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  *(v5 + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v5 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v5 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
  v9 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);

  outlined copy of Text.Storage(v7, v8, v9);
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  *(v5 + 48) = v9;
  *(v5 + 56) = *(v6 + 56);
  v10 = *(a3 + 16);
  v11 = *(*(v10 - 8) + 16);
  v12 = *(v10 - 8) + 16;
  v13 = *(*(v10 - 8) + 80);
  v14 = (v13 + 64 + v5) & ~v13;
  v15 = (v13 + 64 + v6) & ~v13;

  v11(v14, v15, v10);
  v16 = *(*(a3 + 24) - 8);
  v17 = v16 + 16;
  v18 = *(v16 + 80);
  v19 = *(v12 + 48) + v18;
  v20 = (v19 + v14) & ~v18;
  v21 = (v19 + v15) & ~v18;
  (*(v16 + 16))(v20, v21);
  v22 = *(v17 + 48) + 7;
  v23 = (v22 + v20) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v22 + v21) & 0xFFFFFFFFFFFFFFF8;
  if (*v24 < 0xFFFFFFFFuLL)
  {
    v28 = *(v24 + 16);
    *v23 = *v24;
    *(v23 + 16) = v28;
    v29 = *(v24 + 32);
    v30 = *(v24 + 48);
    v31 = *(v24 + 64);
    *(v23 + 80) = *(v24 + 80);
    *(v23 + 48) = v30;
    *(v23 + 64) = v31;
    *(v23 + 32) = v29;
  }

  else
  {
    v25 = *(v24 + 8);
    *v23 = *v24;
    *(v23 + 8) = v25;
    *(v23 + 16) = *(v24 + 16);
    *(v23 + 24) = *(v24 + 24);
    v26 = *(v24 + 32);
    *(v23 + 32) = v26;
    *(v23 + 40) = *(v24 + 40);
    *(v23 + 48) = *(v24 + 48);
    *(v23 + 56) = *(v24 + 56);
    *(v23 + 64) = *(v24 + 64);
    *(v23 + 68) = *(v24 + 68);
    *(v23 + 72) = *(v24 + 72);
    *(v23 + 76) = *(v24 + 76);
    *(v23 + 80) = *(v24 + 80);
    v27 = v26;
  }

  *(v23 + 88) = *(v24 + 88);
  return a1;
}

uint64_t destroy for AlertModifier(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;

  outlined consume of Text.Storage(*(v3 + 32), *(v3 + 40), *(v3 + 48));

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (v3 + *(v4 + 80) + 64) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = *(v5 + 56);
  v8 = *(*(a2 + 24) - 8);
  v9 = v8 + 8;
  v10 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  result = (*(v8 + 8))(v10);
  v12 = (*(v9 + 56) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v12 >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t View.alert<A, B>(_:isPresented:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t (*a8)(__n128)@<X7>, uint64_t a9@<X8>, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v63 = a8;
  v69 = a7;
  v57 = a4;
  v67 = a9;
  v68 = a13;
  v65 = a12;
  v64 = a11;
  v62 = a10;
  v53 = a18;
  v56 = a15;
  v66 = a16;
  v51 = a17;
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v24;
  v60 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v28);
  v52 = &v48 - v29;
  v30 = lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier();
  v80[0] = a17;
  v80[1] = v30;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v28, v80);
  *&v70 = v28;
  *(&v70 + 1) = a15;
  *&v71 = WitnessTable;
  *(&v71 + 1) = a18;
  v58 = type metadata accessor for AlertModifier(0, &v70);
  v59 = *(v58 - 8);
  v31 = MEMORY[0x1EEE9AC00](v58);
  v33 = &v48 - v32;
  MEMORY[0x18D009CE0](&v70, v31);
  v34 = v57;
  Text.assertUnstyled(_:options:)();
  v49 = a5;
  v77 = a5;
  v78 = a6;
  v48 = a6;
  v79 = v69;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v76);
  v50 = v76;

  v35 = a1;
  v36 = a2;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  v38 = (v63)(v37);
  v39 = v52;
  v40 = v55;
  MEMORY[0x18D00A570](v38, v55, &unk_1EFFCFD30, v51);
  v41 = (*(v60 + 8))(v27, v40);
  v42 = v61;
  v64(v41);
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  *(&v47 + 1) = v53;
  *&v47 = WitnessTable;
  *&v46 = v28;
  *(&v46 + 1) = v56;
  v43 = AlertModifier.init(presentedValue:isPresented:title:actions:message:auxiliaryContent:representsError:)(v50, v49, v48, v69, v35, v36, a3 & 1, v34, v33, v39, v42, &v70, 0, v46, v47);
  v44 = v58;
  MEMORY[0x18D00A570](v33, v68, v58, v66, v43);
  return (*(v59 + 8))(v33, v44);
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.NavigationPresentationAdaptorKey@<X0>(_DWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static _GraphInputs.NavigationPresentationAdaptorKey.defaultValue;
  return result;
}

uint64_t type metadata completion function for NavigationSplitView(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t View.navigationTitlePreferenceTransform(adding:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  v11 = a1[1];
  v21[0] = *a1;
  v21[1] = v11;
  v22[0] = a1[2];
  *(v22 + 9) = *(a1 + 41);
  v12 = swift_allocObject();
  v13 = a1[1];
  v12[1] = *a1;
  v12[2] = v13;
  v12[3] = a1[2];
  *(v12 + 57) = *(a1 + 41);
  outlined init with copy of NavigationTitleStorage(v21, v20);
  View.transactionalPreferenceTransform<A>(key:transform:)(&type metadata for NavigationTitleKey, partial apply for closure #1 in View.navigationTitlePreferenceTransform(adding:), v12, a2, &type metadata for NavigationTitleKey, a3, &protocol witness table for NavigationTitleKey);

  v20[0] = closure #2 in View.navigationTitlePreferenceTransform(adding:);
  v20[1] = 0;
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(0, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v15 = v14;
  v19[0] = a3;
  v19[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v19);
  MEMORY[0x18D00A570](v20, v7, v15, WitnessTable);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_18BE5E0C0()
{
  if (*(v0 + 40))
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 48) != 1)
  {
  }

  return swift_deallocObject();
}

double View.transactionalPreferenceTransform<A>(key:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11[0] = a2;
  v11[1] = a3;
  v9 = type metadata accessor for TransactionalPreferenceTransformModifier(0, a5, a7, a4);

  MEMORY[0x18D00A570](v11, a4, v9, a6);

  return result;
}

unint64_t lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext()
{
  result = lazy protocol witness table cache variable for type ListContainerContext and conformance ListContainerContext;
  if (!lazy protocol witness table cache variable for type ListContainerContext and conformance ListContainerContext)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ListContainerContext, &type metadata for ListContainerContext, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ListContainerContext and conformance ListContainerContext);
  }

  return result;
}

uint64_t View.navigationTitle(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  MEMORY[0x18D009CE0](v18);
  Text.assertUnstyled(_:options:)();
  *&v15 = a1;
  *(&v15 + 1) = a2;
  *&v16 = a3 & 1;
  *(&v16 + 1) = a4;
  *v17 = 1;
  v17[8] = 5;
  *&v17[16] = 0;
  v17[24] = 3;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  View.navigationTitlePreferenceTransform(adding:)(&v15, a5, a6, a7);
  v18[0] = v15;
  v18[1] = v16;
  v19[0] = *v17;
  *(v19 + 9) = *&v17[9];
  return outlined destroy of NavigationTitleStorage(v18);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ToolbarModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ToolbarModifier<A, B>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for NavigationStackStyledCore(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for NavigationStackReader(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BE5E5CC(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = type metadata accessor for ModifiedContent();
  v13[0] = v3;
  v13[1] = lazy protocol witness table accessor for type NavigationStackRootDecoratingModifier and conformance NavigationStackRootDecoratingModifier();
  v5 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v13);
  v12[0] = type metadata accessor for NavigationStackStyledCore(255, v4, WitnessTable, v7);
  v12[1] = v2;
  v12[2] = &protocol witness table for NavigationStackStyledCore<A>;
  v12[3] = v3;
  type metadata accessor for NavigationStackReader(255, v12);
  v8 = type metadata accessor for ModifiedContent();
  v11[0] = &protocol witness table for NavigationStackReader<A, B>;
  v11[1] = lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier();
  swift_getWitnessTable(v5, v8, v11);
  v9 = type metadata accessor for _UnaryViewAdaptor();
  return swift_getWitnessTable(MEMORY[0x1E697F380], v9);
}

unint64_t lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity()
{
  result = lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity;
  if (!lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697DFC8], MEMORY[0x1E697DFC0], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewIdentity and conformance ViewIdentity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey()
{
  result = lazy protocol witness table cache variable for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey;
  if (!lazy protocol witness table cache variable for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UISplitViewControllerProxyKey, &type metadata for UISplitViewControllerProxyKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey);
  }

  return result;
}

uint64_t type metadata accessor for UISplitViewControllerProxyStorage(uint64_t a1)
{
  result = type metadata singleton initialization cache for UISplitViewControllerProxyStorage;
  if (!type metadata singleton initialization cache for UISplitViewControllerProxyStorage)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for UISplitViewControllerProxyStorage(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for _PresentationTransitionOutputs(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _PresentationTransitionOutputs(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

void type metadata accessor for Binding<TextSelection?>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for TextSelection(uint64_t a1)
{
  result = type metadata accessor for TextSelection.Indices(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata completion function for TextSelection.Indices(uint64_t a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(319, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSelectionAffinityKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for Binding<AttributedString>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<AttributedString>)
  {
    type metadata accessor for AttributedString();
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<AttributedString>);
    }
  }
}

void type metadata accessor for Binding<SearchFieldState>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type NavigationColumnModifier and conformance NavigationColumnModifier()
{
  result = lazy protocol witness table cache variable for type NavigationColumnModifier and conformance NavigationColumnModifier;
  if (!lazy protocol witness table cache variable for type NavigationColumnModifier and conformance NavigationColumnModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationColumnModifier, &type metadata for NavigationColumnModifier, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationColumnModifier and conformance NavigationColumnModifier);
  }

  return result;
}

void type metadata accessor for StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>)
  {
    type metadata accessor for _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>);
    }
  }
}

void type metadata accessor for _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>)
  {
    lazy protocol witness table accessor for type SearchOverlayView and conformance SearchOverlayView();
    v1 = type metadata accessor for _OverlayPreferenceModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SearchOverlayView and conformance SearchOverlayView()
{
  result = lazy protocol witness table cache variable for type SearchOverlayView and conformance SearchOverlayView;
  if (!lazy protocol witness table cache variable for type SearchOverlayView and conformance SearchOverlayView)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchOverlayView, &type metadata for SearchOverlayView, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchOverlayView and conformance SearchOverlayView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsSearchAllowedPredicate and conformance IsSearchAllowedPredicate()
{
  result = lazy protocol witness table cache variable for type IsSearchAllowedPredicate and conformance IsSearchAllowedPredicate;
  if (!lazy protocol witness table cache variable for type IsSearchAllowedPredicate and conformance IsSearchAllowedPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IsSearchAllowedPredicate, &type metadata for IsSearchAllowedPredicate, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IsSearchAllowedPredicate and conformance IsSearchAllowedPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type IsSearchAllowedPredicate and conformance IsSearchAllowedPredicate();
    v5[1] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView> and conformance _OverlayPreferenceModifier<A, B>, type metadata accessor for _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, MEMORY[0x1E6980748]);
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IsSearchAllowedPredicate, _OverlayPreferenceModifier<IsSearchImplementedPreferenceKey, SearchOverlayView>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<EnvironmentValues.SearchField, SearchFieldStyleModifier<ToolbarSearchFieldStyle>>?, ModifiedContent<_UnaryViewAdaptor<EmptyView>, ToolbarModifier<(), TupleToolbarContent<SearchScopeToolbarContent<SearchFieldConfiguration.Scopes>>>>?)> and conformance TupleView<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsSearchAllowedPredicate(uint64_t *a1)
{
  lazy protocol witness table accessor for type IsSearchAllowedInput and conformance IsSearchAllowedInput();
  PropertyList.subscript.getter();
  return v2;
}

double default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for GraphHost();
  v2 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  v3 = *(v2 + 64);

  *a1 = v3;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 4) = 0xFFFFFFFFLL;
  *(a1 + 12) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey()
{
  result = lazy protocol witness table cache variable for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationAuthority.DepthKey, &type metadata for NavigationAuthority.DepthKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey;
  if (!lazy protocol witness table cache variable for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationAuthority.DepthKey, &type metadata for NavigationAuthority.DepthKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Attribute<Int> and conformance Attribute<A>()
{
  result = lazy protocol witness table cache variable for type Attribute<Int> and conformance Attribute<A>;
  if (!lazy protocol witness table cache variable for type Attribute<Int> and conformance Attribute<A>)
  {
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for Attribute<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E698D388]);
    result = swift_getWitnessTable(MEMORY[0x1E697D980], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Attribute<Int> and conformance Attribute<A>);
  }

  return result;
}

uint64_t closure #1 in static PositionedNavigationDestinationProcessor._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = type metadata accessor for PositionedNavigationDestinationProcessor(0, a2, a3, a4);
  _s7SwiftUI19NavigationAuthorityVSgMaTm_1(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  v6 = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_26, v10, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

void type metadata accessor for NavigationAuthority?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI19NavigationAuthorityVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s7SwiftUI19NavigationAuthorityVSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI27NavigationStackViewPositionV_AC11VersionSeedVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationStackViewPosition, VersionSeed>, lazy protocol witness table accessor for type NavigationStackViewPosition and conformance NavigationStackViewPosition, &type metadata for NavigationStackViewPosition, MEMORY[0x1E697DD88]);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 76); ; i += 12)
    {
      v5 = *(i - 7);
      v14 = *(i - 11);
      v15[0] = v5;
      *(v15 + 9) = *(i - 19);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 48 * result);
      v10 = v15[0];
      *v9 = v14;
      v9[1] = v10;
      *(v9 + 25) = *(v15 + 9);
      *(v3[7] + 4 * result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t initializeWithCopy for PositionedNavigationDestinationProcessor.PollingRule(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t destroy for PositionedNavigationDestinationProcessor.PollingRule(uint64_t a1)
{
}

unint64_t instantiation function for generic protocol witness table for NavigationSplitViewStyleConfiguration.Sidebar(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for NavigationSplitViewStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for NavigationSplitViewStyleConfiguration.Detail(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewStyleConfiguration.Sidebar, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewStyleConfiguration.Sidebar, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewStyleConfiguration.Content, &type metadata for NavigationSplitViewStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewStyleConfiguration.Content, &type metadata for NavigationSplitViewStyleConfiguration.Content, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle()
{
  result = lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedNavigationSplitStyle, &type metadata for ResolvedNavigationSplitStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedNavigationSplitStyle, &type metadata for ResolvedNavigationSplitStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedNavigationSplitStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

unint64_t lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ContentListContent and conformance ResolvedNavigationSplitStyle.ContentListContent()
{
  result = lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ContentListContent and conformance ResolvedNavigationSplitStyle.ContentListContent;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ContentListContent and conformance ResolvedNavigationSplitStyle.ContentListContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedNavigationSplitStyle.ContentListContent, &unk_1EFFB3840, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.ContentListContent and conformance ResolvedNavigationSplitStyle.ContentListContent);
  }

  return result;
}

void type metadata accessor for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>)
  {
    v4[0] = &type metadata for NavigationSplitViewStyleConfiguration.Detail;
    v4[1] = &unk_1EFFB3818;
    v4[2] = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail();
    v4[3] = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.DetailContent and conformance ResolvedNavigationSplitStyle.DetailContent();
    v2 = type metadata accessor for StaticSourceWriter(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Detail, ResolvedNavigationSplitStyle.DetailContent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.DetailContent and conformance ResolvedNavigationSplitStyle.DetailContent()
{
  result = lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.DetailContent and conformance ResolvedNavigationSplitStyle.DetailContent;
  if (!lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.DetailContent and conformance ResolvedNavigationSplitStyle.DetailContent)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ResolvedNavigationSplitStyle.DetailContent, &unk_1EFFB3818, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedNavigationSplitStyle.DetailContent and conformance ResolvedNavigationSplitStyle.DetailContent);
  }

  return result;
}

void type metadata accessor for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationSplitStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_18BE5FE98(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

unint64_t lazy protocol witness table accessor for type NavigationSplitReader and conformance NavigationSplitReader()
{
  result = lazy protocol witness table cache variable for type NavigationSplitReader and conformance NavigationSplitReader;
  if (!lazy protocol witness table cache variable for type NavigationSplitReader and conformance NavigationSplitReader)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitReader, &type metadata for NavigationSplitReader, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitReader and conformance NavigationSplitReader);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>, &type metadata for CompositeNavigationSplitViewVisibility.Key, &protocol witness table for CompositeNavigationSplitViewVisibility.Key, MEMORY[0x1E6980750]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<HasSwiftUINavigationKey> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>>)
  {
    type metadata accessor for ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>(255);
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<HasSwiftUINavigationKey>, &type metadata for HasSwiftUINavigationKey, &protocol witness table for HasSwiftUINavigationKey, MEMORY[0x1E6980750]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>, _PreferenceWritingModifier<HasSwiftUINavigationKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for _NavigationSplitReader;
    v5[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_NavigationSplitReader, _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t static _NavigationSplitReader._makeView(view:inputs:)(unsigned int *a1, __int128 *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = a2[3];
  v60 = a2[2];
  v61 = v3;
  v62 = a2[4];
  v63 = *(a2 + 20);
  v4 = a2[1];
  v58 = *a2;
  v59 = v4;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for _GraphValue<_NavigationSplitReader>, &unk_1EFFADE40, MEMORY[0x1E697DDB8]);
  _GraphValue.subscript.getter();
  _GraphValue.subscript.getter();
  v35 = v66[0];
  _GraphValue.subscript.getter();
  v38 = v66[0];
  _GraphValue.subscript.getter();
  v41 = v66[0];
  _GraphValue.subscript.getter();
  v34 = v66[0];
  _GraphValue.subscript.getter();
  v43 = v66[0];
  type metadata accessor for NavigationStateHost();
  _GraphValue.subscript.getter();
  _GraphValue.subscript.getter();
  LODWORD(v68) = v2;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981948]);
  _GraphValue.subscript.getter();
  v5 = v66[0];
  lazy protocol witness table accessor for type UISplitViewControllerProxyKey and conformance UISplitViewControllerProxyKey();
  PropertyList.subscript.getter();
  v44 = DWORD1(v68);
  v45 = v2;
  swift_beginAccess();
  v6 = *(v59 + 16);
  v69 = xmmword_18CD633F0;
  *&v70 = 0;
  *&v68 = __PAIR64__(v66[0], v6);
  v42 = v66[0];
  DWORD2(v68) = v66[0];
  HIDWORD(v68) = v66[0];
  v37 = v66[0];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)(0);
  lazy protocol witness table accessor for type _NavigationSplitReader.DerivedAttributes and conformance _NavigationSplitReader.DerivedAttributes();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of _NavigationSplitReader.DerivedAttributes(&v68);
  AGGraphCreateOffsetAttribute2();
  v40 = AGCreateWeakAttribute();
  lazy protocol witness table accessor for type NavigationAuthority.SeedInputs and conformance NavigationAuthority.SeedInputs();
  PropertyList.subscript.getter();
  v7 = v68;
  KeyPath = swift_getKeyPath();
  LODWORD(v68) = v66[0];
  *(&v68 + 1) = partial apply for specialized closure #1 in Attribute.subscript.getter;
  *&v69 = KeyPath;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for NavigationSeedHost(0);
  type metadata accessor for Map<NavigationStateHost, NavigationSeedHost>(0);
  lazy protocol witness table accessor for type NavigationStateHost and conformance NavigationStateHost(&lazy protocol witness table cache variable for type Map<NavigationStateHost, NavigationSeedHost> and conformance Map<A, B>, type metadata accessor for Map<NavigationStateHost, NavigationSeedHost>, MEMORY[0x1E698D3A0]);

  Attribute.init<A>(body:value:flags:update:)();

  v9 = AGCreateWeakAttribute();
  *&v68 = v7;
  *(&v68 + 1) = v9;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type EnsureNavigationStateSeeds and conformance EnsureNavigationStateSeeds();
  Attribute.init<A>(body:value:flags:update:)();
  v10 = AGCreateWeakAttribute();
  outlined init with copy of _GraphInputs(&v58, &v68);
  if (one-time initialization token for navigationEventHandlers != -1)
  {
    swift_once();
  }

  *&v66[0] = static CachedEnvironment.ID.navigationEventHandlers;
  swift_beginAccess();
  v11 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v58);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v13 = DWORD2(v59);
  type metadata accessor for GraphHost();
  v14 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  v15 = *(v14 + 64);

  *&v68 = __PAIR64__(OffsetAttribute2, v11);
  *(&v68 + 1) = __PAIR64__(v15, v13);
  *&v69 = 0xFFFFFFFFLL;
  BYTE8(v69) = 0;
  HIDWORD(v69) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UpdateNavigationEventHandlers and conformance UpdateNavigationEventHandlers();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  v16 = AGGraphCreateOffsetAttribute2();
  v17 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  v18 = *(v17 + 64);

  *&v68 = __PAIR64__(v16, v5);
  *(&v68 + 1) = __PAIR64__(v18, v13);
  *&v69 = 0xFFFFFFFFLL;
  BYTE8(v69) = 0;
  HIDWORD(v69) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _NavigationSplitReader.UpdatePreferredCompactColumn and conformance _NavigationSplitReader.UpdatePreferredCompactColumn();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  outlined init with copy of _GraphInputs(&v58, &v68);
  if (one-time initialization token for navigationRequiredCompactColumn != -1)
  {
    swift_once();
  }

  *&v66[0] = static CachedEnvironment.ID.navigationRequiredCompactColumn;
  swift_beginAccess();
  type metadata accessor for Binding<NavigationSplitViewColumn>?(0, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>?, &lazy cache variable for type metadata for Binding<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E69E6720]);
  v19 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v58);
  v20 = AGGraphCreateOffsetAttribute2();
  v21 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  v22 = *(v21 + 64);

  *&v68 = __PAIR64__(v20, v19);
  *(&v68 + 1) = __PAIR64__(v22, v13);
  *&v69 = 0xFFFFFFFFLL;
  BYTE8(v69) = 0;
  HIDWORD(v69) = 0;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _NavigationSplitReader.UpdateRequiredCompactColumn and conformance _NavigationSplitReader.UpdateRequiredCompactColumn();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  *&v68 = __PAIR64__(v45, v34);
  DWORD2(v68) = v44;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters();
  LODWORD(v21) = Attribute.init<A>(body:value:flags:update:)();
  v23 = AGGraphCreateOffsetAttribute2();
  v24 = v21;
  v25 = AGGraphCreateOffsetAttribute2();
  *&v68 = __PAIR64__(v42, v23);
  BYTE8(v68) = 0;
  *(&v68 + 9) = v46;
  BYTE11(v68) = v47;
  HIDWORD(v68) = v37;
  LODWORD(v69) = v35;
  v26 = v10;
  v27 = HIDWORD(v10);
  *(&v69 + 4) = __PAIR64__(v27, v26);
  HIDWORD(v69) = v25;
  v70 = 0uLL;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar);
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, &protocol witness table for NavigationSplitViewStyleConfiguration.Sidebar, type metadata accessor for _NavigationSplitReader.PreparedColumn);
  lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>();
  v36 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v21) = AGGraphCreateOffsetAttribute2();
  v28 = AGGraphCreateOffsetAttribute2();
  *&v68 = __PAIR64__(v42, v21);
  BYTE8(v68) = 1;
  *(&v68 + 9) = v48;
  BYTE11(v68) = v49;
  HIDWORD(v68) = v37;
  *&v69 = __PAIR64__(v26, v38);
  *(&v69 + 1) = __PAIR64__(v28, v27);
  v70 = 0uLL;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Content);
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content>, &type metadata for NavigationSplitViewStyleConfiguration.Content, &protocol witness table for NavigationSplitViewStyleConfiguration.Content, type metadata accessor for _NavigationSplitReader.PreparedColumn);
  lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>();
  v39 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v21) = AGGraphCreateOffsetAttribute2();
  v29 = AGGraphCreateOffsetAttribute2();
  *&v68 = __PAIR64__(v42, v21);
  BYTE8(v68) = 2;
  *(&v68 + 9) = v50;
  BYTE11(v68) = v51;
  HIDWORD(v68) = v37;
  *&v69 = __PAIR64__(v26, v41);
  *(&v69 + 1) = __PAIR64__(v29, v27);
  v70 = 0uLL;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail);
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail>, &type metadata for NavigationSplitViewStyleConfiguration.Detail, &protocol witness table for NavigationSplitViewStyleConfiguration.Detail, type metadata accessor for _NavigationSplitReader.PreparedColumn);
  lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>();
  v30 = Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type AlternateRepresentationKey and conformance AlternateRepresentationKey();
  PropertyList.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for PreparedCompactColumn?, &type metadata for PreparedCompactColumn, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type _NavigationSplitReader.PreparedAlternativeCompactColumn and conformance _NavigationSplitReader.PreparedAlternativeCompactColumn();
  v31 = Attribute.init<A>(body:value:flags:update:)();
  v54 = v60;
  v55 = v61;
  v56 = v62;
  v57 = v63;
  v52 = v58;
  v53 = v59;
  outlined init with copy of _ViewInputs(&v58, &v68);
  AGGraphCreateOffsetAttribute2();
  _GraphInputs.environment.setter();
  _ViewInputs.disableNavigationDestination.setter();
  LOBYTE(v68) = 1;
  lazy protocol witness table accessor for type IsInNavigationV4Context and conformance IsInNavigationV4Context();
  PropertyList.subscript.setter();
  *&v68 = v40;
  lazy protocol witness table accessor for type NavigationAuthority.ViewInputKey and conformance NavigationAuthority.ViewInputKey();
  PropertyList.subscript.setter();
  PreferenceKeys.add(_:)();
  *&v68 = v26;
  PropertyList.subscript.setter();
  v32 = AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey();
  PropertyList.subscript.getter();
  type metadata accessor for ModifiedContent<VariadicViewForest<_NavigationSplitReader.ForestRoot, (ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationStat(0);
  *&v68 = __PAIR64__(v39, v36);
  *(&v68 + 1) = __PAIR64__(v31, v30);
  *&v69 = __PAIR64__(v43, v24);
  *(&v69 + 1) = __PAIR64__(v26, v32);
  *&v70 = __PAIR64__(v45, v27);
  DWORD2(v70) = v44;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type _NavigationSplitReader.Core and conformance _NavigationSplitReader.Core();
  Attribute.init<A>(body:value:flags:update:)();
  v64[2] = v54;
  v64[3] = v55;
  v64[4] = v56;
  v65 = v57;
  v64[0] = v52;
  v64[1] = v53;
  outlined init with copy of _ViewInputs(v64, &v68);
  lazy protocol witness table accessor for type ModifiedContent<VariadicViewForest<_NavigationSplitReader.ForestRoot, (ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModi();
  static View.makeDebuggableView(view:inputs:)();
  v66[2] = v54;
  v66[3] = v55;
  v66[4] = v56;
  v67 = v57;
  v66[0] = v52;
  v66[1] = v53;
  outlined destroy of _ViewInputs(v66);
  v70 = v54;
  v71 = v55;
  v72 = v56;
  v73 = v57;
  v68 = v52;
  v69 = v53;
  return outlined destroy of _ViewInputs(&v68);
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.DerivedAttributes and conformance _NavigationSplitReader.DerivedAttributes()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.DerivedAttributes and conformance _NavigationSplitReader.DerivedAttributes;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.DerivedAttributes and conformance _NavigationSplitReader.DerivedAttributes)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.DerivedAttributes, &unk_1EFFAE348, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.DerivedAttributes and conformance _NavigationSplitReader.DerivedAttributes);
  }

  return result;
}

uint64_t initializeWithCopy for _NavigationSplitReader.DerivedAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = a1 + 16;
  if (*(a2 + 24) == 1)
  {
    *v3 = *(a2 + 16);
    *(v3 + 16) = *(a2 + 32);
  }

  else
  {
    swift_weakCopyInit();
    v5 = *(a2 + 24);
    v6 = *(a2 + 32);
    *(a1 + 24) = v5;
    *(a1 + 32) = v6;
  }

  return a1;
}

double destroy for _NavigationSplitReader.DerivedAttributes(uint64_t a1)
{
  if (*(a1 + 24) != 1)
  {
    swift_weakDestroy();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.UpdatePreferredCompactColumn and conformance _NavigationSplitReader.UpdatePreferredCompactColumn()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.UpdatePreferredCompactColumn and conformance _NavigationSplitReader.UpdatePreferredCompactColumn;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.UpdatePreferredCompactColumn and conformance _NavigationSplitReader.UpdatePreferredCompactColumn)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.UpdatePreferredCompactColumn, &unk_1EFFAE2B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.UpdatePreferredCompactColumn and conformance _NavigationSplitReader.UpdatePreferredCompactColumn);
  }

  return result;
}

void type metadata accessor for Binding<NavigationSplitViewColumn>?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, a3, a4, MEMORY[0x1E6981948]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.CustomParameters, &unk_1EFFAE1A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.CustomParameters, &unk_1EFFAE1A8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, a3, a4, &type metadata for InjectKeyModifier, MEMORY[0x1E697E830]);
    type metadata accessor for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>(255);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, &protocol witness table for NavigationSplitViewStyleConfiguration.Sidebar, type metadata accessor for _NavigationSplitReader.PreparedColumn);
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.PreparedColumn<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, &protocol witness table for NavigationSplitViewStyleConfiguration.Sidebar, type metadata accessor for _NavigationSplitReader.PreparedColumn);
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.PreparedColumn<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>);
  }

  return result;
}

uint64_t initializeWithCopy for _NavigationSplitReader.PreparedColumn(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 28) = *(a2 + 28);
  v3 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v3;

  return a1;
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content>, &type metadata for NavigationSplitViewStyleConfiguration.Content, &protocol witness table for NavigationSplitViewStyleConfiguration.Content, type metadata accessor for _NavigationSplitReader.PreparedColumn);
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.PreparedColumn<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content>, &type metadata for NavigationSplitViewStyleConfiguration.Content, &protocol witness table for NavigationSplitViewStyleConfiguration.Content, type metadata accessor for _NavigationSplitReader.PreparedColumn);
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.PreparedColumn<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail>, &type metadata for NavigationSplitViewStyleConfiguration.Detail, &protocol witness table for NavigationSplitViewStyleConfiguration.Detail, type metadata accessor for _NavigationSplitReader.PreparedColumn);
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.PreparedColumn<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail>, &type metadata for NavigationSplitViewStyleConfiguration.Detail, &protocol witness table for NavigationSplitViewStyleConfiguration.Detail, type metadata accessor for _NavigationSplitReader.PreparedColumn);
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.PreparedColumn<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AlternateRepresentationKey and conformance AlternateRepresentationKey()
{
  result = lazy protocol witness table cache variable for type AlternateRepresentationKey and conformance AlternateRepresentationKey;
  if (!lazy protocol witness table cache variable for type AlternateRepresentationKey and conformance AlternateRepresentationKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlternateRepresentationKey, &type metadata for AlternateRepresentationKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AlternateRepresentationKey and conformance AlternateRepresentationKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AlternateRepresentationKey and conformance AlternateRepresentationKey;
  if (!lazy protocol witness table cache variable for type AlternateRepresentationKey and conformance AlternateRepresentationKey)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlternateRepresentationKey, &type metadata for AlternateRepresentationKey, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AlternateRepresentationKey and conformance AlternateRepresentationKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value()
{
  result = lazy protocol witness table cache variable for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value;
  if (!lazy protocol witness table cache variable for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlternateRepresentationPlacement.Value, &type metadata for AlternateRepresentationPlacement.Value, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value;
  if (!lazy protocol witness table cache variable for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlternateRepresentationPlacement.Value, &type metadata for AlternateRepresentationPlacement.Value, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.PreparedAlternativeCompactColumn and conformance _NavigationSplitReader.PreparedAlternativeCompactColumn()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedAlternativeCompactColumn and conformance _NavigationSplitReader.PreparedAlternativeCompactColumn;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedAlternativeCompactColumn and conformance _NavigationSplitReader.PreparedAlternativeCompactColumn)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.PreparedAlternativeCompactColumn, &unk_1EFFAE0D0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.PreparedAlternativeCompactColumn and conformance _NavigationSplitReader.PreparedAlternativeCompactColumn);
  }

  return result;
}

void type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>))
  {
    _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar);
    _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Content);
    _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>));
    }
  }
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.ForestRoot and conformance _NavigationSplitReader.ForestRoot()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.ForestRoot and conformance _NavigationSplitReader.ForestRoot;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.ForestRoot and conformance _NavigationSplitReader.ForestRoot)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.ForestRoot, &type metadata for _NavigationSplitReader.ForestRoot, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.ForestRoot and conformance _NavigationSplitReader.ForestRoot);
  }

  return result;
}

uint64_t type metadata completion function for Tuple(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.Core and conformance _NavigationSplitReader.Core()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.Core and conformance _NavigationSplitReader.Core;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.Core and conformance _NavigationSplitReader.Core)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.Core, &type metadata for _NavigationSplitReader.Core, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.Core and conformance _NavigationSplitReader.Core);
  }

  return result;
}

uint64_t static VariadicViewForest._makeView(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 48);
  v9 = *(a2 + 16);
  v36 = *(a2 + 32);
  v37 = v8;
  v10 = *(a2 + 48);
  v38 = *(a2 + 64);
  v11 = *(a2 + 16);
  v35[0] = *a2;
  v35[1] = v11;
  v31 = v36;
  v32 = v10;
  v33 = *(a2 + 64);
  v12 = *a1;
  v39 = *(a2 + 80);
  v34 = *(a2 + 80);
  v29 = v35[0];
  v30 = v9;
  v13 = *(a5 + 24);
  outlined init with copy of _ViewInputs(v35, v44);
  v13(v44, a3, a5);
  PropertyList.subscript.setter();
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v28 = v12;
  type metadata accessor for VariadicViewForest(255, a3, a4, a5);
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v40[2] = v31;
  v40[3] = v32;
  v40[4] = v33;
  v41 = v34;
  v40[0] = v29;
  v40[1] = v30;
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v26 = v34;
  v21 = v29;
  v22 = v30;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v17 = v12;
  v14 = *(a5 + 32);
  outlined init with copy of _ViewInputs(v40, v44);
  v14(v27, &v21, partial apply for closure #2 in static VariadicViewForest._makeView(view:inputs:), v16, a3, a5);
  v42[2] = v23;
  v42[3] = v24;
  v42[4] = v25;
  v43 = v26;
  v42[0] = v21;
  v42[1] = v22;
  outlined destroy of _ViewInputs(v42);
  v44[2] = v31;
  v44[3] = v32;
  v44[4] = v33;
  v45 = v34;
  v44[0] = v29;
  v44[1] = v30;
  return outlined destroy of _ViewInputs(v44);
}

uint64_t closure #1 in static VariadicViewForest._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11[2] = type metadata accessor for VariadicViewForest(0, a2, a3, a4);
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a5, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

uint64_t specialized static VariadicViewForestRoot._makeView(root:inputs:body:)@<X0>(__int128 *a2@<X1>, uint64_t (*a3)(__int128 *)@<X2>, void *a4@<X8>)
{
  v5 = a2[3];
  v48 = a2[2];
  v49 = v5;
  v50 = a2[4];
  v51 = *(a2 + 20);
  v6 = a2[1];
  v46 = *a2;
  v47 = v6;
  v7 = a3(&v46);
  v8 = *(v7 + 16);
  if (v8)
  {
    *&v27 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v27;
    v10 = a2[1];
    v52 = *a2;
    v53 = v10;
    v54 = a2[2];
    v11 = v7 + 32;
    do
    {
      outlined init with copy of _ViewListOutputs(v11, &v39);
      v33 = v52;
      v34 = v53;
      v35 = v54;
      outlined init with copy of _GraphInputs(&v52, &v46);
      _ViewListInputs.init(_:)();
      v12 = _ViewListOutputs.makeAttribute(inputs:)();
      outlined destroy of _ViewListInputs(&v46);
      outlined destroy of _ViewListOutputs(&v39);
      *&v27 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v9 = v27;
      }

      *(v9 + 16) = v14 + 1;
      *(v9 + 4 * v14 + 32) = v12;
      v11 += 72;
      --v8;
    }

    while (v8);
  }

  else
  {
  }

  static DynamicPropertyCache.fields(of:)();
  v15 = v46;
  v16 = v47;
  v17 = DWORD1(v47);
  v18 = a2[3];
  v48 = a2[2];
  v49 = v18;
  v50 = a2[4];
  v51 = *(a2 + 20);
  v19 = a2[1];
  v46 = *a2;
  v47 = v19;
  outlined init with copy of _ViewInputs(a2, &v39);
  if ((AGTypeID.isValueType.getter() & 1) == 0)
  {
    goto LABEL_14;
  }

  v20 = AGSubgraphGetCurrent();
  if (!v20)
  {
    __break(1u);
LABEL_14:
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x18D00C9B0](0xD00000000000003DLL, 0x800000018CD42B50);
    MEMORY[0x18D00C9B0](0x6F52747365726F46, 0xEA0000000000746FLL);
    MEMORY[0x18D00C9B0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v21 = v20;
  v39 = v15;
  LOBYTE(v40) = v16;
  DWORD1(v40) = v17;
  type metadata accessor for ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot>(0);
  lazy protocol witness table accessor for type ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot> and conformance ForestRootBodyAccessor<A>();
  BodyAccessor.makeBody(container:inputs:fields:)();

  v35 = v48;
  v36 = v49;
  v37 = v50;
  v33 = v46;
  v34 = v47;
  v29 = v48;
  v30 = v49;
  v31 = v50;
  v38 = v51;
  v22 = v45;
  v32 = v51;
  v27 = v46;
  v28 = v47;
  outlined init with copy of _ViewInputs(&v33, &v39);
  lazy protocol witness table accessor for type NavigationSplitCore and conformance NavigationSplitCore();
  static View.makeDebuggableView(view:inputs:)();
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v39 = v27;
  v40 = v28;
  outlined destroy of _ViewInputs(&v39);
  if ((v22 & 1) == 0)
  {
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v29 = v48;
  v30 = v49;
  v31 = v50;
  v32 = v51;
  v27 = v46;
  v28 = v47;
  outlined destroy of _ViewInputs(&v27);
  result = outlined consume of DynamicPropertyCache.Fields.Layout(v15, *(&v15 + 1), v16);
  *a4 = v25;
  a4[1] = v26;
  return result;
}

uint64_t closure #2 in static VariadicViewForest._makeView(view:inputs:)(_OWORD *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[1];
  v16[0] = *a1;
  v16[1] = v9;
  v11 = *a1;
  v10 = a1[1];
  v16[2] = a1[2];
  v14[0] = v11;
  v14[1] = v10;
  v14[2] = a1[2];
  outlined init with copy of _GraphInputs(v16, v15);
  PropertyList.subscript.getter();
  _ViewListInputs.init(_:options:)();
  LODWORD(v14[0]) = a2;
  v12 = static VariadicViewForest.ListOutputsTreeVisitor.accumulateOutputs(view:inputs:)(v14, v15, a3, a4, a5);
  outlined destroy of _ViewListInputs(v15);
  return v12;
}

uint64_t protocol witness for static VariadicViewForestRoot._makeView(root:inputs:body:) in conformance _NavigationSplitReader.ForestRoot@<X0>(uint64_t a2@<X1>, uint64_t (*a3)(__int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static VariadicViewForestRoot._makeView(root:inputs:body:)(v7, a3, a4);
}

uint64_t static VariadicViewForest.ListOutputsTreeVisitor.accumulateOutputs(view:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5(a4, &v22);
  v9 = v22;
  type metadata accessor for VariadicViewForest(255, a3, a4, a5);
  type metadata accessor for _GraphValue();
  type metadata accessor for TupleView();
  _GraphValue.subscript.getter();
  type metadata accessor for _GraphValue();
  v10 = _GraphValue.value.getter();
  outlined init with copy of _ViewListInputs(a2, v21);
  LODWORD(v22) = v10;
  outlined init with take of _ViewListInputs(v21, &v23);
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = (v9 + 48);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v12 += 3;
      v24 = AGTupleElementOffset();
      v15 = type metadata accessor for VariadicViewForest.ListOutputsTreeVisitor(0, a3, a4, a5);
      WitnessTable = swift_getWitnessTable(protocol conformance descriptor for VariadicViewForest<A, B>.ListOutputsTreeVisitor, v15);
      (*(WitnessTable + 8))(v13, v13, v14, v15, WitnessTable);
      --v11;
    }

    while (v11);
  }

  v17 = v25;
  v18 = type metadata accessor for VariadicViewForest.ListOutputsTreeVisitor(0, a3, a4, a5);
  v19 = *(*(v18 - 8) + 8);

  v19(&v22, v18);
  return v17;
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA04ViewD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = static ViewDescriptor.typeCache.getter();
  if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {

    TupleTypeDescription.init(_:)();
    v7 = v14[0];

    v9 = static ViewDescriptor.typeCache.modify();
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v11;
    *v11 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a1, isUniquelyReferenced_nonNull_native);
    *v11 = v13;
    result = v9(v14, 0);
  }

  *a2 = v7;
  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ViewDescriptor>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ViewDescriptor>>)
  {
    type metadata accessor for TransformBox<TabSidebarCustomizationTransform>(255, &lazy cache variable for type metadata for TupleTypeDescription<ViewDescriptor>, MEMORY[0x1E697E580], MEMORY[0x1E697E578], MEMORY[0x1E697FAA8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ViewDescriptor>>);
    }
  }
}

void type metadata accessor for TransformBox<TabSidebarCustomizationTransform>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t closure #1 in static VariadicViewForest.ListOutputsTreeVisitor.accumulateOutputs(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for VariadicViewForest(0, a2, a3, a4);
  v6 = *(v5 + 44);
  v10[2] = v5;
  v11 = type metadata accessor for TupleView();
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, partial apply for closure #1 in static PointerOffset.of(_:), v10, v11, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v12;
}

__n128 VariadicViewForest.ListOutputsTreeVisitor.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  static View.makeDebuggableViewList(view:inputs:)();
  v6 = *(v4 + 152);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[72 * v8];
  *(v9 + 2) = v11;
  result = v12;
  v9[96] = v15;
  *(v9 + 4) = v13;
  *(v9 + 5) = v14;
  *(v9 + 3) = v12;
  *(v5 + 152) = v6;
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance InjectKeyModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v8);
  v7 = v4;
  v5 = specialized static InjectKeyModifier._makeInputs(modifier:inputs:)(&v7);
  a3(v5, v8);
  return outlined destroy of _ViewListInputs(v8);
}

uint64_t specialized static InjectKeyModifier._makeInputs(modifier:inputs:)(unsigned int *a1)
{
  AGGraphCreateOffsetAttribute2();
  AGGraphCreateOffsetAttribute2();
  AGCreateWeakAttribute();
  lazy protocol witness table accessor for type NavigationAuthority.StackKeyViewInputKey and conformance NavigationAuthority.StackKeyViewInputKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type NavigationAuthority.DepthKey and conformance NavigationAuthority.DepthKey();
  lazy protocol witness table accessor for type Attribute<Int> and conformance Attribute<A>();
  return _GraphInputs.subscript.setter();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance NavigationSplitViewStyleConfiguration.Sidebar(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Sidebar>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, &lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Sidebar> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

void type metadata accessor for StyleContextWriter<ContentListStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>)
  {
    type metadata accessor for UserInterfaceSizeClass?();
    v1 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<UserInterfaceSizeClass?>);
    }
  }
}

void type metadata accessor for UserInterfaceSizeClass?()
{
  if (!lazy cache variable for type metadata for UserInterfaceSizeClass?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UserInterfaceSizeClass?);
    }
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance NavigationSplitViewStyleConfiguration.Content(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Content>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content, &type metadata for NavigationSplitViewStyleConfiguration.Content, &lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Content> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance NavigationSplitViewStyleConfiguration.Detail(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<NavigationSplitViewStyleConfiguration.Detail>, lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail, &type metadata for NavigationSplitViewStyleConfiguration.Detail, &lazy protocol witness table cache variable for type SourceInput<NavigationSplitViewStyleConfiguration.Detail> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

void type metadata accessor for ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot>)
  {
    v2 = lazy protocol witness table accessor for type _NavigationSplitReader.ForestRoot and conformance _NavigationSplitReader.ForestRoot();
    v4 = type metadata accessor for ForestRootBodyAccessor(a1, &type metadata for _NavigationSplitReader.ForestRoot, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot>);
    }
  }
}

uint64_t *sub_18BE63184(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  v4 = v3;
  return a1;
}

void type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?(255);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?();
    v1 = type metadata accessor for _BackgroundPreferenceModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _BackgroundPreferenceModifier<ContainerBackgroundKeys.NavigationSplitViewKey, ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?>);
    }
  }
}

void type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?)
  {
    type metadata accessor for ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, MEMORY[0x1E6981910], MEMORY[0x1E6980A38], MEMORY[0x1E697E830]);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>?(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA015NavigationSplitE0V_Tt2B5@<X0>(uint64_t *a2@<X1>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration();
  PropertyList.subscript.getter();
  if (v22 == 1)
  {
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(119);
    MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD4E590);
    MEMORY[0x18D00C9B0](0xD000000000000075, 0x800000018CD4E1C0);
    MEMORY[0x18D009810](0, 0xE000000000000000);

    _ViewOutputs.init()();
    *&v22 = a2[6];
    DWORD2(v22) = *(a2 + 14);
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (result)
    {
      _DisplayList_Identity.init()();
      v6 = v22;
      v7 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v7;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v8 = *(a2 + 1);
      v22 = *a2;
      v23 = v8;
      LODWORD(v20) = v6;
      _ViewInputs.pushIdentity(_:)();
      v9 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v9;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v10 = *(a2 + 1);
      v22 = *a2;
      v23 = v10;
      v11 = _ViewInputs.animatedPosition()();
      v12 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v12;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v13 = *(a2 + 1);
      v22 = *a2;
      v23 = v13;
      swift_beginAccess();
      v14 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v15 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v15;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v23 = *(a2 + 1);
      *&v22 = __PAIR64__(v11, v6);
      DWORD2(v22) = v14;
      HIDWORD(v22) = _ViewInputs.containerPosition.getter();
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UnsupportedDisplayList and conformance UnsupportedDisplayList();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v22) = 0;
      result = PreferencesOutputs.subscript.setter();
    }

    *a3 = v19[0];
    a3[1] = v19[1];
  }

  else
  {
    static Semantics.v4.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
    {
      _StringGuts.grow(_:)(54);
      MEMORY[0x18D00C9B0](0xD000000000000034, 0x800000018CD4E180);
      MEMORY[0x18D00C9B0](0xD00000000000001CLL, 0x800000018CD4E590);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(0, &lazy cache variable for type metadata for PlatformViewControllerRepresentableAdaptor<NavigationSplitRepresentable>, &type metadata for NavigationSplitRepresentable, &protocol witness table for NavigationSplitRepresentable, type metadata accessor for PlatformViewControllerRepresentableAdaptor);
      LODWORD(v20) = Attribute.unsafeBitCast<A>(to:)();
      v16 = *(a2 + 3);
      v24 = *(a2 + 2);
      v25 = v16;
      v26 = *(a2 + 4);
      v27 = *(a2 + 20);
      v17 = *(a2 + 1);
      v22 = *a2;
      v23 = v17;
      v18 = static View.makeDebuggableView(view:inputs:)();
      *&v22 = a2[6];
      DWORD2(v22) = *(a2 + 14);
      v20 = a2[6];
      v21 = *(a2 + 14);
      MEMORY[0x1EEE9AC00](v18);
      outlined init with copy of PreferencesInputs(&v22, v19);
      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for MenuStyleConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>;
  if (!lazy protocol witness table cache variable for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>)
  {
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    result = swift_getWitnessTable(MEMORY[0x1E69801E8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance UISplitViewControllerProxyKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static UISplitViewControllerProxyKey.defaultValue;
  *a1 = static UISplitViewControllerProxyKey.defaultValue;
  return result;
}

unint64_t lazy protocol witness table accessor for type _NavigationSplitReader.UpdateRequiredCompactColumn and conformance _NavigationSplitReader.UpdateRequiredCompactColumn()
{
  result = lazy protocol witness table cache variable for type _NavigationSplitReader.UpdateRequiredCompactColumn and conformance _NavigationSplitReader.UpdateRequiredCompactColumn;
  if (!lazy protocol witness table cache variable for type _NavigationSplitReader.UpdateRequiredCompactColumn and conformance _NavigationSplitReader.UpdateRequiredCompactColumn)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _NavigationSplitReader.UpdateRequiredCompactColumn, &unk_1EFFAE228, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _NavigationSplitReader.UpdateRequiredCompactColumn and conformance _NavigationSplitReader.UpdateRequiredCompactColumn);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewStyleConfiguration.Detail, &type metadata for NavigationSplitViewStyleConfiguration.Detail, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewStyleConfiguration.Detail, &type metadata for NavigationSplitViewStyleConfiguration.Detail, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key>, &type metadata for CompositeNavigationSplitViewVisibility.Key, &protocol witness table for CompositeNavigationSplitViewVisibility.Key, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable(MEMORY[0x1E6980758], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<CompositeNavigationSplitViewVisibility.Key> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Binding<PresentationMode>>(255);
    v1 = type metadata accessor for StaticIf();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>);
    }
  }
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance AlternateRepresentationKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static AlternateRepresentationKey.defaultValue;
  *a1 = static AlternateRepresentationKey.defaultValue;
  return result;
}

void type metadata accessor for Attribute<EnvironmentValues>()
{
  if (!lazy cache variable for type metadata for Attribute<EnvironmentValues>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>);
    }
  }
}

void type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>(255, &lazy cache variable for type metadata for StyleContextWriter<ContentListStyleContext>, MEMORY[0x1E6980190], MEMORY[0x1E6980188], MEMORY[0x1E697F4C8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, StyleContextWriter<ContentListStyleContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, SearchNavigationSplitViewColumnModifier>(255, &lazy cache variable for type metadata for StyleContextWriter<ContentListStyleContext>, MEMORY[0x1E6980190], MEMORY[0x1E6980188], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F4D0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t destroy for VariadicViewForest.ListOutputsTreeVisitor(void *a1)
{

  swift_weakDestroy();
}

void type metadata accessor for Attribute<ViewList>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Attribute<ViewList>)
  {
    type metadata accessor for ViewList();
    v1 = type metadata accessor for Attribute();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Attribute<ViewList>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot> and conformance ForestRootBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot> and conformance ForestRootBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot> and conformance ForestRootBodyAccessor<A>)
  {
    type metadata accessor for ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot>(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ForestRootBodyAccessor<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ForestRootBodyAccessor<_NavigationSplitReader.ForestRoot> and conformance ForestRootBodyAccessor<A>);
  }

  return result;
}

void destroy for ForestRootBodyAccessor(void *a1)
{

  v2 = a1[1];
}

unint64_t lazy protocol witness table accessor for type NavigationSplitCore and conformance NavigationSplitCore()
{
  result = lazy protocol witness table cache variable for type NavigationSplitCore and conformance NavigationSplitCore;
  if (!lazy protocol witness table cache variable for type NavigationSplitCore and conformance NavigationSplitCore)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitCore, &type metadata for NavigationSplitCore, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitCore and conformance NavigationSplitCore);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for HandGestureShortcutInteractiveControl.BorderShape.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandGestureShortcutInteractiveControl.BorderShape.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t static ContainerBackgroundRendererModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a2[3];
  v49 = a2[2];
  v50 = v11;
  v51 = a2[4];
  v52 = *(a2 + 20);
  v12 = a2[1];
  v47 = *a2;
  v48 = v12;
  v33 = a5;
  v34 = a6;
  LODWORD(v55[0]) = v10;
  type metadata accessor for ContainerBackgroundRendererModifier(255, a5, a6, a4);
  type metadata accessor for _GraphValue();
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>(0, &lazy cache variable for type metadata for WritableKeyPath<EnvironmentValues, Bool>, MEMORY[0x1E697F230], MEMORY[0x1E69E6370], MEMORY[0x1E69E6CE0]);
  _GraphValue.subscript.getter();
  v13 = v53[0];
  v43 = v49;
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v41 = v47;
  v42 = v48;
  outlined init with copy of _ViewInputs(&v47, v55);
  PreferencesInputs.add<A>(_:)();
  v14 = v48;
  swift_beginAccess();
  v15 = *MEMORY[0x1E698D3F8];
  LODWORD(v55[0]) = *(v14 + 16);
  *(v55 + 4) = __PAIR64__(v15, v13);
  v31 = type metadata accessor for ContainerBackgroundRendererModifier.ChildEnvironment(0, a5, a6, v16);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ContainerBackgroundRendererModifier<A>.ChildEnvironment, v31);
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v55, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_0, &v30, v31, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  _GraphInputs.environment.setter();
  v53[2] = v43;
  v53[3] = v44;
  v53[4] = v45;
  v54 = v46;
  v53[0] = v41;
  v53[1] = v42;
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v39 = v45;
  v40 = v46;
  v35 = v41;
  v19 = outlined init with copy of _ViewInputs(v53, v55);
  a3(&v27, v19, &v35);
  v55[2] = v37;
  v55[3] = v38;
  v55[4] = v39;
  v56 = v40;
  v55[0] = v35;
  v55[1] = v36;
  outlined destroy of _ViewInputs(v55);
  v20 = v27;
  v22 = v28;
  v21 = v29;
  v23 = _ViewOutputs.subscript.getter();
  if ((v23 & 0x100000000) == 0)
  {
    MEMORY[0x1EEE9AC00](v23);
    MEMORY[0x1EEE9AC00](v24);
    AGGraphMutateAttribute();
  }

  v38 = v44;
  v39 = v45;
  v40 = v46;
  v35 = v41;
  v36 = v42;
  v37 = v43;
  result = outlined destroy of _ViewInputs(&v35);
  *a7 = v20;
  *(a7 + 8) = v22;
  *(a7 + 12) = v21;
  return result;
}

uint64_t closure #1 in static ContainerBackgroundRendererModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = type metadata accessor for ContainerBackgroundRendererModifier(0, a2, a3, a4);
  type metadata accessor for ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>(0, &lazy cache variable for type metadata for WritableKeyPath<EnvironmentValues, Bool>, MEMORY[0x1E697F230], MEMORY[0x1E69E6370], MEMORY[0x1E69E6CE0]);
  v6 = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_11, v10, v6, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance NavigationSplitRepresentable@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI29UIViewControllerRepresentablePAAE9_makeView4view6inputsAA01_G7OutputsVAA11_GraphValueVyxG_AA01_G6InputsVtFZAA015NavigationSplitE0V_Tt2B5(v6, a3);
}

uint64_t getEnumTagSinglePayload for MenuStyleConfiguration(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t View.navigationBarTitleDisplayMode(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = 8 * *a1;
  v6 = 0u;
  v7 = 0u;
  *v8 = 1;
  v8[8] = 0x10300u >> v4;
  *&v8[16] = 0;
  v8[24] = 3;
  View.navigationTitlePreferenceTransform(adding:)(&v6, a2, a3, a4);
  v9[0] = v6;
  v9[1] = v7;
  v10[0] = *v8;
  *(v10 + 9) = *&v8[9];
  return outlined destroy of NavigationTitleStorage(v9);
}

void type metadata accessor for Stack<AnySource>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized static OptionalViewAlias._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for SourceInput(0, a4, a6, a4);
  swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v8);
  lazy protocol witness table accessor for type Stack<AnySource> and conformance <A> Stack<A>();
  PropertyList.subscript.getter();
  if (v15 && (v10 = *(v15 + 40), v11 = *(v15 + 44), , (v11 & 1) == 0))
  {
    v13 = type metadata accessor for OptionalViewAlias.OptionalSourceBox(0, a4, a6, v9);
    swift_getWitnessTable(protocol conformance descriptor for OptionalViewAlias<A>.OptionalSourceBox, v13, v10);
  }

  else
  {
    v12 = type metadata accessor for OptionalViewAlias.StaticSourceBox(0, a4, a6, v9);
    swift_getWitnessTable(protocol conformance descriptor for OptionalViewAlias<A>.StaticSourceBox, v12);
  }

  return _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
}

unint64_t lazy protocol witness table accessor for type Stack<AnySource> and conformance <A> Stack<A>()
{
  result = lazy protocol witness table cache variable for type Stack<AnySource> and conformance <A> Stack<A>;
  if (!lazy protocol witness table cache variable for type Stack<AnySource> and conformance <A> Stack<A>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for Stack<AnySource>(255, &lazy cache variable for type metadata for Stack<AnySource>, &unk_1F0005790, MEMORY[0x1E6981768]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type AnySource and conformance AnySource();
    result = swift_getWitnessTable(MEMORY[0x1E6981770], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Stack<AnySource> and conformance <A> Stack<A>);
  }

  return result;
}

void type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for InterfaceIdiomPredicate();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for _ContiguousArrayStorage<AccessibilityNodeAttachment>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t type metadata accessor for ViewList()
{
  result = lazy cache variable for type metadata for ViewList;
  if (!lazy cache variable for type metadata for ViewList)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ViewList);
  }

  return result;
}

void type metadata accessor for Binding<TextSelection?>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_3(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVyAA13TextSelectionVSgGSgMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for TextField(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding<TextSelection?>?(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void type metadata completion function for SearchModifier(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding<AttributedString>(319);
    if (v2 <= 0x3F)
    {
      _s7SwiftUI7BindingVy10Foundation16AttributedStringVGMaTm_0(319, &lazy cache variable for type metadata for State<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

void type metadata accessor for Binding<AttributedString>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void _s7SwiftUI7BindingVy10Foundation16AttributedStringVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for SearchModifier<TextField<EmptyView>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for SearchModifier<TextField<EmptyView>>)
  {
    type metadata accessor for TextField<EmptyView>(255, a2, a3, a4);
    v6 = v5;
    v7 = lazy protocol witness table accessor for type TextField<EmptyView> and conformance TextField<A>(&lazy protocol witness table cache variable for type TextField<EmptyView> and conformance TextField<A>, type metadata accessor for TextField<EmptyView>, protocol conformance descriptor for TextField<A>);
    v9 = type metadata accessor for SearchModifier(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for SearchModifier<TextField<EmptyView>>);
    }
  }
}

void type metadata accessor for TextField<EmptyView>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for TextField<EmptyView>)
  {
    v4 = type metadata accessor for TextField(0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TextField<EmptyView>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TextField<EmptyView> and conformance TextField<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SearchModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SearchModifier<A>, a5);

  return MEMORY[0x1EEDE07E0](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static SearchEnvironmentTransformModifier._makeInputs(modifier:inputs:)(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  LODWORD(v21[0]) = *a1;
  type metadata accessor for SearchEnvironmentTransformModifier(255, a3, a4, a4);
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static SearchEnvironmentTransformModifier._makeInputs(modifier:inputs:)(1, a3, a4, v7);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v9 = *(a2 + 16);
  swift_beginAccess();
  v10 = *(v9 + 16);
  LODWORD(v19[0]) = 0;
  BYTE4(v19[0]) = 1;
  v11 = SearchEnvironmentTransformModifier.UpdateEnvironment.init(transform:environment:version:baseVersion:)(OffsetAttribute2, v10, 0, v19, v21);
  v19[0] = v21[0];
  v19[1] = v21[1];
  v19[2] = v21[2];
  v20 = v22;
  MEMORY[0x1EEE9AC00](v11);
  updated = type metadata accessor for SearchEnvironmentTransformModifier.UpdateEnvironment(0, a3, a4, v12);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SearchEnvironmentTransformModifier<A>.UpdateEnvironment, updated);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_3(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_10, &v16, updated, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v14);

  return _GraphInputs.environment.setter();
}

uint64_t closure #1 in static SearchEnvironmentTransformModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for SearchEnvironmentTransformModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

unint64_t lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions()
{
  result = lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions;
  if (!lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchHasSuggestions, &type metadata for SearchHasSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions;
  if (!lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchHasSuggestions, &type metadata for SearchHasSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions;
  if (!lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchHasSuggestions, &type metadata for SearchHasSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions;
  if (!lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchHasSuggestions, &type metadata for SearchHasSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions;
  if (!lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SearchHasSuggestions, &type metadata for SearchHasSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SearchHasSuggestions and conformance SearchHasSuggestions);
  }

  return result;
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t result, char a2, uint64_t a3, unint64_t a4, void (*a5)(uint64_t, void))
{
  if ((a2 & 1) == 0)
  {
    v8 = result;

    v9 = static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v10, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315138;
      *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v13);
      _os_log_impl(&dword_18BD4A000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x18D0110E0](v12, -1, -1);
      MEMORY[0x18D0110E0](v11, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    a5(v8, 0);

    return v14;
  }

  return result;
}

double outlined consume of ContainerBackgroundValue?(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 != 1)
  {
    outlined consume of ContainerBackgroundValue.Content(a1, a2);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for EnvironmentValues.SearchSuggestions(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.SearchSuggestions, &type metadata for EnvironmentValues.SearchSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EnvironmentValues.SearchSuggestions, &type metadata for EnvironmentValues.SearchSuggestions, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityLargeContentViewBehaviorModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t outlined destroy of KeyPress.Handler.Subject(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double EnvironmentValues._set<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v9 + 16))(&v12 - v8, a1, v7);
  v10 = type metadata accessor for EnvironmentPropertyKey();

  swift_getWitnessTable(MEMORY[0x1E697FE40], v10);
  PropertyList.subscript.setter();
  if (*(v4 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t initializeWithCopy for ToolbarPlacement.Storage(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  LODWORD(v3) = -1;
  if (v2 < 0xFFFFFFFF)
  {
    v3 = *(a2 + 24);
  }

  v4 = v3 + 1;
  v5 = v2 != 6 && v4 > 7;
  if (v5 || v4)
  {
    v6 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v6;
    *(result + 32) = *(a2 + 32);
  }

  else
  {
    v7 = *(a2 + 32);
    *(result + 24) = v2;
    *(result + 32) = v7;
    v8 = result;
    (**(v2 - 8))();
    return v8;
  }

  return result;
}

void *destroy for ToolbarPlacement(void *a1)
{
  if (a1[3] >= 8uLL)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t type metadata completion function for SceneStorage(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double UnsafeObservableObjectFallbackDelegateBox.addDelegate(to:)(uint64_t a1)
{
  static ObservableObject.environmentStore.getter();
  swift_unknownObjectRetain();
  swift_setAtWritableKeyPath();

  return result;
}

double ObservableObjectFallbackDelegateBox.addDelegate(to:)(uint64_t a1)
{
  static ObservableObject.environmentStore.getter();
  v2 = *(v1 + 16);
  swift_setAtWritableKeyPath();

  return result;
}

uint64_t static RawRepresentableTransform.readValue(from:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a3;
  v25 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  (*(a7 + 8))(v38, a1, a2, v24, a5, a7, v17);
  v20 = MEMORY[0x1E69E7CA0];
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v21 = swift_dynamicCast();
  (*(*(AssociatedTypeWitness - 8) + 56))(v19, v21 ^ 1u, 1, AssociatedTypeWitness);
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = partial apply for closure #1 in static RawRepresentableTransform.readValue(from:key:);
  v32 = &v33;
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed A.RawRepresentable.RawValue) -> (@out A?), v26, MEMORY[0x1E69E73E0], v20 + 8, v22, v25);
  return (*(v16 + 8))(v19, v15);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AlertModifier<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AlertModifier<A, B>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t type metadata completion function for ItemSheetPresentationModifier(uint64_t a1)
{
  type metadata accessor for Optional();
  result = type metadata accessor for Binding();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18BE66808(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v8 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v8;
  v11 = v1;
  v12 = v2;
  v3 = type metadata accessor for ItemSheetPresentationModifier(255, v10);
  swift_getWitnessTable(protocol conformance descriptor for ItemSheetPresentationModifier<A, B, C>, v3);
  v4 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for CoreSheetPresentationModifier(255, v8, v2, v5);
  v6 = type metadata accessor for ModifiedContent();
  v9[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v4);
  v9[1] = &protocol witness table for CoreSheetPresentationModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v9);
}

uint64_t type metadata completion function for FocusedValueModifier(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized static SceneStorage._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  Attribute.init<A>(body:value:flags:update:)();
  if (one-time initialization token for sceneStorageValues != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorageValues?, v6, type metadata accessor for SceneStorageValues, MEMORY[0x1E69E6720]);
  v7 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  if (one-time initialization token for sceneStorageDomain != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  type metadata accessor for PropertyListTransform<Bool>(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v8 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  v15[0] = v7;
  v15[1] = v8;
  v16 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = AGCreateWeakAttribute();
  v11 = type metadata accessor for SceneStorage.Box(0, a4, v9, v10);
  swift_getWitnessTable(protocol conformance descriptor for SceneStorage<A>.Box, v11);
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
  type metadata accessor for SceneStorage(0, a4, v12, v13);
  static DynamicProperty.addTreeValue<A, B>(_:as:at:in:flags:)();
  return (*(*(v11 - 8) + 8))(v15, v11);
}

void type metadata accessor for PropertyListTransform<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t initializeWithCopy for SceneStorage.Box(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;

  return a1;
}

double destroy for SceneStorage.Box(void *a1)
{

  return result;
}

uint64_t SceneStorage<A>.init(wrappedValue:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v18, v15);
  v19 = type metadata accessor for JSONCodableTransform(0, a4, a5, a6);
  SceneStorage.init<A>(key:transform:defaultValue:)(a2, a3, v20, v17, a4, v19, &protocol witness table for JSONCodableTransform<A>, a7);
  return (*(v14 + 8))(a1, a4);
}

uint64_t type metadata accessor for JSONCodableTransform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for JSONCodableTransform);
}

{
  return __swift_instantiateGenericMetadata(a1, a2, a3, a4, &nominal type descriptor for JSONCodableTransform);
}

uint64_t SceneStorage.init<A>(key:transform:defaultValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v28 = a3;
  v15 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SceneStorage(0, v20, v18, v19);
  *(a8 + 2) = 0;
  *(a8 + 3) = 0;
  *&a8[v21[9]] = 0;
  *a8 = a1;
  *(a8 + 1) = a2;
  v22 = *(a5 - 8);
  (*(v22 + 16))(&a8[v21[8]], a4, a5);
  type metadata accessor for TransformBox(0, a6, a7, v23);
  v24 = v28;
  (*(v15 + 16))(v17, v28, a6);
  v25 = TransformBox.__allocating_init(_:)(v17);
  (*(v22 + 8))(a4, a5);
  result = (*(v15 + 8))(v24, a6);
  *&a8[v21[10]] = v25;
  return result;
}

uint64_t TransformBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 112) - 8) + 32))(v2 + *(*v2 + 128), a1);
  return v2;
}

void *initializeWithCopy for SceneStorage(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v5[1] = v6[1];
  v7 = *(a3 + 16);
  v8 = *(*(v7 - 8) + 16);
  v9 = *(v7 - 8) + 16;
  v10 = *(*(v7 - 8) + 80);
  v11 = (v5 + v10 + 16) & ~v10;
  v12 = (v6 + v10 + 16) & ~v10;

  v8(v11, v12, v7);
  v13 = *(v9 + 48) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v15 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

double destroy for SceneStorage(uint64_t a1, uint64_t a2)
{

  (*(*(*(a2 + 16) - 8) + 8))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + *(*(*(a2 + 16) - 8) + 80) + 16) & ~*(*(*(a2 + 16) - 8) + 80));

  return result;
}

uint64_t View.alert<A, B>(_:isPresented:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t (*a5)(__n128)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t x8_0@<X8>, __int128 a9, uint64_t a10, uint64_t a11)
{
  v29 = a5;
  v28 = a4;
  v27 = a9;
  v17 = MEMORY[0x1EEE9AC00](a1);
  (*(v19 + 16))(&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  View.alert<A>(_:isPresented:actions:)(v20, v21, v23 & 1, v25, a2, a3, v28, v29, x8_0, a6, a7, v27, *(&v27 + 1), a11);
  outlined consume of Text.Storage(v20, v22, v24 & 1);
}

uint64_t View.alert<A, B, C>(_:isPresented:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t (*a5)(__n128)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v36 = a5;
  v30 = a8;
  v31 = a7;
  v32 = a6;
  v33 = a2;
  v35 = a4;
  v34 = a3;
  v29 = a9;
  v28 = a12;
  v17 = MEMORY[0x1EEE9AC00](a1);
  (*(v19 + 16))(&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v17);
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  View.alert<A, B>(_:isPresented:actions:message:)(v20, v21, v23 & 1, v25, v33, v34, v35, v36, v29, v32, v31, v30, a10, v28, a13, a14, a16, a17);
  outlined consume of Text.Storage(v20, v22, v24 & 1);
}

uint64_t SceneStorage.Box.update(property:phase:)(char *a1, uint64_t a2, uint64_t a3)
{
  v55 = *(a3 + 16);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 8);
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  v54 = *(v3 + 48);
  v50 = *(v3 + 52);
  type metadata accessor for PropertyListTransform<Bool>(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v16 = *Value;
  v17 = Value[1];
  if ((v7 & 1) == 0)
  {
    swift_bridgeObjectRetain_n();

    *(v3 + 16) = v16;
    *(v3 + 24) = v17;
    *(v3 + 8) = 1;
    goto LABEL_17;
  }

  if ((v13 & 1) == 0)
  {
LABEL_3:

    goto LABEL_4;
  }

  if (v8)
  {
    if (v17)
    {
      v20 = v9 == v16 && v8 == v17;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_3;
      }
    }

    goto LABEL_16;
  }

  if (v17)
  {
LABEL_16:

    v21 = v16;
    v22 = static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    v24 = v22;
    v16 = v21;
    os_log(_:dso:log:_:_:)(v24, &dword_18BD4A000, v23, "Modifying the domain of an existing SceneStorage, this will cause undefined behavior.", 85, 2, MEMORY[0x1E69E7CC0]);

    SceneStorage.Box.reset()(a3);

    *(v3 + 16) = v21;
    *(v3 + 24) = v17;
LABEL_17:
    v8 = v17;
    v18 = *a1;
    v19 = *(a1 + 1);
    if (!v11)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  v8 = 0;
LABEL_4:
  v16 = v9;
  v18 = *a1;
  v19 = *(a1 + 1);
  if (!v11)
  {
LABEL_5:
    *(v3 + 32) = v18;
    *(v3 + 40) = v19;

    goto LABEL_23;
  }

LABEL_18:
  if (v10 == v18 && v11 == v19)
  {
    v18 = v10;
  }

  else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    MEMORY[0x18D009810](0xD000000000000056, 0x800000018CD47930);
  }

LABEL_23:
  v25 = v55;
  v56 = v16;
  v26 = *(v3 + 56);
  v51 = v26 == 0;
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v49 = type metadata accessor for SceneStorage(0, v55, v14, v15);
    if (*&a1[*(v49 + 36)] && (type metadata accessor for ObservableLocation(), (v38 = swift_dynamicCastClass()) != 0))
    {
      v27 = v38;
      *(v3 + 56) = v38;
    }

    else
    {
      v8 = *(v3 + 24);
      v56 = *(v3 + 16);
      v39 = *(v3 + 48);
      v50 = *(v3 + 52);
      type metadata accessor for SceneStorage<URL>(0, &lazy cache variable for type metadata for SceneStorageValues?, v37, type metadata accessor for SceneStorageValues, MEMORY[0x1E69E6720]);
      v40 = AGGraphGetValue();
      if (!*v40)
      {

        MEMORY[0x18D009810](0xD00000000000006CLL, 0x800000018CD478C0);
        v36 = 0;
        return v36 & 1;
      }

      v48 = &v46;
      v57 = 0;
      v41 = *&a1[*(v49 + 40)];
      MEMORY[0x1EEE9AC00](v40);
      v47 = &v46 - 4;
      v42 = v39;
      v25 = v55;
      v54 = v42;
      v49 = v42 | (v50 << 32);

      v43 = v49;
      v49 = v3;
      v27 = SceneStorageValues.getLocation<A>(_:domain:key:transformBox:signal:makeLocation:)(v25, v56, v8, v18, v19, v41, v43, partial apply for closure #1 in SceneStorage.Box.update(property:phase:), v47, v25);

      type metadata accessor for ObservableLocation();
      v44 = type metadata accessor for Optional();
      (*(*(v44 - 8) + 8))(&v57, v44);
      *(v49 + 56) = v27;
    }
  }

  WeakValue = AGGraphGetWeakValue();
  v30 = v29;
  v31 = v52;
  StoredLocationBase.updateValue.getter();
  v34 = type metadata accessor for SceneStorage(0, v25, v32, v33);
  (*(v53 + 40))(&a1[*(v34 + 32)], v31, v25);
  v35 = *(v34 + 36);

  *&a1[v35] = v27;

  *(a1 + 2) = v56;
  *(a1 + 3) = v8;
  if (WeakValue)
  {
    v36 = v51;
    if (v30)
    {
      v36 = (v26 == 0) | StoredLocationBase.wasRead.getter();
    }
  }

  else
  {
    v36 = v51;
  }

  return v36 & 1;
}

uint64_t *SceneStorageValues.getLocation<A>(_:domain:key:transformBox:signal:makeLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(char *), uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v34 = a8;
  v35 = a6;
  v38 = a2;
  v32[1] = a1;
  v36 = a7;
  v37 = a10;
  v33 = type metadata accessor for Optional();
  v15 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v17 = v32 - v16;
  if (a3)
  {
    v40 = v38;
    v41 = a3;

    MEMORY[0x18D00C9B0](47, 0xE100000000000000);

    MEMORY[0x18D00C9B0](a4, a5);

    v19 = v40;
    v18 = v41;
  }

  else
  {

    v19 = a4;
    v18 = a5;
  }

  swift_beginAccess();
  v20 = *(v10 + 24);
  if (!*(v20 + 16) || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18), (v22 & 1) == 0))
  {
    swift_endAccess();
    v24 = v37;
LABEL_10:
    v32[0] = v19;
    v26 = v19;
    v27 = v35;
    SceneStorageValues.initialValue<A>(_:key:transformBox:)(v18, v35, v24, v17, v26);
    v25 = v34(v17);
    (*(v15 + 8))(v17, v33);
    type metadata accessor for SceneStorageValues.Entry();
    v28 = swift_allocObject();
    v29 = *v25;
    v28[2] = a4;
    v28[3] = a5;
    v28[4] = v38;
    v28[5] = a3;
    v28[6] = *(v29 + *MEMORY[0x1E697F430]);
    v28[7] = v25;
    v28[8] = v27;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v11 + 24);
    *(v11 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v32[0], v18, isUniquelyReferenced_nonNull_native);

    *(v11 + 24) = v39;
    swift_endAccess();
    goto LABEL_11;
  }

  v23 = *(*(v20 + 56) + 8 * v21);
  swift_endAccess();
  v24 = v37;
  if (*(v23 + 48) != v37)
  {
    goto LABEL_10;
  }

  v25 = *(v23 + 56);
  swift_unknownObjectRetain();
  v24 = v37;
  if (!v25)
  {
    goto LABEL_10;
  }

LABEL_11:
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  ObservableLocation.addObserver(host:signal:)();

  return v25;
}

uint64_t SceneStorageValues.initialValue<A>(_:key:transformBox:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>, uint64_t a5@<X1>)
{
  v28 = a1;
  v29 = a4;
  v9 = type metadata accessor for Optional();
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v25 = v5;
  v16 = *(*a2 + 88);

  v16(v30, v17, a5, v28, &v31);

  type metadata accessor for PropertyListTransform<Bool>(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v18 = swift_dynamicCast();
  v19 = *(v12 + 56);
  if ((v18 & 1) == 0)
  {
    v23 = 1;
    v19(v11, 1, 1, a3);
    (*(v26 + 8))(v11, v27);
LABEL_6:
    v22 = v29;
    return (v19)(v22, v23, 1, a3);
  }

  v19(v11, 0, 1, a3);
  v20 = *(v12 + 32);
  v20(v15, v11, a3);
  if (v31 != 1)
  {
    (*(v12 + 8))(v15, a3);
    v23 = 1;
    goto LABEL_6;
  }

  --*(v25 + 32);
  v21 = v29;
  v20(v29, v15, a3);
  v22 = v21;
  v23 = 0;
  return (v19)(v22, v23, 1, a3);
}

uint64_t TransformBox.readValue(from:key:read:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(*v4 + 112);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v16 - v13;
  (*(v11 + 16))(&v16 - v13, v4 + *(v9 + 128), v10, v12);
  (*(*(v9 + 120) + 16))(a1, a2, a3, a4, v10);
  return (*(v11 + 8))(v14, v10);
}

uint64_t JSONCodableTransform.readValue(from:key:read:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v30 = a4;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v31 = a2;
  v32 = a3;

  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v33), (v20 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v19, v34);
    outlined destroy of AnyHashable(v33);
    result = swift_dynamicCast();
    if (result)
    {
      v23 = v31;
      v22 = v32;
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      v29 = v22;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v24 = *(a5 - 8);
      (*(v24 + 56))(v18, 0, 1, a5);
      *v30 = 1;
      (*(v13 + 16))(v15, v18, v12);
      if ((*(v24 + 48))(v15, 1, a5) != 1)
      {
        *(a7 + 24) = a5;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a7);
        (*(v24 + 32))(boxed_opaque_existential_1, v15, a5);

        v28 = outlined consume of Data._Representation(v23, v29);
        return (*(v13 + 8))(v18, v12, v28);
      }

      v25 = *(v13 + 8);
      v25(v18, v12);

      v26 = outlined consume of Data._Representation(v23, v29);
      result = (v25)(v15, v12, v26);
    }
  }

  else
  {
    result = outlined destroy of AnyHashable(v33);
  }

  *a7 = 0u;
  *(a7 + 16) = 0u;
  return result;
}

void type metadata accessor for KeyedEncodingContainer<NavigationSplitViewVisibility.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, uint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys();
    v7 = a3(a1, &unk_1F00085E8, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t NavigationSplitViewVisibility.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<NavigationSplitViewVisibility.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<NavigationSplitViewVisibility.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15 = 0;
    lazy protocol witness table accessor for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = v16;
    v14 = 1;
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewVisibility.CodingKeys, &unk_1F00085E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewVisibility.CodingKeys, &unk_1F00085E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewVisibility.CodingKeys, &unk_1F00085E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewVisibility.CodingKeys, &unk_1F00085E8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.CodingKeys and conformance NavigationSplitViewVisibility.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind()
{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewVisibility.Kind, &type metadata for NavigationSplitViewVisibility.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewVisibility.Kind, &type metadata for NavigationSplitViewVisibility.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewVisibility.Kind, &type metadata for NavigationSplitViewVisibility.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind;
  if (!lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NavigationSplitViewVisibility.Kind, &type metadata for NavigationSplitViewVisibility.Kind, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitViewVisibility.Kind and conformance NavigationSplitViewVisibility.Kind);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NavigationSplitViewVisibility.CodingKeys()
{
  if (*v0)
  {
    return 0x616D6F7475417369;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t storeEnumTagSinglePayload for CapsuleSlider.ScrollState.Orientation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapsuleSlider.ScrollState.Orientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance NavigationSplitViewVisibility.Kind@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

double outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t closure #1 in SceneStorage.Box.update(property:phase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  v15 = *(v10 + 48);
  if (v15(v9, 1, a3) == 1)
  {
    v18 = type metadata accessor for SceneStorage(0, a3, v16, v17);
    (*(v10 + 16))(v14, a2 + *(v18 + 32), a3);
    if (v15(v9, 1, a3) != 1)
    {
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    (*(v10 + 32))(v14, v9, a3);
  }

  type metadata accessor for ObservableLocation();
  swift_allocObject();
  return ObservableLocation.init(initialValue:)();
}

void type metadata accessor for _DictionaryStorage<String, SceneStorageValues.Entry>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, SceneStorageValues.Entry>)
  {
    type metadata accessor for SceneStorageValues.Entry();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<String, SceneStorageValues.Entry>);
    }
  }
}

double NavigationStack.init<>(path:root:)@<D0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v17 = type metadata accessor for NavigationStack(0, a3, a4, a9);
  *(a8 + v17[11]) = 0;
  v18 = a8 + v17[13];
  *v18 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  a2();
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
  v19 = type metadata accessor for Binding();
  v23 = a3;
  *&v24 = a5;
  *(&v24 + 1) = a6;
  v25 = a7;
  v26 = a10;
  v20 = type metadata accessor for AnyNavigationPath.ToHomogeneous(0, &v23);
  swift_getWitnessTable(protocol conformance descriptor for AnyNavigationPath.ToHomogeneous<A>, v20);
  Binding.projecting<A>(_:)();
  (*(*(v19 - 8) + 8))(a1, v19);
  v21 = a8 + v17[12];
  *v21 = v23;
  result = *&v24;
  *(v21 + 8) = v24;
  *(v21 + 24) = 1;
  return result;
}

uint64_t View.focusedValue<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v23 = a3;
  v8 = *(*a1 + *MEMORY[0x1E69E6CE8] + 8);
  v9 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v14 = type metadata accessor for FocusedValueModifier(0, v8, v12, v13);
  v15 = *(v14 - 8);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  v19 = *(v8 - 8);
  (*(v19 + 16))(v11, a2, v8, v16);
  (*(v19 + 56))(v11, 0, 1, v8);
  FocusedValueModifier.init(keyPath:value:isSceneValue:)(a1, v11, a5, v20, v18);

  MEMORY[0x18D00A570](v18, v23, v14, v24);
  return (*(v15 + 8))(v18, v14);
}

uint64_t FocusedValueModifier.init(keyPath:value:isSceneValue:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v5 = a3;
  v8 = *a1;
  *a5 = a1;
  v9 = type metadata accessor for FocusedValueModifier(0, *(v8 + *MEMORY[0x1E69E6CE8] + 8), a3, a4);
  v10 = *(v9 + 28);
  v11 = type metadata accessor for Optional();
  result = (*(*(v11 - 8) + 32))(&a5[v10], a2, v11);
  a5[*(v9 + 32)] = v5;
  return result;
}

uint64_t *initializeWithCopy for FocusedValueModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  v9 = *(v5 + 48);

  if (v9(v8, 1, v4))
  {
    v10 = *(v5 + 84);
    v11 = *(v5 + 64);
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 + 1;
    }

    memcpy(v7, v8, v12);
  }

  else
  {
    (*(v5 + 16))(v7, v8, v4);
    v14 = *(v5 + 56);
    v13 = v5 + 56;
    v14(v7, 0, 1, v4);
    v10 = *(v13 + 28);
    v11 = *(v13 + 8);
  }

  if (v10)
  {
    v15 = v11;
  }

  else
  {
    v15 = v11 + 1;
  }

  *(v7 + v15) = *(v8 + v15);
  return a1;
}

uint64_t destroy for FocusedValueModifier(void *a1, uint64_t a2)
{

  v4 = *(a2 + 16);
  v9 = *(v4 - 8);
  v5 = *(v9 + 80);
  v6 = a1 + v5 + 8;
  result = (*(v9 + 48))(v6 & ~v5, 1, v4);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(v6 & ~v5, v4);
  }

  return result;
}

uint64_t protocol witness for Projection.get(base:) in conformance AnyNavigationPath.ToHomogeneous<A>@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized AnyNavigationPath.ToHomogeneous.get(base:)(a1, a2[2], a2[3], a2[4], a2[5], a2[6]);
  *a3 = result;
  return result;
}

uint64_t specialized AnyNavigationPath.init<A>(path:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  type metadata accessor for AnyNavigationPath.HomogeneousBoxBase(0, v14);
  (*(v4 + 16))(v6, a1, a2);
  return AnyNavigationPath.HomogeneousBoxBase.__allocating_init(path:)(v6);
}

uint64_t type metadata completion function for AnyNavigationPath.HomogeneousBoxBase(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t View.sheet<A, B>(item:onDismiss:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, unsigned __int8 a13)
{
  v40 = a6;
  v36 = a4;
  v37 = a5;
  v35 = a3;
  v32 = a1;
  v33 = a2;
  v39 = a9;
  v34 = a13;
  v38 = a10;
  type metadata accessor for Optional();
  v14 = type metadata accessor for Binding();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v19 = v18;
  v23 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>(v18, v20, v21, v22);
  v41[0] = a7;
  v41[1] = a8;
  v41[2] = v19;
  v42 = a11;
  v43 = v23;
  v24 = type metadata accessor for ItemSheetPresentationModifier(0, v41);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v32 - v27;
  (*(v15 + 16))(v17, v32, v14, v26);
  v29 = v33;
  v30 = v35;
  ItemSheetPresentationModifier<>.init(item:onDismiss:sheetContent:placement:drawsBackground:)(v17, v33, v35, v36, v37, v34, 1, a7, v28, a8, a11);
  outlined copy of AppIntentExecutor?(v29, v30);

  MEMORY[0x18D00A570](v28, v40, v24, v38);
  return (*(v25 + 8))(v28, v24);
}

uint64_t ItemSheetPresentationModifier<>.init(item:onDismiss:sheetContent:placement:drawsBackground:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11)
{
  type metadata accessor for NullSheetAnchor<SheetPreference.Key>(0, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>, &type metadata for SheetPreference.Key, &protocol witness table for SheetPreference.Key, type metadata accessor for NullSheetAnchor);
  v18 = v17;
  v22 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.Key> and conformance NullSheetAnchor<A>(v17, v19, v20, v21);
  return ItemSheetPresentationModifier.init(item:onDismiss:sheetContent:placement:drawsBackground:anchorProvider:)(a1, a2, a3, a4, a5, a6, a7, v23, a9, a8, a10, v18, a11, v22);
}

uint64_t *initializeWithCopy for ItemSheetPresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v5 + v9 + 8;
  v11 = v6 + v9 + 8;
  v12 = *(v8 + 48);

  if (v12(v11 & ~v9, 1, v7))
  {
    v13 = *(v8 + 84);
    v14 = *(v8 + 64);
    if (v13)
    {
      v15 = *(v8 + 64);
    }

    else
    {
      v15 = v14 + 1;
    }

    memcpy((v10 & ~v9), (v11 & ~v9), v15);
  }

  else
  {
    (*(v8 + 16))(v10 & ~v9, v11 & ~v9, v7);
    v17 = *(v8 + 56);
    v16 = v8 + 56;
    v17(v10 & ~v9, 0, 1, v7);
    v13 = *(v16 + 28);
    v14 = *(v16 + 8);
  }

  v18 = v14 + ((v9 + 16) & ~v9);
  if (!v13)
  {
    ++v18;
  }

  v19 = (a1 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (a2 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*v20 < 0xFFFFFFFFuLL)
  {
    *v19 = *v20;
  }

  else
  {
    v21 = *(v20 + 8);
    *v19 = *v20;
    *(v19 + 8) = v21;
  }

  v22 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = *(v23 + 8);
  *v22 = *v23;
  *(v22 + 8) = v24;
  *(v22 + 16) = *(v23 + 16);
  *(v22 + 17) = *(v23 + 17);
  v25 = *(a3 + 32);
  v26 = *(*(v25 - 8) + 16);
  v27 = *(*(v25 - 8) + 80);
  v28 = v27 + 18 + v22;
  v29 = v27 + 18 + v23;

  v26(v28 & ~v27, v29 & ~v27, v25);
  return a1;
}

uint64_t destroy for ItemSheetPresentationModifier(void *a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = v4 & 0xFFFFFFFFFFFFFFF8;

  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v5 + v8 + 8;
  if (!(*(v7 + 48))(v9 & ~v8, 1, v6))
  {
    (*(v7 + 8))(v9 & ~v8, v6);
  }

  v10 = a1 + *(v7 + 64) + ((v8 + 16) & ~v8);
  if (!*(v7 + 84))
  {
    ++v10;
  }

  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (*v11 >= 0xFFFFFFFFuLL)
  {
  }

  v12 = *(*(a2 + 32) - 8);
  v13 = *(v12 + 8);
  v14 = (((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v12 + 80) + 18) & ~*(v12 + 80);

  return v13(v14);
}

uint64_t View.confirmationDialog<A, B, C, D>(_:isPresented:titleVisibility:presenting:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v33 = a8;
  v34 = a7;
  v35 = a6;
  v36 = a2;
  v38 = a4;
  v39 = a5;
  v37 = a3;
  v32 = a9;
  v31 = a10;
  v29 = a11;
  v30 = a13;
  v19 = MEMORY[0x1EEE9AC00](a1);
  (*(v21 + 16))(&v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:)(v22, v23, v25 & 1, v27, v36, v37, v38, v39, v32, v35, v34, v33, v31, *(&v31 + 1), v29, v30, a14, a15, a16, a18, a19);
  outlined consume of Text.Storage(v22, v24, v26 & 1);
}

uint64_t View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = a7;
  v51 = a14;
  v52 = a15;
  v53 = a16;
  v54 = a17;
  v55 = a18;
  v56 = a19;
  v57 = a20;
  v58 = a5;
  v59 = a6;
  v60 = a7;
  v61 = a9;
  v62 = a10;
  v63 = a11;
  v37 = a14;
  v38 = a15;
  v39 = a16;
  v40 = a17;
  v41 = a18;
  v42 = a19;
  v43 = a20;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v47 = a9;
  v48 = a12;
  v49 = a13;
  v25 = type metadata accessor for Optional();
  v26 = type metadata accessor for Optional();
  v27 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v25, &a19);
  v29 = swift_getWitnessTable(v27, v26, &a20);
  return View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)(a1, a2, a3 & 1, a4, a5, a6, v21, a8, x8_0, partial apply for closure #1 in View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:), v50, partial apply for closure #2 in View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:), v36, a14, v25, v26, a18, WitnessTable, v29);
}

uint64_t View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, void (*a10)(__n128), uint64_t a11, void (*a12)(uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v66 = a8;
  v70 = a7;
  v69 = a6;
  v68 = a5;
  v67 = a9;
  v63 = a13;
  v62 = a12;
  v53 = a11;
  v52 = a10;
  v54 = a19;
  v50 = a18;
  v65 = a17;
  v57 = a16;
  v64 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a15;
  v60 = *(a15 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255);
  v27 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v27);
  v51 = &v48 - v28;
  v29 = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
  v82[0] = a18;
  v82[1] = v29;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v27, v82);
  *&v86 = v27;
  *(&v86 + 1) = a16;
  *&v87 = WitnessTable;
  *(&v87 + 1) = a19;
  v58 = type metadata accessor for ConfirmationDialogModifier(0, &v86);
  v59 = *(v58 - 8);
  v30 = MEMORY[0x1EEE9AC00](v58);
  v32 = &v48 - v31;
  MEMORY[0x18D009CE0](&v86, v30);
  v33 = a2;
  v48 = a4;
  Text.assertUnstyled(_:options:)();
  v79 = v68;
  v80 = v69;
  v81 = v70;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v78);
  v49 = v78;

  LOBYTE(a2) = a3;
  v34 = a1;
  v35 = a1;
  v36 = v33;
  outlined copy of Text.Storage(v34, v33, a2 & 1);

  (v52)(v37);
  KeyPath = swift_getKeyPath();
  v77 = 0;
  v39 = swift_getKeyPath();
  v76 = 0;
  v40 = swift_getKeyPath();
  v75 = 0;
  v41 = swift_getKeyPath();
  v74 = 0;
  *&v71 = KeyPath;
  BYTE8(v71) = v77;
  *(&v71 + 9) = *v85;
  HIDWORD(v71) = *&v85[3];
  *&v72 = v39;
  BYTE8(v72) = v76;
  *(&v72 + 9) = *v84;
  HIDWORD(v72) = *&v84[3];
  *v73 = v40;
  v73[8] = v75;
  *&v73[9] = *v83;
  *&v73[12] = *&v83[3];
  *&v73[16] = v41;
  v73[24] = 0;
  lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle();
  v42 = v51;
  v43 = v56;
  View.buttonStyle<A>(_:)(&v71, v56, &type metadata for PlatformItemListButtonStyle, v50);
  v86 = v71;
  v87 = v72;
  *v88 = *v73;
  *&v88[9] = *&v73[9];
  outlined destroy of PlatformItemListButtonStyle(&v86);
  v44 = (*(v60 + 8))(v26, v43);
  v45 = v61;
  v62(v44);
  ConfirmationDialogModifier.init(presentedValue:isPresented:title:titleVisibility:actions:message:)(v49, v68, v69, v70, v35, v36, a2 & 1, v48, v32, v66, v42, v45, v27, v57, WitnessTable, v54);
  v46 = v58;
  MEMORY[0x18D00A570](v32, v64, v58, v65);
  return (*(v59 + 8))(v32, v46);
}

uint64_t closure #2 in View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:presenting:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40[1] = a6;
  v41 = a5;
  v44 = a4;
  LODWORD(v47) = a3;
  v46 = a2;
  v50 = a7;
  v48 = *(a8 - 8);
  v49 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v42 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v40[0] = v40 - v15;
  v16 = type metadata accessor for Optional();
  v43 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v40 - v17;
  v45 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v40 - v27;
  v53 = a1;
  v54 = v46;
  v55 = v47;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v52);
  if (v52 == 1)
  {
    v29 = v43;
    (*(v43 + 16))(v18, v44, v16);
    if ((*(v45 + 48))(v18, 1, a9) != 1)
    {
      v33 = v45;
      (*(v45 + 32))(v21, v18);
      v34 = v42;
      v41(v21);
      (*(v33 + 8))(v21, a9);
      v47 = v23;
      v35 = v40[0];
      v31 = v49;
      static ViewBuilder.buildExpression<A>(_:)();
      v32 = v48;
      v36 = *(v48 + 8);
      v36(v34, a8);
      static ViewBuilder.buildExpression<A>(_:)();
      v37 = v35;
      v23 = v47;
      v36(v37, a8);
      (*(v32 + 32))(v25, v34, a8);
      v30 = 0;
      goto LABEL_6;
    }

    (*(v29 + 8))(v18, v16);
  }

  v30 = 1;
  v32 = v48;
  v31 = v49;
LABEL_6:
  (*(v32 + 56))(v25, v30, 1, a8);
  static ToolbarContentBuilder.buildIf<A>(_:)(v25, v28);
  v38 = *(v23 + 8);
  v38(v25, v22);
  v51 = v31;
  swift_getWitnessTable(MEMORY[0x1E6982090], v22, &v51);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v38)(v28, v22);
}

uint64_t ConfirmationDialogModifierCore.init(presentedValue:isPresented:title:titleVisibility:actions:message:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(void, void *))
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  v20[0] = a13;
  v20[1] = a14;
  v20[2] = a15;
  v20[3] = a16;
  v18 = a17(0, v20);
  (*(*(a13 - 8) + 32))(a9 + *(v18 + 64), a11, a13);
  return (*(*(a14 - 8) + 32))(a9 + *(v18 + 68), a12, a14);
}

unint64_t initializeWithCopy for ConfirmationDialogModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  *(v5 + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v5 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v5 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
  v9 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);

  outlined copy of Text.Storage(v7, v8, v9);
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  *(v5 + 48) = v9;
  *(v5 + 56) = *(v6 + 56);
  *(v5 + 64) = *(v6 + 64);
  v10 = *(a3 + 16);
  v11 = *(*(v10 - 8) + 16);
  v12 = *(v10 - 8) + 16;
  v13 = *(*(v10 - 8) + 80);
  v14 = (v13 + 65 + v5) & ~v13;
  v15 = (v13 + 65 + v6) & ~v13;

  v11(v14, v15, v10);
  v16 = *(*(a3 + 24) - 8);
  (*(v16 + 16))((*(v12 + 48) + *(v16 + 80) + v14) & ~*(v16 + 80), (*(v12 + 48) + *(v16 + 80) + v15) & ~*(v16 + 80));
  return a1;
}

uint64_t destroy for ConfirmationDialogModifier(uint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFFF8;

  outlined consume of Text.Storage(*(v3 + 32), *(v3 + 40), *(v3 + 48));

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (v3 + *(v4 + 80) + 65) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = *(*(a2 + 24) - 8);
  v8 = *(v7 + 8);
  v9 = (v6 + *(v5 + 56) + *(v7 + 80)) & ~*(v7 + 80);

  return v8(v9);
}

uint64_t sub_18BE6B350(uint64_t *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v18 = *a1;
  v19 = v1;
  v20 = v3;
  v21 = v2;
  v4 = type metadata accessor for ConfirmationDialogModifier(255, &v18);
  swift_getWitnessTable(protocol conformance descriptor for ConfirmationDialogModifier<A, B>, v4);
  v5 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<DialogActionStyleContext>, MEMORY[0x1E69803A8], MEMORY[0x1E69803A0], MEMORY[0x1E697F4C8]);
  v6 = type metadata accessor for ModifiedContent();
  v17[0] = v3;
  v17[1] = lazy protocol witness table accessor for type StyleContextWriter<DialogActionStyleContext> and conformance StyleContextWriter<A>();
  v7 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v17);
  v18 = v6;
  v19 = v1;
  v20 = WitnessTable;
  v21 = v2;
  type metadata accessor for ConfirmationDialogModifierCore(255, &v18);
  v9 = type metadata accessor for StaticIf();
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(255);
  v11 = type metadata accessor for ModifiedContent();
  v12 = swift_getWitnessTable(MEMORY[0x1E697FDF8], v5);
  v16[0] = lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate();
  v16[1] = &protocol witness table for ConfirmationDialogModifierCore<A, B>;
  v16[2] = MEMORY[0x1E697E100];
  v15[0] = v12;
  v15[1] = swift_getWitnessTable(MEMORY[0x1E6981CE0], v9, v16);
  v14[0] = swift_getWitnessTable(v7, v10, v15);
  v14[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable(v7, v11, v14);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ConfirmationDialogModifierCore<A, B>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ConfirmationDialogModifierCore<A, B>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static ConfirmationDialogModifierCore._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v105 = *MEMORY[0x1E69E9840];
  v12 = a2[3];
  v13 = a2[1];
  v101 = a2[2];
  v102 = v12;
  v14 = a2[3];
  v103 = a2[4];
  v15 = a2[1];
  v99 = *a2;
  v100 = v15;
  v90 = v101;
  v91 = v14;
  v92 = a2[4];
  v16 = *a1;
  v104 = *(a2 + 20);
  *v93 = *(a2 + 20);
  v88 = v99;
  v89 = v13;
  v52 = a8;
  a3();
  v84 = v101;
  v85 = v102;
  v86 = v103;
  v87 = v104;
  v82 = v99;
  v83 = v100;
  LOBYTE(v76) = 1;
  outlined init with copy of _ViewInputs(&v99, &v88);
  lazy protocol witness table accessor for type IncludesAccessibilityText and conformance IncludesAccessibilityText();
  PropertyList.subscript.setter();
  v57 = v16;
  *&v88 = a4;
  *(&v88 + 1) = a5;
  *&v89 = a6;
  *(&v89 + 1) = a7;
  type metadata accessor for ConfirmationDialogModifierCore(255, &v88);
  v54 = type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a4 - 8) + 64))
  {
    closure #1 in static ConfirmationDialogModifierCore._makeView(modifier:inputs:body:)(1, a4, a5, a6, a7);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v74[2] = v84;
  v74[3] = v85;
  v74[4] = v86;
  v75 = v87;
  v74[0] = v82;
  v74[1] = v83;
  v78 = v84;
  v79 = v85;
  v80 = v86;
  LODWORD(v81[0]) = v87;
  v76 = v82;
  v77 = v83;
  v18 = PlatformItemListGenerator<>.init(content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v76, 1, &v88);
  MEMORY[0x1EEE9AC00](v18);
  *&v76 = &type metadata for AllPlatformItemListFlags;
  *(&v76 + 1) = a4;
  *&v77 = &protocol witness table for AllPlatformItemListFlags;
  *(&v77 + 1) = a6;
  v19 = type metadata accessor for PlatformItemListGenerator(0, &v76);
  v44 = v19;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGenerator<A, B>, v19);
  outlined init with copy of _ViewInputs(v74, &v76);
  _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_0(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
  v53 = a4;
  v21 = v20;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v88, closure #1 in Attribute.init<A>(_:)partial apply, v43, v19, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v22);
  v80 = v92;
  v81[0] = *v93;
  *(v81 + 12) = *&v93[12];
  v76 = v88;
  v77 = v89;
  v78 = v90;
  v79 = v91;
  (*(*(v19 - 8) + 8))(&v76, v19);
  v48 = v62;
  v56 = v16;
  _GraphValue.value.getter();
  v23 = *(*(a5 - 8) + 64);
  v51 = a6;
  if (v23)
  {
    closure #2 in static ConfirmationDialogModifierCore._makeView(modifier:inputs:body:)(1, v53, a5, a6, a7);
  }

  v24 = AGGraphCreateOffsetAttribute2();
  v60[2] = v84;
  v60[3] = v85;
  v60[4] = v86;
  v61 = v87;
  v60[0] = v82;
  v60[1] = v83;
  v64 = v84;
  v65 = v85;
  v66 = v86;
  LODWORD(v67[0]) = v87;
  v62 = v82;
  v63 = v83;
  v25 = PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)(v24, &v62, 1, &v88);
  v50 = a5;
  MEMORY[0x1EEE9AC00](v25);
  v49 = a7;
  *&v62 = &type metadata for TextPlatformItemListFlags;
  *(&v62 + 1) = v26;
  *&v63 = &protocol witness table for TextPlatformItemListFlags;
  *(&v63 + 1) = a7;
  v27 = type metadata accessor for PlatformItemListGenerator(0, &v62);
  v44 = v27;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for PlatformItemListGenerator<A, B>, v27);
  outlined init with copy of _ViewInputs(v60, &v62);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v88, closure #1 in Attribute.init<A>(_:)partial apply, v43, v27, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v28);
  v66 = v92;
  v67[0] = *v93;
  *(v67 + 12) = *&v93[12];
  v62 = v88;
  v63 = v89;
  v64 = v90;
  v65 = v91;
  (*(*(v27 - 8) + 8))(&v62, v27);
  v29 = v100;
  v47 = DWORD2(v100);
  swift_beginAccess();
  HIDWORD(v46) = *(v29 + 16);
  LODWORD(v68) = v16;
  v30 = _GraphValue.value.getter();
  v31 = AGCreateWeakAttribute();
  v32 = AGCreateWeakAttribute();
  v90 = v101;
  v91 = v102;
  v92 = v103;
  *v93 = v104;
  v88 = v99;
  v89 = v100;
  v33 = _ViewInputs.animatedPosition()();
  v90 = v101;
  v91 = v102;
  v92 = v103;
  *v93 = v104;
  v88 = v99;
  v89 = v100;
  v34 = _ViewInputs.animatedCGSize()();
  v35 = HIDWORD(v102);
  type metadata accessor for PropertyList.Tracker();
  swift_allocObject();
  v36 = PropertyList.Tracker.init()();
  v54 = &v46;
  v55 = 1;
  *&v88 = __PAIR64__(v30, HIDWORD(v46));
  *(&v88 + 1) = v31;
  *&v89 = v32;
  *(&v89 + 1) = __PAIR64__(v33, v47);
  v90 = __PAIR64__(v35, v34);
  *&v92 = 0;
  v91 = v36;
  BYTE8(v92) = 2;
  HIDWORD(v92) = *(&v68 + 3);
  *(&v92 + 9) = v68;
  memset(v93, 0, 24);
  v93[24] = 1;
  v93[25] = 1;
  *&v93[26] = v58;
  v94 = WORD2(v58);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0;
  v58 = v102;
  v59 = DWORD2(v102);
  MEMORY[0x1EEE9AC00](v102);
  v37 = v53;
  v39 = v50;
  v38 = v51;
  v40 = v49;
  v43[0] = v51;
  v43[1] = v49;
  v44 = &v88;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  *&v68 = v37;
  *(&v68 + 1) = v39;
  *&v69 = v38;
  *(&v69 + 1) = v40;
  ConfirmationDialog = type metadata accessor for MakeConfirmationDialog(0, &v68);
  (*(*(ConfirmationDialog - 8) + 8))(&v88, ConfirmationDialog);

  v70 = v84;
  v71 = v85;
  v72 = v86;
  v73 = v87;
  v68 = v82;
  v69 = v83;
  return outlined destroy of _ViewInputs(&v68);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance FocusedValueModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FocusedValueModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t closure #1 in static ConfirmationDialogModifierCore._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for ConfirmationDialogModifierCore(0, v13);
  v8 = *(v7 + 64);
  v12[2] = v7;
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

void _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s14AttributeGraph0A0Vy7SwiftUI16PlatformItemListVGMaTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t closure #2 in static ConfirmationDialogModifierCore._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for ConfirmationDialogModifierCore(0, v13);
  v8 = *(v7 + 68);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, partial apply for closure #1 in static PointerOffset.of(_:), v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

double destroy for MakeConfirmationDialog(uint64_t a1)
{

  if (*(a1 + 152))
  {
    if (*(a1 + 136))
    {
      outlined consume of Text.Storage(*(a1 + 112), *(a1 + 120), *(a1 + 128));
    }
  }

  return result;
}

unint64_t assignWithCopy for ConfirmationDialogModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);

  *(v5 + 16) = *(v6 + 16);

  *(v5 + 24) = *(v6 + 24);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  v9 = *(v6 + 48);
  outlined copy of Text.Storage(v7, v8, v9);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  v12 = *(v5 + 48);
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  *(v5 + 48) = v9;
  outlined consume of Text.Storage(v10, v11, v12);
  *(v5 + 56) = *(v6 + 56);

  *(v5 + 64) = *(v6 + 64);
  v13 = *(*(a3 + 16) - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v16 = (v15 + 65 + v5) & ~v15;
  v17 = (v15 + 65 + v6) & ~v15;
  (*(v13 + 24))(v16, v17);
  v18 = *(*(a3 + 24) - 8);
  (*(v18 + 24))((*(v14 + 40) + *(v18 + 80) + v16) & ~*(v18 + 80), (*(v14 + 40) + *(v18 + 80) + v17) & ~*(v18 + 80));
  return a1;
}

uint64_t ConfirmationDialogModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v76 = a3;
  v6 = *(a2 + 24);
  v62 = v6;
  v74 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v72 = *(v8 + 16);
  v73 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for StyleContextWriter<DialogActionStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<DialogActionStyleContext>, MEMORY[0x1E69803A8], MEMORY[0x1E69803A0], MEMORY[0x1E697F4C8]);
  v9 = type metadata accessor for ModifiedContent();
  v66 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49[-v10];
  v64 = *(a2 + 32);
  v12 = v64;
  v13 = lazy protocol witness table accessor for type StyleContextWriter<DialogActionStyleContext> and conformance StyleContextWriter<A>();
  v81[0] = v12;
  v81[1] = v13;
  v75 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v81);
  v63 = *(a2 + 40);
  v80[0] = v9;
  v80[1] = v6;
  v80[2] = WitnessTable;
  v80[3] = v63;
  v61 = type metadata accessor for ConfirmationDialogModifierCore(0, v80);
  v71 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v49[-v14];
  v57 = type metadata accessor for StaticIf();
  v68 = *(v57 - 8);
  v15 = MEMORY[0x1EEE9AC00](v57);
  v54 = &v49[-v16];
  swift_getWitnessTable(protocol conformance descriptor for ConfirmationDialogModifier<A, B>, a2, v15);
  v56 = type metadata accessor for _ViewModifier_Content();
  v59 = type metadata accessor for ModifiedContent();
  v69 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v53 = &v49[-v17];
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(255);
  v67 = type metadata accessor for ModifiedContent();
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v55 = &v49[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v60 = &v49[-v20];
  v52 = *v4;
  v21 = *(v4 + 1);
  v22 = *(v4 + 2);
  v51 = v4[24];
  v24 = *(v4 + 4);
  v23 = *(v4 + 5);
  LOBYTE(v6) = v4[48];
  v25 = *(v4 + 7);
  v50 = v4[64];

  outlined copy of Text.Storage(v24, v23, v6);

  View.styleContext<A>(_:)();
  v26 = &v4[*(a2 + 68)];
  v27 = v73;
  v28 = v62;
  (*(v74 + 16))(v73, v26, v62);
  v48 = v27;
  v29 = v58;
  ConfirmationDialogModifierCore.init(presentedValue:isPresented:title:titleVisibility:actions:message:)(v52, v21, v22, v51, v24, v23, v6, v25, v58, v50, v11, v48, v66, v28, WitnessTable, v63, type metadata accessor for ConfirmationDialogModifierCore);
  v30 = lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate();
  v31 = v54;
  v32 = v61;
  ViewModifier.requiring<A>(_:)(&type metadata for AllowPresentationPredicate, v61, &type metadata for AllowPresentationPredicate);
  (*(v71 + 8))(v29, v32);
  v33 = v56;
  v34 = swift_getWitnessTable(MEMORY[0x1E697FDF8], v56);
  v35 = v53;
  v36 = v33;
  v37 = v57;
  MEMORY[0x18D00A570](v31, v36, v57, v34);
  (*(v68 + 8))(v31, v37);
  v79[0] = v30;
  v79[1] = &protocol witness table for ConfirmationDialogModifierCore<A, B>;
  v79[2] = MEMORY[0x1E697E100];
  v38 = swift_getWitnessTable(MEMORY[0x1E6981CE0], v37, v79);
  v78[0] = v34;
  v78[1] = v38;
  v39 = v75;
  v40 = v59;
  v41 = swift_getWitnessTable(v75, v59, v78);
  v42 = v55;
  View.sharingPickerHost()(v40, v41);
  (*(v69 + 8))(v35, v40);
  IsSharingPicker = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v77[0] = v41;
  v77[1] = IsSharingPicker;
  v44 = v67;
  swift_getWitnessTable(v39, v67, v77);
  v45 = v60;
  static ViewBuilder.buildExpression<A>(_:)();
  v46 = *(v70 + 8);
  v46(v42, v44);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v46)(v45, v44);
}

uint64_t static FocusedValueModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a1@<X1>, void (*a2)(__int128 *__return_ptr)@<X2>, void *a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a1[3];
  v5 = a1[1];
  v26 = a1[2];
  v27 = v4;
  v6 = a1[3];
  v28 = a1[4];
  v7 = a1[1];
  v24 = *a1;
  v25 = v7;
  v8 = a1[4];
  v21 = v6;
  v22 = v8;
  v18 = v24;
  v29 = *(a1 + 20);
  v23 = *(a1 + 20);
  v19 = v5;
  v20 = v26;
  a2(&v14);
  v15 = v27;
  v16 = DWORD2(v27);
  *&v18 = v27;
  DWORD2(v18) = DWORD2(v27);
  result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  if (result)
  {
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v18 = v24;
    v19 = v25;
    v20 = v26;
    type metadata accessor for DefaultLayoutViewResponder();
    swift_allocObject();
    outlined init with copy of _ViewInputs(&v24, v17);
    v10 = DefaultLayoutViewResponder.init(inputs:)();
    v18 = v14;

    v11 = _ViewOutputs.viewResponders()();

    LODWORD(v18) = v11;
    *(&v18 + 1) = v10;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    _sSay7SwiftUI13ViewResponderCGMaTm_4(0, &lazy cache variable for type metadata for [ViewResponder], MEMORY[0x1E697E210], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type DefaultLayoutResponderFilter and conformance DefaultLayoutResponderFilter();

    Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v18) = 0;
    v12 = PreferencesOutputs.subscript.setter();
    *&v18 = v15;
    DWORD2(v18) = v16;
    MEMORY[0x1EEE9AC00](v12);
    outlined init with copy of PreferencesInputs(&v15, v17);
    PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  }

  v13 = *(&v14 + 1);
  *a3 = v14;
  a3[1] = v13;
  return result;
}

void type metadata accessor for _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type InterfaceIdiomPredicate<PadInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiomPredicate<PadInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>;
  if (!lazy protocol witness table cache variable for type InterfaceIdiomPredicate<PadInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>)
  {
    type metadata accessor for NullSheetAnchor<SheetPreference.Key>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<PadInterfaceIdiom>, MEMORY[0x1E697F278], MEMORY[0x1E697F270], MEMORY[0x1E69801E0]);
    result = swift_getWitnessTable(MEMORY[0x1E69801E8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiomPredicate<PadInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  }

  return result;
}

uint64_t static EnvironmentChangeModifier._makeView(modifier:inputs:body:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26[2] = a4;
  v27 = a3;
  v26[1] = a7;
  v42 = *MEMORY[0x1E69E9840];
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v26 - v12;
  v15 = type metadata accessor for Observer(0, a5, a6, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - v17;
  LODWORD(v17) = *a1;
  v41 = *a2;
  v19 = *(a2 + 2);
  v20 = *(a2 + 40);
  v38 = *(a2 + 24);
  v39 = v20;
  v40[0] = *(a2 + 56);
  *(v40 + 12) = *(a2 + 68);
  v31 = v17;
  type metadata accessor for EnvironmentChangeModifier(255, a5, a6, v21);
  type metadata accessor for _GraphValue();
  LODWORD(a2) = _GraphValue.value.getter();
  swift_beginAccess();
  LODWORD(a1) = *(v19 + 16);
  default argument 2 of Observer.init(modifier:environment:cycleDetector:lastValue:)(&v33);
  v28 = v33;
  v29 = DWORD2(v33);
  v30 = BYTE12(v33);
  (*(*(a5 - 8) + 56))(v13, 1, 1, a5);
  Observer.init(modifier:environment:cycleDetector:lastValue:)(a2, a1, &v28, v13, a5, a6, type metadata accessor for Observer, v18);
  v32[2] = v15;
  v32[3] = swift_getWitnessTable(protocol conformance descriptor for Observer<A>, v15);
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_7, v32, v15, MEMORY[0x1E69E73E0], v22, MEMORY[0x1E69E7410], v23);
  (*(v16 + 8))(v18, v15);
  v24 = AGGraphSetFlags();
  v33 = v41;
  v34 = v19;
  v35 = v38;
  v36 = v39;
  v37[0] = v40[0];
  *(v37 + 12) = *(v40 + 12);
  return v27(v24, &v33);
}

uint64_t View.onContinueUserActivity(_:perform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a3;
  v31 = a4;
  v29 = a1;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v7, v16, v14);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  (*(v12 + 32))(v19 + v17, v15, a5);
  v20 = (v19 + v18);
  v21 = v30;
  *v20 = v29;
  v20[1] = a2;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  v23 = v31;
  *v22 = v21;
  v22[1] = v23;
  type metadata accessor for PassthroughSubject<Any, Never>();
  v25 = v24;
  v26 = lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>, type metadata accessor for PassthroughSubject<Any, Never>, MEMORY[0x1E695BF88]);

  v32[0] = v25;
  v32[1] = a5;
  v32[2] = v26;
  v32[3] = a6;
  type metadata accessor for SubscriptionView(0, v32);
  result = default argument 0 of SceneBridgeReader.init(sceneBridge:handler:)();
  *a7 = result;
  *(a7 + 8) = v28 & 1;
  *(a7 + 16) = partial apply for closure #1 in View.onContinueUserActivity(_:perform:);
  *(a7 + 24) = v19;
  return result;
}

uint64_t sub_18BE6D3F0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t View.alert<A>(_:isPresented:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t (*a8)(__n128)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v53 = a8;
  v46 = a7;
  v57 = a6;
  v55 = a9;
  v56 = a11;
  v51 = a10;
  v54 = a13;
  v47 = a12;
  v52 = *(a12 - 8);
  v44 = a14;
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ModifiedContent();
  v48 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v45 = &v40 - v22;
  v23 = lazy protocol witness table accessor for type ActionsModifier and conformance ActionsModifier();
  v68[0] = a14;
  v68[1] = v23;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v21, v68);
  *&v58 = v21;
  *(&v58 + 1) = MEMORY[0x1E6981E70];
  *&v59 = WitnessTable;
  *(&v59 + 1) = MEMORY[0x1E6981E60];
  v49 = type metadata accessor for AlertModifier(0, &v58);
  v50 = *(v49 - 8);
  v24 = MEMORY[0x1EEE9AC00](v49);
  v26 = &v40 - v25;
  MEMORY[0x18D009CE0](&v58, v24);
  Text.assertUnstyled(_:options:)();
  v41 = a5;
  v65 = a5;
  v66 = v57;
  v27 = v46;
  v67 = v46;
  type metadata accessor for Binding<Bool>();
  MEMORY[0x18D00ACC0](&v64);
  v42 = v64;

  v28 = a1;
  v29 = a2;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  v31 = (v53)(v30);
  v32 = v45;
  v33 = v47;
  MEMORY[0x18D00A570](v31, v47, &unk_1EFFCFD30, v44);
  (*(v52 + 8))(v20, v33);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  *(&v39 + 1) = MEMORY[0x1E6981E60];
  *&v39 = WitnessTable;
  *(&v38 + 1) = MEMORY[0x1E6981E70];
  *&v38 = v48;
  v34 = AlertModifier.init(presentedValue:isPresented:title:actions:message:auxiliaryContent:representsError:)(v42, v41, v57, v27, v28, v29, a3 & 1, a4, v26, v32, v37, &v58, 0, v38, v39);
  v35 = v49;
  MEMORY[0x18D00A570](v26, v56, v49, v54, v34);
  return (*(v50 + 8))(v26, v35);
}

double closure #1 in View.onContinueUserActivity(_:perform:)@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  v17 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSUserActivity, 0x1E696B090);
  v23 = specialized static SceneBridge.sceneBridgePublisher(_:identifier:sceneBridge:)(v17, a3, a4, a1);
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a3;
  v18[5] = a4;
  type metadata accessor for PassthroughSubject<Any, Never>();
  v20 = v19;
  v21 = lazy protocol witness table accessor for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<Any, Never> and conformance PassthroughSubject<A, B>, type metadata accessor for PassthroughSubject<Any, Never>, MEMORY[0x1E695BF88]);
  View.onReceive<A>(_:perform:)(&v23, partial apply for closure #1 in closure #1 in View.onContinueUserActivity(_:perform:), v18, a7, v20, a8, v21, x8_0);

  return result;
}

uint64_t sub_18BE6DA70()
{

  return swift_deallocObject();
}

double View.navigationDestination<A, B>(for:destination:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17[0] = a2;
  v17[1] = a3;

  v16[0] = a5;
  v16[1] = a6;
  v16[2] = a8;
  v16[3] = a9;
  v14 = type metadata accessor for NavigationDestinationModifier(0, v16);
  MEMORY[0x18D00A570](v17, a4, v14, a7);

  return result;
}

uint64_t type metadata completion function for PlatformItemLabelView(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}