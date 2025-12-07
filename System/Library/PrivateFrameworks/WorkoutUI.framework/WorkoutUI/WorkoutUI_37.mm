uint64_t partial apply for closure #1 in closure #2 in AlertButtonViewModel.configureNotifications()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double __swift_destroy_boxed_opaque_existential_1Tm_5(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t objectdestroy_86Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in AlertButtonViewModel.configureNotifications()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in AlertButtonViewModel.configureNotifications();

  return closure #1 in closure #1 in AlertButtonViewModel.configureNotifications()(a1, v4, v5, v7, v6);
}

void partial apply for closure #1 in AlertButtonViewModel.dataSourceSink.setter()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t outlined init with take of (key: DayIndex, value: TrainingLoadSampleDaySummary)?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AlertButtonViewModel and conformance AlertButtonViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for DistanceUnitPicker(uint64_t a1)
{
  result = type metadata singleton initialization cache for DistanceUnitPicker;
  if (!type metadata singleton initialization cache for DistanceUnitPicker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DistanceUnitPicker(uint64_t a1)
{
  type metadata accessor for Bindable<DistancePickerViewModel>(319, &lazy cache variable for type metadata for Bindable<DistancePickerViewModel>, type metadata accessor for DistancePickerViewModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bindable<DistancePickerViewModel>(319, &lazy cache variable for type metadata for Environment<DismissAction>, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      _sSo21FIUIFormattingManagerCMaTm_13(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Bindable<DistancePickerViewModel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t DistanceUnitPicker.dismiss.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DistanceUnitPicker(0);
  outlined init with copy of Environment<DismissAction>.Content(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t closure #1 in DistanceUnitPicker.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v21 = a1;
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAiA6ButtonVyAA6HStackVyAA9TupleViewVyAE_APyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyL0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAiA6ButtonVyAA6HStackVyAA9TupleViewVyAE_APyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyL0VGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v23 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v22 = &v21 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  LocalizedStringKey.init(stringLiteral:)();
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySo12NSUnitLengthCGAeA6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_ALyAA6SpacerV_AA5ImageVtGSgtGGGGMd, &_s7SwiftUI7ForEachVySaySo12NSUnitLengthCGAeA6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_ALyAA6SpacerV_AA5ImageVtGSgtGGGGMR);
  lazy protocol witness table accessor for type ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>> and conformance <> ForEach<A, B, C>();
  Section<>.init(_:content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v25 = v21;
  Section<>.init(_:content:)();
  v14 = *(v4 + 16);
  v15 = v22;
  v14(v22, v13, v3);
  v16 = v23;
  v14(v23, v10, v3);
  v17 = v24;
  v14(v24, v15, v3);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAiA6ButtonVyAA6HStackVyAA9TupleViewVyAE_APyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyL0VG_A1_tMd, &_s7SwiftUI7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAiA6ButtonVyAA6HStackVyAA9TupleViewVyAE_APyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyL0VG_A1_tMR);
  v14(&v17[*(v18 + 48)], v16, v3);
  v19 = *(v4 + 8);
  v19(v10, v3);
  v19(v13, v3);
  v19(v16, v3);
  return (v19)(v15, v3);
}

uint64_t closure #1 in closure #1 in DistanceUnitPicker.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DistanceUnitPicker(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMR);
  Bindable.wrappedValue.getter();
  v5 = *(v10 + 80);

  v10 = v5;
  swift_getKeyPath();
  outlined init with copy of DistanceUnitPicker(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  outlined init with take of DistanceUnitPicker(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSUnitLengthCGMd, &_sSaySo12NSUnitLengthCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [NSUnitLength] and conformance [A], &_sSaySo12NSUnitLengthCGMd, &_sSaySo12NSUnitLengthCGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type NSUnitLength and conformance NSObject();
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMR, MEMORY[0x277CDF028]);
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #2 in closure #1 in DistanceUnitPicker.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DistanceUnitPicker(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMR);
  Bindable.wrappedValue.getter();
  v5 = *(v10 + 88);

  v10 = v5;
  swift_getKeyPath();
  outlined init with copy of DistanceUnitPicker(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  outlined init with take of DistanceUnitPicker(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12NSUnitLengthCGMd, &_sSaySo12NSUnitLengthCGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [NSUnitLength] and conformance [A], &_sSaySo12NSUnitLengthCGMd, &_sSaySo12NSUnitLengthCGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type NSUnitLength and conformance NSObject();
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMd, &_s7SwiftUI6ButtonVyAA6HStackVyAA9TupleViewVyAA4TextV_AGyAA6SpacerV_AA5ImageVtGSgtGGGMR, MEMORY[0x277CDF028]);
  return ForEach<>.init(_:id:content:)();
}

double closure #1 in closure #1 in closure #1 in DistanceUnitPicker.body.getter(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for DistanceUnitPicker(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = *a1;
  outlined init with copy of DistanceUnitPicker(a2, &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  outlined init with take of DistanceUnitPicker(&v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  *(v12 + ((v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  v16 = v10;
  v17 = a2;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AEyAA6SpacerV_AA5ImageVtGSgtGGMR, MEMORY[0x277CE1138]);
  Button.init(action:label:)();
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in DistanceUnitPicker.body.getter(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for DismissAction();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMR);
  Bindable.wrappedValue.getter();
  DistancePickerViewModel.selectedUnit.setter(a2);

  DistanceUnitPicker.dismiss.getter(v6);
  DismissAction.callAsFunction()();
  return (*(v4 + 8))(v6, v3);
}

__n128 closure #2 in closure #1 in closure #1 in closure #1 in DistanceUnitPicker.body.getter@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = static VerticalAlignment.center.getter();
  v17 = 1;
  closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in DistanceUnitPicker.body.getter(a2, &v12);
  v6 = v13;
  v7 = v14;
  v8 = v16;
  result = v15;
  v10 = v12;
  v11 = v17;
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(a3 + 40) = v6;
  *(a3 + 48) = v7;
  *(a3 + 56) = result;
  *(a3 + 72) = v8;
  return result;
}

double closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in DistanceUnitPicker.body.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for DistanceUnitPicker(0);
  v19 = NSUnitLength.localizedName(formattingManager:)(*(a2 + *(v5 + 24)));
  lazy protocol witness table accessor for type String and conformance String();
  v6 = Text.init<A>(_:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  _sSo21FIUIFormattingManagerCMaTm_13(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMR);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_3(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel, &protocol conformance descriptor for DistancePickerViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v13 = *(v19 + 72);

  v14 = static NSObject.== infix(_:_:)();

  v15 = 0;
  v16 = 0;
  if (v14)
  {
    v16 = Image.init(systemName:)();

    v15 = 1;
  }

  v17 = v10 & 1;
  outlined copy of Text.Storage(v6, v8, v17);
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v17;
  *(a3 + 24) = v12;
  *(a3 + 32) = 0;
  *(a3 + 40) = v15;
  *(a3 + 48) = v16;

  outlined consume of Text.Storage(v6, v8, v17);

  return result;
}

uint64_t closure #2 in DistanceUnitPicker.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  static ToolbarItemPlacement.cancellationAction.getter();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>> and conformance <> ModifiedContent<A, B>();
  ToolbarItem<>.init(placement:content:)();
  v7 = lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMR, MEMORY[0x277CDD7A8]);
  MEMORY[0x20F3098F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t closure #1 in closure #2 in DistanceUnitPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a2;
  v3 = type metadata accessor for BorderedButtonStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DistanceUnitPicker(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - v12;
  outlined init with copy of DistanceUnitPicker(a1, v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  outlined init with take of DistanceUnitPicker(v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  Button.init(action:label:)();
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<Image> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA5ImageVGMd, &_s7SwiftUI6ButtonVyAA5ImageVGMR, MEMORY[0x277CDF028]);
  _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_3(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v16 = v22[0];
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 8))(v13, v10);
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGMR) + 36)) = 256;
  v17 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v22[1] = v17;
  v19 = AnyShapeStyle.init<A>(_:)();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyAA5ImageVG_AA08BorderediG0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeG0VSgGGMR);
  v21 = (v16 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v19;
  return result;
}

uint64_t closure #1 in closure #1 in closure #2 in DistanceUnitPicker.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for DismissAction();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DistanceUnitPicker(0);
  outlined init with copy of Environment<DismissAction>.Content(a1 + *(v13 + 20), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  DismissAction.callAsFunction()();
  return (*(v10 + 8))(v12, v9);
}

uint64_t closure #2 in closure #1 in closure #2 in DistanceUnitPicker.body.getter@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance DistanceUnitPicker()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAoA6ButtonVyAA6HStackVyAGyAK_AGyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyF0VG_A5_tGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAoA6ButtonVyAA6HStackVyAGyAK_AGyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyF0VG_A5_tGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-v3];
  v10 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAkA6ButtonVyAA6HStackVyACyAG_ACyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyD0VG_A1_tGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAkA6ButtonVyAA6HStackVyACyAG_ACyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyD0VG_A1_tGMR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAkA6ButtonVyAA6HStackVyACyAG_ACyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyD0VG_A1_tGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAkA6ButtonVyAA6HStackVyACyAG_ACyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyD0VG_A1_tGMR, MEMORY[0x277CE14C0]);
  List<>.init(content:)();
  v9 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_Md, &_s7SwiftUI21ToolbarContentBuilderV10buildBlockyQrxAA0cD0RzlFZQOy_AA0C4ItemVyytAA08ModifiedD0VyAIyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonL0Rd__lFQOyAA0N0VyAA5ImageVG_AA08BorderednL0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeL0VSgGGGQo_MR);
  lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAoA6ButtonVyAA6HStackVyAGyAK_AGyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyF0VG_A5_tGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA4TextVAA7ForEachVySaySo12NSUnitLengthCGAoA6ButtonVyAA6HStackVyAGyAK_AGyAA6SpacerV_AA5ImageVtGSgtGGGGAA05EmptyF0VG_A5_tGGMR, MEMORY[0x277CDE5A0]);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMR);
  v6 = lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ToolbarItem<(), ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ClipEffect<Circle>>, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>> and conformance ToolbarItem<A, B>, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMd, &_s7SwiftUI11ToolbarItemVyytAA15ModifiedContentVyAEyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA0K0VyAA5ImageVG_AA08BorderedkI0VQo_AA11_ClipEffectVyAA6CircleVGGAA30_EnvironmentKeyWritingModifierVyAA08AnyShapeI0VSgGGGMR, MEMORY[0x277CDD7A8]);
  v11 = v5;
  v12 = v6;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t outlined init with copy of DistanceUnitPicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistanceUnitPicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DistanceUnitPicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DistanceUnitPicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in DistanceUnitPicker.body.getter()
{
  v1 = *(type metadata accessor for DistanceUnitPicker(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #1 in closure #1 in closure #2 in DistanceUnitPicker.body.getter(v2);
}

uint64_t lazy protocol witness table accessor for type TupleView<(Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>, Section<Text, ForEach<[NSUnitLength], NSUnitLength, Button<HStack<TupleView<(Text, TupleView<(Spacer, Image)>?)>>>>, EmptyView>)> and conformance TupleView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo21FIUIFormattingManagerCMaTm_13(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_83()
{
  v1 = type metadata accessor for DistanceUnitPicker(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMR);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for DismissAction();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_10Tm_2()
{
  v1 = type metadata accessor for DistanceUnitPicker(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMR);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in closure #1 in DistanceUnitPicker.body.getter()
{
  v1 = *(type metadata accessor for DistanceUnitPicker(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return closure #1 in closure #1 in closure #1 in closure #1 in DistanceUnitPicker.body.getter(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t getEnumTagSinglePayload for MirrorPacerMetricPlatterView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for MirrorPacerMetricPlatterView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in MirrorPacerMetricPlatterView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGA15_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGA15_GMR);
  MEMORY[0x28223BE20](v50);
  v5 = &v45 - v4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAKyAGyAGyAGyAA4TextV07WorkoutB00N16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAXySiSgGG_AA6SpacerVtGGG_AGyAGyAS011ElapsedTimeI0VAXyAA5ColorVSgGGAXyAS0nI5StyleOGGtGGAA14_PaddingLayoutVGA19_GAIyAKyA6__AGyAGyAPyAKyACyACyACyACyACyACyAS012EnergyMetricI0VA28_GACyAS015HeartRateMetricI0VAS024HeartRateAggregateMetricI0VGGACyACyA33_AS010ZoneMetricI0VGACyAS0z12InZoneMetricI0VA37_GGGACyACyACyA40_AS010PaceMetricI0VGACyA45_A45_GGACyA47_ACyAS014DistanceMetricI0VAS010LapsMetricI0VGGGGACyACyACyACyACyACyAS013CadenceMetricI0VAA05EmptyI0VGA58_GA58_GACyAS021ElevationChangeMetricI0VAS022CurrentElevationMetricI0VGGACyACyAS011PowerMetricI0VA71_GACyA71_AS020FlightsClimbedMetricI0VGGGACyACyACyAS021SegmentDurationMetricI0VAS020DistanceDetailMetricI0VGACyA45_A28_GGACyACyA28_A71_GACyA71_AGyAGyAS0nzI0VAS12MetricDetailVGAA016_ForegroundStyleT0VyA13_GGGGGGGACyACyACyACyA81_A45_GACyAS018StrideLengthMetricI0VA102_GGACyACyAS025VerticalOscillationMetricI0VA106_GACyAS013GroundContactz6MetricI0VA109_GGGACyACyA65_AS022DownhillRunCountMetricI0VGACyA60_APyAKyAGyArS011MetricValueP0VG_AGyAGyArS017MetricDescriptionuP0VGAS26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A131_tGGAS9MetricRowVGA19_GA6_A137_tGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAKyAGyAGyAGyAA4TextV07WorkoutB00N16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAXySiSgGG_AA6SpacerVtGGG_AGyAGyAS011ElapsedTimeI0VAXyAA5ColorVSgGGAXyAS0nI5StyleOGGtGGAA14_PaddingLayoutVGA19_GAIyAKyA6__AGyAGyAPyAKyACyACyACyACyACyACyAS012EnergyMetricI0VA28_GACyAS015HeartRateMetricI0VAS024HeartRateAggregateMetricI0VGGACyACyA33_AS010ZoneMetricI0VGACyAS0z12InZoneMetricI0VA37_GGGACyACyACyA40_AS010PaceMetricI0VGACyA45_A45_GGACyA47_ACyAS014DistanceMetricI0VAS010LapsMetricI0VGGGGACyACyACyACyACyACyAS013CadenceMetricI0VAA05EmptyI0VGA58_GA58_GACyAS021ElevationChangeMetricI0VAS022CurrentElevationMetricI0VGGACyACyAS011PowerMetricI0VA71_GACyA71_AS020FlightsClimbedMetricI0VGGGACyACyACyAS021SegmentDurationMetricI0VAS020DistanceDetailMetricI0VGACyA45_A28_GGACyACyA28_A71_GACyA71_AGyAGyAS0nzI0VAS12MetricDetailVGAA016_ForegroundStyleT0VyA13_GGGGGGGACyACyACyACyA81_A45_GACyAS018StrideLengthMetricI0VA102_GGACyACyAS025VerticalOscillationMetricI0VA106_GACyAS013GroundContactz6MetricI0VA109_GGGACyACyA65_AS022DownhillRunCountMetricI0VGACyA60_APyAKyAGyArS011MetricValueP0VG_AGyAGyArS017MetricDescriptionuP0VGAS26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A131_tGGAS9MetricRowVGA19_GA6_A137_tGG_GMR);
  MEMORY[0x28223BE20](v47);
  v46 = &v45 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMR);
  MEMORY[0x28223BE20](v49);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMR);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v45 - v12;
  v52 = static HorizontalAlignment.center.getter();
  v59 = 0;
  closure #1 in MirrorPacerMetricPlatterView.progressTrackerView()(&v56);
  v68 = *&v57[14];
  v69 = *&v57[16];
  v70[0] = *&v57[18];
  *(v70 + 9) = *(&v57[19] + 1);
  v64 = *&v57[6];
  v65 = *&v57[8];
  v66 = *&v57[10];
  v67 = *&v57[12];
  v60 = v56;
  v61 = *v57;
  v62 = *&v57[2];
  v63 = *&v57[4];
  v71[8] = *&v57[14];
  v71[9] = *&v57[16];
  v72[0] = *&v57[18];
  *(v72 + 9) = *(&v57[19] + 1);
  v71[4] = *&v57[6];
  v71[5] = *&v57[8];
  v71[6] = *&v57[10];
  v71[7] = *&v57[12];
  v71[0] = v56;
  v71[1] = *v57;
  v71[2] = *&v57[2];
  v71[3] = *&v57[4];
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(&v60, &v54, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA012_ConditionalF0VyAEy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAA0J0VGAA011_ForegroundoN0VyAA5ColorVGGAA06_TraitmN0VyAA014LayoutPriorityrL0VGG_AA6SpacerVAEyAEyAH8PacerRowVAH0iW0VGAOGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA012_ConditionalF0VyAEy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAA0J0VGAA011_ForegroundoN0VyAA5ColorVGGAA06_TraitmN0VyAA014LayoutPriorityrL0VGG_AA6SpacerVAEyAEyAH8PacerRowVAH0iW0VGAOGtGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v71, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA012_ConditionalF0VyAEy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAA0J0VGAA011_ForegroundoN0VyAA5ColorVGGAA06_TraitmN0VyAA014LayoutPriorityrL0VGG_AA6SpacerVAEyAEyAH8PacerRowVAH0iW0VGAOGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA012_ConditionalF0VyAEy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAH0hD5StyleOGGAA0J0VGAA011_ForegroundoN0VyAA5ColorVGGAA06_TraitmN0VyAA014LayoutPriorityrL0VGG_AA6SpacerVAEyAEyAH8PacerRowVAH0iW0VGAOGtGMR);
  *(&v58[8] + 7) = v68;
  *(&v58[9] + 7) = v69;
  *(&v58[10] + 7) = v70[0];
  v58[11] = *(v70 + 9);
  *(&v58[4] + 7) = v64;
  *(&v58[5] + 7) = v65;
  *(&v58[6] + 7) = v66;
  *(&v58[7] + 7) = v67;
  *(v58 + 7) = v60;
  *(&v58[1] + 7) = v61;
  *(&v58[2] + 7) = v62;
  *(&v58[3] + 7) = v63;
  v48 = v59;
  v13 = MetricsPublisher.distanceGoalFinishTime.getter();
  if (v14)
  {
    *v8 = static HorizontalAlignment.center.getter();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA6HStackVyAIyAA012_ConditionalK0VyAQyAQyAQyAQyAQy07WorkoutB0012EnergyMetricD0VATGAQyAR09HeartRatepD0VAR0qr9AggregatepD0VGGAQyAQyAyR04ZonepD0VGAQyAR06TimeIntpD0VA1_GGGAQyAQyAQyA4_AR04PacepD0VGAQyA9_A9_GGAQyA11_AQyAR08DistancepD0VAR04LapspD0VGGGGAQyAQyAQyAQyAQyAQyAR07CadencepD0VAA05EmptyD0VGA22_GA22_GAQyAR015ElevationChangepD0VAR016CurrentElevationpD0VGGAQyAQyAR05PowerpD0VA35_GAQyA35_AR014FlightsClimbedpD0VGGGAQyAQyAQyAR015SegmentDurationpD0VAR0x6DetailpD0VGAQyA9_ATGGAQyAQyATA35_GAQyA35_AMyAMyAR0nuD0VAR0P6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAQyAQyAQyAQyA45_A9_GAQyAR012StrideLengthpD0VA68_GGAQyAQyAR019VerticalOscillationpD0VA72_GAQyAR013GroundContactupD0VA75_GGGAQyAQyA29_AR016DownhillRunCountpD0VGAQyA24_AOyAIyAMyAA4TextVAR0P9ValueFontVG_AMyAMyA83_AR0P19DescriptionCoreFontVGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A99_tGGAR0P3RowVGAA30_EnvironmentKeyWritingModifierVyAR0nD5StyleOGGAKA110_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA6HStackVyAIyAA012_ConditionalK0VyAQyAQyAQyAQyAQy07WorkoutB0012EnergyMetricD0VATGAQyAR09HeartRatepD0VAR0qr9AggregatepD0VGGAQyAQyAyR04ZonepD0VGAQyAR06TimeIntpD0VA1_GGGAQyAQyAQyA4_AR04PacepD0VGAQyA9_A9_GGAQyA11_AQyAR08DistancepD0VAR04LapspD0VGGGGAQyAQyAQyAQyAQyAQyAR07CadencepD0VAA05EmptyD0VGA22_GA22_GAQyAR015ElevationChangepD0VAR016CurrentElevationpD0VGGAQyAQyAR05PowerpD0VA35_GAQyA35_AR014FlightsClimbedpD0VGGGAQyAQyAQyAR015SegmentDurationpD0VAR0x6DetailpD0VGAQyA9_ATGGAQyAQyATA35_GAQyA35_AMyAMyAR0nuD0VAR0P6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAQyAQyAQyAQyA45_A9_GAQyAR012StrideLengthpD0VA68_GGAQyAQyAR019VerticalOscillationpD0VA72_GAQyAR013GroundContactupD0VA75_GGGAQyAQyA29_AR016DownhillRunCountpD0VGAQyA24_AOyAIyAMyAA4TextVAR0P9ValueFontVG_AMyAMyA83_AR0P19DescriptionCoreFontVGAR26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A99_tGGAR0P3RowVGAA30_EnvironmentKeyWritingModifierVyAR0nD5StyleOGGAKA110_tGGMR);
    closure #1 in MirrorPacerMetricPlatterView.progressView()(a1, &v8[*(v15 + 44)]);
    v16 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMd;
    v17 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMR;
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v8, v46, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>( &lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetri,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMd,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMR,  MEMORY[0x277CE1198]);
    _ConditionalContent<>.init(storage:)();
    v18 = v8;
  }

  else
  {
    v19 = *&v13;
    *v5 = static HorizontalAlignment.leading.getter();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA7ForEachVySaySSGSSAA6HStackVyAIyAA15ModifiedContentVyAPyAPyAA4TextV07WorkoutB00O16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAXySiSgGG_AA6SpacerVtGGG_APyAPyAS011ElapsedTimeD0VAXyAA5ColorVSgGGAXyAS0oD5StyleOGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA7ForEachVySaySSGSSAA6HStackVyAIyAA15ModifiedContentVyAPyAPyAA4TextV07WorkoutB00O16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAXySiSgGG_AA6SpacerVtGGG_APyAPyAS011ElapsedTimeD0VAXyAA5ColorVSgGGAXyAS0oD5StyleOGGtGGMR);
    closure #1 in MirrorPacerMetricPlatterView.goalCompleteView(_:)(&v5[*(v20 + 44)], v19);
    v21 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGMR) + 36)];
    *v30 = v21;
    *(v30 + 1) = v23;
    *(v30 + 2) = v25;
    *(v30 + 3) = v27;
    *(v30 + 4) = v29;
    v30[40] = 0;
    KeyPath = swift_getKeyPath();
    v32 = &v5[*(v50 + 36)];
    *v32 = KeyPath;
    v32[8] = 7;
    v16 = &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGA15_GMd;
    v17 = &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGA15_GMR;
    outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v5, v46, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGA15_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGA15_GMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>( &lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<TupleView<(_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetri,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMd,  &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAEyAA012_ConditionalH0VyAMyAMyAMyAMyAMy07WorkoutB0012EnergyMetricE0VAPGAMyAN09HeartRatemE0VAN0no9AggregatemE0VGGAMyAMyAuN04ZonemE0VGAMyAN06TimeInqmE0VAYGGGAMyAMyAMyA0_AN04PacemE0VGAMyA5_A5_GGAMyA7_AMyAN08DistancemE0VAN04LapsmE0VGGGGAMyAMyAMyAMyAMyAMyAN07CadencemE0VAA05EmptyE0VGA18_GA18_GAMyAN015ElevationChangemE0VAN07CurrentymE0VGGAMyAMyAN05PowermE0VA31_GAMyA31_AN014FlightsClimbedmE0VGGGAMyAMyAMyAN015SegmentDurationmE0VAN0u6DetailmE0VGAMyA5_APGGAMyAMyAPA31_GAMyA31_AIyAIyAN0krE0VAN0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAMyAMyAMyAMyA41_A5_GAMyAN012StrideLengthmE0VA64_GGAMyAMyAN019VerticalOscillationmE0VA68_GAMyAN013GroundContactrmE0VA71_GGGAMyAMyA25_AN016DownhillRunCountmE0VGAMyA20_AKyAEyAIyAA4TextVAN0M9ValueFontVG_AIyAIyA79_AN0M19DescriptionCoreFontVGAN26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A95_tGGAN0M3RowVGAA30_EnvironmentKeyWritingModifierVyAN0kE5StyleOGGAGA106_tGGMR,  MEMORY[0x277CE1198]);
    _ConditionalContent<>.init(storage:)();
    v18 = v5;
  }

  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v18, v16, v17);
  v33 = v53;
  v34 = v51;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v53, v51, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMR);
  v35 = v52;
  v54 = v52;
  v36 = v48;
  v55[0] = v48;
  *&v55[129] = v58[8];
  *&v55[145] = v58[9];
  *&v55[161] = v58[10];
  *&v55[177] = v58[11];
  *&v55[65] = v58[4];
  *&v55[81] = v58[5];
  *&v55[97] = v58[6];
  *&v55[113] = v58[7];
  *&v55[1] = v58[0];
  *&v55[17] = v58[1];
  *&v55[33] = v58[2];
  *&v55[49] = v58[3];
  v37 = *&v55[160];
  *(a2 + 160) = *&v55[144];
  *(a2 + 176) = v37;
  *(a2 + 192) = *&v55[176];
  *(a2 + 208) = v55[192];
  v38 = *&v55[96];
  *(a2 + 96) = *&v55[80];
  *(a2 + 112) = v38;
  v39 = *&v55[128];
  *(a2 + 128) = *&v55[112];
  *(a2 + 144) = v39;
  v40 = *&v55[32];
  *(a2 + 32) = *&v55[16];
  *(a2 + 48) = v40;
  v41 = *&v55[64];
  *(a2 + 64) = *&v55[48];
  *(a2 + 80) = v41;
  v42 = *v55;
  *a2 = v54;
  *(a2 + 16) = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA012_ConditionalG0VyAGy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAJ0iE5StyleOGGAA0K0VGAA011_ForegroundpO0VyAA5ColorVGGAA06_TraitnO0VyAA014LayoutPrioritysM0VGG_AA6SpacerVAGyAGyAJ8PacerRowVAJ0jX0VGAQGtGG_AIyAGyAGyACyAEyAA7ForEachVySaySSGSSAA6HStackVyAEyAGyAGyAGyAtJ0I16NotificationFontVGANy12CoreGraphics7CGFloatVGGANySiSgGG_A7_tGGG_AGyAGyAJ011ElapsedTimeE0VANyAYSgGGAQGtGGAA08_PaddingT0VGAQGACyAEyA7__AGyAGyA20_yAEyAIyAIyAIyAIyAIyAIyAJ06EnergyjE0VA48_GAIyAJ09HeartRatejE0VAJ018HeartRateAggregatejE0VGGAIyAIyA53_AJ04ZonejE0VGAIyAJ010TimeInZonejE0VA57_GGGAIyAIyAIyA60_AJ04PacejE0VGAIyA65_A65_GGAIyA67_AIyAJ08DistancejE0VAJ04LapsjE0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencejE0VAA05EmptyE0VGA78_GA78_GAIyAJ015ElevationChangejE0VAJ016CurrentElevationjE0VGGAIyAIyAJ05PowerjE0VA91_GAIyA91_AJ014FlightsClimbedjE0VGGGAIyAIyAIyAJ015SegmentDurationjE0VAJ014DistanceDetailjE0VGAIyA65_A48_GGAIyAIyA48_A91_GAIyA91_AGyAGyAJ0i4TimeE0VAJ0J6DetailVGAZGGGGGGAIyAIyAIyAIyA101_A65_GAIyAJ012StrideLengthjE0VA119_GGAIyAIyAJ019VerticalOscillationjE0VA123_GAIyAJ017GroundContactTimejE0VA126_GGGAIyAIyA85_AJ016DownhillRunCountjE0VGAIyA80_A20_yAEyAGyAtJ0J9ValueFontVG_AGyAGyAtJ0J19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A148_tGGA11_GAQGA7_A152_tGGGtMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA012_ConditionalG0VyAGy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAJ0iE5StyleOGGAA0K0VGAA011_ForegroundpO0VyAA5ColorVGGAA06_TraitnO0VyAA014LayoutPrioritysM0VGG_AA6SpacerVAGyAGyAJ8PacerRowVAJ0jX0VGAQGtGG_AIyAGyAGyACyAEyAA7ForEachVySaySSGSSAA6HStackVyAEyAGyAGyAGyAtJ0I16NotificationFontVGANy12CoreGraphics7CGFloatVGGANySiSgGG_A7_tGGG_AGyAGyAJ011ElapsedTimeE0VANyAYSgGGAQGtGGAA08_PaddingT0VGAQGACyAEyA7__AGyAGyA20_yAEyAIyAIyAIyAIyAIyAIyAJ06EnergyjE0VA48_GAIyAJ09HeartRatejE0VAJ018HeartRateAggregatejE0VGGAIyAIyA53_AJ04ZonejE0VGAIyAJ010TimeInZonejE0VA57_GGGAIyAIyAIyA60_AJ04PacejE0VGAIyA65_A65_GGAIyA67_AIyAJ08DistancejE0VAJ04LapsjE0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencejE0VAA05EmptyE0VGA78_GA78_GAIyAJ015ElevationChangejE0VAJ016CurrentElevationjE0VGGAIyAIyAJ05PowerjE0VA91_GAIyA91_AJ014FlightsClimbedjE0VGGGAIyAIyAIyAJ015SegmentDurationjE0VAJ014DistanceDetailjE0VGAIyA65_A48_GGAIyAIyA48_A91_GAIyA91_AGyAGyAJ0i4TimeE0VAJ0J6DetailVGAZGGGGGGAIyAIyAIyAIyA101_A65_GAIyAJ012StrideLengthjE0VA119_GGAIyAIyAJ019VerticalOscillationjE0VA123_GAIyAJ017GroundContactTimejE0VA126_GGGAIyAIyA85_AJ016DownhillRunCountjE0VGAIyA80_A20_yAEyAGyAtJ0J9ValueFontVG_AGyAGyAtJ0J19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A148_tGGA11_GAQGA7_A152_tGGGtMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v34, a2 + *(v43 + 48), &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(&v54, &v56, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA012_ConditionalG0VyAGy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAJ0iE5StyleOGGAA0K0VGAA011_ForegroundpO0VyAA5ColorVGGAA06_TraitnO0VyAA014LayoutPrioritysM0VGG_AA6SpacerVAGyAGyAJ8PacerRowVAJ0jX0VGAQGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA012_ConditionalG0VyAGy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAJ0iE5StyleOGGAA0K0VGAA011_ForegroundpO0VyAA5ColorVGGAA06_TraitnO0VyAA014LayoutPrioritysM0VGG_AA6SpacerVAGyAGyAJ8PacerRowVAJ0jX0VGAQGtGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v33, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v34, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAIyAEyAEyAEyAA4TextV07WorkoutB00M16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAVySiSgGG_AA6SpacerVtGGG_AEyAEyAQ011ElapsedTimeH0VAVyAA5ColorVSgGGAVyAQ0mH5StyleOGGtGGAA14_PaddingLayoutVGA17_GAGyAIyA4__AEyAEyANyAIyACyACyACyACyACyACyAQ012EnergyMetricH0VA26_GACyAQ015HeartRateMetricH0VAQ024HeartRateAggregateMetricH0VGGACyACyA31_AQ010ZoneMetricH0VGACyAQ0y12InZoneMetricH0VA35_GGGACyACyACyA38_AQ010PaceMetricH0VGACyA43_A43_GGACyA45_ACyAQ014DistanceMetricH0VAQ010LapsMetricH0VGGGGACyACyACyACyACyACyAQ013CadenceMetricH0VAA05EmptyH0VGA56_GA56_GACyAQ021ElevationChangeMetricH0VAQ022CurrentElevationMetricH0VGGACyACyAQ011PowerMetricH0VA69_GACyA69_AQ020FlightsClimbedMetricH0VGGGACyACyACyAQ021SegmentDurationMetricH0VAQ020DistanceDetailMetricH0VGACyA43_A26_GGACyACyA26_A69_GACyA69_AEyAEyAQ0myH0VAQ12MetricDetailVGAA016_ForegroundStyleS0VyA11_GGGGGGGACyACyACyACyA79_A43_GACyAQ018StrideLengthMetricH0VA100_GGACyACyAQ025VerticalOscillationMetricH0VA104_GACyAQ013GroundContacty6MetricH0VA107_GGGACyACyA63_AQ022DownhillRunCountMetricH0VGACyA58_ANyAIyAEyApQ011MetricValueO0VG_AEyAEyApQ017MetricDescriptiontO0VGAQ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A129_tGGAQ9MetricRowVGA17_GA4_A135_tGGGMR);
  *(&v57[16] + 1) = v58[8];
  *(&v57[18] + 1) = v58[9];
  *(&v57[20] + 1) = v58[10];
  *(&v57[22] + 1) = v58[11];
  *(&v57[8] + 1) = v58[4];
  *(&v57[10] + 1) = v58[5];
  *(&v57[12] + 1) = v58[6];
  *(&v57[14] + 1) = v58[7];
  *(v57 + 1) = v58[0];
  *(&v57[2] + 1) = v58[1];
  *(&v57[4] + 1) = v58[2];
  v56 = v35;
  LOBYTE(v57[0]) = v36;
  *(&v57[6] + 1) = v58[3];
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(&v56, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA012_ConditionalG0VyAGy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAJ0iE5StyleOGGAA0K0VGAA011_ForegroundpO0VyAA5ColorVGGAA06_TraitnO0VyAA014LayoutPrioritysM0VGG_AA6SpacerVAGyAGyAJ8PacerRowVAJ0jX0VGAQGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA012_ConditionalG0VyAGy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAJ0iE5StyleOGGAA0K0VGAA011_ForegroundpO0VyAA5ColorVGGAA06_TraitnO0VyAA014LayoutPrioritysM0VGG_AA6SpacerVAGyAGyAJ8PacerRowVAJ0jX0VGAQGtGGMR);
}

