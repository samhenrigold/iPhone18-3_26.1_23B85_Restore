uint64_t sub_18C0FF52C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedTabContent(255, *a1, &unk_1F000E640, a4);
  v7[0] = v4;
  v7[1] = lazy protocol witness table accessor for type TabPlacementModifier and conformance TabPlacementModifier();
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedTabContent<A, B>, v5, v7);
}

uint64_t sub_18C0FF5A0()
{
  type metadata accessor for _ViewModifier_Content<TabPlacementModifier>(255);
  lazy protocol witness table accessor for type _ViewModifier_Content<TabPlacementModifier> and conformance _ViewModifier_Content<A>();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C0FF61C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>();
  v2 = type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<ButtonRepeatBehavior.HasCustomRepeatBehavior>(255);
  v3 = type metadata accessor for ModifiedContent();
  v7[0] = v1;
  v7[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonRepeatBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ButtonRepeatBehavior> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<ButtonRepeatBehavior>, MEMORY[0x1E6980A18]);
  v4 = MEMORY[0x1E697E858];
  v6[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v7);
  v6[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ButtonRepeatBehavior> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ButtonRepeatBehavior.HasCustomRepeatBehavior> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ButtonRepeatBehavior.HasCustomRepeatBehavior>, MEMORY[0x1E697FD30]);
  return swift_getWitnessTable(v4, v3, v6);
}

double sub_18C0FF774@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @callee_guaranteed () -> ();
  a2[1] = v5;

  return result;
}

uint64_t sub_18C0FF7F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for EnvironmentPropertyKey<ButtonOutsetKey>(255, &lazy cache variable for type metadata for ButtonActionModifier<_ButtonGesture>, &type metadata for _ButtonGesture, &protocol witness table for _ButtonGesture, type metadata accessor for ButtonActionModifier);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for ButtonActionModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0FF888(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C0FF928()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FF968()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FFA08()
{
  if (*(v0 + 32) != 255)
  {
    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(*(v0 + 16), *(v0 + 24));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FFA58()
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(*(v0 + 16), *(v0 + 24));
  if (*(v0 + 56) != 255)
  {
    outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(*(v0 + 40), *(v0 + 48));
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FFAF4()
{
  type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>(255);
  lazy protocol witness table accessor for type ModifierGesture<EventFilter<LegacyButtonGesture.Value>, ModifierGesture<EventFilter<LegacyButtonGesture.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, ModifierGesture<EventFilter<PrimitiveButtonGestureCore.Value>, <<opaque return type of Gesture.dependency(_:)>>.0>>, MEMORY[0x1E697E860]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C0FFBF0()
{
  type metadata accessor for SearchBoundProperty<TextSelection?>(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  type metadata accessor for TextSelection?(0);
  v5 = (v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = v0 + v2;

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_4(0, &lazy cache variable for type metadata for Binding<TextSelection?>, type metadata accessor for TextSelection?, MEMORY[0x1E6981948]);
  v8 = *(v7 + 32);
  v9 = type metadata accessor for TextSelection(0);
  v10 = *(*(v9 - 8) + 48);
  if (!v10(v6 + v8, 1, v9))
  {
    type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI15SelectionRangesOySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
      (*(*(v11 - 8) + 8))(v6 + v8, v11);
    }
  }

  if (!v10(v0 + v5, 1, v9))
  {
    type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s7SwiftUI15SelectionRangesOySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E7BE0]);
      (*(*(v12 - 8) + 8))(v0 + v5, v12);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18C0FFEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C0FFF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C0FFF88()
{
  v1 = *(type metadata accessor for UIKitSearchFieldAdaptor(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  type metadata accessor for Binding<SearchFieldState>(0);
  v4 = *(v3 + 32);
  v5 = v4 + *(type metadata accessor for SearchFieldState(0) + 36);
  v6 = type metadata accessor for AttributedString();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = type metadata accessor for SearchFieldConfiguration(0);
  v8 = v2 + *(v7 + 24);
  v9 = *(v8 + 8);
  if (v9 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v8, v9 & 1);
  }

  outlined consume of Text.Storage(*(v2 + *(v7 + 32)), *(v2 + *(v7 + 32) + 8), *(v2 + *(v7 + 32) + 16));

  return swift_deallocObject();
}

uint64_t sub_18C1000D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Binding<SearchFieldState>(0);
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

void sub_18C1001A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for Binding<SearchFieldState>(0);
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

uint64_t sub_18C1002B4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C1002F4()
{
  type metadata accessor for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>(255);
  _s7SwiftUI13_EndedGestureVyAA019PhysicalButtonPressD0VGACyxGAA0D0AAWlTm_0(&lazy protocol witness table cache variable for type ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>> and conformance ModifierGesture<A, B>, type metadata accessor for ModifierGesture<MapGesture<PhysicalButtonEvent, PhysicalButtonEvent.ButtonType>, EventListener<PhysicalButtonEvent>>, MEMORY[0x1E697E860]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C100398()
{

  return swift_deallocObject();
}

uint64_t sub_18C1003D0()
{

  return swift_deallocObject();
}

uint64_t sub_18C100408(void *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v5 = type metadata accessor for ModifiedContent();
  v15[0] = v4;
  v15[1] = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_2(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v6 = MEMORY[0x1E697E858];
  v14[0] = v1;
  v14[1] = v5;
  v14[2] = v3;
  v14[3] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v15);
  v7 = type metadata accessor for SelectionMenuModifier(255, v14);
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for SelectionActionModifier(255, v1, v3, v9);
  v10 = type metadata accessor for ModifiedContent();
  v13[0] = v2;
  v13[1] = swift_getWitnessTable(protocol conformance descriptor for SelectionMenuModifier<A, B>, v7);
  v12[0] = swift_getWitnessTable(v6, v8, v13);
  v12[1] = &protocol witness table for SelectionActionModifier<A>;
  return swift_getWitnessTable(v6, v10, v12);
}

uint64_t sub_18C100564(void *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  type metadata accessor for StyleContextWriter<MenuStyleContext>();
  v5 = type metadata accessor for ModifiedContent();
  v12[0] = v3;
  v12[1] = _s7SwiftUI18StyleContextWriterVyAA04MenucD0VGACyxGAA12ViewModifierAAWlTm_2(&lazy protocol witness table cache variable for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>, type metadata accessor for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697F4D0]);
  v6 = MEMORY[0x1E697E858];
  v11[0] = v1;
  v11[1] = v5;
  v11[2] = v4;
  v11[3] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v12);
  v7 = type metadata accessor for SelectionMenuModifier(255, v11);
  v8 = type metadata accessor for ModifiedContent();
  v10[0] = v2;
  v10[1] = swift_getWitnessTable(protocol conformance descriptor for SelectionMenuModifier<A, B>, v7);
  return swift_getWitnessTable(v6, v8, v10);
}

__n128 sub_18C1006CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C1006D8()
{

  return swift_deallocObject();
}

uint64_t sub_18C100724(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v13 = *a1;
  v1 = v13;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  v5 = type metadata accessor for SelectionMenuModifier(255, &v13);
  swift_getWitnessTable(protocol conformance descriptor for SelectionMenuModifier<A, B>, v5);
  v6 = type metadata accessor for _ViewModifier_Content();
  v13 = v1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  type metadata accessor for SelectionMenuModifierCore(255, &v13);
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>(255);
  v8 = type metadata accessor for ModifiedContent();
  v12[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
  v12[1] = &protocol witness table for SelectionMenuModifierCore<A, B>;
  v9 = MEMORY[0x1E697E858];
  v11[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v12);
  v11[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable(v9, v8, v11);
}

uint64_t sub_18C100854()
{

  return swift_deallocObject();
}

uint64_t sub_18C1008C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for NavigationLinkStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for NavigationLinkStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C100940(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for GestureRecognizerModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for GestureRecognizerModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C1009B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for MenuButtonStyleWriter(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for MenuButtonStyleWriter<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C100A20(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<ControlSize>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, MEMORY[0x1E697DC38], MEMORY[0x1E6980A08]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C100AB8()
{

  return swift_deallocObject();
}

uint64_t sub_18C100AF0()
{

  return swift_deallocObject();
}

uint64_t sub_18C100B50()
{

  return swift_deallocObject();
}

uint64_t sub_18C100BF4(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceWritingModifier<FileExportOperation.Key>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<FileExportOperation.Key> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<FileExportOperation.Key> and conformance _PreferenceWritingModifier<A>, type metadata accessor for _PreferenceWritingModifier<FileExportOperation.Key>, MEMORY[0x1E6980758]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C100C90(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<FileExportOperation.Key> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type FileDialogConfiguration<FileExportOperation.Key, FileExportOperation> and conformance FileDialogConfiguration<A, B>, type metadata accessor for FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>, protocol conformance descriptor for FileDialogConfiguration<A, B>);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C100D3C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C100D74()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18C100DC4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DatePickerStyleConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>, MEMORY[0x1E6969770], MEMORY[0x1E697DCC0]);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[6];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC0]);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCC0]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_18C100FDC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for DatePickerStyleConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Locale>, MEMORY[0x1E6969770], MEMORY[0x1E697DCC0]);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<Calendar>, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC0]);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_1(0, &lazy cache variable for type metadata for Environment<TimeZone>, MEMORY[0x1E6969BC0], MEMORY[0x1E697DCC0]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_18C101200(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DatePickerStyleConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Locale();
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

  v14 = type metadata accessor for Calendar();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = type metadata accessor for TimeZone();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_18C101388(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for DatePickerStyleConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Locale();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = type metadata accessor for Calendar();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = type metadata accessor for TimeZone();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_18C10154C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for UIKitMenuButton<MenuStyleConfiguration.Label, MenuStyleConfiguration.Content>();
  type metadata accessor for UIKitButtonStyleModifier(255, v1, v2, v3);
  v4 = type metadata accessor for ModifiedContent();
  v6[0] = &protocol witness table for UIKitMenuButton<A, B>;
  v6[1] = &protocol witness table for UIKitButtonStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
}

uint64_t sub_18C1015DC(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C101680()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C1016C0()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    outlined consume of Result<(), Error>(*(v0 + 16), v1 & 1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C101718()
{

  return swift_deallocObject();
}

uint64_t sub_18C101758()
{

  return swift_deallocObject();
}

__n128 sub_18C1017A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C1017B0()
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

uint64_t sub_18C101840(_OWORD *a1)
{
  v1 = a1[1];
  v10[0] = *a1;
  v10[1] = v1;
  v2 = type metadata accessor for ItemNavigationLinkModifier(255, v10);
  swift_getWitnessTable(protocol conformance descriptor for ItemNavigationLinkModifier<A, B>, v2);
  v3 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>, &type metadata for NavigationDestinationsKey, &protocol witness table for NavigationDestinationsKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v4 = type metadata accessor for ModifiedContent();
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationDestinationsKey>(255, &lazy cache variable for type metadata for RelationshipModifier<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], type metadata accessor for RelationshipModifier);
  v5 = type metadata accessor for ModifiedContent();
  v9[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3);
  v9[1] = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v6 = MEMORY[0x1E697E858];
  v8[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v9);
  v8[1] = &protocol witness table for RelationshipModifier<A>;
  return swift_getWitnessTable(v6, v5, v8);
}

uint64_t sub_18C1019BC(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = MEMORY[0x1E6980950];
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C101A48(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for Binding<ScrollPosition>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollAnchorStorage>, MEMORY[0x1E697F798], MEMORY[0x1E6980B20]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollAnchorStorage> and conformance _EnvironmentKeyTransformModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C101AD8(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for TabViewCustomizationModifier(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = &protocol witness table for TabViewCustomizationModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C101B44(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C101BB0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<TabViewCustomization>?(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_18C101C20(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  EnvironmentValues.focusEffect.getter(&v3);
  *a2 = v3;
}

uint64_t sub_18C101CC4(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for _FocusableModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C101DB8(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
  v2 = type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<LabelVisibilityConfigured>(255);
  v3 = type metadata accessor for ModifiedContent();
  v7[0] = v1;
  v7[1] = lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>, MEMORY[0x1E6980A18]);
  v4 = MEMORY[0x1E697E858];
  v6[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v7);
  v6[1] = lazy protocol witness table accessor for type EnvironmentPropertyKey<LabelsVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<LabelVisibilityConfigured> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<LabelVisibilityConfigured>, MEMORY[0x1E697FD30]);
  return swift_getWitnessTable(v4, v3, v6);
}

uint64_t sub_18C101EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
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

uint64_t sub_18C101FA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2 + 2;
  }

  return result;
}

uint64_t sub_18C102064()
{
  if (*(v0 + 64) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  return swift_deallocObject();
}

uint64_t sub_18C1020A8()
{

  return swift_deallocObject();
}

void *sub_18C1020E8@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.backgroundProminence.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18C102164@<X0>(_BYTE *a3@<X8>)
{
  result = EnvironmentValues.appearsActive.getter();
  *a3 = result & 1;
  return result;
}

uint64_t sub_18C1021D8()
{
  type metadata accessor for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>(255);
  lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>(&lazy protocol witness table cache variable for type HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>>, MEMORY[0x1E69817F8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C102260(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for TupleView<(BadgeViewStyleConfiguration.Content, Spacer, ModifiedContent<Badge<BadgeLabel>, _TraitWritingModifier<LayoutPriorityTraitKey>>?)>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, type metadata accessor for Font?, MEMORY[0x1E6980A08]);
  v2 = type metadata accessor for ModifiedContent();
  type metadata accessor for _TraitWritingModifier<LayoutPriorityTraitKey>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E697E0A8], MEMORY[0x1E6980480]);
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>(255);
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  v17[0] = v1;
  v17[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>();
  v9 = MEMORY[0x1E697E858];
  v16[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v17);
  v16[1] = lazy protocol witness table accessor for type _ForegroundStyleModifier<AnyShapeStyle> and conformance _ForegroundStyleModifier<A>();
  v15[0] = swift_getWitnessTable(v9, v3, v16);
  v15[1] = MEMORY[0x1E697E5D8];
  v14[0] = swift_getWitnessTable(v9, v4, v15);
  v14[1] = MEMORY[0x1E697EBF8];
  v13[0] = swift_getWitnessTable(v9, v5, v14);
  v13[1] = MEMORY[0x1E697E040];
  v12[0] = swift_getWitnessTable(v9, v6, v13);
  v12[1] = lazy protocol witness table accessor for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>(&lazy protocol witness table cache variable for type _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule> and conformance _InsettableBackgroundShapeModifier<A, B>, type metadata accessor for _InsettableBackgroundShapeModifier<AnyShapeStyle, Capsule>, MEMORY[0x1E6980BA8]);
  v11[0] = swift_getWitnessTable(v9, v7, v12);
  v11[1] = &protocol witness table for AccessibilityAttachmentModifier;
  return swift_getWitnessTable(v9, v8, v11);
}

uint64_t sub_18C1024B4()
{

  return swift_deallocObject();
}

uint64_t sub_18C102508(uint64_t *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v21 = *a1;
  v1 = v21;
  v22 = v2;
  v23 = v3;
  v24 = v4;
  v5 = type metadata accessor for ContextMenuPreviewModifier(255, &v21);
  swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewModifier<A, B>, v5);
  v6 = type metadata accessor for _ViewModifier_Content();
  v21 = v1;
  v22 = v2;
  v23 = v3;
  v24 = v4;
  type metadata accessor for ContextMenuPreviewModifierCore(255, &v21);
  v7 = type metadata accessor for ModifiedContent();
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>, type metadata accessor for _SemanticFeature<Semantics_v5>, &type metadata for PortalGroupRendererEffect);
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for StaticIf();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier>, type metadata accessor for InvertedViewInputPredicate<IsSharingPickerHost>, &type metadata for SharingPickerHostModifier);
  v11 = type metadata accessor for ModifiedContent();
  v12 = lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
  v20[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v6);
  v20[1] = &protocol witness table for ContextMenuPreviewModifierCore<A, B>;
  v13 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v20);
  v19[0] = WitnessTable;
  v19[1] = MEMORY[0x1E697FC98];
  v18[0] = swift_getWitnessTable(v13, v8, v19);
  v18[1] = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v5>, PortalGroupRendererEffect, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v17[0] = v12;
  v17[1] = WitnessTable;
  v17[2] = swift_getWitnessTable(v13, v9, v18);
  v16[0] = swift_getWitnessTable(MEMORY[0x1E6981CE8], v10, v17);
  v16[1] = lazy protocol witness table accessor for type StaticIf<InvertedViewInputPredicate<IsSharingPickerHost>, SharingPickerHostModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  return swift_getWitnessTable(v13, v11, v16);
}

uint64_t sub_18C102744(__int128 *a1)
{
  v1 = *(a1 + 2);
  v12 = *(a1 + 24);
  v2 = *(a1 + 5);
  v17 = *a1;
  v13 = v17;
  *v18 = v1;
  *&v18[8] = v12;
  v19 = v2;
  v3 = type metadata accessor for ContextMenuPreviewDestinationModifier.Transform(255, &v17);
  swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewDestinationModifier<A, B, C>.Transform, v3);
  v4 = type metadata accessor for _ViewModifier_Content();
  v17 = v13;
  *v18 = v12;
  v5 = type metadata accessor for ContextMenuPreviewModifier(255, &v17);
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for UpdateViewDestinationViewModifier(255, v1, v2, v7);
  type metadata accessor for UpdateViewDestinationRequestProcessor(255, v1, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380]);
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for ModifiedContent();
  v16[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v4);
  v16[1] = swift_getWitnessTable(protocol conformance descriptor for ContextMenuPreviewModifier<A, B>, v5);
  v10 = MEMORY[0x1E697E858];
  v15[0] = &protocol witness table for UpdateViewDestinationViewModifier<A>;
  v15[1] = &protocol witness table for UpdateViewDestinationRequestProcessor<A, B>;
  v14[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v16);
  v14[1] = swift_getWitnessTable(MEMORY[0x1E697E840], v8, v15);
  return swift_getWitnessTable(v10, v9, v14);
}

uint64_t sub_18C102920()
{

  return swift_deallocObject();
}

uint64_t sub_18C102958()
{

  return swift_deallocObject();
}

uint64_t sub_18C1029A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedCompositorContent(255, *a1, MEMORY[0x1E69805D8], a4);
  v7[0] = v4;
  v7[1] = MEMORY[0x1E69805D0];
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedCompositorContent<A, B>, v5, v7);
}

uint64_t sub_18C102A04(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedCompositorContent(255, *a1, MEMORY[0x1E6980BF8], a4);
  v7[0] = v4;
  v7[1] = lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier();
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedCompositorContent<A, B>, v5, v7);
}

uint64_t sub_18C102A68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedCompositorContent(255, *a1, MEMORY[0x1E6980230], a4);
  v7[0] = v4;
  v7[1] = MEMORY[0x1E6980228];
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedCompositorContent<A, B>, v5, v7);
}

uint64_t sub_18C102ACC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = type metadata accessor for _ValueActionModifier2();
  v5 = type metadata accessor for ModifiedCompositorContent(255, v1, v3, v4);
  v7 = type metadata accessor for ModifiedCompositorContent(255, v5, MEMORY[0x1E69805D8], v6);
  v10[0] = v2;
  v10[1] = swift_getWitnessTable(MEMORY[0x1E697FDE0], v3);
  v9[0] = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedCompositorContent<A, B>, v5, v10);
  v9[1] = MEMORY[0x1E69805D0];
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedCompositorContent<A, B>, v7, v9);
}

