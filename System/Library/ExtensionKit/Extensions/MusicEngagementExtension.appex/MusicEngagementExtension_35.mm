unint64_t lazy protocol witness table accessor for type ImagePicker.Coordinator.ImagePickerError and conformance ImagePicker.Coordinator.ImagePickerError()
{
  result = lazy protocol witness table cache variable for type ImagePicker.Coordinator.ImagePickerError and conformance ImagePicker.Coordinator.ImagePickerError;
  if (!lazy protocol witness table cache variable for type ImagePicker.Coordinator.ImagePickerError and conformance ImagePicker.Coordinator.ImagePickerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePicker.Coordinator.ImagePickerError and conformance ImagePicker.Coordinator.ImagePickerError);
  }

  return result;
}

uint64_t outlined destroy of ImagePicker(uint64_t a1)
{
  v2 = type metadata accessor for ImagePicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10037473C(__n128 a1)
{
  v2 = type metadata accessor for PHPickerResult();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

double partial apply for closure #1 in ImagePicker.Coordinator.picker(_:didFinishPicking:)(uint64_t a1, unint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = *(type metadata accessor for PHPickerResult() - 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return closure #1 in ImagePicker.Coordinator.picker(_:didFinishPicking:)(a1, a2, a3, v10, v11, v12, v9);
}

uint64_t lazy protocol witness table accessor for type UIImagePickerControllerInfoKey and conformance UIImagePickerControllerInfoKey(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100374920()
{
  v1 = type metadata accessor for ImagePicker(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
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

  v5 = v3 + *(v1 + 20);

  if (*(v3 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t outlined init with take of ImagePicker(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in ImagePicker.makeCoordinator()(void *a1, char a2)
{
  v5 = *(type metadata accessor for ImagePicker(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in ImagePicker.makeCoordinator()(a1, a2 & 1, v6);
}

unint64_t lazy protocol witness table accessor for type ImagePicker.SourceType and conformance ImagePicker.SourceType()
{
  result = lazy protocol witness table cache variable for type ImagePicker.SourceType and conformance ImagePicker.SourceType;
  if (!lazy protocol witness table cache variable for type ImagePicker.SourceType and conformance ImagePicker.SourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImagePicker.SourceType and conformance ImagePicker.SourceType);
  }

  return result;
}

uint64_t sub_100374C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd, &_s7SwiftUI11EnvironmentVyAA13DismissActionVGMR);
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

    return (v10 + 1);
  }
}

uint64_t sub_100374D28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA13DismissActionVGMd, &_s7SwiftUI11EnvironmentVyAA13DismissActionVGMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for ImagePicker(uint64_t a1)
{
  type metadata accessor for Environment<DismissAction>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Binding<UIImage?>(319, &lazy cache variable for type metadata for Binding<UIImage?>, &_sSo7UIImageCSgMd_0, &_sSo7UIImageCSgMR_0, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Binding<ImagePicker.SourceType>(319, &lazy cache variable for type metadata for Binding<ImagePicker.SourceType>, &type metadata for ImagePicker.SourceType);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Binding<UIImage?>(319, &_syycSgML_0, &_syycMd_0, &_syycMR_0, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Binding<ImagePicker.SourceType>(319, &lazy cache variable for type metadata for Binding<Bool>, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Binding<UIImage?>(319, &lazy cache variable for type metadata for [String : Bool]?, &_sSDySSSbGMd, &_sSDySSSbGMR, &type metadata accessor for Optional);
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

void type metadata accessor for Environment<DismissAction>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<DismissAction>)
  {
    type metadata accessor for DismissAction();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<DismissAction>);
    }
  }
}

void type metadata accessor for Binding<ImagePicker.SourceType>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Binding();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Binding<UIImage?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t type metadata completion function for ImagePicker.Coordinator(uint64_t a1)
{
  result = type metadata accessor for ImagePicker(319);
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

uint64_t sub_1003753EC(__n128 a1)
{
  v2 = type metadata accessor for PHPickerResult();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  swift_unknownObjectRelease();
  v5 = *(v1 + 40);
  if (v5 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v1 + 32), v5);
  }

  (*(v3 + 8))(v1 + ((v4 + 72) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in ImagePicker.Coordinator.picker(_:didFinishPicking:)(uint64_t a1, __n128 a2)
{
  type metadata accessor for PHPickerResult();
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in ImagePicker.Coordinator.picker(_:didFinishPicking:)(a1, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t _s9MusicCore18PresentationSourceVSgWOc_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentationSourceVSgMd_0, &_s9MusicCore18PresentationSourceVSgMR_0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PresentationSource?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18PresentationSourceVSgMd_0, &_s9MusicCore18PresentationSourceVSgMR_0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t InteractionFeedbackLoadingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA0D0PAAE08progressD5StyleyQrqd__AA08ProgressdM0Rd__lFQOyAA0nD0VyAA05EmptyD0VAUG_AA08CircularndM0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitsT0VyAA010TransitionwR0VGGSgAKtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA0D0PAAE08progressD5StyleyQrqd__AA08ProgressdM0Rd__lFQOyAA0nD0VyAA05EmptyD0VAUG_AA08CircularndM0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitsT0VyAA010TransitionwR0VGGSgAKtGGMR);
  closure #1 in InteractionFeedbackLoadingView.body.getter(v5, a2, (a3 + *(v8 + 44)));
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = v5;
  *(v9 + 32) = a2;
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyAA0G0PAAE08progressG5StyleyQrqd__AA08ProgressgJ0Rd__lFQOyAA0kG0VyAA05EmptyG0VAQG_AA08CircularkgJ0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitpQ0VyAA010TransitiontO0VGGSgAItGGAA017_AppearanceActionQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyAA0G0PAAE08progressG5StyleyQrqd__AA08ProgressgJ0Rd__lFQOyAA0kG0VyAA05EmptyG0VAQG_AA08CircularkgJ0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitpQ0VyAA010TransitiontO0VGGSgAItGGAA017_AppearanceActionQ0VGMR) + 36));
  *v10 = partial apply for closure #2 in InteractionFeedbackLoadingView.body.getter;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
}

uint64_t closure #1 in InteractionFeedbackLoadingView.body.getter@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = a2;
  v41 = a3;
  v4 = type metadata accessor for OpacityTransition();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin();
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v34 - v6;
  v7 = type metadata accessor for CircularProgressViewStyle();
  v35 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v34 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitmN0VyAA010TransitionqL0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitmN0VyAA010TransitionqL0VGGMR);
  v14 = *(v42 - 8);
  __chkstk_darwin();
  v16 = &v34 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitmN0VyAA010TransitionqL0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitmN0VyAA010TransitionqL0VGGSgMR);
  __chkstk_darwin();
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v34 - v19;
  v44 = a1;
  v45 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v21 = 1;
  if (v43 == 1)
  {
    ProgressView<>.init<>()();
    CircularProgressViewStyle.init()();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ProgressView<EmptyView, EmptyView> and conformance ProgressView<A, B>, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMd, &_s7SwiftUI12ProgressViewVyAA05EmptyD0VAEGMR, &protocol conformance descriptor for ProgressView<A, B>);
    lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle(&lazy protocol witness table cache variable for type CircularProgressViewStyle and conformance CircularProgressViewStyle, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    View.progressViewStyle<A>(_:)();
    (*(v35 + 8))(v9, v7);
    (*(v11 + 8))(v13, v10);
    v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGMR) + 36)];
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR) + 28);
    v24 = enum case for ControlSize.large(_:);
    v25 = type metadata accessor for ControlSize();
    (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
    *v22 = swift_getKeyPath();
    v26 = v37;
    OpacityTransition.init()();
    v28 = v38;
    v27 = v39;
    (*(v38 + 16))(v36, v26, v39);
    lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle(&lazy protocol witness table cache variable for type OpacityTransition and conformance OpacityTransition, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v29 = AnyTransition.init<A>(_:)();
    (*(v28 + 8))(v26, v27);
    *&v16[*(v42 + 36)] = v29;
    sub_1003764FC(v16, v20);
    v21 = 0;
  }

  (*(v14 + 56))(v20, v21, 1, v42);
  sub_1003762EC(v20, v18);
  v30 = v41;
  *v41 = 0;
  *(v30 + 8) = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitnO0VyAA010TransitionrM0VGGSgACtMd, &_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA4ViewPAAE08progressF5StyleyQrqd__AA08ProgressfH0Rd__lFQOyAA0iF0VyAA05EmptyF0VAMG_AA08CircularifH0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitnO0VyAA010TransitionrM0VGGSgACtMR);
  sub_1003762EC(v18, v30 + *(v31 + 48));
  v32 = v30 + *(v31 + 64);
  *v32 = 0;
  v32[8] = 1;
  sub_10037635C(v20);
  return sub_10037635C(v18);
}

uint64_t closure #2 in InteractionFeedbackLoadingView.body.getter(char a1, uint64_t a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;

  static Task<>.delayed(by:priority:task:)(v7, &async function pointer to partial apply for closure #1 in closure #2 in InteractionFeedbackLoadingView.body.getter, v9, (&type metadata for () + 1), a3);

  return _sScPSgWOh_0(v7);
}

uint64_t sub_100375EF8()
{

  return swift_deallocObject();
}

uint64_t closure #1 in closure #2 in InteractionFeedbackLoadingView.body.getter(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  *(v3 + 41) = a2;
  return _swift_task_switch(closure #1 in closure #2 in InteractionFeedbackLoadingView.body.getter, 0, 0);
}

uint64_t closure #1 in closure #2 in InteractionFeedbackLoadingView.body.getter()
{
  *(v0 + 16) = *(v0 + 41);
  *(v0 + 24) = *(v0 + 32);
  *(v0 + 40) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for View.body.getter in conformance InteractionFeedbackLoadingView@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = v2[2];
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA0D0PAAE08progressD5StyleyQrqd__AA08ProgressdM0Rd__lFQOyAA0nD0VyAA05EmptyD0VAUG_AA08CircularndM0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitsT0VyAA010TransitionwR0VGGSgAKtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA0D0PAAE08progressD5StyleyQrqd__AA08ProgressdM0Rd__lFQOyAA0nD0VyAA05EmptyD0VAUG_AA08CircularndM0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitsT0VyAA010TransitionwR0VGGSgAKtGGMR);
  closure #1 in InteractionFeedbackLoadingView.body.getter(v5, v6, (a2 + *(v7 + 44)));
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyAA0G0PAAE08progressG5StyleyQrqd__AA08ProgressgJ0Rd__lFQOyAA0kG0VyAA05EmptyG0VAQG_AA08CircularkgJ0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitpQ0VyAA010TransitiontO0VGGSgAItGGAA017_AppearanceActionQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyAA0G0PAAE08progressG5StyleyQrqd__AA08ProgressgJ0Rd__lFQOyAA0kG0VyAA05EmptyG0VAQG_AA08CircularkgJ0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitpQ0VyAA010TransitiontO0VGGSgAItGGAA017_AppearanceActionQ0VGMR) + 36));
  *v9 = closure #2 in InteractionFeedbackLoadingView.body.getterpartial apply;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _TraitWritingModifier<TransitionTraitKey>>?, Spacer)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _TraitWritingModifier<TransitionTraitKey>>?, Spacer)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _TraitWritingModifier<TransitionTraitKey>>?, Spacer)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyAA0G0PAAE08progressG5StyleyQrqd__AA08ProgressgJ0Rd__lFQOyAA0kG0VyAA05EmptyG0VAQG_AA08CircularkgJ0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitpQ0VyAA010TransitiontO0VGGSgAItGGAA017_AppearanceActionQ0VGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_ACyACyAA0G0PAAE08progressG5StyleyQrqd__AA08ProgressgJ0Rd__lFQOyAA0kG0VyAA05EmptyG0VAQG_AA08CircularkgJ0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitpQ0VyAA010TransitiontO0VGGSgAItGGAA017_AppearanceActionQ0VGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _TraitWritingModifier<TransitionTraitKey>>?, Spacer)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA0E0PAAE08progressE5StyleyQrqd__AA08ProgresseJ0Rd__lFQOyAA0kE0VyAA05EmptyE0VAQG_AA08CircularkeJ0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitpQ0VyAA010TransitiontO0VGGSgAGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA0E0PAAE08progressE5StyleyQrqd__AA08ProgresseJ0Rd__lFQOyAA0kE0VyAA05EmptyE0VAQG_AA08CircularkeJ0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitpQ0VyAA010TransitiontO0VGGSgAGtGGMR, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<<<opaque return type of View.progressViewStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<ControlSize>>, _TraitWritingModifier<TransitionTraitKey>>?, Spacer)>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in InteractionFeedbackLoadingView.body.getter(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #2 in InteractionFeedbackLoadingView.body.getter(a1, v4, v5);
}

uint64_t _sScPSgWOh_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_1, &_sScPSgMR_1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003762EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitmN0VyAA010TransitionqL0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitmN0VyAA010TransitionqL0VGGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037635C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitmN0VyAA010TransitionqL0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitmN0VyAA010TransitionqL0VGGSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path setter for EnvironmentValues.controlSize : EnvironmentValues, serialized(uint64_t a1)
{
  type metadata accessor for ControlSize();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return EnvironmentValues.controlSize.setter();
}

uint64_t lazy protocol witness table accessor for type CircularProgressViewStyle and conformance CircularProgressViewStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003764FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitmN0VyAA010TransitionqL0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE08progressE5StyleyQrqd__AA08ProgresseG0Rd__lFQOyAA0hE0VyAA05EmptyE0VAKG_AA08CircularheG0VQo_AA30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGGAA06_TraitmN0VyAA010TransitionqL0VGGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Layout.callAsFunction<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin();
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _LayoutRoot();
  v16 = __chkstk_darwin();
  (*(v13 + 16))(v15, v7, a3, v16);
  _LayoutRoot.init(_:)();
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v18[0];
  v18[8] = a1;
  v18[9] = a2;
  swift_getWitnessTable();
  return _VariadicView.Tree.init(_:content:)();
}

int *LayoutProviderStack.init(layoutProvider:alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v23 = a8;
  v24 = a10;
  v25 = a11;
  result = type metadata accessor for LayoutProviderStack(0, &v23);
  v20 = (a9 + result[13]);
  *v20 = a2;
  v20[1] = a3;
  v21 = a9 + result[14];
  *v21 = a4;
  *(v21 + 8) = a5 & 1;
  v22 = (a9 + result[15]);
  *v22 = a6;
  v22[1] = a7;
  return result;
}

uint64_t LayoutProviderStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR);
  v4 = *(a1 + 24);
  lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &protocol conformance descriptor for _LayoutRoot<A>);
  v5 = type metadata accessor for _VariadicView.Tree();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin();
  v11 = v22 - v10;
  (*(*(a1 + 32) + 8))(v23, *(v2 + *(a1 + 52)), *(v2 + *(a1 + 52) + 8), *(v2 + *(a1 + 56)), *(v2 + *(a1 + 56) + 8), *(a1 + 16), v9);
  __swift_project_boxed_opaque_existential_0Tm(v23, v23[3]);
  v12 = __chkstk_darwin();
  (*(v14 + 16))(v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v22[4] = AnyLayout.init<A>(_:)();
  v15 = (v2 + *(a1 + 60));
  v16 = *v15;
  v17 = v15[1];
  v18 = lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout();
  v19 = *(a1 + 40);
  Layout.callAsFunction<A>(_:)(v16, v17, &type metadata for AnyLayout, v4, v18, v19, v8);

  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  v22[2] = lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &protocol conformance descriptor for _LayoutRoot<A>);
  v22[3] = v19;
  swift_getWitnessTable();
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  v20 = *(v6 + 8);
  v20(v8, v5);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  return (v20)(v11, v5);
}

unint64_t lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout()
{
  result = lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout;
  if (!lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyLayout and conformance AnyLayout);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AxisStack.init(axis:alignment:spacing:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result & 1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

double AxisStack.body.getter(uint64_t a1)
{
  v15[0] = *v1;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  (*(*(&type metadata for Axis - 1) + 32))(v21, v15, &type metadata for Axis);
  v27 = &type metadata for Axis;
  *&v28 = v8;
  *(&v28 + 1) = &protocol witness table for Axis;
  v29 = v9;
  v10 = type metadata accessor for LayoutProviderStack(0, &v27);
  v11 = &v21[v10[13]];
  *v11 = v2;
  v11[1] = v3;
  v12 = &v21[v10[14]];
  *v12 = v4;
  v12[8] = v5;
  v13 = &v21[v10[15]];
  *v13 = v7;
  v13[1] = v6;
  v15[0] = v21[0];
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v27 = &type metadata for Axis;
  *&v28 = v8;
  *(&v28 + 1) = &protocol witness table for Axis;
  v29 = v9;
  type metadata accessor for LayoutProviderStack(0, &v27);
  swift_getWitnessTable();
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();

  v21[0] = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();

  return result;
}

unint64_t Axis.layout(alignment:spacing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v10 = &type metadata for VStackLayout;
    result = lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout();
  }

  *(a6 + 24) = v10;
  *(a6 + 32) = result;
  *a6 = v12;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4 & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout()
{
  result = lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout;
  if (!lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VStackLayout and conformance VStackLayout);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout()
{
  result = lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout;
  if (!lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HStackLayout and conformance HStackLayout);
  }

  return result;
}

unint64_t protocol witness for LayoutProvider.layout(alignment:spacing:) in conformance Axis@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (*v5)
  {
    v10 = &type metadata for VStackLayout;
    result = lazy protocol witness table accessor for type VStackLayout and conformance VStackLayout();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = lazy protocol witness table accessor for type HStackLayout and conformance HStackLayout();
  }

  *(a5 + 24) = v10;
  *(a5 + 32) = result;
  *a5 = v12;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  return result;
}

void type metadata completion function for LayoutProviderStack(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGFloat?();
    if (v2 <= 0x3F)
    {
      _syycMa_0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for LayoutProviderStack(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
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

_BYTE *storeEnumTagSinglePayload for LayoutProviderStack(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t type metadata instantiation function for AxisStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for AxisStack(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AxisStack(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_100377470(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMd, &_s7SwiftUI11_LayoutRootVyAA03AnyC0VGMR);
  lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &protocol conformance descriptor for _LayoutRoot<A>);
  type metadata accessor for _VariadicView.Tree();
  lazy protocol witness table accessor for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>(&lazy protocol witness table cache variable for type _LayoutRoot<AnyLayout> and conformance _LayoutRoot<A>, &protocol conformance descriptor for _LayoutRoot<A>);
  return swift_getWitnessTable();
}

uint64_t sub_100377538(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4[0] = &type metadata for Axis;
  v4[1] = v1;
  v4[2] = &protocol witness table for Axis;
  v4[3] = v2;
  type metadata accessor for LayoutProviderStack(255, v4);
  return swift_getWitnessTable();
}

uint64_t closure #1 in Layout.callAsFunction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  v11(v8);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  v12 = *(v5 + 8);
  v12(v7, a4);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  return (v12)(v10, a4);
}

char *LoadingView.__allocating_init(title:style:usesSubtitleTextColor:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = objc_allocWithZone(v4);
  return LoadingView.init(title:style:usesSubtitleTextColor:)(a1, a2, a3 & 0xFFFFFFFFFFLL | (((a3 >> 40) & 1) << 40), v5);
}

char *LoadingView.init(title:style:usesSubtitleTextColor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style];
  *v9 = 0;
  *(v9 + 2) = 256;
  v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition] = 1;
  v10 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  *&v4[v11] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  *&v4[v12] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar] = 0;
  swift_beginAccess();
  *v10 = a1;
  v10[1] = a2;

  swift_beginAccess();
  v9[4] = BYTE4(a3);
  *v9 = a3;
  v9[5] = BYTE5(a3) & 1;
  v29.receiver = v4;
  v29.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  v15 = *&v13[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator];
  v16 = v13;
  [v15 setHidesWhenStopped:1];
  v17 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  v18 = *&v16[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];
  if (a2)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  [v18 setText:v19];

  [*&v16[v17] setAdjustsFontForContentSizeCategory:1];
  v20 = one-time initialization token for preferredFont;
  v21 = *&v16[v17];
  if (v20 != -1)
  {
    swift_once();
  }

  [v21 setFont:static LoadingView.preferredFont];

  [*&v16[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [*&v16[v17] setNumberOfLines:0];
  [*&v16[v17] setTextAlignment:1];
  if (a4)
  {
    v22 = *&v16[v17];
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 secondaryLabelColor];
    [v24 setTextColor:v25];
  }

  LoadingView.updateLoadingAppearance()();
  [v16 addSubview:*&v16[v17]];
  [v16 addSubview:*&v13[v14]];
  v26 = LoadingView.progressBar.getter();
  [v16 addSubview:v26];

  return v16;
}

id LoadingView.updateLoadingAppearance()()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  if (*(v1 + 5))
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v2 = LoadingView.progressBar.getter();
    [v2 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:1];
  }

  else if (((*v1 | (*(v1 + 4) << 32)) & 0x100000000) != 0)
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) startAnimating];
    v7 = LoadingView.progressBar.getter();
    [v7 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
  }

  else
  {
    v4 = *v1;
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v5 = LoadingView.progressBar.getter();
    [v5 setHidden:0];

    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
    LODWORD(v6) = v4;
    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar) setProgress:v6];
  }
}

id LoadingView.progressBar.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  }

  else
  {
    v4 = [objc_allocWithZone(UIProgressView) initWithProgressViewStyle:1];
    v5 = [objc_opt_self() systemFillColor];
    [v4 setTrackTintColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

unint64_t LoadingView.style.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40);
}

float LoadingView.style.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  v5 = *(v3 + 4);
  v6 = *v3;
  v7 = *(v3 + 5);
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1);
  *(v3 + 5) = BYTE5(a1) & 1;
  if ((a1 & 0x10000000000) != 0)
  {
    if (v7)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v7)
  {
    goto LABEL_5;
  }

  v8 = v6 | (v5 << 32);
  if ((a1 & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) != 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  if ((v8 & 0x100000000) != 0 || (result = *&a1, *&a1 != *&v8))
  {
LABEL_5:
    LoadingView.updateLoadingAppearance()();
  }

  return result;
}

void (*LoadingView.style.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 4);
  v8 = *(v6 + 5);
  *(v4 + 40) = *v6;
  v4 += 40;
  *(v4 + 4) = v7;
  *(v4 + 5) = v8;
  return LoadingView.style.modify;
}

void LoadingView.style.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = (*(*a1 + 24) + *(*a1 + 32));
  v4 = *(*a1 + 44);
  v5 = *(*a1 + 45);
  v6 = *v3 | (*(v3 + 4) << 32);
  v7 = *(v3 + 5);
  *v3 = v2;
  *(v3 + 4) = v4;
  *(v3 + 5) = v5;
  if (v5)
  {
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    LoadingView.updateLoadingAppearance()();
    goto LABEL_6;
  }

  if (((v2 | (v4 << 32)) & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v6 & 0x100000000) != 0 || *&v2 != *&v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  free(v1);
}

uint64_t LoadingView.titlePosition.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  return *(v0 + v1);
}

void LoadingView.titlePosition.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = a1;
  if (v4 != a1)
  {
    [v1 setNeedsLayout];
  }
}

void (*LoadingView.titlePosition.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return LoadingView.titlePosition.modify;
}

void LoadingView.titlePosition.modify(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsLayout];
  }

  free(v1);
}

id LoadingView.font.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) font];

  return v1;
}

void LoadingView.font.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setFont:a1];
}

void (*LoadingView.font.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = [*(v1 + v2) font];
  return LoadingView.font.modify;
}

void LoadingView.font.modify(uint64_t a1)
{
  v1 = *a1;
  [*(*(a1 + 8) + *(a1 + 16)) setFont:?];
}

uint64_t LoadingView.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double LoadingView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title];
  swift_beginAccess();
  v7 = *v5;
  v8 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_12;
      }
    }

    v10 = *&v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];

    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    if (!v8)
    {
      return result;
    }

    v10 = *&v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];
    v11 = 0;
  }

  [v10 setText:v11];

  [v2 setNeedsLayout];
LABEL_12:

  return result;
}

void (*LoadingView.title.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return LoadingView.title.modify;
}

void LoadingView.title.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    LoadingView.title.setter(v3, v4);
  }

  else
  {
    LoadingView.title.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

Swift::Void __swiftcall LoadingView.layoutSubviews()()
{
  v58.receiver = v0;
  v58.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v58, "layoutSubviews");
  [v0 effectiveUserInterfaceLayoutDirection];
  v1 = [v0 traitCollection];
  [v1 displayScale];

  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 layoutMargins];
  UIEdgeInsetsInsetRect(v3, v5, v7, v9, v10, v11);
  LoadingView.sizeThatFits(_:)(v12, v13);
  v15 = v14;
  [v0 bounds];
  v52 = v15;
  CGRect.centeringAlong(axes:bounds:scale:)();
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  v20 = CGRectGetWidth(v59);
  v21 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  v56 = width;
  v57 = height;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label] sizeThatFits:{width, height, v52}];
  v23 = v22;
  rect = v24;
  v60.origin.x = 0.0;
  v60.origin.y = 0.0;
  v60.size.height = 0.0;
  v25 = v20;
  v60.size.width = v20;
  v26 = CGRectGetWidth(v60);
  v27 = LoadingView.progressBar.getter();
  [v27 intrinsicContentSize];
  v29 = v28;

  v30 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator] intrinsicContentSize];
  v32 = v31;
  v34 = v33;
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v26;
  v61.size.height = v29;
  v35 = CGRectGetHeight(v61);
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = v32;
  v62.size.height = v34;
  v36 = CGRectGetHeight(v62);
  if (v35 > v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  v38 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  if (v0[v38])
  {
    if (v0[v38] == 1)
    {
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = v56;
      v63.size.height = v57;
      CGRectGetMinX(v63);
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = v25;
      v64.size.height = v37;
      CGRectGetMaxY(v64);
      [*&v0[v21] _firstBaselineOffsetFromTop];
    }

    else
    {
      [*&v0[v30] intrinsicContentSize];
      v40 = v39;
      [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar] intrinsicContentSize];
      if (v40 > v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      v43 = x;
      v44 = y;
      v45 = v37;
      CGRectGetMaxX(*(&v42 - 2));
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = v56;
      v67.size.height = v57;
      CGRectGetMinY(v67);
    }
  }

  else
  {
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = v56;
    v65.size.height = v57;
    CGRectGetMinX(v65);
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = v23;
    v66.size.height = rect;
    CGRectGetMaxY(v66);
    [*&v0[v21] _baselineOffsetFromBottom];
  }

  v46 = v0[v38];
  v47 = *&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar];
  CGRect.centeringAlong(axes:bounds:scale:)();
  if (v46 == 2)
  {
    [v0 bounds];
    CGRect.applyingLayoutDirection(_:inBounds:)();
    [v47 setFrame:?];

    v49 = *&v0[v30];
    v53 = v37;
  }

  else
  {
    v54 = v48;
    CGRect.centeringAlong(axes:bounds:scale:)();
    [v0 bounds];
    CGRect.applyingLayoutDirection(_:inBounds:)();
    [v47 setFrame:?];

    v49 = *&v0[v30];
    CGRect.centeringAlong(axes:bounds:scale:)();
    v53 = v50;
  }

  CGRect.centeringAlong(axes:bounds:scale:)();
  [v0 bounds];
  CGRect.applyingLayoutDirection(_:inBounds:)();
  [v49 setFrame:?];

  v51 = *&v0[v21];
  CGRect.centeringAlong(axes:bounds:scale:)();
  [v0 bounds];
  CGRect.applyingLayoutDirection(_:inBounds:)();
  [v51 setFrame:?];
}

