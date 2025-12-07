uint64_t sub_18C0E1074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0E112C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0E11D0()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0E1208()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  }

  outlined consume of SceneID(*(v0 + 128), *(v0 + 136), *(v0 + 144));

  return swift_deallocObject();
}

uint64_t sub_18C0E127C()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E1314()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18C0E135C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0E1398()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0E1464()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0E1528()
{
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  }

  outlined consume of SceneID(*(v0 + 120), *(v0 + 128), *(v0 + 136));
  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  if (*(v0 + 192))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 168));
  }

  v1 = *(v0 + 232);
  if (v1 != 255)
  {
    outlined consume of SceneID(*(v0 + 216), *(v0 + 224), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E15E4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E161C()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  outlined consume of SceneID(*(v0 + 136), *(v0 + 144), *(v0 + 152));

  return swift_deallocObject();
}

uint64_t sub_18C0E16A4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E16DC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PlaybackButton.Configuration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18C0E17F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PlaybackButton.Configuration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0E18D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = type metadata accessor for ScrollView(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  result = ScrollView.axes.getter(v5);
  *a4 = result;
  return result;
}

uint64_t sub_18C0E1914(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for ScrollView(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);
  return ScrollView.axes.setter(v4, v5);
}

__n128 sub_18C0E1960(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0E196C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = type metadata accessor for ScrollView(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a3);
  result = ScrollView.showsIndicators.getter(v5);
  *a4 = result & 1;
  return result;
}

uint64_t sub_18C0E19AC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for ScrollView(0, *(a3 + a4 - 16), *(a3 + a4 - 8), a4);
  return ScrollView.showsIndicators.setter(v4, v5);
}

uint64_t sub_18C0E1A54(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E697FEF0], MEMORY[0x1E697F4C8]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type StyleContextWriter<ScrollViewStyleContext> and conformance StyleContextWriter<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0E1B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for UnbridgedInspectorModifier.SplitWrapperModifier(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[16], v5);

  return swift_deallocObject();
}