uint64_t sub_18C102B98(void *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  type metadata accessor for ViewInputFlagModifier<AccessibilityShowsLabelIcon>(255);
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  v16[0] = v4;
  v16[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityShowsLabelIcon> and conformance ViewInputFlagModifier<A>();
  v8 = MEMORY[0x1E697E858];
  v15[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v16);
  v15[1] = &protocol witness table for AccessibilityAttachmentModifier;
  v14[0] = swift_getWitnessTable(v8, v6, v15);
  v14[1] = &protocol witness table for AccessibilityDetachedPropertyWriterModifier;
  WitnessTable = swift_getWitnessTable(v8, v7, v14);
  v13[2] = MEMORY[0x1E69806B0];
  v13[3] = v7;
  v13[4] = v1;
  v13[5] = MEMORY[0x1E69806A0];
  v13[6] = WitnessTable;
  v13[7] = v3;
  v10 = type metadata accessor for PlatformItemTraitWriter();
  v11 = type metadata accessor for ModifiedContent();
  v13[0] = v2;
  v13[1] = swift_getWitnessTable(MEMORY[0x1E6980240], v10);
  return swift_getWitnessTable(v8, v11, v13);
}

uint64_t sub_18C102D7C(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceWritingModifier<ToolbarRoleKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<ToolbarRoleKey> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C102DE8()
{

  return swift_deallocObject();
}

uint64_t sub_18C102E28()
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>>(255);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>>, _AnimationModifier<Bool>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>, _OpacityEffect>, _TraitWritingModifier<TransitionTraitKey>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18C102ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackButton.Configuration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C102F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackButton.Configuration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C102FA8(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for ViewInputFlagModifier<MenuItemSupportsAttributedTitle>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<MenuItemSupportsAttributedTitle> and conformance ViewInputFlagModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C103020(uint64_t a1)
{
  v1 = *(a1 + 24);
  type metadata accessor for FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = _s22UniformTypeIdentifiers6UTTypeVACSQAAWlTm_0(&lazy protocol witness table cache variable for type FileDialogConfiguration<FileExportOperation.Key, FileExportOperation> and conformance FileDialogConfiguration<A, B>, type metadata accessor for FileDialogConfiguration<FileExportOperation.Key, FileExportOperation>, protocol conformance descriptor for FileDialogConfiguration<A, B>);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C103150(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _TraitWritingModifier<NavigationSplitViewExtraWidePrimaryColumnTraitKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<NavigationSplitViewExtraWidePrimaryColumnTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

void sub_18C1031C0(void *a3@<X8>)
{
  EnvironmentValues.defaultPadding.getter();
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
}

uint64_t sub_18C10322C(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v4 = type metadata accessor for ModifiedContent();
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>>(255);
  v6 = type metadata accessor for ModifiedContent();
  type metadata accessor for _BackgroundModifier<ModifiedContent<ModifiedContent<ModifiedContent<Color, _PaddingLayout>, _FrameLayout>, _AlignmentLayout>>(255);
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for _ContentShapeModifier<Rectangle>(255);
  v8 = type metadata accessor for ModifiedContent();
  type metadata accessor for AddGestureModifier<_ButtonGesture, DefaultGestureCombiner>(255);
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  _s7SwiftUI5StateVySbGMaTm_3(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<EdgeInsets>, MEMORY[0x1E697DA60], MEMORY[0x1E6980A08]);
  v16 = type metadata accessor for ModifiedContent();
  v11 = MEMORY[0x1E697EBA8];
  v25[0] = v2;
  v25[1] = MEMORY[0x1E697EBA8];
  v12 = MEMORY[0x1E697E858];
  v24[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v25);
  v24[1] = MEMORY[0x1E697E5D8];
  v23[0] = swift_getWitnessTable(v12, v4, v24);
  v23[1] = v11;
  WitnessTable = swift_getWitnessTable(v12, v5, v23);
  v14 = MEMORY[0x1E697F940];
  v22[0] = WitnessTable;
  v22[1] = lazy protocol witness table accessor for type _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>>, MEMORY[0x1E697F940]);
  v21[0] = swift_getWitnessTable(v12, v6, v22);
  v21[1] = lazy protocol witness table accessor for type _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<ModifiedContent<ModifiedContent<Color, _PaddingLayout>, _FrameLayout>, _AlignmentLayout>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<ModifiedContent<ModifiedContent<ModifiedContent<Color, _PaddingLayout>, _FrameLayout>, _AlignmentLayout>>, v14);
  v20[0] = swift_getWitnessTable(v12, v7, v21);
  v20[1] = lazy protocol witness table accessor for type _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>, type metadata accessor for _ContentShapeModifier<Rectangle>, MEMORY[0x1E697FD58]);
  v19[0] = swift_getWitnessTable(v12, v8, v20);
  v19[1] = lazy protocol witness table accessor for type _BackgroundModifier<ModifiedContent<Color, _SafeAreaRegionsIgnoringLayout>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type AddGestureModifier<_ButtonGesture, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_ButtonGesture, DefaultGestureCombiner>, MEMORY[0x1E697F398]);
  v18[0] = swift_getWitnessTable(v12, v9, v19);
  v18[1] = MEMORY[0x1E697E040];
  v17[0] = swift_getWitnessTable(v12, v10, v18);
  v17[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<EdgeInsets> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(v12, v16, v17);
}

uint64_t sub_18C103540()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v6 = *&v7[0];
  v7[1] = v1;
  v2 = type metadata accessor for DocumentLaunchView(0, v7);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));

  (*(*(v6 - 8) + 8))(v3 + v2[13]);

  if (*(v3 + v2[15]))
  {
  }

  v4 = v3 + v2[16];
  if (*(v4 + 24))
  {
    outlined consume of Text.Storage(*v4, *(v4 + 8), *(v4 + 16));
  }

  if (*(v3 + v2[18]))
  {
  }

  if (*(v3 + v2[19]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C1036C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for ResolvedDocumentLaunchView(255, a1[1], a1[3], a4);
  type metadata accessor for _EnvironmentKeyWritingModifier<BackgroundContext>();
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>(255);
  v8 = type metadata accessor for ModifiedContent();
  v22[0] = &protocol witness table for ResolvedDocumentLaunchView<A>;
  v22[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<BackgroundContext> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<BackgroundContext> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<BackgroundContext>, MEMORY[0x1E6980A18]);
  v9 = MEMORY[0x1E697E858];
  v21[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v22);
  v21[1] = MEMORY[0x1E6980A30];
  v20[0] = swift_getWitnessTable(v9, v6, v21);
  v20[1] = lazy protocol witness table accessor for type NavigationCommonModifier and conformance NavigationCommonModifier();
  WitnessTable = swift_getWitnessTable(v9, v7, v20);
  v19[0] = v4;
  v19[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<BackgroundContext> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>);
  v11 = swift_getWitnessTable(v9, v8, v19);
  v18[2] = MEMORY[0x1E6980AF8];
  v18[3] = v7;
  v18[4] = v8;
  v18[5] = MEMORY[0x1E6980AF0];
  v18[6] = WitnessTable;
  v18[7] = v11;
  v12 = type metadata accessor for PlatformItemsReader();
  v13 = type metadata accessor for ModifiedContent();
  v18[0] = v4;
  v18[1] = MEMORY[0x1E697E5C0];
  swift_getWitnessTable(v9, v13, v18);
  v14 = type metadata accessor for _BackgroundModifier();
  v15 = type metadata accessor for ModifiedContent();
  v17[0] = swift_getWitnessTable(MEMORY[0x1E697F778], v12);
  v17[1] = swift_getWitnessTable(MEMORY[0x1E697F940], v14);
  return swift_getWitnessTable(v9, v15, v17);
}

uint64_t sub_18C103948()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C103980()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C103A44()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C103A7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18C103ACC()
{
  v1 = type metadata accessor for UTType();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_18C103B54()
{

  return swift_deallocObject();
}

uint64_t sub_18C103BCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
  v6 = MEMORY[0x1E6981EF8];
  v7 = v3;
  v4 = type metadata accessor for _ShapeView();
  return swift_getWitnessTable(MEMORY[0x1E697DB78], v4, v6, v1, v7, v2);
}

uint64_t sub_18C103C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MEMORY[0x18D0060E0](a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18C103C98()
{

  return swift_deallocObject();
}

uint64_t sub_18C103D30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlatformItemListBadge(255, *a1, a1[1], a4);
  v4 = type metadata accessor for ModifiedContent();
  v6[0] = &protocol witness table for BadgeViewStyleConfiguration.Content;
  v6[1] = &protocol witness table for PlatformItemListBadge<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
}

uint64_t sub_18C103DA0()
{
  v1 = v0[6];
  if (v1 >> 1 != 0xFFFFFFFF)
  {
    outlined consume of BadgeLabel(v0[4], v0[5], v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C103E08(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<InteractiveDismissDisabledKey>, &type metadata for InteractiveDismissDisabledKey, &protocol witness table for InteractiveDismissDisabledKey);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<InteractiveDismissDisabledKey> and conformance _PreferenceWritingModifier<A>, &lazy cache variable for type metadata for _PreferenceWritingModifier<InteractiveDismissDisabledKey>, &type metadata for InteractiveDismissDisabledKey, &protocol witness table for InteractiveDismissDisabledKey);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C103EBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<InteractiveDismissDisabledKey>, &type metadata for InteractiveDismissDisabledKey, &protocol witness table for InteractiveDismissDisabledKey);
  v2 = type metadata accessor for ModifiedContent();
  type metadata accessor for _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<InteractiveDismissAttemptKey>, &type metadata for InteractiveDismissAttemptKey, &protocol witness table for InteractiveDismissAttemptKey);
  v3 = type metadata accessor for ModifiedContent();
  v7[0] = v1;
  v7[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<InteractiveDismissDisabledKey> and conformance _PreferenceWritingModifier<A>, &lazy cache variable for type metadata for _PreferenceWritingModifier<InteractiveDismissDisabledKey>, &type metadata for InteractiveDismissDisabledKey, &protocol witness table for InteractiveDismissDisabledKey);
  v4 = MEMORY[0x1E697E858];
  v6[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v7);
  v6[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<OrnamentBillboardingBehavior.Key> and conformance _PreferenceWritingModifier<A>(&lazy protocol witness table cache variable for type _PreferenceWritingModifier<InteractiveDismissAttemptKey> and conformance _PreferenceWritingModifier<A>, &lazy cache variable for type metadata for _PreferenceWritingModifier<InteractiveDismissAttemptKey>, &type metadata for InteractiveDismissAttemptKey, &protocol witness table for InteractiveDismissAttemptKey);
  return swift_getWitnessTable(v4, v3, v6);
}

uint64_t _s7SwiftUI21SectionedFetchResultsV7SectionVyxq__GSlAASl5index_8offsetBy5IndexQzAJ_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SectionedFetchResults<A, B>.Section, a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI21SectionedFetchResultsV7SectionVyxq__GSlAASl5index_8offsetBy07limitedI05IndexQzSgAK_SiAKtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SectionedFetchResults<A, B>.Section, a4);

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

uint64_t _s7SwiftUI21SectionedFetchResultsV7SectionVyxq__GSlAASl8distance4from2toSi5IndexQz_AKtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SectionedFetchResults<A, B>.Section, a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI21SectionedFetchResultsVyxq_GSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SectionedFetchResults<A, B>, a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, WitnessTable, v7);
}

uint64_t _s7SwiftUI21SectionedFetchResultsVyxq_GSlAASl5index_8offsetBy07limitedH05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SectionedFetchResults<A, B>, a4);

  return MEMORY[0x1EEE69818](a1, a2, a3, a4, WitnessTable);
}

uint64_t _s7SwiftUI21SectionedFetchResultsVyxq_GSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SectionedFetchResults<A, B>, a3);
  v7 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_18C1042F8()
{

  return swift_deallocObject();
}

uint64_t sub_18C104340()
{

  return swift_deallocObject();
}

uint64_t sub_18C104378()
{

  return swift_deallocObject();
}

__n128 sub_18C1043CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

void *_s7SwiftUI19BridgedPresentationV11ContentHostOwcp_0(void *a1, void **a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of BridgedPresentation.ContentHost(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_18C1044E4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18C104570()
{
  v1 = *(v0 + 16);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C1045D8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_18C104618()
{

  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v1 = *(v0 + 112);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    outlined consume of BridgedPresentation.ContentHost(*(v0 + 104), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_18C104688()
{

  return swift_deallocObject();
}

uint64_t sub_18C1046C8()
{

  return swift_deallocObject();
}

uint64_t sub_18C104710()
{
  MEMORY[0x18D011290](v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_18C104760()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18C104798()
{

  return swift_deallocObject();
}

uint64_t sub_18C1047D0()
{

  return swift_deallocObject();
}

uint64_t sub_18C104818()
{
  MEMORY[0x18D011290](v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_18C104878()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18C1048B4()
{

  return swift_deallocObject();
}

id sub_18C1048FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredPrimaryColumnWidthFraction];
  *a2 = v4;
  return result;
}

id sub_18C104944@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredSupplementaryColumnWidthFraction];
  *a2 = v4;
  return result;
}

uint64_t sub_18C104998()
{

  return swift_deallocObject();
}

uint64_t sub_18C1049E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for _LabeledContentStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for _LabeledContentStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C104A68()
{

  return swift_deallocObject();
}

uint64_t sub_18C104AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFieldConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C104B1C()
{
  v1 = *(v0 + 48);
  if (v1 >> 2 != 0xFFFFFFFF)
  {
    outlined consume of PlatformItemList.Item.SystemItem(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v1, *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  }

  return swift_deallocObject();
}

uint64_t sub_18C104BA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner>, MEMORY[0x1E697F398]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C104C3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<SpatialTapGesture>, DefaultGestureCombiner>, MEMORY[0x1E697F398]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C104CDC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 36));
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

uint64_t sub_18C104DA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

uint64_t sub_18C104E68()
{

  return swift_deallocObject();
}

uint64_t sub_18C104EA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyTransformModifier<String?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<String?> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<String?> and conformance _EnvironmentKeyTransformModifier<A>, type metadata accessor for _EnvironmentKeyTransformModifier<String?>, MEMORY[0x1E6980B30]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C104F3C(uint64_t a1)
{
  type metadata accessor for TestIDView<<<opaque return type of View.truePreference<A>(_:)>>.0, <<opaque return type of static _TestApp.rootViewIdentifier>>.0>(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18C104F9C()
{
  outlined consume of SceneList.Namespace(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18C104FE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>(255);
  v2 = type metadata accessor for ModifiedContent();
  v3 = type metadata accessor for StaticIf();
  v8[0] = v1;
  v8[1] = &protocol witness table for ContainerBackgroundModifier;
  v5 = lazy protocol witness table accessor for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v8);
  v7 = WitnessTable;
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v3, &v5);
}

uint64_t sub_18C1050AC(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for ContainerBackgroundModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C105114(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>(255);
  v2 = type metadata accessor for ModifiedContent();
  v3 = type metadata accessor for StaticIf();
  v8[0] = v1;
  v8[1] = &protocol witness table for ContainerBackgroundModifier;
  v5 = lazy protocol witness table accessor for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v2, v8);
  v7 = WitnessTable;
  return swift_getWitnessTable(MEMORY[0x1E6981CE8], v3, &v5);
}

uint64_t sub_18C1051DC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C105228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for RenameButton(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  (*(*(v5 - 8) + 8))(v7, v5);
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(*(v7 + v6[11]), *(v7 + v6[11] + 8), *(v7 + v6[11] + 16));
  outlined consume of Environment<Selector?>.Content(*(v7 + v6[12]), *(v7 + v6[12] + 8));

  return swift_deallocObject();
}

uint64_t sub_18C105334()
{

  return swift_deallocObject();
}

uint64_t sub_18C105374(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for Button(255, *a1, a1[1], a4);
  type metadata accessor for _EnvironmentKeyTransformModifier<ResolvedSubviewsSizingOptions>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
  v5 = type metadata accessor for ModifiedContent();
  type metadata accessor for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<SelectionPlatformItemListFlags>, &type metadata for SelectionPlatformItemListFlags, &protocol witness table for SelectionPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v6 = type metadata accessor for ModifiedContent();
  v10[0] = swift_getWitnessTable(protocol conformance descriptor for Button<A>, v4);
  v10[1] = lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>();
  v7 = MEMORY[0x1E697E858];
  v9[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v5, v10);
  v9[1] = &protocol witness table for PlatformItemListTransformModifier<A>;
  return swift_getWitnessTable(v7, v6, v9);
}

uint64_t sub_18C1054A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<RenameAction?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<RenameAction?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C10550C()
{
  _ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_18C10563C()
{
  v1 = *(type metadata accessor for BindingStorage(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v30 = type metadata accessor for AttributedTextSelection(0);
  v29 = (v6 + v7 + *(*(v30 - 8) + 80)) & ~*(*(v30 - 8) + 80);
  type metadata accessor for BindingStorage.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v10 = *(v5 + 8);
  v10(v0 + v2 + *(v9 + 32), v4);
  if (EnumCaseMultiPayload == 1)
  {
    _s7SwiftUI7BindingVy10Foundation16AttributedStringVG_ACyAA0E13TextSelectionVGtMaTm_0(0, &lazy cache variable for type metadata for (Binding<AttributedString>, MutableBox<AttributedTextSelection>), &lazy cache variable for type metadata for MutableBox<AttributedTextSelection>, MEMORY[0x1E697DAC0], v11);
  }

  else
  {
    v12 = MEMORY[0x1E6981948];
    _s7SwiftUI7BindingVy10Foundation16AttributedStringVG_ACyAA0E13TextSelectionVGtMaTm_0(0, &lazy cache variable for type metadata for (Binding<AttributedString>, Binding<AttributedTextSelection>), &lazy cache variable for type metadata for Binding<AttributedTextSelection>, MEMORY[0x1E6981948], v11);
    v14 = v0 + v2 + *(v13 + 48);

    _s7SwiftUI21ExclusivelyAccessibleVyAA21AttributedTextStorageVyAA08Platformf10ViewEditorG0VGGMaTm_0(0, &lazy cache variable for type metadata for Binding<AttributedTextSelection>, type metadata accessor for AttributedTextSelection, v12);
    v16 = v14 + *(v15 + 32);
    v17 = type metadata accessor for AttributedTextSelection.Indices(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        _ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
      }

      else
      {
        v18 = type metadata accessor for AttributedString.Index();
      }

      (*(*(v18 - 8) + 8))(v16, v18);
    }

    v19 = *(v30 + 20);
    v20 = type metadata accessor for AttributeContainer();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v16 + v19, 1, v20))
    {
      (*(v21 + 8))(v16 + v19, v20);
    }
  }

  v10(v0 + v6, v4);
  v22 = v0 + v29;
  v23 = type metadata accessor for AttributedTextSelection.Indices(0);
  if (!(*(*(v23 - 8) + 48))(v0 + v29, 1, v23))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _ss8RangeSetVy10Foundation16AttributedStringV5IndexVGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<AttributedString.Index>, MEMORY[0x1E69E7BE0]);
    }

    else
    {
      v24 = type metadata accessor for AttributedString.Index();
    }

    (*(*(v24 - 8) + 8))(v22, v24);
  }

  v25 = *(v30 + 20);
  v26 = type metadata accessor for AttributeContainer();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v22 + v25, 1, v26))
  {
    (*(v27 + 8))(v22 + v25, v26);
  }

  return swift_deallocObject();
}

uint64_t sub_18C105BB8()
{

  return swift_deallocObject();
}

uint64_t sub_18C105D20(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C105DA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<AppIntentExecutor?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AppIntentExecutor?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AppIntentExecutor?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<AppIntentExecutor?>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

__n128 sub_18C105EA4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_18C105EB0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_18C105F20(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<BadgeProminence>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type EnvironmentPropertyKey<BadgeProminence.Key> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<BadgeProminence> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<BadgeProminence>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C105FC0()
{

  return swift_deallocObject();
}

uint64_t sub_18C106000()
{

  return swift_deallocObject();
}

uint64_t sub_18C106084()
{
  swift_weakDestroy();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t _s7SwiftUI17SubviewCollectionVSkAASk5index_8offsetBy07limitedG05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_18C1061B8()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI19ResolvedTableRowIDsV7StorageOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ResolvedTableRowIDs.Storage(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_18C106254(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for ViewDestinationNavigationDestinationModifier(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for ViewDestinationNavigationDestinationModifier<A>, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for BaseModifier(255, v4, v5, v8);
  v9 = type metadata accessor for ModifiedContent();
  v11[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v11[1] = &protocol witness table for BaseModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v9, v11);
}

uint64_t sub_18C106334(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for BaseModifier.Transform(255, *a1, v5, a4);
  swift_getWitnessTable(protocol conformance descriptor for BaseModifier<A>.Transform, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  type metadata accessor for UpdateViewDestinationViewModifier(255, v4, v5, v8);
  type metadata accessor for UpdateViewDestinationRequestProcessor(255, v4, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380]);
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v13[0] = &protocol witness table for UpdateViewDestinationViewModifier<A>;
  v13[1] = &protocol witness table for UpdateViewDestinationRequestProcessor<A, B>;
  v12[0] = swift_getWitnessTable(MEMORY[0x1E697FDF8], v7);
  v12[1] = swift_getWitnessTable(MEMORY[0x1E697E840], v9, v13);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v10, v12);
}

void *sub_18C106478@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.controlSize.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18C1064FC@<X0>(uint64_t *a3@<X8>)
{
  result = EnvironmentValues.placementTint.getter();
  *a3 = result;
  return result;
}

uint64_t sub_18C106564@<X0>(uint64_t *a2@<X8>)
{
  result = EnvironmentValues.effectiveFont.getter();
  *a2 = result;
  return result;
}

uint64_t sub_18C1065A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xB)
  {
    return v5 - 10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18C106614(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 10);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_18C1066A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<AdaptableTabBarPlacement>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AdaptableTabBarPlacement> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AdaptableTabBarPlacement> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<AdaptableTabBarPlacement>, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C106744(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for MatchedTransitionDestinationMarkingEffect;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C1067AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C1067E4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

id sub_18C10681C@<X0>(void *a2@<X8>)
{
  type metadata accessor for UIColor();

  result = UIColor.init(_:)(v3);
  *a2 = result;
  return result;
}

uint64_t sub_18C10686C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v6[0] = &type metadata for ColorPickerStyleConfiguration.Label;
  v6[1] = v1;
  v6[2] = lazy protocol witness table accessor for type ColorPickerStyleConfiguration.Label and conformance ColorPickerStyleConfiguration.Label();
  v6[3] = v2;
  type metadata accessor for StaticSourceWriter(255, v6);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = lazy protocol witness table accessor for type ResolvedColorPickerStyle and conformance ResolvedColorPickerStyle();
  v5[1] = &protocol witness table for StaticSourceWriter<A, B>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C1068FC()
{

  return swift_deallocObject();
}

uint64_t sub_18C106A00(uint64_t a1, double a2)
{
  v2 = *(a1 + 32);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for AccessoryViewModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C106A68(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for AccessoryViewModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C106AD0()
{

  return swift_deallocObject();
}

uint64_t sub_18C106B18()
{

  return swift_deallocObject();
}

uint64_t sub_18C106B68()
{

  return swift_deallocObject();
}

uint64_t sub_18C106BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Measurement();
  v7 = type metadata accessor for Binding();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_10:

    return v10(v11, a2, v9);
  }

  v12 = type metadata accessor for Measurement<>.FormatStyle();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v13 = *(v12 - 8);
    v14 = *(a3 + 44);
LABEL_9:
    v10 = *(v13 + 48);
    v11 = a1 + v14;
    goto LABEL_10;
  }

  v9 = *(a3 + 16);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v13 = *(*(a3 + 16) - 8);
    v14 = *(a3 + 48);
    goto LABEL_9;
  }

  swift_getWitnessTable(MEMORY[0x1E6968088], v6);
  type metadata accessor for ClosedRange();
  v15 = type metadata accessor for Optional();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v13 = *(v15 - 8);
    v14 = *(a3 + 52);
    goto LABEL_9;
  }

  v17 = *(a1 + *(a3 + 56));
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_18C106D8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Measurement();
  v9 = type metadata accessor for Binding();
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(v10 + 56);
    v13 = a1;
  }

  else
  {
    v14 = type metadata accessor for Measurement<>.FormatStyle();
    if (*(*(v14 - 8) + 84) == a3)
    {
      v11 = v14;
      v15 = *(v14 - 8);
      v16 = *(a4 + 44);
    }

    else
    {
      v11 = *(a4 + 16);
      if (*(*(v11 - 8) + 84) == a3)
      {
        v15 = *(*(a4 + 16) - 8);
        v16 = *(a4 + 48);
      }

      else
      {
        swift_getWitnessTable(MEMORY[0x1E6968088], v8);
        type metadata accessor for ClosedRange();
        result = type metadata accessor for Optional();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + *(a4 + 56)) = (a2 - 1);
          return result;
        }

        v11 = result;
        v15 = *(result - 8);
        v16 = *(a4 + 52);
      }
    }

    v12 = *(v15 + 56);
    v13 = a1 + v16;
  }

  return v12(v13, a2, a2, v11);
}