double LoadingView.sizeThatFits(_:)(double a1, double a2)
{
  v3 = v2;
  v6 = LoadingView.progressBar.getter();
  [v6 sizeThatFits:{0.0, 0.0}];
  v8 = v7;
  v10 = v9;

  [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) sizeThatFits:{0.0, 0.0}];
  v13 = v12;
  if (v8 > v11)
  {
    v14 = v8;
  }

  else
  {
    v14 = v11;
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  if (v10 > v13)
  {
    v16 = v10;
  }

  else
  {
    v16 = v13;
  }

  if (*(v3 + v15) == 2)
  {
    v17 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
    [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) intrinsicContentSize];
    [*(v3 + v17) intrinsicContentSize];
    return v14 + v18;
  }

  else
  {
    v19 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
    [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) sizeThatFits:{0.0, 0.0}];
    v21 = v20;
    _sSo6CGSizeVMa_0(0);
    if (static ApproximatelyEquatable.!=~ infix(_:_:)())
    {
      [*(v3 + v19) sizeThatFits:{a1, a2 - (v16 + 0.0 + 8.0)}];
    }

    else if (v21 > v14)
    {
      return v21;
    }

    else
    {
      return v14;
    }
  }

  return a1;
}

BOOL static LoadingView.Style.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) == 0)
  {
    if ((a2 & 0x100000000) == 0)
    {
      return *&a1 == *&a2;
    }

    return 0;
  }

  return (a2 & 0x100000000) != 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LoadingView.Style(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

void one-time initialization function for preferredFont()
{
  type metadata accessor for UIFont();
  v0 = UIFontTextStyleSubheadline;
  v1 = static UIFont.preferredFont(forTextStyle:weight:)();

  static LoadingView.preferredFont = v1;
}

unint64_t lazy protocol witness table accessor for type LoadingView.TextPosition and conformance LoadingView.TextPosition()
{
  result = lazy protocol witness table cache variable for type LoadingView.TextPosition and conformance LoadingView.TextPosition;
  if (!lazy protocol witness table cache variable for type LoadingView.TextPosition and conformance LoadingView.TextPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LoadingView.TextPosition and conformance LoadingView.TextPosition);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LoadingView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LoadingView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t getEnumTag for LoadingView.Style(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for LoadingView.Style(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

void specialized LoadingView.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style;
  *(v1 + 4) = 256;
  *v1 = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition) = 1;
  v2 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  *(v0 + v3) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  *(v0 + v4) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t type metadata accessor for UIFont()
{
  result = _sSo6UIFontCML_0;
  if (!_sSo6UIFontCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo6UIFontCML_0);
  }

  return result;
}

uint64_t MarkupView.body.getter@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for AttributedString();
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MediaCoreUI14MarkupRendererCySSGMd, &_s11MediaCoreUI14MarkupRendererCySSGMR);
  swift_allocObject();

  MarkupRenderer.init(_:)();
  dispatch thunk of MarkupRenderer.attributedString.getter();

  result = Text.init(_:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance MarkupView@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AttributedString();
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MediaCoreUI14MarkupRendererCySSGMd, &_s11MediaCoreUI14MarkupRendererCySSGMR);
  swift_allocObject();

  MarkupRenderer.init(_:)();
  dispatch thunk of MarkupRenderer.attributedString.getter();

  result = Text.init(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t Shape.stroke<A>(_:lineWidth:antialiased:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a2;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Shape.stroke<A>(_:style:antialiased:)(a1, v15, v11, a3, a4, a5, a6, a7);
  return outlined destroy of StrokeStyle(v15);
}

uint64_t _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ_0(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin();
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    v6 = swift_getTupleTypeMetadata();
  }

  __chkstk_darwin();
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *TupleTypeMetadata++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t Shape.fill<A>(_:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  (*(v13 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v11);
  (*(v8 + 16))(v10, a1, a4);
  return _ShapeView.init(shape:style:fillStyle:)();
}

uint64_t static ViewBuilder.buildIf<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t MaterialyView.init(shape:style:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for MaterialyView(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t MaterialyView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v58 = a1;
  v3 = *(*(a1 + 24) + 8);
  v4 = *(a1 + 24);
  v79 = *(a1 + 16);
  v2 = v79;
  v80 = &type metadata for Color;
  v81 = v3;
  v82 = &protocol witness table for Color;
  v5 = v3;
  v66 = type metadata accessor for _ShapeView();
  v62 = *(v66 - 8);
  __chkstk_darwin();
  v61 = &v43 - v6;
  type metadata accessor for _BlendModeEffect();
  v65 = type metadata accessor for ModifiedContent();
  v63 = *(v65 - 8);
  __chkstk_darwin();
  v60 = &v43 - v7;
  v79 = v2;
  v80 = &type metadata for LinearGradient;
  v81 = v5;
  v82 = &protocol witness table for LinearGradient;
  type metadata accessor for _ShapeView();
  WitnessTable = type metadata accessor for Optional();
  v79 = v2;
  v80 = &type metadata for Color;
  v81 = &type metadata for EmptyView;
  v82 = v5;
  v83 = &protocol witness table for Color;
  v84 = &protocol witness table for EmptyView;
  type metadata accessor for StrokeShapeView();
  type metadata accessor for ModifiedContent();
  v57 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  type metadata accessor for _ClipEffect();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMd, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMR);
  v11 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ShadowShapeStyle<_ImplicitShapeStyle> and conformance _ShadowShapeStyle<A>, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMd, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMR, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  v79 = v2;
  v80 = v10;
  v81 = v5;
  v82 = v11;
  v12 = v5;
  type metadata accessor for _ShapeView();
  v79 = AssociatedTypeWitness;
  v80 = &type metadata for Color;
  v81 = v9;
  v82 = &protocol witness table for Color;
  type metadata accessor for _ShapeView();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v55 = type metadata accessor for ZStack();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  v13 = type metadata accessor for ModifiedContent();
  __chkstk_darwin();
  v54 = &v43 - v14;
  v15 = *(v2 - 8);
  __chkstk_darwin();
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v17;
  v47 = swift_getWitnessTable();
  v77 = v47;
  v78 = &protocol witness table for _BlendModeEffect;
  v18 = swift_getWitnessTable();
  v50 = v18;
  v19 = swift_getWitnessTable();
  v75 = v18;
  v76 = v19;
  v52 = v13;
  v49 = swift_getWitnessTable();
  v79 = v2;
  v80 = &type metadata for LinearGradient;
  v81 = v13;
  v20 = v12;
  v44 = v12;
  v82 = v12;
  v83 = &protocol witness table for LinearGradient;
  v84 = v49;
  v21 = type metadata accessor for StrokeShapeView();
  v53 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v43 - v24;
  v25 = v57;
  v27 = type metadata accessor for MaterialyView.Style.Specs(0, v2, v57, v26);
  v46 = v27;
  v51 = *(v27 - 8);
  __chkstk_darwin();
  v29 = (&v43 - v28);
  v30 = v59;
  MaterialyView.Style.specs.getter(*(v59 + *(v58 + 36)), v2, v25, &v43 - v28, v31);
  (*(v15 + 16))(v17, v30, v2);
  v32 = v29 + *(v27 + 36);
  v72 = *(v32 + 1);
  v33 = *(v32 + 2);
  v73 = *(v32 + 1);
  v74 = v33;

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v71 = *v29;
  v34 = v61;
  Shape.fill<A>(_:style:)(&v71, 256, v2, &type metadata for Color, v20, &protocol witness table for Color);
  type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v2, v25, v35);
  v36 = v60;
  v37 = v66;
  View.blendMode(_:)();
  (*(v62 + 8))(v34, v37);
  v67 = v2;
  v68 = v25;
  v69 = v29;
  v70 = v30;
  static Alignment.center.getter();
  v38 = v54;
  v39 = v65;
  View.overlay<A>(alignment:content:)();
  (*(v63 + 8))(v36, v39);
  StrokeShapeView.init(shape:style:strokeStyle:isAntialiased:background:)(v45, &v72, &v79, 1, v38, v2, &type metadata for LinearGradient, v52, v23, v44, &protocol witness table for LinearGradient, v49);
  swift_getWitnessTable();
  v40 = v48;
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  v41 = *(v53 + 8);
  v41(v23, v21);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  v41(v40, v21);
  return (*(v51 + 8))(v29, v46);
}

uint64_t MaterialyView.Style.specs.getter@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v80 = a4;
  v8 = a1;
  type metadata accessor for MaterialyView.Style.Specs.Shadow(0, a2, a3, a5);
  __chkstk_darwin();
  v79 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v69 - v10;
  __chkstk_darwin();
  v77 = &v69 - v11;
  __chkstk_darwin();
  v76 = &v69 - v12;
  v13 = type metadata accessor for BlendMode();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  v18 = a2;
  v19 = a3;
  type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v18, a3, v20);
  __chkstk_darwin();
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v69 - v23;
  if (v8 == 2)
  {
    static Color.white.getter();
    v25 = Color.opacity(_:)();

    v26 = *(v14 + 104);
    v27 = v16;
    v26(v16, enum case for BlendMode.plusLighter(_:), v13);
    v28 = v26;
    v29 = v24;
    v79 = v24;
    v30 = v17;
    v74 = v19;
    MaterialyView.Style.Specs.FillColor.init(color:blendMode:)(v25, v27, v17, v19, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMR);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1004F2EE0;
    static Color.white.getter();
    Color.opacity(_:)();

    *(v31 + 32) = Gradient.Stop.init(color:location:)();
    *(v31 + 40) = v32;
    static Color.white.getter();
    Color.opacity(_:)();

    *(v31 + 48) = Gradient.Stop.init(color:location:)();
    *(v31 + 56) = v33;
    static Color.white.getter();
    Color.opacity(_:)();

    *(v31 + 64) = Gradient.Stop.init(color:location:)();
    *(v31 + 72) = v34;
    static Color.white.getter();
    Color.opacity(_:)();

    *(v31 + 80) = Gradient.Stop.init(color:location:)();
    *(v31 + 88) = v35;
    Gradient.init(stops:)();
    static UnitPoint.topLeading.getter();
    static UnitPoint.bottomTrailing.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    *&v84 = 0x3FE0000000000000;
    *(&v84 + 1) = v87;
    v85 = v88;
    v86 = v89;
    memset(v90, 0, 40);
    static Color.black.getter();
    v36 = Color.opacity(_:)();

    v37 = enum case for BlendMode.normal(_:);
    v38 = v28;
    v28(v27, enum case for BlendMode.normal(_:), v13);
    v39 = v76;
    v40 = v30;
    v41 = v30;
    v42 = v74;
    MaterialyView.Style.Specs.Shadow.init(color:radius:offset:blendMode:)(v36, v27, v76, 4.0, 0.0, 3.0, v41, v74);
    static Color.white.getter();
    v43 = Color.opacity(_:)();

    v38(v27, v37, v13);
    v44 = v77;
    MaterialyView.Style.Specs.Shadow.init(color:radius:offset:blendMode:)(v43, v27, v77, 3.0, 0.0, 1.0, v40, v42);
    v45 = v80;
    v46 = v79;
    v47 = v39;
    v48 = v44;
    v49 = v40;
  }

  else
  {
    static Color.white.getter();
    v50 = 0.23;
    if (a1)
    {
      v50 = 0.8;
    }

    v76 = *&v50;
    v51 = 3.0;
    if (a1)
    {
      v51 = 6.0;
    }

    v77 = *&v51;
    v52 = Color.opacity(_:)();

    v53 = *(v14 + 104);
    v53(v16, enum case for BlendMode.plusLighter(_:), v13);
    v75 = v17;
    MaterialyView.Style.Specs.FillColor.init(color:blendMode:)(v52, v16, v17, v19, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMR);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1004F2EE0;
    static Color.white.getter();
    Color.opacity(_:)();

    *(v54 + 32) = Gradient.Stop.init(color:location:)();
    *(v54 + 40) = v55;
    static Color.white.getter();
    Color.opacity(_:)();

    *(v54 + 48) = Gradient.Stop.init(color:location:)();
    *(v54 + 56) = v56;
    static Color.white.getter();
    Color.opacity(_:)();

    *(v54 + 64) = Gradient.Stop.init(color:location:)();
    *(v54 + 72) = v57;
    static Color.white.getter();
    Color.opacity(_:)();

    *(v54 + 80) = Gradient.Stop.init(color:location:)();
    *(v54 + 88) = v58;
    Gradient.init(stops:)();
    static UnitPoint.topLeading.getter();
    static UnitPoint.bottomTrailing.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    *&v84 = 0x3FF0000000000000;
    *(&v84 + 1) = v81;
    v85 = v82;
    v86 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMR);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1004F2EF0;
    static Color.white.getter();
    v60 = Color.opacity(_:)();

    *(v59 + 32) = v60;
    static Color.black.getter();
    v61 = Color.opacity(_:)();

    *(v59 + 40) = v61;
    Gradient.init(colors:)();
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    v73 = v87;
    static Color.black.getter();
    v62 = Color.opacity(_:)();
    v63 = enum case for BlendMode.normal(_:);

    v72 = v88;
    v71 = v89;
    v53(v16, v63, v13);
    v42 = v19;
    v64 = v75;
    v70 = v22;
    v65 = v78;
    MaterialyView.Style.Specs.Shadow.init(color:radius:offset:blendMode:)(v62, v16, v78, 4.0, 0.0, 3.0, v75, v42);
    static Color.white.getter();
    v66 = Color.opacity(_:)();

    v53(v16, v63, v13);
    v67 = v79;
    MaterialyView.Style.Specs.Shadow.init(color:radius:offset:blendMode:)(v66, v16, v79, *&v77, 0.0, 1.0, v64, v42);
    *&v90[0] = v73;
    *(&v90[1] + 8) = v71;
    *(v90 + 8) = v72;
    v45 = v80;
    v46 = v70;
    v47 = v65;
    v48 = v67;
    v49 = v64;
  }

  return MaterialyView.Style.Specs.init(fill:strokeGradient:fillGradient:dropShadow:innerShadow:)(v46, &v84, v90, v47, v48, v49, v42, v45);
}

uint64_t closure #1 in MaterialyView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a1;
  v20 = a2;
  v21 = a5;
  v7 = *(a4 + 8);
  type metadata accessor for _ShapeView();
  v18 = type metadata accessor for Optional();
  v26 = a3;
  v27 = &type metadata for Color;
  v28 = &type metadata for EmptyView;
  v29 = v7;
  v30 = &protocol witness table for Color;
  v31 = &protocol witness table for EmptyView;
  type metadata accessor for StrokeShapeView();
  type metadata accessor for ModifiedContent();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  type metadata accessor for _ClipEffect();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _BlendModeEffect();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMd, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ShadowShapeStyle<_ImplicitShapeStyle> and conformance _ShadowShapeStyle<A>, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMd, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMR, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  type metadata accessor for _ShapeView();
  v26 = AssociatedTypeWitness;
  v27 = &type metadata for Color;
  v28 = v9;
  v29 = &protocol witness table for Color;
  type metadata accessor for _ShapeView();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for ZStack();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v18 - v14;
  v22 = a3;
  v23 = a4;
  v24 = v19;
  v25 = v20;
  static Alignment.center.getter();
  ZStack.init(alignment:content:)();
  swift_getWitnessTable();
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  v16 = *(v11 + 8);
  v16(v13, v10);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  return (v16)(v15, v10);
}

uint64_t closure #1 in closure #1 in MaterialyView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v123 = a2;
  v127 = a1;
  v116 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMd, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMR);
  v8 = *(a4 + 8);
  v133 = a3;
  *&v134 = v7;
  *(&v134 + 1) = v8;
  *&v135 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ShadowShapeStyle<_ImplicitShapeStyle> and conformance _ShadowShapeStyle<A>, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMd, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMR, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  type metadata accessor for _ShapeView();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v133 = AssociatedTypeWitness;
  *&v134 = &type metadata for Color;
  *(&v134 + 1) = v10;
  *&v135 = &protocol witness table for Color;
  type metadata accessor for _ShapeView();
  type metadata accessor for _BlendModeEffect();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v107 = type metadata accessor for TupleView();
  v11 = v8;
  WitnessTable = swift_getWitnessTable();
  v108 = *(type metadata accessor for ZStack() - 8);
  __chkstk_darwin();
  v104 = &v84 - v12;
  v110 = v13;
  v109 = *(type metadata accessor for ModifiedContent() - 8);
  __chkstk_darwin();
  v106 = &v84 - v14;
  v111 = v15;
  v115 = type metadata accessor for ModifiedContent();
  v112 = *(v115 - 8);
  __chkstk_darwin();
  v114 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v113 = &v84 - v17;
  v100 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v99 = &v84 - v18;
  v133 = a3;
  *&v134 = &type metadata for Color;
  *(&v134 + 1) = &type metadata for EmptyView;
  *&v135 = v8;
  *(&v135 + 1) = &protocol witness table for Color;
  v136 = &protocol witness table for EmptyView;
  v89 = *(type metadata accessor for StrokeShapeView() - 8);
  __chkstk_darwin();
  v88 = &v84 - v19;
  v90 = v20;
  v21 = type metadata accessor for ModifiedContent();
  v95 = *(v21 - 8);
  __chkstk_darwin();
  v92 = &v84 - v22;
  v103 = AssociatedTypeWitness;
  v101 = v10;
  v23 = type metadata accessor for _ClipEffect();
  v96 = v21;
  v93 = v23;
  v97 = *(type metadata accessor for ModifiedContent() - 8);
  __chkstk_darwin();
  v94 = &v84 - v24;
  v98 = v25;
  v26 = a3;
  v102 = type metadata accessor for ModifiedContent();
  v119 = *(v102 - 8);
  __chkstk_darwin();
  v126 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v84 - v28;
  v133 = a3;
  *&v134 = &type metadata for LinearGradient;
  *(&v134 + 1) = v8;
  *&v135 = &protocol witness table for LinearGradient;
  v29 = *(type metadata accessor for _ShapeView() - 8);
  __chkstk_darwin();
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v84 - v32;
  v118 = v34;
  v120 = type metadata accessor for Optional();
  v125 = *(v120 - 8);
  __chkstk_darwin();
  v36 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v124 = &v84 - v37;
  v121 = a4;
  v117 = type metadata accessor for MaterialyView.Style.Specs(0, v26, a4, v38);
  v39 = v127 + *(v117 + 40);
  if (*v39)
  {
    v133 = *v39;
    v134 = *(v39 + 8);
    v135 = *(v39 + 24);
    Shape.fill<A>(_:style:)(&v133, 256, v26, &type metadata for LinearGradient, v8, &protocol witness table for LinearGradient);
    v40 = v118;
    swift_getWitnessTable();
    _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
    v41 = *(v29 + 8);
    v41(v31, v40);
    v11 = v8;
    _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
    v41(v33, v40);
    (*(v29 + 32))(v36, v31, v40);
    (*(v29 + 56))(v36, 0, 1, v40);
  }

  else
  {
    (*(v29 + 56))(v36, 1, 1, v118);
    swift_getWitnessTable();
  }

  v42 = v125;
  v43 = *(v125 + 16);
  v86 = v125 + 16;
  v87 = v43;
  v44 = v120;
  v43(v124, v36, v120);
  v45 = *(v42 + 8);
  v125 = v42 + 8;
  v91 = v45;
  v45(v36, v44);
  v133 = static Color.white.getter();
  v46 = v88;
  v84 = v26;
  Shape.stroke<A>(_:lineWidth:antialiased:)(&v133, 1, v26, &type metadata for Color, v11, &protocol witness table for Color, v88);

  v47 = v90;
  v48 = swift_getWitnessTable();
  v49 = v92;
  View.shadow(color:radius:x:y:)();
  (*(v89 + 8))(v46, v47);
  v50 = v99;
  dispatch thunk of InsettableShape.inset(by:)();
  v132[11] = v48;
  v132[12] = &protocol witness table for _ShadowEffect;
  v51 = v96;
  v52 = swift_getWitnessTable();
  v53 = v94;
  v54 = v103;
  View.clipShape<A>(_:style:)();
  (*(v100 + 8))(v50, v54);
  (*(v95 + 8))(v49, v51);
  v55 = v84;
  v56 = v121;
  type metadata accessor for MaterialyView.Style.Specs.Shadow(0, v84, v121, v57);
  v58 = swift_getWitnessTable();
  v132[9] = v52;
  v132[10] = v58;
  v59 = v98;
  v60 = swift_getWitnessTable();
  v61 = v36;
  v62 = v126;
  View.blendMode(_:)();
  (*(v97 + 8))(v53, v59);
  v132[7] = v60;
  v132[8] = &protocol witness table for _BlendModeEffect;
  v63 = v102;
  v100 = swift_getWitnessTable();
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  v64 = *(v119 + 8);
  v101 = v119 + 8;
  v103 = v64;
  v64(v62, v63);
  __chkstk_darwin();
  *(&v84 - 4) = v55;
  *(&v84 - 3) = v56;
  v65 = v127;
  *(&v84 - 2) = v123;
  *(&v84 - 1) = v65;
  static Alignment.center.getter();
  v66 = v104;
  ZStack.init(alignment:content:)();
  v67 = v110;
  v68 = swift_getWitnessTable();
  v69 = v106;
  View.compositingGroup()();
  (*(v108 + 8))(v66, v67);
  v132[5] = v68;
  v132[6] = &protocol witness table for _CompositingGroupEffect;
  v70 = v111;
  v71 = swift_getWitnessTable();
  v72 = v114;
  View.blendMode(_:)();
  (*(v109 + 8))(v69, v70);
  v132[3] = v71;
  v132[4] = &protocol witness table for _BlendModeEffect;
  v73 = v115;
  v127 = swift_getWitnessTable();
  v74 = v113;
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  v75 = v112;
  v76 = *(v112 + 8);
  v76(v72, v73);
  v85 = v61;
  v77 = v120;
  v87(v61, v124, v120);
  v133 = v61;
  v78 = v126;
  v79 = v122;
  (*(v119 + 16))(v126, v122, v63);
  *&v134 = v78;
  (*(v75 + 16))(v72, v74, v73);
  *(&v134 + 1) = v72;
  v132[0] = v77;
  v132[1] = v63;
  v132[2] = v73;
  v128 = swift_getWitnessTable();
  v80 = v77;
  v129 = swift_getWitnessTable();
  v130 = v100;
  v131 = v127;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ_0(&v133, 3uLL, v132);
  v76(v74, v73);
  v81 = v103;
  v103(v79, v63);
  v82 = v91;
  v91(v124, v80);
  v76(v72, v73);
  v81(v126, v63);
  return v82(v85, v80);
}

uint64_t closure #1 in closure #1 in closure #1 in MaterialyView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a2;
  v51 = a1;
  v67 = a5;
  v7 = type metadata accessor for BlendMode();
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin();
  v64 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v55 = v46 - v10;
  v58 = AssociatedTypeWitness;
  v57 = *(swift_getAssociatedConformanceWitness() + 8);
  v71 = AssociatedTypeWitness;
  v72 = &type metadata for Color;
  v73 = v57;
  v74 = &protocol witness table for Color;
  v54 = type metadata accessor for _ShapeView();
  v63 = *(v54 - 8);
  __chkstk_darwin();
  v52 = v46 - v11;
  type metadata accessor for _BlendModeEffect();
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  v60 = v12;
  v61 = v13;
  __chkstk_darwin();
  v53 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v59 = v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMd, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMR);
  __chkstk_darwin();
  v18 = v46 - v17;
  v46[1] = a4;
  v19 = *(a4 + 8);
  v20 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ShadowShapeStyle<_ImplicitShapeStyle> and conformance _ShadowShapeStyle<A>, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMd, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMR, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  v71 = a3;
  v72 = v16;
  v73 = v19;
  v74 = v20;
  v21 = type metadata accessor for _ShapeView();
  v47 = *(v21 - 8);
  v22 = v47;
  __chkstk_darwin();
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = v46 - v25;
  type metadata accessor for MaterialyView.Style.Specs(0, a3, a4, v26);
  static ShadowStyle.drop(color:radius:x:y:)();
  Shape.fill<A>(_:style:)(v18, 256, a3, v16, v19, v20);
  outlined destroy of TaskPriority?(v18, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMd, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMR);
  WitnessTable = swift_getWitnessTable();
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  v27 = *(v22 + 8);
  v50 = v22 + 8;
  v56 = v27;
  (v27)(v24, v21);
  v28 = v55;
  dispatch thunk of InsettableShape.inset(by:)();
  v71 = static Color.white.getter();
  v29 = v52;
  v30 = v58;
  Shape.fill<A>(_:style:)(&v71, 256, v58, &type metadata for Color, v57, &protocol witness table for Color);

  (*(v62 + 8))(v28, v30);
  v32 = v64;
  v31 = v65;
  v33 = v66;
  (*(v65 + 104))(v64, enum case for BlendMode.destinationOut(_:), v66);
  v34 = v54;
  v35 = swift_getWitnessTable();
  v36 = v53;
  View.blendMode(_:)();
  (*(v31 + 8))(v32, v33);
  (*(v63 + 8))(v29, v34);
  v70[2] = v35;
  v70[3] = &protocol witness table for _BlendModeEffect;
  v37 = v60;
  v38 = swift_getWitnessTable();
  v39 = v59;
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  v40 = v61;
  v41 = *(v61 + 8);
  v42 = v36;
  v41(v36, v37);
  v43 = v48;
  (*(v47 + 16))(v24, v48, v21);
  v71 = v24;
  (*(v40 + 16))(v42, v39, v37);
  v72 = v42;
  v70[0] = v21;
  v70[1] = v37;
  v68 = WitnessTable;
  v69 = v38;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ_0(&v71, 2uLL, v70);
  v41(v39, v37);
  v44 = v56;
  (v56)(v43, v21);
  v41(v42, v37);
  return (v44)(v24, v21);
}