uint64_t closure #1 in MirrorPacerMetricPlatterView.progressTrackerView()@<X0>(uint64_t a1@<X8>)
{
  MetricsPublisher.secondsAheadOfPacer.getter();
  v36 = v2;
  v37 = round(v2);
  LOBYTE(v38) = 3;
  v39 = 0x4066800000000000;
  PacerViewConfiguration.text.getter(&v45);
  v21 = v47;
  v22 = v48;
  v23 = v49;
  LOWORD(v24) = v50;
  v19 = v45;
  v20 = v46;
  MetricsPublisher.secondsAheadOfPacer.getter();
  *&v31 = v3;
  *(&v31 + 1) = round(v3);
  LOBYTE(v32) = 3;
  *(&v32 + 1) = 0x4066800000000000;
  PacerViewConfiguration.pillConfiguration.getter(v25);
  v4 = v26;

  MetricsPublisher.secondsAheadOfPacer.getter();
  v6 = v5;
  if (one-time initialization token for standard != -1)
  {
    swift_once();
  }

  v7 = static BarConfiguration.standard;
  v8 = *algn_27C80EFC8;
  v9 = qword_27C80EFD0;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  LOBYTE(v45) = 0;

  v12 = v45;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  v25[0] = v19;
  v25[1] = v20;
  *&v29 = v24;
  *(&v29 + 1) = v4;
  v30 = 0x3FF0000000000000;
  *&v31 = v6;
  *(&v31 + 1) = v7;
  *&v32 = v8;
  *(&v32 + 1) = v9;
  *&v33 = KeyPath;
  BYTE8(v33) = v45;
  *&v34 = 0;
  *(&v34 + 1) = v11;
  v35 = 2;
  v18[71] = 2;
  *&v18[7] = v31;
  *&v18[23] = v32;
  *&v18[39] = v33;
  *&v18[55] = v34;
  *a1 = v19;
  *(a1 + 16) = v20;
  v13 = v26;
  v14 = v27;
  v15 = v29;
  v16 = v30;
  *(a1 + 64) = v28;
  *(a1 + 80) = v15;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  *(a1 + 96) = v16;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 113) = *v18;
  *(a1 + 177) = *&v18[64];
  *(a1 + 161) = *&v18[48];
  *(a1 + 145) = *&v18[32];
  *(a1 + 129) = *&v18[16];
  v36 = v6;
  v37 = *&v7;
  v38 = v8;
  v39 = v9;
  v40 = KeyPath;
  v41 = v12;
  v42 = 0;
  v43 = v11;
  v44 = 2;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v25, &v45, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAA011_ForegroundnL0VyAA5ColorVGGAA06_TraitkL0VyAA014LayoutPriorityqJ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAA011_ForegroundnL0VyAA5ColorVGGAA06_TraitkL0VyAA014LayoutPriorityqJ0VGGMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(&v31, &v45, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB08PacerRowVAD06MetricG0VGAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB08PacerRowVAD06MetricG0VGAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(&v36, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB08PacerRowVAD06MetricG0VGAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB08PacerRowVAD06MetricG0VGAA30_EnvironmentKeyWritingModifierVyAD0E9ViewStyleOGGMR);
  v47 = v21;
  v48 = v22;
  v49 = v23;
  v45 = v19;
  v46 = v20;
  v50 = v24;
  v51 = v4;
  v52 = 0x3FF0000000000000;
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(&v45, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAA011_ForegroundnL0VyAA5ColorVGGAA06_TraitkL0VyAA014LayoutPriorityqJ0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAF0F9ViewStyleOGGAA0H0VGAA011_ForegroundnL0VyAA5ColorVGGAA06_TraitkL0VyAA014LayoutPriorityqJ0VGGMR);
}

uint64_t closure #1 in MirrorPacerMetricPlatterView.goalCompleteView(_:)@<X0>(char *a1@<X8>, double a2@<D0>)
{
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySSGSSAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAJyAJyAA4TextV07WorkoutB00K16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGARySiSgGG_AA6SpacerVtGGGMd, &_s7SwiftUI7ForEachVySaySSGSSAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAJyAJyAA4TextV07WorkoutB00K16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGARySiSgGG_AA6SpacerVtGGGMR);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v40 - v6;
  v7 = "DISTANCE_UNIT_SECTION_METRIC";
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    swift_beginAccess();
    v8 = WorkoutUIBundle.super.isa;
    v46._object = 0xE000000000000000;
    v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v9.value._object = 0xEB00000000656C62;
    v10._object = (v7 | 0x8000000000000000);
    v10._countAndFlagsBits = 0xD000000000000019;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v46);

    v45 = v12;
    v13 = lazy protocol witness table accessor for type String and conformance String();
    v14 = MEMORY[0x20F30C750](10, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v13);

    v15 = *(v14 + 16);
    if (!v15)
    {
      break;
    }

    v45._countAndFlagsBits = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
    v7 = 0;
    countAndFlagsBits = v45._countAndFlagsBits;
    v17 = (v14 + 56);
    while (v7 < *(v14 + 16))
    {
      v18 = *(v17 - 3);
      v19 = *(v17 - 2);
      v20 = *(v17 - 1);
      v21 = *v17;

      v22 = MEMORY[0x20F30BBA0](v18, v19, v20, v21);
      v24 = v23;

      v45._countAndFlagsBits = countAndFlagsBits;
      v26 = *(countAndFlagsBits + 16);
      v25 = *(countAndFlagsBits + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        countAndFlagsBits = v45._countAndFlagsBits;
      }

      ++v7;
      *(countAndFlagsBits + 16) = v26 + 1;
      v27 = countAndFlagsBits + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v17 += 4;
      if (v15 == v7)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

  countAndFlagsBits = MEMORY[0x277D84F90];
LABEL_10:
  v45._countAndFlagsBits = countAndFlagsBits;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AA6SpacerVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AA6SpacerVtGGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AA6SpacerVtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAA4TextV07WorkoutB00I16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAOySiSgGG_AA6SpacerVtGGMR, MEMORY[0x277CE1138]);
  v28 = v40;
  ForEach<>.init(_:id:content:)();
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
  v29 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v33 = v42;
  v32 = v43;
  v34 = *(v43 + 16);
  v35 = v44;
  v34(v42, v28, v44);
  v36 = v41;
  v34(v41, v33, v35);
  v37 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySSGSSAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAJyAJyAA4TextV07WorkoutB00K16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGARySiSgGG_AA6SpacerVtGGG_AJyAJyAM011ElapsedTimeG0VARyAA5ColorVSgGGARyAM0kG5StyleOGGtMd, &_s7SwiftUI7ForEachVySaySSGSSAA6HStackVyAA9TupleViewVyAA15ModifiedContentVyAJyAJyAA4TextV07WorkoutB00K16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGARySiSgGG_AA6SpacerVtGGG_AJyAJyAM011ElapsedTimeG0VARyAA5ColorVSgGGARyAM0kG5StyleOGGtMR) + 48)];
  *v37 = a2;
  v37[8] = 0;
  *(v37 + 2) = KeyPath;
  *(v37 + 3) = v29;
  *(v37 + 4) = v31;
  v37[40] = 2;
  v38 = *(v32 + 8);

  v38(v28, v35);

  return (v38)(v33, v35);
}

double closure #1 in closure #1 in MirrorPacerMetricPlatterView.goalCompleteView(_:)@<D0>(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  v10 = 1;
  static WorkoutNotificationFont.multilineTextView(with:lineLimit:)(1, &v11);
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26 = v16;
  v25[0] = v11;
  v25[1] = v12;
  v17[3] = v14;
  v17[4] = v15;
  v18 = v16;
  v17[1] = v12;
  v17[2] = v13;
  v17[0] = v11;
  v19 = v11;
  v20 = v12;
  LOBYTE(v24) = v16;
  v22 = v14;
  v23 = v15;
  v21 = v13;
  v8[88] = 1;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v17, v8, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v25, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextV07WorkoutB00F16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAKySiSgGGMR);
  *&v9[23] = v20;
  *&v9[39] = v21;
  *&v9[71] = v23;
  *&v9[87] = v24;
  *&v9[55] = v22;
  *&v9[7] = v19;
  v4 = *&v9[48];
  *(a2 + 49) = *&v9[32];
  *(a2 + 65) = v4;
  *(a2 + 81) = *&v9[64];
  *(a2 + 96) = *&v9[79];
  result = *v9;
  v6 = *&v9[16];
  *(a2 + 17) = *v9;
  v7 = v10;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v7;
  *(a2 + 33) = v6;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  return result;
}

uint64_t closure #1 in MirrorPacerMetricPlatterView.progressView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMR);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v27 = &v27 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = *(a1 + 56);
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = v15;
  v14[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricD0VANGAKyAL09HeartRatemD0VAL0no9AggregatemD0VGGAKyAKyAsL04ZonemD0VGAKyAL06TimeInqmD0VAWGGGAKyAKyAKyAzL04PacemD0VGAKyA3_A3_GGAKyA5_AKyAL08DistancemD0VAL04LapsmD0VGGGGAKyAKyAKyAKyAKyAKyAL07CadencemD0VAA05EmptyD0VGA16_GA16_GAKyAL015ElevationChangemD0VAL07CurrentymD0VGGAKyAKyAL05PowermD0VA29_GAKyA29_AL014FlightsClimbedmD0VGGGAKyAKyAKyAL015SegmentDurationmD0VAL0u6DetailmD0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AA08ModifiedJ0VyA45_yAL0krD0VAL0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthmD0VA64_GGAKyAKyAL019VerticalOscillationmD0VA68_GAKyAL013GroundContactrmD0VA71_GGGAKyAKyA23_AL016DownhillRunCountmD0VGAKyA18_AA0F0VyAIyA45_yAA4TextVAL0M9ValueFontVG_A45_yA45_yA81_AL0M19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A97_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricD0VANGAKyAL09HeartRatemD0VAL0no9AggregatemD0VGGAKyAKyAsL04ZonemD0VGAKyAL06TimeInqmD0VAWGGGAKyAKyAKyAzL04PacemD0VGAKyA3_A3_GGAKyA5_AKyAL08DistancemD0VAL04LapsmD0VGGGGAKyAKyAKyAKyAKyAKyAL07CadencemD0VAA05EmptyD0VGA16_GA16_GAKyAL015ElevationChangemD0VAL07CurrentymD0VGGAKyAKyAL05PowermD0VA29_GAKyA29_AL014FlightsClimbedmD0VGGGAKyAKyAKyAL015SegmentDurationmD0VAL0u6DetailmD0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AA08ModifiedJ0VyA45_yAL0krD0VAL0M6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthmD0VA64_GGAKyAKyAL019VerticalOscillationmD0VA68_GAKyAL013GroundContactrmD0VA71_GGGAKyAKyA23_AL016DownhillRunCountmD0VGAKyA18_AA0F0VyAIyA45_yAA4TextVAL0M9ValueFontVG_A45_yA45_yA81_AL0M19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A97_tGGMR);
  closure #1 in closure #1 in MirrorPacerMetricPlatterView.progressView()(a1, &v14[*(v16 + 44)]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGMR);
  *&v14[*(v17 + 36)] = 0;
  KeyPath = swift_getKeyPath();
  v19 = &v14[*(v5 + 44)];
  *v19 = KeyPath;
  v19[8] = 5;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = v15;
  v11[16] = 0;
  closure #2 in closure #1 in MirrorPacerMetricPlatterView.progressView()(a1, &v11[*(v16 + 44)]);
  *&v11[*(v17 + 36)] = 0;
  v20 = swift_getKeyPath();
  v21 = &v11[*(v5 + 44)];
  *v21 = v20;
  v21[8] = 5;
  v22 = v27;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v14, v27, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMR);
  v23 = v28;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v11, v28, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMR);
  *a2 = 0x4000000000000000;
  *(a2 + 8) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA012_ConditionalE0VyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricH0VANGAKyAL09HeartRatelH0VAL0mn9AggregatelH0VGGAKyAKyAsL04ZonelH0VGAKyAL06TimeInplH0VAWGGGAKyAKyAKyAzL04PacelH0VGAKyA3_A3_GGAKyA5_AKyAL08DistancelH0VAL04LapslH0VGGGGAKyAKyAKyAKyAKyAKyAL07CadencelH0VAA05EmptyH0VGA16_GA16_GAKyAL015ElevationChangelH0VAL07CurrentxlH0VGGAKyAKyAL05PowerlH0VA29_GAKyA29_AL014FlightsClimbedlH0VGGGAKyAKyAKyAL015SegmentDurationlH0VAL0t6DetaillH0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AEyAEyAL0jqH0VAL0L6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthlH0VA62_GGAKyAKyAL019VerticalOscillationlH0VA66_GAKyAL013GroundContactqlH0VA69_GGGAKyAKyA23_AL016DownhillRunCountlH0VGAKyA18_AGyAIyAEyAA4TextVAL0L9ValueFontVG_AEyAEyA77_AL0L19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A93_tGGAL0L3RowVGAA30_EnvironmentKeyWritingModifierVyAL0jH5StyleOGGACA104_tMd, &_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA6HStackVyAA9TupleViewVyAA012_ConditionalE0VyAKyAKyAKyAKyAKy07WorkoutB0012EnergyMetricH0VANGAKyAL09HeartRatelH0VAL0mn9AggregatelH0VGGAKyAKyAsL04ZonelH0VGAKyAL06TimeInplH0VAWGGGAKyAKyAKyAzL04PacelH0VGAKyA3_A3_GGAKyA5_AKyAL08DistancelH0VAL04LapslH0VGGGGAKyAKyAKyAKyAKyAKyAL07CadencelH0VAA05EmptyH0VGA16_GA16_GAKyAL015ElevationChangelH0VAL07CurrentxlH0VGGAKyAKyAL05PowerlH0VA29_GAKyA29_AL014FlightsClimbedlH0VGGGAKyAKyAKyAL015SegmentDurationlH0VAL0t6DetaillH0VGAKyA3_ANGGAKyAKyANA29_GAKyA29_AEyAEyAL0jqH0VAL0L6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAKyAKyAKyAKyA39_A3_GAKyAL012StrideLengthlH0VA62_GGAKyAKyAL019VerticalOscillationlH0VA66_GAKyAL013GroundContactqlH0VA69_GGGAKyAKyA23_AL016DownhillRunCountlH0VGAKyA18_AGyAIyAEyAA4TextVAL0L9ValueFontVG_AEyAEyA77_AL0L19DescriptionCoreFontVGAL26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A93_tGGAL0L3RowVGAA30_EnvironmentKeyWritingModifierVyAL0jH5StyleOGGACA104_tMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v22, a2 + v24[12], &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMR);
  v25 = a2 + v24[16];
  *v25 = 0x4000000000000000;
  *(v25 + 8) = 0;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v23, a2 + v24[20], &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v11, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v14, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v23, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMR);
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v22, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyAA012_ConditionalD0VyAIyAIyAIyAIyAIy07WorkoutB0012EnergyMetricG0VALGAIyAJ09HeartRatekG0VAJ0lm9AggregatekG0VGGAIyAIyAqJ04ZonekG0VGAIyAJ06TimeInokG0VAUGGGAIyAIyAIyAxJ04PacekG0VGAIyA1_A1_GGAIyA3_AIyAJ08DistancekG0VAJ04LapskG0VGGGGAIyAIyAIyAIyAIyAIyAJ07CadencekG0VAA05EmptyG0VGA14_GA14_GAIyAJ015ElevationChangekG0VAJ07CurrentwkG0VGGAIyAIyAJ05PowerkG0VA27_GAIyA27_AJ014FlightsClimbedkG0VGGGAIyAIyAIyAJ015SegmentDurationkG0VAJ0s6DetailkG0VGAIyA1_ALGGAIyAIyALA27_GAIyA27_ACyACyAJ0ipG0VAJ0K6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGAIyAIyAIyAIyA37_A1_GAIyAJ012StrideLengthkG0VA60_GGAIyAIyAJ019VerticalOscillationkG0VA64_GAIyAJ013GroundContactpkG0VA67_GGGAIyAIyA21_AJ016DownhillRunCountkG0VGAIyA16_AEyAGyACyAA4TextVAJ0K9ValueFontVG_ACyACyA75_AJ0K19DescriptionCoreFontVGAJ26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tGGAJ0K3RowVGAA30_EnvironmentKeyWritingModifierVyAJ0iG5StyleOGGMR);
}

uint64_t closure #1 in closure #1 in MirrorPacerMetricPlatterView.progressView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMR);
  MEMORY[0x28223BE20](v59);
  v53 = v46 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMR);
  MEMORY[0x28223BE20](v58);
  v52 = v46 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMR);
  MEMORY[0x28223BE20](v55);
  v6 = (v46 - v5);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  MEMORY[0x28223BE20](v56);
  v8 = v46 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  MEMORY[0x28223BE20](v57);
  v10 = v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  MEMORY[0x28223BE20](v11 - 8);
  v50 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v49 = v46 - v14;
  MEMORY[0x28223BE20](v15);
  v48 = v46 - v16;
  MEMORY[0x28223BE20](v17);
  v54 = v46 - v18;
  v19 = *(a1 + 24);
  v20 = *(a1 + 16);
  MetricsPublisher.averagePace.getter();
  v22 = v21;
  MetricsPublisher.workoutStatePublisher.getter();
  v23 = WorkoutStatePublisher.gpsUnavailable.getter();

  KeyPath = swift_getKeyPath();
  *&v73 = v20;
  *(&v73 + 1) = 8;
  *&v74 = v19;
  *(&v74 + 1) = KeyPath;
  LOBYTE(v75) = 0;
  *(&v75 + 1) = v22;
  LOBYTE(v76) = v23 & 1;
  v77 = 0;
  v78 = 0;
  v71 = v75;
  v72[0] = v76;
  *&v72[1] = 0;
  v69 = v73;
  v70 = v74;
  v79 = 0;
  BYTE8(v72[1]) = 0;
  v47 = v20;
  v46[10] = v19;
  outlined init with copy of PaceMetricView(&v73, &v60);
  lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
  _ConditionalContent<>.init(storage:)();
  v71 = v62;
  v72[0] = *v63;
  *(v72 + 9) = *&v63[9];
  v69 = v60;
  v70 = v61;
  v80 = 1;
  BYTE9(v72[1]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMR);
  v46[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR);
  lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
  v46[15] = _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_3(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
  _ConditionalContent<>.init(storage:)();
  v62 = v67;
  *v63 = v68[0];
  *&v63[10] = *(v68 + 10);
  v60 = v65;
  v61 = v66;
  v81 = 0;
  v64 = 0;
  v46[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMR);
  v46[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMR);
  v46[12] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
  v46[11] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v25 = v72[0];
  v6[2] = v71;
  v6[3] = v25;
  *(v6 + 59) = *(v72 + 11);
  v26 = v70;
  *v6 = v69;
  v6[1] = v26;
  swift_storeEnumTagMultiPayload();
  v46[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMR);
  v46[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMR);
  v46[7] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
  v46[6] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v8, v52, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  swift_storeEnumTagMultiPayload();
  v46[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMR);
  v46[4] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
  v46[3] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v8, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v10, v53, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  swift_storeEnumTagMultiPayload();
  v46[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMR);
  v46[1] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
  v46[0] = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of PaceMetricView(&v73);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v10, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  MetricsPublisher.distance.getter();
  v28 = v27;
  v29 = FIUIDistanceTypeForActivityType();
  MetricsPublisher.trackRunningMetricsPublisher.getter();
  v30 = TrackRunningMetricsPublisher.trackRunningCoordinator.getter();

  v31 = dispatch thunk of TrackRunningCoordinator.preferredDistanceUnit.getter();
  LOBYTE(v20) = v32;

  v33 = swift_getKeyPath();
  v84 = v20 & 1;
  v82 = 0;
  *&v69 = v28;
  *(&v69 + 1) = v47;
  *&v70 = v29;
  *(&v70 + 1) = v31;
  LOBYTE(v71) = v20 & 1;
  *(&v71 + 1) = *v83;
  DWORD1(v71) = *&v83[3];
  *(&v71 + 1) = v33;
  LOWORD(v72[0]) = 0;
  v34 = v47;
  outlined copy of Environment<WorkoutViewStyle>.Content(v33, 0);
  lazy protocol witness table accessor for type DistanceMetricView and conformance DistanceMetricView();
  lazy protocol witness table accessor for type LapsMetricView and conformance LapsMetricView();
  _ConditionalContent<>.init(storage:)();
  v69 = v60;
  v70 = v61;
  v71 = v62;
  LOWORD(v72[0]) = *v63;
  v85 = 1;
  BYTE9(v72[1]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB018DistanceMetricViewVAD04LapsgH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB018DistanceMetricViewVAD04LapsgH0VGMR);
  lazy protocol witness table accessor for type _ConditionalContent<DistanceMetricView, LapsMetricView> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v62 = v67;
  *v63 = v68[0];
  *&v63[10] = *(v68 + 10);
  v60 = v65;
  v61 = v66;
  v86 = 1;
  v64 = 1;
  _ConditionalContent<>.init(storage:)();
  v35 = v72[0];
  v6[2] = v71;
  v6[3] = v35;
  *(v6 + 59) = *(v72 + 11);
  v36 = v70;
  *v6 = v69;
  v6[1] = v36;
  swift_storeEnumTagMultiPayload();
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v8, v52, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  swift_storeEnumTagMultiPayload();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v8, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v10, v53, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  swift_storeEnumTagMultiPayload();
  v37 = v48;
  _ConditionalContent<>.init(storage:)();

  outlined consume of Environment<WorkoutViewStyle>.Content(v33, 0);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v10, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  v38 = v54;
  v39 = v49;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v54, v49, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  v40 = v37;
  v41 = v37;
  v42 = v50;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v40, v50, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  v43 = v51;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v39, v51, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v42, v43 + *(v44 + 48), &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v41, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v38, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v42, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v39, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
}

uint64_t closure #2 in closure #1 in MirrorPacerMetricPlatterView.progressView()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGG_GMR);
  MEMORY[0x28223BE20](v87);
  v86 = &v61 - v3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VG_GMR);
  MEMORY[0x28223BE20](v84);
  v82 = &v61 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019HeartRateMetricViewVAF0gh9AggregateiJ0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019HeartRateMetricViewVAF0gh9AggregateiJ0V_GMR);
  MEMORY[0x28223BE20](v76);
  v75 = &v61 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMR);
  MEMORY[0x28223BE20](v83);
  v78 = &v61 - v6;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMR);
  MEMORY[0x28223BE20](v85);
  v80 = &v61 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMR);
  MEMORY[0x28223BE20](v97);
  v81 = &v61 - v8;
  v9 = type metadata accessor for HeartRateMetricView(0);
  MEMORY[0x28223BE20](v9);
  v70 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA33_AYGACyAF012StrideLengthhI0VA58_GGACyACyAF019VerticalOscillationhI0VA62_GACyAF013GroundContactnhI0VA65_GGGACyACyA17_AF016DownhillRunCounthI0VGACyA12_AA6HStackVyAA05TupleI0VyA39_yAA4TextVAF0H9ValueFontVG_A39_yA39_yA77_AF0H19DescriptionCoreFontVGAF26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGG_GMR);
  MEMORY[0x28223BE20](v98);
  v91 = &v61 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGGGACyACyACyACyACyACyAF07CadencehI0VAA05EmptyI0VGA10_GA10_GACyAF015ElevationChangehI0VAF07CurrentuhI0VGGACyACyAF05PowerhI0VA23_GACyA23_AF014FlightsClimbedhI0VGGGACyACyACyAF015SegmentDurationhI0VAF0q6DetailhI0VGACyAyHGGACyACyAHA23_GACyA23_AA08ModifiedD0VyA39_yAF0fnI0VAF0H6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGG_GMR);
  MEMORY[0x28223BE20](v96);
  v90 = &v61 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyACyACy07WorkoutB016EnergyMetricViewVAHGACyAF09HeartRatehI0VAF0jk9AggregatehI0VGGACyACyAmF04ZonehI0VGACyAF06TimeInmhI0VAQGGGACyACyACyAtF04PacehI0VGACyA2YGGACyA_ACyAF08DistancehI0VAF04LapshI0VGGG_GMR);
  MEMORY[0x28223BE20](v93);
  v14 = (&v61 - v13);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  MEMORY[0x28223BE20](v94);
  v89 = &v61 - v15;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  MEMORY[0x28223BE20](v95);
  v62 = &v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  MEMORY[0x28223BE20](v17 - 8);
  v79 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v77 = &v61 - v20;
  MEMORY[0x28223BE20](v21);
  v74 = &v61 - v22;
  MEMORY[0x28223BE20](v23);
  v92 = &v61 - v24;
  v26 = *(a1 + 16);
  v25 = *(a1 + 24);
  MetricsPublisher.currentPace.getter();
  v28 = v27;
  MetricsPublisher.workoutStatePublisher.getter();
  v29 = WorkoutStatePublisher.gpsUnavailable.getter();

  KeyPath = swift_getKeyPath();
  *&v112 = v26;
  *(&v112 + 1) = 4;
  *&v113 = v25;
  *(&v113 + 1) = KeyPath;
  LOBYTE(v114) = 0;
  *(&v114 + 1) = v28;
  LOBYTE(v115) = v29 & 1;
  v116 = 0;
  v117 = 0;
  v110 = v114;
  v111[0] = v115;
  *&v111[1] = 0;
  v108 = v112;
  v109 = v113;
  v118 = 1;
  BYTE8(v111[1]) = 1;
  v31 = v26;
  v32 = v25;
  outlined init with copy of PaceMetricView(&v112, &v99);
  lazy protocol witness table accessor for type TimeInZoneMetricView and conformance TimeInZoneMetricView();
  lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView();
  _ConditionalContent<>.init(storage:)();
  v110 = v101;
  v111[0] = *v102;
  *(v111 + 9) = *&v102[9];
  v108 = v99;
  v109 = v100;
  v119 = 0;
  BYTE9(v111[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR);
  lazy protocol witness table accessor for type _ConditionalContent<TimeInZoneMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>();
  _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_3(&lazy protocol witness table cache variable for type _ConditionalContent<PaceMetricView, PaceMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGMR, lazy protocol witness table accessor for type PaceMetricView and conformance PaceMetricView);
  _ConditionalContent<>.init(storage:)();
  v101 = v106;
  *v102 = v107[0];
  *&v102[10] = *(v107 + 10);
  v99 = v104;
  v100 = v105;
  v120 = 0;
  v103 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB014PaceMetricViewVAFGACyAD08DistancegH0VAD04LapsgH0VGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v33 = v111[0];
  v14[2] = v110;
  v14[3] = v33;
  *(v14 + 59) = *(v111 + 11);
  v34 = v109;
  *v14 = v108;
  v14[1] = v34;
  v66 = v14;
  swift_storeEnumTagMultiPayload();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB020TimeInZoneMetricViewVAD04PaceiJ0VGACyA2HGGACyAjCyAD08DistanceiJ0VAD04LapsiJ0VGGGMR);
  v72 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>> and conformance <> _ConditionalContent<A, B>();
  v71 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>> and conformance <> _ConditionalContent<A, B>();
  v35 = v89;
  _ConditionalContent<>.init(storage:)();
  v36 = v35;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v35, v90, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  swift_storeEnumTagMultiPayload();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB017CadenceMetricViewVAA05EmptyH0VGAFGAFGACyAD015ElevationChangegH0VAD07CurrentjgH0VGGACyACyAD05PowergH0VASGACyAsD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD014DistanceDetailgH0VGACyAD04PacegH0VAD06EnergygH0VGGACyACyA6_ASGACyAsA08ModifiedD0VyA11_yAD0e4TimeH0VAD0gS0VGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGMR);
  v68 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>> and conformance <> _ConditionalContent<A, B>();
  v67 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, FlightsClimbedMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<SegmentDurationMetricView, DistanceDetailMetricView>, _ConditionalContent<PaceMetricView, EnergyMetricView>>, _ConditionalContent<_ConditionalContent<EnergyMetricView, PowerMetricView>, _ConditionalContent<PowerMetricView, ModifiedContent<ModifiedContent<WorkoutTimeView, MetricDetail>, _ForegroundStyleModifier<Color>>>>>> and conformance <> _ConditionalContent<A, B>();
  v37 = v62;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v36, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  v38 = v37;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v37, v91, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  swift_storeEnumTagMultiPayload();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB024DistanceDetailMetricViewVAD04PacehI0VGACyAD012StrideLengthhI0VAKGGACyACyAD019VerticalOscillationhI0VAOGACyAD017GroundContactTimehI0VARGGGACyACyAD015ElevationChangehI0VAD016DownhillRunCounthI0VGACyAA05EmptyI0VAA6HStackVyAA05TupleI0VyAA08ModifiedD0VyAA4TextVAD0H9ValueFontVG_A6_yA6_yA8_AD0H19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGMR);
  v64 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>>, _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<TimeInZoneMetricView, PaceMetricView>, _ConditionalContent<PaceMetricView, PaceMetricView>>, _ConditionalContent<_ConditionalContent<PaceMetricView, PaceMetricView>, _ConditionalContent<DistanceMetricView, LapsMetricView>>>>, _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<CadenceMetricView, EmptyView>, CadenceMetricView>, CadenceMetricView>, _ConditionalContent<ElevationChangeMetricView, CurrentElevationMetricView>>, _ConditionalContent<_ConditionalContent<PowerMetricView, PowerMet();
  v63 = lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<_ConditionalContent<_ConditionalContent<DistanceDetailMetricView, PaceMetricView>, _ConditionalContent<StrideLengthMetricView, StrideLengthMetricView>>, _ConditionalContent<_ConditionalContent<VerticalOscillationMetricView, VerticalOscillationMetricView>, _ConditionalContent<GroundContactTimeMetricView, GroundContactTimeMetricView>>>, _ConditionalContent<_ConditionalContent<ElevationChangeMetricView, DownhillRunCountMetricView>, _ConditionalContent<EmptyView, HStack<TupleView<(ModifiedContent<Text, MetricValueFont>, ModifiedContent<ModifiedContent<Text, MetricDescriptionCoreFont>, ExtendedLineSpacingSupport>)>>>>> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of PaceMetricView(&v112);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v37, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  MetricsPublisher.heartRateMetricsPublisher.getter();
  v39 = HeartRateMetricsPublisher.currentHeartRate.getter();
  LOBYTE(v25) = v40;

  MetricsPublisher.heartRateMetricsPublisher.getter();
  v41 = v70;
  HeartRateMetricsPublisher.currentHeartRateValueType.getter();

  MetricsPublisher.heartRateMetricsPublisher.getter();
  LOBYTE(v26) = HeartRateMetricsPublisher.isStaleHeartRate.getter();

  MetricsPublisher.workoutStatePublisher.getter();
  v42 = WorkoutStatePublisher.workoutPaused.getter();

  MetricsPublisher.workoutStatePublisher.getter();
  v43 = WorkoutStatePublisher.lowPowerModeAnimationSuspended.getter();

  v44 = v41 + v9[9];
  *v44 = swift_getKeyPath();
  *(v44 + 8) = 0;
  v45 = v41 + v9[10];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  v46 = v41 + v9[11];
  *v46 = swift_getKeyPath();
  *(v46 + 8) = 0;
  *(v41 + v9[12]) = 0x3FD6666666666666;
  v47 = (v41 + v9[13]);
  *v47 = 0;
  v47[1] = 0;
  *v41 = v39;
  *(v41 + 8) = v25 & 1;
  *(v41 + v9[6]) = v26 & 1;
  *(v41 + v9[7]) = v42 & 1;
  *(v41 + v9[8]) = v43 & 1;
  outlined init with copy of HeartRateMetricView(v41, v75);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for HeartRateAggregateMetricView(0);
  _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_1(&lazy protocol witness table cache variable for type HeartRateMetricView and conformance HeartRateMetricView, type metadata accessor for HeartRateMetricView, &protocol conformance descriptor for HeartRateMetricView);
  _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_1(&lazy protocol witness table cache variable for type HeartRateAggregateMetricView and conformance HeartRateAggregateMetricView, type metadata accessor for HeartRateAggregateMetricView, &protocol conformance descriptor for HeartRateAggregateMetricView);
  v48 = v78;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v48, v82, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMR);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR);
  _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_3(&lazy protocol witness table cache variable for type _ConditionalContent<EnergyMetricView, EnergyMetricView> and conformance <> _ConditionalContent<A, B>, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB016EnergyMetricViewVAFGMR, lazy protocol witness table accessor for type EnergyMetricView and conformance EnergyMetricView);
  lazy protocol witness table accessor for type _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView> and conformance <> _ConditionalContent<A, B>();
  v49 = v80;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v48, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB019HeartRateMetricViewVAD0fg9AggregatehI0VGMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v49, v86, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMR);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB028HeartRateAggregateMetricViewVAD04ZoneiJ0VGACyAD06TimeInkiJ0VAHGGMR);
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EnergyMetricView, EnergyMetricView>, _ConditionalContent<HeartRateMetricView, HeartRateAggregateMetricView>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HeartRateAggregateMetricView, ZoneMetricView>, _ConditionalContent<TimeInZoneMetricView, ZoneMetricView>> and conformance <> _ConditionalContent<A, B>();
  v50 = v81;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v49, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v50, v66, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMR);
  swift_storeEnumTagMultiPayload();
  v51 = v89;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v50, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v51, v90, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  swift_storeEnumTagMultiPayload();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v51, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v38, v91, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  swift_storeEnumTagMultiPayload();
  v52 = v74;
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v38, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGMR);
  outlined destroy of HeartRateMetricView(v41);
  v53 = v92;
  v54 = v77;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v92, v77, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  v55 = v52;
  v56 = v52;
  v57 = v79;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v55, v79, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  v58 = v88;
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v54, v88, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A91_tMR);
  outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v57, v58 + *(v59 + 48), &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v56, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v53, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v57, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
  return outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(v54, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMd, &_s7SwiftUI19_ConditionalContentVyACyACyACyACyACy07WorkoutB016EnergyMetricViewVAFGACyAD09HeartRategH0VAD0ij9AggregategH0VGGACyACyAkD04ZonegH0VGACyAD06TimeInlgH0VAOGGGACyACyACyArD04PacegH0VGACyA2WGGACyAyCyAD08DistancegH0VAD04LapsgH0VGGGGACyACyACyACyACyACyAD07CadencegH0VAA05EmptyH0VGA8_GA8_GACyAD015ElevationChangegH0VAD07CurrenttgH0VGGACyACyAD05PowergH0VA21_GACyA21_AD014FlightsClimbedgH0VGGGACyACyACyAD015SegmentDurationgH0VAD0p6DetailgH0VGACyAwFGGACyACyAFA21_GACyA21_AA08ModifiedD0VyA37_yAD0emH0VAD0G6DetailVGAA24_ForegroundStyleModifierVyAA5ColorVGGGGGGGACyACyACyACyA31_AWGACyAD012StrideLengthgH0VA56_GGACyACyAD019VerticalOscillationgH0VA60_GACyAD013GroundContactmgH0VA63_GGGACyACyA15_AD016DownhillRunCountgH0VGACyA10_AA6HStackVyAA05TupleH0VyA37_yAA4TextVAD0G9ValueFontVG_A37_yA37_yA75_AD0G19DescriptionCoreFontVGAD26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGGMR);
}