uint64_t sub_18C106F74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  type metadata accessor for HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Stepper<EmptyView>, LabelsHiddenModifier>, AccessibilityAttachmentModifier>)>>(255);
  v5 = type metadata accessor for LabeledContent(255, v1, v3, v4);
  type metadata accessor for FloatingPointFormatStyle<Double>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
  v6 = type metadata accessor for ModifiedContent();
  v9[0] = v2;
  v9[1] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Stepper<EmptyView>, LabelsHiddenModifier>, AccessibilityAttachmentModifier>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Stepper<EmptyView>, LabelsHiddenModifier>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<Text, AccessibilityAttachmentModifier>, ModifiedContent<ModifiedContent<Stepper<EmptyView>, LabelsHiddenModifier>, AccessibilityAttachmentModifier>)>>, MEMORY[0x1E69817F8]);
  v8[0] = swift_getWitnessTable(protocol conformance descriptor for <> LabeledContent<A, B>, v5, v9);
  v8[1] = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

void sub_18C10709C(double *a3@<X8>)
{
  type metadata accessor for Measurement();
  Measurement.value.getter();
  *a3 = v4;
}

__n128 sub_18C107128(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18C10713C()
{
  v1 = *(v0 + 2);
  v2 = type metadata accessor for MeasurementView(0, v1, *(v0 + 3), *(v0 + 4));
  v11 = (*(*(v2 - 1) + 80) + 40) & ~*(*(v2 - 1) + 80);

  v3 = type metadata accessor for Measurement();
  v4 = type metadata accessor for Binding();
  v5 = *(*(v3 - 8) + 8);
  v5(&v0[v11 + *(v4 + 32)], v3);
  v6 = v2[11];
  v7 = type metadata accessor for Measurement<>.FormatStyle();
  (*(*(v7 - 8) + 8))(&v0[v11 + v6], v7);
  (*(*(v1 - 8) + 8))(&v0[v11 + v2[12]], v1);
  v8 = &v0[v11 + v2[13]];
  swift_getWitnessTable(MEMORY[0x1E6968088], v3);
  v9 = type metadata accessor for ClosedRange();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v5(v8, v3);
    v5(&v8[*(v9 + 36)], v3);
  }

  return swift_deallocObject();
}

uint64_t sub_18C1073B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = type metadata accessor for Optional();
  type metadata accessor for FocusedValueModifier(255, v2, v3, v4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v1;
  v7[1] = &protocol witness table for FocusedValueModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C107490()
{

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

  swift_weakDestroy();
  swift_weakDestroy();
  swift_weakDestroy();
  if (*(v0 + 200))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  }

  v1 = *(v0 + 240);
  if (v1 != 255)
  {
    outlined consume of SceneID(*(v0 + 224), *(v0 + 232), v1 & 1);
  }

  return swift_deallocObject();
}

void *sub_18C10757C@<X0>(_BYTE *a2@<X8>)
{
  result = EnvironmentValues.backgroundContext.getter();
  *a2 = v4;
  return result;
}

uint64_t sub_18C1075F8()
{

  return swift_deallocObject();
}

uint64_t sub_18C107630()
{

  return swift_deallocObject();
}

uint64_t sub_18C1076C8(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = lazy protocol witness table accessor for type DragItemGroupModifier and conformance DragItemGroupModifier();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C10776C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18C107828(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18C1078E0()
{
  v7 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v1 = *(v0 + 48);
  v2 = vextq_s8(*(v0 + 64), *(v0 + 64), 8uLL);
  v8[1] = vextq_s8(v7, v7, 8uLL);
  v8[2] = v1;
  v8[3] = v2;
  v3 = (type metadata accessor for TableColumn(0, v8) - 8);
  v4 = v0 + ((*(*v3 + 80) + 80) & ~*(*v3 + 80));
  (*(*(v7.i64[0] - 8) + 8))(v4);

  v5 = (v4 + v3[25]);
  if (v5[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    __swift_destroy_boxed_opaque_existential_1(v5 + 4);
  }

  return swift_deallocObject();
}

uint64_t sub_18C107A1C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for PopoverConditionalStateProvider(255, a1[1], a1[3], a4);
  WitnessTable = swift_getWitnessTable("tM\t", v5);
  type metadata accessor for PopoverPresentationModifier(255, v5, WitnessTable, v7);
  v8 = type metadata accessor for ModifiedContent();
  v9 = type metadata accessor for ModifiedContent();
  v13[0] = v4;
  v13[1] = &protocol witness table for PopoverPresentationModifier<A>;
  v10 = MEMORY[0x1E697E858];
  v12[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v13);
  v12[1] = lazy protocol witness table accessor for type SearchPopoverAnchorModifier and conformance SearchPopoverAnchorModifier();
  return swift_getWitnessTable(v10, v9, v12);
}

uint64_t sub_18C107B00(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  v12[0] = *(a1 + 8);
  v12[1] = v2;
  v3 = type metadata accessor for PopoverItemStateProvider(255, v12);
  WitnessTable = swift_getWitnessTable("HM\t", v3);
  type metadata accessor for PopoverPresentationModifier(255, v3, WitnessTable, v5);
  v6 = type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  v11[0] = v1;
  v11[1] = &protocol witness table for PopoverPresentationModifier<A>;
  v8 = MEMORY[0x1E697E858];
  v10[0] = swift_getWitnessTable(MEMORY[0x1E697E858], v6, v11);
  v10[1] = lazy protocol witness table accessor for type SearchPopoverAnchorModifier and conformance SearchPopoverAnchorModifier();
  return swift_getWitnessTable(v8, v7, v10);
}

uint64_t sub_18C107BF8()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18C107C4C(void *a1)
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

uint64_t sub_18C107CD8(void *a1)
{
  v1 = a1[1];
  v3 = a1[3];
  v2 = a1[4];
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

uint64_t sub_18C107D64()
{
  if (*(v0 + 40) >= 6uLL)
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_18C107DBC()
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

uint64_t sub_18C107E78()
{
  outlined consume of SharingPickerSource(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18], v0[19]);

  return swift_deallocObject();
}

uint64_t sub_18C107EE4()
{
  outlined consume of SharingPickerSource(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18]);

  return swift_deallocObject();
}

uint64_t sub_18C107F48()
{

  return swift_deallocObject();
}

uint64_t sub_18C107FCC()
{

  return swift_deallocObject();
}

uint64_t sub_18C108010(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for HelpView(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for HelpView<A>, v4);
}

uint64_t sub_18C108058(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for HelpView(255, *a1, a1[2], a4);

  return swift_getWitnessTable(protocol conformance descriptor for HelpView<A>, v4);
}

uint64_t sub_18C1080B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for _TraitWritingModifier<ListRowBackgroundTraitKey>();
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C10812C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_18C1081E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t _s7SwiftUI22_ScrollableLayoutProxyV7StorageVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_18C1085D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for LabelStyleWritingModifier(255, a1[1], a1[3], a4);
  v6 = type metadata accessor for ModifiedContent();
  v8[0] = v4;
  v8[1] = swift_getWitnessTable(protocol conformance descriptor for LabelStyleWritingModifier<A>, v5);
  return swift_getWitnessTable(MEMORY[0x1E697E858], v6, v8);
}

uint64_t sub_18C108670()
{

  return swift_deallocObject();
}

uint64_t sub_18C1086C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for Drag.LazyItem.State(255, *a1, a1[1], a4);
  return type metadata accessor for Mutex();
}