uint64_t StrokeShapeView.init(shape:style:strokeStyle:isAntialiased:background:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v42 = a5;
  v40 = a4;
  v35 = a3;
  v36 = a8;
  v38 = a2;
  v45 = a9;
  v46 = a1;
  v31[1] = a10;
  v39 = *(a8 - 8);
  v43 = a12;
  __chkstk_darwin();
  v37 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for _BackgroundModifier();
  __chkstk_darwin();
  v41 = v31 - v15;
  v34 = *(a7 - 8);
  __chkstk_darwin();
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a6 - 8);
  v18 = v32;
  __chkstk_darwin();
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for _StrokedShape();
  __chkstk_darwin();
  WitnessTable = swift_getWitnessTable();
  v47 = v21;
  v48 = a7;
  v49 = WitnessTable;
  v50 = a11;
  v33 = type metadata accessor for _ShapeView();
  v23 = __chkstk_darwin();
  v24 = *(v18 + 16);
  v31[0] = a6;
  v24(v20, v46, a6, v23);
  _StrokedShape.init(shape:style:)();
  v25 = v34;
  v26 = v38;
  (*(v34 + 16))(v17, v38, a7);
  _ShapeView.init(shape:style:fillStyle:)();
  v27 = v39;
  v28 = v36;
  v29 = v42;
  (*(v39 + 16))(v37, v42, v36);
  static Alignment.center.getter();
  (*(v27 + 8))(v29, v28);
  (*(v25 + 8))(v26, a7);
  (*(v32 + 8))(v46, v31[0]);
  _BackgroundModifier.init(background:alignment:)();
  return ModifiedContent.init(content:modifier:)();
}

uint64_t MaterialyView.Style.Specs.FillColor.init(color:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v7 = *(type metadata accessor for MaterialyView.Style.Specs.FillColor(0, a3, a4, a4) + 36);
  v8 = type metadata accessor for BlendMode();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a2, v8);
}

uint64_t MaterialyView.Style.Specs.Shadow.init(color:radius:offset:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, uint64_t a7@<X2>, uint64_t a8@<X3>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  v10 = *(type metadata accessor for MaterialyView.Style.Specs.Shadow(0, a7, a8, a8) + 44);
  v11 = type metadata accessor for BlendMode();
  v12 = *(*(v11 - 8) + 32);

  return v12(a3 + v10, a2, v11);
}

uint64_t MaterialyView.Style.Specs.init(fill:strokeGradient:fillGradient:dropShadow:innerShadow:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for MaterialyView.Style.Specs.FillColor(0, a6, a7, a4);
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v18 = type metadata accessor for MaterialyView.Style.Specs(0, a6, a7, v17);
  v19 = (a8 + v18[9]);
  v20 = a2[1];
  *v19 = *a2;
  v19[1] = v20;
  v19[2] = a2[2];
  v21 = a8 + v18[10];
  v22 = *(a3 + 16);
  *v21 = *a3;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a3 + 32);
  v23 = v18[11];
  v25 = type metadata accessor for MaterialyView.Style.Specs.Shadow(0, a6, a7, v24);
  v28 = *(*(v25 - 8) + 32);
  (v28)((v25 - 8), a8 + v23, a4, v25);
  v26 = a8 + v18[12];

  return v28(v26, a5, v25);
}

uint64_t MaterialyButtonStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  type metadata accessor for MaterialyButtonStyle(0);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  return ScaledMetric.init(wrappedValue:)();
}

uint64_t sub_10037CFE4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for MaterialyButtonStyle(uint64_t a1)
{
  result = type metadata singleton initialization cache for MaterialyButtonStyle;
  if (!type metadata singleton initialization cache for MaterialyButtonStyle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MaterialyButtonStyle.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA0E0PAAE10labelStyleyQrqd__AA05LabelI0Rd__lFQOyAGyAA06ButtonI13ConfigurationV0J0VAA12_ScaleEffectVG_AA08IconOnlyjI0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundT0VyAGy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA10_GAA010_AnimationT0VySbGG_AGyAGyAiAEAJyQrqd__AaKRd__lFQOyAGyAoWyAA13TextAlignmentOGG_AA05TitlepjI0VQo_A_GAA08_OpacityN0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA0E0PAAE10labelStyleyQrqd__AA05LabelI0Rd__lFQOyAGyAA06ButtonI13ConfigurationV0J0VAA12_ScaleEffectVG_AA08IconOnlyjI0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundT0VyAGy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA10_GAA010_AnimationT0VySbGG_AGyAGyAiAEAJyQrqd__AaKRd__lFQOyAGyAoWyAA13TextAlignmentOGG_AA05TitlepjI0VQo_A_GAA08_OpacityN0VGtGGMR);
  __chkstk_darwin();
  v6 = &v11 - v5;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA0D0PAAE10labelStyleyQrqd__AA05LabelL0Rd__lFQOyAKyAA06ButtonL13ConfigurationV0M0VAA12_ScaleEffectVG_AA08IconOnlymL0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundW0VyAKy09MusicCoreB009MaterialyD0VyAA6CircleVGAA010_FlexFrameG0VGGGA14_GAA010_AnimationW0VySbGG_AKyAKyAmAEANyQrqd__AaORd__lFQOyAKyASA_yAA13TextAlignmentOGG_AA05TitlesmL0VQo_A3_GAA08_OpacityQ0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA0D0PAAE10labelStyleyQrqd__AA05LabelL0Rd__lFQOyAKyAA06ButtonL13ConfigurationV0M0VAA12_ScaleEffectVG_AA08IconOnlymL0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundW0VyAKy09MusicCoreB009MaterialyD0VyAA6CircleVGAA010_FlexFrameG0VGGGA14_GAA010_AnimationW0VySbGG_AKyAKyAmAEANyQrqd__AaORd__lFQOyAKyASA_yAA13TextAlignmentOGG_AA05TitlesmL0VQo_A3_GAA08_OpacityQ0VGtGGMR);
  closure #1 in MaterialyButtonStyle.makeBody(configuration:)(a1, v2, &v6[*(v7 + 44)]);
  if (MaterialyButtonStyle.isEnabled.getter())
  {
    v8 = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v8 = static HierarchicalShapeStyle.tertiary.getter();
  }

  v9 = v8;
  outlined init with take of URL?(v6, a2, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA0E0PAAE10labelStyleyQrqd__AA05LabelI0Rd__lFQOyAGyAA06ButtonI13ConfigurationV0J0VAA12_ScaleEffectVG_AA08IconOnlyjI0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundT0VyAGy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA10_GAA010_AnimationT0VySbGG_AGyAGyAiAEAJyQrqd__AaKRd__lFQOyAGyAoWyAA13TextAlignmentOGG_AA05TitlepjI0VQo_A_GAA08_OpacityN0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA0E0PAAE10labelStyleyQrqd__AA05LabelI0Rd__lFQOyAGyAA06ButtonI13ConfigurationV0J0VAA12_ScaleEffectVG_AA08IconOnlyjI0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundT0VyAGy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA10_GAA010_AnimationT0VySbGG_AGyAGyAiAEAJyQrqd__AaKRd__lFQOyAGyAoWyAA13TextAlignmentOGG_AA05TitlepjI0VQo_A_GAA08_OpacityN0VGtGGMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA0G0PAAE10labelStyleyQrqd__AA05LabelI0Rd__lFQOyACyAA06ButtonI13ConfigurationV0J0VAA12_ScaleEffectVG_AA08IconOnlyjI0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundT0VyACy09MusicCoreB009MaterialyG0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA10_GAA010_AnimationT0VySbGG_ACyACyAiAEAJyQrqd__AaKRd__lFQOyACyAoWyAA13TextAlignmentOGG_AA05TitlepjI0VQo_A_GAA08_OpacityN0VGtGGAA011_ForegroundiT0VyAA017HierarchicalShapeI0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA0G0PAAE10labelStyleyQrqd__AA05LabelI0Rd__lFQOyACyAA06ButtonI13ConfigurationV0J0VAA12_ScaleEffectVG_AA08IconOnlyjI0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundT0VyACy09MusicCoreB009MaterialyG0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA10_GAA010_AnimationT0VySbGG_ACyACyAiAEAJyQrqd__AaKRd__lFQOyACyAoWyAA13TextAlignmentOGG_AA05TitlepjI0VQo_A_GAA08_OpacityN0VGtGGAA011_ForegroundiT0VyAA017HierarchicalShapeI0VGGMR);
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t closure #1 in MaterialyButtonStyle.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v107 = a3;
  v105 = type metadata accessor for TitleOnlyLabelStyle();
  v103 = *(v105 - 8);
  __chkstk_darwin();
  v102 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGMR);
  __chkstk_darwin();
  v98 = &v81 - v5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGMR);
  __chkstk_darwin();
  v101 = &v81 - v6;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGAA14_OpacityEffectVGMR);
  __chkstk_darwin();
  v106 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = &v81 - v8;
  __chkstk_darwin();
  v104 = &v81 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  __chkstk_darwin();
  v89 = &v81 - v10;
  v11 = type metadata accessor for IconOnlyLabelStyle();
  v12 = *(v11 - 8);
  v83 = v11;
  v84 = v12;
  __chkstk_darwin();
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ButtonStyleConfiguration.Label();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_ScaleEffectVGMR);
  __chkstk_darwin();
  v21 = &v81 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE10labelStyleyQrqd__AA05LabelE0Rd__lFQOyAA15ModifiedContentVyAA06ButtonE13ConfigurationV0F0VAA12_ScaleEffectVG_AA08IconOnlyfE0VQo_Md, &_s7SwiftUI4ViewPAAE10labelStyleyQrqd__AA05LabelE0Rd__lFQOyAA15ModifiedContentVyAA06ButtonE13ConfigurationV0F0VAA12_ScaleEffectVG_AA08IconOnlyfE0VQo_MR);
  v85 = *(v22 - 8);
  v86 = v22;
  __chkstk_darwin();
  v81 = &v81 - v23;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR) - 8;
  __chkstk_darwin();
  v25 = &v81 - v24;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGMR);
  __chkstk_darwin();
  v108 = &v81 - v26;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GMR);
  __chkstk_darwin();
  v93 = &v81 - v27;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGGMR);
  __chkstk_darwin();
  v95 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v81 - v29;
  __chkstk_darwin();
  v94 = &v81 - v30;
  ButtonStyleConfiguration.label.getter();
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v31 = 0.92;
  }

  else
  {
    v31 = 1.0;
  }

  static UnitPoint.center.getter();
  v33 = v32;
  v35 = v34;
  (*(v16 + 32))(v21, v18, v15);
  v36 = &v21[*(v19 + 36)];
  *v36 = v31;
  *(v36 + 1) = v31;
  *(v36 + 2) = v33;
  *(v36 + 3) = v35;
  IconOnlyLabelStyle.init()();
  lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type IconOnlyLabelStyle and conformance IconOnlyLabelStyle, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v37 = v81;
  v38 = v83;
  View.labelStyle<A>(_:)();
  v39 = a1;
  (*(v84 + 8))(v14, v38);
  outlined destroy of TaskPriority?(v21, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_ScaleEffectVGMR);
  type metadata accessor for MaterialyButtonStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.bold.getter();
  v40 = type metadata accessor for Font.Design();
  v41 = v89;
  (*(*(v40 - 8) + 56))(v89, 1, 1, v40);
  v42 = static Font.system(size:weight:design:)();
  outlined destroy of TaskPriority?(v41, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  KeyPath = swift_getKeyPath();
  (*(v85 + 32))(v25, v37, v86);
  v44 = v25;
  v45 = &v25[*(v82 + 44)];
  *v45 = KeyPath;
  v45[1] = v42;
  v89 = v39;
  LOBYTE(v86) = ButtonStyleConfiguration.isPressed.getter() & 1;
  LODWORD(v86) = v86;
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v109[3] + 7) = *(&v109[10] + 8);
  *(&v109[4] + 7) = *(&v109[11] + 8);
  *(&v109[5] + 7) = *(&v109[12] + 8);
  *(&v109[6] + 7) = *(&v109[13] + 8);
  *(v109 + 7) = *(&v109[7] + 8);
  *(&v109[1] + 7) = *(&v109[8] + 8);
  *(&v109[2] + 7) = *(&v109[9] + 8);
  v46 = static Alignment.center.getter();
  v48 = v47;
  v49 = v108;
  outlined init with take of URL?(v44, v108, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  v50 = v49 + *(v88 + 36);
  v51 = v109[5];
  *(v50 + 65) = v109[4];
  *(v50 + 81) = v51;
  *(v50 + 97) = v109[6];
  v52 = v109[1];
  *(v50 + 1) = v109[0];
  *(v50 + 17) = v52;
  v53 = v109[3];
  *(v50 + 33) = v109[2];
  *v50 = v86;
  v54 = *(&v109[6] + 15);
  *(v50 + 49) = v53;
  *(v50 + 112) = v54;
  *(v50 + 120) = v46;
  *(v50 + 128) = v48;
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v55 = v93;
  outlined init with take of URL?(v108, v93, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGMR);
  v56 = (v55 + *(v90 + 36));
  v57 = *(&v109[19] + 8);
  v56[4] = *(&v109[18] + 8);
  v56[5] = v57;
  v56[6] = *(&v109[20] + 8);
  v58 = *(&v109[15] + 8);
  *v56 = *(&v109[14] + 8);
  v56[1] = v58;
  v59 = *(&v109[17] + 8);
  v56[2] = *(&v109[16] + 8);
  v56[3] = v59;
  v60 = static Animation.spring(response:dampingFraction:blendDuration:)();
  LOBYTE(v46) = ButtonStyleConfiguration.isPressed.getter();
  v61 = v91;
  outlined init with take of URL?(v55, v91, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GMR);
  v62 = v61 + *(v92 + 36);
  *v62 = v60;
  *(v62 + 8) = v46 & 1;
  v63 = v94;
  outlined init with take of URL?(v61, v94, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGGMR);
  v64 = v98;
  ButtonStyleConfiguration.label.getter();
  v65 = swift_getKeyPath();
  v66 = v64 + *(v97 + 36);
  *v66 = v65;
  *(v66 + 8) = 1;
  v67 = v102;
  TitleOnlyLabelStyle.init()();
  lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type TitleOnlyLabelStyle and conformance TitleOnlyLabelStyle, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
  v68 = v101;
  v69 = v105;
  View.labelStyle<A>(_:)();
  (*(v103 + 8))(v67, v69);
  outlined destroy of TaskPriority?(v64, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGMR);
  v70 = static Font.caption.getter();
  v71 = swift_getKeyPath();
  v72 = (v68 + *(v99 + 36));
  *v72 = v71;
  v72[1] = v70;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v73 = 0.8;
  }

  else
  {
    v73 = 1.0;
  }

  v74 = v96;
  outlined init with take of URL?(v68, v96, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGMR);
  *(v74 + *(v100 + 36)) = v73;
  v75 = v104;
  outlined init with take of URL?(v74, v104, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGAA14_OpacityEffectVGMR);
  v76 = v95;
  outlined init with copy of TaskPriority?(v63, v95, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGGMR);
  v77 = v106;
  outlined init with copy of TaskPriority?(v75, v106, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGAA14_OpacityEffectVGMR);
  v78 = v107;
  outlined init with copy of TaskPriority?(v76, v107, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGGMR);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGG_ACyACyAeAEAFyQrqd__AaGRd__lFQOyACyAkSyAA13TextAlignmentOGG_AA05TitlenhG0VQo_AWGAA08_OpacityL0VGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGG_ACyACyAeAEAFyQrqd__AaGRd__lFQOyACyAkSyAA13TextAlignmentOGG_AA05TitlenhG0VQo_AWGAA08_OpacityL0VGtMR);
  outlined init with copy of TaskPriority?(v77, v78 + *(v79 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGAA14_OpacityEffectVGMR);
  outlined destroy of TaskPriority?(v75, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGAA14_OpacityEffectVGMR);
  outlined destroy of TaskPriority?(v63, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGGMR);
  outlined destroy of TaskPriority?(v77, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGG_AA09TitleOnlyhG0VQo_AMyAA4FontVSgGGAA14_OpacityEffectVGMR);
  return outlined destroy of TaskPriority?(v76, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE10labelStyleyQrqd__AA05LabelG0Rd__lFQOyACyAA06ButtonG13ConfigurationV0H0VAA12_ScaleEffectVG_AA08IconOnlyhG0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundR0VyACy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA6_GAA010_AnimationR0VySbGGMR);
}

uint64_t MaterialyButtonStyle.isEnabled.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v8 = outlined consume of Environment<Bool>.Content(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    LOBYTE(v5) = v10[15];
  }

  return v5 & 1;
}

uint64_t type metadata completion function for MaterialyView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for MaterialyView.Style(319, result, *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaterialyView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        v16 = (v15 + 2147483646) & 0x7FFFFFFF;
      }

      else
      {
        v16 = -1;
      }

      if (v16 + 1 >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *storeEnumTagSinglePayload for MaterialyView(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
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

      else if (v12)
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
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_10037E53C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10037E604(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MaterialyButtonStyle(uint64_t a1)
{
  type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for Environment<Bool>, &type metadata for Bool, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ScaledMetric<CGFloat>(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ScaledMetric<CGFloat>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ScaledMetric<CGFloat>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v1 = type metadata accessor for ScaledMetric();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ScaledMetric<CGFloat>);
    }
  }
}

uint64_t sub_10037E7B4(uint64_t *a1)
{
  type metadata accessor for _ShapeView();
  type metadata accessor for _BlendModeEffect();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ShapeView();
  type metadata accessor for Optional();
  type metadata accessor for StrokeShapeView();
  type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for _ClipEffect();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMd, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMR);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ShadowShapeStyle<_ImplicitShapeStyle> and conformance _ShadowShapeStyle<A>, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMd, &_s7SwiftUI17_ShadowShapeStyleVyAA09_ImplicitdE0VGMR, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  type metadata accessor for _ShapeView();
  type metadata accessor for _ShapeView();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for StrokeShapeView();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundModifier<ModifiedContent<MaterialyView<Circle>, _FlexFrameLayout>>>, _FlexFrameLayout>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>)>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundModifier<ModifiedContent<MaterialyView<Circle>, _FlexFrameLayout>>>, _FlexFrameLayout>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>)>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundModifier<ModifiedContent<MaterialyView<Circle>, _FlexFrameLayout>>>, _FlexFrameLayout>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>)>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA0G0PAAE10labelStyleyQrqd__AA05LabelI0Rd__lFQOyACyAA06ButtonI13ConfigurationV0J0VAA12_ScaleEffectVG_AA08IconOnlyjI0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundT0VyACy09MusicCoreB009MaterialyG0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA10_GAA010_AnimationT0VySbGG_ACyACyAiAEAJyQrqd__AaKRd__lFQOyACyAoWyAA13TextAlignmentOGG_AA05TitlepjI0VQo_A_GAA08_OpacityN0VGtGGAA011_ForegroundiT0VyAA017HierarchicalShapeI0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyACyACyAA0G0PAAE10labelStyleyQrqd__AA05LabelI0Rd__lFQOyACyAA06ButtonI13ConfigurationV0J0VAA12_ScaleEffectVG_AA08IconOnlyjI0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundT0VyACy09MusicCoreB009MaterialyG0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA10_GAA010_AnimationT0VySbGG_ACyACyAiAEAJyQrqd__AaKRd__lFQOyACyAoWyAA13TextAlignmentOGG_AA05TitlepjI0VQo_A_GAA08_OpacityN0VGtGGAA011_ForegroundiT0VyAA017HierarchicalShapeI0VGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundModifier<ModifiedContent<MaterialyView<Circle>, _FlexFrameLayout>>>, _FlexFrameLayout>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA0E0PAAE10labelStyleyQrqd__AA05LabelI0Rd__lFQOyAGyAA06ButtonI13ConfigurationV0J0VAA12_ScaleEffectVG_AA08IconOnlyjI0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundT0VyAGy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA10_GAA010_AnimationT0VySbGG_AGyAGyAiAEAJyQrqd__AaKRd__lFQOyAGyAoWyAA13TextAlignmentOGG_AA05TitlepjI0VQo_A_GAA08_OpacityN0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA0E0PAAE10labelStyleyQrqd__AA05LabelI0Rd__lFQOyAGyAA06ButtonI13ConfigurationV0J0VAA12_ScaleEffectVG_AA08IconOnlyjI0VQo_AA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_BackgroundT0VyAGy09MusicCoreB009MaterialyE0VyAA6CircleVGAA16_FlexFrameLayoutVGGGA10_GAA010_AnimationT0VySbGG_AGyAGyAiAEAJyQrqd__AaKRd__lFQOyAGyAoWyAA13TextAlignmentOGG_AA05TitlepjI0VQo_A_GAA08_OpacityN0VGtGGMR, &protocol conformance descriptor for VStack<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<HierarchicalShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA017HierarchicalShapeD0VGMR, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _BackgroundModifier<ModifiedContent<MaterialyView<Circle>, _FlexFrameLayout>>>, _FlexFrameLayout>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<<<opaque return type of View.labelStyle<A>(_:)>>.0, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>)>>, _ForegroundStyleModifier<HierarchicalShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t type metadata completion function for MaterialyView.Style.Specs.FillColor(uint64_t a1)
{
  result = type metadata accessor for BlendMode();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10037ED2C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for BlendMode();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10037EDEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BlendMode();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MaterialyView.Style.Specs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for MaterialyView.Style.Specs.FillColor(319, v4, v5, a4);
  if (v7 <= 0x3F)
  {
    type metadata accessor for MaterialyView.Style.Specs.Stroke(319, v4, v5, v6);
    if (v8 <= 0x3F)
    {
      type metadata accessor for Environment<Bool>(319, &lazy cache variable for type metadata for LinearGradient?, &type metadata for LinearGradient, &type metadata accessor for Optional);
      if (v10 <= 0x3F)
      {
        type metadata accessor for MaterialyView.Style.Specs.Shadow(319, v4, v5, v9);
        if (v11 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10037EFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v7, v8, a4);
  v11 = *(v9 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + *(a3 + 36) + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for MaterialyView.Style.Specs.Shadow(0, v7, v8, v10);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + *(a3 + 44);

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10037F118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  result = type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v8, v9, a4);
  v12 = *(result - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  else
  {
    v14 = type metadata accessor for MaterialyView.Style.Specs.Shadow(0, v8, v9, v11);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 44);

    return v15(v16, a2, a2, v14);
  }

  return result;
}

void type metadata accessor for Environment<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata instantiation function for MaterialyView.Style.Specs.Stroke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void type metadata completion function for MaterialyView.Style.Specs.Shadow(uint64_t a1)
{
  type metadata accessor for UIOffset(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BlendMode();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10037F3C0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for BlendMode();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_10037F480(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BlendMode();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA12_ScaleEffectVGMR);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t Shape.stroke<A>(_:style:antialiased:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a3;
  v15 = *(a5 - 8);
  __chkstk_darwin();
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin();
  v20 = &v26[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v21 + 16))(v20, v23, v22, v18);
  (*(v15 + 16))(v17, a1, a5);

  return StrokeShapeView.init(shape:style:strokeStyle:isAntialiased:background:)(v20, v17, a2, v27, v24, a4, a5, &type metadata for EmptyView, a8, a6, a7, &protocol witness table for EmptyView);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyAA24ButtonStyleConfigurationV5LabelVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGMR);
    lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(&lazy protocol witness table cache variable for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ButtonStyleConfiguration.Label, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ButtonStyleConfiguration.Label and conformance ButtonStyleConfiguration.Label(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id NowPlaying.TrackTitleStackView.init()()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  outlined init with copy of NowPlaying.TrackMetadata(v2, &v0[v1], type metadata accessor for NowPlaying.TrackMetadata);
  v3 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v27 = v6;
  *(&v27 + 1) = v8;
  LOBYTE(v28) = 0;
  BYTE8(v28) = 0;
  *&v29 = 0x4040000000000000;
  *(&v29 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v30 = leading;
  *(&v30 + 1) = bottom;
  *&v31 = trailing;
  v32 = 0uLL;
  *(&v31 + 1) = 1;
  v33[0] = v6;
  v33[1] = v8;
  v34 = 0;
  v35 = 0;
  v36 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v38 = leading;
  v39 = bottom;
  v40 = trailing;
  v42 = 0;
  v43 = 0;
  v41 = 1;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v27, v50);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v33);
  v12 = v30;
  *(v4 + 2) = v29;
  *(v4 + 3) = v12;
  v13 = v32;
  *(v4 + 4) = v31;
  *(v4 + 5) = v13;
  v14 = v28;
  *v4 = v27;
  *(v4 + 1) = v14;
  v15 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  v16 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v17 = [v7 secondaryLabelColor];
  *&v44 = v16;
  *(&v44 + 1) = v17;
  LOBYTE(v45) = 0;
  BYTE8(v45) = 0;
  *&v46 = 0x4040000000000000;
  *(&v46 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v47 = leading;
  *(&v47 + 1) = bottom;
  *&v48 = trailing;
  v49 = 0uLL;
  *(&v48 + 1) = 1;
  v50[0] = v16;
  v50[1] = v17;
  v51 = 0;
  v52 = 0;
  v53 = 0x4040000000000000;
  v54 = NSDirectionalEdgeInsetsZero.top;
  v55 = leading;
  v56 = bottom;
  v57 = trailing;
  v59 = 0;
  v60 = 0;
  v58 = 1;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v44, v26);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v50);
  v18 = v47;
  *(v15 + 2) = v46;
  *(v15 + 3) = v18;
  v19 = v49;
  *(v15 + 4) = v48;
  *(v15 + 5) = v19;
  v20 = v45;
  *v15 = v44;
  *(v15 + 1) = v20;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = 0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v21 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = *&NowPlaying.TrackTitleStackView.titleLabel.getter()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  v23 = *&NowPlaying.TrackTitleStackView.subtitleLabel.getter()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v22 addCoordinatedMarqueeView:v23];

  return v21;
}

char *NowPlaying.TrackTitleStackView.init(titleAttributes:subtitleAttributes:)(_OWORD *a1, _OWORD *a2)
{
  v5 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v6 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  outlined init with copy of NowPlaying.TrackMetadata(v6, &v2[v5], type metadata accessor for NowPlaying.TrackMetadata);
  v7 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v50 = v10;
  *(&v50 + 1) = v12;
  LOBYTE(v51) = 0;
  BYTE8(v51) = 0;
  *&v52 = 0x4040000000000000;
  *(&v52 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v53 = leading;
  *(&v53 + 1) = bottom;
  *&v54 = trailing;
  v55 = 0uLL;
  *(&v54 + 1) = 1;
  v56[0] = v10;
  v56[1] = v12;
  v57 = 0;
  v58 = 0;
  v59 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v61 = leading;
  v62 = bottom;
  v63 = trailing;
  v65 = 0;
  v66 = 0;
  v64 = 1;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v50, v85);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v56);
  v16 = v53;
  *(v8 + 2) = v52;
  *(v8 + 3) = v16;
  v17 = v55;
  *(v8 + 4) = v54;
  *(v8 + 5) = v17;
  v18 = v51;
  *v8 = v50;
  *(v8 + 1) = v18;
  v19 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  v20 = [v9 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v21 = [v11 secondaryLabelColor];
  *&v67 = v20;
  *(&v67 + 1) = v21;
  LOBYTE(v68) = 0;
  BYTE8(v68) = 0;
  *&v69 = 0x4040000000000000;
  *(&v69 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v70 = leading;
  *(&v70 + 1) = bottom;
  *&v71 = trailing;
  v72 = 0uLL;
  *(&v71 + 1) = 1;
  v73[0] = v20;
  v73[1] = v21;
  v74 = 0;
  v75 = 0;
  v76 = 0x4040000000000000;
  v77 = NSDirectionalEdgeInsetsZero.top;
  v78 = leading;
  v79 = bottom;
  v80 = trailing;
  v83 = 0;
  v81 = 1;
  v82 = 0;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v67, v85);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v73);
  v22 = v70;
  *(v19 + 2) = v69;
  *(v19 + 3) = v22;
  v23 = v72;
  *(v19 + 4) = v71;
  *(v19 + 5) = v23;
  v24 = v68;
  *v19 = v67;
  *(v19 + 1) = v24;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = 0;
  v49.receiver = v2;
  v49.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v25 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v26 = (v25 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  swift_beginAccess();
  v27 = v26[1];
  v84[0] = *v26;
  v84[1] = v27;
  v28 = v26[2];
  v29 = v26[3];
  v30 = v26[5];
  v84[4] = v26[4];
  v84[5] = v30;
  v84[2] = v28;
  v84[3] = v29;
  v31 = a1[5];
  v33 = a1[2];
  v32 = a1[3];
  v26[4] = a1[4];
  v26[5] = v31;
  v26[2] = v33;
  v26[3] = v32;
  v34 = a1[1];
  *v26 = *a1;
  v26[1] = v34;
  v35 = v25;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(a1, v85);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v84);
  v36 = (v35 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  swift_beginAccess();
  v37 = v36[1];
  v85[0] = *v36;
  v85[1] = v37;
  v38 = v36[2];
  v39 = v36[3];
  v40 = v36[5];
  v85[4] = v36[4];
  v85[5] = v40;
  v85[2] = v38;
  v85[3] = v39;
  v41 = a2[5];
  v43 = a2[2];
  v42 = a2[3];
  v36[4] = a2[4];
  v36[5] = v41;
  v36[2] = v43;
  v36[3] = v42;
  v44 = a2[1];
  *v36 = *a2;
  v36[1] = v44;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(a2, &v48);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v85);
  v45 = *&NowPlaying.TrackTitleStackView.titleLabel.getter()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  v46 = *&NowPlaying.TrackTitleStackView.subtitleLabel.getter()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v45 addCoordinatedMarqueeView:v46];

  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(a2);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(a1);

  return v35;
}