uint64_t protocol witness for View.body.getter in conformance MirrorPacerMetricPlatterView@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v5 = v2[3];
  v8[2] = v2[2];
  v8[3] = v5;
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0F0VyAIyAA15ModifiedContentVyAMyAA012_ConditionalJ0VyAMy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAP0lD5StyleOGGAA0N0VGAA011_ForegroundsR0VyAA5ColorVGGAA06_TraitqR0VyAA0g8PriorityvP0VGG_AA6SpacerVAMyAMyAP8PacerRowVAP0mZ0VGAWGtGG_AOyAMyAMyAKyAIyAA7ForEachVySaySSGSSAA6HStackVyAIyAMyAMyAMyAzP0L16NotificationFontVGATy12CoreGraphics7CGFloatVGGATySiSgGG_A13_tGGG_AMyAMyAP011ElapsedTimeD0VATyA3_SgGGAWGtGGAA08_PaddingG0VGAWGAKyAIyA13__AMyAMyA26_yAIyAOyAOyAOyAOyAOyAOyAP06EnergymD0VA54_GAOyAP09HeartRatemD0VAP018HeartRateAggregatemD0VGGAOyAOyA59_AP04ZonemD0VGAOyAP010TimeInZonemD0VA63_GGGAOyAOyAOyA66_AP04PacemD0VGAOyA71_A71_GGAOyA73_AOyAP08DistancemD0VAP04LapsmD0VGGGGAOyAOyAOyAOyAOyAOyAP07CadencemD0VAA05EmptyD0VGA84_GA84_GAOyAP015ElevationChangemD0VAP016CurrentElevationmD0VGGAOyAOyAP05PowermD0VA97_GAOyA97_AP014FlightsClimbedmD0VGGGAOyAOyAOyAP015SegmentDurationmD0VAP014DistanceDetailmD0VGAOyA71_A54_GGAOyAOyA54_A97_GAOyA97_AMyAMyAP0l4TimeD0VAP0M6DetailVGA4_GGGGGGAOyAOyAOyAOyA107_A71_GAOyAP012StrideLengthmD0VA125_GGAOyAOyAP019VerticalOscillationmD0VA129_GAOyAP017GroundContactTimemD0VA132_GGGAOyAOyA91_AP016DownhillRunCountmD0VGAOyA86_A26_yAIyAMyAzP0M9ValueFontVG_AMyAMyAzP0M19DescriptionCoreFontVGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A154_tGGA17_GAWGA13_A158_tGGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0F0VyAIyAA15ModifiedContentVyAMyAA012_ConditionalJ0VyAMy07WorkoutB010MetricTextVAA30_EnvironmentKeyWritingModifierVyAP0lD5StyleOGGAA0N0VGAA011_ForegroundsR0VyAA5ColorVGGAA06_TraitqR0VyAA0g8PriorityvP0VGG_AA6SpacerVAMyAMyAP8PacerRowVAP0mZ0VGAWGtGG_AOyAMyAMyAKyAIyAA7ForEachVySaySSGSSAA6HStackVyAIyAMyAMyAMyAzP0L16NotificationFontVGATy12CoreGraphics7CGFloatVGGATySiSgGG_A13_tGGG_AMyAMyAP011ElapsedTimeD0VATyA3_SgGGAWGtGGAA08_PaddingG0VGAWGAKyAIyA13__AMyAMyA26_yAIyAOyAOyAOyAOyAOyAOyAP06EnergymD0VA54_GAOyAP09HeartRatemD0VAP018HeartRateAggregatemD0VGGAOyAOyA59_AP04ZonemD0VGAOyAP010TimeInZonemD0VA63_GGGAOyAOyAOyA66_AP04PacemD0VGAOyA71_A71_GGAOyA73_AOyAP08DistancemD0VAP04LapsmD0VGGGGAOyAOyAOyAOyAOyAOyAP07CadencemD0VAA05EmptyD0VGA84_GA84_GAOyAP015ElevationChangemD0VAP016CurrentElevationmD0VGGAOyAOyAP05PowermD0VA97_GAOyA97_AP014FlightsClimbedmD0VGGGAOyAOyAOyAP015SegmentDurationmD0VAP014DistanceDetailmD0VGAOyA71_A54_GGAOyAOyA54_A97_GAOyA97_AMyAMyAP0l4TimeD0VAP0M6DetailVGA4_GGGGGGAOyAOyAOyAOyA107_A71_GAOyAP012StrideLengthmD0VA125_GGAOyAOyAP019VerticalOscillationmD0VA129_GAOyAP017GroundContactTimemD0VA132_GGGAOyAOyA91_AP016DownhillRunCountmD0VGAOyA86_A26_yAIyAMyAzP0M9ValueFontVG_AMyAMyAzP0M19DescriptionCoreFontVGAP26ExtendedLineSpacingSupport33_241C09B5AC269BC1C919798A0AC522FDLLVGtGGGGGG_A154_tGGA17_GAWGA13_A158_tGGGtGGMR);
  return closure #1 in MirrorPacerMetricPlatterView.body.getter(v8, a2 + *(v6 + 44));
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGA15_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGA15_GMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<WorkoutViewStyle> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy07WorkoutB00G9ViewStyleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAGyACyACyACyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ACyACyAO011ElapsedTimeG0VATyAA5ColorVSgGGATyAO0lG5StyleOGGtGGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAEyAA15ModifiedContentVyALyALyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ALyALyAO011ElapsedTimeE0VATyAA5ColorVSgGGATyAO0lE5StyleOGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA7ForEachVySaySSGSSAA6HStackVyAEyAA15ModifiedContentVyALyALyAA4TextV07WorkoutB00L16NotificationFontVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGATySiSgGG_AA6SpacerVtGGG_ALyALyAO011ElapsedTimeE0VATyAA5ColorVSgGGATyAO0lE5StyleOGGtGGMR, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s9WorkoutUI19HeartRateMetricViewVAC05SwiftB00F0AAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s7SwiftUI19_ConditionalContentVy07WorkoutB014PaceMetricViewVAFGACyxq_GAA0H0A2aIRzAaIR_rlWlTm_3(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TupleView<(ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<MetricText, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>, Text>, _ForegroundStyleModifier<Color>>, _TraitWritingModifier<LayoutPriorityTraitKey>>, Spacer, ModifiedContent<ModifiedContent<PacerRow, MetricRow>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ForEach<[String], String, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Text, WorkoutNotificationFont>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, Spacer)>>>, ModifiedContent<ModifiedContent<ElapsedTimeView, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<WorkoutViewStyle>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double Image.scaledToFit(size:)@<D0>(uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277CE0FE0], v5, v7);
  v10 = Image.resizable(capInsets:resizingMode:)();
  (*(v6 + 8))(v9, v5);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v11 = v13[1];
  *(a2 + 24) = v13[0];
  *(a2 + 40) = v11;
  result = *&v14;
  *(a2 + 56) = v14;
  return result;
}

double protocol witness for ViewModifier.body(content:) in conformance ZeroListRowInsets@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017ZeroListRowInsetsVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017ZeroListRowInsetsVGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017ZeroListRowInsetsVGAA013_TraitWritingF0VyAA0ijkL3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017ZeroListRowInsetsVGAA013_TraitWritingF0VyAA0ijkL3KeyVGGMR) + 36);
  *(v5 + 32) = 0;
  result = 0.0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance LeadingInsetViewModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD6SpacerVAD12_FrameLayoutVGAD01_g9Modifier_F0VyAA0d5InsetgM0VGGMd, &_s9WorkoutUI34AlignedLeadingAccessoryContentViewVy05SwiftB008ModifiedF0VyAD6SpacerVAD12_FrameLayoutVGAD01_g9Modifier_F0VyAA0d5InsetgM0VGGMR);
  v6 = v5[13];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0012LeadingInsetcD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB0012LeadingInsetcD0VGMR);
  result = (*(*(v7 - 8) + 16))(a2 + v6, a1, v7);
  *(a2 + v5[14]) = 0x4022000000000000;
  *(a2 + v5[15]) = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ZeroListRowInsets>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ZeroListRowInsets>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ZeroListRowInsets>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017ZeroListRowInsetsVGAA013_TraitWritingF0VyAA0ijkL3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017ZeroListRowInsetsVGAA013_TraitWritingF0VyAA0ijkL3KeyVGGMR);
    lazy protocol witness table accessor for type _ViewModifier_Content<ZeroListRowInsets> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ZeroListRowInsets> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017ZeroListRowInsetsVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017ZeroListRowInsetsVGMR, MEMORY[0x277CE04B0]);
    lazy protocol witness table accessor for type _ViewModifier_Content<ZeroListRowInsets> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ZeroListRowInsets>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ZeroListRowInsets> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MediaConfigurationRoom.dismiss.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_3(v2, &v14 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t implicit closure #1 in MediaConfigurationRoom.init(activityType:mediaConfiguration:shouldPresentMediaCompatibilityWarning:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for MediaConfigurationRoomViewModel(0);
  swift_allocObject();
  v8 = a4;
  v9 = a1;

  return MediaConfigurationRoomViewModel.init(activityType:mediaConfiguration:)(v9, a2, a3, a4);
}

uint64_t MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = type metadata accessor for ListSectionSpacing();
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x28223BE20](v2);
  v70 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for ContentMarginPlacement();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ATSgG_AGyAIyAkA15ModifiedContentVyAmAE11pickerStyleyQrqd__AA06PickerR0Rd__lFQOyAA0S0VyAKSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZyAtA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinesR0VQo_A12_yAA5ColorVSgGGAWG_AIyAtGyA5_0wP3RowVSg_AZyAZyAmAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA14NavigationLinkVyAZyAA6HStackVyAGyAA6SpacerV_ATA38_tGGAA14_PaddingLayoutVGAmAE15navigationTitleyQrqd__SyRd__lFQOyA5_0wS0V_SSQo_G_AA014BorderedButtonR0VQo_AA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGA12_yAA10VisibilityOGGtGATGSgtGSgtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ATSgG_AGyAIyAkA15ModifiedContentVyAmAE11pickerStyleyQrqd__AA06PickerR0Rd__lFQOyAA0S0VyAKSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZyAtA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinesR0VQo_A12_yAA5ColorVSgGGAWG_AIyAtGyA5_0wP3RowVSg_AZyAZyAmAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA14NavigationLinkVyAZyAA6HStackVyAGyAA6SpacerV_ATA38_tGGAA14_PaddingLayoutVGAmAE15navigationTitleyQrqd__SyRd__lFQOyA5_0wS0V_SSQo_G_AA014BorderedButtonR0VQo_AA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGA12_yAA10VisibilityOGGtGATGSgtGSgtGGMR);
  v5 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v7 = v55 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A0_SgG_AQyASyAuA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerX0Rd__lFQOyAA0Y0VyAUSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA6_yA0_AA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineyX0VQo_A20_yAA5ColorVSgGGA3_G_ASyA0_AQyA13_05MediaV3RowVSg_A6_yA6_yAcAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyAA14NavigationLinkVyA6_yAA6HStackVyAQyAA6SpacerV_A0_A46_tGGAA14_PaddingLayoutVGAcAE15navigationTitleyQrqd__SyRd__lFQOyA13_05MediaY0V_SSQo_G_AA014BorderedButtonX0VQo_AA011_ForegroundX8ModifierVyAA017HierarchicalShapeX0VGGA20_yAA10VisibilityOGGtGA0_GSgtGSgtGG_Qo_Md, &_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A0_SgG_AQyASyAuA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerX0Rd__lFQOyAA0Y0VyAUSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA6_yA0_AA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineyX0VQo_A20_yAA5ColorVSgGGA3_G_ASyA0_AQyA13_05MediaV3RowVSg_A6_yA6_yAcAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyAA14NavigationLinkVyA6_yAA6HStackVyAQyAA6SpacerV_A0_A46_tGGAA14_PaddingLayoutVGAcAE15navigationTitleyQrqd__SyRd__lFQOyA13_05MediaY0V_SSQo_G_AA014BorderedButtonX0VQo_AA011_ForegroundX8ModifierVyAA017HierarchicalShapeX0VGGA20_yAA10VisibilityOGGtGA0_GSgtGSgtGG_Qo_MR);
  v63 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = v55 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEAfG7contentQrAN_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A6_SgG_AWyAYyA_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA6_AA012_EnvironmentM15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A24_yAA5ColorVSgGGA9_G_AYyA6_AWyA17_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAWyAA6SpacerV_A6_A50_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA17_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA24_yAA10VisibilityOGGtGA6_GSgtGSgtGG_Qo__AA6ButtonVyA6_GAA012_ConditionalD0VyA6_A6_GQo_A17_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEAfG7contentQrAN_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A6_SgG_AWyAYyA_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA6_AA012_EnvironmentM15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A24_yAA5ColorVSgGGA9_G_AYyA6_AWyA17_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAWyAA6SpacerV_A6_A50_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA17_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA24_yAA10VisibilityOGGtGA6_GSgtGSgtGG_Qo__AA6ButtonVyA6_GAA012_ConditionalD0VyA6_A6_GQo_A17_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMR);
  MEMORY[0x28223BE20](v64);
  v60 = v55 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGA36_yAA0Z14SectionSpacingVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGA36_yAA0Z14SectionSpacingVSgGGMR);
  MEMORY[0x28223BE20](v69);
  v68 = v55 - v10;
  v77 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_APSgG_ACyAEyAgA15ModifiedContentVyAiAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAVyApA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineqP0VQo_A8_yAA5ColorVSgGGASG_AEyApCyA1_0uN3RowVSg_AVyAVyAiAE06buttonP0yQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA14NavigationLinkVyAVyAA6HStackVyACyAA6SpacerV_APA34_tGGAA14_PaddingLayoutVGAiAE15navigationTitleyQrqd__SyRd__lFQOyA1_0uQ0V_SSQo_G_AA014BorderedButtonP0VQo_AA011_ForegroundP8ModifierVyAA017HierarchicalShapeP0VGGA8_yAA10VisibilityOGGtGAPGSgtGSgtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_APSgG_ACyAEyAgA15ModifiedContentVyAiAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAVyApA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineqP0VQo_A8_yAA5ColorVSgGGASG_AEyApCyA1_0uN3RowVSg_AVyAVyAiAE06buttonP0yQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA14NavigationLinkVyAVyAA6HStackVyACyAA6SpacerV_APA34_tGGAA14_PaddingLayoutVGAiAE15navigationTitleyQrqd__SyRd__lFQOyA1_0uQ0V_SSQo_G_AA014BorderedButtonP0VQo_AA011_ForegroundP8ModifierVyAA017HierarchicalShapeP0VGGA8_yAA10VisibilityOGGtGAPGSgtGSgtGMR);
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Text?>, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_APSgG_ACyAEyAgA15ModifiedContentVyAiAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAVyApA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineqP0VQo_A8_yAA5ColorVSgGGASG_AEyApCyA1_0uN3RowVSg_AVyAVyAiAE06buttonP0yQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA14NavigationLinkVyAVyAA6HStackVyACyAA6SpacerV_APA34_tGGAA14_PaddingLayoutVGAiAE15navigationTitleyQrqd__SyRd__lFQOyA1_0uQ0V_SSQo_G_AA014BorderedButtonP0VQo_AA011_ForegroundP8ModifierVyAA017HierarchicalShapeP0VGGA8_yAA10VisibilityOGGtGAPGSgtGSgtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_APSgG_ACyAEyAgA15ModifiedContentVyAiAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAVyApA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineqP0VQo_A8_yAA5ColorVSgGGASG_AEyApCyA1_0uN3RowVSg_AVyAVyAiAE06buttonP0yQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA14NavigationLinkVyAVyAA6HStackVyACyAA6SpacerV_APA34_tGGAA14_PaddingLayoutVGAiAE15navigationTitleyQrqd__SyRd__lFQOyA1_0uQ0V_SSQo_G_AA014BorderedButtonP0VQo_AA011_ForegroundP8ModifierVyAA017HierarchicalShapeP0VGGA8_yAA10VisibilityOGGtGAPGSgtGSgtGMR, MEMORY[0x277CE14C0]);
  List<>.init(content:)();
  v11 = type metadata accessor for MediaConfigurationRoom(0);
  v12 = (v1 + *(v11 + 44));
  v13 = *v12;
  v14 = *(v12 + 1);
  v80 = v13;
  v81 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  v76 = v1;
  v15 = lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Text?>, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ATSgG_AGyAIyAkA15ModifiedContentVyAmAE11pickerStyleyQrqd__AA06PickerR0Rd__lFQOyAA0S0VyAKSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZyAtA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinesR0VQo_A12_yAA5ColorVSgGGAWG_AIyAtGyA5_0wP3RowVSg_AZyAZyAmAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA14NavigationLinkVyAZyAA6HStackVyAGyAA6SpacerV_ATA38_tGGAA14_PaddingLayoutVGAmAE15navigationTitleyQrqd__SyRd__lFQOyA5_0wS0V_SSQo_G_AA014BorderedButtonR0VQo_AA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGA12_yAA10VisibilityOGGtGATGSgtGSgtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ATSgG_AGyAIyAkA15ModifiedContentVyAmAE11pickerStyleyQrqd__AA06PickerR0Rd__lFQOyAA0S0VyAKSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZyAtA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinesR0VQo_A12_yAA5ColorVSgGGAWG_AIyAtGyA5_0wP3RowVSg_AZyAZyAmAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA14NavigationLinkVyAZyAA6HStackVyAGyAA6SpacerV_ATA38_tGGAA14_PaddingLayoutVGAmAE15navigationTitleyQrqd__SyRd__lFQOyA5_0wS0V_SSQo_G_AA014BorderedButtonR0VQo_AA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGA12_yAA10VisibilityOGGtGATGSgtGSgtGGMR, MEMORY[0x277CDE5A0]);
  v16 = v59;
  View.alert(isPresented:content:)();

  (*(v5 + 8))(v7, v16);
  v57 = LocalizedStringKey.init(stringLiteral:)();
  v56 = v17;
  v55[1] = v18;
  v62 = v11;
  v19 = (v1 + *(v11 + 48));
  v20 = *v19;
  v21 = *(v19 + 1);
  v80 = v20;
  v81 = v21;
  State.projectedValue.getter();
  v74 = v1;
  v75 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMR);
  v78 = v16;
  v79 = v15;
  swift_getOpaqueTypeConformance2();
  v22 = v60;
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
  lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
  v23 = v61;
  v24 = v58;
  View.alert<A, B>(_:isPresented:actions:message:)();

  (*(v63 + 8))(v24, v23);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = WorkoutUIBundle.super.isa;
  v82._object = 0xE000000000000000;
  v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v26.value._object = 0xEB00000000656C62;
  v27._object = 0x800000020CBA2FF0;
  v27._countAndFlagsBits = 0xD000000000000012;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v26, v25, v28, v82);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20CB5DA70;
  v30 = [*(v74 + *(v62 + 24)) localizedName];
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v29 + 32) = v31;
  *(v29 + 40) = v33;
  v34 = String.init(format:_:)();
  v36 = v35;

  v37 = v64;
  v38 = (v22 + *(v64 + 36));
  *v38 = v34;
  v38[1] = v36;
  v39 = static Edge.Set.top.getter();
  v40 = v65;
  static ContentMarginPlacement.automatic.getter();
  v41 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>();
  v42 = v68;
  MEMORY[0x20F30A640](v39, 0x4034000000000000, 0, v40, v37, v41);
  (*(v66 + 8))(v40, v67);
  outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v22, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEAfG7contentQrAN_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A6_SgG_AWyAYyA_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA6_AA012_EnvironmentM15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A24_yAA5ColorVSgGGA9_G_AYyA6_AWyA17_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAWyAA6SpacerV_A6_A50_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA17_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA24_yAA10VisibilityOGGtGA6_GSgtGSgtGG_Qo__AA6ButtonVyA6_GAA012_ConditionalD0VyA6_A6_GQo_A17_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEAfG7contentQrAN_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A6_SgG_AWyAYyA_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA6_AA012_EnvironmentM15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A24_yAA5ColorVSgGGA9_G_AYyA6_AWyA17_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAWyAA6SpacerV_A6_A50_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA17_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA24_yAA10VisibilityOGGtGA6_GSgtGSgtGG_Qo__AA6ButtonVyA6_GAA012_ConditionalD0VyA6_A6_GQo_A17_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMR);
  KeyPath = swift_getKeyPath();
  v44 = v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGMR) + 36);
  *v44 = KeyPath;
  *(v44 + 8) = 0;
  *(v44 + 16) = 0;
  v45 = v70;
  static ListSectionSpacing.custom(_:)();
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGMR) + 36);
  v48 = v71;
  v47 = v72;
  (*(v71 + 16))(v42 + v46, v45, v72);
  v49 = *(v48 + 56);
  v49((v42 + v46), 0, 1, v47);
  v50 = swift_getKeyPath();
  v51 = (v42 + *(v69 + 36));
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMR) + 28);
  (*(v48 + 32))(v51 + v52, v45, v47);
  v53 = v49(v51 + v52, 0, 1, v47);
  *v51 = v50;
  MEMORY[0x28223BE20](v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA07DefaultG5LabelVGG_AKtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA07DefaultG5LabelVGG_AKtGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type TupleToolbarContent<(ToolbarItem<(), Button<DefaultButtonLabel>>, ToolbarItem<(), Button<DefaultButtonLabel>>)> and conformance TupleToolbarContent<A>, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA07DefaultG5LabelVGG_AKtGMd, &_s7SwiftUI19TupleToolbarContentVyAA0D4ItemVyytAA6ButtonVyAA07DefaultG5LabelVGG_AKtGMR, MEMORY[0x277CDDF68]);
  View.toolbar<A>(content:)();
  return outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v42, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGA36_yAA0Z14SectionSpacingVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGA36_yAA0Z14SectionSpacingVSgGGMR);
}

uint64_t closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGMR);
  v81 = *(v3 - 8);
  v82 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = &v63 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGMR);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v70 = &v63 - v9;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAESbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinejI0VQo_AYyAA5ColorVSgGGAWSgGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAESbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinejI0VQo_AYyAA5ColorVSgGGAWSgGMR);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v68 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v63 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v80 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v84 = &v63 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ANSgGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ANSgGMR);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - v20;
  v85 = a1;
  closure #2 in closure #1 in MediaConfigurationRoom.body.getter(a1, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_MR);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextVSgMd, &_s7SwiftUI4TextVSgMR);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ToggleVyAA4TextVGMd, &_s7SwiftUI6ToggleVyAA4TextVGMR);
  v24 = lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type Toggle<Text> and conformance Toggle<A>, &_s7SwiftUI6ToggleVyAA4TextVGMd, &_s7SwiftUI6ToggleVyAA4TextVGMR, MEMORY[0x277CDF068]);
  v86[0] = v23;
  v86[1] = MEMORY[0x277D839B0];
  v86[2] = v24;
  v86[3] = MEMORY[0x277D839C8];
  v25 = 1;
  swift_getOpaqueTypeConformance2();
  v26 = lazy protocol witness table accessor for type Text? and conformance <A> A?();
  v76 = v21;
  v66 = v22;
  v65 = v26;
  Section<>.init(footer:content:)();
  type metadata accessor for MediaConfigurationRoom(0);
  v67 = a1;
  type metadata accessor for MediaConfigurationRoomViewModel(0);
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v87);

  v27 = v87[0];
  LOBYTE(v21) = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();

  if (v21)
  {
    MEMORY[0x28223BE20](v28);
    v29 = v67;
    closure #4 in closure #1 in MediaConfigurationRoom.body.getter(v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinehG0VQo_AWyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinehG0VQo_AWyAA5ColorVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    Section<>.init(footer:content:)();
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v87);

    v30 = v87[0];
    v31 = dispatch thunk of MediaPlaybackConfigurationItem.smartStationEnabled.getter();

    if (v31)
    {
      v33 = 1;
      v34 = v71;
      v35 = v70;
      v36 = v69;
    }

    else
    {
      MEMORY[0x28223BE20](v32);
      LocalizedStringKey.init(stringLiteral:)();
      v35 = v70;
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v37 = WorkoutUIBundle.super.isa;
      v87[0] = Text.init(_:tableName:bundle:comment:)();
      v87[1] = v38;
      v88 = v39 & 1;
      v89 = v40;
      closure #7 in closure #1 in MediaConfigurationRoom.body.getter(v29, v86);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedG0VyAIyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AA4TextVAStGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAD0F6PickerV_SSQo_G_AA08BorderedmK0VQo_AA011_ForegroundK8ModifierVyAA017HierarchicalShapeK0VGGAA022_EnvironmentKeyWritingZ0VyAA10VisibilityOGGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedG0VyAIyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AA4TextVAStGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAD0F6PickerV_SSQo_G_AA08BorderedmK0VQo_AA011_ForegroundK8ModifierVyAA017HierarchicalShapeK0VGGAA022_EnvironmentKeyWritingZ0VyAA10VisibilityOGGtGMR);
      lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedG0VyAIyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AA4TextVAStGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAD0F6PickerV_SSQo_G_AA08BorderedmK0VQo_AA011_ForegroundK8ModifierVyAA017HierarchicalShapeK0VGGAA022_EnvironmentKeyWritingZ0VyAA10VisibilityOGGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedG0VyAIyAA0D0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AA4TextVAStGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAD0F6PickerV_SSQo_G_AA08BorderedmK0VQo_AA011_ForegroundK8ModifierVyAA017HierarchicalShapeK0VGGAA022_EnvironmentKeyWritingZ0VyAA10VisibilityOGGtGMR, MEMORY[0x277CE14C0]);
      v41 = v64;
      Section<>.init(header:footer:content:)();
      v36 = v69;
      v42 = v41;
      v34 = v71;
      (*(v69 + 32))(v35, v42, v71);
      v33 = 0;
    }

    (*(v36 + 56))(v35, v33, 1, v34);
    v43 = v35;
    v44 = v72;
    v45 = *(v72 + 16);
    v46 = v68;
    v47 = v73;
    v45(v68, v13, v73);
    v48 = v74;
    outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(v43, v74, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMR);
    v49 = v75;
    v45(v75, v46, v47);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAESbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinejI0VQo_AYyAA5ColorVSgGGAWSgG_ACyAwA05TupleE0VyAP0nG3RowVSg_AGyAGyAiAE06buttonI0yQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA14NavigationLinkVyAGyAA6HStackVyA15_yAA6SpacerV_AWA26_tGGAA14_PaddingLayoutVGAiAE15navigationTitleyQrqd__SyRd__lFQOyAP0nJ0V_SSQo_G_AA014BorderedButtonI0VQo_AA011_ForegroundiY0VyAA017HierarchicalShapeI0VGGAYyAA10VisibilityOGGtGAWGSgtMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA15ModifiedContentVyAA0E0PAAE11pickerStyleyQrqd__AA06PickerI0Rd__lFQOyAA0J0VyAESbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinejI0VQo_AYyAA5ColorVSgGGAWSgG_ACyAwA05TupleE0VyAP0nG3RowVSg_AGyAGyAiAE06buttonI0yQrqd__AA015PrimitiveButtonI0Rd__lFQOyAA14NavigationLinkVyAGyAA6HStackVyA15_yAA6SpacerV_AWA26_tGGAA14_PaddingLayoutVGAiAE15navigationTitleyQrqd__SyRd__lFQOyAP0nJ0V_SSQo_G_AA014BorderedButtonI0VQo_AA011_ForegroundiY0VyAA017HierarchicalShapeI0VGGAYyAA10VisibilityOGGtGAWGSgtMR);
    outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(v48, v49 + *(v50 + 48), &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMR);
    outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v43, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMR);
    v51 = *(v44 + 8);
    v51(v13, v47);
    outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v48, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB015MediaContentRowVSg_AA08ModifiedI0VyAMyAA0F0PAAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA14NavigationLinkVyAMyAA6HStackVyAGyAA6SpacerV_AeWtGGAA14_PaddingLayoutVGAoAE15navigationTitleyQrqd__SyRd__lFQOyAH0H6PickerV_SSQo_G_AA08BorderedoM0VQo_AA011_ForegroundM8ModifierVyAA017HierarchicalShapeM0VGGAA30_EnvironmentKeyWritingModifierVyAA10VisibilityOGGtGAEGSgMR);
    v51(v46, v47);
    sub_20C6964A4(v49, v84);
    v25 = 0;
  }

  v52 = v84;
  (*(v81 + 56))(v84, v25, 1, v82);
  v53 = v78;
  v54 = *(v78 + 16);
  v55 = v77;
  v56 = v76;
  v57 = v79;
  v54(v77, v76, v79);
  v58 = v80;
  outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(v52, v80, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMR);
  v59 = v83;
  v54(v83, v55, v57);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ANSgG_AA05TupleE0VyACyAeA15ModifiedContentVyAgAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAESbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAVyAnA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineqP0VQo_A8_yAA5ColorVSgGGAQG_ACyAnTyA1_0uN3RowVSg_AVyAVyAgAE06buttonP0yQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA14NavigationLinkVyAVyAA6HStackVyATyAA6SpacerV_ANA34_tGGAA14_PaddingLayoutVGAgAE15navigationTitleyQrqd__SyRd__lFQOyA1_0uQ0V_SSQo_G_AA014BorderedButtonP0VQo_AA011_ForegroundP8ModifierVyAA017HierarchicalShapeP0VGGA8_yAA10VisibilityOGGtGANGSgtGSgtMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ANSgG_AA05TupleE0VyACyAeA15ModifiedContentVyAgAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAESbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAVyAnA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineqP0VQo_A8_yAA5ColorVSgGGAQG_ACyAnTyA1_0uN3RowVSg_AVyAVyAgAE06buttonP0yQrqd__AA015PrimitiveButtonP0Rd__lFQOyAA14NavigationLinkVyAVyAA6HStackVyATyAA6SpacerV_ANA34_tGGAA14_PaddingLayoutVGAgAE15navigationTitleyQrqd__SyRd__lFQOyA1_0uQ0V_SSQo_G_AA014BorderedButtonP0VQo_AA011_ForegroundP8ModifierVyAA017HierarchicalShapeP0VGGA8_yAA10VisibilityOGGtGANGSgtGSgtMR);
  outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(v58, &v59[*(v60 + 48)], &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMR);
  outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v52, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMR);
  v61 = *(v53 + 8);
  v61(v56, v57);
  outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v58, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAA0D0PAAE11pickerStyleyQrqd__AA06PickerJ0Rd__lFQOyAA0K0VyAGSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAkAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinekJ0VQo_A_yAA5ColorVSgGGAYSgG_AEyAyCyAR0oH3RowVSg_AIyAIyAkAE06buttonJ0yQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA14NavigationLinkVyAIyAA6HStackVyACyAA6SpacerV_AYA26_tGGAA14_PaddingLayoutVGAkAE15navigationTitleyQrqd__SyRd__lFQOyAR0oK0V_SSQo_G_AA014BorderedButtonJ0VQo_AA011_ForegroundjZ0VyAA017HierarchicalShapeJ0VGGA_yAA10VisibilityOGGtGAYGSgtGSgMR);
  return (v61)(v55, v57);
}

uint64_t closure #1 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v27 = a2;
  v3 = type metadata accessor for MediaConfigurationRoom(0);
  v4 = v3 - 8;
  v24 = *(v3 - 8);
  v23 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ToggleVyAA4TextVGMd, &_s7SwiftUI6ToggleVyAA4TextVGMR);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v20 = v19 - v8;
  v19[1] = *(a1 + *(v4 + 40) + 16);
  type metadata accessor for MediaConfigurationRoomViewModel(0);
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v9 = v31[0];
  v10 = v31[1];
  v11 = v31[2];
  swift_getKeyPath();
  v28 = v9;
  v29 = v10;
  v30 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore30MediaPlaybackConfigurationItemCGMd, &_s7SwiftUI7BindingVy11WorkoutCore30MediaPlaybackConfigurationItemCGMR);
  Binding.subscript.getter();

  v12 = v20;
  Toggle.init(isOn:label:)();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v31);

  v13 = v31[0];
  LOBYTE(v11) = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();

  LOBYTE(v31[0]) = v11 & 1;
  v14 = v22;
  outlined init with copy of MediaConfigurationRoom(v21, v22);
  v15 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v16 = swift_allocObject();
  outlined init with take of MediaConfigurationRoom(v14, v16 + v15, type metadata accessor for MediaConfigurationRoom);
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type Toggle<Text> and conformance Toggle<A>, &_s7SwiftUI6ToggleVyAA4TextVGMd, &_s7SwiftUI6ToggleVyAA4TextVGMR, MEMORY[0x277CDF068]);
  v17 = v25;
  View.onChange<A>(of:initial:_:)();

  return (*(v26 + 8))(v12, v17);
}