uint64_t sub_18C10870C(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for _DraggingModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C108770(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for DraggingPreviewModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for DraggingPreviewModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C1087E8(uint64_t a1, double a2)
{
  v2 = *(a1 + 24);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for _DraggingModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C108868(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for ModifiedContent();
  v5[0] = v2;
  v5[1] = &protocol witness table for _DraggingModifier;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v3, v5);
}

uint64_t sub_18C1088D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  type metadata accessor for DraggingPreviewModifier(255, a1[1], a1[4], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for DraggingPreviewModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C108940(uint64_t a1)
{
  v1 = *(a1 + 8);
  _s7SwiftUI4DragV7PayloadVy_SOGMaTm_0(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<DragItemTimings.Key>, &type metadata for DragItemTimings.Key, &protocol witness table for DragItemTimings.Key, MEMORY[0x1E6980750]);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _PreferenceWritingModifier<DragItemTimings.Key> and conformance _PreferenceWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C1089F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>(255);
  v2 = type metadata accessor for ModifiedContent();
  v4[0] = v1;
  v4[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>();
  return swift_getWitnessTable(MEMORY[0x1E697E858], v2, v4);
}

uint64_t sub_18C108A7C()
{

  return swift_deallocObject();
}

uint64_t sub_18C108AB4()
{

  return swift_deallocObject();
}

uint64_t sub_18C108B6C()
{

  return swift_deallocObject();
}

uint64_t sub_18C108BB4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_18C108BEC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18C108C3C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18C108C7C()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI28ResponderBasedHitTestTracing33_DB5E6F06E13FF0259F656B4E03BE4F79LLOwcp_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ResponderBasedHitTestTracing(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_18C108D74()
{

  return swift_deallocObject();
}

uint64_t sub_18C108DAC()
{

  return swift_deallocObject();
}

__n128 sub_18C108DE4@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = v3[4];
  *a2 = result;
  return result;
}

__n128 sub_18C108E9C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18C108ED4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 49) & ~*(v2 + 80);
  outlined consume of SceneList.Namespace(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18C108FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_18C109110(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Binding<Date>, MEMORY[0x1E6981948]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    _s7SwiftUI7BindingVy10Foundation4DateVGMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 56);
    v15 = a1 + *(a4 + 24);

    return v14(v15, a2, a2, v13);
  }
}

uint64_t sub_18C109244(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  type metadata accessor for DatePickerStyleModifier(255, a1[1], a1[3], a4);
  v5 = type metadata accessor for ModifiedContent();
  v7[0] = v4;
  v7[1] = &protocol witness table for DatePickerStyleModifier<A>;
  return swift_getWitnessTable(MEMORY[0x1E697E858], v5, v7);
}

uint64_t sub_18C1092B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatePickerStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18C109320(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatePickerStyleConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18C1093D8(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18C10944C()
{

  return swift_deallocObject();
}

uint64_t sub_18C109484()
{

  return swift_deallocObject();
}

uint64_t sub_18C1094BC()
{

  return swift_deallocObject();
}

uint64_t sub_18C1094F4()
{

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for SPRotation3D(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void protocol witness for Hashable._rawHashValue(seed:) in conformance CapsuleSlider<A>.ScrollState.Orientation(uint64_t a1)
{
  Hasher.init(_seed:)();
  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

_OWORD *assignWithTake for AlertTransformModifier(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

double protocol witness for static Rule.initialValue.getter in conformance LazyPlatformItemWriter<A, B, C>.UpdateEnvironment@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_18CD6A6D0;
  return result;
}

uint64_t getEnumTagSinglePayload for AlertTransformModifier.Transform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AlertTransformModifier.Transform(uint64_t result, int a2, int a3)
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

  *(result + 28) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LazyPlatformItemWriter.UpdateEnvironment(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LazyPlatformItemWriter.UpdateEnvironment(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NSDecimal(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NSDecimal(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t *assignWithTake for NavigationDestinationModifier.SeededResolver(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  return a1;
}

void *assignWithTake for WindowVisibilityButton(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for ListRowInsetTransformerModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ListRowInsetTransformerModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

_DWORD *assignWithCopy for RemoteSheetContainerVCWriter(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  swift_weakCopyAssign();
  return a1;
}

void *assignWithTake for PreviewModifierTrait(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithCopy for PreviewModifierTrait(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void CapsuleSlider.ScrollState.__deallocating_deinit()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

double protocol witness for PreviewTraitProtocol.value.getter in conformance PreviewModifierTrait@<D0>(void *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void *protocol witness for Collection.index(after:) in conformance ListBatchUpdates<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance ListBatchUpdates<A>(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t _s7SwiftUI27ScrollableCollectionSubviewVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTag for ResolvedNavigationDestinations.ChangeRequest(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for ResolvedNavigationDestinations.ChangeRequest(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance FlipForRTLTransform@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t *assignWithCopy for AccessibilityRelationshipScope.Key(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];
  return a1;
}

uint64_t assignWithTake for AccessibilityRelationshipScope.Key(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  return a1;
}

uint64_t storeEnumTagSinglePayload for ScrollableItemGeometry(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ScrollableItemGeometry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance SceneBridge@<X0>(uint64_t *a2@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t assignWithTake for FocusEventProxyResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

double protocol witness for static _ViewTraitKey.defaultValue.getter in conformance ListRowInsetsTraitKey@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double protocol witness for UIKitButtonAdaptorContent._identifiedViewTree(in:) in conformance PlatformItemContent@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 168) = 2;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance PreviewDevice@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t *assignWithCopy for _HoverEffectActivationBehavior(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of HoverEffectPhaseOverride.Storage(*a2);
  v4 = *a1;
  *a1 = v3;
  outlined consume of HoverEffectPhaseOverride.Storage(v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for OrnamentBillboardingAllowedRotation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OrnamentBillboardingAllowedRotation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CircularPercentageGauge(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 11))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CircularPercentageGauge(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
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

  *(result + 11) = v3;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance BridgedAttachment@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double destroy for _ResolvedMatchedTransitionSourceConfiguration(void *a1)
{

  return result;
}

uint64_t assignWithTake for FileExportOperation.BatchStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t assignWithCopy for SafeAreaTransitionStateKey.Value(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

void *assignWithCopy for DropSession.LocalSession(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t assignWithTake for SafeAreaTransitionStateKey.Value(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithTake for InsetListLabelStyle.StyleView(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of Environment<Selector?>.Content(v5, v6);
  return a1;
}

uint64_t assignWithTake for _CommandsOutputs(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

unint64_t *assignWithTake for _HoverEffectActivationBehavior(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  outlined consume of HoverEffectPhaseOverride.Storage(v3);
  return a1;
}

BOOL _AXSwiftUIIsAnyStringEmpty(void *a1)
{
  v1 = a1;
  if (v1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v1 string];
        v2 = [v4 length] == 0;

        goto LABEL_4;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = [v1 length] == 0;
        goto LABEL_4;
      }
    }
  }

  v2 = 1;
LABEL_4:

  return v2;
}

id _AXSwiftUIGetObjectFromSelectorAsAny(void *a1, const char *a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    v4 = NSStringFromSelector(a2);
    v5 = [v3 valueForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id AXAttributedStringCreate(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getAXCreateAXAttributedStringFromCFAttributedStringSymbolLoc_ptr;
  v11 = getAXCreateAXAttributedStringFromCFAttributedStringSymbolLoc_ptr;
  if (!getAXCreateAXAttributedStringFromCFAttributedStringSymbolLoc_ptr)
  {
    v3 = AXRuntimeLibrary();
    v9[3] = dlsym(v3, "AXCreateAXAttributedStringFromCFAttributedString");
    getAXCreateAXAttributedStringFromCFAttributedStringSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v2)
  {
    cold_1 = AXAttributedStringCreate_cold_1();
    _Block_object_dispose(&v8, 8);
    _Unwind_Resume(cold_1);
  }

  v4 = v2(v1);
  v5 = v4;

  return v4;
}

id AXSwiftUIMoveToElementNotificationKeyElement()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXMoveToElementNotificationKeyElementSymbolLoc_ptr;
  v8 = getkAXMoveToElementNotificationKeyElementSymbolLoc_ptr;
  if (!getkAXMoveToElementNotificationKeyElementSymbolLoc_ptr)
  {
    v1 = AXRuntimeLibrary();
    v6[3] = dlsym(v1, "kAXMoveToElementNotificationKeyElement");
    getkAXMoveToElementNotificationKeyElementSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    cold_1 = AXAttributedStringCreate_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(cold_1);
  }

  v2 = *v0;

  return v2;
}

id AXSwiftUIPerformElementUpdateImmediatelyToken()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkAXPerformElementUpdateImmediatelyTokenSymbolLoc_ptr;
  v8 = getkAXPerformElementUpdateImmediatelyTokenSymbolLoc_ptr;
  if (!getkAXPerformElementUpdateImmediatelyTokenSymbolLoc_ptr)
  {
    v1 = AXRuntimeLibrary();
    v6[3] = dlsym(v1, "kAXPerformElementUpdateImmediatelyToken");
    getkAXPerformElementUpdateImmediatelyTokenSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    cold_1 = AXAttributedStringCreate_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(cold_1);
  }

  v2 = *v0;

  return v2;
}

BOOL AXIsVoiceControlMakingRequest()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAXRequestingClientSymbolLoc_ptr;
  v8 = getAXRequestingClientSymbolLoc_ptr;
  if (!getAXRequestingClientSymbolLoc_ptr)
  {
    v1 = AXRuntimeLibrary();
    v6[3] = dlsym(v1, "AXRequestingClient");
    getAXRequestingClientSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    cold_1 = AXAttributedStringCreate_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(cold_1);
  }

  v2 = v0();
  if (v2 == 5)
  {
    return 1;
  }

  if (v2 == 7)
  {
    return _AXSCommandAndControlEnabled() != 0;
  }

  return 0;
}

void *__getAXCreateAXAttributedStringFromCFAttributedStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXRuntimeLibrary();
  result = dlsym(v2, "AXCreateAXAttributedStringFromCFAttributedString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXCreateAXAttributedStringFromCFAttributedStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AXRuntimeLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AXRuntimeLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AXRuntimeLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7237598;
    v5 = 0;
    AXRuntimeLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AXRuntimeLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AXRuntimeLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np("%s", v3[0]);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AXRuntimeLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AXRuntimeLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkAXMoveToElementNotificationKeyElementSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXRuntimeLibrary();
  result = dlsym(v2, "kAXMoveToElementNotificationKeyElement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXMoveToElementNotificationKeyElementSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkAXPerformElementUpdateImmediatelyTokenSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXRuntimeLibrary();
  result = dlsym(v2, "kAXPerformElementUpdateImmediatelyToken");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkAXPerformElementUpdateImmediatelyTokenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXRequestingClientSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AXRuntimeLibrary();
  result = dlsym(v2, "AXRequestingClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXRequestingClientSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _makeSafariViewController(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getSFSafariViewControllerClass_softClass;
  v10 = getSFSafariViewControllerClass_softClass;
  if (!getSFSafariViewControllerClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getSFSafariViewControllerClass_block_invoke;
    v6[3] = &unk_1E7237578;
    v6[4] = &v7;
    __getSFSafariViewControllerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = [[v2 alloc] initWithURL:v1];

  return v4;
}

void sub_18C10B22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSFSafariViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SafariServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SafariServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72375D0;
    v6 = 0;
    SafariServicesLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SafariServicesLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SFSafariViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSFSafariViewControllerClass_block_invoke_cold_1();
  }

  getSFSafariViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SafariServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  SafariServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18C10B754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBGTaskSchedulerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!BackgroundTasksLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __BackgroundTasksLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E72375E8;
    v6 = 0;
    BackgroundTasksLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (BackgroundTasksLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BGTaskScheduler");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBGTaskSchedulerClass_block_invoke_cold_1();
  }

  getBGTaskSchedulerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BackgroundTasksLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  BackgroundTasksLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_18C10C030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _SwizzleMethods(objc_class *a1, const char *a2, const char *a3)
{
  InstanceMethod = class_getInstanceMethod(a1, a2);
  v7 = class_getInstanceMethod(a1, a3);
  Implementation = method_getImplementation(v7);
  TypeEncoding = method_getTypeEncoding(v7);
  if (class_addMethod(a1, a2, Implementation, TypeEncoding))
  {
    v10 = method_getImplementation(InstanceMethod);
    v11 = method_getTypeEncoding(InstanceMethod);

    class_replaceMethod(a1, a3, v10, v11);
  }

  else
  {

    method_exchangeImplementations(InstanceMethod, v7);
  }
}

void _PerformTestingSwizzles(uint64_t result, uint64_t a2)
{
  if (_PerformTestingSwizzles_onceToken != -1)
  {
    _PerformTestingSwizzles_cold_1();
  }
}

Class __getLPLinkMetadataClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __LinkPresentationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7237620;
    v6 = 0;
    LinkPresentationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (LinkPresentationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("LPLinkMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLPLinkMetadataClass_block_invoke_cold_1();
  }

  getLPLinkMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LinkPresentationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t closure #1 in SidebarListBody.CollectionViewBody.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  type metadata accessor for CollectionViewListRoot(255, v16);
  type metadata accessor for _DUIPreviewMode(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E6980A08]);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  swift_getKeyPath();
  v16[0] = AnyShapeStyle.init<A>(_:)();
  View.environment<A>(_:_:)();

  v12 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>();
  v15[0] = &protocol witness table for CollectionViewListRoot<A, B>;
  v15[1] = v12;
  swift_getWitnessTable(MEMORY[0x1E697E858], v5, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v6 + 8);
  v13(v8, v5);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, v5);
}

void key path getter for EnvironmentValues.listLabelIconStyle : EnvironmentValues(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
}

double key path setter for EnvironmentValues.listLabelIconStyle : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for _SemanticFeature<Semantics_v4>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t SidebarListBody.TableViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = *(a2 + 24);
  v34 = a2;
  type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v29 - v8;
  v9 = *(a2 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for TableViewListDataSource(255, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableViewListDataSource<A>, v12);
  v41[0] = v12;
  v41[1] = v5;
  v41[2] = WitnessTable;
  v41[3] = v9;
  v13 = type metadata accessor for TableViewListCore(0, v41);
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  outlined init with copy of _VariadicView_Children(a1, v40);
  v19 = specialized Environment.wrappedValue.getter(*v3, *(v3 + 8) | (*(v3 + 9) << 8));
  v21 = v20;
  v22 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24) | (*(v3 + 25) << 8)));
  if (v23)
  {
    v22 = 44.0;
  }

  TableViewListDataSource.init(_:style:minRowHeight:minHeaderHeight:)(v40, 0, v19, v21 & 1, v41, v22);
  v24 = v35;
  (*(v36 + 16))(v35, v3 + *(v34 + 60), v37);
  v25 = specialized Environment.wrappedValue.getter(*(v3 + 32), *(v3 + 40));
  v26 = WitnessTable;
  static TableViewListCore.Configuration.sidebar(isInExpandedSplitView:)(v25 & 1, v39);
  TableViewListCore.init(dataSource:selection:configuration:)(v41, v24, v39, v12, v5, v26, v9, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v33 + 8);
  v27(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v27)(v18, v13);
}

void key path getter for EnvironmentValues._defaultMinListRowHeight : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
}

double key path setter for EnvironmentValues._defaultMinListRowHeight : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for _SemanticFeature<Semantics_v4>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance SidebarListBody<A, B>.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SidebarListBody<A, B>.TableViewRoot, a5);

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance EquatableView<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for EquatableView<A>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ScrollViewBoundsModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollViewBoundsModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _ScrollViewBoundsModifier2<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _ScrollViewBoundsModifier2<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for Layout.makeCache(subviews:) in conformance _GridLayout@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  *(a2 + 72) = 0x7FF8000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v12 = MEMORY[0x1E69E7CC0];
  *(a2 + 104) = MEMORY[0x1E69E7CC0];
  *(a2 + 112) = v12;
  *(a2 + 120) = v12;
  *(a2 + 128) = v12;
  v13 = MEMORY[0x1E69E7CC8];
  *(a2 + 136) = v12;
  *(a2 + 144) = v13;
  *a2 = *v2;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 65) = v7;

  GridLayout.Cache.assignSubviews()();
  GridLayout.Cache.assignSpacing(in:)(0);
  return GridLayout.Cache.assignSpacing(in:)(1);
}

uint64_t protocol witness for Layout.updateCache(_:subviews:) in conformance _GridLayout(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  *a1 = *v2;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;

  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 65) = v7;
  *(a1 + 88) = 0x7FF8000000000000;
  *(a1 + 96) = 0;
  GridLayout.Cache.assignSubviews()();
  GridLayout.Cache.assignSpacing(in:)(0);
  return GridLayout.Cache.assignSpacing(in:)(1);
}

uint64_t protocol witness for Layout.spacing(subviews:cache:) in conformance _GridLayout@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v4 = *(a2 + 112);
  v5 = *(a2 + 80);
  v28 = *(a2 + 96);
  v29 = v4;
  v6 = *(a2 + 112);
  v30 = *(a2 + 128);
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v24 = *(a2 + 32);
  v25 = v7;
  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  v26 = *(a2 + 64);
  v27 = v10;
  v11 = *(a2 + 16);
  v23[0] = *a2;
  v23[1] = v11;
  v19 = v28;
  v20 = v6;
  v21 = *(a2 + 128);
  v15 = v24;
  v16 = v9;
  v17 = v26;
  v18 = v5;
  v31 = *(a2 + 144);
  v22 = *(a2 + 144);
  v13 = v23[0];
  v14 = v8;
  outlined init with copy of GridLayout.Cache(v23, v32);
  GridLayout.Cache.spacing()(x8_0);
  v32[6] = v19;
  v32[7] = v20;
  v32[8] = v21;
  v33 = v22;
  v32[2] = v15;
  v32[3] = v16;
  v32[4] = v17;
  v32[5] = v18;
  v32[0] = v13;
  v32[1] = v14;
  return outlined destroy of GridLayout.Cache(v32);
}

uint64_t protocol witness for Layout.sizeThatFits(proposal:subviews:cache:) in conformance _GridLayout(uint64_t a1)
{
  lazy protocol witness table accessor for type _GridLayout and conformance _GridLayout();

  return DerivedLayout.sizeThatFits(proposal:subviews:cache:)();
}

uint64_t protocol witness for Layout.placeSubviews(in:proposal:subviews:cache:) in conformance _GridLayout(uint64_t a1, double a2, double a3, double a4, double a5)
{
  lazy protocol witness table accessor for type _GridLayout and conformance _GridLayout();

  return DerivedLayout.placeSubviews(in:proposal:subviews:cache:)();
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance _GridLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance _GridLayout(a1, a2, a9, a10, a11, a12, a3, a4, a5, a6, a7, a8, a13, MEMORY[0x1E697E0F0]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance _GridLayout(a1, a2, a9, a10, a11, a12, a3, a4, a5, a6, a7, a8, a13, MEMORY[0x1E697E0F8]);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _IdentifiedModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _IdentifiedModifier<A>, a5);

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance _ShadowView<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for _ShadowView<A>, a3);

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance AGAttribute(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x18D00F7C0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance AGAttribute(uint64_t a1, uint64_t a2)
{
  v3 = static UInt32._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance AGAttribute@<X0>(_DWORD *a1@<X8>)
{
  result = static UInt32._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance AXSwiftUITraits(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x18D00F800](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance AXSwiftUITraits(uint64_t a1, uint64_t a2)
{
  v3 = static UInt64._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(uint64_t *a2@<X8>)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = MEMORY[0x18D00C850](v3);

  *a2 = v4;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CTFontRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for CTFontRef, a3);

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UIKeyboardHIDUsage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UIKeyboardHIDUsage(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance UIRectEdge@<X0>(uint64_t *a1@<X8>)
{
  v2 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AGAttribute(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute, MEMORY[0x1E698D3E8]);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type AGAttribute and conformance AGAttribute, type metadata accessor for AGAttribute, protocol conformance descriptor for AGAttribute);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance _UIImageNamedColorStyle(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle, type metadata accessor for _UIImageNamedColorStyle, protocol conformance descriptor for _UIImageNamedColorStyle);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle, type metadata accessor for _UIImageNamedColorStyle, protocol conformance descriptor for _UIImageNamedColorStyle);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringDocumentReadingOptionKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringDocumentReadingOptionKey and conformance NSAttributedStringDocumentReadingOptionKey, type metadata accessor for NSAttributedStringDocumentReadingOptionKey, protocol conformance descriptor for NSAttributedStringDocumentReadingOptionKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringDocumentReadingOptionKey and conformance NSAttributedStringDocumentReadingOptionKey, type metadata accessor for NSAttributedStringDocumentReadingOptionKey, protocol conformance descriptor for NSAttributedStringDocumentReadingOptionKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationLaunchOptionsKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey, type metadata accessor for UIApplicationLaunchOptionsKey, protocol conformance descriptor for UIApplicationLaunchOptionsKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIApplicationLaunchOptionsKey and conformance UIApplicationLaunchOptionsKey, type metadata accessor for UIApplicationLaunchOptionsKey, protocol conformance descriptor for UIApplicationLaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringDocumentType(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringDocumentType and conformance NSAttributedStringDocumentType, type metadata accessor for NSAttributedStringDocumentType, protocol conformance descriptor for NSAttributedStringDocumentType);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringDocumentType and conformance NSAttributedStringDocumentType, type metadata accessor for NSAttributedStringDocumentType, protocol conformance descriptor for NSAttributedStringDocumentType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringDocumentAttributeKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringDocumentAttributeKey and conformance NSAttributedStringDocumentAttributeKey, type metadata accessor for NSAttributedStringDocumentAttributeKey, protocol conformance descriptor for NSAttributedStringDocumentAttributeKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSAttributedStringDocumentAttributeKey and conformance NSAttributedStringDocumentAttributeKey, type metadata accessor for NSAttributedStringDocumentAttributeKey, protocol conformance descriptor for NSAttributedStringDocumentAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSKeyValueChangeKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey, protocol conformance descriptor for NSKeyValueChangeKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey, protocol conformance descriptor for NSKeyValueChangeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIMenuIdentifier(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIMenuIdentifier and conformance UIMenuIdentifier, type metadata accessor for UIMenuIdentifier, protocol conformance descriptor for UIMenuIdentifier);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIMenuIdentifier and conformance UIMenuIdentifier, type metadata accessor for UIMenuIdentifier, protocol conformance descriptor for UIMenuIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance AXSwiftUITraits(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type AXSwiftUITraits and conformance AXSwiftUITraits, type metadata accessor for AXSwiftUITraits, protocol conformance descriptor for AXSwiftUITraits);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type AXSwiftUITraits and conformance AXSwiftUITraits, type metadata accessor for AXSwiftUITraits, protocol conformance descriptor for AXSwiftUITraits);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIActivityType(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIActivityType and conformance UIActivityType, type metadata accessor for UIActivityType, protocol conformance descriptor for UIActivityType);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIActivityType and conformance UIActivityType, type metadata accessor for UIActivityType, protocol conformance descriptor for UIActivityType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSRunLoopMode(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSRunLoopMode and conformance NSRunLoopMode, type metadata accessor for NSRunLoopMode, protocol conformance descriptor for NSRunLoopMode);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSRunLoopMode and conformance NSRunLoopMode, type metadata accessor for NSRunLoopMode, protocol conformance descriptor for NSRunLoopMode);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIPasteboardName(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIPasteboardName and conformance UIPasteboardName, type metadata accessor for UIPasteboardName, protocol conformance descriptor for UIPasteboardName);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIPasteboardName and conformance UIPasteboardName, type metadata accessor for UIPasteboardName, protocol conformance descriptor for UIPasteboardName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey, protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey, type metadata accessor for UIApplicationOpenExternalURLOptionsKey, protocol conformance descriptor for UIApplicationOpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIAccessibilityTraits(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIAccessibilityTraits and conformance UIAccessibilityTraits, type metadata accessor for UIAccessibilityTraits, protocol conformance descriptor for UIAccessibilityTraits);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIAccessibilityTraits and conformance UIAccessibilityTraits, type metadata accessor for UIAccessibilityTraits, protocol conformance descriptor for UIAccessibilityTraits);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, protocol conformance descriptor for NSURLResourceKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, protocol conformance descriptor for NSURLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UIMenuIdentifier@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x18D00C850](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIAccessibilityTextualContext(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIAccessibilityTextualContext and conformance UIAccessibilityTextualContext, type metadata accessor for UIAccessibilityTextualContext, protocol conformance descriptor for UIAccessibilityTextualContext);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UIAccessibilityTextualContext and conformance UIAccessibilityTextualContext, type metadata accessor for UIAccessibilityTextualContext, protocol conformance descriptor for UIAccessibilityTextualContext);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UITextFormattingViewControllerComponentKey(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UITextFormattingViewControllerComponentKey and conformance UITextFormattingViewControllerComponentKey, type metadata accessor for UITextFormattingViewControllerComponentKey, protocol conformance descriptor for UITextFormattingViewControllerComponentKey);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UITextFormattingViewControllerComponentKey and conformance UITextFormattingViewControllerComponentKey, type metadata accessor for UITextFormattingViewControllerComponentKey, protocol conformance descriptor for UITextFormattingViewControllerComponentKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UISheetPresentationControllerDetentIdentifier(uint64_t a1)
{
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UISheetPresentationControllerDetentIdentifier and conformance UISheetPresentationControllerDetentIdentifier, type metadata accessor for UISheetPresentationControllerDetentIdentifier, protocol conformance descriptor for UISheetPresentationControllerDetentIdentifier);
  lazy protocol witness table accessor for type NSRunLoopMode and conformance NSRunLoopMode(&lazy protocol witness table cache variable for type UISheetPresentationControllerDetentIdentifier and conformance UISheetPresentationControllerDetentIdentifier, type metadata accessor for UISheetPresentationControllerDetentIdentifier, protocol conformance descriptor for UISheetPresentationControllerDetentIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CTFontRef(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable(protocol conformance descriptor for CTFontRef, a2);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x18D00CA50](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance AGAttributeTypeFlags@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance AGAttributeTypeFlags@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance AGAttributeTypeFlags@<X0>(_DWORD *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a2);

  *a1 = v3;
  return result;
}

void specialized PrimitiveGesture.body.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(32);

  v1 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v1);

  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type _GridLayout and conformance _GridLayout()
{
  result = lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout;
  if (!lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GridLayout, &type metadata for _GridLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout;
  if (!lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GridLayout, &type metadata for _GridLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout;
  if (!lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _GridLayout, &type metadata for _GridLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _GridLayout and conformance _GridLayout);
  }

  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGAffineTransform(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGAffineTransform(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
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

  *(result + 48) = v3;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SidebarListBody(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  v10 = *(v5 - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64) + 7;
  if ((v11 | v8) <= 7 && ((*(v10 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((v12 + ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 9 <= 0x18)
  {
    v16 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v7 + 84) & 0x80000000) != 0)
    {
      if ((*(v7 + 48))(v16 + 1))
      {
LABEL_14:
        memcpy(__dst, __src, v9);
LABEL_17:
        v20 = ((__dst + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        v21 = ((__src + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        v22 = *v21++;
        *v20++ = v22;
        (*(v10 + 16))(v20, v21, v5);
        v23 = (v20 + v12) & 0xFFFFFFFFFFFFFFF8;
        v24 = (v21 + v12) & 0xFFFFFFFFFFFFFFF8;
        v25 = *v24;
        v26 = *(v24 + 8);
        outlined copy of Environment<Selector?>.Content(*v24, v26);
        *v23 = v25;
        *(v23 + 8) = v26;
        return __dst;
      }
    }

    else
    {
      v17 = *v16;
      if (*v16 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      if (v17 != -1)
      {
        goto LABEL_14;
      }
    }

    *__dst = *__src;
    v18 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v16;
    v19 = *(v7 + 16);

    v19(v18 + 1, v16 + 1, v6);
    goto LABEL_17;
  }

  v15 = *__src;
  *__dst = *__src;
  __dst = (v15 + (((v11 | v8) & 0xF8 ^ 0x1F8) & ((v11 | v8) + 16)));

  return __dst;
}

uint64_t *assignWithCopy for SidebarListBody(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  v11 = ((v9 + 16) & ~v9) + v10;
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v38 = ~v9;
  if ((v8 & 0x80000000) != 0)
  {
    v36 = ((v9 + 16) & ~v9) + v10;
    v34 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(v7 + 48);
    v33 = v17((v12 + v9 + 8) & ~v9, v8, v6);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11 = v36;
    v12 = v34;
    v15 = v17((v13 + v9 + 8) & ~v9, v8, v6);
    v4 = a2;
    v5 = a1;
    v3 = a3;
    if (!v33)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *v4;

        *v12 = *v13;

        (*(v7 + 24))((v12 + v9 + 8) & v38, (v13 + v9 + 8) & v38, v6);
        goto LABEL_12;
      }

      (*(v7 + 8))((v12 + v9 + 8) & v38, v6);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v12 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *v4;
    *v12 = *v13;
    v18 = *(v7 + 16);

    v18((v12 + v9 + 8) & v38, (v13 + v9 + 8) & v38, v6);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, v4, v11);
LABEL_12:
  v19 = ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = *(*(v3 + 16) - 8);
  v22 = v21 + 24;
  v23 = *(v21 + 80);
  v24 = (v19 + v23 + 8) & ~v23;
  v25 = (v20 + v23 + 8) & ~v23;
  (*(v21 + 24))(v24, v25);
  v26 = *(v22 + 40) + 7;
  v27 = (v26 + v24) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v26 + v25) & 0xFFFFFFFFFFFFFFF8;
  v29 = *v28;
  LOBYTE(v25) = *(v28 + 8);
  outlined copy of Environment<Selector?>.Content(*v28, v25);
  v30 = *v27;
  v31 = *(v27 + 8);
  *v27 = v29;
  *(v27 + 8) = v25;
  outlined consume of Environment<Selector?>.Content(v30, v31);
  return v5;
}

void *initializeWithTake for SidebarListBody(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v7 + 64);
  v12 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v10 + v11;
    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *__dst = *__src;
    v15 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v12;
    (*(v7 + 32))((v15 + v8 + 8) & v9, (v12 + v8 + 8) & v9, v6);
    goto LABEL_8;
  }

  v14 = v10 + v11;
  if (!(*(v7 + 48))((v12 + v8 + 8) & v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(__dst, __src, v14);
LABEL_8:
  v16 = ((__dst + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((__src + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = *(*(a3 + 16) - 8);
  v19 = v18 + 32;
  v20 = *(v18 + 80);
  v21 = (v16 + v20 + 8) & ~v20;
  v22 = (v17 + v20 + 8) & ~v20;
  (*(v18 + 32))(v21, v22);
  v23 = *(v19 + 32) + 7;
  v24 = (v23 + v21) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v23 + v22) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 8);
  *v24 = *v25;
  *(v24 + 8) = v26;
  return __dst;
}

void *assignWithTake for SidebarListBody(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v8 + 16) & ~v8) + v9;
  v11 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v40 = ~v8;
  if ((v7 & 0x80000000) != 0)
  {
    v38 = ((v8 + 16) & ~v8) + v9;
    v16 = *(v6 + 48);
    v17 = *(a3 + 24);
    v18 = v16((v11 + v8 + 8) & ~v8, v7, v17);
    v19 = v16;
    v36 = v18;
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = v7;
    v12 = v17;
    v21 = v17;
    v5 = a1;
    v10 = v38;
    v15 = v19((v13 + v8 + 8) & ~v8, v20, v21);
    v3 = a3;
    if (!v36)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *a2;

        *v11 = *v13;

        (*(v6 + 40))((v11 + v8 + 8) & v40, (v13 + v8 + 8) & v40, v12);
        goto LABEL_12;
      }

      (*(v6 + 8))((v11 + v8 + 8) & v40, v12);
      goto LABEL_9;
    }
  }

  else
  {
    v12 = *(a3 + 24);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v11 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *a2;
    *v11 = *v13;
    (*(v6 + 32))((v11 + v8 + 8) & v40, (v13 + v8 + 8) & v40, v12);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, a2, v10);
LABEL_12:
  v22 = ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = *(*(v3 + 16) - 8);
  v25 = v24 + 40;
  v26 = *(v24 + 80);
  v27 = (v22 + v26 + 8) & ~v26;
  v28 = (v23 + v26 + 8) & ~v26;
  (*(v24 + 40))(v27, v28);
  v29 = *(v25 + 24) + 7;
  v30 = (v29 + v27) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v29 + v28) & 0xFFFFFFFFFFFFFFF8;
  v32 = *v31;
  LOBYTE(v31) = *(v31 + 8);
  v33 = *v30;
  v34 = *(v30 + 8);
  *v30 = v32;
  *(v30 + 8) = v31;
  outlined consume of Environment<Selector?>.Content(v33, v34);
  return v5;
}

uint64_t getEnumTagSinglePayload for SidebarListBody(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v5 + 80);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = ((v12 + 16) & ~v12) + *(*(*(a3 + 24) - 8) + 64);
  v16 = v13 + 8;
  if (v14 >= a2)
  {
    goto LABEL_31;
  }

  v17 = ((*(*(v9 - 8) + 64) + ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v18 = (a2 - v14 + 255) >> 8;
  if (v17 <= 3)
  {
    v19 = v18 + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_31;
      }
    }

    else
    {
      v22 = *&a1[v17];
      if (!v22)
      {
        goto LABEL_31;
      }
    }

LABEL_27:
    v24 = (v22 - 1) << (8 * v17);
    if (v17 <= 3)
    {
      v25 = *a1;
    }

    else
    {
      v24 = 0;
      v25 = *a1;
    }

    return v14 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = a1[v17];
    if (a1[v17])
    {
      goto LABEL_27;
    }
  }

LABEL_31:
  if (v8 >= v11)
  {
    v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v31 = (*(v5 + 48))((v29 + v12 + 8) & ~v12);
    }

    else
    {
      v30 = *v29;
      if (v30 >= 0xFFFFFFFF)
      {
        LODWORD(v30) = -1;
      }

      v31 = v30 + 1;
    }

    if (v31 >= 2)
    {
      return v31 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v26 = ~v13;
    v27 = *(v10 + 48);
    v28 = (v16 + (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8)) & v26;

    return v27(v28, v11, v9);
  }
}

void storeEnumTagSinglePayload for SidebarListBody(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(a4 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v9 + 80);
  v13 = v8 - 1;
  if (v10 <= v8 - 1)
  {
    v14 = v8 - 1;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = ((v11 + 16) & ~v11) + *(*(*(a4 + 24) - 8) + 64);
  v16 = ((*(v9 + 64) + ((v12 + 8 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 >= a3)
  {
    v20 = 0;
    if (v14 >= a2)
    {
      goto LABEL_20;
    }

LABEL_25:
    v21 = ~v14 + a2;
    bzero(a1, v16);
    if (v16 <= 3)
    {
      v22 = (v21 >> 8) + 1;
    }

    else
    {
      v22 = 1;
    }

    if (v16 <= 3)
    {
      *a1 = v21;
      if (v20 > 1)
      {
LABEL_30:
        if (v20 == 2)
        {
          *&a1[v16] = v22;
        }

        else
        {
          *&a1[v16] = v22;
        }

        return;
      }
    }

    else
    {
      *a1 = v21;
      if (v20 > 1)
      {
        goto LABEL_30;
      }
    }

    if (v20)
    {
      a1[v16] = v22;
    }

    return;
  }

  v17 = (a3 - v14 + 255) >> 8;
  if (v16 <= 3)
  {
    v18 = v17 + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v14 < a2)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (v20 <= 1)
  {
    if (v20)
    {
      a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (v20 == 2)
  {
    *&a1[v16] = 0;
    goto LABEL_34;
  }

  *&a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v13 < v10)
  {
    v23 = *(v9 + 56);

    v23((v12 + 8 + (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v12);
    return;
  }

  if (v13 >= a2)
  {
    if (a2 >= v8)
    {
      if (v15 <= 3)
      {
        v29 = ~(-1 << (8 * v15));
      }

      else
      {
        v29 = -1;
      }

      if (v15)
      {
        v25 = v29 & (a2 - v8);
        if (v15 <= 3)
        {
          v26 = v15;
        }

        else
        {
          v26 = 4;
        }

        bzero(a1, v15);
        if (v26 <= 2)
        {
          if (v26 == 1)
          {
            goto LABEL_52;
          }

          goto LABEL_69;
        }

LABEL_70:
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }
    }

    else
    {
      v27 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v30 = *(v6 + 56);
        v31 = a2 + 1;

        v30((v27 + v11 + 8) & ~v11, v31);
      }

      else
      {
        if (((a2 + 1) & 0x80000000) != 0)
        {
          v28 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v28 = a2;
        }

        *v27 = v28;
      }
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v24 = ~(-1 << (8 * v15));
    }

    else
    {
      v24 = -1;
    }

    if (v15)
    {
      v25 = v24 & (a2 - v8);
      if (v15 <= 3)
      {
        v26 = v15;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v15);
      if (v26 <= 2)
      {
        if (v26 == 1)
        {
LABEL_52:
          *a1 = v25;
          return;
        }

LABEL_69:
        *a1 = v25;
        return;
      }

      goto LABEL_70;
    }
  }
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for HStack<UIKitButtonConfiguration.Label>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC38], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC28], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for SidebarListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((v7 + 16) & ~v7) + *(v5 + 64);
  if (v7 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-42 - (v7 | 7)) | v7 | 7) - v8 >= 0xFFFFFFFFFFFFFFE7)
  {
    v12 = *a2;
    v13 = *(a2 + 9);
    v14 = *(a2 + 8);
    outlined copy of Environment<CGFloat?>.Content(*a2, v14, v13);
    *a1 = v12;
    *(a1 + 8) = v14;
    *(a1 + 9) = v13;
    v16 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
    v17 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
    v18 = *v17;
    v19 = *(v17 + 9);
    v20 = *(v17 + 8);
    outlined copy of Environment<CGFloat?>.Content(*v17, v20, v19);
    *v16 = v18;
    *(v16 + 8) = v20;
    *(v16 + 9) = v19;
    v21 = (v16 + 17) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v17 + 17) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    v24 = *(v22 + 8);
    outlined copy of Environment<Selector?>.Content(*v22, v24);
    *v21 = v23;
    *(v21 + 8) = v24;
    v25 = v16 + 33;
    v26 = ((v17 + 33) & 0xFFFFFFFFFFFFFFF8);
    v27 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v30 = (*(v5 + 48))(v27 + 1, v6, v4);
      v29 = (v25 & 0xFFFFFFFFFFFFFFF8);
      if (v30)
      {
LABEL_13:
        memcpy(v29, ((v17 + 33) & 0xFFFFFFFFFFFFFFF8), v8);
        return a1;
      }
    }

    else
    {
      v28 = *v27;
      if (*v27 >= 0xFFFFFFFF)
      {
        LODWORD(v28) = -1;
      }

      v29 = (v25 & 0xFFFFFFFFFFFFFFF8);
      if (v28 != -1)
      {
        goto LABEL_13;
      }
    }

    *v29 = *v26;
    v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v27;
    v32 = *(v5 + 16);

    v32(v31 + 1, v27 + 1, v4);
    return a1;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = v11 + ((v7 + 16) & ~(v7 | 7));

  return a1;
}

uint64_t assignWithCopy for SidebarListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 9);
  v8 = *(a2 + 8);
  outlined copy of Environment<CGFloat?>.Content(*a2, v8, v7);
  v9 = *a1;
  v10 = *(a1 + 9);
  *a1 = v6;
  v11 = *(a1 + 8);
  *(a1 + 8) = v8;
  *(a1 + 9) = v7;
  outlined consume of Environment<CGFloat?>.Content(v9, v11, v10);
  v12 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  LOBYTE(v6) = *(v13 + 9);
  v15 = *(v13 + 8);
  outlined copy of Environment<CGFloat?>.Content(*v13, v15, v6);
  v16 = *v12;
  v17 = *(v12 + 9);
  *v12 = v14;
  v18 = *(v12 + 8);
  *(v12 + 8) = v15;
  *(v12 + 9) = v6;
  outlined consume of Environment<CGFloat?>.Content(v16, v18, v17);
  v19 = (v12 + 17) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v13 + 17) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  LOBYTE(v6) = *(v20 + 8);
  outlined copy of Environment<Selector?>.Content(*v20, v6);
  v22 = *v19;
  v23 = *(v19 + 8);
  *v19 = v21;
  *(v19 + 8) = v6;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  v24 = *(a3 + 24);
  v25 = *(v24 - 8);
  v26 = *(v25 + 80);
  v27 = (v26 | 7) + 9;
  v28 = ((v27 + v19) & ~(v26 | 7));
  v29 = v27 + v20;
  v30 = (v29 & ~(v26 | 7));
  v31 = *(v25 + 84);
  v32 = ~v26;
  v33 = (v26 + 16) & ~v26;
  v34 = *(v25 + 64);
  v35 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v31 & 0x80000000) != 0)
  {
    v50 = v29 & ~(v26 | 7);
    v43 = *(v25 + 48);
    v49 = *(*(v24 - 8) + 64);
    v48 = v43((v35 + v26 + 8) & ~v26, v31, v24);
    v36 = ((v50 + 15) & 0xFFFFFFFFFFFFFFF8);
    v32 = ~v26;
    v38 = v43((v36 + v26 + 8) & ~v26, v31, v24);
    v34 = v49;
    v33 = (v26 + 16) & ~v26;
    v35 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
    v30 = v50;
    if (!v48)
    {
LABEL_5:
      v39 = v35;
      if (!v38)
      {
        *v28 = *v30;

        *v39 = *v36;

        (*(v25 + 24))((v39 + v26 + 8) & v32, (v36 + v26 + 8) & v32, v24);
        return a1;
      }

      v40 = v33;
      v41 = v34;

      (*(v25 + 8))((v39 + v26 + 8) & v32, v24);
      v42 = v40 + v41;
      goto LABEL_10;
    }
  }

  else
  {
    v36 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    v37 = *v36;
    if (*v36 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v37) = -1;
    }

    v38 = v37 + 1;
    if (*v35 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v38)
  {
    *v28 = *v30;
    *v35 = *v36;
    v44 = v24;
    v45 = v35 + v26 + 8;
    v46 = *(v25 + 16);

    v46(v45 & v32, (v36 + v26 + 8) & v32, v44);
    return a1;
  }

  v42 = v33 + v34;
LABEL_10:
  memcpy(v28, v30, v42);
  return a1;
}

uint64_t initializeWithTake for SidebarListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v5 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  *(v4 + 8) = *(v5 + 8);
  *v4 = v6;
  v7 = (v4 + 17) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v5 + 17) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = *(a3 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v12 | 7) + 9;
  v14 = ((v13 + v7) & ~(v12 | 7));
  v15 = ((v13 + v8) & ~(v12 | 7));
  v16 = ~v12;
  v17 = *(v11 + 64);
  v18 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v11 + 84) & 0x80000000) == 0)
  {
    v19 = *v18;
    if (*v18 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if (v19 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v14 = *v15;
    v20 = (v14 + 15);
    *(v20 & 0xFFFFFFFFFFFFFFF8) = *v18;
    (*(v11 + 32))((v12 + 8 + (v20 & 0xFFFFFFFFFFFFFFF8)) & v16, (v18 + v12 + 8) & v16, v10);
    return a1;
  }

  if (!(*(v11 + 48))((v18 + v12 + 8) & v16))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v14, v15, ((v12 + 16) & ~v12) + v17);
  return a1;
}

uint64_t assignWithTake for SidebarListBody.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v8 = *a1;
  v9 = *(a1 + 9);
  *a1 = *a2;
  v10 = *(a1 + 8);
  *(a1 + 8) = v6;
  *(a1 + 9) = v7;
  outlined consume of Environment<CGFloat?>.Content(v8, v10, v9);
  v11 = (a1 + 17) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + 17) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v12 + 8);
  v14 = *(v12 + 9);
  v15 = *v11;
  v16 = *(v11 + 9);
  *v11 = *v12;
  v17 = *(v11 + 8);
  *(v11 + 8) = v13;
  *(v11 + 9) = v14;
  outlined consume of Environment<CGFloat?>.Content(v15, v17, v16);
  v18 = (v11 + 17) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v12 + 17) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v19 + 8);
  v21 = *v18;
  v22 = *(v18 + 8);
  *v18 = *v19;
  *(v18 + 8) = v20;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  v23 = *(a3 + 24);
  v24 = *(v23 - 8);
  v25 = *(v24 + 80);
  v26 = (v25 | 7) + 9;
  v27 = ((v26 + v18) & ~(v25 | 7));
  v28 = v26 + v19;
  v29 = (v28 & ~(v25 | 7));
  v30 = *(v24 + 84);
  v31 = ~v25;
  v32 = (v25 + 16) & ~v25;
  v33 = *(v24 + 64);
  v34 = ((v27 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v30 & 0x80000000) != 0)
  {
    v46 = v28 & ~(v25 | 7);
    v45 = v27;
    v41 = *(v24 + 48);
    v44 = *(v24 + 64);
    v43 = v41((v34 + v25 + 8) & ~v25, v30, v23);
    v35 = ((v46 + 15) & 0xFFFFFFFFFFFFFFF8);
    v31 = ~v25;
    v37 = v41((v35 + v25 + 8) & ~v25, v30, v23);
    v33 = v44;
    v32 = (v25 + 16) & ~v25;
    v27 = v45;
    v29 = v46;
    if (!v43)
    {
LABEL_5:
      if (!v37)
      {
        *v27 = *v29;

        *v34 = *v35;

        (*(v24 + 40))((v34 + v25 + 8) & v31, (v35 + v25 + 8) & v31, v23);
        return a1;
      }

      v38 = v32;
      v39 = v33;

      (*(v24 + 8))((v34 + v25 + 8) & v31, v23);
      v40 = v38 + v39;
      goto LABEL_10;
    }
  }

  else
  {
    v35 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    v36 = *v35;
    if (*v35 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v36) = -1;
    }

    v37 = v36 + 1;
    if (*v34 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v37)
  {
    *v27 = *v29;
    *v34 = *v35;
    (*(v24 + 32))((v34 + v25 + 8) & v31, (v35 + v25 + 8) & v31, v23);
    return a1;
  }

  v40 = v32 + v33;
LABEL_10:
  memcpy(v27, v29, v40);
  return a1;
}

uint64_t getEnumTagSinglePayload for SidebarListBody.TableViewRoot(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = v6 | 7;
  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v9 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v6) | v6) - ((-42 - v8) | v8) - 2;
  v10 = 8 * v9;
  if (v9 > 3)
  {
    goto LABEL_7;
  }

  v13 = (((1 << v10) + a2 - v7) >> v10) + 1;
  if (HIWORD(v13))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_28:
    v17 = ((((((((a1 + 17) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & ~v8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      v19 = (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      v19 = v18 + 1;
    }

    if (v19 >= 2)
    {
      return v19 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v13 > 0xFF)
  {
    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v13 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (*(*(*(a3 + 24) - 8) + 64) - ((-17 - v6) | v6) - ((-42 - v8) | v8) == 2)
  {
    v16 = 0;
  }

  else
  {
    if (v9 <= 3)
    {
      v15 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v6) | v6) - ((-42 - v8) | v8) - 2;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v16 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v16 = *a1;
      }
    }

    else if (v15 == 1)
    {
      v16 = *a1;
    }

    else
    {
      v16 = *a1;
    }
  }

  return (v16 | v14) + v7;
}

void storeEnumTagSinglePayload for SidebarListBody.TableViewRoot(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = -2 - (((-42 - (v10 | 7)) | v10 | 7) + ((-17 - v10) | v10) - *(*(*(a4 + 24) - 8) + 64));
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = ((((((((a1 + 17) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + (v10 | 7) + 9) & ~(v10 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19((v18 + v10 + 8) & ~v10, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for SidebarListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 80);
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  if ((v8 | v6) <= 7 && ((*(v7 + 80) | *(v5 + 80)) & 0x100000) == 0 && ((((-115 - v6) | v6) - (*(*(*(a3 + 16) - 8) + 64) + (v8 | 7))) | v8 | 7) - (((v8 + 16) & ~v8) + *(*(v4 - 8) + 64)) >= 0xFFFFFFFFFFFFFFE7)
  {
    __n = ((v8 + 16) & ~v8) + *(*(v4 - 8) + 64);
    v54 = *(v4 - 8);
    v55 = *(a3 + 24);
    v13 = *a2;
    v14 = *(a2 + 8);
    v50 = *(*(a3 + 16) - 8);
    v51 = *(a3 + 16);
    v15 = a2;
    v53 = *(v7 + 84);
    v52 = *(v50 + 64);
    outlined copy of Environment<Selector?>.Content(*a2, v14);
    *a1 = v13;
    *(a1 + 8) = v14;
    v56 = a1;
    v16 = a1 & 0xFFFFFFFFFFFFFFF8;
    v15 &= 0xFFFFFFFFFFFFFFF8;
    v17 = *(v15 + 16);
    v18 = *(v15 + 25);
    v19 = *(v15 + 24);
    outlined copy of Environment<CGFloat?>.Content(v17, v19, v18);
    *(v16 + 16) = v17;
    *(v16 + 24) = v19;
    *(v16 + 25) = v18;
    v20 = (v16 + 33) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v15 + 33) & 0xFFFFFFFFFFFFFFF8;
    v22 = *v21;
    v23 = *(v21 + 8);
    outlined copy of Environment<Selector?>.Content(*v21, v23);
    *v20 = v22;
    *(v20 + 8) = v23;
    v24 = (v16 + 49) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v15 + 49) & 0xFFFFFFFFFFFFFFF8;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 24);
    v31 = *(v25 + 32);
    v30 = *(v25 + 40);
    v32 = *(v25 + 56);
    v47 = *(v25 + 48);
    v48 = *(v25 + 64);
    v49 = *(v25 + 65);
    v33 = outlined copy of Environment<ListPadding>.Content(*v25, v27, v28, v29, v31, v30, v47, v32, v48, v49);
    *v24 = v26;
    *(v24 + 8) = v27;
    *(v24 + 16) = v28;
    *(v24 + 24) = v29;
    *(v24 + 32) = v31;
    *(v24 + 40) = v30;
    *(v24 + 48) = v47;
    *(v24 + 56) = v32;
    *(v24 + 64) = v48;
    *(v24 + 65) = v49;
    v34 = (v25 + v6 + 66) & ~v6;
    (*(v50 + 16))((v24 + v6 + 66) & ~v6, v34, v51, v33);
    v35 = v52 + 7 + ((v24 + v6 + 66) & ~v6);
    v36 = ((v52 + 7 + v34) & 0xFFFFFFFFFFFFFFF8);
    v37 = ((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v53 < 0)
    {
      v40 = v54;
      v39 = v55;
      v42 = (*(v54 + 48))(v37 + 1);
      v41 = (v35 & 0xFFFFFFFFFFFFFFF8);
      if (v42)
      {
LABEL_13:
        memcpy(v41, v36, __n);
        return v56;
      }
    }

    else
    {
      v38 = *v37;
      if (*v37 >= 0xFFFFFFFF)
      {
        LODWORD(v38) = -1;
      }

      v40 = v54;
      v39 = v55;
      v41 = (v35 & 0xFFFFFFFFFFFFFFF8);
      if (v38 != -1)
      {
        goto LABEL_13;
      }
    }

    *v41 = *v36;
    v43 = ((v41 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v43 = *v37;
    v44 = *(v40 + 16);

    v44(v43 + 1, v37 + 1, v39);
    return v56;
  }

  v11 = *a2;
  *a1 = *a2;
  v12 = v11 + (((v8 | v6) & 0xF8 ^ 0x1F8) & ((v8 | v6) + 16));

  return v12;
}

uint64_t assignWithCopy for SidebarListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v6;
  outlined consume of Environment<Selector?>.Content(v7, v8);
  v69 = a1;
  a1 &= 0xFFFFFFFFFFFFFFF8;
  v9 = a2 & 0xFFFFFFFFFFFFFFF8;
  v10 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v5) = *(v9 + 25);
  v11 = *(v9 + 24);
  outlined copy of Environment<CGFloat?>.Content(v10, v11, v5);
  v12 = *(a1 + 16);
  v13 = *(a1 + 25);
  *(a1 + 16) = v10;
  v14 = *(a1 + 24);
  *(a1 + 24) = v11;
  *(a1 + 25) = v5;
  outlined consume of Environment<CGFloat?>.Content(v12, v14, v13);
  v15 = (a1 + 33) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v9 + 33) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  LOBYTE(v5) = *(v16 + 8);
  outlined copy of Environment<Selector?>.Content(*v16, v5);
  v18 = *v15;
  v19 = *(v15 + 8);
  *v15 = v17;
  *(v15 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  v20 = (v9 + 49) & 0xFFFFFFFFFFFFFFF8;
  v66 = *(v20 + 8);
  v67 = *v20;
  v21 = (a1 + 49) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v20 + 16);
  v23 = *(v20 + 24);
  v24 = *(v20 + 32);
  v25 = *(v20 + 40);
  v26 = *(v20 + 48);
  v27 = *(v20 + 56);
  LOBYTE(v17) = *(v20 + 64);
  LOBYTE(v5) = *(v20 + 65);
  outlined copy of Environment<ListPadding>.Content(*v20, v66, v22, v23, v24, v25, v26, v27, v17, v5);
  v28 = *v21;
  v29 = *(v21 + 8);
  v30 = *(v21 + 16);
  v31 = *(v21 + 24);
  v32 = *(v21 + 32);
  v33 = *(v21 + 40);
  v34 = *(v21 + 48);
  v35 = *(v21 + 56);
  v36 = *(v21 + 64);
  v37 = *(v21 + 65);
  *v21 = v67;
  *(v21 + 8) = v66;
  *(v21 + 16) = v22;
  *(v21 + 24) = v23;
  *(v21 + 32) = v24;
  *(v21 + 40) = v25;
  *(v21 + 48) = v26;
  *(v21 + 56) = v27;
  *(v21 + 64) = v17;
  *(v21 + 65) = v5;
  v38 = outlined consume of Environment<ListPadding>.Content(v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  v39 = *(*(a3 + 16) - 8);
  v40 = v39 + 24;
  v41 = *(v39 + 80);
  v42 = (v41 + 66 + v21) & ~v41;
  v43 = (v41 + 66 + v20) & ~v41;
  (*(v39 + 24))(v42, v43, v38);
  v44 = *(a3 + 24);
  v45 = *(v44 - 8);
  v46 = *(v45 + 80);
  v47 = (v46 | 7) + *(v40 + 40);
  v48 = ((v47 + v42) & ~(v46 | 7));
  v49 = ((v47 + v43) & ~(v46 | 7));
  v50 = *(v45 + 84);
  v51 = ~v46;
  v52 = (v46 + 16) & ~v46;
  v53 = *(v45 + 64);
  v54 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v50 & 0x80000000) != 0)
  {
    v65 = *(v45 + 64);
    v60 = v49;
    v61 = *(v45 + 48);
    v64 = v61((v54 + v46 + 8) & ~v46, v50, v44);
    v55 = ((v60 + 15) & 0xFFFFFFFFFFFFFFF8);
    v51 = ~v46;
    v57 = v61((v55 + v46 + 8) & ~v46, v50, v44);
    v54 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
    v49 = v60;
    v53 = v65;
    v52 = (v46 + 16) & ~v46;
    if (!v64)
    {
LABEL_5:
      if (!v57)
      {
        *v48 = *v49;

        *v54 = *v55;

        (*(v45 + 24))((v54 + v46 + 8) & v51, (v55 + v46 + 8) & v51, v44);
        return v69;
      }

      v58 = v53;

      (*(v45 + 8))((v54 + v46 + 8) & v51, v44);
      v59 = v52 + v58;
      goto LABEL_10;
    }
  }

  else
  {
    v55 = ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
    v56 = *v55;
    if (*v55 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v56) = -1;
    }

    v57 = v56 + 1;
    if (*v54 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v57)
  {
    *v48 = *v49;
    *v54 = *v55;
    v62 = *(v45 + 16);

    v62((v54 + v46 + 8) & v51, (v55 + v46 + 8) & v51, v44);
    return v69;
  }

  v59 = v52 + v53;
LABEL_10:
  memcpy(v48, v49, v59);
  return v69;
}

uint64_t initializeWithTake for SidebarListBody.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v5 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v5 + 16) = v6;
  v7 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *v7 = v9;
  v10 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8;
  v11 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v11 + 32);
  v12 = *(v11 + 48);
  v14 = *(v11 + 16);
  *(v10 + 64) = *(v11 + 64);
  *(v10 + 32) = v13;
  *(v10 + 48) = v12;
  *(v10 + 16) = v14;
  *v10 = *v11;
  v15 = *(*(a3 + 16) - 8);
  v16 = v15 + 32;
  v17 = *(v15 + 80);
  v18 = (v17 + 66 + v10) & ~v17;
  v19 = (v17 + 66 + v11) & ~v17;
  (*(v15 + 32))(v18, v19);
  v20 = *(a3 + 24);
  v21 = *(v16 + 32);
  v22 = *(v20 - 8);
  v23 = *(v22 + 80);
  v24 = (v23 | 7) + v21;
  v25 = ((v24 + v18) & ~(v23 | 7));
  v26 = ((v24 + v19) & ~(v23 | 7));
  v27 = ~v23;
  v28 = *(v22 + 64);
  v29 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v22 + 84) & 0x80000000) == 0)
  {
    v30 = *v29;
    if (*v29 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    if (v30 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v25 = *v26;
    v31 = (v25 + 15);
    *(v31 & 0xFFFFFFFFFFFFFFF8) = *v29;
    (*(v22 + 32))((v23 + 8 + (v31 & 0xFFFFFFFFFFFFFFF8)) & v27, (v29 + v23 + 8) & v27, v20);
    return a1;
  }

  if (!(*(v22 + 48))((v29 + v23 + 8) & v27))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v25, v26, ((v23 + 16) & ~v23) + v28);
  return a1;
}

uint64_t assignWithTake for SidebarListBody.CollectionViewBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 &= 0xFFFFFFFFFFFFFFF8;
  v11 = *(v4 + 24);
  v12 = *(v4 + 25);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 25);
  *(v10 + 16) = *(v4 + 16);
  v15 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v10 + 24) = v11;
  *(v10 + 25) = v12;
  outlined consume of Environment<CGFloat?>.Content(v13, v15, v14);
  v16 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v4 + 33) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  v19 = *v16;
  v20 = *(v16 + 8);
  *v16 = v18;
  *(v16 + 8) = v17;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  v21 = (v4 + 49) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v21 + 64);
  v23 = *(v21 + 65);
  v24 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8;
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v29 = *(v24 + 32);
  v30 = *(v24 + 40);
  v31 = *(v24 + 48);
  v32 = *(v24 + 56);
  v33 = *(v24 + 64);
  v34 = *(v24 + 65);
  v35 = *(v21 + 16);
  v36 = *(v21 + 32);
  v37 = *(v21 + 48);
  *v24 = *v21;
  *(v24 + 16) = v35;
  *(v24 + 32) = v36;
  *(v24 + 48) = v37;
  *(v24 + 64) = v22;
  *(v24 + 65) = v23;
  v38 = outlined consume of Environment<ListPadding>.Content(v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  v39 = *(*(a3 + 16) - 8);
  v40 = v39 + 40;
  v41 = *(v39 + 80);
  v42 = (v41 + 66 + v24) & ~v41;
  v43 = (v41 + 66 + v21) & ~v41;
  (*(v39 + 40))(v42, v43, v38);
  v44 = *(a3 + 24);
  v45 = *(v44 - 8);
  v46 = *(v45 + 80);
  v47 = (v46 | 7) + *(v40 + 24);
  v48 = ((v47 + v42) & ~(v46 | 7));
  v49 = ((v47 + v43) & ~(v46 | 7));
  v50 = *(v45 + 84);
  v51 = (v46 + 16) & ~v46;
  v52 = *(v45 + 64);
  v53 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
  v64 = ~v46;
  if ((v50 & 0x80000000) != 0)
  {
    v63 = v49;
    v59 = *(v45 + 48);
    v62 = *(v45 + 64);
    v61 = v59((v53 + v46 + 8) & ~v46, v50, v44);
    v54 = ((v63 + 15) & 0xFFFFFFFFFFFFFFF8);
    v56 = v59((v54 + v46 + 8) & ~v46, v50, v44);
    v52 = v62;
    v51 = (v46 + 16) & ~v46;
    v49 = v63;
    if (!v61)
    {
LABEL_5:
      if (!v56)
      {
        *v48 = *v49;

        *v53 = *v54;

        (*(v45 + 40))((v53 + v46 + 8) & v64, (v54 + v46 + 8) & v64, v44);
        return a1;
      }

      v57 = v52;

      (*(v45 + 8))((v53 + v46 + 8) & v64, v44);
      v58 = v51 + v57;
      goto LABEL_10;
    }
  }

  else
  {
    v54 = ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
    v55 = *v54;
    if (*v54 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v55) = -1;
    }

    v56 = v55 + 1;
    if (*v53 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v56)
  {
    *v48 = *v49;
    *v53 = *v54;
    (*(v45 + 32))((v53 + v46 + 8) & v64, (v54 + v46 + 8) & v64, v44);
    return a1;
  }

  v58 = v51 + v52;
LABEL_10:
  memcpy(v48, v49, v58);
  return a1;
}