uint64_t NowPlaying.TrackTitleStackView.setMetadata(_:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for NowPlaying.TrackMetadata(0) - 8;
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NowPlaying.TrackMetadata(a1, v10, type metadata accessor for NowPlaying.TrackMetadata);
  v11 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  outlined assign with take of NowPlaying.TrackMetadata(v10, v2 + v11);
  swift_endAccess();
  v12 = NowPlaying.TrackTitleStackView.titleLabel.getter();
  outlined init with copy of NowPlaying.TrackMetadata(a1 + *(v8 + 32), v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v13 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(&v12[v14], v5, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  swift_beginAccess();
  outlined assign with copy of NowPlaying.TrackMetadata.StringKind?(v7, &v12[v14]);
  swift_endAccess();
  NowPlaying.TrackTitleStackView.Label.text.didset(v5);

  outlined destroy of TaskPriority?(v5, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  outlined destroy of TaskPriority?(v7, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v15 = NowPlaying.TrackTitleStackView.subtitleLabel.getter();
  outlined init with copy of TaskPriority?(a1 + *(v8 + 36), v7, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v16 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(&v15[v16], v5, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  swift_beginAccess();
  outlined assign with copy of NowPlaying.TrackMetadata.StringKind?(v7, &v15[v16]);
  swift_endAccess();
  NowPlaying.TrackTitleStackView.Label.text.didset(v5);

  outlined destroy of TaskPriority?(v5, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  return outlined destroy of TaskPriority?(v7, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
}

uint64_t key path setter for NowPlaying.TrackTitleStackView.metadata : NowPlaying.TrackTitleStackView(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NowPlaying.TrackMetadata(a1, v5, type metadata accessor for NowPlaying.TrackMetadata);
  v6 = *a2;
  v7 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  outlined assign with take of NowPlaying.TrackMetadata(v5, v6 + v7);
  return swift_endAccess();
}

uint64_t NowPlaying.TrackTitleStackView.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  return outlined init with copy of NowPlaying.TrackMetadata(v1 + v3, a1, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackTitleStackView.debugIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double NowPlaying.TrackTitleStackView.debugIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.init(isEnabled:contentGap:fadeInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  return result;
}

double NowPlaying.TrackTitleStackView.Label.Attributes.init(font:color:isHidden:marquee:action:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a4[1];
  *&v15[7] = *a4;
  *&v15[23] = v9;
  *&v15[39] = a4[2];
  *&v17[1] = *v15;
  *&v17[17] = *&v15[16];
  *&v17[33] = *&v15[32];
  *&v16 = a1;
  *(&v16 + 1) = a2;
  v17[0] = a3;
  *&v17[48] = *&v15[47];
  *&v17[56] = a5;
  *&v18 = a6;
  *(&v18 + 1) = a7;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  *&v23[15] = *&v15[47];
  v24 = a5;
  *v23 = *&v15[32];
  v22 = *&v15[16];
  v21 = *v15;
  v25 = a6;
  v26 = a7;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v16, v14);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v19);
  v10 = *&v17[32];
  a8[2] = *&v17[16];
  a8[3] = v10;
  v11 = v18;
  a8[4] = *&v17[48];
  a8[5] = v11;
  result = *&v16;
  v13 = *v17;
  *a8 = v16;
  a8[1] = v13;
  return result;
}

id NowPlaying.TrackTitleStackView.titleAttributes.didset()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  __chkstk_darwin();
  v60 = &v58 - v1;
  v2 = v0;
  v65 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v3)
  {
    v4 = *(*v3 + 424);
    v5 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
    v6 = lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(&lazy protocol witness table cache variable for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

    v4(&v75, v2, v5, v6);

    if (v75)
    {
      v7 = v76;
      v8 = v77;
      v9 = specialized NowPlaying.TrackTitleStackView.TransitionContext.titleLabels.getter(v75, v76);

      outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v7, v8);
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
      swift_beginAccess();
      if (v10)
      {
        v12 = 0;
        v63 = v9 & 0xFFFFFFFFFFFFFF8;
        v64 = v9 & 0xC000000000000001;
        v61 = v10;
        v62 = v9;
        do
        {
          if (v64)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_21:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v12 >= *(v63 + 16))
            {
              __break(1u);
LABEL_25:
              v10 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_5;
            }

            v14 = *(v9 + 8 * v12 + 32);

            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_21;
            }
          }

          v16 = *(v11 + 5);
          v73 = *(v11 + 4);
          v74 = v16;
          v17 = *(v11 + 3);
          v71 = *(v11 + 2);
          v72 = v17;
          v18 = *(v11 + 1);
          v69 = *v11;
          v70 = v18;
          v19 = v14[1];
          v20 = v14[2];
          v21 = v14[3];
          v22 = v14[4];
          v23 = v14[6];
          v84[4] = v14[5];
          v84[5] = v23;
          v84[2] = v21;
          v84[3] = v22;
          v84[0] = v19;
          v84[1] = v20;
          v24 = v14[2];
          v78 = v14[1];
          v79 = v24;
          v25 = v14[3];
          v26 = v14[4];
          v27 = v14[6];
          v82 = v14[5];
          v83 = v27;
          v80 = v25;
          v81 = v26;
          memmove(v14 + 1, v11, 0x60uLL);
          outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v69, v68);
          outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v69, v68);
          outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v84, v68);
          outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v78);
          NowPlaying.TrackTitleStackView.Label.attributes.didset(v84);
          outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v84);
          outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v69);
          v66 = v11[24];
          v28 = *&v2[v65];
          if (v28)
          {
            v29 = v2;
            v30 = *(*v28 + 256);

            v32 = v30(v31);

            if (v32 == 2)
            {
              v33 = *&v29[v65];
              if (v33)
              {
                v59 = *(*v33 + 208);

                v35 = v60;
                v59(v34);
                v2 = v29;

                v36 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v37 = (*(*(v36 - 8) + 48))(v35, 1, v36) == 1;
                outlined destroy of TaskPriority?(v35, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
                v66 &= v37;
              }

              else
              {
                v2 = v29;
                v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v39 = v60;
                (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
                outlined destroy of TaskPriority?(v39, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
              }
            }

            else
            {
              v2 = v29;
            }

            v10 = v61;
            v9 = v62;
          }

          else
          {
          }

          v13 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
          [v13 setMarqueeEnabled:v66 withOptions:1];

          ++v12;
        }

        while (v15 != v10);
      }
    }
  }

  v40 = v2;
  v41 = NowPlaying.TrackTitleStackView.titleLabel.getter();
  v42 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 5);
  v68[4] = *(v42 + 4);
  v68[5] = v43;
  v44 = *(v42 + 3);
  v68[2] = *(v42 + 2);
  v68[3] = v44;
  v45 = *(v42 + 1);
  v68[0] = *v42;
  v68[1] = v45;
  v46 = *(v41 + 1);
  v47 = *(v41 + 2);
  v48 = *(v41 + 3);
  v49 = *(v41 + 4);
  v50 = *(v41 + 6);
  v82 = *(v41 + 5);
  v83 = v50;
  v80 = v48;
  v81 = v49;
  v78 = v46;
  v79 = v47;
  v51 = *(v41 + 2);
  v69 = *(v41 + 1);
  v70 = v51;
  v52 = *(v41 + 3);
  v53 = *(v41 + 4);
  v54 = *(v41 + 6);
  v73 = *(v41 + 5);
  v74 = v54;
  v71 = v52;
  v72 = v53;
  memmove(v41 + 16, v42, 0x60uLL);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v68, v67);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v68, v67);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v78, v67);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v69);
  NowPlaying.TrackTitleStackView.Label.attributes.didset(&v78);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v78);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v68);

  v55 = *(v42 + 40);
  v67[0] = *(v42 + 24);
  v67[1] = v55;
  v67[2] = *(v42 + 56);

  NowPlaying.TrackTitleStackView.updateMarquee(for:marqueeAttributes:)(v56, v67);

  return [v40 setNeedsLayout];
}

uint64_t (*NowPlaying.TrackTitleStackView.titleAttributes.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return NowPlaying.TrackTitleStackView.titleAttributes.modify;
}

id NowPlaying.TrackTitleStackView.subtitleAttributes.didset()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  __chkstk_darwin();
  v60 = &v58 - v1;
  v2 = v0;
  v65 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v3)
  {
    v4 = *(*v3 + 424);
    v5 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
    v6 = lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(&lazy protocol witness table cache variable for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

    v4(v75, v2, v5, v6);

    if (v75[0])
    {
      v7 = v76;
      v8 = v77;
      v9 = specialized NowPlaying.TrackTitleStackView.TransitionContext.subtitleLabels.getter(v75[1], v76, v77);

      outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v7, v8);
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
      swift_beginAccess();
      if (v10)
      {
        v12 = 0;
        v63 = v9 & 0xFFFFFFFFFFFFFF8;
        v64 = v9 & 0xC000000000000001;
        v61 = v10;
        v62 = v9;
        do
        {
          if (v64)
          {
            v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_21:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v12 >= *(v63 + 16))
            {
              __break(1u);
LABEL_25:
              v10 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_5;
            }

            v14 = *(v9 + 8 * v12 + 32);

            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_21;
            }
          }

          v16 = *(v11 + 5);
          v73 = *(v11 + 4);
          v74 = v16;
          v17 = *(v11 + 3);
          v71 = *(v11 + 2);
          v72 = v17;
          v18 = *(v11 + 1);
          v69 = *v11;
          v70 = v18;
          v19 = v14[1];
          v20 = v14[2];
          v21 = v14[3];
          v22 = v14[4];
          v23 = v14[6];
          v84[4] = v14[5];
          v84[5] = v23;
          v84[2] = v21;
          v84[3] = v22;
          v84[0] = v19;
          v84[1] = v20;
          v24 = v14[2];
          v78 = v14[1];
          v79 = v24;
          v25 = v14[3];
          v26 = v14[4];
          v27 = v14[6];
          v82 = v14[5];
          v83 = v27;
          v80 = v25;
          v81 = v26;
          memmove(v14 + 1, v11, 0x60uLL);
          outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v69, v68);
          outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v69, v68);
          outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v84, v68);
          outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v78);
          NowPlaying.TrackTitleStackView.Label.attributes.didset(v84);
          outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v84);
          outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v69);
          v66 = v11[24];
          v28 = *&v2[v65];
          if (v28)
          {
            v29 = v2;
            v30 = *(*v28 + 256);

            v32 = v30(v31);

            if (v32 == 2)
            {
              v33 = *&v29[v65];
              if (v33)
              {
                v59 = *(*v33 + 208);

                v35 = v60;
                v59(v34);
                v2 = v29;

                v36 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v37 = (*(*(v36 - 8) + 48))(v35, 1, v36) == 1;
                outlined destroy of TaskPriority?(v35, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
                v66 &= v37;
              }

              else
              {
                v2 = v29;
                v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v39 = v60;
                (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
                outlined destroy of TaskPriority?(v39, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
              }
            }

            else
            {
              v2 = v29;
            }

            v10 = v61;
            v9 = v62;
          }

          else
          {
          }

          v13 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
          [v13 setMarqueeEnabled:v66 withOptions:1];

          ++v12;
        }

        while (v15 != v10);
      }
    }
  }

  v40 = v2;
  v41 = NowPlaying.TrackTitleStackView.subtitleLabel.getter();
  v42 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 5);
  v68[4] = *(v42 + 4);
  v68[5] = v43;
  v44 = *(v42 + 3);
  v68[2] = *(v42 + 2);
  v68[3] = v44;
  v45 = *(v42 + 1);
  v68[0] = *v42;
  v68[1] = v45;
  v46 = *(v41 + 1);
  v47 = *(v41 + 2);
  v48 = *(v41 + 3);
  v49 = *(v41 + 4);
  v50 = *(v41 + 6);
  v82 = *(v41 + 5);
  v83 = v50;
  v80 = v48;
  v81 = v49;
  v78 = v46;
  v79 = v47;
  v51 = *(v41 + 2);
  v69 = *(v41 + 1);
  v70 = v51;
  v52 = *(v41 + 3);
  v53 = *(v41 + 4);
  v54 = *(v41 + 6);
  v73 = *(v41 + 5);
  v74 = v54;
  v71 = v52;
  v72 = v53;
  memmove(v41 + 16, v42, 0x60uLL);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v68, v67);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v68, v67);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v78, v67);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v69);
  NowPlaying.TrackTitleStackView.Label.attributes.didset(&v78);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v78);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v68);

  v55 = *(v42 + 40);
  v67[0] = *(v42 + 24);
  v67[1] = v55;
  v67[2] = *(v42 + 56);

  NowPlaying.TrackTitleStackView.updateMarquee(for:marqueeAttributes:)(v56, v67);

  return [v40 setNeedsLayout];
}

double NowPlaying.TrackTitleStackView.titleAttributes.getter@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = v4[2];
  v6 = v4[4];
  v7 = v4[5];
  v18 = v4[3];
  v19 = v6;
  v20 = v7;
  v8 = v4[1];
  v15 = *v4;
  v16 = v8;
  v17 = v5;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v15, v14);
  v9 = v18;
  v10 = v19;
  v11 = v16;
  a2[2] = v17;
  a2[3] = v9;
  v12 = v20;
  a2[4] = v10;
  a2[5] = v12;
  result = *&v15;
  *a2 = v15;
  a2[1] = v11;
  return result;
}

uint64_t NowPlaying.TrackTitleStackView.titleAttributes.setter(_OWORD *a1, void *a2, void (*a3)(void))
{
  v6 = v3 + *a2;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 72);
  v10 = *(v6 + 80);
  v11 = *(v6 + 88);
  v12 = a1[3];
  *(v6 + 32) = a1[2];
  *(v6 + 48) = v12;
  v13 = a1[5];
  *(v6 + 64) = a1[4];
  *(v6 + 80) = v13;
  v14 = a1[1];
  *v6 = *a1;
  *(v6 + 16) = v14;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(a1, v16);

  outlined consume of NowPlaying.TrackTitleStackView.Label.Attributes.Action?(v9, v10, v11);
  a3();
  return outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(a1);
}

uint64_t (*NowPlaying.TrackTitleStackView.subtitleAttributes.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return NowPlaying.TrackTitleStackView.subtitleAttributes.modify;
}

uint64_t NowPlaying.TrackTitleStackView.titleAttributes.modify(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id NowPlaying.TrackTitleStackView.containerView.getter()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView;
  v2 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor:v9];

    [v0 addSubview:v8];
    v10 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

Swift::Void __swiftcall NowPlaying.TrackTitleStackView.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v85.receiver = v0;
  v85.super_class = v2;
  objc_msgSendSuper2(&v85, "layoutSubviews");
  v3 = NowPlaying.TrackTitleStackView.titleLabel.getter();
  v4 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 3);
  v86[2] = *(v4 + 2);
  v86[3] = v5;
  v6 = *(v4 + 5);
  v86[4] = *(v4 + 4);
  v86[5] = v6;
  v7 = *(v4 + 1);
  v86[0] = *v4;
  v86[1] = v7;
  if (v7 == 1)
  {

    v8 = 0.0;
  }

  else
  {
    outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v86, v79);
    v87.origin.x = 0.0;
    v87.origin.y = 0.0;
    v87.size.width = 0.0;
    v87.size.height = 0.0;
    if (CGRectGetHeight(v87) <= 0.0 || (v88.origin.x = 0.0, v88.origin.y = 0.0, v88.size.width = 0.0, v88.size.height = 0.0, CGRectGetHeight(v88) == 1.79769313e308))
    {
      [*&v3[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v3[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    v10 = v9;
    UIEdgeInsets.vertical.getter();
    v8 = v10 + v11;
    if (v10 + v11 > 0.0)
    {
      [*&v86[0] ascender];
      v8 = v8 + v12;
    }

    if (v8 <= 0.0)
    {
      outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v86);
    }

    else
    {
      [*&v86[0] descender];
      v14 = v13;
      outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v86);

      v8 = v8 - v14;
    }
  }

  v15 = NowPlaying.TrackTitleStackView.subtitleLabel.getter();
  v16 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v17 = *(v16 + 3);
  v81 = *(v16 + 2);
  v82 = v17;
  v18 = *(v16 + 5);
  v83 = *(v16 + 4);
  v84 = v18;
  v19 = *(v16 + 1);
  *v79 = *v16;
  v80 = v19;
  if (v19)
  {

    v20 = 0.0;
  }

  else
  {
    outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v79, v73);
    v89.origin.x = 0.0;
    v89.origin.y = 0.0;
    v89.size.width = 0.0;
    v89.size.height = 0.0;
    if (CGRectGetHeight(v89) <= 0.0 || (v90.origin.x = 0.0, v90.origin.y = 0.0, v90.size.width = 0.0, v90.size.height = 0.0, CGRectGetHeight(v90) == 1.79769313e308))
    {
      [*&v15[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v15[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    v22 = v21;
    UIEdgeInsets.vertical.getter();
    v20 = v22 + v23;
    if (v22 + v23 > 0.0)
    {
      [v79[0] ascender];
      v20 = v20 + v24;
    }

    if (v20 <= 0.0)
    {
      outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v79);
    }

    else
    {
      [v79[0] descender];
      v26 = v25;
      outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v79);

      v20 = v20 - v26;
    }
  }

  [v1 bounds];
  Width = CGRectGetWidth(v91);
  Height = v8 + v20;
  v29 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v30 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v30)
  {
    v31 = *(*v30 + 424);
    v32 = lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(&lazy protocol witness table cache variable for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

    v31(v73, v1, v2, v32);

    if (v73[0])
    {
      v33 = v74;
      if (!v74)
      {

        goto LABEL_51;
      }

      v34 = *(&v74 + 1);
      v35 = *(v4 + 3);
      v75 = *(v4 + 2);
      v76 = v35;
      v36 = *(v4 + 5);
      v77 = *(v4 + 4);
      v78 = v36;
      v37 = *(v4 + 1);
      *v73 = *v4;
      v74 = v37;
      if (v37)
      {

        v38 = 0.0;
        if (!v34)
        {
          goto LABEL_49;
        }
      }

      else
      {
        outlined copy of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v33);
        outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v73, v67);
        v92.origin.x = 0.0;
        v92.origin.y = 0.0;
        v92.size.width = 0.0;
        v92.size.height = 0.0;
        if (CGRectGetHeight(v92) <= 0.0 || (v93.origin.x = 0.0, v93.origin.y = 0.0, v93.size.width = 0.0, v93.size.height = 0.0, CGRectGetHeight(v93) == 1.79769313e308))
        {
          [*(v33 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
        }

        else
        {
          [*(v33 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{0.0, 0.0}];
        }

        v40 = v39;
        UIEdgeInsets.vertical.getter();
        v38 = v40 + v41;
        if (v40 + v41 > 0.0)
        {
          [v73[0] ascender];
          v38 = v38 + v42;
        }

        if (v38 <= 0.0)
        {
          outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v73);
          if (!v34)
          {
            goto LABEL_49;
          }
        }

        else
        {
          [v73[0] descender];
          v44 = v43;
          outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v73);
          v38 = v38 - v44;
          if (!v34)
          {
LABEL_49:
            v96.origin.x = 0.0;
            v96.origin.y = 0.0;
            v96.size.width = Width;
            v96.size.height = Height;
            Height = CGRectGetHeight(v96);

            outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v33, v34);
            if (Height <= v38 + v20)
            {
              Height = v38 + v20;
            }

            goto LABEL_51;
          }
        }
      }

      v45 = *(v16 + 3);
      v69 = *(v16 + 2);
      v70 = v45;
      v46 = *(v16 + 5);
      v71 = *(v16 + 4);
      v72 = v46;
      v47 = *(v16 + 1);
      *v67 = *v16;
      v68 = v47;
      if (v47)
      {
        v20 = 0.0;
      }

      else
      {

        outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v67, &v66);
        v94.origin.x = 0.0;
        v94.origin.y = 0.0;
        v94.size.width = 0.0;
        v94.size.height = 0.0;
        if (CGRectGetHeight(v94) <= 0.0 || (v95.origin.x = 0.0, v95.origin.y = 0.0, v95.size.width = 0.0, v95.size.height = 0.0, CGRectGetHeight(v95) == 1.79769313e308))
        {
          [*(v34 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
        }

        else
        {
          [*(v34 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{0.0, 0.0}];
        }

        v49 = v48;
        UIEdgeInsets.vertical.getter();
        v20 = v49 + v50;
        if (v49 + v50 > 0.0)
        {
          [v67[0] ascender];
          v20 = v20 + v51;
        }

        if (v20 <= 0.0)
        {
          outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v67);
        }

        else
        {
          [v67[0] descender];
          v53 = v52;
          outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v67);

          v20 = v20 - v53;
        }
      }

      goto LABEL_49;
    }
  }