uint64_t closure #1 in closure #1 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

double closure #2 in closure #1 in closure #1 in MediaConfigurationRoom.body.getter(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    v6[5] = v3;
    v6[6] = v4;
    type metadata accessor for MediaConfigurationRoom(0);
    type metadata accessor for MediaConfigurationRoomViewModel(0);
    lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v6);

    dispatch thunk of MusicLibraryPlaylistsModel.loadLibrarySuggestions()();
  }

  return result;
}

uint64_t closure #2 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MediaConfigurationRoom(0);
  type metadata accessor for MediaConfigurationRoomViewModel(0);
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v28);

  v5 = v28;
  v6 = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();

  result = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if ((v6 & 1) == 0)
  {
    v11 = *(a1 + *(v4 + 24));
    v12 = [v11 effectiveTypeIdentifier];
    v13 = [v11 swimmingLocationType];
    v14 = [v11 isIndoor];
    v15 = MEMORY[0x20F30BAD0](0x7361637265776F6CLL, 0xEA00000000005F65);
    v16 = MEMORY[0x20F30D330](v12, v13, v14, 0, v15);

    if (v16)
    {
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = WorkoutUIBundle.super.isa;
    v29._object = 0xE000000000000000;
    v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v21.value._object = 0xEB00000000656C62;
    v22._object = 0x800000020CBA32B0;
    v22._countAndFlagsBits = 0xD000000000000015;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_20CB5DA70;
    *(v24 + 56) = MEMORY[0x277D837D0];
    *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
    if (!v19)
    {
      v25 = [v11 localizedName];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v26;
    }

    *(v24 + 32) = v17;
    *(v24 + 40) = v19;
    String.init(format:_:)();

    lazy protocol witness table accessor for type String and conformance String();
    result = Text.init<A>(_:)();
    v9 = v27 & 1;
  }

  *a2 = result;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  return result;
}

uint64_t closure #3 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v25 = a2;
  v2 = type metadata accessor for InlinePickerStyle();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GGMd, &_s7SwiftUI6PickerVyAA9EmptyViewVSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  type metadata accessor for MediaConfigurationRoom(0);
  type metadata accessor for MediaConfigurationRoomViewModel(0);
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v10 = v36;
  v11 = v37;
  v12 = v38;
  swift_getKeyPath();
  v33 = v10;
  v34 = v11;
  v35 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore30MediaPlaybackConfigurationItemCGMd, &_s7SwiftUI7BindingVy11WorkoutCore30MediaPlaybackConfigurationItemCGMR);
  Binding.subscript.getter();

  v13 = v30;
  v14 = v31;
  v15 = v32;

  v26 = v22;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GMd, &_s7SwiftUI7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GMR);
  lazy protocol witness table accessor for type ForEach<[MediaPlaybackConfigurationType], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type Picker<EmptyView, Bool, ForEach<[MediaPlaybackConfigurationType], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GGMd, &_s7SwiftUI6PickerVyAA9EmptyViewVSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GGMR, MEMORY[0x277CDF038]);
  v16 = v25;
  v17 = v23;
  View.pickerStyle<A>(_:)();
  (*(v24 + 8))(v5, v17);
  (*(v7 + 8))(v9, v6);
  v18 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinehG0VQo_AWyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinehG0VQo_AWyAA5ColorVSgGGMR);
  v21 = (v16 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v18;
  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in MediaConfigurationRoom.body.getter(uint64_t a1)
{
  type metadata accessor for MediaConfigurationRoom(0);
  type metadata accessor for MediaConfigurationRoomViewModel(0);
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v4[4] = v4[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9WorkoutUI30MediaPlaybackConfigurationTypeOGMd, &_sSay9WorkoutUI30MediaPlaybackConfigurationTypeOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_Md, &_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_MR);
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type [MediaPlaybackConfigurationType] and conformance [A], &_sSay9WorkoutUI30MediaPlaybackConfigurationTypeOGMd, &_sSay9WorkoutUI30MediaPlaybackConfigurationTypeOGMR, MEMORY[0x277D83980]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMR);
  v2 = lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
  v4[0] = v1;
  v4[1] = MEMORY[0x277D839B0];
  v4[2] = v2;
  v4[3] = MEMORY[0x277D839C0];
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType();
  return ForEach<>.init(_:content:)();
}

void closure #1 in closure #1 in closure #3 in closure #1 in MediaConfigurationRoom.body.getter(char *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *a1;
  if ((*a1 & 1) == 0)
  {
    LocalizedStringKey.init(stringLiteral:)();
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
LABEL_9:
    swift_once();
  }

LABEL_5:
  swift_beginAccess();
  v3 = WorkoutUIBundle.super.isa;
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  static Color.primary.getter();
  v9 = Text.foregroundColor(_:)();
  v11 = v10;
  v13 = v12;
  v17 = v14;

  outlined consume of Text.Storage(v4, v6, v8 & 1);

  KeyPath = swift_getKeyPath();
  if (v18)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v16 = 1;
  }

  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v17;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 2;
  *(a2 + 48) = 0;
  *(a2 + 49) = v16 & 1;
  *(a2 + 50) = 1;
}

uint64_t closure #4 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MediaConfigurationRoom(0);
  type metadata accessor for MediaConfigurationRoomViewModel(0);
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v16);

  v3 = v16[0];
  v4 = dispatch thunk of MediaPlaybackConfigurationItem.autoPlayEnabled.getter();

  if (v4 & 1) != 0 && (StateObject.wrappedValue.getter(), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(v16), , , , v5 = v16[0], v6 = dispatch thunk of MediaPlaybackConfigurationItem.smartStationEnabled.getter(), v5, (v6))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = WorkoutUIBundle.super.isa;
    v17._object = 0xE000000000000000;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v9._object = 0x800000020CBA3240;
    v9._countAndFlagsBits = 0xD000000000000015;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v17._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v17);

    lazy protocol witness table accessor for type String and conformance String();
    result = Text.init<A>(_:)();
    v15 = v14 & 1;
  }

  else
  {
    result = 0;
    v12 = 0;
    v15 = 0;
    v13 = 0;
  }

  *a2 = result;
  a2[1] = v12;
  a2[2] = v15;
  a2[3] = v13;
  return result;
}

uint64_t closure #5 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v76 = type metadata accessor for BorderedButtonStyle();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_Md, &_s7SwiftUI4ViewPAAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_MR);
  MEMORY[0x28223BE20](v67);
  v66 = &v57 - v4;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGAA14_PaddingLayoutVGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_GMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGAA14_PaddingLayoutVGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_GMR);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v57 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMR);
  MEMORY[0x28223BE20](v70);
  v75 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v57 - v8;
  v62 = type metadata accessor for Font.TextStyle();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for MediaContentRow(0);
  v63 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v60 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A15MediaSuggestionVSgMd, "r2\a");
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v57 - v13);
  v15 = type metadata accessor for WorkoutMediaSuggestion();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI15MediaContentRowVSgMd, &_s9WorkoutUI15MediaContentRowVSgMR);
  MEMORY[0x28223BE20](v19 - 8);
  v64 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v79 = &v57 - v22;
  v23 = type metadata accessor for MediaConfigurationRoom(0);
  v65 = a1;
  type metadata accessor for MediaConfigurationRoomViewModel(0);
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v14);

  v24 = v16;
  v25 = *(v16 + 48);
  v26 = v15;
  if (v25(v14, 1, v15) == 1)
  {
    _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_1(v14, &_s11WorkoutCore0A15MediaSuggestionVSgMd, "r2\a");
    v27 = 1;
    v28 = v79;
  }

  else
  {
    v29 = *(v24 + 32);
    v58 = v18;
    v29(v18, v14, v15);
    v30 = v60;
    (*(v24 + 16))(v60, v18, v26);
    v59 = v23;
    v57 = *(v78 + 20);
    v80 = 0x4044000000000000;
    v31 = *MEMORY[0x277CE0A68];
    v32 = *(v61 + 104);
    v33 = v62;
    v32(v10, v31, v62);
    lazy protocol witness table accessor for type Double and conformance Double();
    ScaledMetric.init(wrappedValue:relativeTo:)();
    v80 = 0x4020000000000000;
    v32(v10, v31, v33);
    v23 = v59;
    ScaledMetric.init(wrappedValue:relativeTo:)();
    (*(v24 + 8))(v58, v26);
    v34 = v79;
    outlined init with take of MediaConfigurationRoom(v30, v79, type metadata accessor for MediaContentRow);
    v27 = 0;
    v28 = v34;
  }

  (*(v63 + 56))(v28, v27, 1, v78);
  v35 = v65;
  v36 = v65 + *(v23 + 36);
  v37 = *v36;
  v38 = *(v36 + 8);
  v84 = v37;
  v85 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  v39 = State.projectedValue.getter();
  MEMORY[0x28223BE20](v39);
  closure #1 in closure #5 in closure #1 in MediaConfigurationRoom.body.getter(v35, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAItGGAA14_PaddingLayoutVGMR);
  lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v40 = type metadata accessor for MediaPicker(255);
  v41 = lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaPicker and conformance MediaPicker, type metadata accessor for MediaPicker, &protocol conformance descriptor for MediaPicker);
  v42 = lazy protocol witness table accessor for type String and conformance String();
  v80 = v40;
  v81 = MEMORY[0x277D837D0];
  v82 = v41;
  v83 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v68;
  NavigationLink.init(destination:isActive:label:)();
  v44 = v73;
  BorderedButtonStyle.init()();
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type NavigationLink<ModifiedContent<HStack<TupleView<(Spacer, Text, Spacer)>>, _PaddingLayout>, <<opaque return type of View.navigationTitle<A>(_:)>>.0> and conformance NavigationLink<A, B>, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGAA14_PaddingLayoutVGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_GMd, &_s7SwiftUI14NavigationLinkVyAA15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA4TextVAKtGGAA14_PaddingLayoutVGAA0I0PAAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_GMR, MEMORY[0x277CDD938]);
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v45 = v71;
  v46 = v72;
  v47 = v76;
  View.buttonStyle<A>(_:)();
  (*(v74 + 8))(v44, v47);
  (*(v69 + 8))(v43, v45);
  v48 = static HierarchicalShapeStyle.secondary.getter();
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGMR) + 36)) = v48;
  KeyPath = swift_getKeyPath();
  v50 = v46 + *(v70 + 36);
  *v50 = KeyPath;
  *(v50 + 8) = 2;
  v51 = v79;
  v52 = v64;
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_3(v79, v64, &_s9WorkoutUI15MediaContentRowVSgMd, &_s9WorkoutUI15MediaContentRowVSgMR);
  v53 = v75;
  outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(v46, v75, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMR);
  v54 = v77;
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_3(v52, v77, &_s9WorkoutUI15MediaContentRowVSgMd, &_s9WorkoutUI15MediaContentRowVSgMR);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI15MediaContentRowVSg_05SwiftB008ModifiedD0VyAGyAE4ViewPAEE11buttonStyleyQrqd__AE015PrimitiveButtonJ0Rd__lFQOyAE14NavigationLinkVyAGyAE6HStackVyAE05TupleH0VyAE6SpacerV_AE4TextVAStGGAE14_PaddingLayoutVGAiEE15navigationTitleyQrqd__SyRd__lFQOyAA0C6PickerV_SSQo_G_AE08BorderedlJ0VQo_AE011_ForegroundJ8ModifierVyAE017HierarchicalShapeJ0VGGAE022_EnvironmentKeyWritingZ0VyAE10VisibilityOGGtMd, &_s9WorkoutUI15MediaContentRowVSg_05SwiftB008ModifiedD0VyAGyAE4ViewPAEE11buttonStyleyQrqd__AE015PrimitiveButtonJ0Rd__lFQOyAE14NavigationLinkVyAGyAE6HStackVyAE05TupleH0VyAE6SpacerV_AE4TextVAStGGAE14_PaddingLayoutVGAiEE15navigationTitleyQrqd__SyRd__lFQOyAA0C6PickerV_SSQo_G_AE08BorderedlJ0VQo_AE011_ForegroundJ8ModifierVyAE017HierarchicalShapeJ0VGGAE022_EnvironmentKeyWritingZ0VyAE10VisibilityOGGtMR);
  outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(v53, v54 + *(v55 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMR);
  outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v46, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMR);
  _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_1(v51, &_s9WorkoutUI15MediaContentRowVSgMd, &_s9WorkoutUI15MediaContentRowVSgMR);
  outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(v53, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAA05TupleE0VyAA6SpacerV_AA4TextVAOtGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOy07WorkoutB011MediaPickerV_SSQo_G_AA08BorderediG0VQo_AA011_ForegroundG8ModifierVyAA017HierarchicalShapeG0VGGAA022_EnvironmentKeyWritingY0VyAA10VisibilityOGGMR);
  return _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_1(v52, &_s9WorkoutUI15MediaContentRowVSgMd, &_s9WorkoutUI15MediaContentRowVSgMR);
}

uint64_t closure #1 in closure #5 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = type metadata accessor for MediaPicker(0);
  MEMORY[0x28223BE20](v25);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MediaConfigurationRoom(0);
  v6 = *(a1 + *(v5 + 24));
  type metadata accessor for MediaConfigurationRoomViewModel(0);
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
  v24 = v6;
  v23 = StateObject.wrappedValue.getter();
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v7 = v31;
  v22 = v32;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  v8 = v25;
  ObservedObject.Wrapper.subscript.getter();

  v9 = (a1 + *(v5 + 36));
  v10 = *v9;
  v11 = *(v9 + 1);
  v29 = v10;
  v30 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  countAndFlagsBits = v27._countAndFlagsBits;
  object = v27._object;
  LOBYTE(v6) = v28;
  *v4 = v24;
  *(v4 + 1) = ObservedObject.init(wrappedValue:)();
  *(v4 + 2) = v14;
  *(v4 + 3) = v7;
  *(v4 + 2) = v22;
  v15 = &v4[*(v8 + 32)];
  *v15 = countAndFlagsBits;
  *(v15 + 1) = object;
  v15[16] = v6;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = WorkoutUIBundle.super.isa;
  v33._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0x414944454DLL;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v17._object = 0xE500000000000000;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v33);

  v27 = v20;
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaPicker and conformance MediaPicker, type metadata accessor for MediaPicker, &protocol conformance descriptor for MediaPicker);
  lazy protocol witness table accessor for type String and conformance String();
  View.navigationTitle<A>(_:)();

  return outlined destroy of MediaPicker(v4);
}

void closure #2 in closure #5 in closure #1 in MediaConfigurationRoom.body.getter(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  closure #1 in closure #2 in closure #5 in closure #1 in MediaConfigurationRoom.body.getter(v10);
  *&v9[7] = v10[0];
  *&v9[23] = v10[1];
  *&v9[39] = v11[0];
  *&v9[48] = *(v11 + 9);
  v4 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  *(a2 + 17) = *v9;
  *(a2 + 33) = *&v9[16];
  *(a2 + 49) = *&v9[32];
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 65) = *&v9[48];
  *(a2 + 88) = v4;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  *(a2 + 112) = v7;
  *(a2 + 120) = v8;
  *(a2 + 128) = 0;
}

double closure #1 in closure #2 in closure #5 in closure #1 in MediaConfigurationRoom.body.getter@<D0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for Font.Leading();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A15MediaSuggestionVSgMd, "r2\a");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v38 - v6);
  type metadata accessor for MediaConfigurationRoom(0);
  type metadata accessor for MediaConfigurationRoomViewModel(0);
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  v8 = type metadata accessor for WorkoutMediaSuggestion();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_1(v7, &_s11WorkoutCore0A15MediaSuggestionVSgMd, "r2\a");
  if (v9 == 1)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v37 = 0xE000000000000000;
    v11 = 0x4944454D5F444441;
    v12 = 0xE900000000000041;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v10 = WorkoutUIBundle.super.isa;
    v37 = 0xE000000000000000;
    v11 = 0x4D5F45474E414843;
    v12 = 0xEC00000041494445;
  }

  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15 = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, v13, v10, v14, *(&v37 - 1));

  v41 = v16;
  lazy protocol witness table accessor for type String and conformance String();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  static Color.accentColor.getter();
  v22 = Text.foregroundColor(_:)();
  v24 = v23;
  v26 = v25;

  outlined consume of Text.Storage(v17, v19, v21 & 1);

  static Font.body.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v28 = v38;
  v27 = v39;
  v29 = v40;
  (*(v39 + 104))(v38, *MEMORY[0x277CE0A10], v40);
  Font.leading(_:)();

  (*(v27 + 8))(v28, v29);
  v30 = Text.font(_:)();
  v32 = v31;
  LOBYTE(v27) = v33;
  v35 = v34;

  outlined consume of Text.Storage(v22, v24, v26 & 1);

  LOBYTE(v41._countAndFlagsBits) = 1;
  v43 = v27 & 1;
  v42 = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v30;
  *(a2 + 24) = v32;
  *(a2 + 32) = v27 & 1;
  *(a2 + 40) = v35;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  outlined copy of Text.Storage(v30, v32, v27 & 1);

  outlined consume of Text.Storage(v30, v32, v27 & 1);

  return result;
}

uint64_t closure #7 in closure #1 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for MediaConfigurationRoom(0) + 24));
  v4 = [v3 effectiveTypeIdentifier];
  v5 = [v3 swimmingLocationType];
  v6 = [v3 isIndoor];
  v7 = MEMORY[0x20F30BAD0](0x7361637265776F6CLL, 0xEA00000000005F65);
  v8 = MEMORY[0x20F30D330](v4, v5, v6, 0, v7);

  if (v8)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = WorkoutUIBundle.super.isa;
  v23._object = 0xE000000000000000;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._object = 0x800000020CBA3220;
  v14._countAndFlagsBits = 0xD000000000000013;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v13, v12, v15, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CB5DA70;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
  if (!v11)
  {
    v17 = [v3 localizedName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v18;
  }

  *(v16 + 32) = v9;
  *(v16 + 40) = v11;
  String.init(format:_:)();

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v20;
  *(a2 + 16) = v21 & 1;
  *(a2 + 24) = v22;
  return result;
}

uint64_t closure #2 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = type metadata accessor for MediaConfigurationRoom(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = v5;
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Alert.Button();
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v52 = &v38 - v10;
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = WorkoutUIBundle.super.isa;
  v12 = Text.init(_:tableName:bundle:comment:)();
  v47 = v13;
  v48 = v12;
  v45 = v14;
  v46 = v15;
  LocalizedStringKey.init(stringLiteral:)();
  v16 = WorkoutUIBundle.super.isa;
  v17 = Text.init(_:tableName:bundle:comment:)();
  v43 = v18;
  v44 = v17;
  v41 = v19 & 1;
  v42 = v20;
  LocalizedStringKey.init(stringLiteral:)();
  v21 = WorkoutUIBundle.super.isa;
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  v26 = v25;
  outlined init with copy of MediaConfigurationRoom(a1, v6);
  v27 = *(v4 + 80);
  v28 = v6;
  v29 = (v27 + 16) & ~v27;
  v30 = swift_allocObject();
  v39 = a1;
  v40 = type metadata accessor for MediaConfigurationRoom;
  outlined init with take of MediaConfigurationRoom(v28, v30 + v29, type metadata accessor for MediaConfigurationRoom);
  static Alert.Button.destructive(_:action:)();
  outlined consume of Text.Storage(v22, v24, v26 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v31 = WorkoutUIBundle.super.isa;
  v32 = Text.init(_:tableName:bundle:comment:)();
  v34 = v33;
  LOBYTE(v22) = v35;
  outlined init with copy of MediaConfigurationRoom(v39, v28);
  v36 = swift_allocObject();
  outlined init with take of MediaConfigurationRoom(v28, v36 + v29, v40);
  static Alert.Button.default(_:action:)();
  outlined consume of Text.Storage(v32, v34, v22 & 1);

  return Alert.init(title:message:primaryButton:secondaryButton:)();
}

uint64_t closure #1 in closure #2 in MediaConfigurationRoom.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = (a1 + *(type metadata accessor for MediaConfigurationRoom(0) + 44));
  v7 = *v6;
  v8 = *(v6 + 1);
  v10[16] = v7;
  v11 = v8;
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  type metadata accessor for MediaConfigurationRoomViewModel(0);
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
  *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_shouldPresentNoMediaSelectionAlert) = 0;

  MediaConfigurationRoom.dismiss.getter(v5);
  DismissAction.callAsFunction()();
  return (*(v3 + 8))(v5, v2);
}

double closure #2 in closure #2 in MediaConfigurationRoom.body.getter(uint64_t a1)
{
  type metadata accessor for MediaConfigurationRoom(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  type metadata accessor for MediaConfigurationRoomViewModel(0);
  lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
  *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_shouldPresentNoMediaSelectionAlert) = 0;

  return result;
}

uint64_t closure #3 in MediaConfigurationRoom.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for MediaConfigurationRoom(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  outlined init with copy of MediaConfigurationRoom(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  outlined init with take of MediaConfigurationRoom(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for MediaConfigurationRoom);
  return Button<>.init(_:action:)();
}

uint64_t closure #1 in closure #3 in MediaConfigurationRoom.body.getter(uint64_t a1)
{
  type metadata accessor for MediaConfigurationRoom(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  return State.wrappedValue.setter();
}

double closure #4 in MediaConfigurationRoom.body.getter@<D0>(uint64_t a2@<X8>)
{
  static Platform.current.getter();
  Platform.rawValue.getter();
  Platform.rawValue.getter();
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t closure #5 in MediaConfigurationRoom.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGG_AItMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGG_AItMR);
  MEMORY[0x28223BE20](v17[0]);
  v4 = v17 - v3;
  v5 = type metadata accessor for ToolbarItemPlacement();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMd, &_s7SwiftUI11ToolbarItemVyytAA6ButtonVyAA07DefaultE5LabelVGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v17 - v11;
  static ToolbarItemPlacement.cancellationAction.getter();
  v17[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR);
  lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type Button<DefaultButtonLabel> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMd, &_s7SwiftUI6ButtonVyAA07DefaultC5LabelVGMR, MEMORY[0x277CDF028]);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v17[4] = a1;
  ToolbarItem<>.init(placement:content:)();
  v13 = *(v17[0] + 48);
  v14 = *(v7 + 16);
  v14(v4, v12, v6);
  v14(&v4[v13], v9, v6);
  TupleToolbarContent.init(_:)();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v12, v6);
}

uint64_t closure #1 in closure #5 in MediaConfigurationRoom.body.getter(uint64_t a1, void (*a2)(double), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MediaConfigurationRoom(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = type metadata accessor for ButtonRole();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v11);
  outlined init with copy of MediaConfigurationRoom(a1, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  outlined init with take of MediaConfigurationRoom(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for MediaConfigurationRoom);
  return MEMORY[0x20F30AF90](v13, a4, v15);
}

double closure #1 in closure #2 in closure #5 in MediaConfigurationRoom.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for MediaConfigurationRoom(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  outlined init with copy of MediaConfigurationRoom(a1, v5);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  outlined init with take of MediaConfigurationRoom(v5, v12 + v11, type metadata accessor for MediaConfigurationRoom);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in MediaConfigurationRoom.confirmSelection(), v12);

  return result;
}

uint64_t closure #1 in MediaConfigurationRoom.confirmSelection()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = type metadata accessor for MediaConfigurationRoom(0);
  v4[20] = v7;
  v8 = *(v7 - 8);
  v4[21] = v8;
  v4[22] = *(v8 + 64);
  v4[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[25] = v10;
  v4[26] = v9;

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoom.confirmSelection(), v10, v9);
}

uint64_t closure #1 in MediaConfigurationRoom.confirmSelection()()
{
  v1 = *(v0 + 104) + *(*(v0 + 160) + 32);
  *(v0 + 216) = *v1;
  *(v0 + 224) = *(v1 + 8);
  *(v0 + 266) = *(v1 + 16);
  *(v0 + 232) = type metadata accessor for MediaConfigurationRoomViewModel(0);
  *(v0 + 240) = lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
  *(v0 + 248) = StateObject.wrappedValue.getter();
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = closure #1 in MediaConfigurationRoom.confirmSelection();

  return MediaConfigurationRoomViewModel.updateMediaConfiguration()();
}