uint64_t getEnumTagSinglePayload for SidebarListBody.CollectionViewBody(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  v13 = *(v6 + 80);
  v14 = *(*(v5 - 8) + 64);
  v15 = *(v8 + 80);
  if (v7 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(v6 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 | 7;
  v18 = a2 - v16;
  if (a2 <= v16)
  {
    goto LABEL_31;
  }

  v19 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-115 - v13) | v13) - (v14 + v17)) | v17) - 2;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v23 < 2)
    {
LABEL_31:
      v27 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + v13 + 66) & ~v13;
      if (v7 >= v12)
      {
        v31 = *(v6 + 48);

        return v31(v27, v7, v5);
      }

      else
      {
        v28 = ((((v27 + v14 + v17) & ~v17) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v10 & 0x80000000) != 0)
        {
          v30 = (*(v9 + 48))((v28 + v15 + 8) & ~v15);
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          v30 = v29 + 1;
        }

        if (v30 >= 2)
        {
          return v30 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_31;
  }

LABEL_18:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (*(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-115 - v13) | v13) - (v14 + v17)) | v17) == 2)
  {
    v26 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v25 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-115 - v13) | v13) - (v14 + v17)) | v17) - 2;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  return v16 + (v26 | v24) + 1;
}

void storeEnumTagSinglePayload for SidebarListBody.CollectionViewBody(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v8 + 84);
  }

  v14 = v13 - 1;
  if (v7 <= v13 - 1)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = *(v6 + 84);
  }

  v16 = v12 | 7;
  v17 = ((v12 + 16) & ~v12) + *(v8 + 64);
  v18 = (((v12 | 7) + v11 + ((v10 + 114) & ~v10)) & ~(v12 | 7)) + v17;
  v19 = a3 >= v15;
  v20 = a3 - v15;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v24 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v24))
      {
        v21 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v21 = v25;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v15 < a2)
  {
    v22 = ~v15 + a2;
    if (v18 >= 4)
    {
      bzero(a1, v18);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_60;
    }

    v23 = (v22 >> (8 * v18)) + 1;
    if (v18)
    {
      v26 = v22 & ~(-1 << (8 * v18));
      bzero(a1, v18);
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *a1 = v26;
          if (v21 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v22;
          if (v21 > 1)
          {
LABEL_14:
            if (v21 == 2)
            {
              *(a1 + v18) = v23;
            }

            else
            {
              *(a1 + v18) = v23;
            }

            return;
          }
        }

LABEL_60:
        if (v21)
        {
          *(a1 + v18) = v23;
        }

        return;
      }

      *a1 = v26;
      *(a1 + 2) = BYTE2(v26);
    }

    if (v21 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v18) = 0;
  }

  else if (v21)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  v27 = ((((a1 & 0xFFFFFFFFFFFFFFF8) + 49) & 0xFFFFFFFFFFFFFFF8) + v10 + 66) & ~v10;
  if (v7 >= v14)
  {
    v32 = *(v6 + 56);

    v32(v27);
  }

  else
  {
    v28 = (v27 + v11 + v16) & ~v16;
    if (v14 >= a2)
    {
      if (a2 >= v13)
      {
        if (v17 <= 3)
        {
          v34 = ~(-1 << (8 * v17));
        }

        else
        {
          v34 = -1;
        }

        if (v17)
        {
          v30 = v34 & (a2 - v13);
          if (v17 <= 3)
          {
            v31 = v17;
          }

          else
          {
            v31 = 4;
          }

          bzero(((v27 + v11 + v16) & ~v16), v17);
          if (v31 <= 2)
          {
            if (v31 == 1)
            {
              goto LABEL_46;
            }

            goto LABEL_74;
          }

LABEL_75:
          if (v31 == 3)
          {
            *v28 = v30;
            *(v28 + 2) = BYTE2(v30);
          }

          else
          {
            *v28 = v30;
          }
        }
      }

      else
      {
        v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v9 & 0x80000000) != 0)
        {
          v35 = *(v8 + 56);
          v36 = a2 + 1;

          v35((v33 + v12 + 8) & ~v12, v36);
        }

        else if (((a2 + 1) & 0x80000000) != 0)
        {
          *v33 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v33 = a2;
        }
      }
    }

    else
    {
      if (v17 <= 3)
      {
        v29 = ~(-1 << (8 * v17));
      }

      else
      {
        v29 = -1;
      }

      if (v17)
      {
        v30 = v29 & (a2 - v13);
        if (v17 <= 3)
        {
          v31 = v17;
        }

        else
        {
          v31 = 4;
        }

        bzero(((v27 + v11 + v16) & ~v16), v17);
        if (v31 <= 2)
        {
          if (v31 == 1)
          {
LABEL_46:
            *v28 = v30;
            return;
          }

LABEL_74:
          *v28 = v30;
          return;
        }

        goto LABEL_75;
      }
    }
  }
}