LABEL_51:
  CGRect.centeringAlong(axes:in:)(0.0, 0.0, Width, Height);
  v54 = NowPlaying.TrackTitleStackView.containerView.getter();
  *v73 = 0u;
  v74 = 0u;
  LOBYTE(v75) = 1;
  CGRect.applyingLayoutDirection(in:bounds:)();
  [v54 setFrame:?];

  v55 = *&v1[v29];
  if (v55)
  {

    [v1 bounds];
    NowPlaying.TrackTitleStackView.layout(transition:in:)(v55, v56, v57, v58, v59);
  }

  else
  {
    v60 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
    v61 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];

    [v1 bounds];
    NowPlaying.TrackTitleStackView.layout(titleLabel:subtitleLabel:in:offset:)(v60, v61, v62, v63, v64, v65, UIOffsetZero.horizontal, UIOffsetZero.vertical);
  }

  NowPlaying.TrackTitleStackView.applyFadingEffectIfNeeded()();
}

void NowPlaying.TrackTitleStackView.layout(transition:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  Gliss.Transition<>.outputs(in:)(&v79, a2, a3, a4, a5);
  v8 = v79;
  v9 = v80;
  v11 = v81;
  v10 = *&v82;
  v13 = v83;
  v12 = v84;
  v15 = v85;
  v14 = v86;
  v77 = v88;
  v78 = *&v87;
  v76 = v89;
  v65 = v91;
  v66 = v90;
  v63 = v93;
  v64 = v92;
  v61 = v95;
  v62 = v94;
  v59 = v97;
  v60 = v96;
  v49 = v99;
  v50 = v98;
  v51 = v100;
  v74 = v102;
  v75 = v101;
  v72 = v104;
  v73 = v103;
  v70 = v106;
  v71 = v105;
  v68 = v108;
  v69 = v107;
  v57 = v110;
  v58 = v109;
  v55 = v112;
  v56 = v111;
  v53 = v114;
  v54 = v113;
  v52 = v115;
  v67 = v116;
  v16 = *(*a1 + 424);
  v17 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v18 = lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(&lazy protocol witness table cache variable for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
  v16(&v79, v6, v17, v18);
  v19 = *&v79;
  if (v79 != 0.0)
  {
    v21 = *&v80;
    v20 = *&v81;
    v22 = v82;

    outlined copy of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v20);
    [v6 bounds];
    NowPlaying.TrackTitleStackView.layout(titleLabel:subtitleLabel:in:offset:)(v19, v21, v23, v24, v25, v26, v8, v9);
    v27 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
    [*(v19 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v11];
    if (v21)
    {
      [*(v21 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v11];
    }

    v28 = *(v19 + v27);
    v79 = v10;
    v80 = v13;
    v81 = v12;
    v82 = v15;
    v83 = *&v14;
    v84 = v78;
    v85 = v77;
    v86 = v76;
    v87 = v66;
    v88 = v65;
    v89 = v64;
    v90 = v63;
    v91 = v62;
    v92 = v61;
    v93 = v60;
    v94 = v59;
    [v28 setTransform3D:{&v79, *&v10, *&v13, *&v12, v15, v14}];
    if (v21)
    {
      v29 = *(v21 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v79 = v44;
      v80 = v45;
      v81 = v46;
      v82 = v47;
      v83 = v48;
      v84 = v78;
      v85 = v77;
      v86 = v76;
      v87 = v66;
      v88 = v65;
      v89 = v64;
      v90 = v63;
      v91 = v62;
      v92 = v61;
      v93 = v60;
      v94 = v59;
      [v29 setTransform3D:&v79];

      outlined copy of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v20);
      outlined copy of NowPlaying.TrackTitleStackView.TransitionContext?(v19, v21, v20);

      v30 = outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v20, v22);
      if (!v20)
      {
        v31 = v19;
        v32 = v21;
LABEL_14:
        v42 = 0;
        v43 = v22;
LABEL_15:
        outlined consume of NowPlaying.TrackTitleStackView.TransitionContext?(v31, v32, v42, v43);
        return;
      }
    }

    else
    {

      outlined copy of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v20);
      outlined copy of NowPlaying.TrackTitleStackView.TransitionContext?(v19, 0, v20);

      v30 = outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v20, v22);
      if (!v20)
      {
        v31 = v19;
        v32 = 0;
        goto LABEL_14;
      }
    }

    [v6 bounds];
    NowPlaying.TrackTitleStackView.layout(titleLabel:subtitleLabel:in:offset:)(v20, v22, v33, v34, v35, v36, v50, v49);
    v37 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
    [*(v20 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v51];
    v38 = v75;
    if (v22)
    {
      [*(v22 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v51];
      v38 = v75;
    }

    v39 = *(v20 + v37);
    v79 = v38;
    v80 = v74;
    v81 = v73;
    v82 = v72;
    v83 = v71;
    v84 = v70;
    v85 = v69;
    v86 = v68;
    v87 = v58;
    v88 = v57;
    v89 = v56;
    v90 = v55;
    v91 = v54;
    v92 = v53;
    v93 = v52;
    v94 = v67;
    v40 = v38;
    [v39 setTransform3D:&v79];
    if (v22)
    {
      v41 = *(v22 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v79 = v40;
      v80 = v74;
      v81 = v73;
      v82 = v72;
      v83 = v71;
      v84 = v70;
      v85 = v69;
      v86 = v68;
      v87 = v58;
      v88 = v57;
      v89 = v56;
      v90 = v55;
      v91 = v54;
      v92 = v53;
      v93 = v52;
      v94 = v67;
      [v41 setTransform3D:&v79];
      outlined consume of NowPlaying.TrackTitleStackView.TransitionContext?(v19, v21, v20, v22);

      return;
    }

    v31 = v19;
    v32 = v21;
    v42 = v20;
    v43 = 0;
    goto LABEL_15;
  }
}

__n128 Gliss.Transition<>.outputs(in:)@<Q0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  v11 = __chkstk_darwin();
  v13 = &v56 - v12;
  v14 = *(*v5 + 232);
  v15 = v14(v11);
  v16 = (v14)();
  if (v16 == 2)
  {
    v17 = 1.0 - v15;
    horizontal = UIOffsetZero.horizontal;
    vertical = UIOffsetZero.vertical;
  }

  else
  {
    v20 = v16;
    v76.origin.x = a2;
    v76.origin.y = a3;
    v76.size.width = a4;
    v76.size.height = a5;
    v21 = v15 * CGRectGetWidth(v76);
    v17 = 1.0;
    vertical = 0.0;
    if (v20)
    {
      horizontal = v21;
    }

    else
    {
      horizontal = -v21;
    }
  }

  v22 = *&CATransform3DIdentity.m41;
  v71 = *&CATransform3DIdentity.m43;
  v70 = v22;
  v23 = *&CATransform3DIdentity.m31;
  v69 = *&CATransform3DIdentity.m33;
  v68 = v23;
  v24 = *&CATransform3DIdentity.m21;
  v67 = *&CATransform3DIdentity.m23;
  v66 = v24;
  v25 = *&CATransform3DIdentity.m11;
  v65 = *&CATransform3DIdentity.m13;
  v64 = v25;
  v26 = (*v5 + 432);
  v27 = *v26;
  v28 = (*v26)();
  v29 = v64;
  v30 = v65;
  v31 = v66;
  v32 = v67;
  v33 = v68;
  v34 = v69;
  v35 = v70;
  v36 = v71;
  if (v73 != 2)
  {
    (*(*v5 + 208))(v28, v64, v65, v66, v67, v68, v69, v70, v71);
    v37 = type metadata accessor for NowPlaying.TrackMetadata(0);
    v38 = (*(*(v37 - 8) + 48))(v13, 1, v37);
    v28 = outlined destroy of TaskPriority?(v13, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
    v29 = v64;
    v30 = v65;
    v31 = v66;
    v32 = v67;
    v33 = v68;
    v34 = v69;
    v35 = v70;
    v36 = v71;
    if (v38 == 1)
    {
      v28 = CATransform3DMakeScale(&v72, v15 * 0.1 + 1.0, v15 * 0.1 + 1.0, 1.0);
      v30 = *&v72.m13;
      v29 = *&v72.m11;
      v32 = *&v72.m23;
      v31 = *&v72.m21;
      v34 = *&v72.m33;
      v33 = *&v72.m31;
      v35 = *&v72.m41;
      v36 = *&v72.m43;
    }
  }

  v56 = v36;
  v57 = v35;
  v58 = v34;
  v59 = v33;
  v60 = v32;
  v61 = v31;
  v62 = v30;
  v63 = v29;
  v39 = (v14)(v28);
  if (v39 == 2)
  {
    v41 = UIOffsetZero.horizontal;
    v40 = UIOffsetZero.vertical;
    v42 = v15;
  }

  else
  {
    v43 = v39;
    v77.origin.x = a2;
    v77.origin.y = a3;
    v77.size.width = a4;
    v77.size.height = a5;
    Width = CGRectGetWidth(v77);
    v78.size.height = a5;
    v45 = horizontal;
    v46 = vertical;
    v47 = v17;
    v48 = Width;
    v78.origin.x = a2;
    v78.origin.y = a3;
    v78.size.width = a4;
    v49 = v15 * CGRectGetWidth(v78);
    v50 = v49 - v48;
    v42 = 1.0;
    v40 = 0.0;
    v51 = v48 - v49;
    v17 = v47;
    vertical = v46;
    horizontal = v45;
    if (v43)
    {
      v41 = v50;
    }

    else
    {
      v41 = v51;
    }
  }

  (v27)(&v74);
  if (v75 != 2 && (v75 & 0x100) != 0)
  {
    CATransform3DMakeScale(&v72, (v15 + -1.0) * 0.1 + 1.0, (v15 + -1.0) * 0.1 + 1.0, 1.0);
    v64 = *&v72.m11;
    v65 = *&v72.m13;
    v66 = *&v72.m21;
    v67 = *&v72.m23;
    v68 = *&v72.m31;
    v69 = *&v72.m33;
    v70 = *&v72.m41;
    v71 = *&v72.m43;
  }

  *a1 = horizontal;
  *(a1 + 8) = vertical;
  *(a1 + 16) = v17;
  *(a1 + 40) = v62;
  *(a1 + 24) = v63;
  *(a1 + 72) = v60;
  *(a1 + 56) = v61;
  *(a1 + 104) = v58;
  *(a1 + 88) = v59;
  *(a1 + 136) = v56;
  *(a1 + 120) = v57;
  *(a1 + 152) = v41;
  *(a1 + 160) = v40;
  *(a1 + 168) = v42;
  v52 = v65;
  *(a1 + 176) = v64;
  *(a1 + 192) = v52;
  v53 = v67;
  *(a1 + 208) = v66;
  *(a1 + 224) = v53;
  v54 = v69;
  *(a1 + 240) = v68;
  *(a1 + 256) = v54;
  result = v71;
  *(a1 + 272) = v70;
  *(a1 + 288) = result;
  return result;
}

void NowPlaying.TrackTitleStackView.layout(titleLabel:subtitleLabel:in:offset:)(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v9 = v8;
  v16 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets + 16);
  v17 = &v8[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v18 = *(v17 + 3);
  v88[2] = *(v17 + 2);
  v88[3] = v18;
  v19 = *(v17 + 5);
  v88[4] = *(v17 + 4);
  v88[5] = v19;
  v20 = *(v17 + 1);
  v88[0] = *v17;
  v88[1] = v20;
  if (v20 == 1)
  {
    v76 = 0.0;
  }

  else
  {
    v21 = v16;
    outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v88, &v82);
    v89.origin.x = a3;
    v89.origin.y = a4;
    v89.size.width = a5;
    v89.size.height = a6;
    if (CGRectGetHeight(v89) <= 0.0 || (v90.origin.x = a3, v90.origin.y = a4, v90.size.width = a5, v90.size.height = a6, CGRectGetHeight(v90) == 1.79769313e308))
    {
      [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{a5, a6}];
    }

    v23 = v22;
    UIEdgeInsets.vertical.getter();
    v25 = v24;
    outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v88);
    v76 = v23 + v25;
    v16 = v21;
  }

  v91.origin.x = a3;
  v91.origin.y = a4;
  v91.size.width = a5;
  v91.size.height = a6;
  Width = CGRectGetWidth(v91);
  if (a2)
  {
    top = *(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets);
    v27 = &v9[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v28 = *(v27 + 2);
    v29 = *(v27 + 3);
    v30 = *v27;
    v83 = *(v27 + 1);
    v84 = v28;
    v31 = *(v27 + 4);
    v32 = *(v27 + 5);
    v85 = v29;
    v86 = v31;
    v87 = v32;
    v82 = v30;
    LOBYTE(v27) = v83;

    v33 = 0.0;
    if ((v27 & 1) == 0)
    {
      rect = v16;
      outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v82, v81);
      v92.origin.x = a3;
      v92.origin.y = a4;
      v92.size.width = a5;
      v92.size.height = a6;
      if (CGRectGetHeight(v92) <= 0.0 || (v93.origin.x = a3, v93.origin.y = a4, v93.size.width = a5, v93.size.height = a6, CGRectGetHeight(v93) == 1.79769313e308))
      {
        v34 = top;
        [*(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
      }

      else
      {
        v34 = top;
        [*(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{a5, a6}];
      }

      v36 = v35;
      UIEdgeInsets.vertical.getter();
      v38 = v37;
      outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v82);
      v33 = v36 + v38;
      v16 = rect;
      top = v34;
    }

    recta = v33;
    v94.origin.x = a3;
    v94.origin.y = a4;
    v94.size.width = a5;
    v94.size.height = a6;
    v78 = CGRectGetWidth(v94);

    v39 = 0.0;
    v77 = 0.0;
  }

  else
  {
    v40 = &v9[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    if (v40[16])
    {
      top = UIEdgeInsetsZero.top;
      v78 = 0.0;
      recta = 0.0;
      v77 = 0.0;
      v39 = 0.0;
    }

    else
    {
      top = *&NowPlaying.TrackTitleStackView.subtitleLabel.getter()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets];

      v41 = *(*&v9[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v77 = UIView.untransformedFrame.getter();
      v78 = v42;
      v39 = v43;
      recta = v44;
    }
  }

  v45 = v16 + top;
  v95.origin.x = a3;
  v95.origin.y = a4;
  v95.size.width = a5;
  v95.size.height = a6;
  v46 = CGRectGetWidth(v95);
  v96.origin.x = 0.0;
  v96.origin.y = 0.0;
  v96.size.width = Width;
  v96.size.height = v76;
  Height = CGRectGetHeight(v96);
  v97.origin.x = v77;
  v97.size.width = v78;
  v97.origin.y = v39;
  v97.size.height = recta;
  v48 = CGRectGetHeight(v97);
  CGRect.centeringAlong(axes:in:)(0.0, 0.0, v46, Height + v48 - v45);
  v82 = 0u;
  v83 = 0u;
  LOBYTE(v84) = 1;
  CGRect.applyingLayoutDirection(in:bounds:)();
  CGRect.offset(by:)();
  MinY = CGRectGetMinY(v98);
  v99.origin.x = 0.0;
  v99.origin.y = MinY;
  v99.size.width = Width;
  v99.size.height = v76;
  MaxY = CGRectGetMaxY(v99);
  v51 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v52 = NowPlaying.TrackTitleStackView.containerView.getter();
  [v9 convertRect:v52 toCoordinateSpace:{0.0, MinY, Width, v76}];

  v53 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView;
  v54 = *&v9[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  CGRect.applyingLayoutDirection(in:bounds:)();

  CGRect.offset(by:)();
  UIView.untransformedFrame.setter(v55, v56, v57, v58);
  if (a2)
  {
    [v9 convertRect:*&v9[v53] toCoordinateSpace:{v77, MaxY - v45, v78, recta}];
    v59 = *&v9[v53];
    CGRect.applyingLayoutDirection(in:bounds:)();

    CGRect.offset(by:)();
    UIView.untransformedFrame.setter(v60, v61, v62, v63);
  }

  v64 = [v51 superview];
  if (!v64 || (v65 = v64, v66 = *&v9[v53], type metadata accessor for UIAction(0, &_sSo6UIViewCML_0, UIView_ptr), v67 = v66, v68 = static NSObject.== infix(_:_:)(), v65, v67, (v68 & 1) == 0))
  {
    [*&v9[v53] addSubview:v51];
  }

  if (a2)
  {
    v69 = *(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);

    v70 = [v69 superview];
    if (!v70 || (v71 = v70, v72 = *&v9[v53], type metadata accessor for UIAction(0, &_sSo6UIViewCML_0, UIView_ptr), v73 = v72, v74 = static NSObject.== infix(_:_:)(), v71, v73, (v74 & 1) == 0))
    {
      [*&v9[v53] addSubview:v69];
    }
  }
}

void NowPlaying.TrackTitleStackView.intrinsicContentSize.getter(uint64_t a1)
{
  v2 = NowPlaying.TrackTitleStackView.titleLabel.getter();
  v3 = (v1 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  swift_beginAccess();
  v4 = v3[3];
  v21[2] = v3[2];
  v21[3] = v4;
  v5 = v3[5];
  v21[4] = v3[4];
  v21[5] = v5;
  v6 = v3[1];
  v21[0] = *v3;
  v21[1] = v6;
  if ((v6 & 1) == 0)
  {
    outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v21, &v15);
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = 0.0;
    v22.size.height = 0.0;
    if (CGRectGetHeight(v22) <= 0.0 || (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = 0.0, v23.size.height = 0.0, CGRectGetHeight(v23) == 1.79769313e308))
    {
      [*&v2[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v2[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v21);
  }

  v7 = NowPlaying.TrackTitleStackView.subtitleLabel.getter();
  v8 = (v1 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  swift_beginAccess();
  v9 = v8[2];
  v10 = v8[3];
  v11 = *v8;
  v16 = v8[1];
  v17 = v9;
  v12 = v8[4];
  v13 = v8[5];
  v18 = v10;
  v19 = v12;
  v20 = v13;
  v15 = v11;
  if ((v16 & 1) == 0)
  {
    outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v15, v14);
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = 0.0;
    v24.size.height = 0.0;
    if (CGRectGetHeight(v24) <= 0.0 || (v25.origin.x = 0.0, v25.origin.y = 0.0, v25.size.width = 0.0, v25.size.height = 0.0, CGRectGetHeight(v25) == 1.79769313e308))
    {
      [*&v7[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v7[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v15);
  }
}

id NowPlaying.TrackTitleStackView.titleLabel.didset(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) removeFromSuperview];
  v3 = NowPlaying.TrackTitleStackView.titleLabel.getter();
  v4 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v24[4] = *(v4 + 4);
  v24[5] = v5;
  v6 = *(v4 + 3);
  v24[2] = *(v4 + 2);
  v24[3] = v6;
  v7 = *(v4 + 1);
  v24[0] = *v4;
  v24[1] = v7;
  v8 = *(v3 + 1);
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v12 = *(v3 + 6);
  v23[4] = *(v3 + 5);
  v23[5] = v12;
  v23[2] = v10;
  v23[3] = v11;
  v23[0] = v8;
  v23[1] = v9;
  v13 = *(v3 + 2);
  v25[0] = *(v3 + 1);
  v25[1] = v13;
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v16 = *(v3 + 6);
  v25[4] = *(v3 + 5);
  v25[5] = v16;
  v25[2] = v14;
  v25[3] = v15;
  memmove(v3 + 16, v4, 0x60uLL);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v24, v22);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v24, v22);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v23, v22);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v25);
  NowPlaying.TrackTitleStackView.Label.attributes.didset(v23);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v23);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v24);

  v17 = *(*&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v18 = *&NowPlaying.TrackTitleStackView.subtitleLabel.getter()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v17 addCoordinatedMarqueeView:v18];

  v19 = *(v4 + 40);
  v22[0] = *(v4 + 24);
  v22[1] = v19;
  v22[2] = *(v4 + 56);

  NowPlaying.TrackTitleStackView.updateMarquee(for:marqueeAttributes:)(v20, v22);

  return [v2 setNeedsLayout];
}

char *NowPlaying.TrackTitleStackView.titleLabel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  __chkstk_darwin();
  v2 = &v14[-v1];
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel])
  {
    v4 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
  }

  else
  {
    v5 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
    outlined init with copy of NowPlaying.TrackMetadata(&v5[*(v6 + 24)], v2, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
    v8 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
    swift_beginAccess();
    v9 = *(v8 + 3);
    v15[2] = *(v8 + 2);
    v15[3] = v9;
    v10 = *(v8 + 5);
    v15[4] = *(v8 + 4);
    v15[5] = v10;
    v11 = *(v8 + 1);
    v15[0] = *v8;
    v15[1] = v11;
    type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
    swift_allocObject();
    outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v15, v14);
    v12 = v0;
    v4 = specialized NowPlaying.TrackTitleStackView.Label.init(text:attributes:hostingView:)(v2, v15, v12);

    outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v15);
    *&v0[v3] = v4;
  }

  return v4;
}

id NowPlaying.TrackTitleStackView.subtitleLabel.didset(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) removeFromSuperview];
  v3 = NowPlaying.TrackTitleStackView.subtitleLabel.getter();
  v4 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v23[4] = *(v4 + 4);
  v23[5] = v5;
  v6 = *(v4 + 3);
  v23[2] = *(v4 + 2);
  v23[3] = v6;
  v7 = *(v4 + 1);
  v23[0] = *v4;
  v23[1] = v7;
  v8 = *(v3 + 1);
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v12 = *(v3 + 6);
  v22[4] = *(v3 + 5);
  v22[5] = v12;
  v22[2] = v10;
  v22[3] = v11;
  v22[0] = v8;
  v22[1] = v9;
  v13 = *(v3 + 2);
  v24[0] = *(v3 + 1);
  v24[1] = v13;
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v16 = *(v3 + 6);
  v24[4] = *(v3 + 5);
  v24[5] = v16;
  v24[2] = v14;
  v24[3] = v15;
  memmove(v3 + 16, v4, 0x60uLL);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v23, v21);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v23, v21);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v22, v21);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v24);
  NowPlaying.TrackTitleStackView.Label.attributes.didset(v22);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v22);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v23);

  v17 = *&NowPlaying.TrackTitleStackView.titleLabel.getter()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v17 addCoordinatedMarqueeView:*(*&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view)];

  v18 = *(v4 + 40);
  v21[0] = *(v4 + 24);
  v21[1] = v18;
  v21[2] = *(v4 + 56);

  NowPlaying.TrackTitleStackView.updateMarquee(for:marqueeAttributes:)(v19, v21);

  return [v2 setNeedsLayout];
}

char *NowPlaying.TrackTitleStackView.subtitleLabel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  __chkstk_darwin();
  v2 = &v13[-v1];
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel])
  {
    v4 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];
  }

  else
  {
    v5 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
    outlined init with copy of TaskPriority?(&v5[*(v6 + 28)], v2, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    v7 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v8 = *(v7 + 3);
    v14[2] = *(v7 + 2);
    v14[3] = v8;
    v9 = *(v7 + 5);
    v14[4] = *(v7 + 4);
    v14[5] = v9;
    v10 = *(v7 + 1);
    v14[0] = *v7;
    v14[1] = v10;
    type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
    swift_allocObject();
    outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v14, v13);
    v11 = v0;
    v4 = specialized NowPlaying.TrackTitleStackView.Label.init(text:attributes:hostingView:)(v2, v14, v11);

    outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v14);
    *&v0[v3] = v4;
  }

  return v4;
}