{
  v1 = *v0;

  v2 = *(v1 + 208);
  v3 = *(v1 + 200);

  return MEMORY[0x2822009F8](closure #1 in MediaConfigurationRoom.confirmSelection(), v3, v2);
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 104);

  v3 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC9WorkoutUI31MediaConfigurationRoomViewModel_shouldPresentNoMediaSelectionAlert);

  v4 = (v2 + *(v1 + 44));
  v5 = *v4;
  v6 = *(v4 + 1);
  *(v0 + 64) = *v4;
  *(v0 + 72) = v6;
  *(v0 + 264) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  *(v0 + 80) = v5;
  *(v0 + 88) = v6;
  State.wrappedValue.getter();
  if ((*(v0 + 265) & 1) == 0)
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    v9 = *(v0 + 152);
    v10 = *(v0 + 128);
    v20 = *(v0 + 144);
    v21 = *(v0 + 136);
    v11 = *(v0 + 112);
    v19 = *(v0 + 120);
    v12 = *(v0 + 104);
    _sSo23FIUIWorkoutActivityTypeCMaTm_12(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v18 = static OS_dispatch_queue.main.getter();
    outlined init with copy of MediaConfigurationRoom(v12, v7);
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    outlined init with take of MediaConfigurationRoom(v7, v14 + v13, type metadata accessor for MediaConfigurationRoom);
    *(v0 + 48) = partial apply for closure #1 in closure #1 in MediaConfigurationRoom.confirmSelection();
    *(v0 + 56) = v14;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(v0 + 40) = &block_descriptor_39;
    v15 = _Block_copy((v0 + 16));
    static DispatchQoS.unspecified.getter();
    *(v0 + 96) = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F30C1F0](0, v9, v10, v15);
    _Block_release(v15);

    (*(v19 + 8))(v10, v11);
    (*(v20 + 8))(v9, v21);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t closure #1 in closure #1 in closure #5 in MediaConfigurationRoom.body.getter(uint64_t a1)
{
  v15 = type metadata accessor for EnvironmentValues();
  v2 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_3(a1, v7, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t MediaPlaybackConfigurationType.id.getter()
{
  if (*v0)
  {
    return 0x65536D6F74737563;
  }

  else
  {
    return 0x6174537472616D73;
  }
}

WorkoutUI::MediaPlaybackConfigurationType_optional __swiftcall MediaPlaybackConfigurationType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MediaPlaybackConfigurationType.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType()
{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationType and conformance MediaPlaybackConfigurationType);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MediaPlaybackConfigurationType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance MediaPlaybackConfigurationType(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MediaPlaybackConfigurationType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance MediaPlaybackConfigurationType(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MediaPlaybackConfigurationType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MediaPlaybackConfigurationType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65536D6F74737563;
  }

  else
  {
    v3 = 0x6174537472616D73;
  }

  if (v2)
  {
    v4 = 0xEC0000006E6F6974;
  }

  else
  {
    v4 = 0xEF6E6F697463656CLL;
  }

  if (*a2)
  {
    v5 = 0x65536D6F74737563;
  }

  else
  {
    v5 = 0x6174537472616D73;
  }

  if (*a2)
  {
    v6 = 0xEF6E6F697463656CLL;
  }

  else
  {
    v6 = 0xEC0000006E6F6974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t getEnumTagSinglePayload for MediaPlaybackConfigurationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaPlaybackConfigurationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for MediaConfigurationRoom(uint64_t a1)
{
  result = type metadata singleton initialization cache for MediaConfigurationRoom;
  if (!type metadata singleton initialization cache for MediaConfigurationRoom)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MediaConfigurationRoom(uint64_t a1)
{
  _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_4(319, &lazy cache variable for type metadata for Environment<DismissAction>, MEMORY[0x277CDD848]);
  if (v1 <= 0x3F)
  {
    _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_4(319, &lazy cache variable for type metadata for Environment<LayoutDirection>, MEMORY[0x277CDFAA0]);
    if (v2 <= 0x3F)
    {
      _sSo23FIUIWorkoutActivityTypeCMaTm_12(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MediaPlaybackStore();
        if (v4 <= 0x3F)
        {
          type metadata accessor for StateObject<MediaConfigurationRoomViewModel>(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for State<Bool>();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void _s7SwiftUI11EnvironmentVyAA13DismissActionVGMaTm_4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for StateObject<MediaConfigurationRoomViewModel>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateObject<MediaConfigurationRoomViewModel>)
  {
    type metadata accessor for MediaConfigurationRoomViewModel(255);
    lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(&lazy protocol witness table cache variable for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel, type metadata accessor for MediaConfigurationRoomViewModel, &protocol conformance descriptor for MediaConfigurationRoomViewModel);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StateObject<MediaConfigurationRoomViewModel>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEAfG7contentQrAN_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A6_SgG_AWyAYyA_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA6_AA012_EnvironmentM15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A24_yAA5ColorVSgGGA9_G_AYyA6_AWyA17_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAWyAA6SpacerV_A6_A50_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA17_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA24_yAA10VisibilityOGGtGA6_GSgtGSgtGG_Qo__AA6ButtonVyA6_GAA012_ConditionalD0VyA6_A6_GQo_A17_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEAfG7contentQrAN_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A6_SgG_AWyAYyA_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA6_AA012_EnvironmentM15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A24_yAA5ColorVSgGGA9_G_AYyA6_AWyA17_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAWyAA6SpacerV_A6_A50_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA17_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA24_yAA10VisibilityOGGtGA6_GSgtGSgtGG_Qo__AA6ButtonVyA6_GAA012_ConditionalD0VyA6_A6_GQo_A17_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A0_SgG_AQyASyAuA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerX0Rd__lFQOyAA0Y0VyAUSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA6_yA0_AA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineyX0VQo_A20_yAA5ColorVSgGGA3_G_ASyA0_AQyA13_05MediaV3RowVSg_A6_yA6_yAcAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyAA14NavigationLinkVyA6_yAA6HStackVyAQyAA6SpacerV_A0_A46_tGGAA14_PaddingLayoutVGAcAE15navigationTitleyQrqd__SyRd__lFQOyA13_05MediaY0V_SSQo_G_AA014BorderedButtonX0VQo_AA011_ForegroundX8ModifierVyAA017HierarchicalShapeX0VGGA20_yAA10VisibilityOGGtGA0_GSgtGSgtGG_Qo_Md, &_s7SwiftUI4ViewPAAE5alert11isPresented7contentQrAA7BindingVySbG_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A0_SgG_AQyASyAuA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerX0Rd__lFQOyAA0Y0VyAUSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyA6_yA0_AA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlineyX0VQo_A20_yAA5ColorVSgGGA3_G_ASyA0_AQyA13_05MediaV3RowVSg_A6_yA6_yAcAE06buttonX0yQrqd__AA015PrimitiveButtonX0Rd__lFQOyAA14NavigationLinkVyA6_yAA6HStackVyAQyAA6SpacerV_A0_A46_tGGAA14_PaddingLayoutVGAcAE15navigationTitleyQrqd__SyRd__lFQOyA13_05MediaY0V_SSQo_G_AA014BorderedButtonX0VQo_AA011_ForegroundX8ModifierVyAA017HierarchicalShapeX0VGGA20_yAA10VisibilityOGGtGA0_GSgtGSgtGG_Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ATSgG_AGyAIyAkA15ModifiedContentVyAmAE11pickerStyleyQrqd__AA06PickerR0Rd__lFQOyAA0S0VyAKSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZyAtA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinesR0VQo_A12_yAA5ColorVSgGGAWG_AIyAtGyA5_0wP3RowVSg_AZyAZyAmAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA14NavigationLinkVyAZyAA6HStackVyAGyAA6SpacerV_ATA38_tGGAA14_PaddingLayoutVGAmAE15navigationTitleyQrqd__SyRd__lFQOyA5_0wS0V_SSQo_G_AA014BorderedButtonR0VQo_AA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGA12_yAA10VisibilityOGGtGATGSgtGSgtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ATSgG_AGyAIyAkA15ModifiedContentVyAmAE11pickerStyleyQrqd__AA06PickerR0Rd__lFQOyAA0S0VyAKSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZyAtA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinesR0VQo_A12_yAA5ColorVSgGGAWG_AIyAtGyA5_0wP3RowVSg_AZyAZyAmAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA14NavigationLinkVyAZyAA6HStackVyAGyAA6SpacerV_ATA38_tGGAA14_PaddingLayoutVGAmAE15navigationTitleyQrqd__SyRd__lFQOyA5_0wS0V_SSQo_G_AA014BorderedButtonR0VQo_AA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGA12_yAA10VisibilityOGGtGATGSgtGSgtGGMR);
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type List<Never, TupleView<(Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, Text?>, TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ATSgG_AGyAIyAkA15ModifiedContentVyAmAE11pickerStyleyQrqd__AA06PickerR0Rd__lFQOyAA0S0VyAKSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZyAtA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinesR0VQo_A12_yAA5ColorVSgGGAWG_AIyAtGyA5_0wP3RowVSg_AZyAZyAmAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA14NavigationLinkVyAZyAA6HStackVyAGyAA6SpacerV_ATA38_tGGAA14_PaddingLayoutVGAmAE15navigationTitleyQrqd__SyRd__lFQOyA5_0wS0V_SSQo_G_AA014BorderedButtonR0VQo_AA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGA12_yAA10VisibilityOGGtGATGSgtGSgtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyF0VAA0F0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_ATSgG_AGyAIyAkA15ModifiedContentVyAmAE11pickerStyleyQrqd__AA06PickerR0Rd__lFQOyAA0S0VyAKSbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAZyAtA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GG_AA06InlinesR0VQo_A12_yAA5ColorVSgGGAWG_AIyAtGyA5_0wP3RowVSg_AZyAZyAmAE06buttonR0yQrqd__AA015PrimitiveButtonR0Rd__lFQOyAA14NavigationLinkVyAZyAA6HStackVyAGyAA6SpacerV_ATA38_tGGAA14_PaddingLayoutVGAmAE15navigationTitleyQrqd__SyRd__lFQOyA5_0wS0V_SSQo_G_AA014BorderedButtonR0VQo_AA011_ForegroundR8ModifierVyAA017HierarchicalShapeR0VGGA12_yAA10VisibilityOGGtGATGSgtGSgtGGMR, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type Button<Text> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR, MEMORY[0x277CDF028]);
    lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type InlineNavigationBarTitle and conformance InlineNavigationBarTitle();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGA36_yAA0Z14SectionSpacingVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGA36_yAA0Z14SectionSpacingVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListSectionSpacing?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA18ListSectionSpacingVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>>, _EnvironmentKeyWritingModifier<ListSectionSpacing?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGAA21_TraitWritingModifierVyAA0z19SectionSpacingTraitW0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type _TraitWritingModifier<ListSectionSpacingTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA018ListSectionSpacingC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>>, _TraitWritingModifier<ListSectionSpacingTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyACyAeAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEArS0F0QrAZ_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A18_SgG_A7_yA9_yA11_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA11_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA18_AA012_EnvironmentW15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A36_yAA5ColorVSgGGA21_G_A9_yA18_A7_yA29_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyA7_yAA6SpacerV_A18_A62_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA29_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA36_yAA10VisibilityOGGtGA18_GSgtGSgtGG_Qo__AA6ButtonVyA18_GAA012_ConditionalD0VyA18_A18_GQo_A29_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVG_Qo_A36_yAOGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEAfG7contentQrAN_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A6_SgG_AWyAYyA_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA6_AA012_EnvironmentM15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A24_yAA5ColorVSgGGA9_G_AYyA6_AWyA17_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAWyAA6SpacerV_A6_A50_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA17_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA24_yAA10VisibilityOGGtGA6_GSgtGSgtGG_Qo__AA6ButtonVyA6_GAA012_ConditionalD0VyA6_A6_GQo_A17_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE5alert_11isPresented7actions7messageQrAA18LocalizedStringKeyV_AA7BindingVySbGqd__yXEqd_0_yXEtAaDRd__AaDRd_0_r0_lFQOyAeAEAfG7contentQrAN_AA5AlertVyXEtFQOyAA4ListVys5NeverOAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA6ToggleVyAA4TextVG_SbQo_A6_SgG_AWyAYyA_ACyAeAE11pickerStyleyQrqd__AA11PickerStyleRd__lFQOyAA6PickerVyA_SbAA7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyACyA6_AA012_EnvironmentM15WritingModifierVySiSgGG_SbQo_GG_AA17InlinePickerStyleVQo_A24_yAA5ColorVSgGGA9_G_AYyA6_AWyA17_05MediaD3RowVSg_ACyACyAeAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA14NavigationLinkVyACyAA6HStackVyAWyAA6SpacerV_A6_A50_tGGAA14_PaddingLayoutVGAeAE15navigationTitleyQrqd__SyRd__lFQOyA17_11MediaPickerV_SSQo_G_AA19BorderedButtonStyleVQo_AA24_ForegroundStyleModifierVyAA22HierarchicalShapeStyleVGGA24_yAA10VisibilityOGGtGA6_GSgtGSgtGG_Qo__AA6ButtonVyA6_GAA012_ConditionalD0VyA6_A6_GQo_A17_24InlineNavigationBarTitle33_B86241820663BC1B3220D14BE7395977LLVGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, _EnvironmentKeyWritingModifier<CGFloat?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of MediaConfigurationRoom(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaConfigurationRoom(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in MediaConfigurationRoom.confirmSelection()(uint64_t a1)
{
  v4 = *(type metadata accessor for MediaConfigurationRoom(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in MediaConfigurationRoom.confirmSelection();

  return closure #1 in MediaConfigurationRoom.confirmSelection()(a1, v6, v7, v1 + v5);
}

uint64_t partial apply for closure #1 in MediaConfigurationRoom.confirmSelection()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_12(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in closure #5 in MediaConfigurationRoom.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MediaConfigurationRoom(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t lazy protocol witness table accessor for type MediaConfigurationRoomViewModel and conformance MediaConfigurationRoomViewModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GWOcTm_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of TupleView<(Section<EmptyView, ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Color?>>, Text?>, Section<Text, TupleView<(MediaContentRow?, ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)>, Text>?)>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<<<opaque return type of View.alert<A, B>(_:isPresented:actions:message:)>>.0, InlineNavigationBarTitle>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s11WorkoutCore0A15MediaSuggestionVSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of MediaConfigurationRoom(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of MediaPicker(uint64_t a1)
{
  v2 = type metadata accessor for MediaPicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ForEach<[MediaPlaybackConfigurationType], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<[MediaPlaybackConfigurationType], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<[MediaPlaybackConfigurationType], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GMd, &_s7SwiftUI7ForEachVySay07WorkoutB030MediaPlaybackConfigurationTypeOGSSAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGG_SbQo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<[MediaPlaybackConfigurationType], String, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MediaPlaybackConfigurationType] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroyTm_84()
{
  v1 = type metadata accessor for MediaConfigurationRoom(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for DismissAction();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for LayoutDirection();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  outlined consume of StateObject<MediaConfigurationRoomViewModel>.Storage(*(v3 + v1[8]), *(v3 + v1[8] + 8));

  return swift_deallocObject();
}

double partial apply for closure #2 in closure #1 in closure #1 in MediaConfigurationRoom.body.getter(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for MediaConfigurationRoom(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #2 in closure #1 in closure #1 in MediaConfigurationRoom.body.getter(a1, a2, v6);
}

void WorkoutBuddyInSessionTitleView.init(metricsPublisher:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  MetricsPublisher.workoutBuddyStatePublisher.getter();
  type metadata accessor for WorkoutBuddyStatePublisher();
  lazy protocol witness table accessor for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher, MEMORY[0x277D7DBD0], MEMORY[0x277D7DBC8]);
  v4 = ObservedObject.init(wrappedValue:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t WorkoutBuddyInSessionTitleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WorkoutBuddyStatusView(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  WorkoutBuddyStatePublisher.state.getter();

  *v4 = swift_getKeyPath();
  v4[8] = 0;

  v5 = WorkoutBuddyStatePublisher.supportsWorkoutBuddy.getter();

  if (v5)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  outlined init with take of WorkoutBuddyStatusView(v4, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_OpacityEffectVGMR);
  *(a1 + *(result + 36)) = v6;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance WorkoutBuddyInSessionTitleView@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WorkoutBuddyStatusView(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  WorkoutBuddyStatePublisher.state.getter();

  *v4 = swift_getKeyPath();
  v4[8] = 0;

  v5 = WorkoutBuddyStatePublisher.supportsWorkoutBuddy.getter();

  if (v5)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  outlined init with take of WorkoutBuddyStatusView(v4, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_OpacityEffectVGMR);
  *(a1 + *(result + 36)) = v6;
  return result;
}

uint64_t outlined init with take of WorkoutBuddyStatusView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutBuddyStatusView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for WorkoutBuddyInSessionTitleView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for WorkoutBuddyInSessionTitleView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<WorkoutBuddyStatusView, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<WorkoutBuddyStatusView, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<WorkoutBuddyStatusView, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB00E15BuddyStatusViewVAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type WorkoutBuddyStatusView and conformance WorkoutBuddyStatusView, type metadata accessor for WorkoutBuddyStatusView, &protocol conformance descriptor for WorkoutBuddyStatusView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<WorkoutBuddyStatusView, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutBuddyStatePublisher and conformance WorkoutBuddyStatePublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WorkoutConfigurationDataSourceModifier.init(workoutConfiguration:canUpdateConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource();
  result = EnvironmentObject.init()();
  *a5 = result;
  *(a5 + 8) = v11;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource()
{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource)
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource);
  }

  return result;
}

uint64_t WorkoutConfigurationDataSourceModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v12 = *v2;
  v13[0] = v5;
  *(v13 + 9) = *(v2 + 25);
  v6 = swift_allocObject();
  v7 = v2[1];
  v6[1] = *v2;
  v6[2] = v7;
  *(v6 + 41) = *(v2 + 25);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00f23ConfigurationDataSourceD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00f23ConfigurationDataSourceD0VGMR);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00g23ConfigurationDataSourceF0VGAA017_AppearanceActionF0VGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00g23ConfigurationDataSourceF0VGAA017_AppearanceActionF0VGMR) + 36));
  *v9 = 0;
  v9[1] = 0;
  v9[2] = partial apply for closure #1 in WorkoutConfigurationDataSourceModifier.body(content:);
  v9[3] = v6;
  return outlined init with copy of WorkoutConfigurationDataSourceModifier(&v12, &v11);
}

void closure #1 in WorkoutConfigurationDataSourceModifier.body(content:)(uint64_t a1)
{
  v13 = *(a1 + 24);
  v14 = *(a1 + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x20F30B100](&v12, v2);
  if (v12 == 1)
  {
    v3 = *(a1 + 16);
    valid = dispatch thunk of WorkoutConfiguration.isValidConfiguration.getter();
    v5 = *a1;
    if (valid)
    {
      if (v5)
      {
        v6 = v5;
        v7 = WorkoutConfigurationDataSource.workoutConfigurations.getter();

        *&v13 = v3;
        MEMORY[0x28223BE20](v8);
        v11[2] = &v13;
        v9 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_Say11WorkoutCore0C13ConfigurationCG_TG5TA_0, v11, v7);

        if ((v9 & 1) == 0)
        {
          return;
        }

        v10 = v6;
        WorkoutConfigurationDataSource.save(workoutConfiguration:)();
        goto LABEL_8;
      }
    }

    else if (v5)
    {
      v10 = v5;
      WorkoutConfigurationDataSource.invalidate(workoutConfiguration:)();
LABEL_8:

      return;
    }

    type metadata accessor for WorkoutConfigurationDataSource();
    lazy protocol witness table accessor for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource();
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance WorkoutConfigurationDataSourceModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v12 = *v2;
  v13[0] = v5;
  *(v13 + 9) = *(v2 + 25);
  v6 = swift_allocObject();
  v7 = v2[1];
  v6[1] = *v2;
  v6[2] = v7;
  *(v6 + 41) = *(v2 + 25);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00f23ConfigurationDataSourceD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00f23ConfigurationDataSourceD0VGMR);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00g23ConfigurationDataSourceF0VGAA017_AppearanceActionF0VGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00g23ConfigurationDataSourceF0VGAA017_AppearanceActionF0VGMR) + 36));
  *v9 = 0;
  v9[1] = 0;
  v9[2] = closure #1 in WorkoutConfigurationDataSourceModifier.body(content:)partial apply;
  v9[3] = v6;
  return outlined init with copy of WorkoutConfigurationDataSourceModifier(&v12, &v11);
}

uint64_t getEnumTagSinglePayload for WorkoutConfigurationDataSourceModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for WorkoutConfigurationDataSourceModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WorkoutConfigurationDataSourceModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WorkoutConfigurationDataSourceModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WorkoutConfigurationDataSourceModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00g23ConfigurationDataSourceF0VGAA017_AppearanceActionF0VGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB00g23ConfigurationDataSourceF0VGAA017_AppearanceActionF0VGMR);
    lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationDataSourceModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WorkoutConfigurationDataSourceModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WorkoutConfigurationDataSourceModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutConfigurationDataSourceModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutConfigurationDataSourceModifier> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00f23ConfigurationDataSourceD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB00f23ConfigurationDataSourceD0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<WorkoutConfigurationDataSourceModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t objectdestroyTm_85()
{

  return swift_deallocObject();
}

uint64_t static ViewBuilder.buildEither<A, B>(first:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t static ViewBuilder.buildEither<A, B>(second:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for _ConditionalContent.Storage();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

void __swiftcall MetricTextDescriptor.init(value:unit:description:stale:includesSlashes:accessibilityLabel:)(WorkoutUI::MetricTextDescriptor *__return_ptr retstr, Swift::String value, Swift::String_optional unit, Swift::String_optional description, Swift::Bool stale, Swift::Bool includesSlashes, Swift::String_optional accessibilityLabel)
{
  retstr->value = value;
  retstr->unit = unit;
  retstr->description = description;
  retstr->stale = stale;
  retstr->includesSlashes = includesSlashes;
  retstr->accessibilityLabel = accessibilityLabel;
}

void __swiftcall MetricText.init(_:)(WorkoutUI::MetricText *__return_ptr retstr, WorkoutUI::MetricTextDescriptor *a2)
{
  v2 = *&a2->stale;
  retstr->descriptor.description = a2->description;
  *&retstr->descriptor.stale = v2;
  retstr->descriptor.accessibilityLabel.value._object = a2->accessibilityLabel.value._object;
  unit = a2->unit;
  retstr->descriptor.value = a2->value;
  retstr->descriptor.unit = unit;
}

uint64_t key path setter for EnvironmentValues.legibilityWeight : EnvironmentValues(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16LegibilityWeightOSgMd, &_s7SwiftUI16LegibilityWeightOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  outlined init with copy of LegibilityWeight?(a1, &v5 - v3, &_s7SwiftUI16LegibilityWeightOSgMd, &_s7SwiftUI16LegibilityWeightOSgMR);
  return EnvironmentValues.legibilityWeight.setter();
}

void __swiftcall MetricText.init(value:unit:description:stale:includesSlashes:)(WorkoutUI::MetricText *__return_ptr retstr, Swift::String value, Swift::String_optional unit, Swift::String_optional description, Swift::Bool stale, Swift::Bool includesSlashes)
{
  retstr->descriptor.value = value;
  retstr->descriptor.unit = unit;
  retstr->descriptor.description = description;
  retstr->descriptor.stale = stale;
  retstr->descriptor.includesSlashes = includesSlashes;
  retstr->descriptor.accessibilityLabel.value._countAndFlagsBits = 0;
  retstr->descriptor.accessibilityLabel.value._object = 0;
}

uint64_t MetricTextWithAccessory.init(_:accessoryAsSuffix:accessoryView:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7@<X3>)
{
  v11 = type metadata accessor for MetricTextWithAccessory(0, a4, a5, a7);
  v12 = v11[11];
  *(a6 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  swift_storeEnumTagMultiPayload();
  v13 = a6 + v11[12];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(a6 + v11[13]) = 0x3FD6666666666666;
  *(a6 + 64) = *(a1 + 64);
  v14 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v14;
  v15 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v15;
  *(a6 + 72) = a2;
  return a3();
}

uint64_t MetricTextWithAccessory.init(value:unit:description:stale:includesSlashes:accessoryAsSuffix:accessoryView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t (*a11)(void), uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v16 = a7;
  v17 = a8;
  v18 = 0;
  v19 = 0;
  return MetricTextWithAccessory.init(_:accessoryAsSuffix:accessoryView:)(v15, a10, a11, a13, a14, a9, a12);
}

uint64_t MetricTextWatchOS.init(value:unit:description:accessoryAsSuffix:accessoryView:)@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X2>, void (*a3)(uint64_t)@<X4>, char a4@<W6>, uint64_t a5@<X7>, uint64_t a6@<X8>, __int128 a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  a1();
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v15 = type metadata accessor for MetricTextWatchOS(0, &v20);
  v16 = a2();
  a3(v16);
  result = (*(*(a9 - 8) + 32))(a6 + *(v15 + 92), a5, a9);
  *(a6 + *(v15 + 96)) = a4;
  return result;
}

uint64_t MetricTextWatchOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v25 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v24 = *(a1 + 24);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR);
  type metadata accessor for ModifiedContent();
  v23 = *(a1 + 32);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v3 = *(a1 + 40);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v4 = type metadata accessor for HStack();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &WitnessTable - v6;
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &WitnessTable - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &WitnessTable - v13;
  static VerticalAlignment.lastTextBaseline.getter();
  *&v15 = v25;
  *(&v15 + 1) = v24;
  *&v16 = v23;
  *(&v16 + 1) = v3;
  v28 = v15;
  v29 = v16;
  v17 = *(a1 + 64);
  v30 = *(a1 + 48);
  v31 = v17;
  v32 = v26;
  HStack.init(alignment:spacing:content:)();
  v18 = swift_getWitnessTable();
  View.metricRow(padding:)(v4, v18, 0.0);
  (*(v5 + 8))(v7, v4);
  v19 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
  v33 = v18;
  v34 = v19;
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v9 + 8);
  v20(v11, v8);
  static ViewBuilder.buildBlock<A>(_:)();
  return (v20)(v14, v8);
}

void closure #1 in MetricTextWatchOS.body.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v76 = a4;
  v77 = a8;
  v104 = a6;
  v105 = a7;
  v113 = a5;
  v103 = a1;
  v101 = a9;
  v112 = a10;
  v82 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
  v14 = type metadata accessor for ModifiedContent();
  v15 = type metadata accessor for ModifiedContent();
  v107 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR);
  v16 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v17 = type metadata accessor for TupleView();
  v72[4] = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v72[3] = v72 - v18;
  swift_getTupleTypeMetadata2();
  v19 = type metadata accessor for TupleView();
  v72[2] = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v72[1] = v72 - v20;
  v99 = *(a5 - 8);
  MEMORY[0x28223BE20](v21);
  v95 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v111 = v72 - v24;
  v86 = v13;
  v79 = *(v13 - 8);
  MEMORY[0x28223BE20](v25);
  v78 = v72 - v26;
  v90 = v14;
  v81 = *(v14 - 8);
  MEMORY[0x28223BE20](v27);
  v80 = v72 - v28;
  v93 = v15;
  v85 = *(v15 - 8);
  MEMORY[0x28223BE20](v29);
  v84 = v72 - v30;
  v102 = v16;
  v89 = *(v16 - 8);
  MEMORY[0x28223BE20](v31);
  v91 = v72 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v108 = v72 - v34;
  v110 = v35;
  v100 = v17;
  v36 = type metadata accessor for _ConditionalContent();
  v97 = *(v36 - 8);
  v98 = v36;
  MEMORY[0x28223BE20](v36);
  v96 = v72 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v109 = v72 - v39;
  v40 = a2;
  v73 = a2;
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v41 = a3;
  v74 = a3;
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v42 = type metadata accessor for HStack();
  v94 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v44 = v72 - v43;
  v45 = type metadata accessor for ModifiedContent();
  v106 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v47 = v72 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = v72 - v49;
  static VerticalAlignment.lastTextBaseline.getter();
  v114 = v40;
  v115 = v41;
  v52 = v76;
  v51 = v77;
  v116 = v76;
  v117 = v113;
  v118 = v104;
  v119 = v105;
  v120 = v77;
  v121 = v112;
  v122 = v103;
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  View.lineLimit(_:)();
  (*(v94 + 8))(v44, v42);
  v54 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR, MEMORY[0x277CE0868]);
  v135[8] = WitnessTable;
  v135[9] = v54;
  v75 = v54;
  v55 = swift_getWitnessTable();
  v107 = v50;
  v56 = v103;
  v83 = v55;
  static ViewBuilder.buildExpression<A>(_:)();
  v57 = *(v106 + 8);
  v92 = v47;
  v94 = v45;
  v87 = v57;
  v88 = v106 + 8;
  v57(v47, v45);
  v135[0] = v73;
  v135[1] = v74;
  v135[2] = v52;
  v135[3] = v113;
  v135[4] = v104;
  v135[5] = v105;
  v135[6] = v51;
  v135[7] = v112;
  if (*(v56 + *(type metadata accessor for MetricTextWatchOS(0, v135) + 96)) == 1)
  {
    v58 = v78;
    View.metricDescriptionFont(multiline:)(1, v52, v51);
    v59 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
    v127 = v51;
    v128 = v59;
    v60 = swift_getWitnessTable();
    v61 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
    v125 = v60;
    v126 = v61;
    v62 = v86;
    v63 = swift_getWitnessTable();
    View.layoutPriority(_:)();
    (*(v79 + 8))(v58, v62);
    v64 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR, MEMORY[0x277CE04A0]);
    v123 = v63;
    v124 = v64;
    swift_getWitnessTable();
    View.bodyHyphenation()();
  }

  static ViewBuilder.buildExpression<A>(_:)();
  v65 = v78;
  View.metricDescriptionFont(multiline:)(1, v52, v51);
  v66 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  v133 = v51;
  v134 = v66;
  v67 = swift_getWitnessTable();
  v68 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
  v131 = v67;
  v132 = v68;
  v69 = v86;
  v70 = swift_getWitnessTable();
  View.layoutPriority(_:)();
  (*(v79 + 8))(v65, v69);
  v71 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR, MEMORY[0x277CE04A0]);
  v129 = v70;
  v130 = v71;
  swift_getWitnessTable();
  View.bodyHyphenation()();
}

void sub_20CA7A3F8()
{
  (*(v0[13] + 8))(v4, v1);
  v7 = lazy protocol witness table accessor for type BodyHyphenation and conformance BodyHyphenation();
  *(v6 - 232) = v5;
  *(v6 - 224) = v7;
  v8 = v0[25];
  WitnessTable = swift_getWitnessTable();
  v10 = v0[23];
  View.lineLimit(_:)();
  (*(v0[17] + 8))(v3, v8);
  v11 = v0[7];
  *(v6 - 248) = WitnessTable;
  *(v6 - 240) = v11;
  v12 = v0[34];
  v13 = swift_getWitnessTable();
  v14 = v0[40];
  static ViewBuilder.buildExpression<A>(_:)();
  v15 = v0[21];
  v16 = *(v15 + 8);
  v0[37] = v16;
  v16(v10, v12);
  v17 = v0[31];
  v18 = v0[27];
  (*(v17 + 16))(v18, v0[43], v2);
  *(v6 - 168) = v18;
  (*(v15 + 16))(v10, v14, v12);
  *(v6 - 160) = v10;
  v0[71] = v2;
  v0[72] = v12;
  v0[69] = v0[44];
  v0[70] = v13;
  v19 = v0[3];
  static ViewBuilder.buildBlock<each A>(_:)((v6 - 168), 2uLL, (v0 + 71));
  (v0[37])(v10, v12);
  v20 = *(v17 + 8);
  v20(v18, v2);
  v21 = v12;
  v22 = v0[42];
  v23 = swift_getWitnessTable();
  v24 = v0[32];
  v25 = swift_getWitnessTable();
  static ViewBuilder.buildEither<A, B>(second:)(v19, v22, v24, v23, v25);
  (*(v0[4] + 8))(v19, v24);
  (v0[37])(v0[40], v21);
  v20(v0[43], v0[45]);
  JUMPOUT(0x20CA7A618);
}

uint64_t closure #1 in closure #1 in MetricTextWatchOS.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v60 = a8;
  v59 = a7;
  v57 = a5;
  v56 = a4;
  v54 = a3;
  v50 = a1;
  v62 = a9;
  v55 = a10;
  v52 = type metadata accessor for ModifiedContent();
  v61 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v53 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v58 = &v42 - v14;
  v46 = a2;
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = type metadata accessor for ModifiedContent();
  v45 = *(v19 - 8);
  v20 = v45;
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v47 = &v42 - v24;
  v43 = a6;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, a2, a6);
  v25 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v76 = a6;
  v77 = v25;
  WitnessTable = swift_getWitnessTable();
  View.fixedSize(horizontal:vertical:)();
  (*(v16 + 8))(v18, v15);
  v74 = WitnessTable;
  v75 = MEMORY[0x277CDFC48];
  v44 = v19;
  v49 = swift_getWitnessTable();
  v42 = v22;
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v20 + 8);
  v48 = v20 + 8;
  v51 = v27;
  v27(v22, v19);
  v28 = v54;
  v66 = v46;
  v67 = v54;
  v68 = v56;
  v69 = v57;
  v29 = v59;
  v70 = v43;
  v71 = v59;
  v72 = v60;
  v73 = v55;
  type metadata accessor for MetricTextWatchOS(0, &v66);
  v30 = v53;
  View.metricUnitFont()(v28, v29);
  v31 = lazy protocol witness table accessor for type MetricUnitFont and conformance MetricUnitFont();
  v65[2] = v29;
  v65[3] = v31;
  v32 = v52;
  v33 = swift_getWitnessTable();
  v34 = v58;
  static ViewBuilder.buildExpression<A>(_:)();
  v35 = v61;
  v36 = *(v61 + 8);
  v36(v30, v32);
  v37 = v42;
  v38 = v47;
  v39 = v44;
  (*(v45 + 16))(v42, v47, v44);
  v66 = v37;
  (*(v35 + 16))(v30, v34, v32);
  v67 = v30;
  v65[0] = v39;
  v65[1] = v32;
  v63 = v49;
  v64 = v33;
  static ViewBuilder.buildBlock<each A>(_:)(&v66, 2uLL, v65);
  v36(v34, v32);
  v40 = v51;
  v51(v38, v39);
  v36(v30, v32);
  return v40(v37, v39);
}

void MetricTextiOSPlatter.workoutViewStyle.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 100);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t MetricTextiOSPlatter.init(value:unit:description:accessoryView:includesSlashes:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X6>, char a5@<W7>, uint64_t a6@<X8>, __int128 a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12)
{
  v71 = a7;
  v72 = a8;
  v73 = a9;
  v74 = a10;
  v75 = a11;
  v76 = a12;
  v13 = type metadata accessor for MetricTextiOSPlatter(0, &v71);
  v14 = a6 + v13[25];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = objc_opt_self();
  v16 = [v15 currentDevice];
  v17 = specialized UIDevice.screenType.getter();

  v18 = dbl_20CB893D0[v17];
  v19 = objc_opt_self();
  v20 = [v19 mainScreen];
  [v20 scale];
  v22 = v21;

  v23 = [v19 mainScreen];
  [v23 nativeScale];
  v25 = v24;

  if (v22 != v25)
  {
    v26 = [v19 mainScreen];
    [v26 scale];
    v28 = v27;

    v29 = [v19 mainScreen];
    [v29 nativeScale];
    v31 = v30;

    v18 = v18 * (v28 / v31 * 0.95);
  }

  *(a6 + v13[26]) = v18;
  v32 = [v15 currentDevice];
  v33 = specialized UIDevice.screenType.getter();

  v34 = dbl_20CB89428[v33];
  v35 = [v19 mainScreen];
  [v35 scale];
  v37 = v36;

  v38 = [v19 mainScreen];
  [v38 nativeScale];
  v40 = v39;

  if (v37 != v40)
  {
    v41 = [v19 mainScreen];
    [v41 scale];
    v43 = v42;

    v44 = [v19 mainScreen];
    [v44 nativeScale];
    v46 = v45;

    v34 = v34 * (v43 / v46 * 0.95);
  }

  *(a6 + v13[27]) = v34;
  v47 = [v15 currentDevice];
  v48 = specialized UIDevice.screenType.getter();

  v49 = dbl_20CB89480[v48];
  v50 = [v19 mainScreen];
  [v50 scale];
  v52 = v51;

  v53 = [v19 mainScreen];
  [v53 nativeScale];
  v55 = v54;

  if (v52 != v55)
  {
    v56 = [v19 mainScreen];
    [v56 scale];
    v58 = v57;

    v59 = [v19 mainScreen];
    [v59 nativeScale];
    v61 = v60;

    v49 = v49 * (v58 / v61 * 0.95);
  }

  *(a6 + v13[28]) = v49;
  v62 = a1();
  v63 = a2(v62);
  a3(v63);
  result = (*(*(v65 - 8) + 32))(a6 + v13[23], a4);
  *(a6 + v13[24]) = a5 & 1;
  return result;
}