uint64_t instantiation function for generic protocol witness table for SidebarListBody<A, B>.TableViewRoot(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for SidebarListBody<A, B>.TableViewRoot);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>)
  {
    _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v7>, MEMORY[0x1E697DF70], MEMORY[0x1E697DF68], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable(MEMORY[0x1E697EC30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v7> and conformance _SemanticFeature<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _DUIPreviewMode(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<AnyShapeStyle>, MEMORY[0x1E697E0B8], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<AnyShapeStyle> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _SemanticFeature<Semantics_v4>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v4>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle>, &type metadata for EnvironmentValues.__Key_listLabelIconStyle, &protocol witness table for EnvironmentValues.__Key_listLabelIconStyle, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_listLabelIconStyle> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t getEnumTagSinglePayload for _AGAttributeVTable(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _AGAttributeVTable(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AGClosureStorage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _AGClosureStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AGTreeElement(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for AGTreeElement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _AGAttributeType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 56))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _AGAttributeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AGSwiftMetadata(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AGSwiftMetadata(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t View.accessibilityValue(_:isEnabled:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v8[2] = a1;
  v8[3] = a2;
  v9 = a3 & 1;
  v10 = a4;
  return View.accessibility(isEnabled:body:)(a5, partial apply for closure #1 in View.accessibilityValue(_:isEnabled:), v8, a6, a7);
}

uint64_t closure #1 in View.accessibilityValue(_:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  AccessibilityValueStorage.init(description:)();
  return outlined assign with take of AccessibilityValueStorage?(&v7, a1 + 64);
}

uint64_t View.accessibilityValue(_:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{

  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v18 = v10;
  v19 = v11;
  v14 = v13 & 1;
  v20 = v13 & 1;
  v21 = v15;
  View.accessibility(isEnabled:body:)(a5, partial apply for closure #1 in View.accessibilityValue(_:isEnabled:), v17, a6, a7);
  outlined consume of Text.Storage(v10, v12, v14);
}

uint64_t View.accessibilityValue<A>(_:isEnabled:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(&v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v9);
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v21 = v12;
  v22 = v13;
  v16 = v15 & 1;
  v23 = v15 & 1;
  v24 = v17;
  View.accessibility(isEnabled:body:)(a2, partial apply for closure #1 in View.accessibilityValue(_:isEnabled:), v20, a3, a5);
  outlined consume of Text.Storage(v12, v14, v16);
}

uint64_t closure #1 in ModifiedContent<>.accessibilityValue(_:isEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  outlined copy of Text.Storage(a2, a3, a4 & 1);

  AccessibilityValueStorage.init(description:)();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e40AttachmentModifierVRs_rlE18accessibilityf63_9isEnabledACyxAEGAA4TextV_SbtFyAA0E10PropertiesVzXEfU_SbAA0eI7G6VXEfU_AFTf1cn_n(a1 + 64, v7);
  outlined destroy of AnyAccessibilityValue?(a1 + 64, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  outlined init with copy of AccessibilityValueStorage(v7, a1 + 64);
  return outlined destroy of AccessibilityValueStorage(v7);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI25AccessibilityValueStorageV_s5NeverOSbTg503_s7c25UI15ModifiedContentVA2A31e40AttachmentModifierVRs_rlE18accessibilityf63_9isEnabledACyxAEGAA4TextV_SbtFyAA0E10PropertiesVzXEfU_SbAA0eI7G6VXEfU_AFTf1cn_n(uint64_t a1, uint64_t a2)
{
  outlined init with copy of AnyAccessibilityValue?(a1, &v6, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  if (*(&v7 + 1) == 1)
  {
    return 2;
  }

  v5[0] = v6;
  v5[1] = v7;
  v5[2] = v8;
  closure #1 in closure #1 in ModifiedContent<>.accessibilityValue(_:isEnabled:)(v5, a2, &v9);
  if (v2)
  {
    result = outlined destroy of AccessibilityValueStorage(v5);
    __break(1u);
  }

  else
  {
    outlined destroy of AccessibilityValueStorage(v5);
    return v9;
  }

  return result;
}

uint64_t ModifiedContent<>.accessibilityValue<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v11 + 16))(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v19[4] = v12;
  v19[5] = v13;
  v16 = v15 & 1;
  v20 = v15 & 1;
  v21 = v17;
  ModifiedContent<>.update(isEnabled:body:)(a2, partial apply for closure #1 in ModifiedContent<>.accessibilityValue(_:isEnabled:), a3, a6);
  outlined consume of Text.Storage(v12, v14, v16);
}

uint64_t TabContent.accessibilityValue(_:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v9 = a5;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  AccessibilityValueStorage.init(description:)();
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v13);
  AccessibilityProperties.init(identifier:label:traits:value:visibility:textLayoutProperties:)();
  TabContent.accessibility(_:isEnabled:)(v12, v9, a6, x8_0);
  return outlined destroy of AccessibilityProperties(v12);
}

uint64_t TabContent.accessibilityValue(_:isEnabled:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{

  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  TabContent.accessibilityValue(_:isEnabled:)(v11, v12, v14 & 1, a5, a6, x8_0);
  outlined consume of Text.Storage(v11, v13, v15 & 1);
}

uint64_t TabContent.accessibilityValue<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v13 = Text.init<A>(_:)();
  v15 = v14;
  v17 = v16;
  TabContent.accessibilityValue(_:isEnabled:)(v13, v14, v16 & 1, a2, a3, x8_0);
  outlined consume of Text.Storage(v13, v15, v17 & 1);
}

uint64_t View.accessibilityValue(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  AccessibilityValueStorage.init(description:)();
  v11 = v9;
  View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityValue(_:), v10, a5, a6);
  return outlined destroy of AccessibilityValueStorage(v9);
}

uint64_t View.accessibilityValue(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  View.accessibilityValue(_:)(v8, v9, v11 & 1, v13, a5, a6);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

uint64_t View.accessibilityValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  View.accessibilityValue(_:)(v10, v11, v13 & 1, v15, a2, a4);
  outlined consume of Text.Storage(v10, v12, v14 & 1);
}

uint64_t ModifiedContent<>.accessibilityValue(_:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X8>)
{

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  ModifiedContent<>.accessibilityValue(_:)(v8, v9, v11 & 1, a5, a6);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

uint64_t View.accessibilityValue(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v8 = 0;
  AccessibilityValueStorage.init<A>(_:description:)();
  v9 = v6;
  View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityValue(_:), &v7, a2, a3);
  return outlined destroy of AccessibilityValueStorage(v6);
}

uint64_t View.accessibilityValue(percentage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  v9 = a3;
  v7 = 0;
  v8 = 0;
  v5 = 0x3FF0000000000000;
  v6 = 0;
  return View.accessibilityValue<A>(_:from:to:description:)(&v9, &v7, &v5, 0, 0, 0, 0, a1, a4, MEMORY[0x1E69E63B0], a2, MEMORY[0x1E69E63F0]);
}

uint64_t View.accessibilityValue<A>(_:from:to:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v35 = a8;
  v32 = a7;
  v33 = a9;
  v12 = a6;
  v29 = a2;
  v30 = a3;
  v31 = a12;
  v34 = a11;
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  (*(v26 + 16))(&v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a10, v24);
  v27 = *(v17 + 16);
  v27(v22, v29, v16);
  v27(v19, v30, v16);
  outlined copy of Text?(a4, a5, v12, v32);
  AccessibilityValueStorage.init<A>(_:from:to:description:)();
  v38 = v36;
  View.accessibility(isEnabled:body:)(1, partial apply for closure #1 in View.accessibilityValue(_:), v37, v35, v34);
  return outlined destroy of AccessibilityValueStorage(v36);
}

uint64_t ModifiedContent<>.accessibilityValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6[6] = a1;
  v7 = 0;
  AccessibilityValueStorage.init<A>(_:description:)();
  v8 = v6;
  ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityValue(_:), a2, a3);
  return outlined destroy of AccessibilityValueStorage(v6);
}

uint64_t ModifiedContent<>.accessibilityValue(percentage:)@<X0>(uint64_t a1@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  v8 = a2;
  v6 = 0;
  v7 = 0;
  v4 = 0x3FF0000000000000;
  v5 = 0;
  return ModifiedContent<>.accessibilityValue<A>(_:from:to:description:)(&v8, &v6, &v4, 0, 0, 0, 0, a1, a3, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63F0]);
}

uint64_t ModifiedContent<>.accessibilityValue<A>(_:from:to:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v34 = a8;
  v32 = a7;
  v33 = a9;
  v11 = a6;
  v29 = a2;
  v30 = a3;
  v31 = a11;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  (*(v25 + 16))(&v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a10, v23);
  v26 = *(v16 + 16);
  v26(v21, v29, v15);
  v26(v18, v30, v15);
  outlined copy of Text?(a4, a5, v11, v32);
  AccessibilityValueStorage.init<A>(_:from:to:description:)();
  v36 = v35;
  ModifiedContent<>.update(isEnabled:body:)(1, partial apply for closure #1 in ModifiedContent<>.accessibilityValue(_:), v34, v33);
  return outlined destroy of AccessibilityValueStorage(v35);
}

uint64_t View.accessibilityValue<A>(value:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v13);
  View.accessibilityAttachment<A>(content:_:)(v15, closure #1 in View.accessibilityValue<A>(value:), 0, a3, a4, a5, a6, x8_0);
  return (*(v12 + 8))(v15, a4);
}

uint64_t closure #1 in View.accessibilityValue<A>(value:)(_BYTE *a1)
{
  AccessibilityAttachment.Tree.mergedProperties.getter(a1);
  outlined init with copy of AnyAccessibilityValue?(v13, v8, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  if (*(&v8[17] + 1))
  {
    outlined init with copy of AnyAccessibilityValue?(&v8[4], v9, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
    outlined destroy of AccessibilityProperties(v8);
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    memset(v9, 0, sizeof(v9));
    v10 = 1;
    v11 = 0;
    v12 = 0;
  }

  outlined init with copy of AnyAccessibilityValue?(v13, v8, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
  if (!*(&v8[17] + 1))
  {
    outlined destroy of AccessibilityAttachment.Tree(a1);
    v3 = &lazy cache variable for type metadata for AccessibilityProperties?;
    v4 = MEMORY[0x1E6980108];
LABEL_10:
    outlined destroy of AnyAccessibilityValue?(v8, v3, v4);
    goto LABEL_18;
  }

  v2 = *(&v8[1] + 1);

  outlined destroy of AccessibilityProperties(v8);
  if (!v2)
  {
    outlined destroy of AccessibilityAttachment.Tree(a1);
    goto LABEL_18;
  }

  if (!*(v2 + 16))
  {
    goto LABEL_16;
  }

  outlined init with copy of AnyAccessibilityValue?(v9, v8, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  if (*(&v8[1] + 1) == 1)
  {
    outlined destroy of AccessibilityAttachment.Tree(a1);
    outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
    memset(v8, 0, 40);
    outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
    memset(v8, 0, 40);
    *(&v8[2] + 1) = v2;
    outlined assign with take of AccessibilityValueStorage?(v8, v9);
LABEL_18:
    AccessibilityAttachment.init()();
    outlined destroy of AnyAccessibilityValue?(v13, &lazy cache variable for type metadata for AccessibilityProperties?, MEMORY[0x1E6980108]);
    outlined assign with copy of AccessibilityValueStorage?(v9, &v8[4]);
    memcpy(a1, v8, 0x128uLL);
    a1[296] = 0;
    return outlined destroy of AnyAccessibilityValue?(v9, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  }

  v5 = MEMORY[0x1E69804E0];
  outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  outlined init with copy of AnyAccessibilityValue?(v9, v8, &lazy cache variable for type metadata for AccessibilityValueStorage?, v5);
  if (*(&v8[1] + 1) == 1)
  {
    outlined destroy of AccessibilityAttachment.Tree(a1);

    v3 = &lazy cache variable for type metadata for AccessibilityValueStorage?;
    v4 = MEMORY[0x1E69804E0];
    goto LABEL_10;
  }

  result = outlined destroy of AnyAccessibilityValue?(v8, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  if (v10 == 1)
  {
    __break(1u);
  }

  else
  {
    v7 = *(AccessibilityValueStorage.valueDescription.getter() + 16);

    if (v7)
    {
LABEL_16:
      outlined destroy of AccessibilityAttachment.Tree(a1);
LABEL_17:

      goto LABEL_18;
    }

    if (v10 != 1)
    {
      outlined destroy of AccessibilityAttachment.Tree(a1);
      v12 = v2;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in ModifiedContent<>.accessibilityValue(_:isEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = MEMORY[0x1E697FBB0];
  outlined init with copy of AnyAccessibilityValue?(a2, &v15, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
  v7 = *(&v16 + 1);
  result = outlined destroy of AnyAccessibilityValue?(&v15, &lazy cache variable for type metadata for AnyAccessibilityValue?, v6);
  if (!v7)
  {
    outlined init with copy of AnyAccessibilityValue?(a1, &v12, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
    if (*(&v13 + 1))
    {
      v15 = v12;
      v16 = v13;
      v17 = v14;
      result = outlined destroy of AnyAccessibilityValue?(a2, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
      v11 = v16;
      *a2 = v15;
      *(a2 + 16) = v11;
      *(a2 + 32) = v17;
      v9 = 1;
      v10 = *(a2 + 40);
      if (!v10)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    result = outlined destroy of AnyAccessibilityValue?(&v12, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
  }

  v9 = 0;
  v10 = *(a2 + 40);
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_6:
  if (!*(v10 + 16))
  {
    result = *(a1 + 40);
    if (result)
    {
      if (*(result + 16))
      {
        *(a2 + 40) = result;

        v9 = 1;
      }
    }
  }

LABEL_7:
  *a3 = v9;
  return result;
}

uint64_t outlined assign with copy of AccessibilityValueStorage?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of AccessibilityValueStorage?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AccessibilityValueStorage?, MEMORY[0x1E69804E0]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AccessibilityValueStorage.impliedRole(for:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  outlined init with copy of AnyAccessibilityValue?(v1, &v6, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
  if (!v8)
  {
    outlined destroy of AnyAccessibilityValue?(&v6, &lazy cache variable for type metadata for AnyAccessibilityValue?, MEMORY[0x1E697FBB0]);
    return 0;
  }

  AnyAccessibilityValue.type.getter();
  outlined destroy of AnyAccessibilityValue(&v6);
  result = 0;
  if (v5 <= 5u)
  {
    if (v5 == 4)
    {
      v6 = v3;
      v7 = v2;
      if ((AccessibilityNullableOptionSet<>.subscript.getter() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v5 != 5)
      {
        return result;
      }

      v6 = v3;
      v7 = v2;
      if (AccessibilityNullableOptionSet<>.subscript.getter())
      {
        return 1048577;
      }

      v6 = v3;
      v7 = v2;
      if (AccessibilityNullableOptionSet<>.subscript.getter() == 2)
      {
        v6 = v3;
        v7 = v2;
        if (AccessibilityNullableOptionSet<>.subscript.getter())
        {
          return 0x20000000000000;
        }

        v6 = v3;
        v7 = v2;
        if (AccessibilityNullableOptionSet<>.subscript.getter())
        {
          return 0x20000000000000;
        }

        v6 = v3;
        v7 = v2;
        if (AccessibilityNullableOptionSet<>.subscript.getter())
        {
          return 0x20000000000001;
        }
      }
    }

    return 0;
  }

  else
  {
    switch(v5)
    {
      case 6u:
        return 4096;
      case 7u:
        return 4096;
      case 8u:
        AccessibilityValueStorage.isBounded.getter();
        return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for CapsuleSlider(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for CapsuleSlider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((((v7 + ((v6 + 56) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = a2[2];
    a1[1] = a2[1];
    a1[2] = v12;
    v13 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v14;
    v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
    v18 = *(v5 + 16);

    v18(v15 + 2, v16 + 2, v4);
    v19 = (v15 + v7 + 23) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v16 + v7 + 23) & 0xFFFFFFFFFFFFFFF8;
    *v19 = *v20;
    *(v19 + 8) = *(v20 + 8);
    v21 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
    v23 = *v22;
    v24 = *(v22 + 8);

    outlined copy of Environment<Selector?>.Content(v23, v24);
    *v21 = v23;
    *(v21 + 8) = v24;
    v25 = (v19 + 39) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v20 + 39) & 0xFFFFFFFFFFFFFFF8;
    v27 = *v26;
    v28 = *(v26 + 8);
    outlined copy of Environment<Selector?>.Content(*v26, v28);
    *v25 = v27;
    *(v25 + 8) = v28;
    v29 = (v19 + 55) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v20 + 55) & 0xFFFFFFFFFFFFFFF8;
    v31 = *v30;
    v32 = *(v30 + 8);
    outlined copy of Environment<Selector?>.Content(*v30, v32);
    *v29 = v31;
    *(v29 + 8) = v32;
    v33 = (v19 + 71) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v20 + 71) & 0xFFFFFFFFFFFFFFF8;
    v35 = *v34;
    v36 = *(v34 + 8);
    outlined copy of Environment<Selector?>.Content(*v34, v36);
    *v33 = v35;
    *(v33 + 8) = v36;
    v37 = (v19 + 87) & 0xFFFFFFFFFFFFFFF8;
    v38 = (v20 + 87) & 0xFFFFFFFFFFFFFFF8;
    v39 = *v38;
    v40 = *(v38 + 8);
    outlined copy of Environment<Selector?>.Content(*v38, v40);
    *v37 = v39;
    *(v37 + 8) = v40;
    v41 = (v19 + 103) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v20 + 103) & 0xFFFFFFFFFFFFFFF8;
    v43 = *v42;
    v44 = *(v42 + 8);
    outlined copy of Environment<Selector?>.Content(*v42, v44);
    *v41 = v43;
    *(v41 + 8) = v44;
    v45 = (v19 + 119) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v20 + 119) & 0xFFFFFFFFFFFFFFF8;
    v47 = *v46;
    v48 = *(v46 + 8);
    LOBYTE(v41) = *(v46 + 16);
    outlined copy of Environment<Material?>.Content(*v46, v48, v41);
    *v45 = v47;
    *(v45 + 8) = v48;
    *(v45 + 16) = v41;
    v49 = ((v19 + 143) & 0xFFFFFFFFFFFFFFF8);
    v50 = ((v20 + 143) & 0xFFFFFFFFFFFFFFF8);
    *v49 = *v50;
    v49[1] = v50[1];
    v51 = v50[3];
    v49[2] = v50[2];
    v49[3] = v51;
  }

  return a1;
}

double destroy for CapsuleSlider(void *a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 16) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = (*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  outlined consume of Environment<Selector?>.Content(*((v7 + 23) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v7 + 39) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 39) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v7 + 55) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 55) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v7 + 71) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 71) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v7 + 87) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 87) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Selector?>.Content(*((v7 + 103) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 103) & 0xFFFFFFFFFFFFFFF8) + 8));
  outlined consume of Environment<Material?>.Content(*((v7 + 119) & 0xFFFFFFFFFFFFFFF8), *(((v7 + 119) & 0xFFFFFFFFFFFFFFF8) + 8), *(((v7 + 119) & 0xFFFFFFFFFFFFFFF8) + 16));

  return result;
}

uint64_t *initializeWithCopy for CapsuleSlider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  v5 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;
  v10 = *(a3 + 16);
  v11 = *(*(v10 - 8) + 16);
  v12 = *(v10 - 8) + 16;
  v13 = *(*(v10 - 8) + 80);
  v14 = (v7 + v13 + 16) & ~v13;
  v15 = (v8 + v13 + 16) & ~v13;

  v11(v14, v15, v10);
  v16 = *(v12 + 48) + 7;
  v17 = (v16 + v14) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + v15) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;
  *(v17 + 8) = *(v18 + 8);
  v19 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  LOBYTE(v9) = *(v20 + 8);

  outlined copy of Environment<Selector?>.Content(v21, v9);
  *v19 = v21;
  *(v19 + 8) = v9;
  v22 = (v17 + 39) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v18 + 39) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  LOBYTE(v9) = *(v23 + 8);
  outlined copy of Environment<Selector?>.Content(*v23, v9);
  *v22 = v24;
  *(v22 + 8) = v9;
  v25 = (v17 + 55) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v18 + 55) & 0xFFFFFFFFFFFFFFF8;
  v27 = *v26;
  LOBYTE(v9) = *(v26 + 8);
  outlined copy of Environment<Selector?>.Content(*v26, v9);
  *v25 = v27;
  *(v25 + 8) = v9;
  v28 = (v17 + 71) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v18 + 71) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  LOBYTE(v9) = *(v29 + 8);
  outlined copy of Environment<Selector?>.Content(*v29, v9);
  *v28 = v30;
  *(v28 + 8) = v9;
  v31 = (v17 + 87) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v18 + 87) & 0xFFFFFFFFFFFFFFF8;
  v33 = *v32;
  LOBYTE(v9) = *(v32 + 8);
  outlined copy of Environment<Selector?>.Content(*v32, v9);
  *v31 = v33;
  *(v31 + 8) = v9;
  v34 = (v17 + 103) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v18 + 103) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  LOBYTE(v9) = *(v35 + 8);
  outlined copy of Environment<Selector?>.Content(*v35, v9);
  *v34 = v36;
  *(v34 + 8) = v9;
  v37 = (v17 + 119) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v18 + 119) & 0xFFFFFFFFFFFFFFF8;
  v39 = *v38;
  v40 = *(v38 + 8);
  LOBYTE(v34) = *(v38 + 16);
  outlined copy of Environment<Material?>.Content(*v38, v40, v34);
  *v37 = v39;
  *(v37 + 8) = v40;
  *(v37 + 16) = v34;
  v41 = ((v17 + 143) & 0xFFFFFFFFFFFFFFF8);
  v42 = ((v18 + 143) & 0xFFFFFFFFFFFFFFF8);
  *v41 = *v42;
  v41[1] = v42[1];
  v43 = v42[3];
  v41[2] = v42[2];
  v41[3] = v43;

  return a1;
}

uint64_t *assignWithCopy for CapsuleSlider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  v6 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;

  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 24;
  v13 = *(v11 + 80);
  v14 = (v8 + v13 + 16) & ~v13;
  v15 = (v9 + v13 + 16) & ~v13;
  (*(v11 + 24))(v14, v15);
  v16 = *(v12 + 40) + 7;
  v17 = (v16 + v14) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + v15) & 0xFFFFFFFFFFFFFFF8;
  *v17 = *v18;
  *(v17 + 8) = *(v18 + 8);

  v19 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  LOBYTE(v15) = *(v20 + 8);
  outlined copy of Environment<Selector?>.Content(*v20, v15);
  v22 = *v19;
  v23 = *(v19 + 8);
  *v19 = v21;
  *(v19 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v22, v23);
  v24 = (v17 + 39) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v18 + 39) & 0xFFFFFFFFFFFFFFF8;
  v26 = *v25;
  LOBYTE(v15) = *(v25 + 8);
  outlined copy of Environment<Selector?>.Content(*v25, v15);
  v27 = *v24;
  v28 = *(v24 + 8);
  *v24 = v26;
  *(v24 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v27, v28);
  v29 = (v17 + 55) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v18 + 55) & 0xFFFFFFFFFFFFFFF8;
  v31 = *v30;
  LOBYTE(v15) = *(v30 + 8);
  outlined copy of Environment<Selector?>.Content(*v30, v15);
  v32 = *v29;
  v33 = *(v29 + 8);
  *v29 = v31;
  *(v29 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v32, v33);
  v34 = (v17 + 71) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v18 + 71) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  LOBYTE(v15) = *(v35 + 8);
  outlined copy of Environment<Selector?>.Content(*v35, v15);
  v37 = *v34;
  v38 = *(v34 + 8);
  *v34 = v36;
  *(v34 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v37, v38);
  v39 = (v17 + 87) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v18 + 87) & 0xFFFFFFFFFFFFFFF8;
  v41 = *v40;
  LOBYTE(v15) = *(v40 + 8);
  outlined copy of Environment<Selector?>.Content(*v40, v15);
  v42 = *v39;
  v43 = *(v39 + 8);
  *v39 = v41;
  *(v39 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v42, v43);
  v44 = (v17 + 103) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v18 + 103) & 0xFFFFFFFFFFFFFFF8;
  v46 = *v45;
  LOBYTE(v15) = *(v45 + 8);
  outlined copy of Environment<Selector?>.Content(*v45, v15);
  v47 = *v44;
  v48 = *(v44 + 8);
  *v44 = v46;
  *(v44 + 8) = v15;
  outlined consume of Environment<Selector?>.Content(v47, v48);
  v49 = (v17 + 119) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v18 + 119) & 0xFFFFFFFFFFFFFFF8;
  v51 = *v50;
  v52 = *(v50 + 8);
  LOBYTE(v44) = *(v50 + 16);
  outlined copy of Environment<Material?>.Content(*v50, v52, v44);
  v53 = *v49;
  v54 = *(v49 + 8);
  v55 = *(v49 + 16);
  *v49 = v51;
  *(v49 + 8) = v52;
  *(v49 + 16) = v44;
  outlined consume of Environment<Material?>.Content(v53, v54, v55);
  v56 = ((v17 + 143) & 0xFFFFFFFFFFFFFFF8);
  v57 = ((v18 + 143) & 0xFFFFFFFFFFFFFFF8);
  *v56 = *v57;

  v56[1] = v57[1];

  v58 = v57[3];
  v56[2] = v57[2];
  v56[3] = v58;

  return a1;
}

uint64_t initializeWithTake for CapsuleSlider(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v5 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = ((v4 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v5 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 16) & ~v10;
  v12 = (v7 + v10 + 16) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(v9 + 32) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + v12) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v16 = (v14 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *v16 = v18;
  v19 = (v14 + 39) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 39) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v18) = *(v20 + 8);
  *v19 = *v20;
  *(v19 + 8) = v18;
  v21 = (v14 + 55) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v15 + 55) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v18) = *(v22 + 8);
  *v21 = *v22;
  *(v21 + 8) = v18;
  v23 = (v14 + 71) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v15 + 71) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v18) = *(v24 + 8);
  *v23 = *v24;
  *(v23 + 8) = v18;
  v25 = (v14 + 87) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v15 + 87) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v18) = *(v26 + 8);
  *v25 = *v26;
  *(v25 + 8) = v18;
  v27 = (v14 + 103) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v15 + 103) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v18) = *(v28 + 8);
  *v27 = *v28;
  *(v27 + 8) = v18;
  v29 = (v14 + 119) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v15 + 119) & 0xFFFFFFFFFFFFFFF8;
  LOBYTE(v18) = *(v30 + 16);
  *v29 = *v30;
  *(v29 + 16) = v18;
  v31 = ((v14 + 143) & 0xFFFFFFFFFFFFFFF8);
  v32 = ((v15 + 143) & 0xFFFFFFFFFFFFFFF8);
  v33 = v32[1];
  *v31 = *v32;
  v31[1] = v33;
  return a1;
}