uint64_t sub_18C0E1C08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for UnbridgedInspectorModifier.SplitWrapperModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for UnbridgedInspectorModifier<A>.SplitWrapperModifier, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for ContainerViewControllerRepresentable(255, v4, v5, v8);
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980750]);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980910]);
  v11 = type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.InspectorKey>, &type metadata for SheetPreference.InspectorKey, &protocol witness table for SheetPreference.InspectorKey, type metadata accessor for NullSheetAnchor);
  v16 = v15;
  v34[0] = &protocol witness table for ContainerViewControllerRepresentable<A>;
  v34[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceWritingModifier<A>();
  v17 = MEMORY[0x1E697E858];
  v33[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v34);
  v33[1] = lazy protocol witness table accessor for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>();
  v32[0] = swift_getWitnessTable(v17, v10, v33);
  v32[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>();
  v31[0] = swift_getWitnessTable(v17, v11, v32);
  v31[1] = &protocol witness table for UpdateBridgesToAllowedBehaviors;
  v30[0] = swift_getWitnessTable(v17, v12, v31);
  v30[1] = &protocol witness table for InspectorBarManagement;
  WitnessTable = swift_getWitnessTable(v17, v13, v30);
  v29[0] = WitnessTable;
  v29[1] = MEMORY[0x1E6980A30];
  v25 = v14;
  v26 = v16;
  v27 = swift_getWitnessTable(v17, v14, v29);
  v28 = lazy protocol witness table accessor for type NullSheetAnchor<SheetPreference.InspectorKey> and conformance NullSheetAnchor<A>();
  v19 = type metadata accessor for SheetPresentationModifier(255, &v25);
  v20 = type metadata accessor for ModifiedContent();
  v24[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v24[1] = swift_getWitnessTable(protocol conformance descriptor for SheetPresentationModifier<A, B>, v19);
  v21 = swift_getWitnessTable(v17, v20, v24);
  v25 = v20;
  v26 = v13;
  v27 = v21;
  v28 = WitnessTable;
  v22 = type metadata accessor for InspectorSplitView(255, &v25);
  return swift_getWitnessTable(protocol conformance descriptor for InspectorSplitView<A, B>, v22);
}

uint64_t sub_18C0E1FE4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E201C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Error();
  v6 = type metadata accessor for AsyncThrowingStream();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AsyncThrowingStream.Continuation();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_18C0E2180(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Error();
  v8 = type metadata accessor for AsyncThrowingStream();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AsyncThrowingStream.Continuation();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_18C0E22E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0E2318()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI46ClarityUIMutableApplicationSceneClientSettingsCAA0c13UIApplicationfgH8ProtocolA2aDP16navigationTitlesSay10Foundation4DataVGvgTW_0()
{
  v1 = [v0 otherSettings];
  v2 = static ClarityUIApplicationSceneClientSettingsProtocol.navigationTitles(otherSettings:)(v1);

  return v2;
}

uint64_t _s7SwiftUI46ClarityUIMutableApplicationSceneClientSettingsCAA0c13UIApplicationfgH8ProtocolA2aDP13chromeVisibleSbvgTW_0()
{
  v1 = [v0 otherSettings];
  v2 = static ClarityUIApplicationSceneClientSettingsProtocol.chromeVisible(otherSettings:)(v1);

  return v2 & 1;
}

uint64_t sub_18C0E23E4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E2430()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0E246C()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0E24A4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E24E4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E251C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E255C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E25A4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E25DC(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0E2644(uint64_t a1, double a2)
{
  v2 = *(a1 + 24);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

__n128 sub_18C0E26E8@<Q0>(uint64_t a1@<X8>)
{
  EnvironmentValues.listPadding.getter(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18C0E2768(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for ContentMarginModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0E27CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<ListPadding>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListPadding> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0E2850()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0E2888()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0E294C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E29A4()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0E29DC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0E2A34()
{
  type metadata accessor for EventListener<WheelEvent>(255);
  lazy protocol witness table accessor for type AnyGesture<CGSize> and conformance AnyGesture<A>(&lazy protocol witness table cache variable for type EventListener<WheelEvent> and conformance EventListener<A>, type metadata accessor for EventListener<WheelEvent>, MEMORY[0x1E697E128]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C0E2ADC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E2B14()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E2B84(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for StyleContextWriter<GroupedFormStyleContext>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type StyleContextWriter<GroupedFormStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<GroupedFormStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<GroupedFormStyleContext>, MEMORY[0x1E697F4D0]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0E2C58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for FormAccessoryModifier(255, a1[1], a1[3], a4);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v4;
  v8[1] = swift_getWitnessTable(protocol conformance descriptor for FormAccessoryModifier<A>, v5);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

uint64_t sub_18C0E2CEC(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type FormInfoActionModifier and conformance FormInfoActionModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0E2DB8()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E6980A08];
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], MEMORY[0x1E6980A08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], v2);
  v3 = *(type metadata accessor for ModifiedContent() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18C0E2F18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for FormAccessoryModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable(protocol conformance descriptor for FormAccessoryModifier<A>, v4);
  v6 = type metadata accessor for _ViewModifier_Content();
  swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C0E3030()
{

  outlined consume of Environment<Selector?>.Content(*(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

double sub_18C0E3104@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18C0E3110(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0E311C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<ButtonBorderShape>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type EnvironmentPropertyKey<ButtonBorderShapeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonBorderShape> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<ButtonBorderShape>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0E31D4()
{

  v1 = v0[13];
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  }

LABEL_5:
  if (v0[32] != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E3270()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E32A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v6 = vextq_s8(*a1, *a1, 8uLL);
  v7 = v1;
  v8 = *(a1 + 24);
  v4 = v8;
  type metadata accessor for AnimatedValueModifier(255, &v6);
  v2 = type metadata accessor for ModifiedContent();
  v5[0] = v4;
  v5[1] = &protocol witness table for AnimatedValueModifier<A, B, C>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v5);
}

uint64_t sub_18C0E33BC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E3400()
{
  outlined consume of AnimatedValueState<A>.PausedState<A>(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18C0E3438()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18C0E347C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t *_s7SwiftUI18AnimatedValueState33_90443A4CAB5B2CDBED1BA38C9D8D7AA8LLO06PausedE0Owcp_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of AnimatedValueState<A>.PausedState<A>(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_18C0E3534()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E356C()
{

  return swift_deallocObject();
}

unsigned int *sub_18C0E35CC@<X0>(unsigned int *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = *result == 2;
  v4 = (*result >> 8) & 1;
  v5 = HIBYTE(*result) & 1;
  if (*result == 2)
  {
    LOBYTE(v2) = 0;
    LOBYTE(v4) = 1;
    v6 = 0;
  }

  else
  {
    v6 = HIWORD(*result) & 1;
  }

  *a2 = v2 & 1;
  a2[1] = v4;
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  a2[2] = v6;
  a2[3] = v7;
  return result;
}

unsigned __int8 *sub_18C0E3610(unsigned __int8 *result, int *a2)
{
  if (result[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *result;
  if (result[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (result[3])
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v3 | v4 | v5;
  return result;
}

uint64_t sub_18C0E3658@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(result + 4);
  v3 = v2 == 2;
  v4 = (v2 >> 8) & 1;
  v5 = HIBYTE(v2) & 1;
  if (v2 == 2)
  {
    LOBYTE(v2) = 0;
    LOBYTE(v4) = 1;
    v6 = 0;
  }

  else
  {
    v6 = BYTE2(v2) & 1;
  }

  *a2 = v2 & 1;
  a2[1] = v4;
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  a2[2] = v6;
  a2[3] = v7;
  return result;
}

unsigned __int8 *sub_18C0E369C(unsigned __int8 *result, uint64_t a2)
{
  if (result[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *result;
  if (result[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (result[3])
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 4) = v3 | v4 | v5;
  return result;
}

uint64_t sub_18C0E370C()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E3774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Logger?(0, &lazy cache variable for type metadata for Environment<Binding<TabViewCustomization>?>, type metadata accessor for Binding<TabViewCustomization>?, MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_18C0E3864(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Logger?(0, &lazy cache variable for type metadata for Environment<Binding<TabViewCustomization>?>, type metadata accessor for Binding<TabViewCustomization>?, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 36) + 24) = (a2 - 1);
  }
}

uint64_t sub_18C0E3950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for Binding<TabViewCustomization>?(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0E39FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Binding<TabViewCustomization>?(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0E3AA4()
{
  if (*(v0 + 40) != 1)
  {
    swift_unknownObjectRelease();
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E3AE4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E3B1C()
{
  v1 = type metadata accessor for UIKitAdaptableTabView(0);
  v2 = (*(*(v1 - 8) + 80) + 41) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  v4 = v0 + v2;

  if (*(v0 + v2 + 56))
  {
  }

  if (*(v4 + 72) != 1)
  {
  }

  v5 = v4 + *(v1 + 28);
  type metadata accessor for Binding<TabViewCustomization>(0);
  v7 = v6;
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v8 = v5 + *(v7 + 32);
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v8, v9);
    type metadata accessor for TabViewCustomization(0);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E3D40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for _CoordinateSpaceModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for _CoordinateSpaceModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0E3DB0(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for CoordinateSpaceNameModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0E3E18(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v8[0] = &type metadata for ControlGroupStyleConfiguration.Content;
  v8[1] = v1;
  v8[2] = lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content();
  v8[3] = v2;
  type metadata accessor for StaticSourceWriter(255, v8);
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for _ConditionalContent();
  v7[0] = lazy protocol witness table accessor for type ResolvedControlGroup and conformance ResolvedControlGroup();
  v7[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v6[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v7);
  v6[1] = v2;
  return swift_getWitnessTable(MEMORY[0x1E697F968], v4, v6);
}

uint64_t sub_18C0E3EE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v12 = &type metadata for ControlGroupStyleConfiguration.Content;
  v13 = v1;
  v14 = lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Content and conformance ControlGroupStyleConfiguration.Content();
  v15 = v3;
  type metadata accessor for StaticSourceWriter(255, &v12);
  v5 = type metadata accessor for ModifiedContent();
  v6 = lazy protocol witness table accessor for type ControlGroupStyleConfiguration.Label and conformance ControlGroupStyleConfiguration.Label();
  v12 = &type metadata for ControlGroupStyleConfiguration.Label;
  v13 = v2;
  v14 = v6;
  v15 = v4;
  type metadata accessor for StaticSourceWriter(255, &v12);
  v7 = type metadata accessor for ModifiedContent();
  v11[0] = lazy protocol witness table accessor for type ResolvedControlGroup and conformance ResolvedControlGroup();
  v11[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v8 = MEMORY[0x1E697E858];
  v10[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v11);
  v10[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(v8, v7, v10);
}

uint64_t sub_18C0E3FE0()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI27WidgetAuxiliaryViewMetadataV8ProgressV4KindO18AbsoluteCodingKeys33_5D203C4BCF4ED90873E64430FDF30283LLOs0J3KeyAAsAKP11stringValueSSvgTW_0()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_18C0E4044()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E40BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_18C0E4184(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WidgetAuxiliaryViewMetadata.Text.Metadata.Kind(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_18C0E423C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18C0E42E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic.Named.Location(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0E438C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18C0E4448(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0E4500()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E455C(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v7[0] = &type metadata for AccessoryBarContent;
  v7[1] = v1;
  v7[2] = lazy protocol witness table accessor for type AccessoryBarContent and conformance AccessoryBarContent();
  v7[3] = v3;
  type metadata accessor for StaticSourceWriter(255, v7);
  v4 = type metadata accessor for ModifiedContent();
  v6[0] = v2;
  v6[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
}

uint64_t sub_18C0E45EC(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type _CustomDisabledHoverEffect and conformance _CustomDisabledHoverEffect();
  return swift_getWitnessTable(MEMORY[0x1E697E848], v3, v5);
}

uint64_t sub_18C0E4654()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AttributedTextSelection.Indices?(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 3)
      {
        return v14 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_18C0E4794(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for AttributedTextSelection.Indices?(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AttributedTextSelection.TypingAttributes(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_18C0E489C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AttributedTextSelection(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18C0E498C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AttributedTextSelection(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_18C0E4AD0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for Optional();
  v1 = type metadata accessor for AnySequence();
  v2 = MEMORY[0x1E69E69F0];

  return swift_getWitnessTable(v2, v1);
}

uint64_t sub_18C0E4B40(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for AttributeContainer();
  v6 = (*(*(v5 - 8) + 48))(a1, a2, v5);
  if (v6 >= 2)
  {
    return v6 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18C0E4BAC(uint64_t a1, int a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for AttributeContainer();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v6, a3, v7);
}

uint64_t sub_18C0E4C34(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    _s10Foundation3URLVSgMaTm_5(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = &a1[*(a3 + 20)];

    return v12(v13, a2, v11);
  }
}

_BYTE *sub_18C0E4D00(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    _s10Foundation3URLVSgMaTm_5(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = &v5[*(a4 + 20)];

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0E4DC4()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  if (*(v0 + 120) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 96), *(v0 + 104), *(v0 + 112));
  }

  if (*(v0 + 152))
  {
    outlined consume of Text.Storage(*(v0 + 128), *(v0 + 136), *(v0 + 144));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E4E74()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E4EB4(void *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v7[0] = MEMORY[0x1E69E73E0];
  v7[1] = v1;
  v7[2] = MEMORY[0x1E6982070];
  v7[3] = v2;
  type metadata accessor for AccessibilityProxyTransformModifier(255, v7);
  v4 = type metadata accessor for ModifiedContent();
  v6[0] = v3;
  v6[1] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
}

uint64_t sub_18C0E4F40()
{
  if (*(v0 + 16))
  {
  }

  v1 = *(v0 + 48);
  if (v1 != 251 && (v1 & 0xFC | 2) != 0xFE)
  {
    outlined consume of AccessibilityText.Storage(*(v0 + 32), *(v0 + 40), v1 & 1);
  }

  outlined consume of Environment<AppIntentExecutor?>.Content(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_18C0E4FC8()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  if (*(v0 + 104))
  {
    outlined consume of Text.Storage(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E5084()
{
  outlined consume of Environment<Selector?>.Content(*(v0 + 16), *(v0 + 24));
  outlined consume of Environment<Selector?>.Content(*(v0 + 32), *(v0 + 40));
  outlined consume of Environment<Selector?>.Content(*(v0 + 64), *(v0 + 72));
  outlined consume of Environment<Selector?>.Content(*(v0 + 80), *(v0 + 88));

  outlined consume of Environment<AnyShapeStyle?>.Content(*(v0 + 136), *(v0 + 144));
  outlined consume of Environment<(Color, Color)?>.Content(*(v0 + 152), *(v0 + 160), *(v0 + 168));
  outlined consume of Environment<Selector?>.Content(*(v0 + 176), *(v0 + 184));
  outlined consume of Environment<AnyShapeStyle?>.Content(*(v0 + 192), *(v0 + 200));
  outlined consume of Environment<Selector?>.Content(*(v0 + 208), *(v0 + 216));
  outlined consume of Environment<Selector?>.Content(*(v0 + 224), *(v0 + 232));

  return swift_deallocObject();
}

uint64_t sub_18C0E5168()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E51B8(uint64_t a1)
{
  v1 = *(a1 + 40);
  type metadata accessor for _PreferenceWritingModifier<PresentedSceneValueKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<PresentedSceneValueKey> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0E5300(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for TransformSceneListModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
}

uint64_t sub_18C0E542C(void *a1)
{
  v1 = a1[3];
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = swift_getAssociatedConformanceWitness();
  v4[1] = v1;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0E5500()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E5538(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for AccessibilityRotorModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for AccessibilityRotorModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0E55A8(void *a1)
{
  v1 = a1[2];
  v2 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12[1] = v2;
  v12[2] = AssociatedTypeWitness;
  v12[3] = type metadata accessor for AccessibilityRotorEntry(255, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v12[4] = swift_getWitnessTable(MEMORY[0x1E69E6338], v2);
  v12[5] = AssociatedConformanceWitness;
  v6 = type metadata accessor for ForEach();
  v12[0] = &protocol witness table for AccessibilityRotorEntry<A>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, v6, v12);
  type metadata accessor for AccessibilityRotorModifier(255, v6, WitnessTable, v8);
  v9 = type metadata accessor for ModifiedContent();
  v11[0] = v1;
  v11[1] = &protocol witness table for AccessibilityRotorModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v9, v11);
}

uint64_t sub_18C0E5708(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v12 = type metadata accessor for Array();
  v13 = v1;
  v14 = type metadata accessor for AccessibilityRotorEntry(255, v1, v3, v4);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6338], v12);
  v16 = v3;
  v5 = type metadata accessor for ForEach();
  v11 = &protocol witness table for AccessibilityRotorEntry<A>;
  v6 = swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, v5, &v11);
  type metadata accessor for AccessibilityRotorModifier(255, v5, v6, v7);
  v8 = type metadata accessor for ModifiedContent();
  v10[0] = v2;
  v10[1] = &protocol witness table for AccessibilityRotorModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v8, v10);
}

uint64_t sub_18C0E5818(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for AccessibilityRotorModifier<ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for AccessibilityRotorModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0E5884(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  type metadata accessor for AccessibilityRotorModifier(255, a1[2], a1[5], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for AccessibilityRotorModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0E58F8(void *a1)
{
  v1 = a1[3];
  v2 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12[1] = v2;
  v12[2] = AssociatedTypeWitness;
  v12[3] = type metadata accessor for AccessibilityRotorEntry(255, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v12[4] = swift_getWitnessTable(MEMORY[0x1E69E6338], v2);
  v12[5] = AssociatedConformanceWitness;
  v6 = type metadata accessor for ForEach();
  v12[0] = &protocol witness table for AccessibilityRotorEntry<A>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, v6, v12);
  type metadata accessor for AccessibilityRotorModifier(255, v6, WitnessTable, v8);
  v9 = type metadata accessor for ModifiedContent();
  v11[0] = v1;
  v11[1] = &protocol witness table for AccessibilityRotorModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v9, v11);
}

uint64_t sub_18C0E5A5C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = a1[6];
  v12 = type metadata accessor for Array();
  v13 = v1;
  v14 = type metadata accessor for AccessibilityRotorEntry(255, v1, v3, v4);
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E6338], v12);
  v16 = v3;
  v5 = type metadata accessor for ForEach();
  v11 = &protocol witness table for AccessibilityRotorEntry<A>;
  v6 = swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, v5, &v11);
  type metadata accessor for AccessibilityRotorModifier(255, v5, v6, v7);
  v8 = type metadata accessor for ModifiedContent();
  v10[0] = v2;
  v10[1] = &protocol witness table for AccessibilityRotorModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v8, v10);
}

uint64_t sub_18C0E5B70(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for AccessibilityRotorModifier<ForEach<Range<Int>, Int, AccessibilityRotorEntry<Never>>>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for AccessibilityRotorModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0E5BE8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E5C50()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E5CB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for FormStyleWritingModifier(255, a1[1], a1[3], a4);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v4;
  v8[1] = swift_getWitnessTable(protocol conformance descriptor for FormStyleWritingModifier<A>, v5);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

uint64_t sub_18C0E5D50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for FormStyleWritingModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for FormStyleWritingModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for FormStyleModifier(255, v4, v5, v8);
  v9 = type metadata accessor for ModifiedContent();
  v11[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v11[1] = &protocol witness table for FormStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v9, v11);
}

uint64_t sub_18C0E5E30(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0E5EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SwipeActionTabs(255, *a1, *(a1 + 8), a4);
  v7 = *(a1 + 16);
  return swift_getWitnessTable(protocol conformance descriptor for <> SwipeActionTabs<A, B>, v5, &v7);
}

uint64_t sub_18C0E5F00(int8x16_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ContextMenuTabs(255, a1->i64[1], a1->i64[0], a4);
  v7 = vextq_s8(a1[1], a1[1], 8uLL);
  return swift_getWitnessTable(protocol conformance descriptor for <> ContextMenuTabs<A, B>, v5, &v7);
}

uint64_t sub_18C0E5F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0E5FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabContextMenuKey.Storage.Guts(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0E603C(void *a1)
{
  v1 = a1[3];
  swift_getAssociatedTypeWitness();
  type metadata accessor for _EnvironmentKeyTransformModifier<SymbolVariants>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548], MEMORY[0x1E6980B20]);
  v2 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<SwipeActionsStyleContext>, MEMORY[0x1E6980428], MEMORY[0x1E6980420], MEMORY[0x1E697F4C8]);
  v3 = type metadata accessor for ModifiedContent();
  v17[0] = v1;
  v17[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>();
  v4 = MEMORY[0x1E697E858];
  v16[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v17);
  v16[1] = lazy protocol witness table accessor for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>();
  WitnessTable = swift_getWitnessTable(v4, v3, v16);
  type metadata accessor for SwipeActionsModifier(255, v3, WitnessTable, v6);
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SwipeActionsArePresent>, &type metadata for SwipeActionsArePresent, &protocol witness table for SwipeActionsArePresent, MEMORY[0x1E697FDB8]);
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(255);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SwipeActionsUseTraitKeyInput>, lazy protocol witness table accessor for type SwipeActionsUseTraitKeyInput and conformance SwipeActionsUseTraitKeyInput, &type metadata for SwipeActionsUseTraitKeyInput, MEMORY[0x1E697FD28]);
  v10 = type metadata accessor for ModifiedContent();
  v15[0] = swift_getAssociatedConformanceWitness();
  v15[1] = &protocol witness table for SwipeActionsModifier<A>;
  v14[0] = swift_getWitnessTable(v4, v7, v15);
  v14[1] = lazy protocol witness table accessor for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>();
  v13[0] = swift_getWitnessTable(v4, v8, v14);
  v13[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v12[0] = swift_getWitnessTable(v4, v9, v13);
  v12[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<SwipeActionsUseTraitKeyInput> and conformance ViewInputFlagModifier<A>();
  return swift_getWitnessTable(v4, v10, v12);
}

uint64_t sub_18C0E62E8(void *a1)
{
  v1 = a1[2];
  swift_getAssociatedTypeWitness();
  type metadata accessor for StyleContextWriter<SwipeActionsStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
  v2 = type metadata accessor for ModifiedContent();
  v10[0] = v1;
  v10[1] = lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>();
  v3 = MEMORY[0x1E697E858];
  swift_getWitnessTable(MEMORY[0x1E697E858], v2, v10);
  v4 = type metadata accessor for ZStack();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981880], v4);
  type metadata accessor for PlatformItemContextMenuModifier(255, v4, WitnessTable, v6);
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = swift_getAssociatedConformanceWitness();
  v9[1] = &protocol witness table for PlatformItemContextMenuModifier<A>;
  return swift_getWitnessTable(v3, v7, v9);
}

__n128 sub_18C0E6508(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0E6520(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = v1;
  v3 = type metadata accessor for TabSection<>.TabSectionView(255, v5);
  return swift_getWitnessTable(protocol conformance descriptor for TabSection<A, B, C, D><>.TabSectionView, v3);
}

uint64_t sub_18C0E657C()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 64);
  v10[0] = *(v0 + 16);
  v1 = v10[0];
  v10[1] = v2;
  v4 = *(v0 + 48);
  v11 = *(v0 + 32);
  v9 = v11;
  v12 = v4;
  v13 = v3;
  v5 = type metadata accessor for TabSection<>.TabSectionView(0, v10);
  v6 = v5 - 8;
  v7 = v0 + ((*(*(v5 - 8) + 80) + 72) & ~*(*(v5 - 8) + 80));
  (*(*(v1 - 8) + 8))(v7 + *(v5 + 76), v1);
  (*(*(v2 - 8) + 8))(v7 + *(v6 + 88), v2);
  (*(*(v9 - 8) + 8))(v7 + *(v6 + 92));
  return swift_deallocObject();
}

uint64_t sub_18C0E66E8(void *a1)
{
  v1 = a1[4];
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for ModifiedContent();
  _s7SwiftUI21ViewInputFlagModifierVyAA27AccessibilityShowsLabelIconVGMaTm_0(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityShowsLabelIcon>, lazy protocol witness table accessor for type AccessibilityShowsLabelIcon and conformance AccessibilityShowsLabelIcon, &type metadata for AccessibilityShowsLabelIcon, MEMORY[0x1E697FD28]);
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for ModifiedContent();
  v34[0] = v1;
  v34[1] = &protocol witness table for UpdateDefaultTabFill;
  v6 = MEMORY[0x1E697E858];
  v33[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v34);
  v33[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>();
  v32[0] = swift_getWitnessTable(v6, v3, v33);
  v32[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v31[0] = swift_getWitnessTable(v6, v4, v32);
  v31[1] = &protocol witness table for AccessibilityDetachedPropertyWriterModifier;
  WitnessTable = swift_getWitnessTable(v6, v5, v31);
  v25 = MEMORY[0x1E69806B0];
  v26 = v5;
  v27 = &type metadata for TabItem.TraitKey;
  v28 = MEMORY[0x1E69806A0];
  v29 = WitnessTable;
  v30 = &protocol witness table for TabItem.TraitKey;
  type metadata accessor for PlatformItemTraitWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ContainerValueWritingModifier<TabItemLabel_v0?>(255);
  type metadata accessor for ModifiedContent();
  v8 = MEMORY[0x1E697FDB8];
  type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsSectionHeaderTraitKey>, MEMORY[0x1E6980208], MEMORY[0x1E6980200], MEMORY[0x1E697FDB8]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for StyleContextWriter<SectionHeaderStyleContext>, MEMORY[0x1E6980570], MEMORY[0x1E6980568], MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for TagValueTraitKey();
  v11 = MEMORY[0x1E697EB68];
  swift_getWitnessTable(MEMORY[0x1E697EB68], v10);
  type metadata accessor for _TraitWritingModifier();
  type metadata accessor for ModifiedContent();
  v12 = type metadata accessor for Optional();
  v24 = AssociatedConformanceWitness;
  swift_getWitnessTable(MEMORY[0x1E69E7C78], v12, &v24);
  v13 = type metadata accessor for TagValueTraitKey();
  swift_getWitnessTable(v11, v13);
  type metadata accessor for _TraitWritingModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _TraitWritingModifier<IsSectionHeaderTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsCompactTabRepresentationTraitKey>, &type metadata for IsCompactTabRepresentationTraitKey, &protocol witness table for IsCompactTabRepresentationTraitKey, v8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  v14 = type metadata accessor for TupleView();
  v15 = type metadata accessor for Group();
  v23 = swift_getWitnessTable(MEMORY[0x1E6981F48], v14);
  v16 = swift_getWitnessTable(MEMORY[0x1E6981600], v15, &v23);
  v25 = v15;
  v26 = &type metadata for TabSectionIdentifiersTraitKey;
  v27 = v16;
  v28 = &protocol witness table for TabSectionIdentifiersTraitKey;
  swift_getOpaqueTypeMetadata2();
  _s7SwiftUI21ViewInputFlagModifierVyAA27AccessibilityShowsLabelIconVGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<TabSectionStyleContext>, lazy protocol witness table accessor for type TabSectionStyleContext and conformance TabSectionStyleContext, &type metadata for TabSectionStyleContext, MEMORY[0x1E697F4C8]);
  v17 = type metadata accessor for ModifiedContent();
  v18 = type metadata accessor for StaticIf();
  v19 = lazy protocol witness table accessor for type InAdaptableTabViewContext and conformance InAdaptableTabViewContext();
  v25 = v15;
  v26 = &type metadata for TabSectionIdentifiersTraitKey;
  v27 = v16;
  v28 = &protocol witness table for TabSectionIdentifiersTraitKey;
  v22[0] = swift_getOpaqueTypeConformance2();
  v22[1] = lazy protocol witness table accessor for type StyleContextWriter<TabSectionStyleContext> and conformance StyleContextWriter<A>();
  v21[0] = v19;
  v21[1] = swift_getWitnessTable(v6, v17, v22);
  v21[2] = swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v18, v21);
}

uint64_t sub_18C0E6CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for _EnvironmentKeyWritingModifier<PlaybackButton._StyleStorage>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PlaybackButton._StyleStorage> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PlaybackButton._StyleStorage> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<PlaybackButton._StyleStorage>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t _s7SwiftUI21SortedArrayDictionaryVyxq_GSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SortedArrayDictionary<A, B>, a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI21SortedArrayDictionaryVyxq_GSlAASl5index_8offsetBy07limitedH05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SortedArrayDictionary<A, B>, a4);

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

uint64_t _s7SwiftUI21SortedArrayDictionaryVyxq_GSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SortedArrayDictionary<A, B>, a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

__n128 sub_18C0E6F3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0E6F50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for NavigationStackStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for NavigationStackStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0E6FC0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id _s7SwiftUI17AccessibilityCoreOAAE12NotificationO12ValueChangedVAA0cdE0A2aHP4infoAE4InfoVvgTW_0@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  a1[3] = swift_getObjectType();
  *a1 = v4;

  return v4;
}

uint64_t sub_18C0E7090()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E70C8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E7100()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  if (*(v0 + 104))
  {
    outlined consume of Text.Storage(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E719C()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0E71D4()
{
  if (*(v0 + 48) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  }

  if (*(v0 + 80))
  {
    outlined consume of Text.Storage(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E7250()
{
  type metadata accessor for _ContiguousArrayStorage<(String, Any)>(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for PlatformItemList.Item(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    goto LABEL_40;
  }

  v4 = *(v2 + 192);
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v6 = *(v2 + 72);
    if (v6 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(v2 + 64), v6);
      v4 = *(v2 + 192);
      v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v5 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(v2 + 176), *(v2 + 184), v4, *(v2 + 200));
    }

    swift_unknownObjectRelease();
  }

  if (*(v2 + 264))
  {

    v7 = *(v2 + 272);
    if (v7 >= 2)
    {
    }
  }

  v8 = *(v2 + 336);
  if (v8 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(v2 + 304), *(v2 + 312), *(v2 + 320), *(v2 + 328), v8, *(v2 + 344), *(v2 + 352), *(v2 + 360), *(v2 + 368), *(v2 + 376), *(v2 + 384), *(v2 + 392), *(v2 + 400));
  }

  v9 = *(v2 + 416);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_21;
    }
  }

  if (*(v2 + 432))
  {
  }

  if (*(v2 + 448))
  {
  }

LABEL_21:

  if (*(v2 + 512))
  {
  }

  if (*(v2 + 816))
  {

    v10 = *(v2 + 624);
    if (v10)
    {
      if (v10 == 1)
      {
LABEL_28:
        if (*(v2 + 776) != 1)
        {
        }

        goto LABEL_31;
      }

      __swift_destroy_boxed_opaque_existential_1((v2 + 600));
    }

    goto LABEL_28;
  }

LABEL_31:
  v11 = *(v2 + 864);
  if (!v11)
  {
    goto LABEL_34;
  }

  if (v11 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 840));
LABEL_34:
    if (*(v2 + 880))
    {
    }
  }

  v12 = v2 + *(v3 + 112);
  v13 = type metadata accessor for CommandOperation(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = v12 + *(v13 + 20);
    outlined consume of Text.Storage(*v14, *(v14 + 8), *(v14 + 16));

    v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
    if (*(v12 + *(v13 + 24)))
    {
    }
  }

LABEL_40:

  return swift_deallocObject();
}

uint64_t sub_18C0E7648()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E7680()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E7700()
{
  v1 = (type metadata accessor for CommandGroupPlacement(0) - 8);
  v2 = (*(*v1 + 80) + 17) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, _EnvironmentKeyTransformModifier<Bool>>(0, v4);
  v6 = (v2 + v3 + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v7 = v0 + v2;
  outlined consume of Text.Storage(*v7, *(v7 + 8), *(v7 + 16));

  v8 = v1[7];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  type metadata accessor for Button<Label<Text, Image>>(0);
  v11 = v10;
  v12 = v0 + v6 + *(v10 + 36);
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v12, *(v12 + 8), *(v12 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v12 + 40), *(v12 + 48), *(v12 + 56), *(v12 + 64), *(v12 + 72), *(v12 + 74));
      v14 = *(type metadata accessor for LinkDestination() + 24);
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 8))(v12 + v14, v15);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  outlined consume of Text.Storage(*(v0 + v6 + *(v11 + 40)), *(v0 + v6 + *(v11 + 40) + 8), *(v0 + v6 + *(v11 + 40) + 16));

  type metadata accessor for ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>(0);

  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<Label<Text, Image>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>(0, v16);

  return swift_deallocObject();
}

uint64_t sub_18C0E7A58()
{
  v1 = type metadata accessor for CommandOperation(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v4 = v0 + v3 + *(v1 + 20);
  outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));

  v5 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  if (*(v0 + v3 + *(v2 + 32)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E7B7C()
{
  outlined consume of Environment<Binding<Visibility>?>.Content(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 33));

  return swift_deallocObject();
}

uint64_t sub_18C0E7BE8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E7C20()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0E7C58()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E7C98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandsList.Item.Value(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0E7D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandsList.Item.Value(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0E7D98(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0E7F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 110);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0E7FD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 110) = -a2;
  }

  else
  {
    type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0E80A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCC0]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_18C0E8198(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 72) = (a2 + 1);
  }

  else
  {
    type metadata accessor for Environment<CellConfiguration>.Content(0, &lazy cache variable for type metadata for Environment<CellConfiguration>, type metadata accessor for CellConfiguration, MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0E829C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<SymbolVariants>, MEMORY[0x1E697E548], MEMORY[0x1E6980B20]);
  v3 = type metadata accessor for ModifiedContent();
  _s7SwiftUI18StyleContextWriterVyAA012SwipeActionscD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextWriter<SwipeActionsStyleContext>, MEMORY[0x1E6980428], MEMORY[0x1E6980420], MEMORY[0x1E697F4C8]);
  v4 = type metadata accessor for ModifiedContent();
  v16[0] = v2;
  v16[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<SymbolVariants> and conformance _EnvironmentKeyTransformModifier<A>();
  v5 = MEMORY[0x1E697E858];
  v15[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v16);
  v15[1] = lazy protocol witness table accessor for type StyleContextWriter<SwipeActionsStyleContext> and conformance StyleContextWriter<A>();
  WitnessTable = swift_getWitnessTable(v5, v4, v15);
  type metadata accessor for SwipeActionsModifier(255, v4, WitnessTable, v7);
  v8 = type metadata accessor for ModifiedContent();
  _s7SwiftUI18StyleContextWriterVyAA012SwipeActionscD0VGMaTm_0(255, &lazy cache variable for type metadata for _TraitWritingModifier<SwipeActionsArePresent>, &type metadata for SwipeActionsArePresent, &protocol witness table for SwipeActionsArePresent, MEMORY[0x1E697FDB8]);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(255);
  v10 = type metadata accessor for ModifiedContent();
  v14[0] = v1;
  v14[1] = &protocol witness table for SwipeActionsModifier<A>;
  v13[0] = swift_getWitnessTable(v5, v8, v14);
  v13[1] = lazy protocol witness table accessor for type _TraitWritingModifier<SwipeActionsArePresent> and conformance _TraitWritingModifier<A>();
  v12[0] = swift_getWitnessTable(v5, v9, v13);
  v12[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable(v5, v10, v12);
}

uint64_t sub_18C0E8484()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E84BC()
{
  if (v0[5])
  {

    if (v0[7])
    {
    }

    if (v0[10])
    {

      v1 = v0[12];
      if (v1)
      {
        if (v1 == 1)
        {
          goto LABEL_10;
        }
      }

      if (v0[14])
      {
      }
    }
  }

LABEL_10:
  if (v0[19])
  {

    if (v0[21])
    {
    }

    if (v0[24])
    {

      v2 = v0[26];
      if (v2)
      {
        if (v2 == 1)
        {
          goto LABEL_19;
        }
      }

      if (v0[28])
      {
      }
    }
  }

LABEL_19:

  return swift_deallocObject();
}

uint64_t sub_18C0E85B4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E85EC()
{
  v1 = type metadata accessor for PlatformItemList.Item(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v2 + 192);
  v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v5 = *(v2 + 72);
    if (v5 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(v2 + 64), v5);
      v3 = *(v2 + 192);
      v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v4 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(v2 + 176), *(v2 + 184), v3, *(v2 + 200));
    }

    swift_unknownObjectRelease();
  }

  if (*(v2 + 264))
  {

    v6 = *(v2 + 272);
    if (v6 >= 2)
    {
    }
  }

  v7 = *(v2 + 336);
  if (v7 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(v2 + 304), *(v2 + 312), *(v2 + 320), *(v2 + 328), v7, *(v2 + 344), *(v2 + 352), *(v2 + 360), *(v2 + 368), *(v2 + 376), *(v2 + 384), *(v2 + 392), *(v2 + 400));
  }

  v8 = *(v2 + 416);
  if (v8)
  {
    if (v8 == 1)
    {
      goto LABEL_20;
    }
  }

  if (*(v2 + 432))
  {
  }

  if (*(v2 + 448))
  {
  }

LABEL_20:

  if (*(v2 + 512))
  {
  }

  if (*(v2 + 816))
  {

    v9 = *(v2 + 624);
    if (v9)
    {
      if (v9 == 1)
      {
LABEL_27:
        if (*(v2 + 776) != 1)
        {
        }

        goto LABEL_30;
      }

      __swift_destroy_boxed_opaque_existential_1((v2 + 600));
    }

    goto LABEL_27;
  }

LABEL_30:
  v10 = *(v2 + 864);
  if (v10)
  {
    if (v10 == 1)
    {
      goto LABEL_35;
    }

    __swift_destroy_boxed_opaque_existential_1((v2 + 840));
  }

  if (*(v2 + 880))
  {
  }

LABEL_35:

  v11 = v2 + *(v1 + 112);
  v12 = type metadata accessor for CommandOperation(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = v11 + *(v12 + 20);
    outlined consume of Text.Storage(*v13, *(v13 + 8), *(v13 + 16));

    v14 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 8))(v13 + v14, v15);
    if (*(v11 + *(v12 + 24)))
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E8994()
{
  if (v0[3])
  {
  }

  if (v0[5])
  {
  }

  if (v0[7])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E8A28(void *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0E8AFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<OnDeleteTraitKey>, &type metadata for OnDeleteTraitKey, &protocol witness table for OnDeleteTraitKey);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<OnDeleteTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<OnDeleteTraitKey>, &type metadata for OnDeleteTraitKey, &protocol witness table for OnDeleteTraitKey);
  return swift_getWitnessTable(MEMORY[0x1E697E838], v2, v4);
}

uint64_t sub_18C0E8BB0(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<OnDeleteDefaultTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsDeleteDisabledTraitKey>, &type metadata for IsDeleteDisabledTraitKey, &protocol witness table for IsDeleteDisabledTraitKey);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<OnDeleteDefaultTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<IsDeleteDisabledTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<IsDeleteDisabledTraitKey>, &type metadata for IsDeleteDisabledTraitKey, &protocol witness table for IsDeleteDisabledTraitKey);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0E8C64()
{
  v1 = (type metadata accessor for DeleteInteraction(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = type metadata accessor for IndexSet();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  if (*(v0 + v2 + v1[8]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E8D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 36);
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_18C0E8DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 36);
  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

__n128 sub_18C0E8E8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__int128 *_s7SwiftUI29ObservableDocumentBoxModifierVwcp_0(__int128 *a1, __int128 *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  return a1;
}

__n128 sub_18C0E8EE0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_18C0E8EF4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E8F2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = type metadata accessor for _ConditionalContent();
  v4[0] = v1;
  v4[1] = MEMORY[0x1E6981580];
  return swift_getWitnessTable(MEMORY[0x1E697F968], v2, v4);
}

uint64_t sub_18C0E8F9C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0E8FD4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E901C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E9054()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E908C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E90CC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0E910C(void *a1)
{
  v1 = type metadata accessor for VStack();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = swift_getWitnessTable(MEMORY[0x1E6981870], v1);
  v4[1] = &protocol witness table for PresentationEnvironmentWritingModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0E91D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a1[3];
  v6 = type metadata accessor for SystemInspectorRoot(255, *a1, a1[2], a4);
  v8 = type metadata accessor for InspectorColumnView(255, v4, v5, v7);
  v9 = type metadata accessor for _VariadicView.Tree();
  v10 = type metadata accessor for ModifiedContent();
  v13[0] = swift_getWitnessTable(protocol conformance descriptor for SystemInspectorRoot<A>, v6);
  v13[1] = swift_getWitnessTable(protocol conformance descriptor for InspectorColumnView<A>, v8);
  v12[0] = swift_getWitnessTable(MEMORY[0x1E697E308], v9, v13);
  v12[1] = &protocol witness table for AttachInspectorPresentationEnvironment;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v10, v12);
}

uint64_t sub_18C0E92EC(void *a1)
{
  v1 = a1[1];
  v14[0] = *a1;
  v14[1] = MEMORY[0x1E697FFD0];
  v14[2] = v1;
  v14[3] = MEMORY[0x1E697FFC8];
  type metadata accessor for BridgedInspectorRepresentable(255, v14);
  v2 = type metadata accessor for ModifiedContent();
  v3 = type metadata accessor for ModifiedContent();
  type metadata accessor for UnbridgedInspectorModifier<ModifiedContent<_UnaryViewAdaptor<_VariadicView_Children>, _FlexFrameLayout>>(255);
  v4 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for StaticIf();
  v13[0] = &protocol witness table for BridgedInspectorRepresentable<A, B>;
  v13[1] = lazy protocol witness table accessor for type IgnoresNonTabBarSafeArea and conformance IgnoresNonTabBarSafeArea();
  v6 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v13);
  v12[0] = v1;
  v12[1] = MEMORY[0x1E697EBF8];
  v11[0] = swift_getWitnessTable(v6, v3, v12);
  v11[1] = &protocol witness table for UnbridgedInspectorModifier<A>;
  v8 = swift_getWitnessTable(v6, v4, v11);
  v10[0] = MEMORY[0x1E6981CD0];
  v10[1] = WitnessTable;
  v10[2] = v8;
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v5, v10);
}

uint64_t sub_18C0E9450(uint64_t a1)
{
  v1 = *(a1 + 8);
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(255, &lazy cache variable for type metadata for StyleContextWriter<InspectorStyleContext>, MEMORY[0x1E697FC48], MEMORY[0x1E697FC40], MEMORY[0x1E697F4C8]);
  v2 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255);
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>(255);
  v5 = type metadata accessor for ModifiedContent();
  v11[0] = v1;
  v11[1] = lazy protocol witness table accessor for type StyleContextWriter<InspectorStyleContext> and conformance StyleContextWriter<A>();
  v6 = MEMORY[0x1E697E858];
  v10[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v11);
  v10[1] = lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>, MEMORY[0x1E6980A18]);
  v9[0] = swift_getWitnessTable(v6, v3, v10);
  v9[1] = MEMORY[0x1E697EBF8];
  v8[0] = swift_getWitnessTable(v6, v4, v9);
  v8[1] = lazy protocol witness table accessor for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>(&lazy protocol witness table cache variable for type _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>> and conformance _BackgroundPreferenceModifier<A, B>, type metadata accessor for _BackgroundPreferenceModifier<ContainerBackgroundKeys.PresentationKey, _ConditionalContent<ModifiedContent<ModifiedContent<AnyView, _SafeAreaRegionsIgnoringLayout>, _PreferenceWritingModifier<ContainerBackgroundKeys.HostTransparency>>, EmptyView>>, MEMORY[0x1E6980968]);
  return swift_getWitnessTable(v6, v5, v8);
}

__n128 sub_18C0E9638(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_18C0E966C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_18C0E9688(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for _AccessibilityIgnoresInvertColorsViewModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0E96F0(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  type metadata accessor for _ValueActionModifier2<Date>(255);
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for Optional();
  v23 = v1;
  swift_getWitnessTable(MEMORY[0x1E69E7C80], v5, &v23);
  v6 = type metadata accessor for _ValueActionModifier2();
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  v9 = lazy protocol witness table accessor for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule();
  v10 = type metadata accessor for TimelineView(255, &type metadata for AnimationTimelineSchedule, v8, v9);
  v11 = type metadata accessor for ModifiedContent();
  v12 = MEMORY[0x1E697FDE0];
  v22[0] = v2;
  v22[1] = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type _ValueActionModifier2<Date> and conformance _ValueActionModifier2<A>, type metadata accessor for _ValueActionModifier2<Date>, MEMORY[0x1E697FDE0]);
  v13 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v22);
  v15 = MEMORY[0x1E69805D0];
  v21[0] = WitnessTable;
  v21[1] = MEMORY[0x1E69805D0];
  v20[0] = swift_getWitnessTable(v13, v4, v21);
  v20[1] = swift_getWitnessTable(v12, v6);
  v19[0] = swift_getWitnessTable(v13, v7, v20);
  v19[1] = v15;
  v18 = swift_getWitnessTable(v13, v8, v19);
  v17[0] = swift_getWitnessTable(protocol conformance descriptor for <> TimelineView<A, B>, v10, &v18);
  v17[1] = MEMORY[0x1E697FB50];
  return swift_getWitnessTable(v13, v11, v17);
}

uint64_t sub_18C0E9910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(type metadata accessor for AdapterState(0, v5, a3, a4) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Optional() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  swift_unknownObjectRelease();
  v11 = v4 + v7;
  v14 = type metadata accessor for AdapterState.PlaybackState(0, v5, v12, v13);
  if ((*(*(v14 - 1) + 48))(v4 + v7, 1, v14))
  {
    v15 = *(v5 - 8);
  }

  else
  {
    v16 = type metadata accessor for Date();
    v17 = *(*(v16 - 8) + 8);
    v17(v11, v16);
    v17(v11 + v14[7], v16);
    v15 = *(v5 - 8);
    v18 = *(v15 + 8);
    v18(v11 + v14[8], v5);
    type metadata accessor for KeyframeTimeline();

    v18(v11 + v14[9], v5);
  }

  if (!(*(v15 + 48))(v4 + v10, 1, v5))
  {
    (*(v15 + 8))(v4 + v10, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E9BE0()
{
  v1 = *(v0 + 32);
  type metadata accessor for Optional();
  v2 = (type metadata accessor for Binding() - 8);
  v3 = (*(*v2 + 80) + 64) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  type metadata accessor for AdapterState(255, v1, v5, v6);
  v7 = type metadata accessor for Binding();
  v8 = (v3 + v4 + *(*(v7 - 8) + 80)) & ~*(*(v7 - 8) + 80);
  swift_unknownObjectRelease();
  v9 = v0 + v3;

  v10 = v2[10];
  v11 = *(v1 - 8);
  if (!(*(v11 + 48))(v9 + v10, 1, v1))
  {
    (*(v11 + 8))(v9 + v10, v1);
  }

  v12 = v0 + v8 + *(v7 + 32);
  v15 = type metadata accessor for AdapterState.PlaybackState(0, v1, v13, v14);
  if (!(*(*(v15 - 1) + 48))(v12, 1, v15))
  {
    v16 = type metadata accessor for Date();
    v17 = *(*(v16 - 8) + 8);
    v17(v12, v16);
    v17(v12 + v15[7], v16);
    v18 = *(v11 + 8);
    v18(v12 + v15[8], v1);
    type metadata accessor for KeyframeTimeline();

    v18(v12 + v15[9], v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0E9EE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TextField(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for TextField<A>, v4);
}

uint64_t sub_18C0E9F6C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<DialogSeverity>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<DialogSeverity> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DialogSeverity> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DialogSeverity>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EA058(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Calendar();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for TimeZone();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 32);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_18C0EA1BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Calendar();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for TimeZone();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 32) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_18C0EA310()
{
  v1 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 74));
      v4 = *(type metadata accessor for LinkDestination() + 24);
      v5 = type metadata accessor for URL();
      (*(*(v5 - 8) + 8))(v2 + v4, v5);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_18C0EA490(void *a1)
{
  v1 = a1[3];
  swift_getAssociatedTypeWitness();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = swift_getAssociatedConformanceWitness();
  v4[1] = v1;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EA5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  type metadata accessor for Binding<AttributedString>(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 <= 7)
  {
    v15 = 7;
  }

  else
  {
    v15 = *(a1 + *(a3 + 24));
  }

  v16 = v15 - 7;
  if (v14 >= 2)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

void sub_18C0EA6FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Binding<SearchFieldState>(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    type metadata accessor for Binding<AttributedString>(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 7;
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_18C0EA85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 44);
  type metadata accessor for SearchFieldState?(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_18C0EA8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 44);
  type metadata accessor for SearchFieldState?(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_18C0EA968()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EA9A0()
{
  outlined consume of Environment<Bool>.Content(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

void *sub_18C0EA9E0@<X0>(uint64_t a2@<X8>)
{
  result = EnvironmentValues.contentTransition.getter();
  *a2 = v4;
  *(a2 + 12) = v6;
  *(a2 + 8) = v5;
  *(a2 + 14) = v7;
  return result;
}

void *sub_18C0EAA54@<X0>(uint64_t a2@<X8>)
{
  result = EnvironmentValues.contentTransition.getter();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
  *(a2 + 14) = v7;
  return result;
}

uint64_t sub_18C0EAAB0@<X0>(_BYTE *a3@<X8>)
{
  result = EnvironmentValues.contentTransitionAddsDrawingGroup.getter();
  *a3 = result & 1;
  return result;
}

uint64_t sub_18C0EAB1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<Text.Transition>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Text.Transition> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EAB8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextEditor.Storage.AttributedText(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0EABF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextEditor.Storage.AttributedText(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0EAC70()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0EACB0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EACE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for TextEditor.Storage.AttributedText(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18C0EAD8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for TextEditor.Storage.AttributedText(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0EAE2C()
{

  return swift_deallocObject();
}

__n128 sub_18C0EAEF0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0EAFE8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EB030()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0EB068()
{
  swift_weakDestroy();

  swift_weakDestroy();

  return swift_deallocObject();
}

void _s7SwiftUI40ClarityUIMutableApplicationSceneSettingsCAA0c13UIApplicationfG8ProtocolA2aDP17navigationBarHostAA010NavigationkL0OvgTW_0(uint64_t a1@<X8>)
{
  v3 = [v1 otherSettings];
  static ClarityUIApplicationSceneSettingsProtocol.navigationBarHost(otherSettings:)(v3, lazy protocol witness table accessor for type NavigationBarHost and conformance NavigationBarHost, 0, &type metadata for NavigationBarHost, a1);
}

uint64_t _s7SwiftUI40ClarityUIMutableApplicationSceneSettingsCAA0c13UIApplicationfG8ProtocolA2aDP18isAdminModeEnabledSbvgTW_0()
{
  v1 = [v0 otherSettings];
  v2 = static ClarityUIApplicationSceneSettingsProtocol.isAdminModeEnabled(otherSettings:)(v1);

  return v2 & 1;
}

void _s7SwiftUI40ClarityUIMutableApplicationSceneSettingsCAA0c13UIApplicationfG8ProtocolA2aDP10listLayoutAA19MultimodalListStyleV0K0OvgTW_0(uint64_t a1@<X8>)
{
  v3 = [v1 otherSettings];
  static ClarityUIApplicationSceneSettingsProtocol.navigationBarHost(otherSettings:)(v3, lazy protocol witness table accessor for type MultimodalListStyle.Layout and conformance MultimodalListStyle.Layout, 2u, &type metadata for MultimodalListStyle.Layout, a1);
}

uint64_t _s7SwiftUI40ClarityUIMutableApplicationSceneSettingsCAA0c13UIApplicationfG8ProtocolA2aDP16areBadgesEnabledSbvgTW_0()
{
  v1 = [v0 otherSettings];
  v2 = static ClarityUIApplicationSceneSettingsProtocol.areBadgesEnabled(otherSettings:)(v1);

  return v2 & 1;
}

uint64_t sub_18C0EB254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LabeledContent(255, *a1, *(a1 + 8), a4);
  v7 = *(a1 + 16);
  return swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v5, &v7);
}

uint64_t sub_18C0EB2B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for ButtonStyleContainerModifier<PlatterButtonStyle>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<UseImageBackground>, lazy protocol witness table accessor for type UseImageBackground and conformance UseImageBackground, &type metadata for UseImageBackground, MEMORY[0x1E697FD28]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<UseImageBackground> and conformance ViewInputFlagModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EB364(uint64_t a1)
{
  v1 = *(a1 + 16);
  v5[0] = *(a1 + 8);
  v5[1] = MEMORY[0x1E6981E70];
  v5[2] = MEMORY[0x1E6981E70];
  v5[3] = MEMORY[0x1E6981E60];
  v5[4] = MEMORY[0x1E6981E60];
  type metadata accessor for NavigationPropertiesModifier(255, v5);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for NavigationPropertiesModifier<A, B, C>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EB3F4(uint64_t a1)
{
  v1 = *(a1 + 24);
  v5[0] = *(a1 + 8);
  v5[1] = MEMORY[0x1E6981E70];
  v5[2] = MEMORY[0x1E6981E70];
  v5[3] = MEMORY[0x1E6981E60];
  v5[4] = MEMORY[0x1E6981E60];
  type metadata accessor for NavigationPropertiesModifier(255, v5);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for NavigationPropertiesModifier<A, B, C>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EB484(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5[0] = *(a1 + 8);
  v5[1] = MEMORY[0x1E6981E70];
  v5[2] = MEMORY[0x1E6981E70];
  v5[3] = MEMORY[0x1E6981E60];
  v5[4] = MEMORY[0x1E6981E60];
  type metadata accessor for NavigationPropertiesModifier(255, v5);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for NavigationPropertiesModifier<A, B, C>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EB514(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for NavigationPropertiesModifier<URL, EmptyView, EmptyView>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for NavigationPropertiesModifier<A, B, C>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EB580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0EB5EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0EB65C()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v15 = *(v0 + 16);
  v2 = v15;
  v16 = v1;
  v17 = *(v0 + 32);
  v14 = v17;
  v18 = v3;
  v19 = v4;
  v5 = (type metadata accessor for TransferableProvider(0, &v15) - 8);
  v6 = (*(*v5 + 80) + 64) & ~*(*v5 + 80);
  (*(*(v2 - 8) + 8))(v0 + v6, v2);
  v7 = v0 + v6 + v5[19];
  v15 = v1;
  v16 = v14;
  *&v17 = v3;
  *(&v17 + 1) = v4;
  v8 = type metadata accessor for SharePreview(0, &v15);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    if (*(v7 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    if (*(v7 + 56))
    {
      outlined consume of Text.Storage(*(v7 + 32), *(v7 + 40), *(v7 + 48));
    }

    v9 = *(v8 + 56);
    v10 = *(v1 - 8);
    if (!(*(v10 + 48))(v7 + v9, 1, v1))
    {
      (*(v10 + 8))(v7 + v9, v1);
    }

    v11 = *(v8 + 60);
    v12 = *(v14 - 8);
    if (!(*(v12 + 48))(v7 + v11, 1, v14))
    {
      (*(v12 + 8))(v7 + v11, v14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18C0EBA60()
{

  v1 = v0[14];
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  }

LABEL_5:
  if (v0[33] != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0EBB08(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowSpacing> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EBBB4(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for ToolbarRemovingModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0EBC38()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EBC7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for SafeAreaBarModifier(255, a1[1], a1[3], a4);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v4;
  v8[1] = swift_getWitnessTable(protocol conformance descriptor for SafeAreaBarModifier<A>, v5);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

void *sub_18C0EBD1C@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.defaultColorScheme.getter();
  *a2 = v4;
  return result;
}

void sub_18C0EBDD8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CollectorInteractionBox.collectorInteraction.setter(v1);
}

uint64_t sub_18C0EBE0C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EBE4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for SafeAreaBarModifier(255, *a1, v4, a4);
  swift_getWitnessTable(protocol conformance descriptor for SafeAreaBarModifier<A>, v5);
  v6 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for _EnvironmentKeyWritingModifier<CollectorInteractionBox?>(255);
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(255, &lazy cache variable for type metadata for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>, &type metadata for ScrollPocketCollectorInteractionRepresentable, &protocol witness table for ScrollPocketCollectorInteractionRepresentable, type metadata accessor for CoreInteractionRepresentableAdaptor);
  v9 = v8;
  v22 = v8;
  v32[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
  v32[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CollectorInteractionBox?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<CollectorInteractionBox?>, MEMORY[0x1E6980A18]);
  v10 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v32);
  v11 = lazy protocol witness table accessor for type CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>();
  v26 = v7;
  v27 = v9;
  v28 = MEMORY[0x1E69E6370];
  v29 = WitnessTable;
  v30 = v11;
  v31 = MEMORY[0x1E69E6380];
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ColorScheme>, MEMORY[0x1E697DBD8], MEMORY[0x1E6980B20]);
  v12 = type metadata accessor for ModifiedContent();
  type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(255, &lazy cache variable for type metadata for CoreInteractionRepresentableAdaptor<ScrollPocketBarInteractionRepresentable>, &unk_1EFFF1EA8, &protocol witness table for ScrollPocketBarInteractionRepresentable, type metadata accessor for CoreInteractionRepresentableAdaptor);
  v14 = v13;
  v25[0] = v4;
  v25[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ColorScheme> and conformance _EnvironmentKeyTransformModifier<A>();
  v15 = swift_getWitnessTable(v10, v12, v25);
  v16 = lazy protocol witness table accessor for type CoreInteractionRepresentableAdaptor<ScrollPocketBarInteractionRepresentable> and conformance CoreInteractionRepresentableAdaptor<A>();
  v26 = v12;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CoreInteractionRepresentableAdaptor<ScrollPocketCollectorInteractionRepresentable>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag>, MEMORY[0x1E6980A98], MEMORY[0x1E6980A90], MEMORY[0x1E697FD28]);
  v17 = type metadata accessor for ModifiedContent();
  v26 = v12;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v24[0] = swift_getOpaqueTypeConformance2();
  v24[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<ShouldAttachScrollEdgeEffectTag> and conformance ViewInputFlagModifier<A>();
  swift_getWitnessTable(v10, v17, v24);
  v18 = type metadata accessor for _InsetViewModifier();
  v19 = type metadata accessor for ModifiedContent();
  v26 = v7;
  v27 = v22;
  v28 = MEMORY[0x1E69E6370];
  v29 = WitnessTable;
  v30 = v11;
  v31 = MEMORY[0x1E69E6380];
  v23[0] = swift_getOpaqueTypeConformance2();
  v23[1] = swift_getWitnessTable(MEMORY[0x1E697F598], v18);
  return swift_getWitnessTable(v10, v19, v23);
}

uint64_t sub_18C0EC1F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<TextInputReturnBehavior>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputReturnBehavior> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EC360()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EC398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for ToolbarStorage.SearchItem?(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 56);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0EC444(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    type metadata accessor for ToolbarStorage.SearchItem?(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 56);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0EC4EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0EC524()
{
  v1 = *(v0 + 32);
  v20[0] = *(v0 + 16);
  v20[1] = v1;
  v2 = type metadata accessor for ToolbarReader.ToolbarConfiguration(0, v20);
  v3 = (*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80);

  v4 = v0 + v3;

  if (*(v0 + v3 + 24))
  {
  }

  v5 = *(v4 + 96);
  if (v5)
  {
    if (v5 == 1)
    {
      goto LABEL_9;
    }

    outlined consume of Text.Storage(*(v4 + 72), *(v4 + 80), *(v4 + 88));
  }

  if (*(v4 + 104) != 1)
  {
  }

LABEL_9:
  v6 = v4 + *(v2 + 56);
  v7 = type metadata accessor for ToolbarStorage.SearchItem(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {

    _sSay7SwiftUI14ToolbarStorageV5EntryVGMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    v9 = *(v8 + 32);
    v10 = v9 + *(type metadata accessor for SearchFieldState(0) + 36);
    v11 = type metadata accessor for AttributedString();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);

    v12 = v6 + v7[6];
    v13 = *(v12 + 8);
    if (v13 != 255)
    {
      outlined consume of PlatformItemCollection.Storage(*v12, v13 & 1);
    }

    v14 = v6 + v7[7];
    v15 = *(v14 + 8);
    if (v15 != 255)
    {
      outlined consume of PlatformItemCollection.Storage(*v14, v15 & 1);
    }

    outlined consume of Text.Storage(*(v6 + v7[8]), *(v6 + v7[8] + 8), *(v6 + v7[8] + 16));

    v16 = v6 + v7[10];
    if (*v16)
    {
    }

    v17 = v6 + v7[11];
    if (*v17)
    {
    }

    v18 = v6 + v7[13];
    if (*v18)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18C0EC860(uint64_t a1)
{
  type metadata accessor for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_18C0EC8BC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_18C0EC8C8(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_18C0EC950()
{
  type metadata accessor for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>();
  lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<Bool>, <<opaque return type of Gesture.combined<A, B>(with:body:)>>.0>, MEMORY[0x1E697E860]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C0ECA0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = type metadata accessor for EventFilter();
  type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>(255);
  v5 = MEMORY[0x1E697E860];
  v18 = v2;
  v19 = v6;
  v20 = v3;
  v21 = lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, MEMORY[0x1E697E860]);
  v7 = type metadata accessor for EndedByWrapper(255, &v18);
  type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(255);
  v9 = v8;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for EndedByWrapper<A, B>, v7);
  v11 = lazy protocol witness table accessor for type AttributedTextFormatting.Transferable and conformance AttributedTextFormatting.Transferable(&lazy protocol witness table cache variable for type ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, v5);
  v18 = v7;
  v19 = v9;
  v20 = v1;
  v21 = WitnessTable;
  v22 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = swift_getWitnessTable(MEMORY[0x1E697DCE0], v4);
  v18 = v7;
  v19 = v9;
  v20 = v1;
  v21 = WitnessTable;
  v22 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v4;
  v19 = OpaqueTypeMetadata2;
  v20 = v13;
  v21 = OpaqueTypeConformance2;
  v15 = type metadata accessor for ModifierGesture();
  v16 = swift_getWitnessTable(v5, v15);
  v18 = v15;
  v19 = v16;
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_18C0ECC1C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_18C0ECC38()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ECC90()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ECCC8@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_18C0ECD04(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type MultimodalNavigationChromeModifier and conformance MultimodalNavigationChromeModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0ECD68(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for ScrollsUnderMultimodalNavigationChromeModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0ECECC()
{
  outlined consume of Environment<Selector?>.Content(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_18C0ECF80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>>(255);
  v3 = type metadata accessor for _ClipEffect();
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for _ShadowView(255, v1, v2, v5);
  v6 = type metadata accessor for ModifiedContent();
  v15[0] = &protocol witness table for _ShadowView<A>;
  v15[1] = MEMORY[0x1E697E5C0];
  v7 = MEMORY[0x1E697E858];
  swift_getWitnessTable(MEMORY[0x1E697E858], v6, v15);
  v8 = type metadata accessor for _BackgroundModifier();
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v14[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ZStack<TupleView<(_ShapeView<Rectangle, Color>, ModifiedContent<_ShapeView<Rectangle, TintShapeStyle>, _OpacityEffect>?)>>, _OpacityEffect>, _BackgroundStyleModifier<_OpacityShapeStyle<Material>>> and conformance <> ModifiedContent<A, B>();
  v14[1] = swift_getWitnessTable(MEMORY[0x1E697DDB0], v3);
  v13[0] = swift_getWitnessTable(v7, v4, v14);
  v13[1] = swift_getWitnessTable(MEMORY[0x1E697F940], v8);
  v12[0] = swift_getWitnessTable(v7, v9, v13);
  v12[1] = MEMORY[0x1E6980318];
  return swift_getWitnessTable(v7, v10, v12);
}

uint64_t sub_18C0ED11C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_7;
    }

    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 48) != 1)
  {
  }

LABEL_7:

  return swift_deallocObject();
}

double sub_18C0ED204@<D0>(uint64_t a1@<X0>, uint64_t (**a2)(unsigned __int8 *a1)@<X8>)
{
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  a2[1] = v5;

  return result;
}

uint64_t sub_18C0ED274(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for SliderStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for SliderStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0ED300()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ED358()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ED390()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ED3D0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ED408()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ED448()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0ED480()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ED4D0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0ED510()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  if (*(v0 + 112))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  }

  if (*(v0 + 144))
  {
  }

  if (*(v0 + 168))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0ED5CC()
{

  return swift_deallocObject();
}

__n128 sub_18C0ED614(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0ED658(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255);
  v3 = type metadata accessor for ModifiedContent();
  v11[0] = v1;
  v11[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
  v4 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v11);
  v10[0] = v3;
  v10[1] = MEMORY[0x1E6981E70];
  v10[2] = WitnessTable;
  v10[3] = MEMORY[0x1E6981E60];
  v6 = type metadata accessor for ConfirmationDialogModifier(255, v10);
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = v2;
  v9[1] = swift_getWitnessTable(protocol conformance descriptor for ConfirmationDialogModifier<A, B>, v6);
  return swift_getWitnessTable(v4, v7, v9);
}

uint64_t sub_18C0ED740(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 40);
  type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255);
  v3 = type metadata accessor for ModifiedContent();
  v11[0] = v2;
  v11[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
  v4 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v11);
  v10[0] = v3;
  v10[1] = MEMORY[0x1E6981E70];
  v10[2] = WitnessTable;
  v10[3] = MEMORY[0x1E6981E60];
  v6 = type metadata accessor for ConfirmationDialogModifier(255, v10);
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = v1;
  v9[1] = swift_getWitnessTable(protocol conformance descriptor for ConfirmationDialogModifier<A, B>, v6);
  return swift_getWitnessTable(v4, v7, v9);
}

uint64_t sub_18C0ED82C(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255);
  v5 = type metadata accessor for ModifiedContent();
  v12[0] = v3;
  v12[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
  v6 = MEMORY[0x1E697E858];
  v11[0] = v5;
  v11[1] = v2;
  v11[2] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v12);
  v11[3] = v4;
  v7 = type metadata accessor for ConfirmationDialogModifier(255, v11);
  v8 = type metadata accessor for ModifiedContent();
  v10[0] = v1;
  v10[1] = swift_getWitnessTable(protocol conformance descriptor for ConfirmationDialogModifier<A, B>, v7);
  return swift_getWitnessTable(v6, v8, v10);
}

uint64_t sub_18C0ED910(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = a1[6];
  v4 = a1[7];
  type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255);
  v5 = type metadata accessor for ModifiedContent();
  v12[0] = v3;
  v12[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
  v6 = MEMORY[0x1E697E858];
  v11[0] = v5;
  v11[1] = v1;
  v11[2] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v12);
  v11[3] = v4;
  v7 = type metadata accessor for ConfirmationDialogModifier(255, v11);
  v8 = type metadata accessor for ModifiedContent();
  v10[0] = v2;
  v10[1] = swift_getWitnessTable(protocol conformance descriptor for ConfirmationDialogModifier<A, B>, v7);
  return swift_getWitnessTable(v6, v8, v10);
}

uint64_t sub_18C0ED9F8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = type metadata accessor for Optional();
  type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255);
  v4 = type metadata accessor for ModifiedContent();
  v13 = v2;
  v12[0] = swift_getWitnessTable(MEMORY[0x1E6982090], v3, &v13);
  v12[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
  v5 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v12);
  v11[0] = v4;
  v11[1] = MEMORY[0x1E6981E70];
  v11[2] = WitnessTable;
  v11[3] = MEMORY[0x1E6981E60];
  v7 = type metadata accessor for ConfirmationDialogModifier(255, v11);
  v8 = type metadata accessor for ModifiedContent();
  v10[0] = v1;
  v10[1] = swift_getWitnessTable(protocol conformance descriptor for ConfirmationDialogModifier<A, B>, v7);
  return swift_getWitnessTable(v5, v8, v10);
}

uint64_t sub_18C0EDB1C(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = type metadata accessor for Optional();
  type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255);
  v4 = type metadata accessor for ModifiedContent();
  v13 = v2;
  v12[0] = swift_getWitnessTable(MEMORY[0x1E6982090], v3, &v13);
  v12[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
  v5 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v12);
  v11[0] = v4;
  v11[1] = MEMORY[0x1E6981E70];
  v11[2] = WitnessTable;
  v11[3] = MEMORY[0x1E6981E60];
  v7 = type metadata accessor for ConfirmationDialogModifier(255, v11);
  v8 = type metadata accessor for ModifiedContent();
  v10[0] = v1;
  v10[1] = swift_getWitnessTable(protocol conformance descriptor for ConfirmationDialogModifier<A, B>, v7);
  return swift_getWitnessTable(v5, v8, v10);
}

uint64_t sub_18C0EDC48(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v4 = type metadata accessor for Optional();
  type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255);
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for Optional();
  v16 = v1;
  v7 = MEMORY[0x1E6982090];
  v15[0] = swift_getWitnessTable(MEMORY[0x1E6982090], v4, &v16);
  v15[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
  v8 = MEMORY[0x1E697E858];
  v14 = v3;
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v15);
  v13[3] = swift_getWitnessTable(v7, v6, &v14);
  v9 = type metadata accessor for ConfirmationDialogModifier(255, v13);
  v10 = type metadata accessor for ModifiedContent();
  v12[0] = v2;
  v12[1] = swift_getWitnessTable(protocol conformance descriptor for ConfirmationDialogModifier<A, B>, v9);
  return swift_getWitnessTable(v8, v10, v12);
}

uint64_t sub_18C0EDD98(void *a1)
{
  v1 = a1[5];
  v2 = a1[7];
  v3 = a1[8];
  v4 = type metadata accessor for Optional();
  type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255);
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for Optional();
  v16 = v2;
  v7 = MEMORY[0x1E6982090];
  v15[0] = swift_getWitnessTable(MEMORY[0x1E6982090], v4, &v16);
  v15[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
  v8 = MEMORY[0x1E697E858];
  v14 = v3;
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v15);
  v13[3] = swift_getWitnessTable(v7, v6, &v14);
  v9 = type metadata accessor for ConfirmationDialogModifier(255, v13);
  v10 = type metadata accessor for ModifiedContent();
  v12[0] = v1;
  v12[1] = swift_getWitnessTable(protocol conformance descriptor for ConfirmationDialogModifier<A, B>, v9);
  return swift_getWitnessTable(v8, v10, v12);
}

uint64_t sub_18C0EDF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Binding<AttributedString>?>, type metadata accessor for Binding<AttributedString>?, MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

void sub_18C0EE018(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s7SwiftUI11EnvironmentV7ContentOyAA7BindingVy10Foundation16AttributedStringVGSg_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Binding<AttributedString>?>, type metadata accessor for Binding<AttributedString>?, MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }
}

uint64_t sub_18C0EE104(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = a1[2];
  v2 = type metadata accessor for ResolvedContentUnavailableView(255, v4);
  return swift_getWitnessTable(protocol conformance descriptor for ResolvedContentUnavailableView<A, B, C>, v2);
}

void sub_18C0EE1B8()
{
  if (MEMORY[0x1E69E7D58])
  {
    type metadata accessor for Mutex<Set<String>>(0);
  }
}

uint64_t sub_18C0EE1F4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EE22C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18C0EE2BC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18C0EE318()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18C0EE368()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18C0EE3D0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EE458()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0EE500(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<ListItemReuseIdentifierTrait>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<ListItemReuseIdentifierTrait> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EE574()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0EE5AC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EE5EC()
{

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0EE670()
{
  v1 = v0[3];
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_7;
    }
  }

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  }

LABEL_7:

  return swift_deallocObject();
}

uint64_t sub_18C0EE6F8()
{
  v1 = *(v0 + 144);
  if (v1 <= 3)
  {
    if (*(v0 + 144) > 1u)
    {
      if (v1 != 2)
      {
        if (v1 != 3)
        {
          goto LABEL_33;
        }

        goto LABEL_19;
      }

      if (*(v0 + 64))
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 40));
      }

      outlined consume of SceneID(*(v0 + 120), *(v0 + 128), *(v0 + 136));
      goto LABEL_33;
    }
  }

  else
  {
    if (*(v0 + 144) <= 5u)
    {
      if (v1 != 4)
      {
        if (v1 != 5)
        {
          goto LABEL_33;
        }

        outlined consume of SceneID(*(v0 + 16), *(v0 + 24), *(v0 + 32));
        if (*(v0 + 48) >= 3uLL)
        {
        }

        goto LABEL_19;
      }

LABEL_32:

      goto LABEL_33;
    }

    if (v1 != 6)
    {
      if (v1 != 7)
      {
        if (v1 != 8)
        {
          goto LABEL_33;
        }

        outlined consume of Text.Storage(*(v0 + 40), *(v0 + 48), *(v0 + 56));

        goto LABEL_19;
      }

      if (*(v0 + 40))
      {
      }

      if (*(v0 + 80))
      {
        outlined consume of Text.Storage(*(v0 + 56), *(v0 + 64), *(v0 + 72));
      }

      if (*(v0 + 96))
      {
      }

      if (*(v0 + 112))
      {
      }

      goto LABEL_32;
    }
  }

  if (*(v0 + 48))
  {
    outlined consume of Text.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  }

  if (*(v0 + 64))
  {
LABEL_19:
  }

LABEL_33:
  outlined consume of SceneID(*(v0 + 152), *(v0 + 160), *(v0 + 168));

  if (!*(v0 + 488))
  {
    goto LABEL_41;
  }

  v2 = *(v0 + 296);
  if (!v2)
  {
    goto LABEL_37;
  }

  if (v2 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 272));
LABEL_37:
  }

  if (*(v0 + 448) != 1)
  {
  }

LABEL_41:

  if (*(v0 + 584))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0EE9AC()
{
  if (*(v0 + 56) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0EEA0C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EEA50(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for CommandsRemovedModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v5);
}

uint64_t sub_18C0EEAB4(void *a1, double a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for CommandsModifier(255, v2, v3, v6);
  v7 = type metadata accessor for ModifiedContent();
  v10[0] = v4;
  v10[1] = &protocol witness table for CommandsRemovedModifier;
  v9[0] = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v10);
  v9[1] = &protocol witness table for CommandsModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
}

__n128 sub_18C0EEBFC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0EEC5C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Optional() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, v1))
  {
    (*(v4 + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0EED7C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_18C0EEEBC@<X0>(_BYTE *a1@<X8>)
{
  result = FileDocumentBox.isEditable.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C0EEF54()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EEF98(uint64_t a1)
{
  v1 = *(a1 + 24);
  type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v3 = type metadata accessor for _ConditionalContent();
  v6[0] = v1;
  v6[1] = lazy protocol witness table accessor for type StyleContextWriter<DocumentStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<DocumentConfiguration?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<DocumentConfiguration?>, MEMORY[0x1E6980A18]);
  v5[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v6);
  v5[1] = MEMORY[0x1E6981580];
  return swift_getWitnessTable(MEMORY[0x1E697F968], v3, v5);
}

uint64_t sub_18C0EF0A4(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _ViewModifier_Content<WidgetCurvesContentModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<WidgetCurvedContentAllowed>, lazy protocol witness table accessor for type WidgetCurvedContentAllowed and conformance WidgetCurvedContentAllowed, &type metadata for WidgetCurvedContentAllowed, MEMORY[0x1E697FD28]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<WidgetCurvedContentAllowed> and conformance ViewInputFlagModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EF14C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EF190()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EF1C8()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0EF204()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0EF23C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0EF308()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0EF440()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EF478(int8x16_t *a1)
{
  v2 = a1->i64[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[0] = MEMORY[0x1E6981E70];
  v6[1] = AssociatedTypeWitness;
  v6[2] = v2;
  v6[3] = MEMORY[0x1E6981E60];
  v7 = vextq_s8(a1[2], a1[2], 8uLL);
  v4 = type metadata accessor for TokenField(255, v6);
  return swift_getWitnessTable(protocol conformance descriptor for TokenField<A, B, C>, v4);
}

uint64_t sub_18C0EF514(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0EF5B0(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_3(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0EF68C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchBoundProperty<AttributedString>(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0EF6F8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchBoundProperty<AttributedString>(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0EF7B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EF820()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EF868()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EF8A0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EF9BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for InferredToolbarModifier<AllToolbarEdges>(255, &lazy cache variable for type metadata for InferredToolbarModifier<AllToolbarEdges>, &type metadata for AllToolbarEdges, &protocol witness table for AllToolbarEdges, type metadata accessor for InferredToolbarModifier);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type InferredToolbarModifier<AllToolbarEdges> and conformance InferredToolbarModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0EFA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for InferredToolbarModifier(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_18C0EFB58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = type metadata accessor for InferredToolbarModifier(255, *a1, v4, a4);
  swift_getWitnessTable("%", v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for InferredToolbarModifier.OnScrollStateChange(255, v5, v4, v8);
  v9 = type metadata accessor for ModifiedContent();
  v32 = v5;
  v33 = &type metadata for TopToolbarEdges;
  v34 = v4;
  v35 = &protocol witness table for TopToolbarEdges;
  v10 = type metadata accessor for EdgesPredicate(255, &v32);
  type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  v11 = type metadata accessor for StaticIf();
  v12 = type metadata accessor for ModifiedContent();
  v32 = v5;
  v33 = &type metadata for BottomToolbarEdges;
  v34 = v4;
  v35 = &protocol witness table for BottomToolbarEdges;
  v13 = type metadata accessor for EdgesPredicate(255, &v32);
  type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>(255);
  v23 = type metadata accessor for StaticIf();
  v24 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v31[0] = WitnessTable;
  v31[1] = &protocol witness table for InferredToolbarModifier<A>.OnScrollStateChange;
  v14 = MEMORY[0x1E697E858];
  v15 = swift_getWitnessTable(MEMORY[0x1E697E858], v9, v31);
  v16 = swift_getWitnessTable(protocol conformance descriptor for EdgesPredicate<A, B>, v10);
  v17 = MEMORY[0x1E697F598];
  v30[0] = v16;
  v30[1] = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, ModifiedContent<EmptyView, _FrameLayout>>>, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>, MEMORY[0x1E697F598]);
  v30[2] = MEMORY[0x1E697E100];
  v18 = MEMORY[0x1E6981CE0];
  v29[0] = v15;
  v29[1] = swift_getWitnessTable(MEMORY[0x1E6981CE0], v11, v30);
  v19 = swift_getWitnessTable(v14, v12, v29);
  v28[0] = swift_getWitnessTable(protocol conformance descriptor for EdgesPredicate<A, B>, v13);
  v28[1] = lazy protocol witness table accessor for type HStack<TupleView<(ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>> and conformance _InsetViewModifier<A>, type metadata accessor for _InsetViewModifier<ModifiedContent<_UnaryViewAdaptor<_ConditionalContent<ModifiedContent<VStack<TupleView<(ModifiedContent<Divider, _OpacityEffect>?, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>, TupleView<(Spacer, ForEach<[ToolbarStorage.Entry], ToolbarStorage.Entry.ID, BarItemView>, Spacer)>?, ForEach<ArraySlice<ToolbarStorage.Entry>, ToolbarStorage.Entry.ID, BarItemView>)>>, _FlexFrameLayout>, _FrameLayout>, _PaddingLayout>, _BackgroundStyleModifier<AnyShapeStyle>>, ModifiedContent<Divider, _OpacityEffect>?)>>, _TraitWritingModifier<TransitionTraitKey>>, ModifiedContent<EmptyView, _FrameLayout>>>, StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>>>, v17);
  v28[2] = MEMORY[0x1E697E100];
  v27[0] = v19;
  v27[1] = swift_getWitnessTable(v18, v23, v28);
  v20 = swift_getWitnessTable(v14, v24, v27);
  v32 = v5;
  v33 = v24;
  v34 = v4;
  v35 = v20;
  type metadata accessor for ToolbarReader(255, &v32);
  v21 = type metadata accessor for StaticIf();
  v26[0] = lazy protocol witness table accessor for type EnableInferredToolbar and conformance EnableInferredToolbar();
  v26[1] = &protocol witness table for ToolbarReader<A, B>;
  v26[2] = WitnessTable;
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v21, v26);
}

uint64_t sub_18C0EFEAC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EFF3C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EFFC4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0EFFFC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_18C0F0188()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F01C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(type metadata accessor for BackgroundTaskEntry(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = (v7 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  swift_unknownObjectRelease();
  (*(*(v5 - 8) + 8))(v4 + v7, v5);

  (*(v10 + 8))(v4 + v11, AssociatedTypeWitness);

  return swift_deallocObject();
}

double _s7SwiftUI22BackgroundTaskModifierVwxx_0(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  return result;
}

uint64_t sub_18C0F03A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18C0F03F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0F0460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TokenFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0F04D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Binding<AttributedString>(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_18C0F058C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Binding<AttributedString>(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }
}

uint64_t sub_18C0F0644(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0F06B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ToolbarItemGroup(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for TupleToolbarContent(255, v5, v6, v7);
  type metadata accessor for ContentToolbarModifier(255, v8, &protocol witness table for TupleToolbarContent<A>, v9);
  v10 = type metadata accessor for ModifiedContent();
  v12[0] = v4;
  v12[1] = &protocol witness table for ContentToolbarModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v10, v12);
}

uint64_t sub_18C0F0748(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for ContentToolbarModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for ContentToolbarModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

double sub_18C0F08A4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 104))(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double sub_18C0F0904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 128))(&v5);
  v3 = v6;
  *a2 = v5;
  *(a2 + 8) = v3;
  result = *&v7;
  *(a2 + 16) = v7;
  return result;
}

void *_s7SwiftUI24ToolbarControlGroupStyleV21CollapsedViewModifier33_88E0B48F86EFD3974E12D4E1E6CEF46FLLV8AddTraitVwcp_0(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  a1[1] = v3;
  v4 = v3;
  return a1;
}

uint64_t sub_18C0F09B4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F09EC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0F0AB0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F0C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HelpLink.Payload(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 34);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18C0F0D28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HelpLink.Payload(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 34) = -a2;
  }

  return result;
}

uint64_t sub_18C0F0DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18C0F0ED4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    _sSo8UIButtonC5UIKitE13ConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UIButton.Configuration?, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0F0FAC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0F0FE4(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0F106C(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI25NavigationItemDescriptionVSgMaTm_0(0, &lazy cache variable for type metadata for NavigationItemDescription?, type metadata accessor for NavigationItemDescription);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0F10F8()
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

double sub_18C0F1228@<D0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet) -> ();
  a2[1] = v5;

  return result;
}

uint64_t sub_18C0F1294()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F12E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18C0F139C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0F1454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_18C0F1520(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

uint64_t sub_18C0F15EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_18C0F16B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProgressViewStyleConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_18C0F176C()
{
  v1 = type metadata accessor for ArchivableCircularProgressView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 24);
  type metadata accessor for ProgressViewValue(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for Date();
    v4 = *(*(v3 - 8) + 8);
    v4(v2, v3);
    type metadata accessor for ClosedRange<Date>(0);
    v4(v2 + *(v5 + 36), v3);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F190C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18C0F1A20@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x18D0065B0]();
  *a1 = result;
  return result;
}

uint64_t sub_18C0F1AD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ToolbarItemGroup(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for TupleToolbarContent(255, v5, v6, v7);
  type metadata accessor for ToolbarModifier(255, MEMORY[0x1E69E7CA8] + 8, v8, &protocol witness table for TupleToolbarContent<A>);
  v9 = type metadata accessor for ModifiedContent();
  v11[0] = v4;
  v11[1] = &protocol witness table for ToolbarModifier<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v9, v11);
}

uint64_t sub_18C0F1B70(uint64_t *a1)
{
  v1 = a1[2];
  type metadata accessor for ToolbarModifier(255, MEMORY[0x1E69E7CA8] + 8, a1[1], a1[3]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for ToolbarModifier<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0F1BEC(uint64_t *a1)
{
  v1 = a1[2];
  type metadata accessor for ToolbarModifier(255, MEMORY[0x1E69E6158], a1[1], *(a1[3] + 8));
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for ToolbarModifier<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0F1C7C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 56);
  type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>, &type metadata for LayoutPlatformItemListFlags, &protocol witness table for LayoutPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v3 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for Button(255, v1, v2, v4);
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(255, &lazy cache variable for type metadata for _ValueActionModifier2<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697FDD0]);
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for PlatformItemListTransformModifier<LayoutPlatformItemListFlags>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<AnyShareConfiguration.Key>, &type metadata for AnyShareConfiguration.Key, &protocol witness table for AnyShareConfiguration.Key, MEMORY[0x1E6980750]);
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for StaticIf();
  v11 = lazy protocol witness table accessor for type RequiresPlatformItemListRepresentation and conformance RequiresPlatformItemListRepresentation();
  v20[0] = v2;
  v20[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
  v12 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v20);
  v19[0] = swift_getWitnessTable(protocol conformance descriptor for Button<A>, v5);
  v19[1] = &protocol witness table for SharingActivityPickerModifier;
  v18[0] = swift_getWitnessTable(v12, v6, v19);
  v18[1] = lazy protocol witness table accessor for type _ValueActionModifier2<Bool> and conformance _ValueActionModifier2<A>();
  v17[0] = swift_getWitnessTable(v12, v7, v18);
  v17[1] = MEMORY[0x1E69805D0];
  v16[0] = swift_getWitnessTable(v12, v8, v17);
  v16[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<AnyShareConfiguration.Key> and conformance _PreferenceWritingModifier<A>();
  v15[0] = v11;
  v15[1] = WitnessTable;
  v15[2] = swift_getWitnessTable(v12, v9, v16);
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v10, v15);
}

uint64_t sub_18C0F1EFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for WindowToolbarStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for WindowToolbarStyleModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

__n128 sub_18C0F1FC8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double _s7SwiftUI25DragReorderableLazyVStackVyxq_GAA0cD4ViewA2aEP9dragStateAA7BindingVyAA01_cdg1_cI0VGvgTW_0@<D0>(_OWORD *a1@<X8>)
{
  DragReorderableVStack.dragState.getter(&v4);
  v2 = v5[0];
  *a1 = v4;
  a1[1] = v2;
  result = *(v5 + 9);
  *(a1 + 25) = *(v5 + 9);
  return result;
}

uint64_t sub_18C0F2044(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for DragSourceProxyModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0F20A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v2 = type metadata accessor for ModifiedContent();
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v3 = type metadata accessor for ModifiedContent();
  v7[0] = v1;
  v7[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v4 = MEMORY[0x1E697E858];
  v6[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v7);
  v6[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable(v4, v3, v6);
}

uint64_t sub_18C0F21C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v2 = type metadata accessor for ModifiedContent();
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v3 = type metadata accessor for ModifiedContent();
  v7[0] = v1;
  v7[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v4 = MEMORY[0x1E697E858];
  v6[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v7);
  v6[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable(v4, v3, v6);
}

uint64_t sub_18C0F22D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for NavigationPropertiesModifier<Never, EmptyView, TextField<Text>>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for NavigationPropertiesModifier<A, B, C>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0F233C(uint64_t a1)
{
  v1 = *(a1 + 8);
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<NavigationSubtitleKey>, &type metadata for NavigationSubtitleKey, &protocol witness table for NavigationSubtitleKey, MEMORY[0x1E6980750]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<NavigationSubtitleKey> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0F23D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  _s7SwiftUI9TextFieldVyAA0C0VGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<NavigationSubtitleKey>, &type metadata for NavigationSubtitleKey, &protocol witness table for NavigationSubtitleKey, MEMORY[0x1E6980750]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<NavigationSubtitleKey> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0F24A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceTransformModifier<ScreenEdgesSystemGestureKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<ScreenEdgesSystemGestureKey> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0F25D0(uint64_t a1, uint64_t a2, int *a3)
{
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>, MEMORY[0x1E6969770], MEMORY[0x1E697DCC0]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC0]);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCC0]);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = type metadata accessor for DatePickerStyleConfiguration(0);
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[9]);
          if (v17 >= 2)
          {
            return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_18C0F280C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>, MEMORY[0x1E6969770], MEMORY[0x1E697DCC0]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC0]);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      _s7SwiftUI11EnvironmentV7ContentOy10Foundation6LocaleV_GMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCC0]);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for DatePickerStyleConfiguration(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9]) = a2 + 1;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_18C0F2ACC(uint64_t a1)
{
  v1 = *(a1 + 8);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10VisibilityOGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility>, MEMORY[0x1E6980A08]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0F2C14()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F2C4C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F2C84()
{

  return swift_deallocObject();
}

double sub_18C0F2CBC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

void sub_18C0F2CC8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_18C0F2D0C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F2D88()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0F2DC0()
{

  return swift_deallocObject();
}

uint64_t *_s7SwiftUI25RichTextAttributeResolverV11environment7content3forACyxGAA17EnvironmentValuesV_SSxmtcfc12CoreGraphics7CGFloatVSgAMcfU4__0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v3 = *result;
  }

  else
  {
    v3 = 0;
  }

  if ((*result & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = *(result + 8);
  }

  else
  {
    v4 = 1;
  }

  if (!*(result + 8))
  {
    v2 = v3;
  }

  *a2 = v2;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_18C0F2E78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ParagraphStyleResolutionContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_18C0F2F24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ParagraphStyleResolutionContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0F2FC8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TypesettingConfiguration();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Locale();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_18C0F30EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for TypesettingConfiguration();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Locale();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_18C0F3214()
{
  v1 = *(v0 + 32);
  if (v1 >> 8 <= 0xFE)
  {
    outlined consume of TypesettingLanguage.Resolved(*(v0 + 16), *(v0 + 24), v1, BYTE1(v1));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F325C()
{
  v1 = type metadata accessor for FontAttributeDefinition(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0, v4);
  if (!(*(*(v5 - 8) + 48))(v2 + v3, 2, v5))
  {
    v6 = type metadata accessor for Locale.Language();
    (*(*(v6 - 8) + 8))(v2 + v3, v6);
  }

  v7 = *(v1 + 28);
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  return swift_deallocObject();
}

void sub_18C0F3444(uint64_t a1, uint64_t *a2)
{
  lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

double sub_18C0F3480(uint64_t *a1, void *a2)
{
  *a2 = *a1;

  return result;
}

uint64_t _s7SwiftUI15IdentifiedArrayVyxGSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(")d\vbdp\b", a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI15IdentifiedArrayVyxGSlAASl5index_8offsetBy07limitedG05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable(")d\vbdp\b", a4);

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

uint64_t _s7SwiftUI15IdentifiedArrayVyxGSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(")d\vbdp\b", a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

double sub_18C0F36A0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_18C0F3798()
{
  outlined consume of PlatformDrawableContent.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_18C0F37EC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F3834(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<ReselectionTraitState.Key>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<ReselectionTraitState.Key> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0F38E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for UniversalList.BodyContent(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for UniversalList<A>.BodyContent, v4);
}

uint64_t sub_18C0F3934(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for UniversalListContentProvider(255, *a1, v5, a4);
  WitnessTable = swift_getWitnessTable("iW\vbDl\b", v6);
  v8 = swift_getWitnessTable(protocol conformance descriptor for UniversalListContentProvider<A>, v6);
  v10 = type metadata accessor for UniversalListContentProvider.Index(255, v4, v5, v9);
  v11 = swift_getWitnessTable(protocol conformance descriptor for UniversalListContentProvider<A>.Index, v10);
  v17[0] = v6;
  v17[1] = v6;
  v17[2] = WitnessTable;
  v17[3] = v8;
  v17[4] = MEMORY[0x1E6981900];
  v17[5] = v11;
  v12 = type metadata accessor for _ScrollableLayoutView(255, v17);
  v13 = swift_getWitnessTable(protocol conformance descriptor for _ScrollableLayoutView<A, B>, v12);
  v15 = type metadata accessor for _ScrollView(255, v12, v13, v14);
  return swift_getWitnessTable(protocol conformance descriptor for _ScrollView<A>, v15);
}

uint64_t _s7SwiftUI28UniversalListContentProvider33_A817EF0E4D5098C8B69B5F52711315DCLLVyxGSlAASl5index_8offsetBy07limitedR05IndexQzSgAJ_SiAJtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable("iW\vbDl\b", a4);

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

double _s7SwiftUI28UniversalListContentProvider33_A817EF0E4D5098C8B69B5F52711315DCLLVyxGSlAASl34_customLastIndexOfEquatableElementy0R0QzSgSg0U0QzFTW_0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_18CD874B0;
  *(a1 + 16) = 0;
  return result;
}

double sub_18C0F3B1C@<D0>(double *a3@<X8>)
{
  EnvironmentValues.defaultPadding.getter();
  EdgeInsets.horizontal.getter();
  result = v4 * 0.5;
  *a3 = result;
  return result;
}

uint64_t sub_18C0F3B6C()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0F3BBC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F3BF8()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v10 = v0[2];
  AssociatedTypeWitness = v10;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v8 = *(*(type metadata accessor for OutlinePrimitive(0, &v10) - 8) + 80);
  v10 = AssociatedTypeWitness;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  type metadata accessor for OutlinePrimitive.Base(0, &v10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((v8 + 96) & ~v8), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_18C0F3DD0(uint64_t *a1)
{
  v1 = *a1;
  v33 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[7];
  v7 = a1[9];
  v28 = a1[6];
  v29 = a1[8];
  v31 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = AssociatedTypeWitness;
  v43 = v2;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  v9 = type metadata accessor for _OutlineGenerator_Configuration.Subtree(255, &v42);
  v10 = lazy protocol witness table accessor for type OutlineSubgroupChildren and conformance OutlineSubgroupChildren();
  v42 = AssociatedTypeWitness;
  v43 = v2;
  v44 = v5;
  v45 = &type metadata for OutlineSubgroupChildren;
  v46 = v9;
  v47 = v6;
  v48 = v7;
  v49 = v10;
  v50 = &protocol witness table for _OutlineGenerator_Configuration<A, B, C>.Subtree;
  v11 = type metadata accessor for OutlineGenerator(255, &v42);
  v42 = v1;
  v43 = v33;
  v44 = v2;
  v45 = v3;
  v46 = v5;
  v47 = v4;
  v48 = v28;
  v12 = type metadata accessor for OutlinePrimitive(255, &v42);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _OutlineGenerator_Configuration<A, B, C>.Subtree, v9);
  v41[0] = v6;
  v41[1] = v29;
  v41[2] = v7;
  v32 = swift_getWitnessTable(protocol conformance descriptor for <> OutlinePrimitive<A, B, C, D, E>, v12, v41);
  v42 = v9;
  v43 = v12;
  v44 = WitnessTable;
  v45 = v32;
  type metadata accessor for StaticSourceWriter(255, &v42);
  v14 = type metadata accessor for ModifiedContent();
  v40[0] = swift_getWitnessTable(protocol conformance descriptor for OutlineGenerator<A, B, C, D, E>, v11);
  v40[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v15 = MEMORY[0x1E697E858];
  v30 = swift_getWitnessTable(MEMORY[0x1E697E858], v14, v40);
  v42 = v14;
  v43 = v33;
  v44 = v30;
  v45 = v28;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _TraitWritingModifier<IsLeafTraitKey>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v5>, MEMORY[0x1E697DF50], MEMORY[0x1E697DF48], MEMORY[0x1E697EC20]);
  v16 = type metadata accessor for HStack();
  v17 = type metadata accessor for StaticIf();
  type metadata accessor for _TraitWritingModifier<IsLeafTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsLeafTraitKey>, MEMORY[0x1E697E3B0], MEMORY[0x1E697E3A8], MEMORY[0x1E697FDB8]);
  v18 = type metadata accessor for ModifiedContent();
  v39[0] = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>();
  v39[1] = v29;
  v39[2] = swift_getWitnessTable(MEMORY[0x1E69817F8], v16);
  v38[0] = swift_getWitnessTable(MEMORY[0x1E6981CE8], v17, v39);
  v38[1] = lazy protocol witness table accessor for type _TraitWritingModifier<IsLeafTraitKey> and conformance _TraitWritingModifier<A>();
  v19 = swift_getWitnessTable(v15, v18, v38);
  v42 = v18;
  v43 = v33;
  v44 = v19;
  v45 = v28;
  swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for _ConditionalContent();
  v42 = v31;
  v43 = v33;
  v44 = v12;
  v45 = v4;
  v46 = v28;
  v21 = type metadata accessor for ForEach();
  type metadata accessor for ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>>(255);
  v22 = type metadata accessor for _ConditionalContent();
  v23 = type metadata accessor for _ConditionalContent();
  v42 = v14;
  v43 = v33;
  v44 = v30;
  v45 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v18;
  v43 = v33;
  v44 = v19;
  v45 = v28;
  v37[0] = OpaqueTypeConformance2;
  v37[1] = swift_getOpaqueTypeConformance2();
  v25 = MEMORY[0x1E697F968];
  v26 = swift_getWitnessTable(MEMORY[0x1E697F968], v20, v37);
  v36 = v32;
  v35[0] = swift_getWitnessTable(MEMORY[0x1E69819D0], v21, &v36);
  v35[1] = lazy protocol witness table accessor for type ModifiedContent<EmptyView, _TraitWritingModifier<IsLeafTraitKey>> and conformance <> ModifiedContent<A, B>();
  v34[0] = v26;
  v34[1] = swift_getWitnessTable(v25, v22, v35);
  return swift_getWitnessTable(v25, v23, v34);
}

uint64_t sub_18C0F42D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for _IdentifiedModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for _IdentifiedModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0F4364()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F439C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  if (v0[17])
  {
  }

  if (v0[22])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F4404()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F44A0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F4500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainMenuItem(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0F456C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MainMenuItem(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0F45DC()
{
  v1 = *(type metadata accessor for MainMenuItem.Content(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(type metadata accessor for MainMenuItem(0) + 20);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 10, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F47D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<String?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<String?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<String?>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0F4898@<X0>(uint64_t *a3@<X8>)
{
  result = EnvironmentValues.defaultFont.getter();
  *a3 = result;
  return result;
}

void *sub_18C0F4954@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.verticalSizeClass.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18C0F49D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
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

uint64_t sub_18C0F4A9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
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

uint64_t sub_18C0F4B70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ToolbarTitleMenu(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for TupleToolbarContent(255, v5, v6, v7);
  type metadata accessor for ToolbarModifier(255, MEMORY[0x1E69E7CA8] + 8, v8, &protocol witness table for TupleToolbarContent<A>);
  v9 = type metadata accessor for ModifiedContent();
  v11[0] = v4;
  v11[1] = &protocol witness table for ToolbarModifier<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v9, v11);
}

uint64_t sub_18C0F4C0C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F4C44()
{
  v1 = type metadata accessor for ToolbarStorage.NavigationProperties(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  if (v3 != 255)
  {
    outlined consume of ResolvableCLKTextProvider.FontStorage(*v2, v3 & 1);
  }

  v4 = *(v2 + 24);
  if (v4 <= 0xFD)
  {
    outlined consume of PlatformItemCollection.Storage(*(v2 + 16), v4 & 1);
  }

  MEMORY[0x18D011290](v2 + 32);

  v5 = v2 + *(v1 + 32);
  v6 = type metadata accessor for PlatformItemList.Item(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v5 + 192);
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if ((v7 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v9 = *(v5 + 72);
      if (v9 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v5 + 64), v9);
        v7 = *(v5 + 192);
        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v8 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v5 + 176), *(v5 + 184), v7, *(v5 + 200));
      }

      swift_unknownObjectRelease();
    }

    if (*(v5 + 264))
    {

      v10 = *(v5 + 272);
      if (v10 >= 2)
      {
      }
    }

    v11 = *(v5 + 336);
    if (v11 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v5 + 304), *(v5 + 312), *(v5 + 320), *(v5 + 328), v11, *(v5 + 344), *(v5 + 352), *(v5 + 360), *(v5 + 368), *(v5 + 376), *(v5 + 384), *(v5 + 392), *(v5 + 400));
    }

    v12 = *(v5 + 416);
    if (v12)
    {
      if (v12 == 1)
      {
        goto LABEL_25;
      }
    }

    if (*(v5 + 432))
    {
    }

    if (*(v5 + 448))
    {
    }

LABEL_25:

    if (*(v5 + 512))
    {
    }

    if (!*(v5 + 816))
    {
LABEL_35:
      v14 = *(v5 + 864);
      if (v14)
      {
        if (v14 == 1)
        {
LABEL_40:

          v15 = v5 + *(v6 + 112);
          v16 = type metadata accessor for CommandOperation(0);
          if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
          {
            v17 = v15 + *(v16 + 20);
            outlined consume of Text.Storage(*v17, *(v17 + 8), *(v17 + 16));

            v18 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v19 = type metadata accessor for UUID();
            (*(*(v19 - 8) + 8))(v17 + v18, v19);
            if (*(v15 + *(v16 + 24)))
            {
            }
          }

          goto LABEL_44;
        }

        __swift_destroy_boxed_opaque_existential_1((v5 + 840));
      }

      if (*(v5 + 880))
      {
      }

      goto LABEL_40;
    }

    v13 = *(v5 + 624);
    if (v13)
    {
      if (v13 == 1)
      {
LABEL_32:
        if (*(v5 + 776) != 1)
        {
        }

        goto LABEL_35;
      }

      __swift_destroy_boxed_opaque_existential_1((v5 + 600));
    }

    goto LABEL_32;
  }

LABEL_44:

  return swift_deallocObject();
}

uint64_t sub_18C0F5040()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0F5078()
{
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for PlatformItemList.Item(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    goto LABEL_40;
  }

  v4 = *(v2 + 192);
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
  {
    v6 = *(v2 + 72);
    if (v6 != 255)
    {
      outlined consume of GraphicsImage.Contents(*(v2 + 64), v6);
      v4 = *(v2 + 192);
      v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (v5 != 0x1FFFFFFFELL)
    {
      outlined consume of AccessibilityImageLabel(*(v2 + 176), *(v2 + 184), v4, *(v2 + 200));
    }

    swift_unknownObjectRelease();
  }

  if (*(v2 + 264))
  {

    v7 = *(v2 + 272);
    if (v7 >= 2)
    {
    }
  }

  v8 = *(v2 + 336);
  if (v8 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(v2 + 304), *(v2 + 312), *(v2 + 320), *(v2 + 328), v8, *(v2 + 344), *(v2 + 352), *(v2 + 360), *(v2 + 368), *(v2 + 376), *(v2 + 384), *(v2 + 392), *(v2 + 400));
  }

  v9 = *(v2 + 416);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_21;
    }
  }

  if (*(v2 + 432))
  {
  }

  if (*(v2 + 448))
  {
  }

LABEL_21:

  if (*(v2 + 512))
  {
  }

  if (*(v2 + 816))
  {

    v10 = *(v2 + 624);
    if (v10)
    {
      if (v10 == 1)
      {
LABEL_28:
        if (*(v2 + 776) != 1)
        {
        }

        goto LABEL_31;
      }

      __swift_destroy_boxed_opaque_existential_1((v2 + 600));
    }

    goto LABEL_28;
  }

LABEL_31:
  v11 = *(v2 + 864);
  if (!v11)
  {
    goto LABEL_34;
  }

  if (v11 != 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 840));
LABEL_34:
    if (*(v2 + 880))
    {
    }
  }

  v12 = v2 + *(v3 + 112);
  v13 = type metadata accessor for CommandOperation(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v14 = v12 + *(v13 + 20);
    outlined consume of Text.Storage(*v14, *(v14 + 8), *(v14 + 16));

    v15 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(v14 + v15, v16);
    if (*(v12 + *(v13 + 24)))
    {
    }
  }

LABEL_40:

  return swift_deallocObject();
}

double sub_18C0F5470@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

void sub_18C0F547C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
}

__n128 sub_18C0F54CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0F5598(void *a1)
{
  v1 = type metadata accessor for _OverlayModifier();
  v2 = type metadata accessor for ModifiedContent();
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697EC18], v1);
  v12[0] = MEMORY[0x1E6981580];
  v12[1] = WitnessTable;
  v7 = MEMORY[0x1E697E858];
  v11[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v12);
  v11[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v10[0] = swift_getWitnessTable(v7, v3, v11);
  v10[1] = &protocol witness table for IgnoreViewRespondersModifier;
  v9[0] = swift_getWitnessTable(v7, v4, v10);
  v9[1] = &protocol witness table for AccessibilityAttachmentModifier;
  return swift_getWitnessTable(v7, v5, v9);
}

uint64_t sub_18C0F5744()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F579C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0F5888()
{
  v1 = *(v0 + 40);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v4 = v6;
  v7 = v1;
  v2 = type metadata accessor for AccessibilityPickerStyle.Body.AccessibilityPickerButton(0, &v5);
  (*(*(v4 - 8) + 8))(v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80)) + *(v2 + 52));

  return swift_deallocObject();
}

uint64_t sub_18C0F59A0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C0F5A5C(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody(255, v4);
  return swift_getWitnessTable(protocol conformance descriptor for AccessibilityListStyle.Body<A>.AccessibilityList<A1>.AccessibilityListBody, v2);
}

uint64_t sub_18C0F5AA8(uint64_t a1, double a2)
{
  v2 = *(a1 + 24);
  v3 = type metadata accessor for ModifiedContent();
  _s7SwiftUI7BindingVySbGMaTm_11(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  v4 = type metadata accessor for ModifiedContent();
  v8[0] = v2;
  v8[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v5 = MEMORY[0x1E697E858];
  v7[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v8);
  v7[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  return swift_getWitnessTable(v5, v4, v7);
}

uint64_t sub_18C0F5B7C()
{
  v1 = *(v0 + 40);
  v8 = *(v0 + 16);
  v9 = *(v0 + 24);
  v7 = v9;
  v10 = v1;
  v2 = (type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListBody(0, &v8) - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));
  __swift_destroy_boxed_opaque_existential_1(v3);

  v4 = v3 + v2[15];
  v5 = type metadata accessor for Binding();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    (*(*(v7 - 8) + 8))(v4 + *(v5 + 32), v7);
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F5CFC(__int128 *a1)
{
  v2 = MEMORY[0x1E69E6530];
  type metadata accessor for AccessibilityControlStyle<ButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v4 = v3;
  v5 = a1[1];
  v18 = *a1;
  v19 = v5;
  v6 = type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListCellModifier(255, &v18);
  v7 = type metadata accessor for ModifiedContent();
  v8 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  *&v18 = v4;
  *(&v18 + 1) = v2;
  *&v19 = v7;
  *(&v19 + 1) = v8;
  v20 = MEMORY[0x1E69E6540];
  v9 = type metadata accessor for ForEach();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AccessibilityListStyle.Body<A>.AccessibilityList<A1>.AccessibilityListCellModifier, v6);
  v17[0] = MEMORY[0x1E697FFB0];
  v17[1] = WitnessTable;
  v11 = MEMORY[0x1E697E858];
  v16 = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v17);
  swift_getWitnessTable(MEMORY[0x1E69819D0], v9, &v16);
  v12 = type metadata accessor for VStack();
  v13 = type metadata accessor for ModifiedContent();
  v15[0] = swift_getWitnessTable(MEMORY[0x1E6981870], v12);
  v15[1] = &protocol witness table for AccessibilityContainerModifier;
  return swift_getWitnessTable(v11, v13, v15);
}

uint64_t sub_18C0F5E94(_OWORD *a1)
{
  v1 = a1[1];
  v10[0] = *a1;
  v10[1] = v1;
  v2 = type metadata accessor for AccessibilityListStyle.Body.AccessibilityList.AccessibilityListCellModifier(255, v10);
  swift_getWitnessTable(protocol conformance descriptor for AccessibilityListStyle.Body<A>.AccessibilityList<A1>.AccessibilityListCellModifier, v2);
  v3 = type metadata accessor for _ViewModifier_Content();
  v4 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for ModifiedContent();
  v9[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3);
  v9[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v6 = MEMORY[0x1E697E858];
  v8[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v9);
  v8[1] = &protocol witness table for AccessibilityAttachmentModifier;
  return swift_getWitnessTable(v6, v5, v8);
}

uint64_t sub_18C0F5FBC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v27 = *a1;
  v1 = v27;
  v28 = v3;
  v29 = v4;
  v30 = v6;
  v21 = type metadata accessor for ListPicker(255, &v27);
  v27 = v2;
  v28 = v5;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255);
  v7 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for LabeledContent(255, v1, v7, v8);
  type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>, lazy protocol witness table accessor for type AdaptiveLeadingTrailingLabeledContentStyle and conformance AdaptiveLeadingTrailingLabeledContentStyle, &type metadata for AdaptiveLeadingTrailingLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
  v10 = type metadata accessor for ModifiedContent();
  v27 = v1;
  v28 = v2;
  v29 = v3;
  v30 = &type metadata for BoundInputsView;
  v31 = v4;
  v32 = v5;
  v33 = v6;
  v34 = &protocol witness table for BoundInputsView;
  v11 = type metadata accessor for NavigationPickerButton.DetailView(255, &v27);
  v27 = v2;
  v28 = v5;
  v26[0] = swift_getOpaqueTypeConformance2();
  v26[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Font?> and conformance _EnvironmentKeyTransformModifier<A>();
  v12 = MEMORY[0x1E697E858];
  v25[0] = v4;
  v25[1] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v26);
  v24[0] = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v9, v25);
  v24[1] = &protocol witness table for _LabeledContentStyleModifier<A>;
  WitnessTable = swift_getWitnessTable(v12, v10, v24);
  v14 = swift_getWitnessTable(protocol conformance descriptor for NavigationPickerButton<A, B, C>.DetailView<A1>, v11);
  v27 = v10;
  v28 = v11;
  v29 = WitnessTable;
  v30 = v14;
  v15 = type metadata accessor for NavigationLink(255, &v27);
  v27 = MEMORY[0x1E69E73E0];
  v28 = v2;
  v29 = MEMORY[0x1E6982070];
  v30 = v5;
  type metadata accessor for AccessibilityProxyTransformModifier(255, &v27);
  v16 = type metadata accessor for ModifiedContent();
  v17 = swift_getWitnessTable(protocol conformance descriptor for ListPicker<A, B>, v21);
  v23[0] = swift_getWitnessTable(protocol conformance descriptor for NavigationLink<A, B>, v15);
  v23[1] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
  v18 = swift_getWitnessTable(v12, v16, v23);
  v27 = v21;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  type metadata accessor for ViewInputsBinding(255, &v27);
  v19 = type metadata accessor for ModifiedContent();
  v22[0] = &protocol witness table for ViewInputsBinding<A, B>;
  v22[1] = MEMORY[0x1E6980C20];
  return swift_getWitnessTable(v12, v19, v22);
}

uint64_t sub_18C0F62A4()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 16);
  v10 = *(v0 + 32);
  v1 = v10;
  v8 = *(v0 + 40);
  v9 = v3;
  v11 = v8;
  v12 = *(v0 + 56);
  v13 = v2;
  v4 = (type metadata accessor for NavigationPickerButton.DetailView(0, &v9) - 8);
  v5 = v0 + ((*(*v4 + 80) + 80) & ~*(*v4 + 80));

  v6 = type metadata accessor for Binding();
  (*(*(v1 - 8) + 8))(v5 + *(v6 + 32), v1);
  (*(*(v8 - 8) + 8))(v5 + v4[23]);
  outlined consume of Environment<DismissAction>.Content(*(v5 + v4[24]), *(v5 + v4[24] + 8), *(v5 + v4[24] + 16), *(v5 + v4[24] + 17));
  return swift_deallocObject();
}

uint64_t sub_18C0F6418()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 64) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0F64B0(void *a1)
{
  v1 = a1[7];
  v2 = type metadata accessor for _BindingActionModifier();
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v1;
  v5[1] = swift_getWitnessTable(MEMORY[0x1E697FF78], v2);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0F6548(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v26 = a1[2];
  v5 = type metadata accessor for PickerContentView(255, a1[1], a1[3], a4);
  WitnessTable = swift_getWitnessTable("Q%\rb\\R\t", v5);
  v28 = MEMORY[0x1E69E73E0];
  v29 = v5;
  v30 = MEMORY[0x1E69E73F0];
  v31 = WitnessTable;
  v7 = type metadata accessor for List(255, &v28);
  type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>(255);
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>(255);
  v9 = type metadata accessor for ModifiedContent();
  type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(255, &lazy cache variable for type metadata for ToggleStyleModifier<CheckmarkToggleStyle>, lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle, &type metadata for CheckmarkToggleStyle, type metadata accessor for ToggleStyleModifier);
  v10 = type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v11 = type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v12 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for ModifiedContent();
  v15 = swift_getWitnessTable(protocol conformance descriptor for List<A, B>, v7);
  IsGrouped = lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate);
  v40[0] = v15;
  v40[1] = IsGrouped;
  v17 = MEMORY[0x1E697E858];
  v18 = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v40);
  v19 = lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  v39[0] = v18;
  v39[1] = v19;
  v38[0] = swift_getWitnessTable(v17, v9, v39);
  v38[1] = &protocol witness table for ToggleStyleModifier<A>;
  v20 = swift_getWitnessTable(v17, v10, v38);
  v37[0] = v20;
  v37[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v21 = swift_getWitnessTable(v17, v11, v37);
  v22 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v36[0] = v21;
  v36[1] = v22;
  v35[0] = swift_getWitnessTable(v17, v12, v36);
  v35[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v34[0] = swift_getWitnessTable(v17, v13, v35);
  v34[1] = v22;
  v23 = swift_getWitnessTable(v17, v14, v34);
  v28 = &type metadata for TextPlatformItemListFlags;
  v29 = v14;
  v30 = v4;
  v31 = &protocol witness table for TextPlatformItemListFlags;
  v32 = v23;
  v33 = v26;
  type metadata accessor for PlatformItemListReader(255, &v28);
  v24 = type metadata accessor for StaticIf();
  v27[0] = lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate();
  v27[1] = v20;
  v27[2] = &protocol witness table for PlatformItemListReader<A, B, C>;
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v24, v27);
}

uint64_t sub_18C0F6900@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_18C0F696C()
{
  if (*(v0 + 16))
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F69B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi, type metadata accessor for SwipeActionsModifier<AnyView?>, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18C0F6A58(uint64_t a1)
{
  type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi, type metadata accessor for SwipeActionsModifier<AnyView?>, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18C0F6B10()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (!*(v0 + 72))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(v0 + 72))
  {
LABEL_5:
  }

LABEL_6:

  return swift_deallocObject();
}

uint64_t sub_18C0F6B84()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  if (*(v0 + 112))
  {
  }

  outlined consume of Environment<Selector?>.Content(*(v0 + 128), *(v0 + 136));
  outlined consume of Environment<Selector?>.Content(*(v0 + 144), *(v0 + 152));
  outlined consume of Environment<Selector?>.Content(*(v0 + 160), *(v0 + 168));
  v1 = *(v0 + 251);
  if (v1 == 2)
  {

    if (*(v0 + 192))
    {
    }

    if (*(v0 + 248))
    {

      goto LABEL_15;
    }

    v2 = (v0 + 208);
  }

  else if (v1 == 1)
  {

    if (*(v0 + 224))
    {
      goto LABEL_15;
    }

    v2 = (v0 + 184);
  }

  else
  {
    if (*(v0 + 251))
    {
      goto LABEL_15;
    }

    v2 = (v0 + 200);
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_15:

  return swift_deallocObject();
}

uint64_t sub_18C0F6C8C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F6D30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for BadgedViewStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for BadgedViewStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0F6DA0(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0F6E14(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for DropPreviewsFormationModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t _s7SwiftUI22PlatformItemCollectionVwcp_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of PlatformItemCollection.Storage(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

unint64_t _s7SwiftUI22PlatformItemCollectionVSkAASk5index_8offsetBy5IndexQzAG_SitFTW_0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = specialized RandomAccessCollection<>.index(_:offsetBy:)(*a1, a2, *v3, *(v3 + 8));
  *a3 = result;
  return result;
}

uint64_t *_s7SwiftUI22PlatformItemCollectionVwta_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of PlatformItemCollection.Storage(v5, v6);
  return a1;
}

uint64_t sub_18C0F6F6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ViewDestinationNavigationDestinationModifier(255, a1[1], a1[3], a4);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v4;
  v8[1] = swift_getWitnessTable(protocol conformance descriptor for ViewDestinationNavigationDestinationModifier<A>, v5);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

uint64_t sub_18C0F7000(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v7[0] = *(a1 + 8);
  v7[1] = v2;
  v3 = type metadata accessor for ItemNavigationLinkModifier(255, v7);
  v4 = type metadata accessor for ModifiedContent();
  v6[0] = v1;
  v6[1] = swift_getWitnessTable(protocol conformance descriptor for ItemNavigationLinkModifier<A, B>, v3);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
}

uint64_t sub_18C0F70A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  type metadata accessor for ViewDestinationNavigationDestinationModifier<EmptyView>(255, a2, a3, a4);
  v5 = type metadata accessor for ModifiedContent();
  v10[0] = v4;
  v10[1] = lazy protocol witness table accessor for type ViewDestinationNavigationDestinationModifier<EmptyView> and conformance ViewDestinationNavigationDestinationModifier<A>(v5, v6, v7, v8);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v10);
}

uint64_t sub_18C0F7110(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v7[0] = a1[1];
  v7[1] = MEMORY[0x1E6981E70];
  v7[2] = v1;
  v7[3] = MEMORY[0x1E6981E60];
  v3 = type metadata accessor for ItemNavigationLinkModifier(255, v7);
  v4 = type metadata accessor for ModifiedContent();
  v6[0] = v2;
  v6[1] = swift_getWitnessTable(protocol conformance descriptor for ItemNavigationLinkModifier<A, B>, v3);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
}

uint64_t sub_18C0F71C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EnvironmentValues.accessibilityQuickActionsEnabled.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18C0F7218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EnvironmentValues.accessibilityQuickActionsEnabled.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18C0F7258(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 40);
  type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for StyleContextWriter<AccessibilityQuickActionStyleContext>, MEMORY[0x1E6980BE8], MEMORY[0x1E6980BE0], MEMORY[0x1E697F4C8]);
  v3 = type metadata accessor for ModifiedContent();
  v10[0] = v2;
  v10[1] = lazy protocol witness table accessor for type StyleContextWriter<AccessibilityQuickActionStyleContext> and conformance StyleContextWriter<A>();
  v4 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v10);
  type metadata accessor for AccessibilityQuickActionModifier(255, v3, WitnessTable, v6);
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = v1;
  v9[1] = &protocol witness table for AccessibilityQuickActionModifier<A>;
  return swift_getWitnessTable(v4, v7, v9);
}

uint64_t sub_18C0F7348()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F7388()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F751C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F7554(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for KeyPressModifier(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for KeyPressModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0F75C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyPress.Handler(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0F762C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyPress.Handler(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0F769C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for KeyPress.Handler.Subject(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18C0F7758(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for KeyPress.Handler.Subject(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0F7820(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for SystemTabView.BodyContent(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for SystemTabView<A>.BodyContent, v4);
}

uint64_t sub_18C0F786C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Date?(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

void sub_18C0F793C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Date?(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }
}

uint64_t sub_18C0F7A3C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<TextInputValidation?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextInputValidation?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<TextInputValidation?>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

double sub_18C0F7AD8@<D0>(_OWORD *a2@<X8>)
{
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  PropertyList.subscript.getter();
  result = *&v4;
  *a2 = v4;
  return result;
}

double sub_18C0F7B78@<D0>(_OWORD *a2@<X8>)
{
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  PropertyList.subscript.getter();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_18C0F7C8C()
{

  return swift_deallocObject();
}

void *sub_18C0F7D04@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.textCase.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18C0F7D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for HeaderFooterVisitor.HeaderContent(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  outlined consume of Environment<Selector?>.Content(*v7, *(v7 + 8));
  outlined consume of Environment<HeaderFooterConfiguration>.Content(*(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72), *(v7 + 80), *(v7 + 88));
  outlined consume of Environment<Selector?>.Content(*(v7 + 96), *(v7 + 104));
  (*(*(v5 - 8) + 8))(v7 + v6[18], v5);
  v8 = v7 + v6[19];
  v9 = *(v8 + 70);
  if (*(v8 + 70))
  {
    if (v9 == 1)
    {
      goto LABEL_7;
    }

    if (v9 != 2)
    {
      goto LABEL_8;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
LABEL_7:

LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_18C0F7F50(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyTransformModifier<Font?>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Text.Case?>, &lazy cache variable for type metadata for Text.Case?, MEMORY[0x1E6980FE8], MEMORY[0x1E6980B20]);
  v2 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier>(255, v3);
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for [Sections.Item](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<HeaderFooterConfiguration>, &type metadata for HeaderFooterConfiguration, MEMORY[0x1E6980A08]);
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  v15[0] = v1;
  v15[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Text.Case?> and conformance _EnvironmentKeyTransformModifier<A>();
  v8 = MEMORY[0x1E697E858];
  v14[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v15);
  v14[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, HeaderFooterVisitor.IOSMultiColumnModifier, HeaderFooterVisitor.LegacyModifier> and conformance <> StaticIf<A, B, C>(v9);
  v13[0] = swift_getWitnessTable(v8, v4, v14);
  v13[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<HeaderFooterConfiguration> and conformance _EnvironmentKeyWritingModifier<A>();
  v12[0] = swift_getWitnessTable(v8, v5, v13);
  v12[1] = &protocol witness table for AccessibilityScrollableContextModifier;
  v11[0] = swift_getWitnessTable(v8, v6, v12);
  v11[1] = MEMORY[0x1E697EBF8];
  return swift_getWitnessTable(v8, v7, v11);
}

uint64_t sub_18C0F8108()
{
  outlined consume of Environment<HeaderFooterConfiguration>.Content(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  outlined consume of Environment<Selector?>.Content(*(v0 + 96), *(v0 + 104));
  outlined consume of Environment<Selector?>.Content(*(v0 + 112), *(v0 + 120));

  return swift_deallocObject();
}

uint64_t sub_18C0F81D0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ResolvedDatePickerStyle(255);
  v6[0] = &type metadata for DatePickerStyleConfiguration.Label;
  v6[1] = v1;
  v6[2] = lazy protocol witness table accessor for type DatePickerStyleConfiguration.Label and conformance DatePickerStyleConfiguration.Label();
  v6[3] = v2;
  type metadata accessor for StaticSourceWriter(255, v6);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = lazy protocol witness table accessor for type ResolvedDatePickerStyle and conformance ResolvedDatePickerStyle(&lazy protocol witness table cache variable for type ResolvedDatePickerStyle and conformance ResolvedDatePickerStyle, type metadata accessor for ResolvedDatePickerStyle, protocol conformance descriptor for ResolvedDatePickerStyle);
  v5[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0F830C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for ChartDescriptorModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for ChartDescriptorModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0F83B8()
{
  if (*(v0 + 40))
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F8514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TextSelection.Indices(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18C0F85CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TextSelection.Indices(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_18C0F8684(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<TextSelectionAffinity>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TextSelectionAffinity> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextSelectionAffinity> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<TextSelectionAffinity>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0F87AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = type metadata accessor for Optional();
  type metadata accessor for FocusedValueModifier(255, v2, v3, v4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v1;
  v7[1] = &protocol witness table for FocusedValueModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0F8834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for UIKitButtonAdaptor(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80));
  outlined consume of Environment<Selector?>.Content(*(v7 + 16), *(v7 + 24));
  outlined consume of Environment<Color?>.Content(*(v7 + 32));
  outlined consume of Environment<Selector?>.Content(*(v7 + 48), *(v7 + 56));
  outlined consume of Environment<Selector?>.Content(*(v7 + 64), *(v7 + 72));
  outlined consume of Environment<Selector?>.Content(*(v7 + 80), *(v7 + 88));
  outlined consume of Environment<Selector?>.Content(*(v7 + 96), *(v7 + 104));
  outlined consume of Environment<Selector?>.Content(*(v7 + 112), *(v7 + 120));
  if (*(v7 + 128))
  {
  }

  (*(*(v5 - 8) + 8))(v7 + *(v6 + 88), v5);
  if (*(v7 + *(v6 + 96)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F89AC()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0F89E4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F8ACC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F8B8C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F8BD8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18C0F8C10()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0F8C9C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<(Color, Color)?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<(Color, Color)?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<(Color, Color)?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<(Color, Color)?>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0F8D38()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0F8D80()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F8DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    type metadata accessor for UICellConfigurationState?(0);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18C0F8E70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    type metadata accessor for UICellConfigurationState?(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0F8F48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for TableStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for TableStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0F8FD0(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0F9044(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>(255);
  v5 = type metadata accessor for ModifiedContent();
  v13[0] = v2;
  v13[1] = lazy protocol witness table accessor for type PlatformItemListContentModifier and conformance PlatformItemListContentModifier();
  v6 = MEMORY[0x1E697E858];
  v12[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v13);
  v12[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<KeyboardShortcut?> and conformance _EnvironmentKeyWritingModifier<A>();
  WitnessTable = swift_getWitnessTable(v6, v5, v12);
  type metadata accessor for ModifierKeyAlternateModifier(255, v5, WitnessTable, v8);
  v9 = type metadata accessor for ModifiedContent();
  v11[0] = v3;
  v11[1] = &protocol witness table for ModifierKeyAlternateModifier<A>;
  return swift_getWitnessTable(v6, v9, v11);
}

uint64_t sub_18C0F917C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C0F91BC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F91F4()
{
  if (*(v0 + 40) >= 5uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72) >= 3uLL)
  {
    outlined consume of Text.Storage(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  if (*(v0 + 104))
  {
    outlined consume of Text.Storage(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F9294(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier>();
  v2 = type metadata accessor for ModifiedContent();
  v3 = lazy protocol witness table accessor for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content();
  v9[0] = v1;
  v9[1] = lazy protocol witness table accessor for type StaticIf<AccessibilityBadgedViewNeedsValue, AccessibilityConfigurationViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v4 = MEMORY[0x1E697E858];
  v8[0] = &type metadata for BadgeViewStyleConfiguration.Content;
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v9);
  type metadata accessor for StaticSourceWriter(255, v8);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = lazy protocol witness table accessor for type ResolvedBadgedView and conformance ResolvedBadgedView();
  v7[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(v4, v5, v7);
}

uint64_t sub_18C0F9378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0F9424(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    type metadata accessor for Binding<TextSelection?>?(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0F94C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextEditorStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0F9534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextEditorStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0F95B4()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F95F0()
{
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for SelectionRanges<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E697E8A8]);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  type metadata accessor for Binding<TextSelection?>(0);
  v7 = v6;
  v8 = *(*(v6 - 8) + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    (*(*(v9 - 8) + 8))(v0 + v4, v9);
  }

  v10 = (v5 + v3 + v8) & ~v8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
    (*(*(v11 - 8) + 8))(v0 + v5, v11);
  }

  v12 = *(v7 + 32);
  v13 = type metadata accessor for TextSelection(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v10 + v12, 1, v13))
  {
    type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v14 - 8) + 8))(v0 + v10 + v12, v14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18C0F990C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F994C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for GaugeStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for GaugeStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0F99BC(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0F9A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0F9A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_18C0F9B1C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18C0F9B28(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 56);
  v6[0] = *(a1 + 24);
  v6[1] = v2;
  type metadata accessor for StaticSourceWriter(255, v6);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v1;
  v5[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0F9BA8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F9BE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v9[0] = &type metadata for StepperStyleConfiguration.Label;
  v9[1] = v1;
  v9[2] = lazy protocol witness table accessor for type StepperStyleConfiguration.Label and conformance StepperStyleConfiguration.Label();
  v9[3] = v2;
  type metadata accessor for StaticSourceWriter(255, v9);
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  v8[0] = lazy protocol witness table accessor for type StepperBody and conformance StepperBody();
  v8[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v5 = MEMORY[0x1E697E858];
  v7[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v8);
  v7[1] = &protocol witness table for AccessibilityAttachmentModifier;
  return swift_getWitnessTable(v5, v4, v7);
}

uint64_t sub_18C0F9D10()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_18C0F9D58(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type EnvironmentPropertyKey<TableColumnHeadersVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Visibility?>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t _s7SwiftUI14FetchedResultsVyxGSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FetchedResults<A>, a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI14FetchedResultsVyxGSlAASl5index_8offsetBy07limitedG05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FetchedResults<A>, a4);

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_18C0F9F00()
{

  return swift_deallocObject();
}

uint64_t sub_18C0F9FEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for FetchRequest.Configuration(0, *(a1 + a2 - 8), a2, a4);
  result = FetchRequest.Configuration<>.sortDescriptors.getter(v5);
  *a3 = result;
  return result;
}

uint64_t sub_18C0FA048@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = type metadata accessor for FetchedResults(0, *(a1 + a2 - 8), a2, a3);
  result = FetchedResults<>.sortDescriptors.getter(v5);
  *a4 = result;
  return result;
}

id sub_18C0FA0CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 completedUnitCount];
  *a2 = result;
  return result;
}

id sub_18C0FA114@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 totalUnitCount];
  *a2 = result;
  return result;
}

uint64_t sub_18C0FA1DC()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0FA214(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for CombineIdentifier();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0FA2C0(uint64_t result, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CombineIdentifier();
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0FA374()
{
  v1 = type metadata accessor for NSProgress.UIStateSubscriber(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);

  if (*(v0 + v2 + 40))
  {
  }

  v3 = *(v1 + 20);
  v4 = type metadata accessor for CombineIdentifier();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_18C0FA4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FileImportOperation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_18C0FA56C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FileImportOperation(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void *sub_18C0FA638@<X0>(uint64_t *a1@<X1>, _WORD *a2@<X8>)
{
  result = TabViewCustomization.subscript.getter(*a1, a1[1], &v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18C0FA6F8@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  result = TabViewCustomization.subscript.getter(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_18C0FA73C@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  result = TabViewCustomization.subscript.getter(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_18C0FA798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18C0FA854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C0FA914(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CoreInteractionRepresentableAdaptor(255, a1[1], a1[3], a4);
  swift_getWitnessTable(protocol conformance descriptor for CoreInteractionRepresentableAdaptor<A>, v5);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C0FA9AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceTransformModifier<NavigationTitleKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<NavigationTitleKey> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0FAA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0FAAF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 44);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0FAC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 72);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18C0FAD00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_3(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 72);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18C0FADD4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0FAE0C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FAE44()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FAE7C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FB394()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FB3D4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0FB454(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for BadgedView(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for BadgedView<A>, v4);
}

uint64_t sub_18C0FB49C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for BadgedView(255, *a1, a1[2], a4);

  return swift_getWitnessTable(protocol conformance descriptor for BadgedView<A>, v4);
}

uint64_t sub_18C0FB4E8(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceWritingModifier<BadgePreferenceKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for _PreferenceWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
}

uint64_t sub_18C0FB554(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for _PreferenceWritingModifier<BadgePreferenceKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for _PreferenceWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
}

uint64_t sub_18C0FB5C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for ControlGroupStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for ControlGroupStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0FB684(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0FB70C()
{
  v2 = *(v0 + 40);
  v12 = *(v0 + 16);
  v1 = v12;
  v13 = *(v0 + 24);
  v11 = v13;
  v14 = v2;
  v3 = type metadata accessor for LegacyNavigationLinkButton(0, &v12);
  v4 = v0 + ((*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80));
  (*(*(v1 - 8) + 8))(v4, v1);
  v5 = v4 + *(v3 + 52);
  (*(*(v11 - 8) + 8))(v5, v11);
  v8 = type metadata accessor for NavigationDestinationPayload(0, v11, v6, v7);
  v9 = (v5 + v8[7]);
  if (v9[3] >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  outlined consume of StateOrBinding<Bool>(*(v5 + v8[10]), *(v5 + v8[10] + 8), *(v5 + v8[10] + 16), *(v5 + v8[10] + 17));
  if (*(v5 + v8[11] + 8) != 1)
  {
    swift_weakDestroy();
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FB8CC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FB90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = type metadata accessor for NavigationDestinationPayload(0, v5, a3, a4);
  v7 = (*(*(v6 - 1) + 80) + 120) & ~*(*(v6 - 1) + 80);
  swift_weakDestroy();

  v8 = v4 + v7;
  (*(*(v5 - 8) + 8))(v4 + v7, v5);
  v9 = (v4 + v7 + v6[7]);
  if (v9[3] >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  outlined consume of StateOrBinding<Bool>(*(v8 + v6[10]), *(v8 + v6[10] + 8), *(v8 + v6[10] + 16), *(v8 + v6[10] + 17));
  if (*(v8 + v6[11] + 8) != 1)
  {
    swift_weakDestroy();
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FBA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = type metadata accessor for NavigationDestinationPayload(0, v5, a3, a4);
  v7 = (*(*(v6 - 1) + 80) + 177) & ~*(*(v6 - 1) + 80);
  __swift_destroy_boxed_opaque_existential_1((v4 + 96));
  v8 = v4 + v7;
  (*(*(v5 - 8) + 8))(v4 + v7, v5);
  v9 = (v4 + v7 + v6[7]);
  if (v9[3] >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  outlined consume of StateOrBinding<Bool>(*(v8 + v6[10]), *(v8 + v6[10] + 8), *(v8 + v6[10] + 16), *(v8 + v6[10] + 17));
  if (*(v8 + v6[11] + 8) != 1)
  {
    swift_weakDestroy();
  }

  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0FBBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = type metadata accessor for NavigationDestinationPayload(0, v5, a3, a4);
  v7 = (*(*(v6 - 1) + 80) + 168) & ~*(*(v6 - 1) + 80);
  swift_weakDestroy();

  v8 = v4 + v7;
  (*(*(v5 - 8) + 8))(v4 + v7, v5);
  v9 = (v4 + v7 + v6[7]);
  if (v9[3] >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  outlined consume of StateOrBinding<Bool>(*(v8 + v6[10]), *(v8 + v6[10] + 8), *(v8 + v6[10] + 16), *(v8 + v6[10] + 17));
  if (*(v8 + v6[11] + 8) != 1)
  {
    swift_weakDestroy();
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FBD44(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v13[0] = &type metadata for NavigationLinkStyleConfiguration.Label;
  v13[1] = v2;
  v13[2] = lazy protocol witness table accessor for type NavigationLinkStyleConfiguration.Label and conformance NavigationLinkStyleConfiguration.Label();
  v13[3] = v4;
  type metadata accessor for StaticSourceWriter(255, v13);
  v5 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for LegacyNavigationLinkModifier(255, v1, v3, v6);
  v8 = type metadata accessor for ModifiedContent();
  v12[0] = lazy protocol witness table accessor for type ResolvedNavigationLink and conformance ResolvedNavigationLink();
  v12[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v9 = MEMORY[0x1E697E858];
  v11[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v12);
  v11[1] = swift_getWitnessTable(protocol conformance descriptor for LegacyNavigationLinkModifier<A>, v7);
  return swift_getWitnessTable(v9, v8, v11);
}

uint64_t sub_18C0FBE40(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>(255);
  v2 = type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<HasKeyboardShortcut>(255);
  v3 = type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<ButtonKeyboardShortcutKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>, &type metadata for KeyboardShortcutPickerOptionTraitKey, &protocol witness table for KeyboardShortcutPickerOptionTraitKey, MEMORY[0x1E697FDB8]);
  v4 = type metadata accessor for ModifiedContent();
  v9[0] = v1;
  v9[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<KeyboardShortcut?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>, MEMORY[0x1E6980A18]);
  v5 = MEMORY[0x1E697E858];
  v8[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v9);
  v8[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<HasKeyboardShortcut>, MEMORY[0x1E697FD30]);
  v7[0] = swift_getWitnessTable(v5, v3, v8);
  v7[1] = lazy protocol witness table accessor for type _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(v5, v4, v7);
}

uint64_t sub_18C0FBFDC(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for NavigationItemAdaptorModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C0FC044()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FC0C0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FC11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18C0FC1C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18C0FC26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_18C0FC2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_18C0FC410()
{
  _ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_18C0FC530()
{

  return swift_deallocObject();
}

void *_s7SwiftUI21TextFormattingControlVwcp_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t sub_18C0FC5C8()
{
  outlined consume of Environment<Binding<Visibility>?>.Content(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 33));

  return swift_deallocObject();
}

uint64_t sub_18C0FC608@<X0>(uint64_t *a2@<X8>)
{
  result = EnvironmentValues.effectiveTintColor.getter();
  *a2 = result;
  return result;
}

uint64_t sub_18C0FC68C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for PrintedViewModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for FocusedValueModifier<Bool?>(255);
  v6 = type metadata accessor for ModifiedContent();
  v10[0] = v4;
  v10[1] = &protocol witness table for PrintedViewModifier<A>;
  v7 = MEMORY[0x1E697E858];
  v9[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v10);
  v9[1] = &protocol witness table for FocusedValueModifier<A>;
  return swift_getWitnessTable(v7, v6, v9);
}

uint64_t sub_18C0FC760()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  swift_weakDestroy();

  outlined consume of Environment<Selector?>.Content(*(v0 + 144), *(v0 + 152));

  return swift_deallocObject();
}

uint64_t sub_18C0FC7E4@<X0>(_BYTE *a3@<X8>)
{
  result = EnvironmentValues.accessibilityPrefersCrossFadeTransitions.getter();
  *a3 = result & 1;
  return result;
}

uint64_t sub_18C0FC890()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 488);
  if (v1 == 2)
  {

    v3 = *(v0 + 64);
    if (v3)
    {
      if (v3 == 1)
      {
        goto LABEL_35;
      }
    }

    if (*(v0 + 80))
    {
    }

    if (*(v0 + 104))
    {

LABEL_34:
    }
  }

  else if (v1 == 1)
  {
    if (*(v0 + 88))
    {
    }

    if (*(v0 + 144))
    {
    }

    v2 = *(v0 + 248);
    if (*(v0 + 280))
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 192))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 168));
          }

          if (*(v0 + 216) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 160));
        }
      }
    }

    else
    {
      if (v2 != 255)
      {
        if (v2)
        {

          if (*(v0 + 192))
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 168));
          }

          if (*(v0 + 216) != 1)
          {
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1((v0 + 160));
        }
      }
    }

    if (*(v0 + 400))
    {

      goto LABEL_34;
    }
  }

LABEL_35:
  swift_weakDestroy();

  outlined consume of Environment<Selector?>.Content(*(v0 + 552), *(v0 + 560));
  outlined consume of Environment<NSManagedObjectContext>.Content(*(v0 + 568), *(v0 + 576));

  return swift_deallocObject();
}

uint64_t sub_18C0FCBC0()
{

  v1 = *(v0 + 56);
  if (v1)
  {
    if (v1 == 1)
    {
      goto LABEL_7;
    }

    outlined consume of Text.Storage(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  }

  if (*(v0 + 64) != 1)
  {
  }

LABEL_7:

  return swift_deallocObject();
}

uint64_t sub_18C0FCC34()
{

  return swift_deallocObject();
}

void *sub_18C0FCCB8@<X0>(_BYTE *a2@<X8>)
{
  result = Transaction.subscript.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18C0FCD58()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0FCDD8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FCE10()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FCE58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C0FCE90()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FCEC8()
{

  return swift_deallocObject();
}

__n128 sub_18C0FCF54(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18C0FCFE0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0FCFEC()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FD028(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type MatchedTransitionSourceModifier and conformance MatchedTransitionSourceModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

void _sSo11UITextFieldC7SwiftUI20UIKitTextInputTraitsA2cDP02uiF11ContentTypeSo0ajK0aSgvsTW_0(void *a1)
{
  [v1 setTextContentType_];
}

id _sSo11UITextFieldC7SwiftUI14UIKitTextInputA2cDP012uiAttributedF0So18NSAttributedStringCSgvgTW_0()
{
  v1 = [v0 attributedText];

  return v1;
}

id _sSo11UITextFieldC7SwiftUI14UIKitTextInputA2cDP02uiG13AccessoryViewSo6UIViewCSgvgTW_0()
{
  v1 = [v0 inputAccessoryView];

  return v1;
}

void _sSo11UITextFieldC7SwiftUI14UIKitTextInputA2cDP02uiG13AccessoryViewSo6UIViewCSgvsTW_0(void *a1)
{
  [v1 setInputAccessoryView_];
}

uint64_t sub_18C0FD270()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C0FD2A8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FD2E8()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FD32C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for AllowsIncompleteEventSequences(255, AssociatedTypeWitness, v4, v5);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for AllowsIncompleteEventSequences<A>, v6);
  v7 = type metadata accessor for ModifierGesture();
  return swift_getWitnessTable(MEMORY[0x1E697E860], v7, v6, v1, WitnessTable, v2);
}

uint64_t sub_18C0FD3DC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0FD474(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0FD528(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v9[0] = &type metadata for _NavigationViewStyleConfiguration.Content;
  v9[1] = v1;
  v9[2] = lazy protocol witness table accessor for type _NavigationViewStyleConfiguration.Content and conformance _NavigationViewStyleConfiguration.Content();
  v9[3] = v2;
  type metadata accessor for StaticSourceWriter(255, v9);
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  v8[0] = lazy protocol witness table accessor for type ResolvedNavigationViewStyle and conformance ResolvedNavigationViewStyle();
  v8[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v5 = MEMORY[0x1E697E858];
  v7[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v8);
  v7[1] = lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier();
  return swift_getWitnessTable(v5, v4, v7);
}

uint64_t sub_18C0FD61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for ArchivableScrapedItem.Content(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_18C0FD694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for ArchivableScrapedItem.Content(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_18C0FD740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0FD7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0FD81C()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 64) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C0FD89C()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FD8DC()
{
  if (*(v0 + 184) == 1)
  {
  }

  else if (!*(v0 + 184))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    if (*(v0 + 136))
    {
    }

    if (*(v0 + 176))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 152));
    }
  }

  return swift_deallocObject();
}

__n128 sub_18C0FD9FC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0FDA6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for AccessibilityFocusStoreListModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for AccessibilityFocusStoreListModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0FDADC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for AccessibilityFocusBindingModifier(255, a1[1], a1[3], a4);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v4;
  v8[1] = swift_getWitnessTable(protocol conformance descriptor for AccessibilityFocusBindingModifier<A>, v5);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

uint64_t sub_18C0FDB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  type metadata accessor for AccessibilityFocusBindingModifier<Bool>(255, a2, a3, a4);
  v5 = type metadata accessor for ModifiedContent();
  v10[0] = v4;
  v10[1] = lazy protocol witness table accessor for type AccessibilityFocusBindingModifier<Bool> and conformance AccessibilityFocusBindingModifier<A>(v5, v6, v7, v8);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v10);
}

uint64_t sub_18C0FDCD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for GroupBoxStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for GroupBoxStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C0FDD88(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C0FDDFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for WrappedButtonStyle(255, a1[1], a1[3], a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for WrappedButtonStyle<A>, v5);
  v8 = type metadata accessor for ButtonStyleModifier(255, v5, WitnessTable, v7);
  swift_getWitnessTable(protocol conformance descriptor for ButtonStyleModifier<A>, v8);
  v9 = type metadata accessor for AutomaticStyleOverrideModifier();
  v10 = type metadata accessor for ModifiedContent();
  v12[0] = v4;
  v12[1] = swift_getWitnessTable(MEMORY[0x1E69809A8], v9);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v10, v12);
}

uint64_t sub_18C0FDEF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ButtonStyleModifier(255, a1[1], a1[3], a4);
  swift_getWitnessTable(protocol conformance descriptor for ButtonStyleModifier<A>, v5);
  v6 = type metadata accessor for AutomaticStyleOverrideModifier();
  v7 = type metadata accessor for ModifiedContent();
  v9[0] = v4;
  v9[1] = swift_getWitnessTable(MEMORY[0x1E69809A8], v6);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v7, v9);
}

uint64_t sub_18C0FDFCC@<X0>(uint64_t *a3@<X8>)
{
  result = EnvironmentValues.defaultForegroundStyle.getter();
  *a3 = result;
  return result;
}

uint64_t sub_18C0FE034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MEMORY[0x18D0065B0](a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18C0FE09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18C0FE158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_18C0FE218()
{
  v1 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  type metadata accessor for ButtonAction(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v2, *(v2 + 8), *(v2 + 16));
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined consume of Environment<OpenURLAction>.Content(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 34));
      outlined consume of Environment<OpenURLAction>.Content(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72), *(v2 + 74));
      v4 = *(type metadata accessor for LinkDestination() + 24);
      v5 = type metadata accessor for URL();
      (*(*(v5 - 8) + 8))(v2 + v4, v5);
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }
  }

LABEL_8:

  return swift_deallocObject();
}

uint64_t sub_18C0FE38C@<X0>(uint64_t *a3@<X8>)
{
  result = EnvironmentValues.foregroundStyle.getter();
  *a3 = result;
  return result;
}

uint64_t sub_18C0FE448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0FE4B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlassMaterialProvider.Configuration();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0FE5A0()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FE67C(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v10[0] = &type metadata for SectionStyleConfiguration.Actions;
  v10[1] = v1;
  v10[2] = lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions();
  v10[3] = v3;
  type metadata accessor for StaticSourceWriter(255, v10);
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<SectionActionsTraitKey>, &type metadata for SectionActionsTraitKey, &protocol witness table for SectionActionsTraitKey, MEMORY[0x1E697FDB8]);
  v5 = type metadata accessor for ModifiedContent();
  v9[0] = v2;
  v9[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v6 = MEMORY[0x1E697E858];
  v8[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v9);
  v8[1] = lazy protocol witness table accessor for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(v6, v5, v8);
}

void _s7SwiftUI14_UIHostingViewC29accessibilityBooleanDidChange33_FAF0B683EB49BE9BABC9009857940A1ELLyySo14NSNotificationCFTo_0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v8 = a1;
  _UIHostingView.focusedValues.didset(2, v5, v6, v7);
}

uint64_t sub_18C0FE86C()
{
  v1 = *(v0 + 16);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FE8AC()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FE8F4@<X0>(uint64_t *a1@<X8>)
{
  result = _UIHostingView.safeAreaRegions.getter();
  *a1 = result;
  return result;
}

__n128 sub_18C0FE954(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0FE960@<X0>(_BYTE *a1@<X8>)
{
  result = _UIHostingView.accessibilityEnabled.getter();
  *a1 = result & 1;
  return result;
}

double sub_18C0FE9C4@<D0>(uint64_t a1@<X8>)
{
  _UIHostingView._rendererConfiguration.getter();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_18C0FEA7C@<X0>(_BYTE *a1@<X8>)
{
  result = _UIHostingView.invalidatesIntrinsicContentSizeOnIdealSizeChange.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_18C0FEAE0@<X0>(_BYTE *a1@<X8>)
{
  result = _UIHostingView.addsKeyboardToSafeAreaInsets.getter();
  *a1 = result & 1;
  return result;
}

double sub_18C0FEB44@<D0>(_OWORD *a1@<X8>)
{
  _UIHostingView.environmentOverride.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_18C0FEB80(uint64_t *a1)
{
  v1 = a1[1];
  *&v3 = *a1;
  *(&v3 + 1) = v1;
  outlined copy of EnvironmentValues?(v3, v1);
  return _UIHostingView.environmentOverride.setter(&v3);
}

uint64_t sub_18C0FEBD0@<X0>(_BYTE *a1@<X8>)
{
  result = _UIHostingView.isHiddenForReuse.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C0FEC34()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FECA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceWritingModifier<ExtendedLaunchTestNameKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for _PreferenceWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
}

uint64_t sub_18C0FED24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = UIHostingController.centersRootView.getter(a2, a3, a4, a5);
  *a1 = result & 1;
  return result;
}

__n128 sub_18C0FED88(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C0FED94@<X0>(_BYTE *a1@<X8>)
{
  result = UIHostingController.isHiddenForReuse.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18C0FEE4C@<X0>(void *a1@<X8>)
{
  result = UIHostingController.sizingOptions.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_18C0FEECC@<X0>(_BYTE *a1@<X8>)
{
  result = UIHostingController._disableSafeArea.getter();
  *a1 = result & 1;
  return result;
}

double sub_18C0FEF30@<D0>(uint64_t a1@<X8>)
{
  UIHostingController._rendererConfiguration.getter();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_18C0FEF94()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t _s7SwiftUI7ForEachVA2A15TableRowContentR0_rlE011SynthesizedcdF3IDs33_A17C426D23F0B43C60B49C06279CF203LLVyxq_q0__GSlAASl5index_8offsetBy5IndexQzAL_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.SynthesizedForEachRowIDs, a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI7ForEachVA2A15TableRowContentR0_rlE011SynthesizedcdF3IDs33_A17C426D23F0B43C60B49C06279CF203LLVyxq_q0__GSlAASl5index_8offsetBy07limitedU05IndexQzSgAM_SiAMtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.SynthesizedForEachRowIDs, a4);

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

uint64_t _s7SwiftUI7ForEachVA2A15TableRowContentR0_rlE011SynthesizedcdF3IDs33_A17C426D23F0B43C60B49C06279CF203LLVyxq_q0__GSlAASl8distance4from2toSi5IndexQz_AMtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ForEach<A, B, C><>.SynthesizedForEachRowIDs, a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_18C0FF160()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI7ForEachVyxq_q0_GAA24PrimitiveTableRowContentA2A0fgH0R0_rlWI_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable(protocol conformance descriptor for <> ForEach<A, B, C>, a2, &v5);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_18C0FF1F8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_18C0FF250()
{

  return swift_deallocObject();
}

uint64_t sub_18C0FF288()
{

  return swift_deallocObject();
}

uint64_t *_s7SwiftUI18PresentationDetentV7ContextVwcp_0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_18C0FF358(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>, &type metadata for PresentationOptionsPreferenceKey, &protocol witness table for PresentationOptionsPreferenceKey, MEMORY[0x1E6980910]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceTransformModifier<PresentationOptionsPreferenceKey> and conformance _PreferenceTransformModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0FF3F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

void *_s7SwiftUI27PresentationDimmingBehaviorOwcp_0(void *result, void **a2)
{
  v2 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v3 = result;
    v4 = v2;
    result = v3;
  }

  *result = v2;
  return result;
}

uint64_t sub_18C0FF4E8()
{

  return swift_deallocObject();
}