uint64_t MetricTextiOSPlatter.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v402 = a2;
  *&v399 = a1[2];
  v3 = type metadata accessor for ModifiedContent();
  v4 = a1[3];
  v5 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v6 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v361 = v6;
  v7 = type metadata accessor for HStack();
  v8 = type metadata accessor for _ConditionalContent();
  v380 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v379 = v350 - v9;
  v421 = v7;
  v388 = *(v7 - 8);
  MEMORY[0x28223BE20](v10);
  v378 = v350 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v377 = v350 - v13;
  v587 = v3;
  *(&v399 + 1) = v4;
  v588 = type metadata accessor for ModifiedContent();
  v14 = a1[5];
  v408 = a1;
  v409 = v14;
  v15 = type metadata accessor for ModifiedContent();
  v589 = v15;
  v16 = a1[4];
  v590 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata();
  v17 = type metadata accessor for TupleView();
  v358 = swift_getWitnessTable();
  v359 = v17;
  v18 = type metadata accessor for VStack();
  v387 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v376 = v350 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v375 = v350 - v21;
  v587 = v3;
  v588 = v5;
  v398 = v16;
  type metadata accessor for ModifiedContent();
  v22 = type metadata accessor for ModifiedContent();
  v589 = v22;
  v590 = MEMORY[0x277CE1180];
  swift_getTupleTypeMetadata();
  v23 = type metadata accessor for TupleView();
  v356 = swift_getWitnessTable();
  v357 = v23;
  v24 = type metadata accessor for HStack();
  v406 = v18;
  v25 = type metadata accessor for _ConditionalContent();
  v374 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v373 = v350 - v26;
  v419 = v27;
  v422 = v8;
  v412 = type metadata accessor for _ConditionalContent();
  v393 = *(v412 - 8);
  MEMORY[0x28223BE20](v412);
  v396 = v350 - v28;
  v418 = v24;
  v386 = *(v24 - 8);
  MEMORY[0x28223BE20](v29);
  v372 = v350 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v371 = v350 - v32;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMR);
  v587 = type metadata accessor for ModifiedContent();
  v588 = type metadata accessor for ModifiedContent();
  v589 = v15;
  v413 = v22;
  type metadata accessor for ModifiedContent();
  v590 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata();
  v33 = type metadata accessor for TupleView();
  v34 = swift_getWitnessTable();
  v353 = v33;
  v354 = v34;
  v35 = type metadata accessor for ZStack();
  v355 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v390 = v350 - v36;
  v417 = v37;
  v38 = type metadata accessor for ModifiedContent();
  v385 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v366 = v350 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v369 = v350 - v41;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR);
  v587 = type metadata accessor for ModifiedContent();
  v588 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
  v589 = v5;
  v590 = v15;
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v42 = type metadata accessor for TupleView();
  v43 = swift_getWitnessTable();
  v350[1] = v42;
  v352 = v43;
  v44 = type metadata accessor for VStack();
  v45 = type metadata accessor for ModifiedContent();
  v420 = v38;
  v46 = type metadata accessor for _ConditionalContent();
  v370 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v381 = v350 - v47;
  v415 = v44;
  v351 = *(v44 - 8);
  MEMORY[0x28223BE20](v48);
  v389 = v350 - v49;
  v405 = v45;
  v384 = *(v45 - 8);
  MEMORY[0x28223BE20](v50);
  v368 = v350 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v367 = v350 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd, &_s7SwiftUI6SpacerVSgMR);
  v592[0] = v54;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR);
  type metadata accessor for ModifiedContent();
  v587 = type metadata accessor for ModifiedContent();
  v588 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
  v589 = v5;
  v55 = v5;
  v56 = v409;
  v590 = v409;
  v591 = MEMORY[0x277CE1180];
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  v592[1] = type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR);
  v592[2] = type metadata accessor for ModifiedContent();
  v592[3] = v54;
  swift_getTupleTypeMetadata();
  v57 = type metadata accessor for TupleView();
  v58 = swift_getWitnessTable();
  v362 = v57;
  v363 = v58;
  v59 = type metadata accessor for VStack();
  v365 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v364 = v350 - v60;
  v414 = v61;
  v62 = type metadata accessor for ModifiedContent();
  v395 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v392 = v350 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v391 = v350 - v65;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
  v587 = type metadata accessor for ModifiedContent();
  v588 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
  v589 = v55;
  v590 = v56;
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  v66 = v412;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v67 = type metadata accessor for HStack();
  v404 = v62;
  v68 = type metadata accessor for _ConditionalContent();
  v383 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v382 = v350 - v69;
  v413 = v70;
  v416 = v46;
  v71 = type metadata accessor for _ConditionalContent();
  v394 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v397 = v350 - v72;
  v407 = v67;
  v73 = *(v67 - 8);
  MEMORY[0x28223BE20](v74);
  v76 = v350 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v79 = v350 - v78;
  v80 = type metadata accessor for _ConditionalContent();
  v400 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v403 = v350 - v81;
  MetricTextiOSPlatter.workoutViewStyle.getter(v408, v592);
  v401 = v80;
  v411 = v71;
  if (LOBYTE(v592[0]) <= 4u)
  {
    v350[0] = v79;
    v395 = v73;
    v118 = v389;
    v119 = v390;
    if (LOBYTE(v592[0]) == 2)
    {
      v237 = v76;
      v238 = static VerticalAlignment.lastTextBaseline.getter();
      MEMORY[0x28223BE20](v238);
      *&v239 = v398;
      v240 = v408;
      *(&v239 + 1) = v409;
      *&v350[-10] = v399;
      v345 = v239;
      v241 = *(v240 + 4);
      v346 = *(v240 + 3);
      v347 = v241;
      v348 = v410;
      v242 = v237;
      HStack.init(alignment:spacing:content:)();
      v409 = MEMORY[0x277CE1138];
      v243 = v407;
      v244 = v66;
      v245 = swift_getWitnessTable();
      static ViewBuilder.buildExpression<A>(_:)();
      v246 = *(v395 + 8);
      v395 += 8;
      v410 = v246;
      v246(v237, v243);
      static ViewBuilder.buildBlock<A>(_:)();
      v408 = MEMORY[0x277CE1198];
      v247 = swift_getWitnessTable();
      v248 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
      v439 = v247;
      v440 = v248;
      v249 = v404;
      v250 = swift_getWitnessTable();
      v251 = v382;
      static ViewBuilder.buildEither<A, B>(first:)(v242, v243, v249, v245, v250);
      v437 = v245;
      v438 = v250;
      v252 = v413;
      v253 = swift_getWitnessTable();
      v435 = swift_getWitnessTable();
      v436 = MEMORY[0x277CDFC60];
      v254 = swift_getWitnessTable();
      v433 = swift_getWitnessTable();
      v434 = MEMORY[0x277CDF918];
      v255 = swift_getWitnessTable();
      v431 = v254;
      v432 = v255;
      v256 = v416;
      v257 = swift_getWitnessTable();
      v258 = v397;
      static ViewBuilder.buildEither<A, B>(first:)(v251, v252, v256, v253, v257);
      (*(v383 + 8))(v251, v252);
      v429 = v253;
      v430 = v257;
      v259 = v411;
      *(&v399 + 1) = swift_getWitnessTable();
      v260 = swift_getWitnessTable();
      v261 = swift_getWitnessTable();
      v427 = v260;
      v428 = v261;
      v262 = swift_getWitnessTable();
      v425 = swift_getWitnessTable();
      v426 = MEMORY[0x277CE0BC8];
      v263 = swift_getWitnessTable();
      v423 = v262;
      v424 = v263;
      v264 = v407;
      v265 = swift_getWitnessTable();
      v116 = v403;
      static ViewBuilder.buildEither<A, B>(first:)(v258, v259, v244, *(&v399 + 1), v265);
      (*(v394 + 8))(v258, v259);
      v266 = v410;
      v410(v242, v264);
      v266(v350[0], v264);
      goto LABEL_18;
    }

    if (LOBYTE(v592[0]) == 3)
    {
      MEMORY[0x28223BE20](v82);
      *&v267 = v398;
      v268 = v408;
      *(&v267 + 1) = v409;
      *&v350[-10] = v399;
      v345 = v267;
      v346 = *(v268 + 3);
      static HorizontalAlignment.center.getter();
      v269 = v118;
      VStack.init(alignment:spacing:content:)();
      v270 = static Alignment.center.getter();
      v272 = v271;
      v409 = MEMORY[0x277CE1198];
      v273 = v415;
      v274 = swift_getWitnessTable();
      v348 = v273;
      v349 = v274;
      *&v347 = v270;
      *(&v347 + 1) = v272;
      BYTE8(v346) = 1;
      *&v346 = 0;
      BYTE8(v345) = 1;
      *&v345 = 0;
      v275 = v368;
      View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      (*(v351 + 8))(v269, v273);
      v475 = v274;
      v476 = MEMORY[0x277CDFC60];
      v276 = v405;
      v277 = swift_getWitnessTable();
      v278 = v275;
      static ViewBuilder.buildExpression<A>(_:)();
      v279 = *(v384 + 8);
      v384 += 8;
      v410 = v279;
      v279(v275, v276);
      static ViewBuilder.buildBlock<A>(_:)();
      v473 = swift_getWitnessTable();
      v474 = MEMORY[0x277CDF918];
      v280 = v420;
      v281 = swift_getWitnessTable();
      v282 = v381;
      static ViewBuilder.buildEither<A, B>(first:)(v278, v276, v280, v277, v281);
      v408 = MEMORY[0x277CE1138];
      v283 = swift_getWitnessTable();
      v284 = swift_getWitnessTable();
      v285 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
      v471 = v284;
      v472 = v285;
      v286 = v71;
      v287 = swift_getWitnessTable();
      v469 = v283;
      v470 = v287;
      v288 = v413;
      v289 = swift_getWitnessTable();
      v467 = v277;
      v468 = v281;
      v290 = v416;
      v291 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(v282, v288, v290, v289, v291);
      (*(v370 + 8))(v282, v290);
      v465 = v289;
      v292 = v276;
      v466 = v291;
      v293 = swift_getWitnessTable();
      v294 = swift_getWitnessTable();
      v295 = swift_getWitnessTable();
      v463 = v294;
      v464 = v295;
      v296 = swift_getWitnessTable();
      v461 = swift_getWitnessTable();
      v462 = MEMORY[0x277CE0BC8];
      v297 = swift_getWitnessTable();
      v459 = v296;
      v460 = v297;
      v298 = v412;
      v299 = swift_getWitnessTable();
      v116 = v403;
      v300 = v397;
      static ViewBuilder.buildEither<A, B>(first:)(v397, v286, v298, v293, v299);
      (*(v394 + 8))(v300, v286);
      v301 = v410;
      v410(v368, v292);
      v301(v367, v292);
      goto LABEL_18;
    }

    v120 = v419;
    v121 = v381;
    if (LOBYTE(v592[0]) == 4)
    {
      static HorizontalAlignment.center.getter();
      v122 = static VerticalAlignment.firstTextBaseline.getter();
      MEMORY[0x28223BE20](v122);
      *&v123 = v398;
      v124 = v408;
      *(&v123 + 1) = v409;
      *&v350[-10] = v399;
      v345 = v123;
      v125 = *(v124 + 4);
      v346 = *(v124 + 3);
      v347 = v125;
      v348 = v410;
      ZStack.init(alignment:content:)();
      static Edge.Set.horizontal.getter();
      v126 = v417;
      v127 = swift_getWitnessTable();
      v128 = v366;
      View.padding(_:_:)();
      (*(v355 + 8))(v119, v126);
      v493 = v127;
      v494 = MEMORY[0x277CDF918];
      v129 = v420;
      v130 = swift_getWitnessTable();
      static ViewBuilder.buildExpression<A>(_:)();
      v131 = *(v385 + 8);
      v385 += 8;
      v410 = v131;
      v131(v128, v129);
      static ViewBuilder.buildBlock<A>(_:)();
      v409 = MEMORY[0x277CE1198];
      v491 = swift_getWitnessTable();
      v492 = MEMORY[0x277CDFC60];
      v132 = v405;
      v133 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(v128, v132, v129, v133, v130);
      v408 = MEMORY[0x277CE1138];
      v134 = swift_getWitnessTable();
      v135 = swift_getWitnessTable();
      v136 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
      v489 = v135;
      v490 = v136;
      v137 = v411;
      v138 = swift_getWitnessTable();
      v487 = v134;
      v488 = v138;
      v139 = v413;
      v140 = swift_getWitnessTable();
      v485 = v133;
      v486 = v130;
      v141 = v416;
      v142 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(second:)(v121, v139, v141, v140, v142);
      (*(v370 + 8))(v121, v141);
      v483 = v140;
      v484 = v142;
      v143 = swift_getWitnessTable();
      v144 = swift_getWitnessTable();
      v145 = swift_getWitnessTable();
      v481 = v144;
      v482 = v145;
      v146 = swift_getWitnessTable();
      v479 = swift_getWitnessTable();
      v480 = MEMORY[0x277CE0BC8];
      v147 = swift_getWitnessTable();
      v477 = v146;
      v478 = v147;
      v148 = v412;
      v149 = swift_getWitnessTable();
      v116 = v403;
      v150 = v397;
      static ViewBuilder.buildEither<A, B>(first:)(v397, v137, v148, v143, v149);
      (*(v394 + 8))(v150, v137);
      v151 = v420;
      v152 = v410;
      v410(v366, v420);
      v152(v369, v151);
      goto LABEL_18;
    }

LABEL_17:
    LocalizedStringKey.init(stringLiteral:)();
    LOWORD(v349) = 256;
    v348 = 0;
    v409 = Text.init(_:tableName:bundle:comment:)();
    v410 = v302;
    v587 = v409;
    v588 = v303;
    v408 = v303;
    DWORD2(v399) = v304 & 1;
    LOBYTE(v589) = v304 & 1;
    v590 = v302;
    outlined copy of Text.Storage(v409, v303, v304 & 1);

    v305 = v421;
    v306 = swift_getWitnessTable();
    v307 = v379;
    v308 = MEMORY[0x277CE0BC8];
    static ViewBuilder.buildEither<A, B>(second:)(&v587, v305, MEMORY[0x277CE0BD8], v306, MEMORY[0x277CE0BC8]);
    v309 = swift_getWitnessTable();
    v310 = v120;
    v311 = swift_getWitnessTable();
    v585 = v309;
    v586 = v311;
    v312 = swift_getWitnessTable();
    *&v399 = v312;
    v583 = v306;
    v584 = v308;
    v313 = swift_getWitnessTable();
    v314 = v396;
    static ViewBuilder.buildEither<A, B>(second:)(v307, v310, v422, v312, v313);
    (*(v380 + 8))(v307, v422);
    v315 = swift_getWitnessTable();
    v316 = swift_getWitnessTable();
    v317 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    v581 = v316;
    v582 = v317;
    v318 = swift_getWitnessTable();
    v579 = v315;
    v580 = v318;
    v319 = swift_getWitnessTable();
    v577 = swift_getWitnessTable();
    v578 = MEMORY[0x277CDFC60];
    v320 = swift_getWitnessTable();
    v575 = swift_getWitnessTable();
    v576 = MEMORY[0x277CDF918];
    v321 = swift_getWitnessTable();
    v573 = v320;
    v574 = v321;
    v322 = swift_getWitnessTable();
    v571 = v319;
    v572 = v322;
    v323 = v411;
    v324 = swift_getWitnessTable();
    v569 = v399;
    v570 = v313;
    v325 = v412;
    v326 = swift_getWitnessTable();
    v116 = v403;
    static ViewBuilder.buildEither<A, B>(second:)(v314, v323, v325, v324, v326);
    v328 = v408;
    v327 = v409;
    LOBYTE(v324) = BYTE8(v399);
    outlined consume of Text.Storage(v409, v408, SBYTE8(v399));

    outlined consume of Text.Storage(v327, v328, v324);

    (*(v393 + 8))(v396, v325);
    goto LABEL_18;
  }

  if (LOBYTE(v592[0]) > 9u)
  {
    v153 = v422;
    if (LOBYTE(v592[0]) == 10)
    {
      v209 = static HorizontalAlignment.center.getter();
      MEMORY[0x28223BE20](v209);
      *&v210 = v398;
      v211 = v408;
      *(&v210 + 1) = v409;
      *&v350[-10] = v399;
      v345 = v210;
      v212 = *(v211 + 4);
      v346 = *(v211 + 3);
      v347 = v212;
      v348 = v410;
      v213 = v376;
      VStack.init(alignment:spacing:content:)();
      v214 = v406;
      v215 = swift_getWitnessTable();
      static ViewBuilder.buildExpression<A>(_:)();
      v216 = *(v387 + 8);
      v387 += 8;
      v410 = v216;
      v216(v213, v214);
      static ViewBuilder.buildBlock<A>(_:)();
      v217 = v418;
      v218 = swift_getWitnessTable();
      v219 = v373;
      static ViewBuilder.buildEither<A, B>(second:)(v213, v217, v214, v218, v215);
      v529 = v218;
      v530 = v215;
      v220 = v419;
      v221 = swift_getWitnessTable();
      v409 = v221;
      v527 = swift_getWitnessTable();
      v528 = MEMORY[0x277CE0BC8];
      v408 = swift_getWitnessTable();
      v222 = v396;
      static ViewBuilder.buildEither<A, B>(first:)(v219, v220, v153, v221, v408);
      (*(v374 + 8))(v219, v220);
      v223 = swift_getWitnessTable();
      v224 = swift_getWitnessTable();
      v225 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
      v525 = v224;
      v526 = v225;
      v226 = swift_getWitnessTable();
      v523 = v223;
      v524 = v226;
      v227 = swift_getWitnessTable();
      v521 = swift_getWitnessTable();
      v522 = MEMORY[0x277CDFC60];
      v228 = swift_getWitnessTable();
      v519 = swift_getWitnessTable();
      v520 = MEMORY[0x277CDF918];
      v229 = swift_getWitnessTable();
      v517 = v228;
      v518 = v229;
      v230 = swift_getWitnessTable();
      v515 = v227;
      v516 = v230;
      v231 = v411;
      v232 = swift_getWitnessTable();
      v513 = v409;
      v514 = v408;
      v233 = v412;
      v234 = swift_getWitnessTable();
      v235 = v231;
      v116 = v403;
      static ViewBuilder.buildEither<A, B>(second:)(v222, v235, v233, v232, v234);
      (*(v393 + 8))(v222, v233);
      v236 = v410;
      v410(v376, v214);
      v236(v375, v214);
      goto LABEL_18;
    }

    v120 = v419;
    if (LOBYTE(v592[0]) == 11)
    {
      v154 = static VerticalAlignment.lastTextBaseline.getter();
      MEMORY[0x28223BE20](v154);
      *&v155 = v398;
      v156 = v408;
      *(&v155 + 1) = v409;
      *&v350[-10] = v399;
      v345 = v155;
      v157 = *(v156 + 4);
      v346 = *(v156 + 3);
      v347 = v157;
      v348 = v410;
      v158 = v378;
      HStack.init(alignment:spacing:content:)();
      v159 = v421;
      v160 = swift_getWitnessTable();
      static ViewBuilder.buildExpression<A>(_:)();
      v161 = *(v388 + 8);
      v388 += 8;
      v410 = v161;
      v161(v158, v159);
      static ViewBuilder.buildBlock<A>(_:)();
      v162 = v379;
      v163 = MEMORY[0x277CE0BC8];
      static ViewBuilder.buildEither<A, B>(first:)(v158, v159, MEMORY[0x277CE0BD8], v160, MEMORY[0x277CE0BC8]);
      v164 = swift_getWitnessTable();
      v165 = swift_getWitnessTable();
      v547 = v164;
      v548 = v165;
      v166 = swift_getWitnessTable();
      v545 = v160;
      v546 = v163;
      v409 = swift_getWitnessTable();
      v167 = v396;
      static ViewBuilder.buildEither<A, B>(second:)(v162, v120, v153, v166, v409);
      (*(v380 + 8))(v162, v153);
      v168 = swift_getWitnessTable();
      v169 = swift_getWitnessTable();
      v170 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
      v543 = v169;
      v544 = v170;
      v171 = swift_getWitnessTable();
      v541 = v168;
      v542 = v171;
      v172 = swift_getWitnessTable();
      v539 = swift_getWitnessTable();
      v540 = MEMORY[0x277CDFC60];
      v173 = swift_getWitnessTable();
      v537 = swift_getWitnessTable();
      v538 = MEMORY[0x277CDF918];
      v174 = swift_getWitnessTable();
      v535 = v173;
      v536 = v174;
      v175 = swift_getWitnessTable();
      v533 = v172;
      v534 = v175;
      v176 = v411;
      v177 = swift_getWitnessTable();
      v531 = v166;
      v532 = v409;
      v178 = v412;
      v179 = swift_getWitnessTable();
      v116 = v403;
      static ViewBuilder.buildEither<A, B>(second:)(v167, v176, v178, v177, v179);
      (*(v393 + 8))(v167, v178);
      v180 = v421;
      v181 = v410;
      v410(v378, v421);
      v181(v377, v180);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (LOBYTE(v592[0]) - 5 >= 2)
  {
    v120 = v419;
    if (LOBYTE(v592[0]) == 7)
    {
      v182 = static VerticalAlignment.lastTextBaseline.getter();
      MEMORY[0x28223BE20](v182);
      *&v183 = v398;
      v184 = v408;
      *(&v183 + 1) = v409;
      *&v350[-10] = v399;
      v345 = v183;
      v185 = *(v184 + 4);
      v346 = *(v184 + 3);
      v347 = v185;
      v348 = v410;
      v186 = v372;
      HStack.init(alignment:spacing:content:)();
      v187 = v418;
      v188 = swift_getWitnessTable();
      static ViewBuilder.buildExpression<A>(_:)();
      v189 = *(v386 + 8);
      v386 += 8;
      v410 = v189;
      v189(v186, v187);
      static ViewBuilder.buildBlock<A>(_:)();
      v190 = v406;
      v191 = swift_getWitnessTable();
      v192 = v373;
      static ViewBuilder.buildEither<A, B>(first:)(v186, v187, v190, v188, v191);
      v511 = v188;
      v512 = v191;
      v193 = swift_getWitnessTable();
      v509 = swift_getWitnessTable();
      v510 = MEMORY[0x277CE0BC8];
      v194 = v422;
      v409 = swift_getWitnessTable();
      static ViewBuilder.buildEither<A, B>(first:)(v192, v120, v194, v193, v409);
      (*(v374 + 8))(v192, v120);
      v195 = swift_getWitnessTable();
      v196 = swift_getWitnessTable();
      v197 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
      v507 = v196;
      v508 = v197;
      v198 = swift_getWitnessTable();
      v505 = v195;
      v506 = v198;
      v199 = swift_getWitnessTable();
      v503 = swift_getWitnessTable();
      v504 = MEMORY[0x277CDFC60];
      v200 = swift_getWitnessTable();
      v501 = swift_getWitnessTable();
      v502 = MEMORY[0x277CDF918];
      v201 = swift_getWitnessTable();
      v499 = v200;
      v500 = v201;
      v202 = swift_getWitnessTable();
      v497 = v199;
      v498 = v202;
      v203 = v411;
      v204 = swift_getWitnessTable();
      v495 = v193;
      v496 = v409;
      v205 = v412;
      v206 = swift_getWitnessTable();
      v116 = v403;
      v207 = v396;
      static ViewBuilder.buildEither<A, B>(second:)(v396, v203, v205, v204, v206);
      (*(v393 + 8))(v207, v205);
      v208 = v410;
      v410(v372, v187);
      v208(v371, v187);
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v83 = v408;
  v84 = v410;
  MetricTextiOSPlatter.workoutViewStyle.getter(v408, &v587);
  v85 = v587 == 6;
  v86 = static HorizontalAlignment.leading.getter();
  MEMORY[0x28223BE20](v86);
  *&v87 = v398;
  *(&v87 + 1) = v409;
  *&v350[-10] = v399;
  v345 = v87;
  v88 = *(v83 + 4);
  v346 = *(v83 + 3);
  v347 = v88;
  LOBYTE(v348) = v85;
  v349 = v84;
  v89 = v364;
  VStack.init(alignment:spacing:content:)();
  v90 = v414;
  v91 = swift_getWitnessTable();
  v92 = v392;
  View.metricRow(padding:)(v90, v91, 0.0);
  (*(v365 + 8))(v89, v90);
  v93 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
  v457 = v91;
  v458 = v93;
  v94 = v404;
  v95 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v96 = *(v395 + 8);
  v395 += 8;
  v410 = v96;
  v96(v92, v94);
  static ViewBuilder.buildBlock<A>(_:)();
  v409 = MEMORY[0x277CE1138];
  v97 = v407;
  v98 = swift_getWitnessTable();
  v99 = v382;
  static ViewBuilder.buildEither<A, B>(second:)(v92, v97, v94, v98, v95);
  v455 = v98;
  v456 = v95;
  v100 = v413;
  v101 = swift_getWitnessTable();
  v453 = swift_getWitnessTable();
  v454 = MEMORY[0x277CDFC60];
  v102 = swift_getWitnessTable();
  v451 = swift_getWitnessTable();
  v452 = MEMORY[0x277CDF918];
  v103 = swift_getWitnessTable();
  v449 = v102;
  v450 = v103;
  v104 = v416;
  v105 = swift_getWitnessTable();
  v106 = v397;
  static ViewBuilder.buildEither<A, B>(first:)(v99, v100, v104, v101, v105);
  (*(v383 + 8))(v99, v100);
  v447 = v101;
  v448 = v105;
  v107 = v411;
  v108 = swift_getWitnessTable();
  v109 = swift_getWitnessTable();
  v110 = swift_getWitnessTable();
  v445 = v109;
  v111 = v94;
  v446 = v110;
  v112 = swift_getWitnessTable();
  v443 = swift_getWitnessTable();
  v444 = MEMORY[0x277CE0BC8];
  v113 = swift_getWitnessTable();
  v441 = v112;
  v442 = v113;
  v114 = v412;
  v115 = swift_getWitnessTable();
  v116 = v403;
  static ViewBuilder.buildEither<A, B>(first:)(v106, v107, v114, v108, v115);
  (*(v394 + 8))(v106, v107);
  v117 = v410;
  v410(v392, v111);
  v117(v391, v111);
LABEL_18:
  v329 = swift_getWitnessTable();
  v330 = swift_getWitnessTable();
  v331 = lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
  v567 = v330;
  v568 = v331;
  v332 = swift_getWitnessTable();
  v565 = v329;
  v566 = v332;
  v333 = swift_getWitnessTable();
  v563 = swift_getWitnessTable();
  v564 = MEMORY[0x277CDFC60];
  v334 = swift_getWitnessTable();
  v561 = swift_getWitnessTable();
  v562 = MEMORY[0x277CDF918];
  v335 = swift_getWitnessTable();
  v559 = v334;
  v560 = v335;
  v336 = swift_getWitnessTable();
  v557 = v333;
  v558 = v336;
  v337 = swift_getWitnessTable();
  v338 = swift_getWitnessTable();
  v339 = swift_getWitnessTable();
  v555 = v338;
  v556 = v339;
  v340 = swift_getWitnessTable();
  v553 = swift_getWitnessTable();
  v554 = MEMORY[0x277CE0BC8];
  v341 = swift_getWitnessTable();
  v551 = v340;
  v552 = v341;
  v342 = swift_getWitnessTable();
  v549 = v337;
  v550 = v342;
  v343 = v401;
  swift_getWitnessTable();
  static ViewBuilder.buildBlock<A>(_:)();
  return (*(v400 + 8))(v116, v343);
}

uint64_t closure #1 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v55 = a7;
  v56 = a8;
  v70 = a1;
  v67 = a9;
  v53 = a10;
  v62 = type metadata accessor for ModifiedContent();
  v60 = type metadata accessor for ModifiedContent();
  v65 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v48 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR);
  v64 = type metadata accessor for ModifiedContent();
  v66 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v63 = &v48 - v18;
  v49 = a2;
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
  v93 = type metadata accessor for ModifiedContent();
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
  v50 = a3;
  v95 = type metadata accessor for ModifiedContent();
  v96 = a5;
  v51 = a5;
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v68 = type metadata accessor for HStack();
  v71 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v69 = &v48 - v22;
  static VerticalAlignment.lastTextBaseline.getter();
  v72 = a2;
  v73 = a3;
  v23 = a4;
  v74 = a4;
  v75 = a5;
  v24 = a6;
  v76 = a6;
  v26 = v55;
  v25 = v56;
  v77 = v55;
  v78 = v56;
  v27 = v53;
  v79 = v53;
  v80 = v70;
  v52 = v20;
  HStack.init(alignment:spacing:content:)();
  v28 = v68;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v29 = *(v71 + 8);
  v57 = v71 + 8;
  v58 = v29;
  v29(v20, v28);
  v93 = v49;
  v94 = v50;
  v95 = v23;
  v96 = v51;
  v97 = v24;
  v98 = v26;
  v99 = v25;
  v100 = v27;
  type metadata accessor for MetricTextiOSPlatter(0, &v93);
  v30 = v59;
  View.metricDescriptionFont(multiline:)(1, v23, v25);
  v31 = [objc_opt_self() secondaryLabelColor];
  v93 = Color.init(uiColor:)();
  v32 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  v91 = v25;
  v92 = v32;
  v33 = swift_getWitnessTable();
  v34 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
  v89 = v33;
  v90 = v34;
  v35 = v60;
  v36 = swift_getWitnessTable();
  v37 = v61;
  View.foregroundStyle<A>(_:)();

  (*(v65 + 8))(v30, v35);
  v38 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
  v87 = v36;
  v88 = v38;
  v39 = v64;
  v40 = swift_getWitnessTable();
  v41 = v63;
  static ViewBuilder.buildExpression<A>(_:)();
  v42 = v66;
  v43 = *(v66 + 8);
  v43(v37, v39);
  v44 = v52;
  v45 = v68;
  (*(v71 + 16))(v52, v69, v68);
  v93 = v44;
  (*(v42 + 16))(v37, v41, v39);
  v85 = 0;
  v86 = 1;
  v94 = v37;
  v95 = &v85;
  v84[0] = v45;
  v84[1] = v39;
  v84[2] = MEMORY[0x277CE1180];
  v81 = WitnessTable;
  v82 = v40;
  v83 = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(&v93, 3uLL, v84);
  v43(v41, v39);
  v46 = v58;
  v58(v69, v45);
  v43(v37, v39);
  return v46(v44, v45);
}

uint64_t closure #1 in closure #1 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v65 = a7;
  v66 = a8;
  v72 = a6;
  v77 = a5;
  v64 = a4;
  v61 = a3;
  v56 = a1;
  v69 = a9;
  v68 = *(a5 - 8);
  v76 = a10;
  MEMORY[0x28223BE20](a1);
  v78 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v67 = &v50 - v13;
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  v62 = v14;
  v63 = v15;
  MEMORY[0x28223BE20](v14);
  v74 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = &v50 - v18;
  v55 = a2;
  v19 = type metadata accessor for ModifiedContent();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
  v23 = type metadata accessor for ModifiedContent();
  v73 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v71 = &v50 - v27;
  v28 = a2;
  v29 = v72;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, v28, v72);
  v57 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v95 = v29;
  v96 = v57;
  WitnessTable = swift_getWitnessTable();
  View.layoutPriority(_:)();
  (*(v20 + 8))(v22, v19);
  v31 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR, MEMORY[0x277CE04A0]);
  v93 = WitnessTable;
  v94 = v31;
  v58 = swift_getWitnessTable();
  v70 = v25;
  static ViewBuilder.buildExpression<A>(_:)();
  v32 = *(v73 + 8);
  v59 = v73 + 8;
  v60 = v32;
  v32(v25, v23);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v51 = v97;
  v52 = v99;
  v53 = v102;
  v54 = v101;
  v108 = 1;
  v106 = v98;
  v104 = v100;
  v33 = v61;
  v85 = v55;
  v86 = v61;
  v34 = v65;
  v87 = v64;
  v88 = v77;
  v89 = v72;
  v90 = v65;
  v91 = v66;
  v92 = v76;
  type metadata accessor for MetricTextiOSPlatter(0, &v85);
  v35 = v74;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, v33, v34);
  v84[4] = v34;
  v84[5] = v57;
  v36 = v62;
  v66 = swift_getWitnessTable();
  v37 = v75;
  static ViewBuilder.buildExpression<A>(_:)();
  v38 = v63;
  v72 = *(v63 + 8);
  v72(v35, v36);
  v39 = v67;
  v40 = v77;
  static ViewBuilder.buildExpression<A>(_:)();
  v41 = v70;
  (*(v73 + 16))(v70, v71, v23);
  v85 = 0;
  LOBYTE(v86) = v108;
  *(&v86 + 1) = *v107;
  HIDWORD(v86) = *&v107[3];
  v87 = v51;
  LOBYTE(v88) = v106;
  *(&v88 + 1) = *v105;
  HIDWORD(v88) = *&v105[3];
  v89 = v52;
  LOBYTE(v90) = v104;
  *(&v90 + 1) = *v103;
  HIDWORD(v90) = *&v103[3];
  v91 = v54;
  v92 = v53;
  v84[0] = v41;
  v84[1] = &v85;
  (*(v38 + 16))(v35, v37, v36);
  v84[2] = v35;
  v42 = v68;
  v43 = v78;
  (*(v68 + 16))(v78, v39, v40);
  v84[3] = v43;
  v83[0] = v23;
  v44 = v23;
  v83[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
  v83[2] = v36;
  v83[3] = v40;
  v79 = v58;
  v80 = lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v81 = v66;
  v82 = v76;
  static ViewBuilder.buildBlock<each A>(_:)(v84, 4uLL, v83);
  v45 = *(v42 + 8);
  v45(v39, v40);
  v46 = v72;
  v72(v75, v36);
  v47 = v23;
  v48 = v60;
  v60(v71, v47);
  v45(v78, v40);
  v46(v74, v36);
  return v48(v70, v44);
}

uint64_t closure #3 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v58 = a1;
  v59 = a8;
  v75 = a7;
  v73 = a6;
  v70 = a9;
  v71 = a4;
  v72 = a10;
  v64 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v66 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v60 = &v51 - v14;
  v67 = v15;
  v62 = type metadata accessor for ModifiedContent();
  v68 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v69 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v63 = &v51 - v18;
  MEMORY[0x28223BE20](v19);
  v65 = &v51 - v20;
  v53 = a2;
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR);
  v89 = type metadata accessor for ModifiedContent();
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
  v52 = a3;
  v91 = type metadata accessor for ModifiedContent();
  v54 = a5;
  v92 = type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v21 = type metadata accessor for HStack();
  v61 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  v24 = type metadata accessor for ModifiedContent();
  v74 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v76 = &v51 - v28;
  static VerticalAlignment.lastTextBaseline.getter();
  v77 = a2;
  v78 = a3;
  v79 = v71;
  v80 = a5;
  v81 = v73;
  v82 = v75;
  v29 = v59;
  v83 = v59;
  v84 = v72;
  v85 = v58;
  HStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v30 = v21;
  v31 = v60;
  (*(v61 + 8))(v23, v30);
  v97 = WitnessTable;
  v98 = MEMORY[0x277CDFC60];
  v55 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v32 = *(v74 + 8);
  v33 = v26;
  v61 = v24;
  v56 = v32;
  v57 = v74 + 8;
  v32(v26, v24);
  v89 = v53;
  v90 = v52;
  v34 = v71;
  v91 = v71;
  v92 = v54;
  v93 = v73;
  v94 = v75;
  v95 = v29;
  v96 = v72;
  type metadata accessor for MetricTextiOSPlatter(0, &v89);
  View.metricDescriptionFont(multiline:)(0, v34, v29);
  FIUICurrentLanguageNeedsExtendedLineSpacing();
  v35 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  v88[6] = v29;
  v88[7] = v35;
  v36 = swift_getWitnessTable();
  v37 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
  v88[4] = v36;
  v88[5] = v37;
  v38 = v67;
  v39 = swift_getWitnessTable();
  v40 = v63;
  View.offset(x:y:)();
  (*(v66 + 8))(v31, v38);
  v88[2] = v39;
  v88[3] = MEMORY[0x277CDF748];
  v41 = v62;
  v42 = swift_getWitnessTable();
  v43 = v65;
  static ViewBuilder.buildExpression<A>(_:)();
  v44 = v68;
  v45 = *(v68 + 8);
  v45(v40, v41);
  v46 = v61;
  (*(v74 + 16))(v33, v76, v61);
  v89 = v33;
  v47 = v69;
  (*(v44 + 16))(v69, v43, v41);
  v90 = v47;
  v88[0] = v46;
  v88[1] = v41;
  v86 = v55;
  v87 = v42;
  static ViewBuilder.buildBlock<each A>(_:)(&v89, 2uLL, v88);
  v45(v43, v41);
  v48 = v56;
  v56(v76, v46);
  v45(v47, v41);
  return v48(v33, v46);
}

uint64_t closure #1 in closure #3 in MetricTextiOSPlatter.body.getter@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v77 = a7;
  v78 = a8;
  v73 = a3;
  v74 = a5;
  v76 = a4;
  v86 = a1;
  v82 = a9;
  v75 = a10;
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  v80 = v12;
  v81 = v13;
  MEMORY[0x28223BE20](v12);
  v92 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v79 = &v62 - v16;
  v85 = type metadata accessor for ModifiedContent();
  v88 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v91 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v62 - v19;
  v68 = a2;
  v20 = type metadata accessor for ModifiedContent();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
  v24 = type metadata accessor for ModifiedContent();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v62 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR);
  v28 = type metadata accessor for ModifiedContent();
  v29 = *(v28 - 8);
  v83 = v28;
  v84 = v29;
  MEMORY[0x28223BE20](v28);
  v89 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v90 = &v62 - v32;
  v67 = a6;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, a2, a6);
  v69 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v111 = a6;
  v112 = v69;
  WitnessTable = swift_getWitnessTable();
  View.layoutPriority(_:)();
  (*(v21 + 8))(v23, v20);
  v34 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR, MEMORY[0x277CE04A0]);
  v109 = WitnessTable;
  v110 = v34;
  v35 = swift_getWitnessTable();
  v36 = v89;
  View.lineLimit(_:)();
  (*(v25 + 8))(v27, v24);
  v37 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMR, MEMORY[0x277CE0868]);
  v107 = v35;
  v108 = v37;
  v38 = v83;
  v70 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v39 = *(v84 + 8);
  v71 = v84 + 8;
  v72 = v39;
  v39(v36, v38);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v63 = v113;
  v64 = v115;
  v65 = v118;
  v66 = v117;
  v124 = 1;
  v122 = v114;
  v120 = v116;
  v40 = v73;
  v41 = v74;
  v99 = v68;
  v100 = v73;
  v42 = v77;
  v101 = v76;
  v102 = v74;
  v103 = v67;
  v104 = v77;
  v43 = v75;
  v105 = v78;
  v106 = v75;
  type metadata accessor for MetricTextiOSPlatter(0, &v99);
  v44 = v91;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, v40, v42);
  v98[6] = v42;
  v98[7] = v69;
  v45 = v85;
  v77 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v78 = *(v88 + 8);
  v78(v44, v45);
  v46 = v92;
  View.metricUnitFont()(v41, v43);
  v47 = lazy protocol witness table accessor for type MetricUnitFont and conformance MetricUnitFont();
  v98[4] = v43;
  v98[5] = v47;
  v48 = v80;
  v76 = swift_getWitnessTable();
  v49 = v79;
  static ViewBuilder.buildExpression<A>(_:)();
  v50 = v81;
  v86 = *(v81 + 8);
  v86(v46, v48);
  v51 = v83;
  v52 = v89;
  (*(v84 + 16))(v89, v90, v83);
  v99 = 0;
  LOBYTE(v100) = v124;
  *(&v100 + 1) = *v123;
  HIDWORD(v100) = *&v123[3];
  v101 = v63;
  LOBYTE(v102) = v122;
  *(&v102 + 1) = *v121;
  HIDWORD(v102) = *&v121[3];
  v103 = v64;
  LOBYTE(v104) = v120;
  *(&v104 + 1) = *v119;
  HIDWORD(v104) = *&v119[3];
  v105 = v66;
  v106 = v65;
  v98[0] = v52;
  v98[1] = &v99;
  v53 = v87;
  v54 = v91;
  v55 = v85;
  (*(v88 + 16))(v91, v87, v85);
  v98[2] = v54;
  v56 = *(v50 + 16);
  v57 = v92;
  v56(v92, v49, v48);
  v98[3] = v57;
  v97[0] = v51;
  v97[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
  v97[2] = v55;
  v97[3] = v48;
  v93 = v70;
  v94 = lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v95 = v77;
  v96 = v76;
  static ViewBuilder.buildBlock<each A>(_:)(v98, 4uLL, v97);
  v58 = v86;
  v86(v49, v48);
  v59 = v78;
  v78(v53, v55);
  v60 = v72;
  v72(v90, v51);
  v58(v92, v48);
  v59(v91, v55);
  return v60(v89, v51);
}