uint64_t outlined assign with take of NowPlaying.TrackMetadata(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of NowPlaying.TrackMetadata(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with copy of NowPlaying.TrackMetadata.StringKind?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double NowPlaying.TrackTitleStackView.transitionWillBegin(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = a1;

  v5 = NowPlaying.TrackTitleStackView.containerView.getter();
  [v5 setClipsToBounds:*&v2[v4] != 0];

  [v2 setNeedsLayout];
  v6 = *(*a1 + 424);
  v7 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v8 = lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(&lazy protocol witness table cache variable for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
  v6(&v24, v2, v7, v8);
  if (v24)
  {
    v10 = v25;
    v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
    swift_beginAccess();
    v12 = *(v11 + 40);
    v24 = *(v11 + 24);
    v25 = v12;
    v26 = *(v11 + 56);

    NowPlaying.TrackTitleStackView.updateMarquee(for:marqueeAttributes:)(v13, &v24);

    v14 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v15 = *(v14 + 40);
    v23[0] = *(v14 + 24);
    v23[1] = v15;
    v23[2] = *(v14 + 56);

    NowPlaying.TrackTitleStackView.updateMarquee(for:marqueeAttributes:)(v16, v23);

    v17 = *(v11 + 40);
    v22[0] = *(v11 + 24);
    v22[1] = v17;
    v22[2] = *(v11 + 56);
    if (v10)
    {

      NowPlaying.TrackTitleStackView.updateMarquee(for:marqueeAttributes:)(v18, v22);

      v19 = *(&v10 + 1);
    }

    else
    {
      NowPlaying.TrackTitleStackView.updateMarquee(for:marqueeAttributes:)(0, v22);
      v19 = 0;
    }

    v20 = *(v14 + 40);
    v21[0] = *(v14 + 24);
    v21[1] = v20;
    v21[2] = *(v14 + 56);
    NowPlaying.TrackTitleStackView.updateMarquee(for:marqueeAttributes:)(v19, v21);

    return outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v10, *(&v10 + 1));
  }

  return result;
}

double NowPlaying.TrackTitleStackView.transitionDidEnd(_:)(char *a1)
{
  v2 = v1;
  v198 = a1;
  v195 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v189 = *(v195 - 8);
  __chkstk_darwin();
  v171 = &v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMR_0);
  __chkstk_darwin();
  v175 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v190 = &v158 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  __chkstk_darwin();
  v166 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v165 = &v158 - v7;
  __chkstk_darwin();
  v167 = &v158 - v8;
  __chkstk_darwin();
  v177 = &v158 - v9;
  __chkstk_darwin();
  v182 = &v158 - v10;
  __chkstk_darwin();
  v172 = &v158 - v11;
  __chkstk_darwin();
  v187 = &v158 - v12;
  __chkstk_darwin();
  v191 = &v158 - v13;
  v196 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v192 = *(v196 - 8);
  __chkstk_darwin();
  v184 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataVSg_AFtMd, &_s9MusicCore10NowPlayingO13TrackMetadataVSg_AFtMR);
  __chkstk_darwin();
  v174 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v173 = &v158 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  __chkstk_darwin();
  v168 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v183 = &v158 - v18;
  __chkstk_darwin();
  v170 = &v158 - v19;
  __chkstk_darwin();
  v180 = &v158 - v20;
  __chkstk_darwin();
  v181 = &v158 - v21;
  __chkstk_darwin();
  v169 = &v158 - v22;
  __chkstk_darwin();
  v178 = &v158 - v23;
  __chkstk_darwin();
  v179 = &v158 - v24;
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v176 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd_0, &_s10Foundation4UUIDVSg_ADtMR_0);
  __chkstk_darwin();
  v194 = &v158 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd_0, &_s10Foundation4UUIDVSgMR_0);
  __chkstk_darwin();
  v188 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v158 - v31;
  v34 = __chkstk_darwin();
  v35 = &v158 - v33;
  v197 = v2;
  v193 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v36 = *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v36)
  {
    v37 = *(v26 + 16);
    v37(&v158 - v33, v36 + direct field offset for Gliss.Transition.id, v25, v34);
    v38 = *(v26 + 56);
    v38(v35, 0, 1, v25);
  }

  else
  {
    v38 = *(v26 + 56);
    (v38)(&v158 - v33, 1, 1, v25, v34);
    v37 = *(v26 + 16);
  }

  (v37)(v32, &v198[direct field offset for Gliss.Transition.id], v25);
  v38(v32, 0, 1, v25);
  v39 = *(v28 + 48);
  v40 = v194;
  outlined init with copy of TaskPriority?(v35, v194, &_s10Foundation4UUIDVSgMd_0, &_s10Foundation4UUIDVSgMR_0);
  v41 = v40;
  outlined init with copy of TaskPriority?(v32, v40 + v39, &_s10Foundation4UUIDVSgMd_0, &_s10Foundation4UUIDVSgMR_0);
  v42 = *(v26 + 48);
  if (v42(v40, 1, v25) == 1)
  {
    outlined destroy of TaskPriority?(v32, &_s10Foundation4UUIDVSgMd_0, &_s10Foundation4UUIDVSgMR_0);
    outlined destroy of TaskPriority?(v35, &_s10Foundation4UUIDVSgMd_0, &_s10Foundation4UUIDVSgMR_0);
    v43 = v42(v40 + v39, 1, v25);
    v44 = v196;
    if (v43 == 1)
    {
      outlined destroy of TaskPriority?(v40, &_s10Foundation4UUIDVSgMd_0, &_s10Foundation4UUIDVSgMR_0);
      v45 = v197;
LABEL_11:
      v51 = v193;
      *&v45[v193] = 0;

      v52 = NowPlaying.TrackTitleStackView.containerView.getter();
      [v52 setClipsToBounds:*&v45[v51] != 0];

      v47 = 1;
      goto LABEL_13;
    }

LABEL_9:
    outlined destroy of TaskPriority?(v40, &_s10Foundation4UUIDVSg_ADtMd_0, &_s10Foundation4UUIDVSg_ADtMR_0);
    v47 = 0;
    v45 = v197;
    goto LABEL_13;
  }

  v46 = v188;
  outlined init with copy of TaskPriority?(v40, v188, &_s10Foundation4UUIDVSgMd_0, &_s10Foundation4UUIDVSgMR_0);
  if (v42(v40 + v39, 1, v25) == 1)
  {
    outlined destroy of TaskPriority?(v32, &_s10Foundation4UUIDVSgMd_0, &_s10Foundation4UUIDVSgMR_0);
    outlined destroy of TaskPriority?(v35, &_s10Foundation4UUIDVSgMd_0, &_s10Foundation4UUIDVSgMR_0);
    (*(v26 + 8))(v46, v25);
    v44 = v196;
    goto LABEL_9;
  }

  v48 = v176;
  (*(v26 + 32))(v176, v40 + v39, v25);
  lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(&_s10Foundation4UUIDVACSQAAWL_0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v26 + 8);
  v50(v48, v25);
  outlined destroy of TaskPriority?(v32, &_s10Foundation4UUIDVSgMd_0, &_s10Foundation4UUIDVSgMR_0);
  outlined destroy of TaskPriority?(v35, &_s10Foundation4UUIDVSgMd_0, &_s10Foundation4UUIDVSgMR_0);
  v50(v46, v25);
  outlined destroy of TaskPriority?(v41, &_s10Foundation4UUIDVSgMd_0, &_s10Foundation4UUIDVSgMR_0);
  v45 = v197;
  v44 = v196;
  if (v49)
  {
    goto LABEL_11;
  }

  v47 = 0;