uint64_t *assignWithTake for CapsuleSlider(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  v6 = ((a1 + 31) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;

  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v8 + v12 + 16) & ~v12;
  v14 = (v9 + v12 + 16) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24) + 7;
  v16 = (v15 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + v14) & 0xFFFFFFFFFFFFFFF8;
  *v16 = *v17;
  *(v16 + 8) = *(v17 + 8);

  v18 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  LOBYTE(v19) = *(v19 + 8);
  v21 = *v18;
  v22 = *(v18 + 8);
  *v18 = v20;
  *(v18 + 8) = v19;
  outlined consume of Environment<Selector?>.Content(v21, v22);
  v23 = (v16 + 39) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v17 + 39) & 0xFFFFFFFFFFFFFFF8;
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  v26 = *v23;
  v27 = *(v23 + 8);
  *v23 = v25;
  *(v23 + 8) = v24;
  outlined consume of Environment<Selector?>.Content(v26, v27);
  v28 = (v16 + 55) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v17 + 55) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  v31 = *v28;
  v32 = *(v28 + 8);
  *v28 = v30;
  *(v28 + 8) = v29;
  outlined consume of Environment<Selector?>.Content(v31, v32);
  v33 = (v16 + 71) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v17 + 71) & 0xFFFFFFFFFFFFFFF8;
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  v36 = *v33;
  v37 = *(v33 + 8);
  *v33 = v35;
  *(v33 + 8) = v34;
  outlined consume of Environment<Selector?>.Content(v36, v37);
  v38 = (v16 + 87) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v17 + 87) & 0xFFFFFFFFFFFFFFF8;
  v40 = *v39;
  LOBYTE(v39) = *(v39 + 8);
  v41 = *v38;
  v42 = *(v38 + 8);
  *v38 = v40;
  *(v38 + 8) = v39;
  outlined consume of Environment<Selector?>.Content(v41, v42);
  v43 = (v16 + 103) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v17 + 103) & 0xFFFFFFFFFFFFFFF8;
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  v46 = *v43;
  v47 = *(v43 + 8);
  *v43 = v45;
  *(v43 + 8) = v44;
  outlined consume of Environment<Selector?>.Content(v46, v47);
  v48 = (v16 + 119) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v17 + 119) & 0xFFFFFFFFFFFFFFF8;
  v50 = *(v49 + 16);
  v51 = *v48;
  v52 = *(v48 + 8);
  v53 = *(v48 + 16);
  *v48 = *v49;
  *(v48 + 16) = v50;
  outlined consume of Environment<Material?>.Content(v51, v52, v53);
  v54 = (v16 + 143) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v17 + 143) & 0xFFFFFFFFFFFFFFF8;
  *v54 = *v55;

  *(v54 + 8) = *(v55 + 8);

  *(v54 + 16) = *(v55 + 16);

  return a1;
}

uint64_t getEnumTagSinglePayload for CapsuleSlider(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 56) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 32;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *storeEnumTagSinglePayload for CapsuleSlider(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 143) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (((((result + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[1] = 0;
        result[2] = 0;
        *result = a2 & 0x7FFFFFFF;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) == 0xFFFFFFE0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 56) & ~v8) + 7) & 0xFFFFFFF8) + 143) & 0xFFFFFFF8) != 0xFFFFFFE0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void type metadata accessor for <<opaque return type of View.accessibilityDisabled()>>.0(uint64_t a1)
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _MaskEffect<Image>>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<Image, _MaskEffect<Image>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _MaskEffect<Image>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Image, _MaskEffect<Image>>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<Image, _MaskEffect<Image>>, lazy protocol witness table accessor for type ModifiedContent<Image, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0)
  {
    type metadata accessor for _MaskEffect<Image>(255, &lazy cache variable for type metadata for ModifiedContent<Image, _FrameLayout>, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0);
    }
  }
}

{
  if (!lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _FrameLayout>, StaticIf<CheckmarkAnimationPredicate, _SymbolEffectModifier, EmptyModifier>>, OpacityRendererEffect> and conformance <> ModifiedContent<A, B>();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.accessibilityDisabled()>>.0);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>)
  {
    type metadata accessor for _ShapeView<Rectangle, Color>(255);
    type metadata accessor for _MaskEffect<Image>(255, &lazy cache variable for type metadata for _MaskEffect<Image>, MEMORY[0x1E6981710], MEMORY[0x1E697DDE0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>);
    }
  }
}