uint64_t closure #4 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, void (*a6)(void, void)@<X5>, void (*a7)(void, void)@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, void (*a10)(void, void))
{
  v106 = a8;
  v103 = a4;
  v104 = a7;
  v87 = a6;
  v101 = a1;
  v102 = a5;
  v97 = a9;
  v98 = a3;
  v108 = a10;
  v92 = type metadata accessor for ModifiedContent();
  v91 = type metadata accessor for ModifiedContent();
  v95 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v88 = &v80 - v11;
  v90 = type metadata accessor for ModifiedContent();
  v96 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v80 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMR);
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  v93 = v13;
  v94 = v14;
  MEMORY[0x28223BE20](v13);
  v118 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v109 = &v80 - v17;
  v116 = type metadata accessor for ModifiedContent();
  v111 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v110 = &v80 - v20;
  v82 = type metadata accessor for ModifiedContent();
  v84 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v80 - v21;
  v113 = type metadata accessor for ModifiedContent();
  v107 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v117 = &v80 - v24;
  v25 = type metadata accessor for ModifiedContent();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v80 - v27;
  v29 = type metadata accessor for ModifiedContent();
  v105 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v115 = &v80 - v33;
  v34 = v87;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, a2, v87);
  v124 = a2;
  v125 = v98;
  v126 = v103;
  v127 = v102;
  v128 = v34;
  v129 = v104;
  v130 = v106;
  v131 = v108;
  type metadata accessor for MetricTextiOSPlatter(0, &v124);
  v35 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v123[20] = v34;
  v123[21] = v35;
  WitnessTable = swift_getWitnessTable();
  View.minimumScaleFactor(_:)();
  (*(v26 + 8))(v28, v25);
  v83 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMR, MEMORY[0x277CE0868]);
  v123[18] = WitnessTable;
  v123[19] = v83;
  v100 = v29;
  v85 = swift_getWitnessTable();
  v99 = v31;
  static ViewBuilder.buildExpression<A>(_:)();
  v37 = *(v105 + 8);
  v86 = v105 + 8;
  v87 = v37;
  v37(v31, v29);
  v38 = v81;
  v39 = v104;
  View.metricUnitFont()(v98, v104);
  static VerticalAlignment.firstTextBaseline.getter();
  v40 = lazy protocol witness table accessor for type MetricUnitFont and conformance MetricUnitFont();
  v123[16] = v39;
  v123[17] = v40;
  v41 = v82;
  v42 = swift_getWitnessTable();
  v43 = v112;
  View.alignmentGuide(_:computeValue:)();
  (*(v84 + 8))(v38, v41);
  v123[14] = v42;
  v123[15] = MEMORY[0x277CE0760];
  v44 = MEMORY[0x277CE0760];
  v45 = v113;
  v84 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v46 = *(v107 + 8);
  v98 = (v107 + 8);
  v104 = v46;
  v46(v43, v45);
  v47 = v114;
  v48 = v108;
  View.metricUnitFont()(v102, v108);
  v123[12] = v48;
  v123[13] = v40;
  v49 = v116;
  v82 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v50 = *(v111 + 8);
  v102 = (v111 + 8);
  v108 = v50;
  v50(v47, v49);
  v51 = v88;
  v52 = v106;
  View.metricDescriptionFont(multiline:)(0, v103, v106);
  static VerticalAlignment.firstTextBaseline.getter();
  v53 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  v123[10] = v52;
  v123[11] = v53;
  v54 = swift_getWitnessTable();
  v55 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
  v123[8] = v54;
  v123[9] = v55;
  v56 = v91;
  v57 = swift_getWitnessTable();
  v58 = v89;
  View.alignmentGuide(_:computeValue:)();
  (*(v95 + 8))(v51, v56);
  v123[6] = v57;
  v123[7] = v44;
  v59 = v90;
  v60 = swift_getWitnessTable();
  v61 = v118;
  View.minimumScaleFactor(_:)();
  (*(v96 + 8))(v58, v59);
  v123[4] = v60;
  v123[5] = v83;
  v62 = v93;
  v103 = swift_getWitnessTable();
  v63 = v109;
  static ViewBuilder.buildExpression<A>(_:)();
  v64 = v94;
  v106 = *(v94 + 8);
  v106(v61, v62);
  v65 = v99;
  v66 = v100;
  (*(v105 + 16))(v99, v115, v100);
  v124 = v65;
  v67 = v112;
  v68 = v113;
  (*(v107 + 16))(v112, v117, v113);
  v125 = v67;
  v69 = v110;
  v70 = v114;
  v71 = v116;
  (*(v111 + 16))(v114, v110, v116);
  v126 = v70;
  v72 = v118;
  (*(v64 + 16))(v118, v63, v62);
  v127 = v72;
  v123[0] = v66;
  v123[1] = v68;
  v73 = v66;
  v123[2] = v71;
  v123[3] = v62;
  v119 = v85;
  v120 = v84;
  v121 = v82;
  v122 = v103;
  static ViewBuilder.buildBlock<each A>(_:)(&v124, 4uLL, v123);
  v74 = v106;
  v106(v109, v62);
  v75 = v108;
  v108(v69, v71);
  v76 = v104;
  v104(v117, v68);
  v77 = v73;
  v78 = v87;
  v87(v115, v77);
  v74(v118, v62);
  v75(v114, v116);
  v76(v112, v113);
  return v78(v99, v100);
}

double closure #1 in closure #4 in MetricTextiOSPlatter.body.getter(__n128 a1)
{
  v1 = static VerticalAlignment.firstTextBaseline.getter();
  v2 = MEMORY[0x20F3089D0](v1);
  ViewDimensions.height.getter();
  return v2 - v3;
}

double closure #2 in closure #4 in MetricTextiOSPlatter.body.getter(__n128 a1)
{
  v1 = static VerticalAlignment.firstTextBaseline.getter();
  v2 = MEMORY[0x20F3089D0](v1);
  if (FIUICurrentLanguageNeedsExtendedLineSpacing())
  {
    v3 = 1.8;
  }

  else
  {
    v3 = 1.4;
  }

  ViewDimensions.height.getter();
  return v2 - v3 * v4;
}

uint64_t closure #5 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v58 = a7;
  v57 = a6;
  v56 = a4;
  v53 = a3;
  v48 = a2;
  v66 = a8;
  v54 = a9;
  v63 = type metadata accessor for ModifiedContent();
  v64 = type metadata accessor for ModifiedContent();
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v59 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v48 - v13;
  v52 = type metadata accessor for ModifiedContent();
  v70 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v49 = &v48 - v17;
  v18 = type metadata accessor for ModifiedContent();
  v51 = *(v18 - 8);
  v19 = v51;
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v69 = &v48 - v23;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, a1, a5);
  v24 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v92 = a5;
  v93 = v24;
  v50 = v18;
  WitnessTable = swift_getWitnessTable();
  v68 = v21;
  static ViewBuilder.buildExpression<A>(_:)();
  v25 = *(v19 + 8);
  v60 = v19 + 8;
  v61 = v25;
  v25(v21, v18);
  v26 = v48;
  v84 = a1;
  v85 = v48;
  v27 = v53;
  v86 = v53;
  v87 = v56;
  v28 = v57;
  v88 = a5;
  v89 = v57;
  v29 = v58;
  v90 = v58;
  v91 = v54;
  type metadata accessor for MetricTextiOSPlatter(0, &v84);
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, v26, v28);
  v82 = v28;
  v83 = v24;
  v30 = v52;
  v54 = swift_getWitnessTable();
  v31 = v49;
  v67 = v15;
  static ViewBuilder.buildExpression<A>(_:)();
  v56 = *(v70 + 8);
  v57 = v70 + 8;
  (v56)(v15, v30);
  v32 = v59;
  View.metricDescriptionFont(multiline:)(1, v27, v29);
  v33 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  v80 = v29;
  v81 = v33;
  v34 = swift_getWitnessTable();
  v35 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
  v78 = v34;
  v79 = v35;
  v36 = v64;
  v63 = swift_getWitnessTable();
  v37 = v62;
  static ViewBuilder.buildExpression<A>(_:)();
  v38 = v65;
  v39 = *(v65 + 8);
  v39(v32, v36);
  v40 = v68;
  v41 = v50;
  (*(v51 + 16))(v68, v69, v50);
  v84 = v40;
  v42 = v67;
  (*(v70 + 16))(v67, v31, v30);
  v85 = v42;
  (*(v38 + 16))(v32, v37, v36);
  v76 = 0;
  v77 = 1;
  v86 = v32;
  v87 = &v76;
  v75[0] = v41;
  v75[1] = v30;
  v75[2] = v36;
  v75[3] = MEMORY[0x277CE1180];
  v71 = WitnessTable;
  v72 = v54;
  v73 = v63;
  v74 = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(&v84, 4uLL, v75);
  v39(v37, v36);
  v43 = v56;
  (v56)(v31, v30);
  v44 = v41;
  v45 = v41;
  v46 = v61;
  v61(v69, v44);
  v39(v32, v36);
  (v43)(v67, v30);
  return v46(v68, v45);
}

uint64_t closure #6 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a6)(void, void)@<X6>, void (*a7)(void, void)@<X7>, uint64_t a8@<X8>, void (*a9)(void, void))
{
  v81 = a7;
  v68 = a6;
  v64 = a4;
  v76 = a3;
  v74 = a8;
  v67 = a9;
  v72 = type metadata accessor for ModifiedContent();
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v86 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = v59 - v14;
  v78 = type metadata accessor for ModifiedContent();
  v82 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v85 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = v59 - v17;
  v84 = type metadata accessor for ModifiedContent();
  v80 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v60 = v59 - v20;
  v21 = type metadata accessor for ModifiedContent();
  v63 = *(v21 - 8);
  v22 = v63;
  MEMORY[0x28223BE20](v21);
  v24 = v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v79 = v59 - v26;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, a1, a5);
  v27 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v100 = a5;
  v101 = v27;
  v62 = v21;
  WitnessTable = swift_getWitnessTable();
  v75 = v24;
  static ViewBuilder.buildExpression<A>(_:)();
  v28 = *(v22 + 8);
  v69 = v22 + 8;
  v70 = v28;
  v28(v24, v21);
  v92 = a1;
  v93 = a2;
  v29 = v64;
  v94 = v76;
  v95 = v64;
  v30 = v68;
  v96 = a5;
  v97 = v68;
  v31 = v67;
  v98 = v81;
  v99 = v67;
  type metadata accessor for MetricTextiOSPlatter(0, &v92);
  v32 = v83;
  View.metricUnitFont()(a2, v30);
  v33 = lazy protocol witness table accessor for type MetricUnitFont and conformance MetricUnitFont();
  v91[8] = v30;
  v91[9] = v33;
  v34 = v84;
  v61 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v35 = *(v80 + 8);
  v65 = v80 + 8;
  v68 = v35;
  v35(v32, v34);
  v36 = v85;
  View.metricUnitFont()(v29, v31);
  v91[6] = v31;
  v91[7] = v33;
  v37 = v78;
  v64 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v38 = *(v82 + 8);
  v59[1] = v82 + 8;
  v67 = v38;
  v38(v36, v37);
  v39 = v86;
  v40 = v81;
  View.metricUnitFont()(v76, v81);
  v91[4] = v40;
  v91[5] = v33;
  v41 = v72;
  v76 = swift_getWitnessTable();
  v42 = v71;
  static ViewBuilder.buildExpression<A>(_:)();
  v43 = v73;
  v81 = *(v73 + 8);
  v81(v39, v41);
  v44 = v75;
  v45 = v62;
  (*(v63 + 16))(v75, v79, v62);
  v92 = v44;
  v46 = v83;
  v47 = v60;
  v48 = v84;
  (*(v80 + 16))(v83, v60, v84);
  v93 = v46;
  v49 = v85;
  v50 = v77;
  (*(v82 + 16))(v85, v77, v37);
  v94 = v49;
  v51 = v86;
  (*(v43 + 16))(v86, v42, v41);
  v95 = v51;
  v91[0] = v45;
  v91[1] = v48;
  v52 = v37;
  v91[2] = v37;
  v91[3] = v41;
  v87 = WitnessTable;
  v88 = v61;
  v89 = v64;
  v90 = v76;
  static ViewBuilder.buildBlock<each A>(_:)(&v92, 4uLL, v91);
  v53 = v81;
  v81(v42, v41);
  v54 = v52;
  v55 = v67;
  v67(v50, v54);
  v56 = v68;
  v68(v47, v48);
  v57 = v70;
  v70(v79, v45);
  v53(v86, v41);
  v55(v85, v78);
  v56(v83, v84);
  return v57(v75, v45);
}

uint64_t closure #7 in MetricTextiOSPlatter.body.getter@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v43 = a6;
  v44 = a7;
  v41 = a4;
  v40 = a3;
  v38 = a2;
  v46 = a8;
  v39 = a9;
  v34 = type metadata accessor for ModifiedContent();
  v45 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v32 - v14;
  v15 = type metadata accessor for ModifiedContent();
  v32 = *(v15 - 8);
  v16 = v32;
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v33 = &v32 - v20;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, a1, a5);
  v21 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v58 = a5;
  v59 = v21;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v36 = *(v16 + 8);
  v37 = v16 + 8;
  v36(v18, v15);
  v22 = v38;
  v50 = a1;
  v51 = v38;
  v52 = v40;
  v53 = v41;
  v54 = a5;
  v23 = v43;
  v55 = v43;
  v56 = v44;
  v57 = v39;
  type metadata accessor for MetricTextiOSPlatter(0, &v50);
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, v22, v23);
  v49[2] = v23;
  v49[3] = v21;
  v24 = v34;
  v25 = swift_getWitnessTable();
  v26 = v42;
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = v45;
  v28 = *(v45 + 8);
  v28(v12, v24);
  v29 = v33;
  (*(v32 + 16))(v18, v33, v15);
  v50 = v18;
  (*(v27 + 16))(v12, v26, v24);
  v51 = v12;
  v49[0] = v15;
  v49[1] = v24;
  v47 = WitnessTable;
  v48 = v25;
  static ViewBuilder.buildBlock<each A>(_:)(&v50, 2uLL, v49);
  v28(v26, v24);
  v30 = v36;
  v36(v29, v15);
  v28(v12, v24);
  return v30(v18, v15);
}

uint64_t closure #2 in MetricTextiOSPlatter.body.getter@<X0>(_BOOL4 a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v81 = a7;
  v82 = a8;
  v80 = a6;
  v83 = a2;
  v84 = a5;
  v78 = a4;
  v62 = a1;
  v74 = a9;
  v79 = a11;
  v77 = a10;
  v66 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v69 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v67 = &v59 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR);
  v68 = v13;
  v73 = type metadata accessor for ModifiedContent();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v70 = &v59 - v17;
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR);
  type metadata accessor for ModifiedContent();
  v117 = type metadata accessor for ModifiedContent();
  v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
  v119 = type metadata accessor for ModifiedContent();
  v120 = a6;
  v121 = MEMORY[0x277CE1180];
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v18 = type metadata accessor for HStack();
  v60 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = type metadata accessor for ModifiedContent();
  v61 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v59 - v22;
  v76 = type metadata accessor for ModifiedContent();
  v64 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v65 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v59 - v26;
  MEMORY[0x28223BE20](v28);
  v85 = &v59 - v29;
  static VerticalAlignment.lastTextBaseline.getter();
  v75 = a3;
  v86 = a3;
  v87 = v78;
  v88 = v84;
  v89 = v80;
  v90 = v81;
  v91 = v82;
  v92 = v77;
  v93 = v79;
  v94 = v83;
  v63 = v62;
  v30 = v62;
  v95 = v62;
  HStack.init(alignment:spacing:content:)();
  if ((FIUICurrentLanguageNeedsExtendedLineSpacing() & 1) == 0 && !v30)
  {
    v117 = v75;
    v118 = v78;
    v119 = v84;
    v120 = v80;
    v121 = v81;
    v122 = v82;
    v123 = v77;
    v124 = v79;
    type metadata accessor for MetricTextiOSPlatter(0, &v117);
  }

  v62 = !v30;
  WitnessTable = swift_getWitnessTable();
  View.offset(x:y:)();
  (*(v60 + 8))(v20, v18);
  static Alignment.center.getter();
  v115 = WitnessTable;
  v116 = MEMORY[0x277CDF748];
  v58 = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v61[1](v23, v21);
  v113 = v58;
  v114 = MEMORY[0x277CDFC60];
  v32 = v76;
  v59 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v33 = v64;
  v34 = *(v64 + 8);
  v60 = v64 + 8;
  v61 = v34;
  (v34)(v27, v32);
  v35 = v77;
  v117 = v75;
  v118 = v78;
  v36 = v84;
  v119 = v84;
  v120 = v80;
  v121 = v81;
  v122 = v82;
  v123 = v77;
  v124 = v79;
  type metadata accessor for MetricTextiOSPlatter(0, &v117);
  v37 = v67;
  View.metricDescriptionFont(multiline:)(0, v36, v35);
  v38 = [objc_opt_self() secondaryLabelColor];
  v117 = Color.init(uiColor:)();
  v39 = lazy protocol witness table accessor for type MetricDescriptionCoreFont and conformance MetricDescriptionCoreFont();
  v111 = v35;
  v112 = v39;
  v40 = swift_getWitnessTable();
  v41 = lazy protocol witness table accessor for type ExtendedLineSpacingSupport and conformance ExtendedLineSpacingSupport();
  v109 = v40;
  v110 = v41;
  v42 = v68;
  v43 = swift_getWitnessTable();
  v44 = v72;
  View.foregroundStyle<A>(_:)();

  (*(v69 + 8))(v37, v42);
  v45 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
  v107 = v43;
  v108 = v45;
  v46 = v73;
  v83 = swift_getWitnessTable();
  v47 = v70;
  static ViewBuilder.buildExpression<A>(_:)();
  v48 = v71;
  v84 = *(v71 + 8);
  v84(v44, v46);
  v104 = 0;
  LOBYTE(v40) = v62;
  LOBYTE(v43) = v63;
  v105 = v62;
  v106 = v63;
  v117 = &v104;
  v49 = *(v33 + 16);
  v50 = v65;
  v51 = v76;
  v49(v65, v85, v76);
  v118 = v50;
  (*(v48 + 16))(v44, v47, v46);
  v101 = 0;
  v102 = v43;
  v103 = v40;
  v119 = v44;
  v120 = &v101;
  v100[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerVSgMd, &_s7SwiftUI6SpacerVSgMR);
  v100[1] = v51;
  v52 = v51;
  v100[2] = v46;
  v100[3] = v100[0];
  v96 = lazy protocol witness table accessor for type Text? and conformance <A> A?(&lazy protocol witness table cache variable for type Spacer? and conformance <A> A?, &_s7SwiftUI6SpacerVSgMd, &_s7SwiftUI6SpacerVSgMR);
  v97 = v59;
  v98 = v83;
  v99 = v96;
  static ViewBuilder.buildBlock<each A>(_:)(&v117, 4uLL, v100);
  v53 = v84;
  v84(v47, v46);
  v54 = v52;
  v55 = v52;
  v56 = v61;
  (v61)(v85, v54);
  v53(v44, v46);
  return (v56)(v50, v55);
}

uint64_t closure #1 in closure #2 in MetricTextiOSPlatter.body.getter@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(void, void)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v80 = a8;
  v67 = a7;
  v78 = a5;
  LODWORD(v70) = a2;
  v86 = a1;
  v75 = a9;
  v76 = *(a6 - 8);
  v83 = a11;
  v65 = a10;
  MEMORY[0x28223BE20](a1);
  v85 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v84 = &v62 - v16;
  v17 = type metadata accessor for ModifiedContent();
  v73 = *(v17 - 8);
  v74 = v17;
  MEMORY[0x28223BE20](v17);
  v82 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v81 = &v62 - v20;
  v21 = type metadata accessor for ModifiedContent();
  v63 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR);
  v24 = type metadata accessor for ModifiedContent();
  v64 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR);
  v27 = type metadata accessor for ModifiedContent();
  v68 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v62 = &v62 - v28;
  v71 = type metadata accessor for ModifiedContent();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v79 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v66 = &v62 - v31;
  MEMORY[0x28223BE20](v32);
  v87 = &v62 - v33;
  v107 = a3;
  v108 = a4;
  v72 = a4;
  v109 = v78;
  v110 = a6;
  v77 = a6;
  v34 = v67;
  v111 = v67;
  v112 = v80;
  v113 = v65;
  v114 = v83;
  v78 = type metadata accessor for MetricTextiOSPlatter(0, &v107);
  View.metricValueFont(includesSlashes:smallCaps:)(*(v86 + *(v78 + 96)), 1, a3, v34);
  v35 = lazy protocol witness table accessor for type MetricValueFont and conformance MetricValueFont();
  v105 = v34;
  v106 = v35;
  v67 = v35;
  WitnessTable = swift_getWitnessTable();
  View.layoutPriority(_:)();
  (*(v63 + 8))(v23, v21);
  v37 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<LayoutPriorityTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA014LayoutPriorityC3KeyVGMR, MEMORY[0x277CE04A0]);
  v103 = WitnessTable;
  v104 = v37;
  v38 = v62;
  v39 = swift_getWitnessTable();
  View.multilineTextAlignment(_:)();
  (*(v64 + 8))(v26, v24);
  static Edge.Set.top.getter();
  if (v70)
  {
    MetricTextiOSPlatter.workoutViewStyle.getter(v78, &v107);
    specialized static MetricValueFont.capHeightToAscender(for:)(&v107);
  }

  v40 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR, MEMORY[0x277CE0868]);
  v96[9] = v39;
  v96[10] = v40;
  v41 = swift_getWitnessTable();
  v42 = v66;
  View.padding(_:_:)();
  (*(v68 + 8))(v38, v27);
  v96[7] = v41;
  v96[8] = MEMORY[0x277CDF918];
  v43 = v71;
  v65 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v44 = v69;
  v45 = *(v69 + 8);
  v68 = v69 + 8;
  v70 = v45;
  v45(v42, v43);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v62 = v115;
  v63 = v117;
  v66 = v119;
  v64 = v120;
  v102 = 1;
  v100 = v116;
  v98 = v118;
  v46 = v82;
  v47 = v80;
  View.metricValueFont(includesSlashes:smallCaps:)(0, 1, v72, v80);
  v96[5] = v47;
  v96[6] = v67;
  v48 = v74;
  v67 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v49 = v73;
  v50 = *(v73 + 8);
  v72 = v73 + 8;
  v80 = v50;
  v50(v46, v48);
  v51 = v83;
  v52 = v77;
  static ViewBuilder.buildExpression<A>(_:)();
  v53 = v79;
  (*(v44 + 16))();
  v107 = 0;
  LOBYTE(v108) = v102;
  *(&v108 + 1) = *v101;
  HIDWORD(v108) = *&v101[3];
  v109 = v62;
  LOBYTE(v110) = v100;
  *(&v110 + 1) = *v99;
  HIDWORD(v110) = *&v99[3];
  v111 = v63;
  LOBYTE(v112) = v98;
  *(&v112 + 1) = *v97;
  HIDWORD(v112) = *&v97[3];
  v113 = v66;
  v114 = v64;
  v96[0] = v53;
  v96[1] = &v107;
  v54 = v81;
  (*(v49 + 16))(v46, v81, v48);
  v96[2] = v46;
  v55 = v76;
  v56 = v84;
  v57 = v85;
  (*(v76 + 16))();
  v94 = 0;
  v95 = 0;
  v96[3] = v57;
  v96[4] = &v94;
  v93[0] = v43;
  v93[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVGMR);
  v93[2] = v48;
  v93[3] = v52;
  v93[4] = MEMORY[0x277CE1180];
  v88 = v65;
  v89 = lazy protocol witness table accessor for type ModifiedContent<Spacer, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  v90 = v67;
  v91 = v51;
  v92 = MEMORY[0x277CE1170];
  static ViewBuilder.buildBlock<each A>(_:)(v96, 5uLL, v93);
  v58 = *(v55 + 8);
  v58(v56, v52);
  v59 = v80;
  v80(v54, v48);
  v60 = v70;
  v70(v87, v43);
  v58(v85, v52);
  v59(v82, v48);
  return v60(v79, v43);
}

void MetricTextWithAccessory.accessibilityLabel.getter()
{
  if (v0[8])
  {
  }

  else
  {
    v1 = v0[4];
    v2 = v0[5];
    if (v2)
    {
      v22 = v0[4];
      v23 = v2;
      v20 = 10;
      v21 = 0xE100000000000000;
      v19[0] = 32;
      v19[1] = 0xE100000000000000;
      v3 = lazy protocol witness table accessor for type String and conformance String();
      v1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v20, v19, 0, 0, 0, 1, MEMORY[0x277D837D0], MEMORY[0x277D837D0], v4, MEMORY[0x277D837D0], v3, v3, v3);
    }

    else
    {
      v5 = 0;
    }

    v6 = v0[1];
    v25 = *v0;
    v26 = v6;
    v7 = v0[3];
    v27 = v0[2];
    v28 = v7;
    v29 = v1;
    v30 = v5;

    v8 = 0;
    v9 = MEMORY[0x277D84F90];
LABEL_7:
    if (v8 <= 3)
    {
      v10 = 3;
    }

    else
    {
      v10 = v8;
    }

    v11 = v10 + 1;
    v12 = 16 * v8 + 40;
    while (1)
    {
      if (v8 == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        swift_arrayDestroy();
        v22 = v9;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        BidirectionalCollection<>.joined(separator:)();

        return;
      }

      if (v11 == ++v8)
      {
        break;
      }

      v13 = v12 + 16;
      v14 = *&v24[v12];
      v12 += 16;
      if (v14)
      {
        v15 = *(&v21 + v13);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        v17 = *(v9 + 2);
        v16 = *(v9 + 3);
        if (v17 >= v16 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v9);
        }

        *(v9 + 2) = v17 + 1;
        v18 = &v9[16 * v17];
        *(v18 + 4) = v15;
        *(v18 + 5) = v14;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t MetricTextWithAccessory.redactionReasons.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  outlined init with copy of LegibilityWeight?(v2 + *(a1 + 44), &v15 - v10, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for RedactionReasons();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void MetricTextWithAccessory.workoutViewStyle.getter(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 48);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t MetricTextWithAccessory.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v195 = a2;
  v182 = type metadata accessor for AccessibilityChildBehavior();
  v181 = *(v182 - 1);
  MEMORY[0x28223BE20](v182);
  v180 = &v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAFyAFyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAMySSGG_Qo_Md, &_s7SwiftUI4ViewPAAE16privacySensitiveyQrSbFQOyAA15ModifiedContentVyAFyAFyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAMySSGG_Qo_MR);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGSgMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGSgMR);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4TextVSgMd, &_s7SwiftUI4TextVSgMR);
  v7 = *(a1 + 2);
  v8 = a1;
  v190 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAJySSGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAJySSGGMR);
  v10 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>();
  v222 = v9;
  v223 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>? and conformance <A> A?();
  v13 = lazy protocol witness table accessor for type Text? and conformance <A> A?(&lazy protocol witness table cache variable for type Text? and conformance <A> A?, &_s7SwiftUI4TextVSgMd, &_s7SwiftUI4TextVSgMR);
  v14 = *(v8 + 3);
  v178 = v4;
  v222 = v4;
  v223 = v5;
  v175 = v5;
  v224 = v6;
  v225 = v7;
  v15 = v7;
  v167 = OpaqueTypeConformance2;
  v226 = OpaqueTypeConformance2;
  v227 = v12;
  v166 = v12;
  v228 = v13;
  v229 = v14;
  v16 = type metadata accessor for MetricTextiOSPlatter(0, &v222);
  v177 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v173 = &v153 - v17;
  v202 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMR);
  v18 = type metadata accessor for ModifiedContent();
  v174 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v172 = &v153 - v19;
  v179 = v16;
  WitnessTable = swift_getWitnessTable();
  v21 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<LegibilityWeight?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA16LegibilityWeightOSgGMR, MEMORY[0x277CE0868]);
  v163 = WitnessTable;
  v220 = WitnessTable;
  v221 = v21;
  v200 = MEMORY[0x277CDFAD8];
  v22 = swift_getWitnessTable();
  v222 = v18;
  v223 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v168 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v165 = &v153 - v24;
  swift_getTupleTypeMetadata2();
  v25 = type metadata accessor for TupleView();
  v176 = v18;
  v222 = v18;
  v223 = v22;
  v164 = v22;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = swift_getWitnessTable();
  v199 = OpaqueTypeMetadata2;
  v222 = OpaqueTypeMetadata2;
  v223 = v25;
  v201 = v26;
  v224 = v26;
  v225 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v171 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v170 = &v153 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v169 = &v153 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGMR);
  v33 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v158 = v32;
  v222 = v32;
  v223 = v6;
  v185 = v6;
  v224 = v6;
  v225 = v15;
  v34 = v15;
  v157 = v33;
  v226 = v33;
  v227 = v13;
  v184 = v13;
  v228 = v13;
  v229 = v14;
  v196 = v14;
  type metadata accessor for MetricTextWatchOS(255, &v222);
  v35 = type metadata accessor for ModifiedContent();
  v160 = swift_getWitnessTable();
  v218 = v160;
  v219 = v21;
  v36 = swift_getWitnessTable();
  v222 = v35;
  v223 = v25;
  v198 = v25;
  v202 = v36;
  v224 = v36;
  v225 = v27;
  v197 = v27;
  v37 = swift_getOpaqueTypeMetadata2();
  v189 = v28;
  v38 = type metadata accessor for _ConditionalContent();
  v188 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v186 = &v153 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16LegibilityWeightOSgMd, &_s7SwiftUI16LegibilityWeightOSgMR);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v153 - v41;
  v43 = *(v34 - 8);
  MEMORY[0x28223BE20](v44);
  v183 = &v153 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = swift_checkMetadataState();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v47 = &v153 - v46;
  v48 = swift_checkMetadataState();
  v156 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v50 = &v153 - v49;
  v187 = v37;
  v161 = *(v37 - 8);
  MEMORY[0x28223BE20](v51);
  v159 = &v153 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v162 = &v153 - v54;
  v194 = v38;
  v55 = v190;
  v56 = type metadata accessor for _ConditionalContent();
  v193 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v192 = &v153 - v57;
  v58 = v191;
  MetricTextWithAccessory.workoutViewStyle.getter(v55, &v217);
  v200 = v48;
  if (((1 << v217) & 0xCFC) != 0)
  {
    v161 = &v153;
    MEMORY[0x28223BE20](v59);
    v162 = v56;
    v60 = v196;
    MEMORY[0x28223BE20](v61);
    v63 = MEMORY[0x28223BE20](v62);
    *&v150 = v34;
    *(&v150 + 1) = v60;
    v151 = v58;
    v64 = v58 + *(v55 + 40);
    v65 = v183;
    (*(v43 + 16))(v183, v64, v34, v63);
    v66 = *(v58 + 49);
    *(&v150 + 1) = v166;
    *&v150 = v167;
    *(&v147 + 1) = v175;
    *&v147 = v178;
    v67 = v173;
    MetricTextiOSPlatter.init(value:unit:description:accessoryView:includesSlashes:)(partial apply for closure #5 in MetricTextWithAccessory.body.getter, partial apply for closure #6 in MetricTextWithAccessory.body.getter, partial apply for closure #7 in MetricTextWithAccessory.body.getter, v65, v66, v173, v147, v185, v34, v150, v184, v60);
    swift_getKeyPath();
    v68 = *MEMORY[0x277CDFB78];
    v69 = type metadata accessor for LegibilityWeight();
    v70 = *(v69 - 8);
    (*(v70 + 104))(v42, v68, v69);
    (*(v70 + 56))(v42, 0, 1, v69);
    v71 = v172;
    v72 = v179;
    View.environment<A>(_:_:)();

    outlined destroy of LegibilityWeight?(v42, &_s7SwiftUI16LegibilityWeightOSgMd, &_s7SwiftUI16LegibilityWeightOSgMR);
    (*(v177 + 8))(v67, v72);
    v73 = v180;
    static AccessibilityChildBehavior.combine.getter();
    v74 = v165;
    v75 = v176;
    View.accessibilityElement(children:)();
    (v181[1])(v73, v182);
    v76 = (*(v174 + 8))(v71, v75);
    MEMORY[0x28223BE20](v76);
    *&v150 = v34;
    *(&v150 + 1) = v60;
    v151 = v58;
    v77 = swift_checkMetadataState();
    v78 = v170;
    v79 = v199;
    v80 = v201;
    v81 = v197;
    View.accessibilityLabel<A>(content:)();
    (*(v168 + 8))(v74, v79);
    v222 = v79;
    v223 = v77;
    v224 = v80;
    v225 = v81;
    v82 = swift_getOpaqueTypeConformance2();
    v83 = v169;
    v84 = v189;
    static ViewBuilder.buildExpression<A>(_:)();
    v85 = *(v171 + 8);
    v85(v78, v84);
    static ViewBuilder.buildBlock<A>(_:)();
    v222 = v200;
    v223 = v77;
    v224 = v202;
    v225 = v81;
    v86 = swift_getOpaqueTypeConformance2();
    v87 = v186;
    static ViewBuilder.buildEither<A, B>(second:)(v78, v187, v84, v86, v82);
    v205 = v86;
    v206 = v82;
    v88 = v194;
    v89 = swift_getWitnessTable();
    v90 = v192;
    static ViewBuilder.buildEither<A, B>(first:)(v87, v88, MEMORY[0x277CE0BD8], v89, MEMORY[0x277CE0BC8]);
    (*(v188 + 8))(v87, v88);
    v91 = v78;
    v92 = v201;
    v85(v91, v84);
    v93 = v83;
    v94 = v198;
    v95 = v84;
    v56 = v162;
    v85(v93, v95);
    v96 = v199;
  }

  else if (((1 << v217) & 0x301) != 0)
  {
    v182 = &v153;
    MEMORY[0x28223BE20](v59);
    v181 = &v149;
    v97 = v58;
    MEMORY[0x28223BE20](v98);
    v100 = MEMORY[0x28223BE20](v99);
    v101 = v34;
    *&v150 = v34;
    *(&v150 + 1) = v102;
    v103 = v102;
    v151 = v58;
    LODWORD(v180) = *(v58 + 72);
    v105 = *(v43 + 16);
    v106 = v58 + *(v104 + 40);
    v107 = v183;
    v190 = v50;
    v108 = v101;
    v105(v183, v106, v100);
    v152 = v103;
    *(&v150 + 1) = v184;
    *&v150 = v157;
    v109 = v108;
    *(&v148 + 1) = v185;
    *&v148 = v158;
    MetricTextWatchOS.init(value:unit:description:accessoryAsSuffix:accessoryView:)(partial apply for closure #1 in MetricTextWithAccessory.body.getter, partial apply for closure #2 in MetricTextWithAccessory.body.getter, partial apply for closure #3 in MetricTextWithAccessory.body.getter, v180, v107, v47, v148, v185, v108, v150, v184, v152);
    swift_getKeyPath();
    v110 = *MEMORY[0x277CDFB78];
    v111 = v56;
    v112 = type metadata accessor for LegibilityWeight();
    v113 = *(v112 - 8);
    (*(v113 + 104))(v42, v110, v112);
    v114 = v112;
    v56 = v111;
    (*(v113 + 56))(v42, 0, 1, v114);
    v115 = v190;
    v116 = v155;
    View.environment<A>(_:_:)();

    outlined destroy of LegibilityWeight?(v42, &_s7SwiftUI16LegibilityWeightOSgMd, &_s7SwiftUI16LegibilityWeightOSgMR);
    v117 = (*(v154 + 8))(v47, v116);
    MEMORY[0x28223BE20](v117);
    *&v150 = v109;
    *(&v150 + 1) = v196;
    v151 = v97;
    v94 = v198;
    v118 = swift_checkMetadataState();
    v119 = v159;
    v120 = v200;
    v121 = v118;
    v191 = v118;
    v122 = v202;
    v123 = v197;
    View.accessibilityLabel<A>(content:)();
    (*(v156 + 8))(v115, v120);
    v222 = v120;
    v223 = v121;
    v224 = v122;
    v225 = v123;
    v124 = swift_getOpaqueTypeConformance2();
    v125 = v187;
    static ViewBuilder.buildExpression<A>(_:)();
    v196 = v161[1];
    v196(v119, v125);
    static ViewBuilder.buildBlock<A>(_:)();
    v126 = v199;
    v222 = v199;
    v223 = v191;
    v224 = v201;
    v225 = v123;
    v127 = swift_getOpaqueTypeConformance2();
    v128 = v186;
    static ViewBuilder.buildEither<A, B>(first:)(v119, v125, v189, v124, v127);
    v203 = v124;
    v204 = v127;
    v129 = v194;
    v130 = swift_getWitnessTable();
    v90 = v192;
    static ViewBuilder.buildEither<A, B>(first:)(v128, v129, MEMORY[0x277CE0BD8], v130, MEMORY[0x277CE0BC8]);
    (*(v188 + 8))(v128, v129);
    v131 = v119;
    v96 = v126;
    v132 = v196;
    v196(v131, v125);
    v132(v162, v125);
    v92 = v201;
    v81 = v197;
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    LOWORD(v152) = 256;
    v151 = 0;
    v133 = Text.init(_:tableName:bundle:comment:)();
    v135 = v134;
    v196 = v136;
    v222 = v133;
    v223 = v134;
    v138 = v137 & 1;
    LOBYTE(v224) = v137 & 1;
    v225 = v136;
    v94 = v198;
    v213 = v48;
    v214 = v198;
    v139 = v197;
    v215 = v202;
    v216 = v197;
    v140 = swift_getOpaqueTypeConformance2();
    v96 = v199;
    v213 = v199;
    v214 = v94;
    v215 = v201;
    v216 = v139;
    v92 = v201;
    v141 = swift_getOpaqueTypeConformance2();
    v211 = v140;
    v212 = v141;
    v81 = v139;
    v142 = v194;
    v143 = swift_getWitnessTable();
    v90 = v192;
    static ViewBuilder.buildEither<A, B>(second:)(&v222, v142, MEMORY[0x277CE0BD8], v143, MEMORY[0x277CE0BC8]);
    outlined consume of Text.Storage(v133, v135, v138);
  }

  v222 = v200;
  v223 = v94;
  v224 = v202;
  v225 = v81;
  v144 = swift_getOpaqueTypeConformance2();
  v222 = v96;
  v223 = v94;
  v224 = v92;
  v225 = v81;
  v145 = swift_getOpaqueTypeConformance2();
  v209 = v144;
  v210 = v145;
  v207 = swift_getWitnessTable();
  v208 = MEMORY[0x277CE0BC8];
  swift_getWitnessTable();
  static ViewBuilder.buildBlock<A>(_:)();
  return (*(v193 + 8))(v90, v56);
}

uint64_t closure #1 in MetricTextWithAccessory.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  lazy protocol witness table accessor for type String and conformance String();

  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v14 = v8;
  v15 = *(a1 + 48);
  v16 = 1.0;
  if (v15 == 1)
  {
    v16 = *(a1 + *(type metadata accessor for MetricTextWithAccessory(0, a2, a3, v8) + 52));
  }

  result = static Animation.default.getter();
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v13 & 1;
  *(a4 + 24) = v14;
  *(a4 + 32) = v16;
  *(a4 + 40) = result;
  *(a4 + 48) = v15;
  return result;
}