LABEL_13:
  v53 = NowPlaying.TrackTitleStackView.titleLabel.getter();
  v54 = &v45[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v55 = *(v54 + 40);
  v204[0] = *(v54 + 24);
  v204[1] = v55;
  v204[2] = *(v54 + 56);
  NowPlaying.TrackTitleStackView.updateMarquee(for:marqueeAttributes:)(v53, v204);

  v56 = NowPlaying.TrackTitleStackView.subtitleLabel.getter();
  v57 = &v45[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v58 = *(v57 + 40);
  v203[0] = *(v57 + 24);
  v203[1] = v58;
  v203[2] = *(v57 + 56);
  NowPlaying.TrackTitleStackView.updateMarquee(for:marqueeAttributes:)(v56, v203);

  v59 = *(*v198 + 424);
  v60 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v61 = lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(&lazy protocol witness table cache variable for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
  v59(&v199, v45, v60, v61);
  v63 = v195;
  if (!v199)
  {
    return result;
  }

  v64 = v200;
  v66 = v201;
  v65 = v202;
  if (!v201)
  {

    goto LABEL_67;
  }

  v194 = v200;
  v176 = v202;
  v188 = v199;
  if ((v47 & 1) == 0)
  {
    outlined copy of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v201);

    v80 = outlined copy of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v66);
    v81 = v189;
    v82 = v191;
    goto LABEL_32;
  }

  v67 = *(*v198 + 208);
  v68 = *v198 + 208;
  outlined copy of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v201);

  v69 = outlined copy of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v66);
  v70 = v179;
  v162 = v67;
  v161 = v68;
  v67(v69);
  v71 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  v160 = v71;
  v72 = v44;
  v73 = v178;
  outlined init with copy of NowPlaying.TrackMetadata(&v45[v71], v178, type metadata accessor for NowPlaying.TrackMetadata);
  v74 = v192;
  v159 = *(v192 + 56);
  v159(v73, 0, 1, v72);
  v75 = *(v185 + 48);
  v76 = v173;
  outlined init with copy of TaskPriority?(v70, v173, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  outlined init with copy of TaskPriority?(v73, v76 + v75, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  v77 = *(v74 + 48);
  v78 = v77(v76, 1, v72);
  v164 = v66;
  v163 = v77;
  if (v78 != 1)
  {
    v83 = v169;
    outlined init with copy of TaskPriority?(v76, v169, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
    if (v77(v76 + v75, 1, v72) != 1)
    {
      v79 = v72;
      v86 = v184;
      outlined init with take of NowPlaying.TrackMetadata.StringKind(v76 + v75, v184, type metadata accessor for NowPlaying.TrackMetadata);
      v87 = static NowPlaying.TrackMetadata.== infix(_:_:)();
      outlined destroy of NowPlaying.TrackMetadata(v86, type metadata accessor for NowPlaying.TrackMetadata);
      outlined destroy of TaskPriority?(v178, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
      outlined destroy of TaskPriority?(v179, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
      outlined destroy of NowPlaying.TrackMetadata(v83, type metadata accessor for NowPlaying.TrackMetadata);
      v84 = outlined destroy of TaskPriority?(v76, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
      v85 = v197;
      if ((v87 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    outlined destroy of TaskPriority?(v178, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
    outlined destroy of TaskPriority?(v179, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
    outlined destroy of NowPlaying.TrackMetadata(v83, type metadata accessor for NowPlaying.TrackMetadata);
LABEL_23:
    v79 = v72;
    v84 = outlined destroy of TaskPriority?(v76, &_s9MusicCore10NowPlayingO13TrackMetadataVSg_AFtMd, &_s9MusicCore10NowPlayingO13TrackMetadataVSg_AFtMR);
    v85 = v197;
    goto LABEL_26;
  }

  outlined destroy of TaskPriority?(v73, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  outlined destroy of TaskPriority?(v70, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  if (v77(v76 + v75, 1, v72) != 1)
  {
    goto LABEL_23;
  }

  v79 = v72;
  outlined destroy of TaskPriority?(v76, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
LABEL_25:
  v88 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel;
  v89 = *&v197[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
  *&v197[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = v164;
  swift_retain_n();
  NowPlaying.TrackTitleStackView.titleLabel.didset(v89);

  v85 = v197;

  v84 = [*(*&v85[v88] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:1.0];
LABEL_26:
  v90 = v181;
  v162(v84);
  v91 = v180;
  outlined init with copy of NowPlaying.TrackMetadata(&v85[v160], v180, type metadata accessor for NowPlaying.TrackMetadata);
  v159(v91, 0, 1, v79);
  v92 = *(v185 + 48);
  v93 = v174;
  outlined init with copy of TaskPriority?(v90, v174, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  outlined init with copy of TaskPriority?(v91, v93 + v92, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  v94 = v163;
  v95 = v163(v93, 1, v79);
  v64 = v194;
  if (v95 == 1)
  {
    outlined destroy of TaskPriority?(v91, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
    outlined destroy of TaskPriority?(v90, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
    v96 = v94(v93 + v92, 1, v79);
    v97 = v93;
    v44 = v79;
    v66 = v164;
    v98 = v189;
    if (v96 == 1)
    {
      outlined destroy of TaskPriority?(v93, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
      v45 = v197;
      goto LABEL_64;
    }

    goto LABEL_31;
  }

  v99 = v170;
  outlined init with copy of TaskPriority?(v93, v170, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  v100 = v94(v93 + v92, 1, v79);
  v97 = v93;
  v44 = v79;
  v98 = v189;
  if (v100 == 1)
  {
    outlined destroy of TaskPriority?(v180, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
    outlined destroy of TaskPriority?(v181, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
    outlined destroy of NowPlaying.TrackMetadata(v99, type metadata accessor for NowPlaying.TrackMetadata);
    v66 = v164;
LABEL_31:
    v80 = outlined destroy of TaskPriority?(v97, &_s9MusicCore10NowPlayingO13TrackMetadataVSg_AFtMd, &_s9MusicCore10NowPlayingO13TrackMetadataVSg_AFtMR);
    v45 = v197;
    v63 = v195;
    v82 = v191;
    v81 = v98;
    goto LABEL_32;
  }

  v125 = v184;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v93 + v92, v184, type metadata accessor for NowPlaying.TrackMetadata);
  LODWORD(v185) = static NowPlaying.TrackMetadata.== infix(_:_:)();
  outlined destroy of NowPlaying.TrackMetadata(v125, type metadata accessor for NowPlaying.TrackMetadata);
  outlined destroy of TaskPriority?(v180, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  outlined destroy of TaskPriority?(v181, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  outlined destroy of NowPlaying.TrackMetadata(v99, type metadata accessor for NowPlaying.TrackMetadata);
  v64 = v194;
  v80 = outlined destroy of TaskPriority?(v93, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  v45 = v197;
  v63 = v195;
  v66 = v164;
  v82 = v191;
  v81 = v98;
  if (v185)
  {
    goto LABEL_64;
  }

LABEL_32:
  v101 = v183;
  (*(*v198 + 208))(v80);
  v102 = *(v192 + 48);
  v192 += 48;
  v185 = v102;
  if (v102(v101, 1, v44) == 1)
  {
    outlined destroy of TaskPriority?(v101, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
    (*(v81 + 56))(v82, 1, 1, v63);
  }

  else
  {
    outlined init with copy of TaskPriority?(v101 + *(v44 + 28), v82, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    outlined destroy of NowPlaying.TrackMetadata(v101, type metadata accessor for NowPlaying.TrackMetadata);
  }

  v103 = *&v45[v193];
  if (v103)
  {
    v104 = *(*v103 + 184);
    v105 = v81;

    v107 = v184;
    v104(v106);

    v108 = v187;
    outlined init with copy of TaskPriority?(v107 + *(v196 + 28), v187, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    outlined destroy of NowPlaying.TrackMetadata(v107, type metadata accessor for NowPlaying.TrackMetadata);
  }

  else
  {
    v108 = v187;
    (*(v81 + 56))(v187, 1, 1, v63);
    v105 = v81;
  }

  v109 = *(v186 + 48);
  v110 = v191;
  v111 = v190;
  outlined init with copy of TaskPriority?(v191, v190, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v112 = v111;
  outlined init with copy of TaskPriority?(v108, v111 + v109, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v113 = *(v105 + 48);
  if ((v113)(v111, 1, v63) == 1)
  {
    v198 = v113;
    outlined destroy of TaskPriority?(v108, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    v114 = v190;
    outlined destroy of TaskPriority?(v110, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    if ((v198)(v114 + v109, 1, v63) == 1)
    {
      outlined destroy of TaskPriority?(v114, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v115 = v172;
  outlined init with copy of TaskPriority?(v112, v172, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  if ((v113)(v112 + v109, 1, v63) == 1)
  {
    outlined destroy of TaskPriority?(v187, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    v114 = v190;
    outlined destroy of TaskPriority?(v191, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    outlined destroy of NowPlaying.TrackMetadata(v115, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_43:
    outlined destroy of TaskPriority?(v114, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMR_0);
    v65 = v176;
    v64 = v194;
LABEL_44:

    goto LABEL_67;
  }

  v198 = v113;
  v116 = v112 + v109;
  v117 = v171;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v116, v171, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v118 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  outlined destroy of NowPlaying.TrackMetadata(v117, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined destroy of TaskPriority?(v187, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  outlined destroy of TaskPriority?(v191, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  outlined destroy of NowPlaying.TrackMetadata(v115, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v45 = v197;
  v63 = v195;
  outlined destroy of TaskPriority?(v112, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v65 = v176;
  v64 = v194;
  if ((v118 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_46:
  v119 = *&v45[v193];
  if (v119)
  {
    v120 = *(*v119 + 184);

    v122 = v184;
    v120(v121);

    v123 = v196;
    outlined init with copy of TaskPriority?(v122 + *(v196 + 28), v182, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    outlined destroy of NowPlaying.TrackMetadata(v122, type metadata accessor for NowPlaying.TrackMetadata);
    v124 = v177;
  }

  else
  {
    (*(v189 + 56))(v182, 1, 1, v63);
    v124 = v177;
    v123 = v196;
  }

  v126 = *&v45[v193];
  if (v126)
  {
    v127 = *(*v126 + 208);

    v129 = v168;
    v127(v128);

    if ((v185)(v129, 1, v123) != 1)
    {
      v130 = v129 + *(v123 + 28);
      v131 = v129;
      v124 = v177;
      outlined init with copy of TaskPriority?(v130, v177, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
      outlined destroy of NowPlaying.TrackMetadata(v131, type metadata accessor for NowPlaying.TrackMetadata);
      goto LABEL_56;
    }

    outlined destroy of TaskPriority?(v129, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
    v124 = v177;
  }

  (*(v189 + 56))(v124, 1, 1, v63);
LABEL_56:
  v132 = v63;
  v133 = *(v186 + 48);
  v134 = v182;
  v135 = v175;
  outlined init with copy of TaskPriority?(v182, v175, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  outlined init with copy of TaskPriority?(v124, v135 + v133, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v136 = v198;
  if ((v198)(v135, 1, v132) == 1)
  {
    outlined destroy of TaskPriority?(v124, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    v137 = v175;
    outlined destroy of TaskPriority?(v134, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    v138 = (v136)(v137 + v133, 1, v132);
    v44 = v196;
    if (v138 == 1)
    {
      outlined destroy of TaskPriority?(v137, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
      v64 = v194;
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v139 = v167;
  outlined init with copy of TaskPriority?(v135, v167, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v140 = (v136)(v135 + v133, 1, v132);
  v44 = v196;
  if (v140 == 1)
  {
    outlined destroy of TaskPriority?(v177, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    v137 = v175;
    outlined destroy of TaskPriority?(v182, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    outlined destroy of NowPlaying.TrackMetadata(v139, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_61:
    outlined destroy of TaskPriority?(v137, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMR_0);
    v64 = v194;
LABEL_62:

    v65 = v176;

    goto LABEL_67;
  }

  v141 = v171;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v135 + v133, v171, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v142 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  outlined destroy of NowPlaying.TrackMetadata(v141, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined destroy of TaskPriority?(v177, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  outlined destroy of TaskPriority?(v182, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  outlined destroy of NowPlaying.TrackMetadata(v139, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v45 = v197;
  outlined destroy of TaskPriority?(v135, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v64 = v194;
  if ((v142 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  v143 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel;
  v144 = *&v45[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];
  v65 = v176;
  if (v176)
  {
    *&v45[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = v176;
    swift_retain_n();
    NowPlaying.TrackTitleStackView.subtitleLabel.didset(v144);

    v145 = *(*&v45[v143] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
    [v145 setAlpha:1.0];
  }

  else
  {
    v146 = &v45[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v147 = v165;
    outlined init with copy of TaskPriority?(&v146[*(v44 + 28)], v165, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    v148 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    v149 = v166;
    outlined init with copy of TaskPriority?(v144 + v148, v166, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    swift_beginAccess();

    outlined assign with copy of NowPlaying.TrackMetadata.StringKind?(v147, v144 + v148);
    swift_endAccess();
    NowPlaying.TrackTitleStackView.Label.text.didset(v149);

    v150 = v149;
    v64 = v194;
    outlined destroy of TaskPriority?(v150, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    v45 = v197;
    outlined destroy of TaskPriority?(v147, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  }

LABEL_67:

  removeLabelIfNeeded #1 (_:) in NowPlaying.TrackTitleStackView.transitionDidEnd(_:)(v151, v45, v152);

  v154 = removeLabelIfNeeded #1 (_:) in NowPlaying.TrackTitleStackView.transitionDidEnd(_:)(v64, v45, v153);
  if (v66)
  {

    removeLabelIfNeeded #1 (_:) in NowPlaying.TrackTitleStackView.transitionDidEnd(_:)(v155, v45, v156);

    v157 = v65;
  }

  else
  {
    v157 = 0;
  }

  removeLabelIfNeeded #1 (_:) in NowPlaying.TrackTitleStackView.transitionDidEnd(_:)(v157, v45, v154);

  [v45 setNeedsLayout];
  outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v66, v65);

  return outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v66, v65);
}

double removeLabelIfNeeded #1 (_:) in NowPlaying.TrackTitleStackView.transitionDidEnd(_:)(uint64_t a1, uint64_t a2, double result)
{
  if (!a1)
  {
    return result;
  }

  v4 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);

  v5 = v4;
  v6 = *&NowPlaying.TrackTitleStackView.titleLabel.getter()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MarqueeView, off_10059C7B0);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    v7 = v5;
    v8 = *&NowPlaying.TrackTitleStackView.subtitleLabel.getter()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

    v9 = static NSObject.== infix(_:_:)();

    if ((v9 & 1) == 0)
    {
      v11 = *(a2 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition);
      if (v11)
      {
        v12 = *(*v11 + 424);
        v13 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
        v14 = lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(&lazy protocol witness table cache variable for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

        v12(v27, a2, v13, v14);

        if (v27[0])
        {
          v16 = v27[1];
          v15 = v27[2];
          v17 = v27[3];
          type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
          if (static NSObject.== infix(_:_:)())
          {
            goto LABEL_14;
          }

          if (v16)
          {
            v18 = *(v16 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
            v26 = v17;
            v19 = v7;
            v25 = v15;
            v20 = v18;
            LOBYTE(v18) = static NSObject.== infix(_:_:)();

            v17 = v26;
            v15 = v25;
            if (v18)
            {
              goto LABEL_14;
            }
          }

          if (v15)
          {
            if (static NSObject.== infix(_:_:)())
            {
LABEL_14:

              outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v15, v17);
LABEL_21:

              return result;
            }

            if (v17)
            {
              v21 = *(v17 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
              v22 = v15;
              v23 = v7;
              v24 = v21;
              LOBYTE(v21) = static NSObject.== infix(_:_:)();

              v10 = outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v22, v17);
              if (v21)
              {
                goto LABEL_21;
              }
            }

            else
            {

              v10 = outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v15, 0);
            }
          }

          else
          {
          }
        }
      }

      [v7 removeFromSuperview];
      goto LABEL_21;
    }
  }

  return result;
}

id NowPlaying.TrackTitleStackView.adopt(_:from:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v20 - v7;
  v9 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NowPlaying.TrackMetadata(a1, v11, type metadata accessor for NowPlaying.TrackMetadata);
  v12 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  outlined assign with take of NowPlaying.TrackMetadata(v11, v2 + v12);
  result = swift_endAccess();
  if (!a2)
  {
    v14 = v2;
    v15 = NowPlaying.TrackTitleStackView.titleLabel.getter();
    outlined init with copy of NowPlaying.TrackMetadata(a1 + *(v9 + 24), v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
    v17 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(&v15[v17], v6, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    swift_beginAccess();
    outlined assign with copy of NowPlaying.TrackMetadata.StringKind?(v8, &v15[v17]);
    swift_endAccess();
    NowPlaying.TrackTitleStackView.Label.text.didset(v6);

    outlined destroy of TaskPriority?(v6, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    outlined destroy of TaskPriority?(v8, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    v18 = NowPlaying.TrackTitleStackView.subtitleLabel.getter();
    outlined init with copy of TaskPriority?(a1 + *(v9 + 28), v8, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    v19 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    outlined init with copy of TaskPriority?(&v18[v19], v6, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    swift_beginAccess();
    outlined assign with copy of NowPlaying.TrackMetadata.StringKind?(v8, &v18[v19]);
    swift_endAccess();
    NowPlaying.TrackTitleStackView.Label.text.didset(v6);

    outlined destroy of TaskPriority?(v6, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    outlined destroy of TaskPriority?(v8, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    return [v14 setNeedsLayout];
  }

  return result;
}

double NowPlaying.TrackTitleStackView.updateMarquee(for:marqueeAttributes:)(uint64_t a1, unsigned __int8 *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  *&result = __chkstk_darwin().n128_u64[0];
  v7 = &v20 - v6;
  if (a1)
  {
    v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
    v9 = *(v2 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition);
    if (v9)
    {
      v10 = v2;
      v11 = *(*v9 + 256);

      v13 = v11(v12);

      if (v13 == 2)
      {
        v14 = *(v10 + v8);
        if (v14)
        {
          v15 = *(*v14 + 208);

          v15(v16);

          v17 = type metadata accessor for NowPlaying.TrackMetadata(0);
          if ((*(*(v17 - 8) + 48))(v7, 1, v17) != 1)
          {
            outlined destroy of TaskPriority?(v7, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
            v18 = 0;
LABEL_11:
            [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setMarqueeEnabled:v18 withOptions:1];

            return result;
          }
        }

        else
        {
          v19 = type metadata accessor for NowPlaying.TrackMetadata(0);
          (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
        }

        outlined destroy of TaskPriority?(v7, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
      }
    }

    else
    {
    }

    v18 = *a2;
    goto LABEL_11;
  }

  return result;
}

void NowPlaying.TrackTitleStackView.applyFadingEffectIfNeeded()()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition])
  {
    v2 = objc_opt_self();
    v3 = [v2 disableActions];
    v4 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
    [v2 setDisableActions:1];
    v5 = OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer;
    v6 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
    if (v6)
    {
      v7 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
LABEL_28:
      v44 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
      swift_beginAccess();
      v45 = v44[6];
      v46 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
      swift_beginAccess();
      if (v46[6] >= v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = v46[6];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1004F3040;
      type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0, NSNumber_ptr);
      v49 = v6;
      *(v48 + 32) = NSNumber.init(floatLiteral:)(0.0);
      [v1 bounds];
      *(v48 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:v47 / CGRectGetWidth(v58)];
      [v1 bounds];
      *(v48 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v47 / CGRectGetWidth(v59)];
      *(v48 + 56) = NSNumber.init(floatLiteral:)(1.0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v7 setLocations:isa];

      [v7 setStartPoint:{0.0, 0.5}];
      v51 = v7;
      [v51 setEndPoint:{1.0, 0.5}];
      [v1 bounds];
      [v51 setBounds:?];

      [v1 bounds];
      MidX = CGRectGetMidX(v60);
      [v1 bounds];
      [v51 setPosition:{MidX, CGRectGetMidY(v61)}];

      [v2 v4[235]];
      return;
    }

    v53 = v3;
    v56 = v2;
    v15 = [objc_allocWithZone(CAGradientLayer) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_0, &_ss23_ContiguousArrayStorageCyypGMR_0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1004F2EE0;
    v17 = objc_opt_self();
    v18 = v15;
    v19 = [v17 blackColor];
    v20 = [v19 CGColor];

    _sSo10CGColorRefaMa_0(0);
    v22 = v21;
    *(v16 + 56) = v21;
    *(v16 + 32) = v20;
    v23 = [v17 clearColor];
    v24 = [v23 CGColor];

    *(v16 + 88) = v22;
    *(v16 + 64) = v24;
    v25 = [v17 clearColor];
    v26 = [v25 CGColor];

    *(v16 + 120) = v22;
    *(v16 + 96) = v26;
    v27 = [v17 blackColor];
    v28 = [v27 CGColor];

    *(v16 + 152) = v22;
    *(v16 + 128) = v28;
    v29 = Array._bridgeToObjectiveC()().super.isa;

    [v18 setColors:v29];

    [v18 setCompositingFilter:kCAFilterDestOut];
    v30 = *&v1[v5];
    if (v30)
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CAGradientLayer, CAGradientLayer_ptr);
      v31 = v18;
      v32 = v30;
      v33 = v31;
      v34 = v32;
      v35 = static NSObject.== infix(_:_:)();

      v36 = *&v1[v5];
      if ((v35 & 1) == 0)
      {
        v4 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
        v6 = 0;
        if (v36)
        {
          [*&v1[v5] removeFromSuperlayer];
          v36 = *&v1[v5];
        }

LABEL_16:
        *&v1[v5] = v18;
        v7 = v18;

        v38 = *&v1[v5];
        if (v38)
        {
          if (v30)
          {
            type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CAGradientLayer, CAGradientLayer_ptr);
            v39 = v30;
            v40 = v38;
            v41 = static NSObject.== infix(_:_:)();

            if (v41)
            {

LABEL_21:
              v2 = v56;
              v3 = v53;
              goto LABEL_28;
            }
          }

          else
          {
            v42 = v38;
            v39 = 0;
          }

          v2 = v56;
          v3 = v53;
          v43 = [v1 layer];
          [v43 addSublayer:v38];

          goto LABEL_28;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v37 = v18;
      v36 = 0;
    }

    v4 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
    v6 = 0;
    goto LABEL_16;
  }

  v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer;
  v9 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
  if (v9)
  {
    v55 = v9;
    [v55 removeFromSuperlayer];
    v10 = *&v1[v8];
    *&v1[v8] = 0;

    v11 = *&v1[v8];
    if (v11)
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CAGradientLayer, CAGradientLayer_ptr);
      v12 = v55;
      v55 = v11;
      v13 = static NSObject.== infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        v54 = [v1 layer];
        [v54 addSublayer:v55];

        v14 = v54;
        goto LABEL_23;
      }
    }

    v14 = v55;
  }

  else
  {
    v14 = 0;
  }

LABEL_23:
}

id @objc NowPlaying.TrackTitleStackView.accessibilityTitleLabelText.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t NowPlaying.TrackTitleStackView.accessibilityTitleLabelText.getter(uint64_t (*a1)(__n128))
{
  type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin();
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v6 = __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = a1(v6);
  v10 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v9 + v10, v8, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v11 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {

    return 0;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    AttributedString.characters.getter();
    lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
    v13 = String.init<A>(_:)();

    (*(v3 + 8))(v5, v2);
    return v13;
  }

  else
  {

    return *v8;
  }
}

id NowPlaying.TrackTitleStackView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *protocol witness for Gliss.CoordinatedView.transitionContext(to:direction:) in conformance NowPlaying.TrackTitleStackView@<X0>(char **a1@<X8>, uint64_t a2@<X0>)
{
  result = specialized NowPlaying.TrackTitleStackView.transitionContext(to:direction:)(a2);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double NowPlaying.TrackTitleStackView.Label.Attributes.marquee.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  *a1 = *(v1 + 24);
  v3 = *(v1 + 48);
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 40) = result;
  return result;
}

void *NowPlaying.TrackTitleStackView.Label.Attributes.action.getter()
{
  v1 = *(v0 + 72);
  outlined copy of NowPlaying.TrackTitleStackView.Label.Attributes.Action?(v1, *(v0 + 80), *(v0 + 88));
  return v1;
}

void NowPlaying.TrackTitleStackView.Label.Attributes.action.setter(void *a1, void *a2, void *a3)
{
  outlined consume of NowPlaying.TrackTitleStackView.Label.Attributes.Action?(v3[9], v3[10], v3[11]);
  v3[9] = a1;
  v3[10] = a2;
  v3[11] = a3;
}

void NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.fadeInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

BOOL static NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.__derived_struct_equals(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v2 = a1[3] == a2[3] && a1[4] == a2[4];
    if (v2 && a1[5] == a2[5])
    {
      return 1;
    }
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NowPlaying.TrackTitleStackView.Label.Attributes.Marquee(float64x2_t *a1, float64x2_t *a2)
{
  if (LOBYTE(a1->f64[0]) == LOBYTE(a2->f64[0]) && a1->f64[1] == a2->f64[1])
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[1], a2[1]), vceqq_f64(a1[2], a2[2])))) & 1;
  }

  else
  {
    return 0;
  }
}

double NowPlaying.TrackTitleStackView.Label.Attributes.update(_:)(void (*a1)(__int128 *))
{
  v2 = v1[3];
  v11 = v1[2];
  v12 = v2;
  v3 = v1[5];
  v13 = v1[4];
  v14 = v3;
  v4 = v1[1];
  v9 = *v1;
  v10 = v4;
  a1(&v9);
  v5 = v12;
  v1[2] = v11;
  v1[3] = v5;
  v6 = v14;
  v1[4] = v13;
  v1[5] = v6;
  result = *&v9;
  v8 = v10;
  *v1 = v9;
  v1[1] = v8;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NowPlaying.TrackTitleStackView.Label.Attributes(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return specialized static NowPlaying.TrackTitleStackView.Label.Attributes.__derived_struct_equals(_:_:)(v9, v10) & 1;
}

void NowPlaying.TrackTitleStackView.Label.attributes.didset(uint64_t *a1)
{
  v2 = v1;
  v4 = *(a1 + 3);
  v54[2] = *(a1 + 2);
  v54[3] = v4;
  v5 = *(a1 + 5);
  v54[4] = *(a1 + 4);
  v54[5] = v5;
  v6 = *(a1 + 1);
  v54[0] = *a1;
  v54[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  __chkstk_darwin();
  v8 = &v50 - v7;
  v9 = *(v1 + 64);
  v57 = *(v1 + 48);
  v58 = v9;
  v10 = *(v1 + 96);
  v59 = *(v1 + 80);
  v60 = v10;
  v11 = *(v1 + 32);
  v55 = *(v1 + 16);
  v56 = v11;
  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v55, v53);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || v56 != (a1[2] & 1) || BYTE8(v56) != (a1[3] & 1) || *&v57 != *(a1 + 4) || *(&v57 + 1) != *(a1 + 5) || *&v58 != *(a1 + 6) || *(&v58 + 1) != *(a1 + 7) || *&v59 != *(a1 + 8))
  {
    goto LABEL_14;
  }

  v12 = *(&v59 + 1);
  v14 = a1[9];
  v13 = a1[10];
  v15 = a1[11];
  if (*(&v59 + 1) == 1)
  {
    outlined copy of NowPlaying.TrackTitleStackView.Label.Attributes.Action?(a1[9], a1[10], a1[11]);
    outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v55);
    if (v14 == 1)
    {
      return;
    }

    outlined consume of NowPlaying.TrackTitleStackView.Label.Attributes.Action?(v14, v13, v15);
    goto LABEL_15;
  }

  if (v14 == 1)
  {
LABEL_14:
    outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v55);
    goto LABEL_15;
  }

  v48 = *(&v60 + 1);
  v51 = v60;
  outlined copy of NowPlaying.TrackTitleStackView.Label.Attributes.Action?(v14, v13, v15);
  v49 = specialized static NowPlaying.TrackTitleStackView.Label.Attributes.Action.__derived_struct_equals(_:_:)(v12, v51, v48, v14, v13, v15);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v55);

  if (v49)
  {
    return;
  }

LABEL_15:
  if ((a1[9] == 1) == (*(v1 + 88) == 1))
  {
    goto LABEL_35;
  }

  v16 = *(v1 + 64);
  v53[2] = *(v1 + 48);
  v53[3] = v16;
  v17 = *(v1 + 96);
  v53[4] = *(v1 + 80);
  v53[5] = v17;
  v18 = *(v1 + 32);
  v53[0] = *(v1 + 16);
  v53[1] = v18;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v53, &v52);
  v19 = specialized NowPlaying.TrackTitleStackView.Label.ContentViewKind.init(_:)(v53);
  v20 = v19;
  v22 = v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind;
  v23 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  v24 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind + 8);
  *v22 = v19;
  *(v22 + 8) = v21 & 1;
  if (v21)
  {
    if ((v24 & 1) == 0)
    {
LABEL_18:
      v25 = v19;
      goto LABEL_22;
    }
  }

  else if (v24)
  {
    goto LABEL_18;
  }

  v26 = v19;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
LABEL_22:
    [v23 removeFromSuperview];
    v27 = *v22;
    v28 = [v27 superview];
    v29 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
    v30 = [v29 contentView];
    v31 = v30;
    if (v28)
    {
      if (v30)
      {
        type metadata accessor for UIAction(0, &_sSo6UIViewCML_0, UIView_ptr);
        v32 = static NSObject.== infix(_:_:)();

        if (v32)
        {
          goto LABEL_33;
        }

LABEL_30:
        v33 = [v29 contentView];
        if (v33)
        {
          v34 = v33;
          [v33 addSubview:v27];

          v35 = [v29 contentView];
          if (v35)
          {
            v36 = v35;
            [v35 bounds];
            v38 = v37;
            v40 = v39;
            v42 = v41;
            v44 = v43;

            [v27 setFrame:{v38, v40, v42, v44}];
            [v27 setAutoresizingMask:18];
            [v29 setViewForContentSize:v27];
LABEL_33:

            NowPlaying.TrackTitleStackView.Label.applyText()();
            goto LABEL_34;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v31 = v28;
    }

    else if (!v30)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v20 = v23;
  v23 = v26;
LABEL_34:

LABEL_35:
  NowPlaying.TrackTitleStackView.Label.applyAttributes(previousAttributes:)(v54);
  v45 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v2 + v45, v8, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v46 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  if ((*(*(v46 - 8) + 48))(v8, 1, v46) == 1)
  {
    outlined destroy of TaskPriority?(v8, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of NowPlaying.TrackMetadata(v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    if (EnumCaseMultiPayload == 1)
    {
      NowPlaying.TrackTitleStackView.Label.applyText()();
    }
  }
}

uint64_t NowPlaying.TrackTitleStackView.Label.applyAttributes(previousAttributes:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit40UIConfigurationTextAttributesTransformerVSgMd, &_s5UIKit40UIConfigurationTextAttributesTransformerVSgMR);
  __chkstk_darwin();
  v5 = &v59 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  __chkstk_darwin();
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v59 - v8;
  v10 = type metadata accessor for UIButton.Configuration();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[4];
  v68 = v1[3];
  v69 = v14;
  v15 = v1[6];
  v70 = v1[5];
  v71 = v15;
  v16 = v1[2];
  v66 = v1[1];
  v67 = v16;
  v17 = v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind;
  v18 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  if ((v17[8] & 1) == 0)
  {
    v20 = v66;
    outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v66, v65);
    v21 = v18;
    [v21 setFont:v20];
    [v21 setTextColor:*(&v66 + 1)];

    v22 = *a1;
    if (!*a1)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v62 = *a1;
  v64 = v18;
  v63 = v7;
  if (!v62)
  {
    outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v66, v65);
    goto LABEL_8;
  }

  v19 = *(a1 + 72);
  if (v19 <= 1)
  {
    outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v66, v65);
    v18 = v64;
LABEL_8:
    v23 = v18;
    goto LABEL_9;
  }

  v72 = *(v2 + 88);
  v73 = *(v2 + 13);
  v28 = v72;
  if (v72 == 1)
  {
    outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v66, v65);
    v29 = v64;
    v30 = v64;
    v31 = v19;
  }

  else
  {
    v53 = v73;
    v74 = *(&v72 + 1);
    outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v66, v65);
    v29 = v64;
    v54 = v64;
    v61 = v19;
    outlined init with copy of TaskPriority?(&v72, v65, &_s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionVSgMd, &_s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionVSgMR);
    outlined destroy of TaskPriority?(&v74, &_sSo6UIMenuCSgMd_0, &_sSo6UIMenuCSgMR_0);
    v75 = v53;
    outlined destroy of TaskPriority?(&v75, &_sSo7UIColorCSgMd, &_sSo7UIColorCSgMR);
    if (v28)
    {
      type metadata accessor for UIAction(0, &_sSo8UIActionCML_0, UIAction_ptr);
      v55 = v61;
      v60 = v28;
      v56 = v55;
      v57 = static NSObject.== infix(_:_:)();
      v61 = v56;

      if (v57)
      {

        goto LABEL_9;
      }
    }
  }

  [v29 removeAction:v19 forControlEvents:0x2000];

LABEL_9:
  UIButton.configuration.getter();
  v24 = *(v11 + 48);
  if (v24(v9, 1, v10) == 1)
  {
    static UIButton.Configuration.plain()();
    if (v24(v9, 1, v10) != 1)
    {
      outlined destroy of TaskPriority?(v9, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  v25 = *(&v66 + 1);
  UIButton.Configuration.baseForegroundColor.setter();
  v26 = *(&v70 + 1);
  v27 = v71;
  if (*(&v70 + 1) != 1 && *(&v71 + 1))
  {
    if (*(&v70 + 1))
    {
      outlined copy of NowPlaying.TrackTitleStackView.Label.Attributes.Action?(*(&v70 + 1), v71, *(&v71 + 1));

LABEL_21:
      goto LABEL_22;
    }

    if (v71)
    {
      outlined copy of NowPlaying.TrackTitleStackView.Label.Attributes.Action?(0, v71, *(&v71 + 1));

      goto LABEL_21;
    }

    v58 = *(&v71 + 1);
    UIButton.Configuration.baseForegroundColor.setter();
  }

LABEL_22:
  v32 = swift_allocObject();
  v33 = v69;
  v32[3] = v68;
  v32[4] = v33;
  v34 = v71;
  v32[5] = v70;
  v32[6] = v34;
  v35 = v67;
  v32[1] = v66;
  v32[2] = v35;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v66, v65);
  UIConfigurationTextAttributesTransformer.init(_:)();
  v36 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v36 - 8) + 56))(v5, 0, 1, v36);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  if (v26 == 1)
  {
    goto LABEL_27;
  }

  if (!v26)
  {
    v51 = *(&v27 + 1);
    v52 = v27;
    if (!v27)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v37 = *(&v27 + 1);
  v38 = v26;
  v39 = v27;
  [v64 addAction:v38 forControlEvents:0x2000];
  if (v27)
  {
LABEL_25:
    v40 = v27;
    v41 = v64;
    [v41 setShowsMenuAsPrimaryAction:v26 == 0];
    [v41 setMenu:v40];
    [v41 setShowsMenuFromSource:0];
  }

LABEL_26:

LABEL_27:
  v42 = v63;
  (*(v11 + 16))(v63, v13, v10);
  (*(v11 + 56))(v42, 0, 1, v10);
  v43 = v64;
  UIButton.configuration.setter();

  (*(v11 + 8))(v13, v10);
  v22 = v62;
  if (!v62)
  {
LABEL_29:
    NowPlaying.TrackTitleStackView.Label.updateOutsets()();
    goto LABEL_30;
  }

LABEL_28:
  v44 = *(v2 + 2);
  type metadata accessor for UIAction(0, &_sSo6UIFontCML_0, UIFont_ptr);
  v45 = v44;
  v46 = v22;
  v47 = static NSObject.== infix(_:_:)();

  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  v48 = *(v2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v49 = BYTE8(v67);
  [v48 setContentGap:*&v68];
  [v48 setMarqueeEnabled:v49 & 1];
  [v48 effectiveUserInterfaceLayoutDirection];
  UIEdgeInsets.init(directionalEdgeInsets:layoutDirection:)();
  [v48 setFadeEdgeInsets:?];
  [v48 setHidden:v67];
  [v48 invalidateIntrinsicContentSize];
  return outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v66);
}

uint64_t closure #1 in NowPlaying.TrackTitleStackView.Label.applyAttributes(previousAttributes:)@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *a2;
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
  v8 = v7;
  AttributeContainer.subscript.setter();
  UIAccessibilityButtonShapesEnabled();
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute();
  return AttributeContainer.subscript.setter();
}

uint64_t NowPlaying.TrackTitleStackView.Label.text.didset(uint64_t a1)
{
  v16 = a1;
  v2 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMR_0) - 8;
  __chkstk_darwin();
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  v12 = *(v8 + 56);
  outlined init with copy of TaskPriority?(v1 + v11, v10, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  outlined init with copy of TaskPriority?(v16, &v10[v12], &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v13 = *(v3 + 48);
  if (v13(v10, 1, v2) == 1)
  {
    if (v13(&v10[v12], 1, v2) == 1)
    {
      return outlined destroy of TaskPriority?(v10, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    }

    goto LABEL_6;
  }

  outlined init with copy of TaskPriority?(v10, v7, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  if (v13(&v10[v12], 1, v2) == 1)
  {
    outlined destroy of NowPlaying.TrackMetadata(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_6:
    outlined destroy of TaskPriority?(v10, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMR_0);
LABEL_7:
    NowPlaying.TrackTitleStackView.Label.applyText()();
    return NowPlaying.TrackTitleStackView.Label.updateOutsets()();
  }

  outlined init with take of NowPlaying.TrackMetadata.StringKind(&v10[v12], v5, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v15 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  outlined destroy of NowPlaying.TrackMetadata(v5, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined destroy of NowPlaying.TrackMetadata(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = outlined destroy of TaskPriority?(v10, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void outlined consume of NowPlaying.TrackTitleStackView.Label.Attributes.Action?(void *a1, void *a2, void *a3)
{
  if (a1 != 1)
  {
  }
}

id NowPlaying.TrackTitleStackView.Label.applyText()()
{
  v1 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v69 = *(v1 - 8);
  __chkstk_darwin();
  v66 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd_0, &_s10Foundation16AttributedStringVSgMR_0);
  __chkstk_darwin();
  v62 = &v58 - v3;
  v4 = type metadata accessor for AttributedString();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin();
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v58 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  __chkstk_darwin();
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v58 - v9;
  __chkstk_darwin();
  v60 = &v58 - v10;
  v11 = type metadata accessor for UIButton.Configuration();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin();
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v58 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AC0aB2UIE0E14TitleStackViewC5LabelC07ContentlH033_8F7564099BF3006270956A38774C94CALLOtMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AC0aB2UIE0E14TitleStackViewC5LabelC07ContentlH033_8F7564099BF3006270956A38774C94CALLOtMR);
  __chkstk_darwin();
  v16 = (&v58 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  __chkstk_darwin();
  v71 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v58 - v18;
  v20 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  v70 = v20;
  outlined init with copy of TaskPriority?(v0 + v20, v19, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v72 = v0;
  v21 = *(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  v22 = *(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind + 8);
  v23 = v19;
  v24 = v1;
  v25 = v69;
  outlined init with take of URL?(v23, v16, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v26 = *(v25 + 48);
  if (v26(v16, 1, v1) == 1)
  {
    v27 = v21;
    v28 = v27;
    if (v22)
    {
      UIButton.configuration.getter();
      v30 = v64;
      v29 = v65;
      v31 = *(v64 + 48);
      if (v31(v8, 1, v65) == 1)
      {
        static UIButton.Configuration.plain()();
        if (v31(v8, 1, v29) != 1)
        {
          outlined destroy of TaskPriority?(v8, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
        }
      }

      else
      {
        (*(v30 + 32))(v13, v8, v29);
      }

      UIButton.Configuration.title.setter();
      (*(v67 + 56))(v62, 1, 1, v68);
      UIButton.Configuration.attributedTitle.setter();
      v45 = v63;
      (*(v30 + 16))(v63, v13, v29);
      (*(v30 + 56))(v45, 0, 1, v29);
      UIButton.configuration.setter();

      (*(v30 + 8))(v13, v29);
    }

    else
    {
      [v27 setText:0];
      [v28 setAttributedText:0];
    }
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v67;
    v33 = v68;
    v34 = v61;
    (*(v67 + 32))(v61, v16, v68);
    if (v22)
    {
      __chkstk_darwin();
      *(&v58 - 2) = v34;
      v35 = v21;
      UIButton.reconfigure(with:)(partial apply for closure #2 in NowPlaying.TrackTitleStackView.Label.applyText());

      (*(v32 + 8))(v34, v33);
    }

    else
    {
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
      (*(v32 + 16))(v59, v34, v33);
      v46 = v34;
      v47 = v21;
      v48 = NSAttributedString.init(_:)();
      [v47 setAttributedText:v48];

      (*(v32 + 8))(v46, v33);
    }
  }

  else
  {
    v69 = v1;
    v36 = *v16;
    v37 = v21;
    if (v22)
    {
      v38 = v60;
      UIButton.configuration.getter();
      v40 = v64;
      v39 = v65;
      v41 = *(v64 + 48);
      if (v41(v38, 1, v65) == 1)
      {
        v68 = v36;
        v42 = v58;
        static UIButton.Configuration.plain()();
        v43 = v41(v38, 1, v39);
        v44 = v42;
        if (v43 != 1)
        {
          outlined destroy of TaskPriority?(v60, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
        }
      }

      else
      {
        v44 = v58;
        (*(v40 + 32))(v58, v38, v39);
      }

      UIButton.Configuration.title.setter();
      v50 = v63;
      (*(v40 + 16))(v63, v44, v39);
      (*(v40 + 56))(v50, 0, 1, v39);
      UIButton.configuration.setter();

      (*(v40 + 8))(v44, v39);
    }

    else
    {
      v49 = String._bridgeToObjectiveC()();

      [v37 setText:v49];
    }

    v24 = v69;
  }

  v51 = v71;
  v52 = *(v72 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  outlined init with copy of TaskPriority?(v72 + v70, v71, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  if (v26(v51, 1, v24))
  {
    outlined destroy of TaskPriority?(v51, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
LABEL_25:
    v56 = 0;
    goto LABEL_26;
  }

  v53 = v66;
  outlined init with copy of NowPlaying.TrackMetadata(v51, v66, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined destroy of TaskPriority?(v51, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  NowPlaying.TrackMetadata.StringKind.stringValue.getter();
  v54 = String._bridgeToObjectiveC()();

  v55 = [v54 _isNaturallyRTL];

  outlined destroy of NowPlaying.TrackMetadata(v53, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if ((v55 & 1) == 0)
  {
    goto LABEL_25;
  }

  v56 = 1;
LABEL_26:
  [v52 setAnimationDirection:v56];
  return [v52 invalidateIntrinsicContentSize];
}

uint64_t closure #2 in NowPlaying.TrackTitleStackView.Label.applyText()(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd_0, &_s10Foundation16AttributedStringVSgMR_0);
  __chkstk_darwin();
  v4 = &v8 - v3;
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a2, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  return UIButton.Configuration.attributedTitle.setter();
}

uint64_t NowPlaying.TrackTitleStackView.Label.updateOutsets()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  __chkstk_darwin();
  v3 = &v15 - v2;
  v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = left;
  v18 = UIEdgeInsetsZero.top;
  v15 = right;
  v16 = bottom;
  v12 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v12, v3, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = outlined destroy of TaskPriority?(v3, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  }

  else
  {
    outlined init with take of NowPlaying.TrackMetadata.StringKind(v3, v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    if (NowPlaying.TrackMetadata.StringKind.containsExcessiveHeightCharacters.getter())
    {
      CTFontGetLanguageAwareOutsets();
      result = outlined destroy of NowPlaying.TrackMetadata(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      left = v17;
      top = v18;
      right = v15;
      bottom = v16;
    }

    else
    {
      result = outlined destroy of NowPlaying.TrackMetadata(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    }
  }

  v14 = (v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets);
  *v14 = top;
  v14[1] = left;
  v14[2] = bottom;
  v14[3] = right;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.containsExcessiveHeightCharacters.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMR);
  __chkstk_darwin();
  v2 = &v19 - v1;
  v3 = type metadata accessor for AttributedString.CharacterView();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of NowPlaying.TrackMetadata(v0, v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v12, v7);
    AttributedString.characters.getter();
    specialized Collection.subscript.getter(v2);
    (*(v4 + 8))(v6, v3);
    v13 = String.init(_:)();
    v15 = v14;
    (*(v8 + 8))(v10, v7);
    v16 = v13;
  }

  else
  {
    v16 = *v12;
    v15 = v12[1];
  }

  v17 = String.containsExcessiveHeightCharacters.getter(v16, v15);

  return v17 & 1;
}

uint64_t NowPlaying.TrackTitleStackView.Label.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  outlined consume of NowPlaying.TrackTitleStackView.Label.Attributes.Action?(v2, v3, v4);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);

  return v0;
}

uint64_t NowPlaying.TrackTitleStackView.Label.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  outlined consume of NowPlaying.TrackTitleStackView.Label.Attributes.Action?(v2, v3, v4);
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);

  return swift_deallocClassInstance();
}

__n128 Gliss.Transition<>.Output.transform3D.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v2;
  v3 = *(v1 + 136);
  *(a1 + 96) = *(v1 + 120);
  *(a1 + 112) = v3;
  v4 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v4;
  result = *(v1 + 56);
  v6 = *(v1 + 72);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 Gliss.Transition<>.Output.transform3D.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = v2;
  v3 = *(a1 + 112);
  *(v1 + 120) = *(a1 + 96);
  *(v1 + 136) = v3;
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 56) = result;
  *(v1 + 72) = v6;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.stringValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMR);
  __chkstk_darwin();
  v2 = &v15 - v1;
  v3 = type metadata accessor for AttributedString.CharacterView();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NowPlaying.TrackMetadata(v0, v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v12;
  }

  (*(v8 + 32))(v10, v12, v7);
  AttributedString.characters.getter();
  specialized Collection.subscript.getter(v2);
  (*(v4 + 8))(v6, v3);
  v13 = String.init(_:)();
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t specialized Collection.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v22[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMR);
  __chkstk_darwin();
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = type metadata accessor for AttributedString.Index();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  __chkstk_darwin();
  v24 = v22 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16PartialRangeFromVy10Foundation16AttributedStringV5IndexVGMd, &_ss16PartialRangeFromVy10Foundation16AttributedStringV5IndexVGMR);
  __chkstk_darwin();
  v13 = v22 - v12;
  v14 = type metadata accessor for AttributedString.CharacterView();
  v15 = lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  v25 = v14;
  v16 = v15;
  dispatch thunk of Collection.startIndex.getter();
  lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(&lazy protocol witness table cache variable for type AttributedString.Index and conformance AttributedString.Index, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v22[0] = v1;
      v22[1] = v16;
      v18 = *(v8 + 32);
      v18(v6, v13, v7);
      v18(&v6[*(v2 + 48)], v10, v7);
      outlined init with copy of TaskPriority?(v6, v4, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMR);
      v19 = *(v2 + 48);
      v20 = v24;
      v18(v24, v4, v7);
      v21 = *(v8 + 8);
      v21(&v4[v19], v7);
      outlined init with take of URL?(v6, v4, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMd, &_s10Foundation16AttributedStringV5IndexV5lower_AE5uppertMR);
      v18((v20 + *(v23 + 36)), &v4[*(v2 + 48)], v7);
      v21(v4, v7);
      dispatch thunk of Collection.subscript.getter();
      return outlined destroy of TaskPriority?(v20, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined copy of NowPlaying.TrackTitleStackView.TransitionContext.Content?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t specialized static NowPlaying.TrackTitleStackView.Label.Attributes.Action.__derived_struct_equals(_:_:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v11 = a1;
    type metadata accessor for UIAction(0, &_sSo8UIActionCML_0, UIAction_ptr);
    v12 = a4;
    v13 = v11;
    LOBYTE(v11) = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    type metadata accessor for UIAction(0, &_sSo6UIMenuCML_0, UIMenu_ptr);
    v14 = a5;
    v15 = a2;
    v16 = static NSObject.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3)
  {
    if (a6)
    {
      type metadata accessor for UIAction(0, &_sSo7UIColorCML_0, UIColor_ptr);
      v17 = a6;
      v18 = a3;
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        return 1;
      }
    }
  }

  else if (!a6)
  {
    return 1;
  }

  return 0;
}

uint64_t specialized static NowPlaying.TrackTitleStackView.Label.Attributes.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIAction(0, &_sSo8NSObjectCML_0, NSObject_ptr);
  if (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)))
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))))) & 1) != 0 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && *(a1 + 64) == *(a2 + 64))
  {
    v5 = *(a1 + 72);
    v6 = *(a2 + 72);
    if (v5 == 1)
    {
      if (v6 == 1)
      {
        return 1;
      }
    }

    else if (v6 != 1)
    {
      v8 = *(a1 + 80);
      v7 = *(a1 + 88);
      v10 = *(a2 + 80);
      v9 = *(a2 + 88);
      v11 = v9;
      v12 = v6;
      v13 = v10;
      LOBYTE(v9) = specialized static NowPlaying.TrackTitleStackView.Label.Attributes.Action.__derived_struct_equals(_:_:)(v5, v8, v7, v6, v10, v9);

      if (v9)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

id specialized NowPlaying.TrackTitleStackView.Label.ContentViewKind.init(_:)(uint64_t a1)
{
  type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin();
  v2 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v21 - v10;
  v22 = *(a1 + 72);
  if (v22 == 1)
  {
    v17 = [objc_allocWithZone(UILabel) init];
    v18 = objc_opt_self();
    v14 = v17;
    v19 = [v18 clearColor];
    [v14 setBackgroundColor:v19];

    [v14 setNumberOfLines:1];
    [v14 setAdjustsFontForContentSizeCategory:1];
    [v14 _setWantsContentAwareTypesettingLanguage:1];
    outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(a1);
  }

  else
  {
    static UIButton.Configuration.plain()();
    UIButton.Configuration.contentInsets.setter();
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v2);
    UIButton.Configuration.titleAlignment.setter();
    static UIBackgroundConfiguration.clear()();
    UIButton.Configuration.background.setter();
    v12 = [objc_opt_self() clearColor];
    v13 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v13(v23, 0);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIButton, UIButton_ptr);
    (*(v7 + 16))(v9, v11, v6);
    v14 = UIButton.init(configuration:primaryAction:)();
    [v14 setContentHorizontalAlignment:4];
    v15 = [v14 titleLabel];
    if (v15)
    {
      v16 = v15;
      [v15 _setWantsContentAwareTypesettingLanguage:1];
    }

    outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(a1);
    (*(v7 + 8))(v11, v6);
  }

  return v14;
}

char *specialized NowPlaying.TrackTitleStackView.Label.init(text:attributes:hostingView:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  v9 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  v10 = &v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = a2[1];
  *(v4 + 1) = *a2;
  *(v4 + 2) = v12;
  v13 = a2[5];
  *(v4 + 5) = a2[4];
  *(v4 + 6) = v13;
  v14 = a2[3];
  *(v4 + 3) = a2[2];
  *(v4 + 4) = v14;
  v15 = objc_allocWithZone(MarqueeView);
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(a2, v39);
  v16 = [v15 init];
  *&v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] = v16;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(a2, v39);
  v17 = specialized NowPlaying.TrackTitleStackView.Label.ContentViewKind.init(_:)(a2);
  v18 = &v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind];
  *v18 = v17;
  v18[8] = v19 & 1;
  v20 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  outlined assign with copy of NowPlaying.TrackMetadata.StringKind?(a1, &v4[v20]);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
  [*&v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] setAnimationReferenceView:a3];
  memset(v39, 0, sizeof(v39));
  NowPlaying.TrackTitleStackView.Label.applyAttributes(previousAttributes:)(v39);
  NowPlaying.TrackTitleStackView.Label.applyText()();
  v22 = *v18;
  v23 = [v22 superview];
  v24 = *&v4[v21];
  v25 = [v24 contentView];
  v26 = v25;
  if (!v23)
  {
    if (!v25)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!v25)
  {
    v26 = v23;
LABEL_8:

    goto LABEL_9;
  }

  type metadata accessor for UIAction(0, &_sSo6UIViewCML_0, UIView_ptr);
  v27 = static NSObject.== infix(_:_:)();

  if (v27)
  {
    goto LABEL_12;
  }

LABEL_9:
  result = [v24 contentView];
  if (result)
  {
    v29 = result;
    [result addSubview:v22];

    result = [v24 contentView];
    if (result)
    {
      v30 = result;
      [result bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      [v22 setFrame:{v32, v34, v36, v38}];
      [v22 setAutoresizingMask:18];
      [v24 setViewForContentSize:v22];
LABEL_12:

      outlined destroy of TaskPriority?(a1, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized NowPlaying.TrackTitleStackView.init(coder:)()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  outlined init with copy of NowPlaying.TrackMetadata(v2, v0 + v1, type metadata accessor for NowPlaying.TrackMetadata);
  v3 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v22 = v6;
  *(&v22 + 1) = v8;
  LOBYTE(v23) = 0;
  BYTE8(v23) = 0;
  *&v24 = 0x4040000000000000;
  *(&v24 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v25 = leading;
  *(&v25 + 1) = bottom;
  *&v26 = trailing;
  v27 = 0uLL;
  *(&v26 + 1) = 1;
  v28[0] = v6;
  v28[1] = v8;
  v29 = 0;
  v30 = 0;
  v31 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v33 = leading;
  v34 = bottom;
  v35 = trailing;
  v37 = 0;
  v38 = 0;
  v36 = 1;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v22, v45);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v28);
  v12 = v25;
  v4[2] = v24;
  v4[3] = v12;
  v13 = v27;
  v4[4] = v26;
  v4[5] = v13;
  v14 = v23;
  *v4 = v22;
  v4[1] = v14;
  v15 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  v16 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v17 = [v7 secondaryLabelColor];
  *&v39 = v16;
  *(&v39 + 1) = v17;
  LOBYTE(v40) = 0;
  BYTE8(v40) = 0;
  *&v41 = 0x4040000000000000;
  *(&v41 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v42 = leading;
  *(&v42 + 1) = bottom;
  *&v43 = trailing;
  v44 = 0uLL;
  *(&v43 + 1) = 1;
  v45[0] = v16;
  v45[1] = v17;
  v46 = 0;
  v47 = 0;
  v48 = 0x4040000000000000;
  v49 = NSDirectionalEdgeInsetsZero.top;
  v50 = leading;
  v51 = bottom;
  v52 = trailing;
  v54 = 0;
  v55 = 0;
  v53 = 1;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v39, v21);
  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v45);
  v18 = v42;
  v15[2] = v41;
  v15[3] = v18;
  v19 = v44;
  v15[4] = v43;
  v15[5] = v19;
  v20 = v40;
  *v15 = v39;
  v15[1] = v20;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *specialized NowPlaying.TrackTitleStackView.TransitionContext.titleLabels.getter(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  if (a2)
  {
  }

  v6[5] = a2;

  for (i = 0; i != 2; ++i)
  {
    if (v6[i + 4])
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelCSgMd, &_s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelCSgMR);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

void *specialized NowPlaying.TrackTitleStackView.TransitionContext.subtitleLabels.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  if (a2)
  {
  }

  else
  {
    a3 = 0;
  }

  v7[5] = a3;

  for (i = 0; i != 2; ++i)
  {
    if (v7[i + 4])
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelCSgMd, &_s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelCSgMR);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

char *specialized NowPlaying.TrackTitleStackView.transitionContext(to:direction:)(uint64_t a1)
{
  v2 = v1;
  v102 = a1;
  v101 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v98 = *(v101 - 8);
  __chkstk_darwin();
  v89 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMR_0);
  __chkstk_darwin();
  v94 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v85 - v5;
  __chkstk_darwin();
  v86 = &v85 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  __chkstk_darwin();
  v88 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v85 - v8;
  __chkstk_darwin();
  v85 = &v85 - v9;
  __chkstk_darwin();
  v11 = &v85 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  __chkstk_darwin();
  v13 = &v85 - v12;
  v14 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v95 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = &v85 - v18;
  v20 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v21 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  v103 = &v85 - v18;
  if (v21)
  {
    v22 = *(*v21 + 208);

    v22(v23);
    v19 = v103;

    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      outlined init with take of NowPlaying.TrackMetadata.StringKind(v13, v19, type metadata accessor for NowPlaying.TrackMetadata);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14, v17);
  }

  v24 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  outlined init with copy of NowPlaying.TrackMetadata(&v2[v24], v19, type metadata accessor for NowPlaying.TrackMetadata);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    outlined destroy of TaskPriority?(v13, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR_0);
  }

LABEL_7:
  v25 = *&v2[v20];
  v26 = v102;
  v100 = v14;
  if (!v25 || (v27 = *(*v25 + 424), v28 = type metadata accessor for NowPlaying.TrackTitleStackView(0), v29 = lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(&lazy protocol witness table cache variable for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView), , v27(&v106, v2, v28, v29), v19 = v103, , !v106))
  {
    v30 = 0;
    v31 = 0;
    goto LABEL_13;
  }

  v31 = *(&v107 + 1);
  v30 = v107;
  outlined copy of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v107);

  outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v30, v31);
  if (!v30)
  {
LABEL_13:
    v33 = v30;
    v30 = NowPlaying.TrackTitleStackView.titleLabel.getter();
    goto LABEL_14;
  }

  v32 = static NowPlaying.TrackMetadata.== infix(_:_:)();

  if (v32)
  {

    goto LABEL_13;
  }

  v33 = v30;
LABEL_14:
  outlined init with copy of NowPlaying.TrackMetadata(v26 + *(v100 + 24), v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  (*(v98 + 7))(v11, 0, 1, v101);
  v34 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v35 = *(v34 + 3);
  v108 = *(v34 + 2);
  v109 = v35;
  v36 = *(v34 + 5);
  v110 = *(v34 + 4);
  v111 = v36;
  v37 = *(v34 + 1);
  v106 = *v34;
  v107 = v37;
  type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
  swift_allocObject();
  v38 = v2;
  outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(&v106, v105);
  v92 = specialized NowPlaying.TrackTitleStackView.Label.init(text:attributes:hostingView:)(v11, &v106, v38);

  outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(&v106);
  v96 = v33;
  v97 = v31;
  v90 = v11;
  v93 = v30;
  if (!v33)
  {
    goto LABEL_28;
  }

  if (static NowPlaying.TrackMetadata.== infix(_:_:)())
  {

    goto LABEL_28;
  }

  v39 = *(v100 + 28);
  v40 = *(v99 + 48);
  v41 = v86;
  outlined init with copy of TaskPriority?(v26 + v39, v86, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  outlined init with copy of TaskPriority?(&v19[v39], v41 + v40, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v42 = *(v98 + 6);
  v43 = v101;
  if (v42(v41, 1, v101) != 1)
  {
    v46 = v85;
    outlined init with copy of TaskPriority?(v41, v85, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    if (v42(v41 + v40, 1, v43) != 1)
    {
      v48 = v89;
      outlined init with take of NowPlaying.TrackMetadata.StringKind(v41 + v40, v89, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v49 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
      outlined destroy of NowPlaying.TrackMetadata(v48, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      outlined destroy of NowPlaying.TrackMetadata(v46, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      outlined destroy of TaskPriority?(v41, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
      v45 = v97;
      if (v49)
      {

        goto LABEL_27;
      }

LABEL_23:

      v98 = v45;
      v47 = v100;
      goto LABEL_37;
    }

    outlined destroy of NowPlaying.TrackMetadata(v46, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v45 = v97;
LABEL_22:
    outlined destroy of TaskPriority?(v41, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMR_0);
    goto LABEL_23;
  }

  v44 = v42(v41 + v40, 1, v43);
  v45 = v97;
  if (v44 != 1)
  {
    goto LABEL_22;
  }

  outlined destroy of TaskPriority?(v41, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
LABEL_27:
  v26 = v102;
  v19 = v103;
LABEL_28:
  v47 = v100;
  v50 = *(v100 + 28);
  v51 = v19;
  v52 = *(v99 + 48);
  v53 = v26 + v50;
  v54 = v91;
  outlined init with copy of TaskPriority?(v53, v91, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v55 = &v51[v50];
  v56 = v54;
  outlined init with copy of TaskPriority?(v55, v54 + v52, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v42 = *(v98 + 6);
  v57 = v101;
  if (v42(v56, 1, v101) == 1)
  {
    if (v42(v56 + v52, 1, v57) == 1)
    {
      outlined destroy of TaskPriority?(v56, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v58 = v87;
  outlined init with copy of TaskPriority?(v56, v87, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  if (v42(v56 + v52, 1, v57) == 1)
  {
    outlined destroy of NowPlaying.TrackMetadata(v58, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v47 = v100;
LABEL_33:
    outlined destroy of TaskPriority?(v56, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMR_0);
LABEL_36:
    v98 = NowPlaying.TrackTitleStackView.subtitleLabel.getter();
    goto LABEL_37;
  }

  v59 = v56 + v52;
  v60 = v89;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v59, v89, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v61 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  outlined destroy of NowPlaying.TrackMetadata(v60, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined destroy of NowPlaying.TrackMetadata(v58, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined destroy of TaskPriority?(v56, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v47 = v100;
  if ((v61 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_35:
  if (static NowPlaying.TrackMetadata.== infix(_:_:)())
  {
    goto LABEL_36;
  }

  v98 = 0;
LABEL_37:
  v62 = *(v47 + 28);
  v63 = *(v99 + 48);
  v64 = v94;
  outlined init with copy of TaskPriority?(v102 + v62, v94, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  outlined init with copy of TaskPriority?(&v103[v62], v64 + v63, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v65 = v101;
  if (v42(v64, 1, v101) == 1)
  {
    v66 = v42(v64 + v63, 1, v65);
    v67 = v102;
    if (v66 == 1)
    {
      outlined destroy of TaskPriority?(v64, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v68 = v88;
  outlined init with copy of TaskPriority?(v64, v88, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  if (v42(v64 + v63, 1, v65) == 1)
  {
    outlined destroy of NowPlaying.TrackMetadata(v68, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v67 = v102;
LABEL_42:
    outlined destroy of TaskPriority?(v64, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMR_0);
LABEL_43:
    v69 = v90;
    outlined init with copy of TaskPriority?(v67 + v62, v90, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
    v70 = &v38[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v71 = *(v70 + 2);
    v72 = *(v70 + 3);
    v73 = *(v70 + 5);
    v105[4] = *(v70 + 4);
    v105[5] = v73;
    v105[3] = v72;
    v74 = *(v70 + 1);
    v105[0] = *v70;
    v105[1] = v74;
    v105[2] = v71;
    swift_allocObject();
    v75 = v38;
    outlined init with copy of NowPlaying.TrackTitleStackView.Label.Attributes(v105, &v104);
    specialized NowPlaying.TrackTitleStackView.Label.init(text:attributes:hostingView:)(v69, v105, v75);

    outlined destroy of NowPlaying.TrackTitleStackView.Label.Attributes(v105);
    goto LABEL_45;
  }

  v76 = v64 + v63;
  v77 = v89;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v76, v89, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v78 = v64;
  v79 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  outlined destroy of NowPlaying.TrackMetadata(v77, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined destroy of NowPlaying.TrackMetadata(v68, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined destroy of TaskPriority?(v78, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd_0, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR_0);
  v67 = v102;
  if ((v79 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_45:
  v80 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  v81 = &v38[v80];
  v82 = v95;
  outlined init with copy of NowPlaying.TrackMetadata(v81, v95, type metadata accessor for NowPlaying.TrackMetadata);
  v83 = static NowPlaying.TrackMetadata.== infix(_:_:)();
  outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(v96, v97);
  outlined destroy of NowPlaying.TrackMetadata(v82, type metadata accessor for NowPlaying.TrackMetadata);
  outlined destroy of NowPlaying.TrackMetadata(v103, type metadata accessor for NowPlaying.TrackMetadata);
  if (v83)
  {
  }

  return v93;
}

uint64_t lazy protocol witness table accessor for type NowPlaying.TrackTitleStackView and conformance NowPlaying.TrackTitleStackView(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id outlined copy of NowPlaying.TrackTitleStackView.Label.Attributes.Action?(id result, void *a2, void *a3)
{
  if (result != 1)
  {
    v4 = result;
    v5 = a3;
    v6 = v4;

    return a2;
  }

  return result;
}

uint64_t sub_10038BA64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  return outlined init with copy of NowPlaying.TrackMetadata(v3 + v4, a2, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t type metadata completion function for NowPlaying.TrackTitleStackView(uint64_t a1)
{
  result = type metadata accessor for NowPlaying.TrackMetadata(319);
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

uint64_t get_enum_tag_for_layout_string_9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC17TransitionContextV7Content33_8F7564099BF3006270956A38774C94CALLVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void type metadata completion function for NowPlaying.TrackTitleStackView.Label(uint64_t a1)
{
  _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMa_0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMa_0(uint64_t a1)
{
  if (!_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgML_0)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgML_0);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy96_8_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for NowPlaying.TrackTitleStackView.Label.Attributes(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NowPlaying.TrackTitleStackView.Label.Attributes(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NowPlaying.TrackTitleStackView.Label.Attributes.Marquee(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NowPlaying.TrackTitleStackView.Label.Attributes.Marquee(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Gliss.Transition<>.Output(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy152_8_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Gliss.Transition<>.Output(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Gliss.Transition<>.Output(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
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

  *(result + 152) = v3;
  return result;
}

uint64_t sub_10038BFDC()
{
  v1 = *(v0 + 88);
  if (v1 != 1)
  {
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.UnderlineStyleAttribute and conformance AttributeScopes.UIKitAttributes.UnderlineStyleAttribute);
  }

  return result;
}

uint64_t outlined copy of NowPlaying.TrackTitleStackView.TransitionContext?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return outlined copy of NowPlaying.TrackTitleStackView.TransitionContext.Content?(a3);
  }

  return result;
}

double outlined consume of NowPlaying.TrackTitleStackView.TransitionContext?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    return outlined consume of NowPlaying.TrackTitleStackView.TransitionContext.Content?(a3, a4);
  }

  return result;
}

id PassthroughView.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  if (UIViewIgnoresTouchEvents())
  {
    return 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PassthroughView();
  v7 = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    type metadata accessor for UIView();
    v8 = v7;
    v9 = v3;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id PassthroughView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id PassthroughView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PassthroughView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id PassthroughView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *SymbolButton.__allocating_init(intent:)(uint64_t a1)
{
  v1 = a1;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  SymbolButton.Configuration.init(intent:materialColor:)(v1, 2, v3);
  v4 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v5 = specialized SymbolButton.init(configuration:handler:)(v3, 0, 0);
  v6 = &v5[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = closure #1 in SymbolButton.init(intent:);
  v6[1] = 0;
  v9 = v5;
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v7, v8);
  if (v1)
  {
    if (v1 == 1)
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

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v15, v11, v12, v13, v14);

  return v9;
}

uint64_t SymbolButton.Configuration.init(intent:materialColor:)@<X0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a2;
  v4 = type metadata accessor for UIViewConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (type metadata accessor for SymbolButton.Configuration(0) - 8);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized SymbolButton.Symbol.init()(v28);
  v11 = v28[5];
  *(a3 + 64) = v28[4];
  *(a3 + 80) = v11;
  *(a3 + 96) = v28[6];
  v12 = v29;
  v13 = v28[1];
  *a3 = v28[0];
  *(a3 + 16) = v13;
  v14 = v28[3];
  *(a3 + 32) = v28[2];
  *(a3 + 48) = v14;
  *(a3 + 112) = v12;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = UIFontTextStyleSubheadline;
  *(a3 + 144) = UIFontWeightSemibold;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0x3FF0000000000000;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 1;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = 1;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  v15 = v8[11];
  v16 = type metadata accessor for UIView.Corner();
  (*(*(v16 - 8) + 56))(a3 + v15, 1, 1, v16);
  v17 = a3 + v8[12];
  *(v17 + 48) = 0;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *v17 = 0u;
  v18 = (a3 + v8[13]);
  *v18 = 0;
  v18[1] = 0;
  v18[2] = 1;
  *(a3 + v8[14]) = 0x4010000000000000;
  *(a3 + v8[15]) = vdupq_n_s64(0x4040000000000000uLL);
  v19 = a3 + v8[16];
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = (a3 + v8[17]);
  v21 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v20 = *&NSDirectionalEdgeInsetsZero.top;
  v20[1] = v21;
  v22 = a3 + v8[18];
  *v22 = 1;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(a3 + v8[19]) = 0x3FF0000000000000;
  *(a3 + v8[20]) = 0;
  *(a3 + v8[21]) = 2;
  v23 = UIFontTextStyleSubheadline;
  SymbolButton.Configuration.init()(v10);
  closure #1 in SymbolButton.Configuration.init(intent:materialColor:)(v10, v26, v27);
  outlined destroy of SymbolButton.Configuration(a3, type metadata accessor for SymbolButton.Configuration);
  outlined init with take of SymbolButton.Configuration(v10, a3);
  v24 = [objc_opt_self() currentTraitCollection];
  UIViewConfigurationState.init(traitCollection:)();
  SymbolButton.Configuration.update(for:)();
  return (*(v5 + 8))(v7, v4);
}

void SymbolButton.Configuration.update(for:)()
{
  v1 = v0;
  v2 = UIViewConfigurationState.traitCollection.getter();
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 6)
  {
    if (*(v0 + 232) == 1 || (v4 = *(v0 + 256), v4 == 2))
    {
      if (UIViewConfigurationState.isHighlighted.getter() & 1) != 0 || (UIViewConfigurationState.isSelected.getter())
      {
        if (one-time initialization token for pressed != -1)
        {
          swift_once();
        }

        v5 = static UIColor.MusicTint.pressed;
        v6 = *(v1 + 112);
        v7 = static UIColor.MusicTint.pressed;

        *(v1 + 112) = v5;
        *(v1 + 176) = v5;
      }

      else
      {

        *(v0 + 112) = 0;
        *(v0 + 176) = 0;
      }
    }

    else
    {
      v8 = objc_opt_self();
      if (v4)
      {
        v9 = v8;
        v10 = [v8 blackColor];

        *(v0 + 112) = v10;
        v11 = [v9 blackColor];

        *(v0 + 176) = v11;
        [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.05];
        UIView.Border.init(thickness:color:)();
        v13 = v12;
        v15 = v14;
        v17 = v16 & 1;

        *(v0 + 280) = v13;
        *(v0 + 288) = v17;
        *(v0 + 296) = v15;
        LOBYTE(v13) = UIViewConfigurationState.isHighlighted.getter();
        type metadata accessor for UIColor();
        v18 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(19, 19, 20, 1.0);
        if (v13)
        {
          v19 = 0x3FD5C28F5C28F5C3;
        }

        else
        {
          v19 = 0x3FD3333333333333;
        }

        outlined consume of SymbolButton.Background?(*(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224));
        *(v1 + 200) = v19;
        *(v1 + 208) = v18;
      }

      else
      {
        v20 = v8;
        v21 = [v8 whiteColor];

        *(v0 + 112) = v21;
        v22 = [v20 whiteColor];

        *(v0 + 176) = v22;
        [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.05];
        UIView.Border.init(thickness:color:)();
        v24 = v23;
        v26 = v25;
        v28 = v27 & 1;

        *(v0 + 280) = v24;
        *(v0 + 288) = v28;
        *(v0 + 296) = v26;
        v29 = UIViewConfigurationState.isHighlighted.getter();
        v30 = [v20 whiteColor];
        if (v29)
        {
          v31 = 0x3FD0A3D70A3D70A4;
        }

        else
        {
          v31 = 0x3FCC28F5C28F5C29;
        }

        outlined consume of SymbolButton.Background?(*(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224));
        *(v1 + 200) = v31;
        *(v1 + 208) = v30;
      }

      *(v1 + 216) = 0;
      *(v1 + 224) = 0;
    }
  }
}