void type metadata accessor for _ShapeView<Rectangle, Color>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, Color>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v1 = type metadata accessor for _ShapeView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ShapeView<Rectangle, Color>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>, type metadata accessor for _ShapeView<Rectangle, Color>, MEMORY[0x1E697DB78]);
    v5[1] = lazy protocol witness table accessor for type _MaskEffect<Image> and conformance _MaskEffect<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _MaskEffect<Image> and conformance _MaskEffect<A>()
{
  result = lazy protocol witness table cache variable for type _MaskEffect<Image> and conformance _MaskEffect<A>;
  if (!lazy protocol witness table cache variable for type _MaskEffect<Image> and conformance _MaskEffect<A>)
  {
    type metadata accessor for _MaskEffect<Image>(255, &lazy cache variable for type metadata for _MaskEffect<Image>, MEMORY[0x1E6981710], MEMORY[0x1E697DDE0]);
    result = swift_getWitnessTable(MEMORY[0x1E697DDE8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _MaskEffect<Image> and conformance _MaskEffect<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Image, _MaskEffect<Image>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Image, _MaskEffect<Image>>)
  {
    type metadata accessor for _MaskEffect<Image>(255, &lazy cache variable for type metadata for _MaskEffect<Image>, MEMORY[0x1E6981710], MEMORY[0x1E697DDE0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Image, _MaskEffect<Image>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, double (*a3)(uint64_t), uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(255, a2, a3);
    v8 = v7;
    v9[0] = a4();
    v9[1] = MEMORY[0x1E697EBF8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<Image, _MaskEffect<Image>>(255);
    v4 = v3;
    v5 = lazy protocol witness table accessor for type _MaskEffect<Image> and conformance _MaskEffect<A>();
    v6[0] = MEMORY[0x1E6981710];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _MaskEffect<Image>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for HStack<<<opaque return type of View.accessibilityDisabled()>>.0>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for HStack<<<opaque return type of View.accessibilityDisabled()>>.0>)
  {
    type metadata accessor for <<opaque return type of View.accessibilityDisabled()>>.0(255);
    type metadata accessor for _MaskEffect<Image>(255, &lazy cache variable for type metadata for ModifiedContent<Image, _FrameLayout>, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    v1 = type metadata accessor for HStack();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for HStack<<<opaque return type of View.accessibilityDisabled()>>.0>);
    }
  }
}

void type metadata accessor for _MaskEffect<Image>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = (a4)(0, MEMORY[0x1E6981748], a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for _MaskEffect<Image>(255, &lazy cache variable for type metadata for ModifiedContent<Image, _FrameLayout>, MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v4[0] = MEMORY[0x1E6981710];
    v4[1] = MEMORY[0x1E697E040];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void type metadata accessor for AddGestureModifier<_EndedGesture<_ChangedGesture<DragGesture>>, DefaultGestureCombiner>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<_ChangedGesture<DragGesture>>, DefaultGestureCombiner>)
  {
    type metadata accessor for _EndedGesture<_ChangedGesture<DragGesture>>(255);
    lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _EndedGesture<_ChangedGesture<DragGesture>> and conformance _EndedGesture<A>, type metadata accessor for _EndedGesture<_ChangedGesture<DragGesture>>, MEMORY[0x1E697E238]);
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v1 = type metadata accessor for AddGestureModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<_ChangedGesture<DragGesture>>, DefaultGestureCombiner>);
    }
  }
}

void type metadata accessor for _ChangedGesture<DragGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ChangedGesture<DragGesture>)
  {
    lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type DragGesture.Value and conformance DragGesture.Value, type metadata accessor for DragGesture.Value, protocol conformance descriptor for DragGesture.Value);
    v1 = type metadata accessor for _ChangedGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ChangedGesture<DragGesture>);
    }
  }
}

void type metadata accessor for _EndedGesture<_ChangedGesture<DragGesture>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(a4, a5, MEMORY[0x1E697E8D0]);
    v8 = type metadata accessor for _EndedGesture();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for _ChangedGesture<IndirectScrollGesture>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ChangedGesture<IndirectScrollGesture>)
  {
    lazy protocol witness table accessor for type IndirectScrollGesture and conformance IndirectScrollGesture();
    lazy protocol witness table accessor for type _ShapeView<Rectangle, Color> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type CGSize and conformance CGSize, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
    v1 = type metadata accessor for _ChangedGesture();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ChangedGesture<IndirectScrollGesture>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type IndirectScrollGesture and conformance IndirectScrollGesture()
{
  result = lazy protocol witness table cache variable for type IndirectScrollGesture and conformance IndirectScrollGesture;
  if (!lazy protocol witness table cache variable for type IndirectScrollGesture and conformance IndirectScrollGesture)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IndirectScrollGesture, &type metadata for IndirectScrollGesture, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type IndirectScrollGesture and conformance IndirectScrollGesture);
  }

  return result;
}

void type metadata accessor for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    v1 = type metadata accessor for _OverlayModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Image?, _OpacityEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Image?, _OpacityEffect>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for Image?, MEMORY[0x1E6981748]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Image?, _OpacityEffect>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E697EBF8]);
    v5[1] = MEMORY[0x1E69805B0];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image?, _OpacityEffect>, _FlexFrameLayout>, _FixedSizeLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, _FlexFrameLayout>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Rectangle, Color>, _MaskEffect<Image>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Image? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Image? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Image? and conformance <A> A?)
  {
    v4[1] = v0;
    v4[2] = v1;
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for Image?, MEMORY[0x1E6981748]);
    v4[0] = MEMORY[0x1E6981710];
    result = swift_getWitnessTable(MEMORY[0x1E6982090], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type Image? and conformance <A> A?);
  }

  return result;
}

void type metadata accessor for _ContentShapeModifier<RoundedRectangle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContentShapeModifier<RoundedRectangle>)
  {
    lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle();
    v1 = type metadata accessor for _ContentShapeModifier();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContentShapeModifier<RoundedRectangle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle()
{
  result = lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle;
  if (!lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697EAE0], MEMORY[0x1E697EAF8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle;
  if (!lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle)
  {
    result = swift_getWitnessTable(MEMORY[0x1E697EAD0], MEMORY[0x1E697EAF8], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangle and conformance RoundedRectangle);
  }

  return result;
}

uint64_t AccessibilityLargeContentViewTree.hasValue.getter()
{
  v1 = *(v0 + 208);
  v16[12] = *(v0 + 192);
  v16[13] = v1;
  v16[14] = *(v0 + 224);
  v17 = *(v0 + 240);
  v2 = *(v0 + 144);
  v16[8] = *(v0 + 128);
  v16[9] = v2;
  v3 = *(v0 + 176);
  v16[10] = *(v0 + 160);
  v16[11] = v3;
  v4 = *(v0 + 80);
  v16[4] = *(v0 + 64);
  v16[5] = v4;
  v5 = *(v0 + 112);
  v16[6] = *(v0 + 96);
  v16[7] = v5;
  v6 = *(v0 + 16);
  v16[0] = *v0;
  v16[1] = v6;
  v7 = *(v0 + 48);
  v16[2] = *(v0 + 32);
  v16[3] = v7;
  Enum = getEnumTag for AccessibilityLargeContentViewTree(v16);
  if (!Enum)
  {
    LOBYTE(result) = *(destructiveProjectEnumData for AccessibilityLargeContentViewTree(v16) + 241) == 2;
    return result & 1;
  }

  if (Enum != 1 || (result = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v16), v10 = *result, (v11 = *(*result + 16)) == 0))
  {
    LOBYTE(result) = 0;
    return result & 1;
  }

  v12 = 0;
  v13 = v10 + 32;
  v14 = v11 - 1;
  while (v12 < *(v10 + 16))
  {
    result = AccessibilityLargeContentViewTree.hasValue.getter();
    if ((result & 1) == 0)
    {
      v13 += 248;
      if (v14 != v12++)
      {
        continue;
      }
    }

    return result & 1;
  }

  __break(1u);
  return result;
}

void closure #1 in AccessibilityLargeContentViewTree.hitTest(at:)(__int128 *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  v7 = a1[13];
  v8 = a1[11];
  v241 = a1[12];
  v242 = v7;
  v9 = a1[13];
  v243 = a1[14];
  v10 = a1[9];
  v11 = a1[7];
  v237 = a1[8];
  v238 = v10;
  v12 = a1[9];
  v13 = a1[11];
  v239 = a1[10];
  v240 = v13;
  v14 = a1[5];
  v15 = a1[3];
  v233 = a1[4];
  v234 = v14;
  v16 = a1[5];
  v17 = a1[7];
  v235 = a1[6];
  v236 = v17;
  v18 = a1[1];
  v229 = *a1;
  v230 = v18;
  v19 = a1[3];
  v21 = *a1;
  v20 = a1[1];
  v231 = a1[2];
  v232 = v19;
  v245[12] = v241;
  v245[13] = v9;
  v245[14] = a1[14];
  v245[8] = v237;
  v245[9] = v12;
  v245[10] = v239;
  v245[11] = v8;
  v245[4] = v233;
  v245[5] = v16;
  v245[6] = v235;
  v245[7] = v11;
  v245[0] = v21;
  v245[1] = v20;
  v244 = *(a1 + 120);
  v246 = *(a1 + 120);
  v245[2] = v231;
  v245[3] = v15;
  Enum = getEnumTag for AccessibilityLargeContentViewTree(v245);
  if (!Enum)
  {
    v48 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v245);
    if (*(v48 + 241) == 2)
    {
      v49 = v48;
      v50 = *(v48 + 208);
      v51 = *(v48 + 216);
      v52 = *(v48 + 224);
      v53 = *(v48 + 232);
      v221 = v237;
      v222 = v238;
      v223 = v239;
      v224 = v240;
      v217 = v233;
      v218 = v234;
      v219 = v235;
      v220 = v236;
      v213 = v229;
      v214 = v230;
      v215 = v231;
      v216 = v232;
      v225 = v241;
      v226 = v242;
      v227 = v243;
      v228 = v244;
      v54 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v213);
      outlined init with copy of AccessibilityLargeContentViewItem(v54, &v197);
      v248.origin.x = v50;
      v248.origin.y = v51;
      v248.size.width = v52;
      v248.size.height = v53;
      v247.x = a3;
      v247.y = a4;
      if (CGRectContainsPoint(v248, v247))
      {
        v55 = *v49;
        v56 = *(v49 + 16);
        v57 = *(v49 + 32);
        v200 = *(v49 + 48);
        v199 = v57;
        v198 = v56;
        v197 = v55;
        v58 = *(v49 + 64);
        v59 = *(v49 + 80);
        v60 = *(v49 + 96);
        v204 = *(v49 + 112);
        v203 = v60;
        v202 = v59;
        v201 = v58;
        v61 = *(v49 + 128);
        v62 = *(v49 + 144);
        v63 = *(v49 + 160);
        v208 = *(v49 + 176);
        v207 = v63;
        v206 = v62;
        v205 = v61;
        v64 = *(v49 + 192);
        v65 = *(v49 + 208);
        v66 = *(v49 + 224);
        v212 = *(v49 + 240);
        v211 = v66;
        v210 = v65;
        v209 = v64;
        destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
        goto LABEL_13;
      }

      outlined destroy of AccessibilityLargeContentViewTree(&v229);
    }

LABEL_18:
    _s7SwiftUI33AccessibilityLargeContentViewItemVSgWOi0_(&v213);
    v95 = v226;
    *(a2 + 192) = v225;
    *(a2 + 208) = v95;
    *(a2 + 224) = v227;
    *(a2 + 240) = v228;
    v96 = v222;
    *(a2 + 128) = v221;
    *(a2 + 144) = v96;
    v97 = v224;
    *(a2 + 160) = v223;
    *(a2 + 176) = v97;
    v98 = v218;
    *(a2 + 64) = v217;
    *(a2 + 80) = v98;
    v99 = v220;
    *(a2 + 96) = v219;
    *(a2 + 112) = v99;
    v100 = v214;
    *a2 = v213;
    *(a2 + 16) = v100;
    v73 = v215;
    v74 = v216;
    goto LABEL_19;
  }

  if (Enum != 1)
  {
    goto LABEL_18;
  }

  v23 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v245);
  v24 = *v23;
  v25 = *(*v23 + 16);
  v216 = v232;
  v215 = v231;
  v213 = v229;
  v214 = v230;
  v220 = v236;
  v219 = v235;
  v218 = v234;
  v217 = v233;
  v224 = v240;
  v223 = v239;
  v222 = v238;
  v221 = v237;
  v228 = v244;
  v227 = v243;
  v226 = v242;
  v225 = v241;
  destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v213);

  v26 = 0;
  if (v25)
  {
    v27 = v24 + 32;
    while (1)
    {
      v28 = *v27;
      v29 = *(v27 + 16);
      v30 = *(v27 + 48);
      v135 = *(v27 + 32);
      v136 = v30;
      v133 = v28;
      v134 = v29;
      v31 = *(v27 + 64);
      v32 = *(v27 + 80);
      v33 = *(v27 + 112);
      v139 = *(v27 + 96);
      v140 = v33;
      v137 = v31;
      v138 = v32;
      v34 = *(v27 + 128);
      v35 = *(v27 + 144);
      v36 = *(v27 + 176);
      v143 = *(v27 + 160);
      v144 = v36;
      v141 = v34;
      v142 = v35;
      v37 = *(v27 + 192);
      v38 = *(v27 + 208);
      v39 = *(v27 + 224);
      v148 = *(v27 + 240);
      v146 = v38;
      v147 = v39;
      v145 = v37;
      v40 = *(v27 + 208);
      v113 = *(v27 + 192);
      v114 = v40;
      v115 = *(v27 + 224);
      v116 = *(v27 + 240);
      v41 = *(v27 + 144);
      v109 = *(v27 + 128);
      v110 = v41;
      v42 = *(v27 + 176);
      v111 = *(v27 + 160);
      v112 = v42;
      v43 = *(v27 + 80);
      v105 = *(v27 + 64);
      v106 = v43;
      v44 = *(v27 + 112);
      v107 = *(v27 + 96);
      v108 = v44;
      v45 = *(v27 + 16);
      v101 = *v27;
      v102 = v45;
      v46 = *(v27 + 48);
      v103 = *(v27 + 32);
      v104 = v46;
      outlined init with copy of AccessibilityLargeContentViewTree(&v133, &v117, *&v103);
      closure #1 in AccessibilityLargeContentViewTree.hitTest(at:)(&v101, &v117, a3, a4);
      v161 = v113;
      v162 = v114;
      v163 = v115;
      v164 = v116;
      v157 = v109;
      v158 = v110;
      v159 = v111;
      v160 = v112;
      v153 = v105;
      v154 = v106;
      v155 = v107;
      v156 = v108;
      v149 = v101;
      v150 = v102;
      v151 = v103;
      v152 = v104;
      outlined destroy of AccessibilityLargeContentViewTree(&v149);
      v177 = v129;
      v178 = v130;
      v179 = v131;
      v173 = v125;
      v174 = v126;
      v175 = v127;
      v176 = v128;
      v169 = v121;
      v170 = v122;
      v171 = v123;
      v172 = v124;
      v165 = v117;
      v166 = v118;
      v167 = v119;
      v168 = v120;
      v193 = v129;
      v194 = v130;
      v195 = v131;
      v189 = v125;
      v190 = v126;
      v191 = v127;
      v192 = v128;
      v185 = v121;
      v186 = v122;
      v187 = v123;
      v188 = v124;
      v181 = v117;
      v182 = v118;
      v180 = v132;
      v196 = v132;
      v183 = v119;
      v184 = v120;
      outlined destroy of PlatformItemList.Item?(&v181, &lazy cache variable for type metadata for AccessibilityLargeContentViewItem?, &type metadata for AccessibilityLargeContentViewItem, MEMORY[0x1E69E6720], type metadata accessor for Image.Resolved?);
      v209 = v177;
      v210 = v178;
      v211 = v179;
      v212 = v180;
      v205 = v173;
      v206 = v174;
      v207 = v175;
      v208 = v176;
      v201 = v169;
      v202 = v170;
      v203 = v171;
      v204 = v172;
      v197 = v165;
      v198 = v166;
      v199 = v167;
      v200 = v168;
      if (_s7SwiftUI33AccessibilityLargeContentViewItemVSgWOg(&v197) != 1)
      {
        break;
      }

      ++v26;
      v27 += 248;
      if (v25 == v26)
      {
        v26 = v25;
        break;
      }
    }
  }

  v47 = *(v24 + 16);
  if (v26 == v47)
  {
    outlined destroy of AccessibilityLargeContentViewTree(&v229);
    _s7SwiftUI33AccessibilityLargeContentViewItemVSgWOi0_(&v197);
LABEL_13:
    v67 = v210;
    *(a2 + 192) = v209;
    *(a2 + 208) = v67;
    *(a2 + 224) = v211;
    *(a2 + 240) = v212;
    v68 = v206;
    *(a2 + 128) = v205;
    *(a2 + 144) = v68;
    v69 = v208;
    *(a2 + 160) = v207;
    *(a2 + 176) = v69;
    v70 = v202;
    *(a2 + 64) = v201;
    *(a2 + 80) = v70;
    v71 = v204;
    *(a2 + 96) = v203;
    *(a2 + 112) = v71;
    v72 = v198;
    *a2 = v197;
    *(a2 + 16) = v72;
    v73 = v199;
    v74 = v200;
LABEL_19:
    *(a2 + 32) = v73;
    *(a2 + 48) = v74;
    return;
  }

  if (v26 >= v47)
  {
    __break(1u);
  }

  else
  {
    v75 = v24 + 248 * v26;
    v76 = *(v75 + 32);
    v77 = *(v75 + 48);
    v78 = *(v75 + 80);
    v135 = *(v75 + 64);
    v136 = v78;
    v133 = v76;
    v134 = v77;
    v79 = *(v75 + 96);
    v80 = *(v75 + 112);
    v81 = *(v75 + 144);
    v139 = *(v75 + 128);
    v140 = v81;
    v137 = v79;
    v138 = v80;
    v82 = *(v75 + 160);
    v83 = *(v75 + 176);
    v84 = *(v75 + 208);
    v143 = *(v75 + 192);
    v144 = v84;
    v141 = v82;
    v142 = v83;
    v85 = *(v75 + 224);
    v86 = *(v75 + 240);
    v87 = *(v75 + 256);
    v148 = *(v75 + 272);
    v146 = v86;
    v147 = v87;
    v145 = v85;
    v193 = *(v75 + 224);
    v194 = *(v75 + 240);
    v195 = *(v75 + 256);
    v196 = *(v75 + 272);
    v189 = *(v75 + 160);
    v190 = *(v75 + 176);
    v191 = *(v75 + 192);
    v192 = *(v75 + 208);
    v185 = *(v75 + 96);
    v186 = *(v75 + 112);
    v187 = *(v75 + 128);
    v188 = *(v75 + 144);
    v181 = *(v75 + 32);
    v182 = *(v75 + 48);
    v183 = *(v75 + 64);
    v184 = *(v75 + 80);
    outlined init with copy of AccessibilityLargeContentViewTree(&v133, &v197, *&v184);
    closure #1 in AccessibilityLargeContentViewTree.hitTest(at:)(&v181, &v197, a3, a4);
    v161 = v193;
    v162 = v194;
    v163 = v195;
    v164 = v196;
    v157 = v189;
    v158 = v190;
    v159 = v191;
    v160 = v192;
    v153 = v185;
    v154 = v186;
    v155 = v187;
    v156 = v188;
    v149 = v181;
    v150 = v182;
    v151 = v183;
    v152 = v184;
    outlined destroy of AccessibilityLargeContentViewTree(&v149);
    v177 = v209;
    v178 = v210;
    v179 = v211;
    v173 = v205;
    v174 = v206;
    v175 = v207;
    v176 = v208;
    v169 = v201;
    v170 = v202;
    v171 = v203;
    v172 = v204;
    v165 = v197;
    v166 = v198;
    v167 = v199;
    v168 = v200;
    v193 = v209;
    v194 = v210;
    v195 = v211;
    v189 = v205;
    v190 = v206;
    v191 = v207;
    v192 = v208;
    v185 = v201;
    v186 = v202;
    v187 = v203;
    v188 = v204;
    v181 = v197;
    v182 = v198;
    v180 = v212;
    v196 = v212;
    v183 = v199;
    v184 = v200;
    outlined init with copy of Image.Resolved?(&v165, &v117, &lazy cache variable for type metadata for AccessibilityLargeContentViewItem?, &type metadata for AccessibilityLargeContentViewItem);
    outlined destroy of PlatformItemList.Item?(&v181, &lazy cache variable for type metadata for AccessibilityLargeContentViewItem?, &type metadata for AccessibilityLargeContentViewItem, MEMORY[0x1E69E6720], type metadata accessor for Image.Resolved?);
    v209 = v177;
    v210 = v178;
    v211 = v179;
    v212 = v180;
    v205 = v173;
    v206 = v174;
    v207 = v175;
    v208 = v176;
    v201 = v169;
    v202 = v170;
    v203 = v171;
    v204 = v172;
    v197 = v165;
    v198 = v166;
    v199 = v167;
    v200 = v168;
    if (_s7SwiftUI33AccessibilityLargeContentViewItemVSgWOg(&v197) != 1)
    {
      v88 = v178;
      *(a2 + 192) = v177;
      *(a2 + 208) = v88;
      *(a2 + 224) = v179;
      *(a2 + 240) = v180;
      v89 = v174;
      *(a2 + 128) = v173;
      *(a2 + 144) = v89;
      v90 = v176;
      *(a2 + 160) = v175;
      *(a2 + 176) = v90;
      v91 = v170;
      *(a2 + 64) = v169;
      *(a2 + 80) = v91;
      v92 = v172;
      *(a2 + 96) = v171;
      *(a2 + 112) = v92;
      v93 = v166;
      *a2 = v165;
      *(a2 + 16) = v93;
      v94 = v168;
      *(a2 + 32) = v167;
      *(a2 + 48) = v94;
      destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation();
      outlined destroy of AccessibilityLargeContentViewTree(&v229);
      return;
    }
  }

  __break(1u);
}