uint64_t closure #2 in MetricTextWithAccessory.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.localizedLowercase.getter();
    result = Text.init<A>(_:)();
    v3 = v7 & 1;
  }

  else
  {
    result = 0;
    v5 = 0;
    v6 = 0;
  }

  *a2 = result;
  a2[1] = v5;
  a2[2] = v3;
  a2[3] = v6;
  return result;
}

uint64_t closure #5 in MetricTextWithAccessory.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RedactionReasons();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v14 = type metadata accessor for MetricTextWithAccessory(0, a2, a3, v13);
  MetricTextWithAccessory.redactionReasons.getter(v14, v12);
  static RedactionReasons.privacy.getter();
  lazy protocol witness table accessor for type RedactionReasons and conformance RedactionReasons();
  LOBYTE(a3) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v15 = *(v7 + 8);
  v15(v9, v6);
  v15(v12, v6);
  if (a3)
  {
    v16 = 0xE400000000000000;
    v17 = 757935405;
  }

  else
  {
    v17 = *a1;
  }

  *&v36[0] = v17;
  *(&v36[0] + 1) = v16;
  lazy protocol witness table accessor for type String and conformance String();
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = *(a1 + 48);
  v26 = 1.0;
  if (v25 == 1)
  {
    v26 = *(a1 + *(v14 + 52));
  }

  v27 = static Animation.default.getter();
  v29 = *a1;
  v28 = *(a1 + 8);
  v37 = v22 & 1;
  *&v31 = v18;
  *(&v31 + 1) = v20;
  LOBYTE(v32) = v22 & 1;
  *(&v32 + 1) = v24;
  *&v33 = v26;
  *(&v33 + 1) = v27;
  LOBYTE(v34) = v25;
  *(&v34 + 1) = 0;
  *&v35 = v29;
  *(&v35 + 1) = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAJySSGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAJySSGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>();
  View.privacySensitive(_:)();
  v36[2] = v33;
  v36[3] = v34;
  v36[4] = v35;
  v36[0] = v31;
  v36[1] = v32;
  return outlined destroy of LegibilityWeight?(v36, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAJySSGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAJySSGGMR);
}

uint64_t closure #6 in MetricTextWithAccessory.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Text.Scale();
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 24);
  if (v13)
  {
    v31 = v10;
    v32 = v9;
    v35[0] = *(a1 + 16);
    v35[1] = v13;
    lazy protocol witness table accessor for type String and conformance String();
    v33 = StringProtocol.localizedUppercase.getter();
    v34 = v14;
    v15 = Text.init<A>(_:)();
    v17 = v16;
    v19 = v18;
    v21 = type metadata accessor for MetricTextWithAccessory(0, a2, a3, v20);
    MetricTextWithAccessory.workoutViewStyle.getter(v21, v35);
    if (LOBYTE(v35[0]) == 4)
    {
      static Text.Scale.default.getter();
    }

    else
    {
      static Text.Scale.secondary.getter();
    }

    v22 = Text.textScale(_:isEnabled:)();
    v23 = v27;
    v30 = v28;
    v24 = v29;
    outlined consume of Text.Storage(v15, v17, v19 & 1);

    (*(v31 + 8))(v12, v32);
    if (one-time initialization token for scaleFactorForEnclosedText != -1)
    {
      swift_once();
    }

    v26 = static MetricUnitFont.scaleFactorForEnclosedText;
    result = swift_getKeyPath();
    v13 = v30 & 1;
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    result = 0;
    v26 = 0;
  }

  *a4 = v22;
  a4[1] = v23;
  a4[2] = v13;
  a4[3] = v24;
  a4[4] = result;
  a4[5] = v26;
  return result;
}

uint64_t closure #3 in MetricTextWithAccessory.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.localizedUppercase.getter();
    result = Text.init<A>(_:)();
    v3 = v7 & 1;
  }

  else
  {
    result = 0;
    v5 = 0;
    v6 = 0;
  }

  *a2 = result;
  a2[1] = v5;
  a2[2] = v3;
  a2[3] = v6;
  return result;
}

double closure #4 in MetricTextWithAccessory.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v25[1] = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v25[0] = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  type metadata accessor for MetricTextWithAccessory(0, v11, v12, v12);
  MetricTextWithAccessory.accessibilityLabel.getter();
  v27 = v13;
  v28 = v14;
  lazy protocol witness table accessor for type String and conformance String();
  v15 = Text.init<A>(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = v15;
  v28 = v17;
  v19 &= 1u;
  v29 = v19;
  v30 = v21;
  v31[0] = &v27;
  v22 = v25[0];
  (*(v6 + 16))(v25[0], v10, a2);
  v31[1] = v22;
  outlined copy of Text.Storage(v15, v17, v19);

  v26[0] = MEMORY[0x277CE0BD8];
  v26[1] = a2;
  v25[2] = MEMORY[0x277CE0BC8];
  v25[3] = a3;
  static ViewBuilder.buildBlock<each A>(_:)(v31, 2uLL, v26);
  outlined consume of Text.Storage(v15, v17, v19);

  v23 = *(v6 + 8);
  v23(v10, a2);
  v23(v22, a2);
  outlined consume of Text.Storage(v27, v28, v29);

  return result;
}

uint64_t MetricText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v3;
  v13 = *(v1 + 64);
  v4 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI23MetricTextWithAccessoryVy05SwiftB09EmptyViewVGMd, &_s9WorkoutUI23MetricTextWithAccessoryVy05SwiftB09EmptyViewVGMR);
  v6 = v5[11];
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v5[12];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  *(a1 + v5[13]) = 0x3FD6666666666666;
  *(a1 + 64) = *(v1 + 64);
  v8 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v8;
  v9 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v9;
  *(a1 + 72) = 0;
  return outlined init with copy of MetricTextDescriptor(v12, v11);
}

uint64_t protocol witness for View.body.getter in conformance MetricText@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v12[2] = *(v1 + 32);
  v12[3] = v3;
  v13 = *(v1 + 64);
  v4 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI23MetricTextWithAccessoryVy05SwiftB09EmptyViewVGMd, &_s9WorkoutUI23MetricTextWithAccessoryVy05SwiftB09EmptyViewVGMR);
  v6 = v5[11];
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA16RedactionReasonsV_GMR);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v5[12];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  *(a1 + v5[13]) = 0x3FD6666666666666;
  *(a1 + 64) = *(v1 + 64);
  v8 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v8;
  v9 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v9;
  *(a1 + 72) = 0;
  return outlined init with copy of MetricTextDescriptor(v12, v11);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAJySSGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGAJySSGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _AnimationModifier<String> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySSGMd, &_s7SwiftUI18_AnimationModifierVySSGMR, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>>, _AnimationModifier<String>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA14_OpacityEffectVGAA18_AnimationModifierVySbGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA14_OpacityEffectVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGSgMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGSgMR);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>? and conformance <A> A?);
  }

  return result;
}

void type metadata completion function for MetricTextWithAccessory(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<RedactionReasons>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Environment<WorkoutViewStyle>();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricTextWithAccessory(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for RedactionReasons() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_30;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((((v11 + 73) & ~v11) + *(v6 + 64) + v12) & ~v12) + 24) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v8 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_30:
    if ((v7 & 0x80000000) != 0)
    {
      v22 = *(v6 + 48);

      return v22((a1 + v11 + 73) & ~v11, v7, v5);
    }

    else
    {
      v21 = *(a1 + 8);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      return (v21 + 1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v8 + (v14 | v20) + 1;
}

double storeEnumTagSinglePayload for MetricTextWithAccessory(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for RedactionReasons() - 8);
  v13 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v13 = *(v11 + 64);
  }

  v14 = *(v8 + 80);
  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = ((v13 + ((((v14 + 73) & ~v14) + *(v8 + 64) + v15) & ~v15) + 24) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 >= a3)
  {
    v19 = 0;
    v20 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = a3 - v10 + 1;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v16] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&a1[v16] = 0;
      }

      else if (v19)
      {
        a1[v16] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if ((v9 & 0x80000000) != 0)
      {
        v22 = *(v23 + 56);

        v22(&a1[v14 + 73] & ~v14, a2, v9, v7);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result = 0.0;
        *(a1 + 40) = 0u;
        *(a1 + 24) = 0u;
        *(a1 + 8) = 0u;
        *(a1 + 56) = 0u;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(a1 + 1) = (a2 - 1);
      }

      return result;
    }
  }

  if (v16)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  if (v16)
  {
    bzero(a1, v16);
    *a1 = ~v10 + a2;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *&a1[v16] = v21;
    }

    else
    {
      *&a1[v16] = v21;
    }
  }

  else if (v19)
  {
    a1[v16] = v21;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricTextDescriptor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for MetricTextDescriptor(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata completion function for MetricTextWatchOS(void *a1)
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
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricTextWatchOS(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a3[5] - 8);
  v15 = *(v14 + 84);
  v16 = *(v8 + 80);
  v17 = *(*(a3[3] - 8) + 64);
  v18 = *(v11 + 80);
  v19 = *(*(v7 - 8) + 64);
  v20 = *(v14 + 80);
  v21 = *(v14 + 64);
  if (v15 <= v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = *(v14 + 84);
  }

  if (v22 <= 0xFE)
  {
    v22 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = *(*(a3[2] - 8) + 64) + v16;
  v24 = a2 - v22;
  if (a2 > v22)
  {
    v25 = v21 + ((v19 + v20 + ((v17 + v18 + (v23 & ~v16)) & ~v18)) & ~v20) + 1;
    v26 = 8 * v25;
    if (v25 > 3)
    {
      goto LABEL_15;
    }

    v28 = ((v24 + ~(-1 << v26)) >> v26) + 1;
    if (HIWORD(v28))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v28 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v28 >= 2)
    {
LABEL_15:
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_35;
      }

LABEL_22:
      v29 = (v27 - 1) << v26;
      if (v25 > 3)
      {
        v29 = 0;
      }

      if (v21 + ((v19 + v20 + ((v17 + v18 + (v23 & ~v16)) & ~v18)) & ~v20) == -1)
      {
        v31 = 0;
      }

      else
      {
        if (v25 <= 3)
        {
          v30 = v21 + ((v19 + v20 + ((v17 + v18 + (v23 & ~v16)) & ~v18)) & ~v20) + 1;
        }

        else
        {
          v30 = 4;
        }

        if (v30 > 2)
        {
          if (v30 == 3)
          {
            v31 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v31 = *a1;
          }
        }

        else if (v30 == 1)
        {
          v31 = *a1;
        }

        else
        {
          v31 = *a1;
        }
      }

      v38 = v22 + (v31 | v29);
      return (v38 + 1);
    }
  }

LABEL_35:
  if (v6 != v22)
  {
    v34 = (a1 + v23) & ~v16;
    if (v9 == v22)
    {
      v35 = *(v8 + 48);
      v36 = *(v8 + 84);
      v37 = a3[3];

      return v35(v34, v36, v37);
    }

    v34 = (v34 + v17 + v18) & ~v18;
    if (v12 == v22)
    {
      v35 = *(v11 + 48);
      v36 = *(v11 + 84);
      v37 = a3[4];

      return v35(v34, v36, v37);
    }

    v34 = (v34 + v19 + v20) & ~v20;
    if (v15 == v22)
    {
      v35 = *(v14 + 48);
      v36 = *(v14 + 84);
      v37 = a3[5];

      return v35(v34, v36, v37);
    }

    v39 = *(v34 + v21);
    if (v39 < 2)
    {
      return 0;
    }

    v38 = (v39 + 2147483646) & 0x7FFFFFFF;
    return (v38 + 1);
  }

  v32 = *(v5 + 48);

  return v32();
}

char *storeEnumTagSinglePayload for MetricTextWatchOS(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[4];
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a4[5] - 8);
  v15 = *(v14 + 84);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v8 + 80);
  v18 = *(*(a4[3] - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(*(v7 - 8) + 64);
  v21 = *(v14 + 80);
  v22 = *(v14 + 64);
  if (v15 <= v13)
  {
    v23 = v13;
  }

  else
  {
    v23 = *(v14 + 84);
  }

  if (v23 <= 0xFE)
  {
    v23 = 254;
  }

  v24 = v16 + v17;
  v25 = v22 + ((v20 + v21 + ((v18 + v19 + ((v16 + v17) & ~v17)) & ~v19)) & ~v21) + 1;
  v26 = a3 >= v23;
  v27 = a3 - v23;
  if (v27 != 0 && v26)
  {
    if (v25 <= 3)
    {
      v32 = ((v27 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
      if (HIWORD(v32))
      {
        v28 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v28 = v33;
        }

        else
        {
          v28 = 0;
        }
      }
    }

    else
    {
      v28 = 1;
    }
  }

  else
  {
    v28 = 0;
  }

  if (v23 < a2)
  {
    v29 = ~v23 + a2;
    if (v25 < 4)
    {
      v31 = (v29 >> (8 * v25)) + 1;
      if (v25)
      {
        v34 = v29 & ~(-1 << (8 * v25));
        v35 = result;
        bzero(result, v25);
        result = v35;
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *v35 = v34;
            if (v28 > 1)
            {
LABEL_59:
              if (v28 == 2)
              {
                *&result[v25] = v31;
              }

              else
              {
                *&result[v25] = v31;
              }

              return result;
            }
          }

          else
          {
            *v35 = v29;
            if (v28 > 1)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_56;
        }

        *v35 = v34;
        v35[2] = BYTE2(v34);
      }

      if (v28 > 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v30 = result;
      bzero(result, v25);
      result = v30;
      *v30 = v29;
      v31 = 1;
      if (v28 > 1)
      {
        goto LABEL_59;
      }
    }

LABEL_56:
    if (v28)
    {
      result[v25] = v31;
    }

    return result;
  }

  if (v28 > 1)
  {
    if (v28 != 2)
    {
      *&result[v25] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_39;
    }

    *&result[v25] = 0;
LABEL_38:
    if (!a2)
    {
      return result;
    }

    goto LABEL_39;
  }

  if (!v28)
  {
    goto LABEL_38;
  }

  result[v25] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_39:
  if (v6 != v23)
  {
    result = (&result[v24] & ~v17);
    if (v9 == v23)
    {
      v37 = *(v8 + 56);
    }

    else
    {
      result = (&result[v18 + v19] & ~v19);
      if (v12 == v23)
      {
        v37 = *(v11 + 56);
      }

      else
      {
        result = (&result[v20 + v21] & ~v21);
        if (v15 != v23)
        {
          result[v22] = a2 + 1;
          return result;
        }

        v37 = *(v14 + 56);
      }
    }

    return v37(result);
  }

  v36 = *(v5 + 56);

  return v36();
}

void type metadata completion function for MetricTextiOSPlatter(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          type metadata accessor for Environment<WorkoutViewStyle>();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricTextiOSPlatter(int *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a3[5] - 8);
  v15 = *(v14 + 84);
  v16 = *(v8 + 80);
  v17 = *(*(a3[3] - 8) + 64);
  v18 = *(v11 + 80);
  v19 = *(*(v7 - 8) + 64);
  v20 = *(v14 + 80);
  v21 = *(v14 + 64);
  if (v15 <= v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = *(v14 + 84);
  }

  if (v22 <= 0xFE)
  {
    v22 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = *(*(a3[2] - 8) + 64) + v16;
  if (v22 < a2)
  {
    v24 = ((((((((v19 + v20 + ((v17 + v18 + (v23 & ~v16)) & ~v18)) & ~v20) + v21) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v25 = a2 - v22;
    v26 = v24 & 0xFFFFFFF8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v27 = 2;
    }

    else
    {
      v27 = v25 + 1;
    }

    if (v27 >= 0x10000)
    {
      v28 = 4;
    }

    else
    {
      v28 = 2;
    }

    if (v27 < 0x100)
    {
      v28 = 1;
    }

    if (v27 >= 2)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v30 = *(a1 + v24);
        if (v30)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v30 = *(a1 + v24);
        if (v30)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v29)
    {
      v30 = *(a1 + v24);
      if (v30)
      {
LABEL_28:
        v31 = v30 - 1;
        if (v26)
        {
          v31 = 0;
          v32 = *a1;
        }

        else
        {
          v32 = 0;
        }

        v39 = v22 + (v32 | v31);
        return (v39 + 1);
      }
    }
  }

  if (v6 != v22)
  {
    v35 = (a1 + v23) & ~v16;
    if (v9 == v22)
    {
      v36 = *(v8 + 48);
      v37 = *(v8 + 84);
      v38 = a3[3];

      return v36(v35, v37, v38);
    }

    v35 = (v35 + v17 + v18) & ~v18;
    if (v12 == v22)
    {
      v36 = *(v11 + 48);
      v37 = *(v11 + 84);
      v38 = a3[4];

      return v36(v35, v37, v38);
    }

    v35 = (v35 + v19 + v20) & ~v20;
    if (v15 == v22)
    {
      v36 = *(v14 + 48);
      v37 = *(v14 + 84);
      v38 = a3[5];

      return v36(v35, v37, v38);
    }

    v40 = *(v35 + v21);
    if (v40 >= 2)
    {
      v39 = (v40 + 2147483646) & 0x7FFFFFFF;
      return (v39 + 1);
    }

    return 0;
  }

  v33 = *(v5 + 48);

  return v33(a1);
}

_DWORD *storeEnumTagSinglePayload for MetricTextiOSPlatter(_DWORD *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = a4[4];
  v7 = *(v5 + 84);
  v8 = *(a4[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v6 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(a4[5] - 8);
  v15 = *(v14 + 84);
  v16 = *(*(a4[2] - 8) + 64);
  v17 = *(v8 + 80);
  v18 = *(*(a4[3] - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(*(v6 - 8) + 64);
  v21 = *(v14 + 80);
  v22 = *(v14 + 64);
  if (v15 <= v13)
  {
    v23 = v13;
  }

  else
  {
    v23 = *(v14 + 84);
  }

  if (v23 <= 0xFE)
  {
    v23 = 254;
  }

  v24 = v16 + v17;
  v25 = ((((((((v20 + v21 + ((v18 + v19 + ((v16 + v17) & ~v17)) & ~v19)) & ~v21) + v22) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v23 >= a3)
  {
    v29 = 0;
    v30 = a2 - v23;
    if (a2 <= v23)
    {
      goto LABEL_25;
    }

LABEL_30:
    if (v25)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30;
    }

    if (v25)
    {
      v32 = ~v23 + a2;
      v33 = result;
      bzero(result, v25);
      result = v33;
      *v33 = v32;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        *(result + v25) = v31;
      }

      else
      {
        *(result + v25) = v31;
      }
    }

    else if (v29)
    {
      *(result + v25) = v31;
    }

    return result;
  }

  v26 = a3 - v23;
  if (v25)
  {
    v27 = 2;
  }

  else
  {
    v27 = v26 + 1;
  }

  if (v27 >= 0x10000)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  if (v27 < 0x100)
  {
    v28 = 1;
  }

  if (v27 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  v30 = a2 - v23;
  if (a2 > v23)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (v29 > 1)
  {
    if (v29 != 2)
    {
      *(result + v25) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_41;
    }

    *(result + v25) = 0;
LABEL_40:
    if (!a2)
    {
      return result;
    }

    goto LABEL_41;
  }

  if (!v29)
  {
    goto LABEL_40;
  }

  *(result + v25) = 0;
  if (!a2)
  {
    return result;
  }

LABEL_41:
  if (v7 != v23)
  {
    result = ((result + v24) & ~v17);
    if (v9 == v23)
    {
      v35 = *(v8 + 56);
    }

    else
    {
      result = ((result + v18 + v19) & ~v19);
      if (v12 == v23)
      {
        v35 = *(v11 + 56);
      }

      else
      {
        result = ((result + v20 + v21) & ~v21);
        if (v15 != v23)
        {
          *(result + v22) = a2 + 1;
          return result;
        }

        v35 = *(v14 + 56);
      }
    }

    return v35(result);
  }

  v34 = *(v5 + 56);

  return v34();
}

uint64_t lazy protocol witness table accessor for type Text? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricUnitFont and conformance MetricUnitFont()
{
  result = lazy protocol witness table cache variable for type MetricUnitFont and conformance MetricUnitFont;
  if (!lazy protocol witness table cache variable for type MetricUnitFont and conformance MetricUnitFont)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricUnitFont and conformance MetricUnitFont);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of LegibilityWeight?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of LegibilityWeight?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PickerEditingStateHandler.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PickerEditingStateHandler.State(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

uint64_t PickerEditingStateHandler.state.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void key path getter for PickerEditingStateHandler.state : PickerEditingStateHandler(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

double PickerEditingStateHandler.state.setter(unsigned __int8 a1)
{
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double PickerEditingStateHandler.bindings.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

double key path getter for PickerEditingStateHandler.bindings : PickerEditingStateHandler@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 24);

  return result;
}

double key path setter for PickerEditingStateHandler.bindings : PickerEditingStateHandler(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void closure #1 in PickerEditingStateHandler.bindings.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t PickerEditingStateHandler.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9WorkoutUI25PickerEditingStateHandlerC0G0O_05SwiftD07BindingVySbGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  ObservationRegistrar.init()();
  v2 = 0;
  while (1)
  {
    v4 = outlined read-only object #0 of static PickerEditingStateHandler.State.allCases.getter[v2 + 32];
    if (!v4)
    {
      goto LABEL_4;
    }

    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = v1;
    *(v5 + 40) = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = v1;
    *(v6 + 40) = v4;
    swift_retain_n();
    Binding.init(get:set:)();
    swift_getKeyPath();
    lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 24);
    *(v1 + 24) = 0x8000000000000000;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)();
    v11 = v8[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      break;
    }

    v15 = v10;
    if (v8[3] < v14)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
      v9 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

LABEL_11:
      v17 = v8;
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_2;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v21 = v9;
    specialized _NativeDictionary.copy()();
    v9 = v21;
    v17 = v8;
    if ((v15 & 1) == 0)
    {
LABEL_12:
      v17[(v9 >> 6) + 8] |= 1 << v9;
      *(v17[6] + v9) = v4;
      v18 = v17[7] + 24 * v9;
      *v18 = v23;
      *(v18 + 8) = v24;
      *(v18 + 16) = v25;
      v19 = v17[2];
      v13 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v13)
      {
        goto LABEL_18;
      }

      v17[2] = v20;
      goto LABEL_3;
    }

LABEL_2:
    v3 = v17[7] + 24 * v9;
    *v3 = v23;
    *(v3 + 8) = v24;
    *(v3 + 16) = v25;

LABEL_3:
    *(v1 + 24) = v17;
    swift_endAccess();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

LABEL_4:
    if (++v2 == 8)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void closure #1 in closure #1 in PickerEditingStateHandler.init()(uint64_t a1@<X2>, unsigned __int8 a2@<W3>, BOOL *a3@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(a1 + 16) == a2;
}

void closure #2 in closure #1 in PickerEditingStateHandler.init()(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = a5;
  if (*a1 == 1)
  {
    if (*(a4 + 16) != a5)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    swift_getKeyPath();
    lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(a4 + 16) == v6)
    {
      if (v6)
      {
        v8 = swift_getKeyPath();
        MEMORY[0x28223BE20](v8);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        *(a4 + 16) = 0;
      }
    }
  }
}

uint64_t PickerEditingStateHandler.mode(_:)()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 24);
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 24 * v2);

    return v4;
  }

  else
  {
    static Binding.constant(_:)();
    return v6;
  }
}

uint64_t PickerEditingStateHandler.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9WorkoutUI25PickerEditingStateHandler___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PickerEditingStateHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for PickerEditingStateHandler;
  if (!type metadata singleton initialization cache for PickerEditingStateHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PickerEditingStateHandler(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for PickerEditingStateHandler.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PickerEditingStateHandler.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PickerEditingStateHandler.State] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [PickerEditingStateHandler.State] and conformance [A];
  if (!lazy protocol witness table cache variable for type [PickerEditingStateHandler.State] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI25PickerEditingStateHandlerC0E0OGMd, &_sSay9WorkoutUI25PickerEditingStateHandlerC0E0OGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PickerEditingStateHandler.State] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PickerEditingStateHandler.State and conformance PickerEditingStateHandler.State()
{
  result = lazy protocol witness table cache variable for type PickerEditingStateHandler.State and conformance PickerEditingStateHandler.State;
  if (!lazy protocol witness table cache variable for type PickerEditingStateHandler.State and conformance PickerEditingStateHandler.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PickerEditingStateHandler.State and conformance PickerEditingStateHandler.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PickerEditingStateHandler and conformance PickerEditingStateHandler()
{
  result = lazy protocol witness table cache variable for type PickerEditingStateHandler and conformance PickerEditingStateHandler;
  if (!lazy protocol witness table cache variable for type PickerEditingStateHandler and conformance PickerEditingStateHandler)
  {
    type metadata accessor for PickerEditingStateHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PickerEditingStateHandler and conformance PickerEditingStateHandler);
  }

  return result;
}

uint64_t objectdestroyTm_86()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void closure #1 in PickerEditingStateHandler.state.setterpartial apply()
{
  partial apply for closure #1 in PickerEditingStateHandler.state.setter();
}

{
  partial apply for closure #1 in PickerEditingStateHandler.state.setter();
}

uint64_t MockWheelchairUseProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ElevationChangeMetricView.init(metricType:elevationChange:formattingManager:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  v11 = a2;
  *a5 = a1;
  if (a3)
  {
    v11 = 0.0;
  }

  *(a5 + 8) = v11;
  *(a5 + 16) = a4;
  *(a5 + 24) = result;
  *(a5 + 32) = 0;
  return result;
}

uint64_t ElevationChangeMetricView.descriptionString.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (*v0 == 53)
  {
    if (*(v0 + 32))
    {
      v7 = *(v0 + 24);
    }

    else
    {

      static os_log_type_t.fault.getter();
      v9 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutViewStyle>.Content(v5, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v7) = v26;
    }

    if (v7 <= 9u && ((1 << v7) & 0x301) != 0)
    {
      v10 = "_METRIC_DESCRIPTION_FULL";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = WorkoutUIBundle.super.isa;
      v24 = 0xE000000000000000;
      v12 = 0xD000000000000023;
    }

    else
    {
      if (v6)
      {
        v20 = v5;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v22 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        outlined consume of Environment<WorkoutViewStyle>.Content(v5, 0);
        (*(v2 + 8))(v4, v1);
        v20 = v26;
      }

      if (v20 == 2)
      {
        v10 = "ION_ONE_LINE_FULL";
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v11 = WorkoutUIBundle.super.isa;
        v24 = 0xE000000000000000;
        v12 = 0xD000000000000028;
      }

      else
      {
        v10 = "ionChangeMetricView";
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v11 = WorkoutUIBundle.super.isa;
        v24 = 0xE000000000000000;
        v12 = 0xD000000000000031;
      }
    }

    goto LABEL_13;
  }

  if (*v0 == 10)
  {
    if (*(v0 + 32))
    {
      v8 = *(v0 + 24);
    }

    else
    {

      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutViewStyle>.Content(v5, 0);
      (*(v2 + 8))(v4, v1);
      LOBYTE(v8) = v26;
    }

    if (v8 <= 9u && ((1 << v8) & 0x301) != 0)
    {
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = WorkoutUIBundle.super.isa;
      v24 = 0xE000000000000000;
      v13 = 0x800000020CBA3510;
      v12 = 0xD000000000000021;
      goto LABEL_20;
    }

    if (v6)
    {
      v21 = v5;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v23 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      outlined consume of Environment<WorkoutViewStyle>.Content(v5, 0);
      (*(v2 + 8))(v4, v1);
      v21 = v26;
    }

    if (v21 == 2)
    {
      v10 = "ETRIC_DESCRIPTION_ONE_LINE_FULL";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = WorkoutUIBundle.super.isa;
      v24 = 0xE000000000000000;
      v12 = 0xD000000000000026;
    }

    else
    {
      v10 = "_METRIC_DESCRIPTION";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v11 = WorkoutUIBundle.super.isa;
      v24 = 0xE000000000000000;
      v12 = 0xD00000000000002FLL;
    }

LABEL_13:
    v13 = v10 | 0x8000000000000000;
LABEL_20:
    v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v15.value._object = 0xEB00000000656C62;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, v15, v11, v16, *(&v24 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}