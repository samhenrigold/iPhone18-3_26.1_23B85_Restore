void closure #1 in VideoReactionPickerViewController.hideReactionPicker()(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

id VideoReactionPickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1BFB209B0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id VideoReactionPickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoReactionPickerViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path getter for VideoReactionPickerViewModel.anchorPoint : VideoReactionPickerViewModel@<X0>(uint64_t a1@<X8>)
{
  result = VideoReactionPickerViewModel.anchorPoint.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAE5ScaleOGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t partial apply for closure #2 in closure #3 in VideoReactionButton.body.getter()
{
  v2 = OUTLINED_FUNCTION_17_1();
  v3 = type metadata accessor for VideoReactionButton(v2);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_20_1();

  return closure #2 in closure #3 in VideoReactionButton.body.getter(v0, v1 + v4);
}

uint64_t lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void partial apply for closure #4 in VideoReactionButton.body.getter(uint64_t a1, _BYTE *a2)
{
  v5 = type metadata accessor for VideoReactionButton(0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_20_1();

  closure #4 in VideoReactionButton.body.getter(a1, a2, v2 + v6);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect>, _OffsetEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect>, _OffsetEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect>, _OffsetEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGAA13_OffsetEffectVGA30_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGAA13_OffsetEffectVGA30_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect>, _OffsetEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGAA13_OffsetEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGAA16_TransformEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>>, _TransformEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGAA010_AnimationM0VySbGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGAA15_RotationEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect>, _RotationEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGAA01_O6EffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE11buttonStyleyQrqd__AA06ButtonG0Rd__lFQOyAA0H0VyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAK5ScaleOGGG_15ConversationKit013VideoReactionhG0VQo_AA023AccessibilityAttachmentM0VGAA011_BackgroundM0VyACyAA14GeometryReaderVyACyAA5ColorVAA011_PreferencelM0VyAX09XPositionzK0VGGGAA01_z6ActionM0VyA12_GGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA14GeometryReaderVyAEyAA5ColorVAA018_PreferenceWritingD0Vy15ConversationKit09XPositionJ3KeyVGGGAA01_j6ActionD0VyANGGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA14GeometryReaderVyAEyAA5ColorVAA018_PreferenceWritingD0Vy15ConversationKit09XPositionJ3KeyVGGGAA01_j6ActionD0VyANGGGMR, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, AccessibilityAttachmentModifier>, _BackgroundModifier<ModifiedContent<GeometryReader<ModifiedContent<Color, _PreferenceWritingModifier<XPositionPreferenceKey>>>, _PreferenceActionModifier<XPositionPreferenceKey>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t outlined init with copy of VideoReactionButton(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t outlined init with take of VideoReactionButton(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7_0();
  v4 = OUTLINED_FUNCTION_46();
  v5(v4);
  return a2;
}

uint64_t partial apply for closure #1 in VideoReactionButton.body.getter(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_20_1();

  return a2(v2 + v4);
}

uint64_t objectdestroy_16Tm_2()
{
  type metadata accessor for VideoReactionPickerBubble(0);
  OUTLINED_FUNCTION_25_2();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    OUTLINED_FUNCTION_7_0();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #3 in VideoReactionPickerBubble.body.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for VideoReactionPickerBubble(0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_20_1();

  return closure #1 in closure #3 in VideoReactionPickerBubble.body.getter(a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout>, _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>>>, _CoordinateSpaceModifier<String>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout>, _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>>>, _CoordinateSpaceModifier<String>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout>, _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>>>, _CoordinateSpaceModifier<String>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundQ0VyAA14GeometryReaderVyACyACyACyAA06_ShapeG0VyAH13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeQ0VyAA5ColorVA9_GGAA13_ShadowEffectVGAA010_AnimationQ0VySbGGGGGAA016_CoordinateSpaceQ0VySSGGMd, "V]\b");
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout>, _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _CoordinateSpaceModifier<String> and conformance _CoordinateSpaceModifier<A>, &_s7SwiftUI24_CoordinateSpaceModifierVySSGMd, &_s7SwiftUI24_CoordinateSpaceModifierVySSGMR, MEMORY[0x1E697C968]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout>, _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>>>, _CoordinateSpaceModifier<String>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout>, _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout>, _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout>, _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundQ0VyAA14GeometryReaderVyACyACyACyAA06_ShapeG0VyAH13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeQ0VyAA5ColorVA9_GGAA13_ShadowEffectVGAA010_AnimationQ0VySbGGGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGAA011_BackgroundQ0VyAA14GeometryReaderVyACyACyACyAA06_ShapeG0VyAH13ThoughtBubbleVAA8MaterialVGAA026_InsettableBackgroundShapeQ0VyAA5ColorVA9_GGAA13_ShadowEffectVGAA010_AnimationQ0VySbGGGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA14GeometryReaderVyAA15ModifiedContentVyAGyAGyAA10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGAA011_InsettableciD0VyAA5ColorVALGGAA13_ShadowEffectVGAA010_AnimationD0VySbGGGGMd, &_s7SwiftUI19_BackgroundModifierVyAA14GeometryReaderVyAA15ModifiedContentVyAGyAGyAA10_ShapeViewVy15ConversationKit13ThoughtBubbleVAA8MaterialVGAA011_InsettableciD0VyAA5ColorVALGGAA13_ShadowEffectVGAA010_AnimationD0VySbGGGGMR, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout>, _BackgroundModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<ThoughtBubble, Material>, _InsettableBackgroundShapeModifier<Color, ThoughtBubble>>, _ShadowEffect>, _AnimationModifier<Bool>>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGAA14_PaddingLayoutVGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGAA017_AppearanceActionQ0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AJtGGAA30_EnvironmentKeyWritingModifierVyAH0jk6PickerG5Model33_5A0B7B44E54382705C993A39EDE5E358LLCSgGGMR);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AHtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVy15ConversationKit22VideoReactionButtonRowV_AHtGGMR, MEMORY[0x1E6981870]);
    lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit28VideoReactionPickerViewModel33_5A0B7B44E54382705C993A39EDE5E358LLCSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy15ConversationKit28VideoReactionPickerViewModel33_5A0B7B44E54382705C993A39EDE5E358LLCSgGMR, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(VideoReactionButtonRow, VideoReactionButtonRow)>>, _EnvironmentKeyWritingModifier<VideoReactionPickerViewModel?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined assign with take of VideoReactionPickerBubble?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit25VideoReactionPickerBubbleVSgMd, &_s15ConversationKit25VideoReactionPickerBubbleVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type VideoReaction and conformance VideoReaction()
{
  result = lazy protocol witness table cache variable for type VideoReaction and conformance VideoReaction;
  if (!lazy protocol witness table cache variable for type VideoReaction and conformance VideoReaction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VideoReaction and conformance VideoReaction);
  }

  return result;
}

void type metadata completion function for VideoReactionPickerViewModel(uint64_t a1)
{
  _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<CGPoint?>(319, &lazy cache variable for type metadata for Published<CGPoint?>, &_sSo7CGPointVSgMd, "X_\b", MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for VideoReaction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

void type metadata completion function for VideoReactionButtonStyle(uint64_t a1)
{
  _s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMaTm_0(319, &lazy cache variable for type metadata for Environment<DynamicTypeSize>, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata completion function for VideoReactionButton(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<VideoReactionPickerViewModel>(319, &lazy cache variable for type metadata for EnvironmentObject<VideoReactionPickerViewModel>, MEMORY[0x1E697ED38]);
  if (v1 <= 0x3F)
  {
    _s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMaTm_0(319, &lazy cache variable for type metadata for Environment<DynamicTypeSize>, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<CGPoint?>(319, &lazy cache variable for type metadata for State<CGFloat?>, &_s12CoreGraphics7CGFloatVSgMd, &_s12CoreGraphics7CGFloatVSgMR, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Published<CGPoint?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void _s7Combine9PublishedVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for VideoReactionPickerBubble(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<VideoReactionPickerViewModel>(319, &lazy cache variable for type metadata for ObservedObject<VideoReactionPickerViewModel>, MEMORY[0x1E697E430]);
  if (v1 <= 0x3F)
  {
    _s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMaTm_0(319, &lazy cache variable for type metadata for Environment<DynamicTypeSize>, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for EnvironmentObject<VideoReactionPickerViewModel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for VideoReactionPickerViewModel(255);
    OUTLINED_FUNCTION_0_174();
    v9 = lazy protocol witness table accessor for type VideoReactionButtonStyle and conformance VideoReactionButtonStyle(v7, v8, &protocol conformance descriptor for VideoReactionPickerViewModel);
    v10 = a3(a1, v6, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata completion function for VideoReactionPickerViewController(uint64_t a1)
{
  _s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMaTm_0(319, &lazy cache variable for type metadata for VideoReactionPickerBubble?, type metadata accessor for VideoReactionPickerBubble, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void _s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t partial apply for closure #1 in VideoReactionPickerBubble.anchorPoint(for:)()
{
  v1 = *(type metadata accessor for VideoReactionPickerBubble(0) - 8);
  v2 = (v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = *v2;
  v4 = v2[1];

  return closure #1 in VideoReactionPickerBubble.anchorPoint(for:)(v3, v4);
}

uint64_t outlined destroy of VideoReactionButtonStyle()
{
  v1 = OUTLINED_FUNCTION_17_1();
  v2(v1);
  OUTLINED_FUNCTION_7_0();
  (*(v3 + 8))(v0);
  return v0;
}

Swift::Void __swiftcall UIScrollView.toggleZoomEnabled(zoomEnabled:)(Swift::Bool zoomEnabled)
{
  v2 = zoomEnabled;
  if (zoomEnabled)
  {
    v3 = 2.0;
  }

  else
  {
    v3 = 1.0;
  }

  [v1 setScrollEnabled_];
  [v1 setMaximumZoomScale_];
  if (!v2)
  {

    [v1 setZoomScale_];
  }
}

uint64_t LockScreenActivityService.__allocating_init(logger:activityController:callServices:updateActivityInterval:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = swift_allocObject();
  LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:)(a1, a2, a3, a4);
  return v8;
}

char *LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v5 = v4;
  v23 = a1;
  v24 = a3;
  v8 = *v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  type metadata accessor for TaskQueue();
  v22 = TaskQueue.__allocating_init()();
  *(v4 + 2) = v22;
  *&v4[direct field offset for LockScreenActivityService.viewModel] = 0;
  v12 = *(*v4 + 144);
  v21 = *(v8 + 80);
  v13 = *(v8 + 88);
  v15 = type metadata accessor for LockScreenActivityService.ActivityState(0, v21, v13, v14);
  __swift_storeEnumTagSinglePayload(&v4[v12], 1, 1, v15);
  v16 = *(v10 + 16);
  v17 = v23;
  v16(&v5[direct field offset for LockScreenActivityService.logger], v23, v9);
  *&v5[direct field offset for LockScreenActivityService.activityController] = a2;
  outlined init with copy of IDSLookupManager(v24, &v5[direct field offset for LockScreenActivityService.callServices]);
  *&v5[direct field offset for LockScreenActivityService.updateActivityInterval] = a4;
  v16(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v9);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v21;
  *(v19 + 24) = v13;
  (*(v10 + 32))(v19 + v18, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);

  dispatch thunk of TaskQueue.async(_:)();

  __swift_destroy_boxed_opaque_existential_1(v24);
  (*(v10 + 8))(v23, v9);
  return v5;
}

uint64_t closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:), 0, 0);
}

uint64_t closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:)()
{
  OUTLINED_FUNCTION_44();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_163(v3))
  {
    OUTLINED_FUNCTION_30_1();
    v4 = OUTLINED_FUNCTION_12_28();
    *v0 = 136315394;
    v5 = OUTLINED_FUNCTION_6_96("terval", v4);
    OUTLINED_FUNCTION_7_18(v5);
    *(v0 + 14) = OUTLINED_FUNCTION_38_25("init(logger:activityController:callServices:updateActivityInterval:)", v13);
    OUTLINED_FUNCTION_3_134();
    _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    OUTLINED_FUNCTION_16_55();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_239();
  }

  type metadata accessor for CallScreeningActivityController();
  v11 = swift_task_alloc();
  *(v1 + 40) = v11;
  *v11 = v1;
  v11[1] = closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);

  return MEMORY[0x1EEDF7718]();
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:), 0, 0);
}

{
  OUTLINED_FUNCTION_44();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_163(v2))
  {
    OUTLINED_FUNCTION_30_1();
    v3 = OUTLINED_FUNCTION_12_28();
    *v0 = 136315394;
    v4 = OUTLINED_FUNCTION_6_96("terval", v3);
    OUTLINED_FUNCTION_7_18(v4);
    *(v0 + 14) = OUTLINED_FUNCTION_38_25("init(logger:activityController:callServices:updateActivityInterval:)", v12);
    OUTLINED_FUNCTION_3_134();
    _os_log_impl(v5, v6, v7, v8, v9, 0x16u);
    OUTLINED_FUNCTION_16_55();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_239();
  }

  OUTLINED_FUNCTION_13();

  return v10();
}

uint64_t partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:)()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Logger() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_92(v5);
  *v6 = v7;
  v6[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);

  return closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:)(v0 + v4, v1, v2);
}

uint64_t LockScreenActivityService.startActivity(with:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in LockScreenActivityService.startActivity(with:)(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for MainActor();
  v2[3] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = closure #1 in LockScreenActivityService.startActivity(with:);

  return LockScreenActivityService._startActivity(with:)(a2);
}

uint64_t closure #1 in LockScreenActivityService.startActivity(with:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v2 = v1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in closure #1 in CallScreening.CallStateObserver.start(onCallStatusUpdate:), v4, v3);
}

uint64_t partial apply for closure #1 in LockScreenActivityService.startActivity(with:)()
{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_92(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);
  v5 = OUTLINED_FUNCTION_20_48();

  return closure #1 in LockScreenActivityService.startActivity(with:)(v5, v1);
}

uint64_t LockScreenActivityService._startActivity(with:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v4 = type metadata accessor for Logger();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = *(v3 + 80);
  v2[10] = v5;
  v6 = *(v3 + 88);
  v2[11] = v6;
  v2[12] = type metadata accessor for LockScreenActivityService.ActivityState(255, v5, v6, v7);
  v8 = type metadata accessor for Optional();
  v2[13] = v8;
  v2[14] = *(v8 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore19CallScreeningStatusOSgMd, &_s20CommunicationsUICore19CallScreeningStatusOSgMR);
  v2[16] = swift_task_alloc();
  v9 = type metadata accessor for CallScreeningStatus();
  v2[17] = v9;
  v2[18] = *(v9 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[22] = v11;
  v2[23] = v10;

  return MEMORY[0x1EEE6DFA0](LockScreenActivityService._startActivity(with:), v11, v10);
}

uint64_t LockScreenActivityService._startActivity(with:)()
{
  OUTLINED_FUNCTION_23_1();
  v42 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = (*(v0 + 48) + direct field offset for LockScreenActivityService.callServices);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = TranscriptionViewModel.callUUID.getter();
  (*(v4 + 128))(v5);

  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v6 = *(v0 + 128);

    outlined destroy of CallControlsService?(v6, &_s20CommunicationsUICore19CallScreeningStatusOSgMd, &_s20CommunicationsUICore19CallScreeningStatusOSgMR);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_23();
      v41 = swift_slowAlloc();
      *v9 = 136315650;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001BC5128A0, &v41);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x80000001BC5128D0, &v41);
      *(v9 + 22) = 2080;
      v10 = TranscriptionViewModel.callUUID.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v41);

      *(v9 + 24) = v12;
      _os_log_impl(&dword_1BBC58000, v7, v8, "[%s] %s: Unable to start activity. Could not get status for callUUID %s", v9, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_13();

    return v13();
  }

  else
  {
    v15 = *(v0 + 120);
    v16 = *(v0 + 104);
    v17 = *(v0 + 112);
    v18 = *(v0 + 96);
    v19 = *(v0 + 48);
    (*(*(v0 + 144) + 32))(*(v0 + 160), *(v0 + 128), *(v0 + 136));
    v20 = *(*v19 + 144);
    OUTLINED_FUNCTION_18_50(v19 + v20);
    (*(v17 + 16))(v15, v19 + v20, v16);
    LODWORD(v18) = __swift_getEnumTagSinglePayload(v15, 1, v18);
    v21 = OUTLINED_FUNCTION_38_2();
    v22(v21);
    if (v18 != 1)
    {
      LockScreenActivityService._stopActivity(reason:)("Starting a new screening live activity.", 39, 2, v23);
    }

    v24 = *(v0 + 152);
    v25 = *(v0 + 160);
    v26 = *(v0 + 136);
    v27 = *(v0 + 144);
    v28 = *(v0 + 48);
    v40 = *(v0 + 80);
    (*(*(v0 + 64) + 16))(*(v0 + 72), v28 + direct field offset for LockScreenActivityService.logger, *(v0 + 56));
    (*(v27 + 16))(v24, v25, v26);
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = *(v28 + 16);
    v31 = swift_allocObject();
    *(v31 + 16) = v40;
    *(v31 + 32) = v30;
    *(v31 + 40) = v29;
    type metadata accessor for LockScreenActivityViewModel(0);
    swift_allocObject();

    v32 = OUTLINED_FUNCTION_44_0();
    *(v0 + 192) = LockScreenActivityViewModel.init(logger:viewModel:presentingForState:onUpdate:)(v32, v33, v24, v34, v31);
    v35 = swift_task_alloc();
    *(v0 + 200) = v35;
    *v35 = v0;
    v35[1] = LockScreenActivityService._startActivity(with:);
    v36 = OUTLINED_FUNCTION_20_48();

    return LockScreenActivityService.updateOrPresent(viewModel:)(v36, v37, v38, v39);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_16_12();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 184);
  v6 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](LockScreenActivityService._startActivity(with:), v6, v5);
}

{
  OUTLINED_FUNCTION_9();

  v0 = OUTLINED_FUNCTION_44_0();
  v1(v0);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t LockScreenActivityService._stopActivity(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for LockScreenActivityService.ActivityState(255, *(*v4 + 80), *(*v4 + 88), a4);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a1;
    v15 = v14;
    v24 = swift_slowAlloc();
    v25 = v8;
    v26[0] = v24;
    *v15 = 136315650;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x80000001BC5128A0, v26);
    *(v15 + 12) = 2080;
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x80000001BC510DC0, v26);
    *(v15 + 22) = 2080;
    v16 = StaticString.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v26);

    *(v15 + 24) = v18;
    _os_log_impl(&dword_1BBC58000, v12, v13, "[%s] %s: Asked to stop Live Activity with reason %s", v15, 0x20u);
    v19 = v24;
    swift_arrayDestroy();
    v20 = v19;
    v8 = v25;
    MEMORY[0x1BFB23DF0](v20, -1, -1);
    MEMORY[0x1BFB23DF0](v15, -1, -1);
  }

  dispatch thunk of CallScreeningActivityController.stopActivity()();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v7);
  v21 = *(*v5 + 144);
  swift_beginAccess();
  (*(v9 + 40))(v5 + v21, v11, v8);
  return swift_endAccess();
}

uint64_t closure #1 in LockScreenActivityService._startActivity(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = v8;
  v9[5] = a1;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in closure #1 in LockScreenActivityService._startActivity(with:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in LockScreenActivityService._startActivity(with:), v4, v3);
}

uint64_t closure #1 in closure #1 in LockScreenActivityService._startActivity(with:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18_50(v0[5] + 16);
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = *(Strong + direct field offset for LockScreenActivityService.viewModel);
    v0[11] = v2;
    if (v2)
    {
      v3 = (v0[6] + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID);
      v4 = *v3 == *(v2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID) && v3[1] == *(v2 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID + 8);
      if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v5 = swift_task_alloc();
        v0[12] = v5;
        *v5 = v0;
        v5[1] = closure #1 in closure #1 in LockScreenActivityService._startActivity(with:);
        v6 = OUTLINED_FUNCTION_20_48();

        return LockScreenActivityService.updateOrPresent(viewModel:)(v6, v7, v8, v9);
      }
    }
  }

  OUTLINED_FUNCTION_13();

  return v11();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_16_12();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 72);
  v6 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in LockScreenActivityService._startActivity(with:), v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t LockScreenActivityService.updateOrPresent(viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a1;
  v5[6] = v4;
  v6 = type metadata accessor for LockScreenActivityService.ActivityState(255, *(*v4 + 80), *(*v4 + 88), a4);
  v5[7] = v6;
  v7 = type metadata accessor for Optional();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v9;
  v5[15] = v8;

  return MEMORY[0x1EEE6DFA0](LockScreenActivityService.updateOrPresent(viewModel:), v9, v8);
}

uint64_t LockScreenActivityService.updateOrPresent(viewModel:)()
{
  OUTLINED_FUNCTION_44();
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  *(v5 + direct field offset for LockScreenActivityService.viewModel) = v0[5];

  v6 = *(*v5 + 144);
  OUTLINED_FUNCTION_18_50(v5 + v6);
  (*(v2 + 16))(v1, v5 + v6, v3);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    v7 = *(v0[9] + 8);

    v8 = OUTLINED_FUNCTION_38_2();
    v7(v8);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = LockScreenActivityService.updateOrPresent(viewModel:);
    v13 = v0[5];

    return LockScreenActivityService.presentActivity(with:)(v13, v10, v11, v12);
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v0[10], v0[7]);

    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = LockScreenActivityService.updateOrPresent(viewModel:);
    v16 = v0[12];
    v17 = v0[5];

    return LockScreenActivityService.update(_:with:)(v16, v17);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_16_12();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 120);
  v6 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](LockScreenActivityService.updateOrPresent(viewModel:), v6, v5);
}

{
  OUTLINED_FUNCTION_9();

  v0 = OUTLINED_FUNCTION_38_2();
  v1(v0);

  OUTLINED_FUNCTION_13();

  return v2();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_16_12();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 120);
  v6 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](LockScreenActivityService.updateOrPresent(viewModel:), v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t LockScreenActivityService.stopActivity(reason:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in LockScreenActivityService.stopActivity(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  type metadata accessor for MainActor();
  *(v4 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in LockScreenActivityService.stopActivity(reason:), v6, v5);
}

uint64_t closure #1 in LockScreenActivityService.stopActivity(reason:)()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);

  v3 = OUTLINED_FUNCTION_44_0();
  LockScreenActivityService._stopActivity(reason:)(v3, v4, v2, v5);
  *(v1 + direct field offset for LockScreenActivityService.viewModel) = 0;

  OUTLINED_FUNCTION_13();

  return v6();
}

uint64_t partial apply for closure #1 in LockScreenActivityService.stopActivity(reason:)()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_92(v4);
  *v5 = v6;
  v5[1] = partial apply for closure #1 in AsyncCancellableTimer.wait(with:);
  v7 = OUTLINED_FUNCTION_20_48();

  return closure #1 in LockScreenActivityService.stopActivity(reason:)(v7, v1, v2, v3);
}

uint64_t LockScreenActivityService.update(with:)(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for AnsweringMachineCallStatus(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  outlined init with copy of AnsweringMachineCallStatus(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v8 = swift_allocObject();
  v8[2] = *(v3 + 80);
  v8[3] = *(v3 + 88);
  v8[4] = v1;
  outlined init with take of AnsweringMachineCallStatus(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t closure #1 in LockScreenActivityService.update(with:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for CallScreeningStatus();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v5;
  v2[12] = v4;

  return MEMORY[0x1EEE6DFA0](closure #1 in LockScreenActivityService.update(with:), v5, v4);
}

uint64_t closure #1 in LockScreenActivityService.update(with:)()
{
  OUTLINED_FUNCTION_23_1();
  v1 = *(v0[5] + direct field offset for LockScreenActivityService.viewModel);
  v0[13] = v1;
  if (!v1)
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_163(v15))
    {
      OUTLINED_FUNCTION_30_1();
      v16 = OUTLINED_FUNCTION_12_28();
      MEMORY[0] = 136315394;
      v17 = OUTLINED_FUNCTION_6_96("terval", v16);
      v18 = OUTLINED_FUNCTION_7_18(v17);
      MEMORY[0xE] = OUTLINED_FUNCTION_4_123(v18, v19, v20, v21, v22, v23, v24, v25, v65);
      OUTLINED_FUNCTION_3_134();
      _os_log_impl(v26, v27, v28, v29, v30, 0x16u);
      OUTLINED_FUNCTION_16_55();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_239();
    }

LABEL_22:

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_17_3();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[6];
  if (*(v2 + 16) != *(v1 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID) || *(v2 + 24) != *(v1 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID + 8))
  {
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = OUTLINED_FUNCTION_30_1();
        v52 = swift_slowAlloc();
        *v51 = 136315394;
        v53 = OUTLINED_FUNCTION_6_96("terval", v52);
        *(v51 + 4) = v53;
        *(v51 + 12) = 2080;
        *(v51 + 14) = OUTLINED_FUNCTION_4_123(v53, v54, v55, v56, v57, v58, v59, v60, v67);
        OUTLINED_FUNCTION_39_19(&dword_1BBC58000, v61, v62, "[%s] %s: Call is not the same call as the current ViewModel");
        swift_arrayDestroy();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      goto LABEL_21;
    }

    v2 = v0[6];
  }

  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = *(type metadata accessor for AnsweringMachineCallStatus(0) + 28);
  v8 = OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState;
  OUTLINED_FUNCTION_18_50(v1 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_presentingForState);
  v9 = *(v5 + 16);
  v9(v4, v1 + v8, v6);

  LOBYTE(v8) = CallScreeningStatus.isBaseCase(_:)();
  v10 = OUTLINED_FUNCTION_316();
  v11(v10);
  if (v8)
  {
    v12 = v0[9];
    v13 = v0[7];

    v9(v12, v2 + v7, v13);
    LockScreenActivityViewModel.presentingForState.setter(v12);
LABEL_21:

    goto LABEL_22;
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_30_1();
    v34 = swift_slowAlloc();
    *v33 = 136315394;
    v35 = OUTLINED_FUNCTION_6_96("terval", v34);
    *(v33 + 4) = v35;
    *(v33 + 12) = 2080;
    *(v33 + 14) = OUTLINED_FUNCTION_4_123(v35, v36, v37, v38, v39, v40, v41, v42, v66);
    OUTLINED_FUNCTION_39_19(&dword_1BBC58000, v43, v44, "[%s] %s: Starting new activity for new call state.");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v0[14] = *(v1 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_viewModel);

  v45 = swift_task_alloc();
  v0[15] = v45;
  *v45 = v0;
  v45[1] = closure #1 in LockScreenActivityService.update(with:);
  OUTLINED_FUNCTION_17_3();

  return LockScreenActivityService._startActivity(with:)(v46);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_16_12();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 96);
  v6 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](closure #1 in LockScreenActivityService.update(with:), v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t partial apply for closure #1 in LockScreenActivityService.update(with:)()
{
  OUTLINED_FUNCTION_9();
  type metadata accessor for AnsweringMachineCallStatus(0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_92(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);
  v3 = OUTLINED_FUNCTION_20_48();

  return closure #1 in LockScreenActivityService.update(with:)(v3, v4);
}

uint64_t LockScreenActivityService.presentActivity(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a1;
  v5[6] = v4;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v5[7] = v7;
  v5[8] = type metadata accessor for LockScreenActivityService.ActivityState(255, v7, *(v6 + 88), a4);
  v8 = type metadata accessor for Optional();
  v5[9] = v8;
  v5[10] = *(v8 - 8);
  v5[11] = swift_task_alloc();
  v9 = type metadata accessor for IntelligenceActivityAttributes.ContentState();
  v5[12] = v9;
  v5[13] = *(v9 - 8);
  v5[14] = swift_task_alloc();
  v10 = type metadata accessor for Optional();
  v5[15] = v10;
  v5[16] = *(v10 - 8);
  v5[17] = swift_task_alloc();
  v11 = *(v7 - 8);
  v5[18] = v11;
  v5[19] = v11;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationsUICore30IntelligenceActivityAttributesVSgMd, &_s20CommunicationsUICore30IntelligenceActivityAttributesVSgMR);
  v5[22] = swift_task_alloc();
  v12 = type metadata accessor for IntelligenceActivityAttributes();
  v5[23] = v12;
  v5[24] = *(v12 - 8);
  v5[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[26] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[27] = v14;
  v5[28] = v13;

  return MEMORY[0x1EEE6DFA0](LockScreenActivityService.presentActivity(with:), v14, v13);
}

uint64_t LockScreenActivityService.presentActivity(with:)()
{
  OUTLINED_FUNCTION_23_1();
  v45 = v0;
  if ((LockScreenActivityViewModel.isPresentable.getter() & 1) == 0)
  {
    v25 = v0[5];

    v18 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_64();
    if (OUTLINED_FUNCTION_317())
    {
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_14_54();
      OUTLINED_FUNCTION_23_46();
      *v25 = 136315650;
      v26 = OUTLINED_FUNCTION_1_142();
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v44);
      *(v25 + 12) = 2080;
      OUTLINED_FUNCTION_1_18();
      v31 = OUTLINED_FUNCTION_41_19(v28, v29, v30);
      OUTLINED_FUNCTION_33_31(v31);
      *(v25 + 24) = OUTLINED_FUNCTION_17_53(OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID, v43);
      goto LABEL_9;
    }

LABEL_10:

    OUTLINED_FUNCTION_9_82();

    OUTLINED_FUNCTION_13();

    return v37();
  }

  v1 = v0[5];
  v0[29] = direct field offset for LockScreenActivityService.logger;

  v2 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_64();
  if (OUTLINED_FUNCTION_317())
  {
    v3 = v0[5];
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_14_54();
    OUTLINED_FUNCTION_23_46();
    *v1 = 136315650;
    v4 = OUTLINED_FUNCTION_1_142();
    *(v1 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v44);
    *(v1 + 12) = 2080;
    OUTLINED_FUNCTION_1_18();
    *(v1 + 14) = OUTLINED_FUNCTION_41_19(v6, v7, v8);
    *(v1 + 22) = 2080;
    *(v1 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v3 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID), *(v3 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID + 8), &v44);
    OUTLINED_FUNCTION_3_134();
    _os_log_impl(v9, v10, v11, v12, v13, 0x20u);
    OUTLINED_FUNCTION_16_55();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_239();
  }

  v15 = v0[22];
  v14 = v0[23];
  LockScreenActivityViewModel.attributes.getter(v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    v16 = v0[22];
    v17 = v0[5];

    outlined destroy of CallControlsService?(v16, &_s20CommunicationsUICore30IntelligenceActivityAttributesVSgMd, &_s20CommunicationsUICore30IntelligenceActivityAttributesVSgMR);

    v18 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    OUTLINED_FUNCTION_64();
    if (OUTLINED_FUNCTION_317())
    {
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_14_54();
      OUTLINED_FUNCTION_23_46();
      *v17 = 136315650;
      v19 = OUTLINED_FUNCTION_1_142();
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v44);
      *(v17 + 12) = 2080;
      OUTLINED_FUNCTION_1_18();
      v24 = OUTLINED_FUNCTION_41_19(v21, v22, v23);
      OUTLINED_FUNCTION_33_31(v24);
      *(v17 + 24) = OUTLINED_FUNCTION_17_53(OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID, v43);
LABEL_9:
      OUTLINED_FUNCTION_3_134();
      _os_log_impl(v32, v33, v34, v35, v36, 0x20u);
      OUTLINED_FUNCTION_16_55();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_239();
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
  LockScreenActivityViewModel.content.getter();
  v39 = OUTLINED_FUNCTION_16_11();
  v0[30] = v39;
  *v39 = v0;
  v39[1] = LockScreenActivityService.presentActivity(with:);
  v40 = v0[25];
  v41 = v0[17];
  v42 = v0[14];

  return v43(v41, v40, v42);
}

{
  OUTLINED_FUNCTION_44();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    v4 = OUTLINED_FUNCTION_316();
    v5(v4);
    v6 = *(v2 + 216);
    v7 = *(v2 + 224);
    v8 = LockScreenActivityService.presentActivity(with:);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_316();
    v10(v9);
    v6 = *(v2 + 216);
    v7 = *(v2 + 224);
    v8 = LockScreenActivityService.presentActivity(with:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

{
  v1 = v0[21];
  v2 = v0[19];
  v13 = v0[20];
  v14 = v0[18];
  v3 = v0[17];
  v4 = v0[11];
  v16 = v0[10];
  v17 = v0[9];
  v15 = v0[8];
  v6 = v0[6];
  v5 = v0[7];

  v7 = OUTLINED_FUNCTION_316();
  v8(v7);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v5);
  v9 = *(v2 + 32);
  v9(v1, v3, v5);
  v9(v13, v1, v5);
  (*(v14 + 32))(v4, v13, v5);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v15);
  v10 = *(*v6 + 144);
  swift_beginAccess();
  (*(v16 + 40))(v6 + v10, v4, v17);
  swift_endAccess();
  OUTLINED_FUNCTION_9_82();

  OUTLINED_FUNCTION_13();

  return v11();
}

void LockScreenActivityService.presentActivity(with:)()
{
  OUTLINED_FUNCTION_23_1();
  v17 = v0;
  v1 = v0[17];
  v2 = v0[7];

  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = OUTLINED_FUNCTION_38_2();
  v4(v3);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[5];
    v8 = OUTLINED_FUNCTION_23();
    v16 = swift_slowAlloc();
    *v8 = 136315650;
    v9 = OUTLINED_FUNCTION_1_142();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);
    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = OUTLINED_FUNCTION_41_19(v11, 0x80000001BC512950, &v16);
    *(v8 + 22) = 2080;
    *(v8 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v7 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID), *(v7 + OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID + 8), &v16);
    _os_log_impl(&dword_1BBC58000, v5, v6, "[%s] %s: Failed to start Screening Live Activity with a transcripion view model for callUUID %s", v8, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  v12 = OUTLINED_FUNCTION_44_0();
  v13(v12);
  OUTLINED_FUNCTION_9_82();

  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_17_3();

  __asm { BRAA            X1, X16 }
}

uint64_t LockScreenActivityService.update(_:with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for IntelligenceActivityAttributes.ContentState();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x1EEE6DFA0](LockScreenActivityService.update(_:with:), v6, v5);
}

uint64_t LockScreenActivityService.update(_:with:)()
{
  if (LockScreenActivityViewModel.isPresentable.getter())
  {
    LockScreenActivityViewModel.content.getter();
    v1 = OUTLINED_FUNCTION_16_11();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = LockScreenActivityService.update(_:with:);
    v2 = v0[7];
    v3 = v0[2];

    return v20(v3, v2);
  }

  else
  {
    v5 = v0[3];

    v6 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    OUTLINED_FUNCTION_64();
    if (OUTLINED_FUNCTION_317())
    {
      OUTLINED_FUNCTION_23();
      OUTLINED_FUNCTION_14_54();
      OUTLINED_FUNCTION_23_46();
      *v5 = 136315650;
      OUTLINED_FUNCTION_1_18();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, v7, v8);
      v12 = OUTLINED_FUNCTION_12_70(v9, v10, v11);
      OUTLINED_FUNCTION_33_31(v12);
      *(v5 + 24) = OUTLINED_FUNCTION_17_53(OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID, v20);
      OUTLINED_FUNCTION_3_134();
      _os_log_impl(v13, v14, v15, v16, v17, 0x20u);
      OUTLINED_FUNCTION_16_55();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_239();
    }

    LockScreenActivityService._stopActivity(reason:)("Cannot present for current state.", 33, 2, v18);

    OUTLINED_FUNCTION_13();

    return v19();
  }
}

{
  OUTLINED_FUNCTION_44();
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 80);
  v7 = *(v2 + 72);
  if (v0)
  {
    v8 = LockScreenActivityService.update(_:with:);
  }

  else
  {
    v8 = LockScreenActivityService.update(_:with:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

{
  v1 = *(v0 + 24);

  v2 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  OUTLINED_FUNCTION_64();
  if (OUTLINED_FUNCTION_317())
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_14_54();
    OUTLINED_FUNCTION_23_46();
    *v1 = 136315650;
    OUTLINED_FUNCTION_1_18();
    v5 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, v3, v4);
    v8 = OUTLINED_FUNCTION_12_70(v5, v6, v7);
    OUTLINED_FUNCTION_33_31(v8);
    *(v1 + 24) = OUTLINED_FUNCTION_17_53(OBJC_IVAR____TtC15ConversationKit27LockScreenActivityViewModel_callUUID, v17);
    OUTLINED_FUNCTION_3_134();
    _os_log_impl(v9, v10, v11, v12, v13, 0x20u);
    OUTLINED_FUNCTION_16_55();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_239();
  }

  v14 = swift_task_alloc();
  *(v0 + 104) = v14;
  *v14 = v0;
  v14[1] = LockScreenActivityService.update(_:with:);
  v15 = OUTLINED_FUNCTION_20_48();

  return LockScreenActivityService._startActivity(with:)(v15);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_16_12();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 80);
  v6 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](LockScreenActivityService.update(_:with:), v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t *LockScreenActivityService.deinit()
{
  v1 = *v0;

  v2 = direct field offset for LockScreenActivityService.logger;
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_15_1();
  (*(v3 + 8))(v0 + v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + direct field offset for LockScreenActivityService.callServices));

  v4 = *(*v0 + 144);
  type metadata accessor for LockScreenActivityService.ActivityState(255, *(v1 + 80), *(v1 + 88), v5);
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_15_1();
  (*(v6 + 8))(v0 + v4);
  return v0;
}

uint64_t LockScreenActivityService.__deallocating_deinit()
{
  LockScreenActivityService.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for LockScreenActivityService(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v4 <= 0x3F)
  {
    type metadata accessor for LockScreenActivityService.ActivityState(255, *(a1 + 80), *(a1 + 88), v3);
    result = type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata completion function for LockScreenActivityService.ActivityState(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LockScreenActivityService.ActivityState(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
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
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
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

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void storeEnumTagSinglePayload for LockScreenActivityService.ActivityState(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t objectdestroy_19Tm()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in LockScreenActivityService._startActivity(with:)()
{
  OUTLINED_FUNCTION_9();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_92(v3);
  *v4 = v5;
  v4[1] = partial apply for closure #1 in LockScreenActivityService.init(logger:activityController:callServices:updateActivityInterval:);

  return closure #1 in closure #1 in LockScreenActivityService._startActivity(with:)(v2, v1);
}

void MultiwayViewController.testing_callStatusDidChange(_:)(int a1)
{
  v2 = v1;
  v4 = MultiwayViewController.currentTest()();
  if (v4 != 4)
  {
    v5 = v4;
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.conversationKit);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      type metadata accessor for TUCallStatus(0);
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1BBC58000, v7, v8, "[Testing] call status did change %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    if (v5 == 1 && a1 == 4)
    {
      notify_post("ToggleCleethorpes");
      OUTLINED_FUNCTION_24();
      v15 = swift_allocObject();
      *(v15 + 16) = 1;
      *(v15 + 24) = v2;
      v16 = v2;
      MultiwayViewController.executeAfterDelay(_:)(partial apply for closure #1 in MultiwayViewController.testing_callStatusDidChange(_:), v15);
    }
  }

  OUTLINED_FUNCTION_1_3();
}

uint64_t MultiwayViewController.currentTest()()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = outlined bridged method (mbnn) of @objc UIApplication.isRunningTest(_:)(0xD000000000000019, 0x80000001BC501FA0, v1);

  if (v2)
  {
    return 0;
  }

  v4 = [v0 sharedApplication];
  v5 = outlined bridged method (mbnn) of @objc UIApplication.isRunningTest(_:)(0xD00000000000001ALL, 0x80000001BC501F80, v4);

  if (v5)
  {
    return 1;
  }

  v6 = [v0 sharedApplication];
  v7 = outlined bridged method (mbnn) of @objc UIApplication.isRunningTest(_:)(0xD000000000000015, 0x80000001BC501F60, v6);

  if (v7)
  {
    return 2;
  }

  v8 = [v0 sharedApplication];
  v9 = outlined bridged method (mbnn) of @objc UIApplication.isRunningTest(_:)(0xD000000000000012, 0x80000001BC501F40, v8);

  if (v9)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t MultiwayViewController.executeAfterDelay(_:)(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  type metadata accessor for OS_dispatch_queue();
  v16 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)(2.0);
  v21 = *(v10 + 8);
  v21(v12, v9);
  v17 = swift_allocObject();
  *(v17 + 16) = v22;
  *(v17 + 24) = a2;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_81;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1BFB21510](v15, v8, v5, v18);
  _Block_release(v18);

  (*(v25 + 8))(v5, v3);
  (*(v23 + 8))(v8, v24);
  return (v21)(v15, v9);
}

Swift::Void __swiftcall MultiwayViewController.testing_requestingLocalPreviewMinimize()()
{
  v0 = MultiwayViewController.currentTest()();
  if (v0 != 4)
  {
    v1 = v0;
    if (one-time initialization token for conversationKit != -1)
    {
      OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.conversationKit);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_18_0(v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BBC58000, v3, v4, "[Testing] requesting local preview minimize", v5, 2u);
      OUTLINED_FUNCTION_27();
    }

    if (v1 <= 1u)
    {
      v6 = [objc_opt_self() sharedApplication];
      v7 = MEMORY[0x1BFB209B0](0xD000000000000014, 0x80000001BC5129E0);
      v10 = v7;
      if (v1)
      {
        v8 = 0xD00000000000001ALL;
      }

      else
      {
        v8 = 0xD000000000000019;
      }

      if (v1)
      {
        v9 = "FaceTimeEndActiveCall";
      }

      else
      {
        v9 = "FaceTimeAnswerIncomingCall";
      }

      outlined bridged method (mnbnn) of @objc UIApplication.startedSubTest(_:forTest:)(v7, v8, v9 | 0x8000000000000000, v6, &selRef_startedSubTest_forTest_);
    }
  }
}

Swift::Void __swiftcall MultiwayViewController.testing_localPreviewDidFinishMinimize()()
{
  v1 = v0;
  v2 = MultiwayViewController.currentTest()();
  v3 = v2;
  v4 = v2;
  if (one-time initialization token for conversationKit != -1)
  {
    OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.conversationKit);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_18_0(v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BBC58000, v6, v7, "[Testing] did finish local preview minimize", v8, 2u);
    OUTLINED_FUNCTION_27();
  }

  switch(v3)
  {
    case 0:
      goto LABEL_7;
    case 1:
      v9 = [objc_opt_self() sharedApplication];
      v10 = MEMORY[0x1BFB209B0](0x652D6F742D646E65, 0xEA0000000000646ELL);
      outlined bridged method (mnbnn) of @objc UIApplication.startedSubTest(_:forTest:)(v10, 0xD00000000000001ALL, 0x80000001BC501F80, v9, &selRef_finishedSubTest_forTest_);

LABEL_7:
      v11 = [objc_opt_self() sharedApplication];
      v12 = MEMORY[0x1BFB209B0](0xD000000000000014, 0x80000001BC5129E0);
      v13 = v12;
      v14 = "FaceTimeAnswerIncomingCall";
      if (v4)
      {
        v15 = 0xD00000000000001ALL;
      }

      else
      {
        v15 = 0xD000000000000019;
      }

      if (v4)
      {
        v14 = "FaceTimeEndActiveCall";
      }

      outlined bridged method (mnbnn) of @objc UIApplication.startedSubTest(_:forTest:)(v12, v15, v14 | 0x8000000000000000, v11, &selRef_finishedSubTest_forTest_);

      ConversationController.leaveConversation(reason:)();
      return;
    case 2:
      OUTLINED_FUNCTION_24();
      v16 = swift_allocObject();
      *(v16 + 16) = 2;
      *(v16 + 24) = v1;
      v17 = v1;
      v18 = partial apply for closure #1 in MultiwayViewController.testing_localPreviewDidFinishMinimize();
      goto LABEL_15;
    case 3:
      v16 = swift_allocObject();
      *(v16 + 16) = v1;
      *(v16 + 24) = 3;
      v19 = v1;
      v18 = partial apply for closure #2 in MultiwayViewController.testing_localPreviewDidFinishMinimize();
LABEL_15:
      MultiwayViewController.executeAfterDelay(_:)(v18, v16);

      break;
    default:
      return;
  }
}

void closure #1 in MultiwayViewController.testing_callStatusDidChange(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() sharedApplication];
  v8 = MEMORY[0x1BFB209B0](a3, a4);
  v9 = 0xD000000000000019;
  v10 = "FaceTimeAnswerIncomingCall";
  v11 = v8;
  switch(a1)
  {
    case 1:
      v10 = "FaceTimeEndActiveCall";
      v9 = 0xD00000000000001ALL;
      break;
    case 2:
      v10 = "FaceTimeSwapCamera";
      v9 = 0xD000000000000015;
      break;
    case 3:
      v10 = "onFactory";
      v9 = 0xD000000000000012;
      break;
    default:
      break;
  }

  outlined bridged method (mnbnn) of @objc UIApplication.startedSubTest(_:forTest:)(v8, v9, v10 | 0x8000000000000000, v7, &selRef_startedSubTest_forTest_);

  ConversationController.leaveConversation(reason:)();
}

void closure #2 in MultiwayViewController.testing_localPreviewDidFinishMinimize()(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for localPreviewDidFinishRotationAnimation != -1)
  {
    swift_once();
  }

  [v4 addObserver:a1 selector:sel_testing_didFinishLocalPreviewRotationAnimation name:static Strings.Notifications.localPreviewDidFinishRotationAnimation object:0];

  v5 = [objc_opt_self() sharedApplication];
  v6 = MEMORY[0x1BFB209B0](0x6D61632D70617773, 0xEB00000000617265);
  v7 = 0xD000000000000019;
  v8 = "FaceTimeAnswerIncomingCall";
  v9 = v6;
  switch(a2)
  {
    case 1:
      v8 = "FaceTimeEndActiveCall";
      v7 = 0xD00000000000001ALL;
      break;
    case 2:
      v8 = "FaceTimeSwapCamera";
      v7 = 0xD000000000000015;
      break;
    case 3:
      v8 = "onFactory";
      v7 = 0xD000000000000012;
      break;
    default:
      break;
  }

  outlined bridged method (mnbnn) of @objc UIApplication.startedSubTest(_:forTest:)(v6, v7, v8 | 0x8000000000000000, v5, &selRef_startedSubTest_forTest_);

  ConversationController.swapLocalParticipantCamera()();
}

void MultiwayViewController.testing_didFinishLocalPreviewRotationAnimation()()
{
  v0 = 0xD000000000000012;
  v1 = MultiwayViewController.currentTest()();
  v2 = 0;
  v3 = "FaceTimeAnswerIncomingCall";
  switch(v1)
  {
    case 1:
      v2 = 0;
      v3 = "FaceTimeEndActiveCall";
      goto LABEL_5;
    case 2:
      v2 = 0;
      v3 = "FaceTimeSwapCamera";
      goto LABEL_5;
    case 3:
      v3 = "onFactory";
      v2 = 1;
      goto LABEL_5;
    case 4:
      return;
    default:
LABEL_5:
      v4 = 0x80000001BC501F40;
      if (v2 && (v3 | 0x8000000000000000) == 0x80000001BC501F40)
      {
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return;
        }
      }

      if (one-time initialization token for conversationKit != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.conversationKit);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1BBC58000, v7, v8, "[Testing] did finish local preview rotation", v9, 2u);
        MEMORY[0x1BFB23DF0](v9, -1, -1);
      }

      v10 = [objc_opt_self() sharedApplication];
      v11 = MEMORY[0x1BFB209B0](0x6D61632D70617773, 0xEB00000000617265);
      v12 = v11;
      switch(v1)
      {
        case 1:
          v4 = 0x80000001BC501F80;
          v0 = 0xD00000000000001ALL;
          break;
        case 2:
          v4 = 0x80000001BC501F60;
          v0 = 0xD000000000000015;
          break;
        case 3:
          break;
        default:
          v4 = 0x80000001BC501FA0;
          v0 = 0xD000000000000019;
          break;
      }

      outlined bridged method (mnbnn) of @objc UIApplication.startedSubTest(_:forTest:)(v11, v0, v4, v10, &selRef_finishedSubTest_forTest_);

      ConversationController.leaveConversation(reason:)();
      return;
  }
}

Swift::Void __swiftcall MultiwayViewController.testing_transitionedToInactiveState()()
{
  v0 = 0xD000000000000015;
  v1 = MultiwayViewController.currentTest()();
  v2 = 0;
  v3 = "FaceTimeAnswerIncomingCall";
  switch(v1)
  {
    case 1:
      v2 = 0;
      v3 = "FaceTimeEndActiveCall";
      goto LABEL_6;
    case 2:
      v3 = "FaceTimeSwapCamera";
      v2 = 1;
      goto LABEL_6;
    case 3:
      v2 = 0;
      v3 = "onFactory";
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_1_3();
      return;
    default:
LABEL_6:
      v4 = 0x80000001BC501F60;
      if (v2 && (v3 | 0x8000000000000000) == 0x80000001BC501F60)
      {
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v6 = 0x80000001BC501F60;
      v7 = [objc_opt_self() sharedApplication];
      v8 = MEMORY[0x1BFB209B0](0x6C6C61632D646E65, 0xE800000000000000);
      v9 = v8;
      v10 = 0xD000000000000015;
      switch(v1)
      {
        case 1:
          v6 = 0x80000001BC501F80;
          v10 = 0xD00000000000001ALL;
          break;
        case 2:
          break;
        case 3:
          v6 = 0x80000001BC501F40;
          v10 = 0xD000000000000012;
          break;
        default:
          v6 = 0x80000001BC501FA0;
          v10 = 0xD000000000000019;
          break;
      }

      outlined bridged method (mnbnn) of @objc UIApplication.startedSubTest(_:forTest:)(v8, v10, v6, v7, &selRef_finishedSubTest_forTest_);

LABEL_15:
      if (one-time initialization token for conversationKit != -1)
      {
        OUTLINED_FUNCTION_2_9(&one-time initialization token for conversationKit);
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.conversationKit);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_18_0(v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1BBC58000, v12, v13, "[Testing] did transition to inactive state", v14, 2u);
        OUTLINED_FUNCTION_27();
      }

      v15 = [objc_opt_self() sharedApplication];
      switch(v1)
      {
        case 1:
          v4 = 0x80000001BC501F80;
          v0 = 0xD00000000000001ALL;
          break;
        case 2:
          break;
        case 3:
          v4 = 0x80000001BC501F40;
          v0 = 0xD000000000000012;
          break;
        default:
          v4 = 0x80000001BC501FA0;
          v0 = 0xD000000000000019;
          break;
      }

      outlined bridged method (mbnn) of @objc UIApplication.finishedTest(_:)(v0, v4, v15);
      OUTLINED_FUNCTION_1_3();

      return;
  }
}

id outlined bridged method (mbnn) of @objc UIApplication.isRunningTest(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  v5 = [a3 isRunningTest_];

  return v5;
}

void outlined bridged method (mnbnn) of @objc UIApplication.startedSubTest(_:forTest:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  v8 = MEMORY[0x1BFB209B0](a2, a3);

  [a4 *a5];
}

void outlined bridged method (mbnn) of @objc UIApplication.finishedTest(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1BFB209B0](a1);

  [a3 finishedTest_];
}

double CGFloat.rounded(_:toScale:)(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 * a3;
  v17 = v11;
  (*(v7 + 16))(v10, a1, v6, v8);
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == *MEMORY[0x1E69E7038])
  {
    v13 = round(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7030])
  {
    v13 = rint(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7040])
  {
    v13 = ceil(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7048])
  {
    v13 = floor(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7020])
  {
    v13 = trunc(v11);
  }

  else if (v12 == *MEMORY[0x1E69E7028])
  {
    v13 = ceil(v11);
    v14 = floor(v11);
    if (v11 < 0.0)
    {
      v13 = v14;
    }
  }

  else
  {
    Double._roundSlowPath(_:)();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  return v13 / a2;
}

double CGFloat.roundedToDisplay.getter(double a1)
{
  type metadata accessor for UIView();
  v2 = static UIView.screenScale.getter();
  return round(v2 * a1) / v2;
}

double CGFloat.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3)
{
  v5 = [a2 traitCollection];
  [v5 displayScale];
  v7 = CGFloat.rounded(_:toScale:)(a1, v6, a3);

  return v7;
}

{
  [a2 displayScale];

  return CGFloat.rounded(_:toScale:)(a1, v5, a3);
}

double CGFloat.rounded(_:toScaleOf:)(uint64_t a1, void *a2, double a3)
{
  swift_getObjectType();

  return specialized CGFloat.rounded(_:toScaleOf:)(a1, a2, a3);
}

double specialized CGFloat.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3)
{
  v5 = [a2 traitCollection];
  [v5 displayScale];
  v7 = CGFloat.rounded(_:toScale:)(a1, v6, a3);

  return v7;
}

id isTrue(_:_:)(id result, void *a2)
{
  if ((result & 1) == 0)
  {
    swift_willThrow();
    return a2;
  }

  return result;
}

void ShareNameAndPhotoControlsRecipeGenerator.shareNameAndPhotoRecipe(nameAndPhotoUtilities:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v5 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_188();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v63 - v11;
  type metadata accessor for NSAttributedString();
  v12 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_1_143();
  v13.super.isa = v12;
  v16 = OUTLINED_FUNCTION_17_0(0xD000000000000021, 0x80000001BC501D20, v14, v15, v13);
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  isa = NSAttributedString.__allocating_init(string:)(v19).super.isa;
  v20 = (a1 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalDisplayName);
  swift_beginAccess();
  v21 = v20[1];
  if (v21)
  {
    v22 = *v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BC4BAC30;

    v24._countAndFlagsBits = v22;
    v24._object = v21;
    v25.super.isa = NSAttributedString.__allocating_init(string:)(v24).super.isa;
    v63 = v23;
    *(v23 + 32) = v25;
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
  type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_9_3();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BC4BA940;
  v65 = v26;
  swift_storeEnumTagMultiPayload();
  v27 = OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalAvatarView;
  swift_beginAccess();
  v28 = *(a1 + v27);
  if (v28)
  {
    v29 = [v28 hash];
  }

  else
  {
    v29 = 0;
  }

  v70 = 12;
  v71 = 0u;
  v72 = 0u;
  v73 = 7;
  v30 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  v34 = v3;
  v35 = v5[9];
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v30);
  v39 = (v2 + v5[10]);
  v40.n128_f64[0] = OUTLINED_FUNCTION_2_139(v5[15]);
  *(v2 + v5[16]) = 0;
  v41 = v2 + v5[17];
  v42 = (v2 + v5[18]);
  *v42 = 1;
  OUTLINED_FUNCTION_13_7(v42, v40);
  outlined init with copy of ConversationControlsType(&v70, v2);
  v2[6] = 0;
  v2[7] = v28;
  v2[8] = 0;
  v2[9] = v29;
  v43 = v63;
  v2[10] = isa;
  v2[11] = v43;
  v39[1] = 0;
  v39[2] = 0;
  *v39 = 0;
  v44 = v28;
  outlined assign with copy of AttributedString?(v34, v2 + v35);
  OUTLINED_FUNCTION_9_83();
  *(v2 + v45) = 1;
  *(v2 + v5[14]) = 1;
  *v41 = 0;
  *(v41 + 1) = 0;
  v41[16] = -1;
  v46 = v65;
  v47 = *(v65 + 16);
  if (v47 <= 2)
  {
    outlined consume of ConversationControlsRecipe.View?(v28, 0);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v34, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    outlined destroy of ConversationControlsType(&v70);
    *v30 = v46;
    v56 = OUTLINED_FUNCTION_4_124();
    v57 = v66;
    outlined init with copy of ConversationControlsRecipe(v56, v66);
    OUTLINED_FUNCTION_258(v57, 0);
    outlined destroy of ConversationControlsRecipe(v2);
  }

  else
  {
    v63 = v29;
    isa = v34;
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, &static Logger.conversationControls);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v68 = v47;
      v69 = v52;
      *v51 = 136315138;
      v53 = String.init<A>(reflecting:)();
      v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v69);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_1BBC58000, v49, v50, "Too many trailing actions (%s)", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    outlined consume of ConversationControlsRecipe.View?(v28, 0);

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(isa, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    outlined destroy of ConversationControlsType(&v70);
    outlined destroy of ConversationControlsRecipe(v2);
    v57 = v66;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v5);
  }

  v61 = v67;
  if (__swift_getEnumTagSinglePayload(v57, 1, v5) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v57, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    v62 = 1;
  }

  else
  {
    outlined init with take of ConversationControlsRecipe(v57, v61);
    v62 = 0;
  }

  OUTLINED_FUNCTION_258(v61, v62);
  OUTLINED_FUNCTION_30_0();
}

void ShareNameAndPhotoControlsRecipeGenerator.shareNameRecipe(nameAndPhotoUtilities:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v5 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_7();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_188();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v54 = &isa - v11;
  type metadata accessor for NSAttributedString();
  v12 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_1_143();
  v13.super.isa = v12;
  v16 = OUTLINED_FUNCTION_17_0(0xD000000000000017, 0x80000001BC501D00, v14, v15, v13);
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  isa = NSAttributedString.__allocating_init(string:)(v19).super.isa;
  v20 = (a1 + OBJC_IVAR____TtC15ConversationKit21NameAndPhotoUtilities_personalDisplayName);
  swift_beginAccess();
  v21 = v20[1];
  if (v21)
  {
    v22 = *v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BC4BAC30;

    v24._countAndFlagsBits = v22;
    v24._object = v21;
    *(v23 + 32) = NSAttributedString.__allocating_init(string:)(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
  type metadata accessor for ConversationControlsAction(0);
  OUTLINED_FUNCTION_9_3();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BC4BA940;
  swift_storeEnumTagMultiPayload();
  v58 = 13;
  v59 = 0u;
  v60 = 0u;
  v61 = 7;
  v26 = type metadata accessor for AttributedString();
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  OUTLINED_FUNCTION_10_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  v33.n128_f64[0] = OUTLINED_FUNCTION_2_139(v5[15]);
  *(v2 + v5[16]) = 0;
  v34 = v2 + v5[17];
  v35 = (v2 + v5[18]);
  *v35 = 1;
  OUTLINED_FUNCTION_13_7(v35, v33);
  outlined init with copy of ConversationControlsType(&v58, v2);
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = isa;
  *(v2 + 88) = v23;
  OUTLINED_FUNCTION_17_54();
  OUTLINED_FUNCTION_9_83();
  *(v2 + v36) = 1;
  *(v2 + v5[14]) = 1;
  *v34 = 0;
  *(v34 + 8) = 0;
  *(v34 + 16) = -1;
  v37 = *(v25 + 16);
  if (v37 <= 2)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    outlined destroy of ConversationControlsType(&v58);
    *v26 = v25;
    v51 = OUTLINED_FUNCTION_4_124();
    v47 = v54;
    outlined init with copy of ConversationControlsRecipe(v51, v54);
    OUTLINED_FUNCTION_258(v47, 0);
    outlined destroy of ConversationControlsRecipe(v2);
    v46 = v55;
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, &static Logger.conversationControls);

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56 = v37;
      v57 = v42;
      *v41 = 136315138;
      v43 = String.init<A>(reflecting:)();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v57);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1BBC58000, v39, v40, "Too many trailing actions (%s)", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_27();
    }

    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v3, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    outlined destroy of ConversationControlsType(&v58);
    v46 = v55;
    outlined destroy of ConversationControlsRecipe(v2);
    v47 = v54;
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v5);
  }

  if (__swift_getEnumTagSinglePayload(v47, 1, v5) == 1)
  {
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v47, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
    v52 = 1;
  }

  else
  {
    outlined init with take of ConversationControlsRecipe(v47, v46);
    v52 = 0;
  }

  OUTLINED_FUNCTION_258(v46, v52);
  OUTLINED_FUNCTION_30_0();
}

void ShareNameAndPhotoControlsRecipeGenerator.incomingNameUpdateRecipe(nameAndPhotoUtilities:controlsManager:)(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = type metadata accessor for ConversationControlsRecipe(0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_188();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  v71 = &v68 - v12;
  type metadata accessor for NSAttributedString();
  v13 = [objc_opt_self() conversationKit];
  OUTLINED_FUNCTION_1_143();
  v14.super.isa = v13;
  v17 = OUTLINED_FUNCTION_17_0(0xD00000000000001DLL, 0x80000001BC501CE0, v15, v16, v14);
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  v21.super.isa = NSAttributedString.__allocating_init(string:)(v20).super.isa;
  v22 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x2A0))();
  v24 = NameAndPhotoUtilities.pendingIncomingName(from:)(v22, v23);
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26)
  {
    v70 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v27 = swift_allocObject();
    v69 = v27;
    *(v27 + 16) = xmmword_1BC4BAC30;
    v28._countAndFlagsBits = v24;
    v28._object = v26;
    *(v27 + 32) = NSAttributedString.__allocating_init(string:)(v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMd, &_ss23_ContiguousArrayStorageCy15ConversationKit0D14ControlsActionOGMR);
    type metadata accessor for ConversationControlsAction(0);
    OUTLINED_FUNCTION_9_3();
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1BC4BA940;
    swift_storeEnumTagMultiPayload();
    v74 = 13;
    v75 = 0u;
    v76 = 0u;
    v77 = 7;
    v30 = type metadata accessor for AttributedString();
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
    OUTLINED_FUNCTION_10_0();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
    v37.n128_f64[0] = OUTLINED_FUNCTION_2_139(v6[15]);
    *(v2 + v6[16]) = 0;
    v38 = v3;
    isa = v21.super.isa;
    v40 = v2 + v6[17];
    v41 = (v2 + v6[18]);
    *v41 = 1;
    OUTLINED_FUNCTION_13_7(v41, v37);
    outlined init with copy of ConversationControlsType(&v74, v2);
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = isa;
    *(v2 + 88) = v69;
    OUTLINED_FUNCTION_17_54();
    *(v2 + v6[11]) = 2;
    *(v2 + v6[12]) = 0;
    *(v2 + v6[13]) = 1;
    *(v2 + v6[14]) = 1;
    *v40 = 0;
    *(v40 + 8) = 0;
    *(v40 + 16) = -1;
    v42 = *(v29 + 16);
    if (v42 <= 2)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      outlined destroy of ConversationControlsType(&v74);
      *v30 = v29;
      v65 = OUTLINED_FUNCTION_4_124();
      v52 = v71;
      outlined init with copy of ConversationControlsRecipe(v65, v71);
      __swift_storeEnumTagSinglePayload(v52, 0, 1, v6);
      outlined destroy of ConversationControlsRecipe(v2);
      v51 = v70;
    }

    else
    {
      if (one-time initialization token for conversationControls != -1)
      {
        OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, &static Logger.conversationControls);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v72 = v42;
        v73 = v47;
        *v46 = 136315138;
        v48 = String.init<A>(reflecting:)();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v73);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_1BBC58000, v44, v45, "Too many trailing actions (%s)", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_27();
      }

      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v38, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
      outlined destroy of ConversationControlsType(&v74);
      v51 = v70;
      v52 = v71;
      outlined destroy of ConversationControlsRecipe(v2);
      OUTLINED_FUNCTION_10_0();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v6);
    }

    if (__swift_getEnumTagSinglePayload(v52, 1, v6) == 1)
    {
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v52, &_s15ConversationKit0A14ControlsRecipeVSgMd, &_s15ConversationKit0A14ControlsRecipeVSgMR);
      v66 = v51;
      v67 = 1;
    }

    else
    {
      outlined init with take of ConversationControlsRecipe(v52, v51);
      v66 = v51;
      v67 = 0;
    }

    __swift_storeEnumTagSinglePayload(v66, v67, 1, v6);
    OUTLINED_FUNCTION_30_0();
  }

  else
  {
    if (one-time initialization token for conversationControls != -1)
    {
      OUTLINED_FUNCTION_0_0(&one-time initialization token for conversationControls);
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, &static Logger.conversationControls);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1BBC58000, v57, v58, "Failed to create recipe for .incomingNameUpdate since failed to find pending incoming name for call", v59, 2u);
      OUTLINED_FUNCTION_27();
    }

    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_30_0();

    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
  }
}

unint64_t PlaceholderCall.Purpose.debugDescription.getter()
{
  result = 0x69636570736E752ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int PlaceholderCall.Purpose.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](v1);
  return Hasher._finalize()();
}

uint64_t PlaceholderCall.__allocating_init(for:placeholderCallCenter:purpose:)(uint64_t a1, void *a2, char *a3)
{
  v6 = swift_allocObject();
  PlaceholderCall.init(for:placeholderCallCenter:purpose:)(a1, a2, a3);
  return v6;
}

uint64_t PlaceholderCall.init(for:placeholderCallCenter:purpose:)(uint64_t a1, void *a2, char *a3)
{
  v6 = *a3;
  *(v3 + 17) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 16842752;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC15ConversationKit15PlaceholderCall_conversationUUID;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v8 + 32))(v3 + v7, a1);
  swift_unknownObjectWeakAssign();

  *(v3 + 16) = v6;
  return v3;
}

uint64_t PlaceholderCall.willSetAVModeSoon.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_6_0(v2 + 17, a2);
  *(v2 + 17) = a1;
  return result;
}

uint64_t PlaceholderCall.desiredAVMode.getter()
{
  OUTLINED_FUNCTION_0_1();
  if ((*(v0 + 216))())
  {
    return 2;
  }

  OUTLINED_FUNCTION_0_1();
  result = 1;
  if (((*(v2 + 240))() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_1();
    if ((*(v3 + 264))())
    {
      return 0;
    }
  }

  return result;
}

void PlaceholderCall.bluetoothAudioFormat.didset(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 24) != a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      PlaceholderCallCenter.updateAVModeSoon(for:)();
    }
  }
}

void PlaceholderCall.bluetoothAudioFormat.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 24, a2);
  v4 = *(v2 + 24);
  *(v2 + 24) = a1;
  PlaceholderCall.bluetoothAudioFormat.didset(v4);
}

uint64_t PlaceholderCall.bluetoothAudioFormat.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_9_84(v1 + 24);
  v3[3] = *(v1 + 24);
  return OUTLINED_FUNCTION_28_3();
}

void PlaceholderCall.bluetoothAudioFormat.modify(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  PlaceholderCall.bluetoothAudioFormat.setter(*(*a1 + 24), a2);

  free(v2);
}

void PlaceholderCall.isSendingVideo.didset(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 32) != v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      PlaceholderCallCenter.updateAVModeSoon(for:)();
    }
  }
}

void PlaceholderCall.isSendingVideo.setter(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 32, a2);
  v4 = *(v2 + 32);
  *(v2 + 32) = a1;
  PlaceholderCall.isSendingVideo.didset(v4);
}

uint64_t PlaceholderCall.isSendingVideo.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_7(v3);
  OUTLINED_FUNCTION_9_84(v0 + 32);
  *(v1 + 32) = *(v0 + 32);
  return OUTLINED_FUNCTION_28_3();
}

void PlaceholderCall.isSharingScreen.didset(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 33) != v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      PlaceholderCallCenter.updateAVModeSoon(for:)();
    }
  }
}

void PlaceholderCall.isSharingScreen.setter(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 33, a2);
  v4 = *(v2 + 33);
  *(v2 + 33) = a1;
  PlaceholderCall.isSharingScreen.didset(v4);
}

uint64_t PlaceholderCall.isSharingScreen.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_7(v3);
  OUTLINED_FUNCTION_9_84(v0 + 33);
  *(v1 + 32) = *(v0 + 33);
  return OUTLINED_FUNCTION_28_3();
}

void PlaceholderCall.isUplinkMuted.didset(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 34) != v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      PlaceholderCallCenter.updateAVModeSoon(for:)();
    }
  }
}

void PlaceholderCall.isUplinkMuted.setter(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(v2 + 34, a2);
  v4 = *(v2 + 34);
  *(v2 + 34) = a1;
  PlaceholderCall.isUplinkMuted.didset(v4);
}

uint64_t PlaceholderCall.isUplinkMuted.modify()
{
  v2 = OUTLINED_FUNCTION_39_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_7(v3);
  OUTLINED_FUNCTION_9_84(v0 + 34);
  *(v1 + 32) = *(v0 + 34);
  return OUTLINED_FUNCTION_28_3();
}

void PlaceholderCall.isSendingVideo.modify(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 32), a2);

  free(v3);
}

uint64_t PlaceholderCall.shouldSuppressRingtone.setter(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_6_0(v2 + 35, a2);
  *(v2 + 35) = a1;
  return result;
}

void *PlaceholderCall.conversation.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    PlaceholderCallCenter.activeConversation(for:)();
    v3 = v2;

    return v3;
  }

  return result;
}

uint64_t PlaceholderCall.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit15PlaceholderCall_conversationUUID;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  MEMORY[0x1BFB23F10](v0 + OBJC_IVAR____TtC15ConversationKit15PlaceholderCall_placeholderCallCenter);
  return v0;
}

uint64_t PlaceholderCall.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit15PlaceholderCall_conversationUUID;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  MEMORY[0x1BFB23F10](v0 + OBJC_IVAR____TtC15ConversationKit15PlaceholderCall_placeholderCallCenter);

  return swift_deallocClassInstance();
}

uint64_t static PlaceholderCall.== infix(_:_:)(uint64_t a1)
{
  v1 = UUID.uuidString.getter();
  v3 = v2;
  if (v1 == UUID.uuidString.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t PlaceholderCall.basicCall.getter@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for PlaceholderBasicCall;
  a1[4] = lazy protocol witness table accessor for type PlaceholderBasicCall and conformance PlaceholderBasicCall();
  *a1 = v1;
}

void PlaceholderCall.cnk_disconnect(reason:)()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_15_51();
    PlaceholderCallCenter.disconnect(_:)();
  }
}

Swift::Void __swiftcall PlaceholderCall.cnk_answerOrJoin()()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_15_51();
    PlaceholderCallCenter.answer(_:)();
  }
}

void PlaceholderCall.setRemoteVideoPresentationState(_:)()
{
  OUTLINED_FUNCTION_14_55();

  v0 = UUID.uuidString.getter();
  MEMORY[0x1BFB20B10](v0);

  OUTLINED_FUNCTION_8_87("Fatal error", v1, v2, 0xD000000000000048, 0x80000001BC512AE0, "ConversationKit/PlaceholderCall.swift");
  __break(1u);
}

void PlaceholderCall.setScreenShareAttributes(_:)()
{
  OUTLINED_FUNCTION_14_55();

  v0 = UUID.uuidString.getter();
  MEMORY[0x1BFB20B10](v0);

  OUTLINED_FUNCTION_8_87("Fatal error", v1, v2, 0xD000000000000041, 0x80000001BC512B30, "ConversationKit/PlaceholderCall.swift");
  __break(1u);
}

void PlaceholderCall.setSharingScreen(_:attributes:)(char a1, void *a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    PlaceholderCallCenter.setSharingScreen(_:attributes:for:)(a1 & 1, a2);
  }
}

uint64_t PlaceholderCall.description.getter()
{
  _StringGuts.grow(_:)(33);
  v0 = _typeName(_:qualified:)();

  MEMORY[0x1BFB20B10](0x65736F7072757028, 0xEA0000000000203ALL);
  v1 = String.init<A>(describing:)();
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](0xD000000000000010, 0x80000001BC512B80);
  PlaceholderCall.conversation.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14TUConversationCSgMd, &_sSo14TUConversationCSgMR);
  v2 = String.init<A>(describing:)();
  MEMORY[0x1BFB20B10](v2);

  MEMORY[0x1BFB20B10](41, 0xE100000000000000);
  return v0;
}

uint64_t PlaceholderCall.status.getter()
{
  v0 = PlaceholderCall.conversation.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 state];
  if (v2 < 5)
  {
    v3 = dword_1BC4DD6B8[v2];

    return v3;
  }

  _StringGuts.grow(_:)(34);

  [v1 &selRef_inputDevices];
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v5);

  result = OUTLINED_FUNCTION_8_87("Fatal error", v6, v7, 0xD000000000000020, 0x80000001BC512BA0, "ConversationKit/PlaceholderCall.swift");
  __break(1u);
  return result;
}

uint64_t PlaceholderCall.uniqueProxyIdentifierUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15ConversationKit15PlaceholderCall_conversationUUID;
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

unint64_t lazy protocol witness table accessor for type PlaceholderBasicCall and conformance PlaceholderBasicCall()
{
  result = lazy protocol witness table cache variable for type PlaceholderBasicCall and conformance PlaceholderBasicCall;
  if (!lazy protocol witness table cache variable for type PlaceholderBasicCall and conformance PlaceholderBasicCall)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceholderBasicCall and conformance PlaceholderBasicCall);
  }

  return result;
}

uint64_t PlaceholderCall.callGroupUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = PlaceholderCall.conversation.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 groupUUID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

void *PlaceholderCall.displayName.getter()
{
  v0 = PlaceholderCall.conversation.getter();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 displayName];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v1;
}

id PlaceholderCall.handle.getter()
{
  v0 = PlaceholderCall.conversation.getter();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 localMember];

    if (v2)
    {
      v1 = [v2 handle];
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t PlaceholderCall.imageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t PlaceholderCall.isActive.getter()
{
  if (PlaceholderCall.isConnected.getter())
  {
    return 1;
  }

  return PlaceholderCall.isConnecting.getter();
}

void *PlaceholderCall.isConnected.getter()
{
  result = PlaceholderCall.conversation.getter();
  if (result)
  {
    v1 = result;
    v2 = [result state];

    return (v2 == 3);
  }

  return result;
}

void *PlaceholderCall.isConnecting.getter()
{
  result = PlaceholderCall.conversation.getter();
  if (result)
  {
    v1 = result;
    v2 = [result state];

    return (v2 == 2);
  }

  return result;
}

id PlaceholderCall.provider.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 providerManager];

  v2 = [v1 faceTimeProvider];
  return v2;
}

unint64_t PlaceholderCall.remoteParticipantHandles.getter()
{
  v0 = PlaceholderCall.conversation.getter();
  v1 = MEMORY[0x1E69E7CC0];
  if (!v0)
  {
LABEL_25:

    return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo8TUHandleC_SayAEGTt0g5(v1);
  }

  v2 = v0;
  v3 = [v0 remoteMembers];

  type metadata accessor for TUConversationMember();
  lazy protocol witness table accessor for type TUConversationMember and conformance NSObject(&lazy protocol witness table cache variable for type TUConversationMember and conformance NSObject, type metadata accessor for TUConversationMember, MEMORY[0x1E69E81B8]);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized Set.count.getter(v4);
  if (!v5)
  {

    goto LABEL_25;
  }

  v6 = v5;
  v42 = v1;
  specialized ContiguousArray.reserveCapacity(_:)();
  result = specialized Set.startIndex.getter();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = result;
    v11 = v8;
    v12 = v9;
    v13 = 0;
    v14 = v4 & 0xC000000000000001;
    while (!__OFADD__(v13++, 1))
    {
      v16 = OUTLINED_FUNCTION_7_8();
      specialized Set.subscript.getter(v16, v17, v18, v4);
      v20 = v19;
      v21 = [v19 handle];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      if (v14)
      {
        if (!v12)
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_7_8();
        v22 = __CocoaSet.index(after:)();
        v24 = v23;
        v25 = OUTLINED_FUNCTION_7_8();
        result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v25, v26, 1);
        v10 = v22;
        v11 = v24;
      }

      else
      {
        if (v12)
        {
          goto LABEL_34;
        }

        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        v27 = 1 << *(v4 + 32);
        if (v10 >= v27)
        {
          goto LABEL_29;
        }

        v28 = v10 >> 6;
        v29 = *(v4 + 56 + 8 * (v10 >> 6));
        if (((v29 >> v10) & 1) == 0)
        {
          goto LABEL_30;
        }

        if (*(v4 + 36) != v11)
        {
          goto LABEL_31;
        }

        v30 = v29 & (-2 << (v10 & 0x3F));
        if (v30)
        {
          v27 = __clz(__rbit64(v30)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v28 << 6;
          v32 = v28 + 1;
          v33 = (v4 + 64 + 8 * v28);
          while (v32 < (v27 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              v36 = OUTLINED_FUNCTION_7_8();
              result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v36, v37, 0);
              v27 = __clz(__rbit64(v34)) + v31;
              goto LABEL_21;
            }
          }

          v38 = OUTLINED_FUNCTION_7_8();
          result = outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v38, v39, 0);
        }

LABEL_21:
        v11 = *(v4 + 36);
        v10 = v27;
      }

      v12 = (v4 & 0xC000000000000001) != 0;
      if (v13 == v6)
      {

        v40 = OUTLINED_FUNCTION_7_8();
        outlined consume of Set<CallGameController.GameControllerEventBox>.Index._Variant(v40, v41, v14 != 0);
        v1 = v42;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

id PlaceholderCall.cnk_contactStoreConfiguration.getter()
{
  v0 = objc_opt_self();
  v1 = PlaceholderCall.conversation.getter();
  v2 = [v0 tu:v1 contactStoreConfigurationForConversation:?];

  return v2;
}

void (*protocol witness for Call.bluetoothAudioFormat.modify in conformance PlaceholderCall(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 208))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for Call.isSendingVideo.modify in conformance PlaceholderCall(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 232))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for Call.isSharingScreen.modify in conformance PlaceholderCall(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 256))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for Call.isUplinkMuted.modify in conformance PlaceholderCall(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 280))();
  return protocol witness for ControlsView.cnkContentAlpha.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

void (*protocol witness for Call.shouldSuppressRingtone.modify in conformance PlaceholderCall(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 304))();
  return protocol witness for ControlsView.recipe.modify in conformance SystemApertureOngoingTelephonyControlsView;
}

unint64_t type metadata accessor for TUConversationMember()
{
  result = lazy cache variable for type metadata for TUConversationMember;
  if (!lazy cache variable for type metadata for TUConversationMember)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUConversationMember);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaceholderCall.Purpose and conformance PlaceholderCall.Purpose()
{
  result = lazy protocol witness table cache variable for type PlaceholderCall.Purpose and conformance PlaceholderCall.Purpose;
  if (!lazy protocol witness table cache variable for type PlaceholderCall.Purpose and conformance PlaceholderCall.Purpose)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceholderCall.Purpose and conformance PlaceholderCall.Purpose);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PlaceholderCall(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TUConversationMember and conformance NSObject(&lazy protocol witness table cache variable for type PlaceholderCall and conformance PlaceholderCall, type metadata accessor for PlaceholderCall, &protocol conformance descriptor for PlaceholderCall);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type TUConversationMember and conformance NSObject(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for PlaceholderCall(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

_BYTE *storeEnumTagSinglePayload for PlaceholderCall.Purpose(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void *PlatformFeatureChecker.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_175(&one-time initialization token for shared);
  }

  return static PlatformFeatureChecker.shared;
}

uint64_t iPadFeatureSupportChecker.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

uint64_t static PlatformFeatureChecker.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_175(&one-time initialization token for shared);
  }

  swift_beginAccess();
  return outlined init with copy of IDSLookupManager(static PlatformFeatureChecker.shared, a1);
}

uint64_t static PlatformFeatureChecker.shared.setter(uint64_t *a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_175(&one-time initialization token for shared);
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(static PlatformFeatureChecker.shared, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*static PlatformFeatureChecker.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_0_175(&one-time initialization token for shared);
  }

  swift_beginAccess();
  return CallRecordingPillViewController.cancellable.modify;
}

uint64_t key path getter for static PlatformFeatureChecker.shared : PlatformFeatureChecker.Type@<X0>(uint64_t a1@<X8>)
{
  PlatformFeatureChecker.shared.unsafeMutableAddressor();
  swift_beginAccess();
  return outlined init with copy of IDSLookupManager(static PlatformFeatureChecker.shared, a1);
}

uint64_t key path setter for static PlatformFeatureChecker.shared : PlatformFeatureChecker.Type(uint64_t *a1)
{
  PlatformFeatureChecker.shared.unsafeMutableAddressor();
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(static PlatformFeatureChecker.shared, a1);
  return swift_endAccess();
}

uint64_t iPadFeatureSupportChecker.init()()
{
  result = v0;
  *(v0 + 16) = 1;
  return result;
}

uint64_t RecentsListViewController.tipKitDismissTip(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO18InvalidationReasonOSgMd, &_s6TipKit4TipsO18InvalidationReasonOSgMR);
  v3 = OUTLINED_FUNCTION_9_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v14 - v8;
  type metadata accessor for TPTipsHelper();
  static TPTipsHelper.taskQueue.getter();
  OUTLINED_FUNCTION_20();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  outlined init with copy of Tips.InvalidationReason?(a1, v9);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  outlined init with take of Tips.InvalidationReason?(v9, v12 + v11);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;

  dispatch thunk of TaskQueue.async(_:)();
}

void *RecentsListViewController.tipPopoverController.getter()
{
  if (one-time initialization token for tipUserInfo != -1)
  {
    OUTLINED_FUNCTION_9_85(&one-time initialization token for tipUserInfo);
  }

  if (!static RecentsListViewController.tipUserInfo)
  {
    return 0;
  }

  v0 = *(static RecentsListViewController.tipUserInfo + 2);
  v1 = v0;
  return v0;
}

uint64_t closure #1 in RecentsListViewController.tipKitStartObservation()(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for FaceTimeLinkTip();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for MainActor();
  v1[10] = static MainActor.shared.getter();
  type metadata accessor for TPTipsHelper();
  v3 = swift_task_alloc();
  v1[11] = v3;
  *v3 = v1;
  v3[1] = closure #1 in RecentsListViewController.tipKitStartObservation();

  return MEMORY[0x1EEE48730](v3);
}

uint64_t closure #1 in RecentsListViewController.tipKitStartObservation()()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v5 = v4;
  v2[12] = v6;

  dispatch thunk of Actor.unownedExecutor.getter();
  OUTLINED_FUNCTION_56_0();
  v2[13] = v9;
  v2[14] = v10;

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.tipKitStartObservation(), v8, v7);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = v0[12];
  dispatch thunk of TPTipsHelper.setup()();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    FaceTimeLinkTip.init()();
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = closure #1 in RecentsListViewController.tipKitStartObservation();
    v4 = v0[8];

    return specialized RecentsListViewController.observeTip<A>(_:)(v4);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v6();
  }
}

{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_16_12();
  v2 = *(v0 + 120);
  v3 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_44_0();
  v6(v5);
  OUTLINED_FUNCTION_14();
  v8 = *(v7 + 112);
  v9 = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.tipKitStartObservation(), v9, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t specialized RecentsListViewController.observeTip<A>(_:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for TPTipsHelper.Entry();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for FaceTimeLinkTip();
  v2[15] = v5;
  v6 = *(v5 - 8);
  v2[16] = v6;
  v2[17] = *(v6 + 64);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[19] = swift_task_alloc();
  v2[20] = type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[22] = v8;
  v2[23] = v7;

  return MEMORY[0x1EEE6DFA0](specialized RecentsListViewController.observeTip<A>(_:), v8, v7);
}

uint64_t specialized RecentsListViewController.observeTip<A>(_:)()
{
  OUTLINED_FUNCTION_21_0();
  v1 = v0[19];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[7];
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v7);
  OUTLINED_FUNCTION_20();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v5 + 16);
  v0[24] = v9;
  v0[25] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v6, v4);

  v10 = static MainActor.shared.getter();
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  (*(v5 + 32))(v12 + v11, v2, v4);
  *(v12 + ((v3 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
  v0[26] = v14;
  type metadata accessor for TPTipsHelper();
  v15 = swift_task_alloc();
  v0[27] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_130(v15);
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE48730](v16);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v5 = v4;
  *(v7 + 224) = v6;

  OUTLINED_FUNCTION_14();
  v9 = *(v8 + 184);
  v10 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](specialized RecentsListViewController.observeTip<A>(_:), v10, v9);
}

{
  v1 = v0[28];
  v14 = v0[24];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v15 = v0[12];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[7];

  (*(v6 + 104))(v5, *MEMORY[0x1E69D88F0], v7);
  v0[5] = v3;
  OUTLINED_FUNCTION_1_145();
  v0[6] = lazy protocol witness table accessor for type Tips.InvalidationReason and conformance Tips.InvalidationReason(v9, v10, MEMORY[0x1E69D8908]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  v14(boxed_opaque_existential_1, v8, v3);

  TPTipsHelper.Entry.init(_:tip:observationTask:)();
  dispatch thunk of TPTipsHelper.addEntry(_:)();

  (*(v4 + 8))(v2, v15);

  OUTLINED_FUNCTION_13();

  return v12();
}

uint64_t closure #1 in RecentsListViewController.tipKitStopObservation()(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for TPTipsHelper.Entry.Kind();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for MainActor();
  v1[10] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[11] = v4;
  v1[12] = v3;

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.tipKitStopObservation(), v4, v3);
}

uint64_t closure #1 in RecentsListViewController.tipKitStopObservation()()
{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_14_56();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[14] = v2;
    *v2 = v0;
    OUTLINED_FUNCTION_130(v2);

    return RecentsListViewController.dismissPopover()();
  }

  else
  {
    type metadata accessor for TPTipsHelper();
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v5 = OUTLINED_FUNCTION_5_119(v4);

    return MEMORY[0x1EEE48730](v5);
  }
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v0;
  OUTLINED_FUNCTION_4_6();
  *v7 = v6;

  type metadata accessor for TPTipsHelper();
  v8 = swift_task_alloc();
  *(v2 + 120) = v8;
  *v8 = v6;
  v9 = OUTLINED_FUNCTION_5_119(v8);

  return MEMORY[0x1EEE48730](v9);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_14_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14_1();
  *v5 = v4;
  *(v7 + 128) = v6;

  OUTLINED_FUNCTION_14();
  v9 = *(v8 + 96);
  v10 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.tipKitStopObservation(), v10, v9);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[16];
  (*(v0[7] + 104))(v0[8], *MEMORY[0x1E69D88F0], v0[6]);
  dispatch thunk of TPTipsHelper.removeEntries(_:)();

  v2 = OUTLINED_FUNCTION_44_0();
  v3(v2);

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.tipKitStopObservation(), 0, 0);
}

{
  OUTLINED_FUNCTION_24_0();
  *(v0 + 136) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.tipKitStopObservation(), v2, v1);
}

{
  OUTLINED_FUNCTION_24_0();

  if (one-time initialization token for tipUserInfo != -1)
  {
    OUTLINED_FUNCTION_9_85(&one-time initialization token for tipUserInfo);
  }

  type metadata accessor for RecentsListViewController.FaceTimeLinkTipUserInfo();
  OUTLINED_FUNCTION_20();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  static RecentsListViewController.tipUserInfo = v1;

  v2 = *(v0 + 88);
  v3 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.tipKitStopObservation(), v2, v3);
}

{
  OUTLINED_FUNCTION_24_0();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t partial apply for closure #1 in RecentsListViewController.tipKitStopObservation()()
{
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_92(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_130(v2);

  return closure #1 in RecentsListViewController.tipKitStopObservation()(v0);
}

uint64_t partial apply for closure #1 in RecentsListViewController.tipKitStartObservation()()
{
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_92(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_130(v2);

  return closure #1 in RecentsListViewController.tipKitStartObservation()(v0);
}

uint64_t RecentsListViewController.dismissPopover()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](RecentsListViewController.dismissPopover(), v3, v2);
}

{
  OUTLINED_FUNCTION_9();
  v1 = RecentsListViewController.tipPopoverController.getter();
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x678))();
    v4 = [v3 collectionViewLayout];

    [v4 invalidateLayout];
    v5 = static MainActor.shared.getter();
    *(v0 + 64) = v5;
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *(v6 + 16) = v2;
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = RecentsListViewController.dismissPopover();
    v8 = MEMORY[0x1E69E85E0];
    v9 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v7, v5, v8, 0xD000000000000010, 0x80000001BC512DF0, partial apply for closure #1 in RecentsListViewController.dismissPopover(), v6, v9);
  }

  else
  {

    OUTLINED_FUNCTION_13();

    return v10();
  }
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_16_12();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 48);
  v6 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](RecentsListViewController.dismissPopover(), v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_13();

  return v2();
}

uint64_t closure #1 in RecentsListViewController.tipKitDismissTip(_:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO18InvalidationReasonOSg_AFtMd, &_s6TipKit4TipsO18InvalidationReasonOSg_AFtMR);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for FaceTimeLinkTip();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO18InvalidationReasonOSgMd, &_s6TipKit4TipsO18InvalidationReasonOSgMR);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for Tips.InvalidationReason();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[20] = v6;
  v2[21] = v5;

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.tipKitDismissTip(_:), v6, v5);
}

uint64_t closure #1 in RecentsListViewController.tipKitDismissTip(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_21_0();
  v13 = v12[14];
  v14 = v12[15];
  outlined init with copy of Tips.InvalidationReason?(v12[5], v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    outlined destroy of CallControlsService?(v12[14], &_s6TipKit4TipsO18InvalidationReasonOSgMd, &_s6TipKit4TipsO18InvalidationReasonOSgMR);
  }

  else
  {
    v16 = v12[10];
    v15 = v12[11];
    v17 = v12[9];
    (*(v12[16] + 32))(v12[18], v12[14], v12[15]);
    FaceTimeLinkTip.init()();
    OUTLINED_FUNCTION_1_145();
    lazy protocol witness table accessor for type Tips.InvalidationReason and conformance Tips.InvalidationReason(v18, v19, MEMORY[0x1E69D8908]);
    Tip.invalidate(reason:)();
    (*(v16 + 8))(v15, v17);
    v20 = OUTLINED_FUNCTION_44_0();
    v21(v20);
  }

  v22 = v12[15];
  v23 = v12[13];
  v25 = v12[7];
  v24 = v12[8];
  v26 = v12[5];
  (*(v12[16] + 104))(v23, *MEMORY[0x1E6982AE0], v22);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
  v27 = *(v25 + 48);
  outlined init with copy of Tips.InvalidationReason?(v26, v24);
  outlined init with copy of Tips.InvalidationReason?(v23, v24 + v27);
  if (OUTLINED_FUNCTION_20_7(v24) != 1)
  {
    outlined init with copy of Tips.InvalidationReason?(v12[8], v12[12]);
    if (OUTLINED_FUNCTION_20_7(v24 + v27) != 1)
    {
      v31 = v12[16];
      v32 = v12[15];
      v34 = v12[12];
      v33 = v12[13];
      v35 = v12[8];
      (*(v31 + 32))(v12[17], v24 + v27, v32);
      lazy protocol witness table accessor for type Tips.InvalidationReason and conformance Tips.InvalidationReason(&lazy protocol witness table cache variable for type Tips.InvalidationReason and conformance Tips.InvalidationReason, MEMORY[0x1E6982B00], MEMORY[0x1E6982B08]);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v31 + 8);
      v38 = OUTLINED_FUNCTION_44_0();
      v37(v38);
      outlined destroy of CallControlsService?(v33, &_s6TipKit4TipsO18InvalidationReasonOSgMd, &_s6TipKit4TipsO18InvalidationReasonOSgMR);
      (v37)(v34, v32);
      outlined destroy of CallControlsService?(v35, &_s6TipKit4TipsO18InvalidationReasonOSgMd, &_s6TipKit4TipsO18InvalidationReasonOSgMR);
      if ((v36 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v28 = v12[15];
    v29 = v12[16];
    v30 = v12[12];
    outlined destroy of CallControlsService?(v12[13], &_s6TipKit4TipsO18InvalidationReasonOSgMd, &_s6TipKit4TipsO18InvalidationReasonOSgMR);
    (*(v29 + 8))(v30, v28);
LABEL_9:
    outlined destroy of CallControlsService?(v12[8], &_s6TipKit4TipsO18InvalidationReasonOSg_AFtMd, &_s6TipKit4TipsO18InvalidationReasonOSg_AFtMR);
    goto LABEL_12;
  }

  outlined destroy of CallControlsService?(v12[13], &_s6TipKit4TipsO18InvalidationReasonOSgMd, &_s6TipKit4TipsO18InvalidationReasonOSgMR);
  if (OUTLINED_FUNCTION_20_7(v24 + v27) != 1)
  {
    goto LABEL_9;
  }

  outlined destroy of CallControlsService?(v12[8], &_s6TipKit4TipsO18InvalidationReasonOSgMd, &_s6TipKit4TipsO18InvalidationReasonOSgMR);
LABEL_11:
  [objc_opt_self() logAnalyticsEventFaceTimeLink];
LABEL_12:
  OUTLINED_FUNCTION_14_56();
  Strong = swift_unknownObjectWeakLoadStrong();
  v12[22] = Strong;
  if (Strong)
  {
    v40 = swift_task_alloc();
    v12[23] = v40;
    *v40 = v12;
    OUTLINED_FUNCTION_130(v40);
    OUTLINED_FUNCTION_17_3();

    return RecentsListViewController.dismissPopover()();
  }

  else
  {

    OUTLINED_FUNCTION_27_42();

    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_17_3();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
  }
}

uint64_t closure #1 in RecentsListViewController.tipKitDismissTip(_:)()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_16_12();
  v2 = *(v0 + 176);
  v3 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v4 = v3;

  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 168);
  v7 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.tipKitDismissTip(_:), v7, v6);
}

{
  OUTLINED_FUNCTION_44();

  OUTLINED_FUNCTION_27_42();

  OUTLINED_FUNCTION_13();

  return v0();
}

uint64_t closure #1 in RecentsListViewController.tipKitInvalidateLayout()(uint64_t a1)
{
  *(v1 + 40) = a1;
  type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in RecentsListViewController.tipKitInvalidateLayout(), v3, v2);
}

uint64_t closure #1 in RecentsListViewController.tipKitInvalidateLayout()()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_14_56();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = RecentsListViewController.tipPopoverController.getter();
    if (v2)
    {

      v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x678))();
      v4 = [v3 collectionViewLayout];

      [v4 invalidateLayout];
    }
  }

  OUTLINED_FUNCTION_13();

  return v5();
}

uint64_t partial apply for closure #1 in RecentsListViewController.tipKitInvalidateLayout()()
{
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_92(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_130(v2);

  return closure #1 in RecentsListViewController.tipKitInvalidateLayout()(v0);
}

uint64_t outlined init with copy of Tips.InvalidationReason?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO18InvalidationReasonOSgMd, &_s6TipKit4TipsO18InvalidationReasonOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Tips.InvalidationReason?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO18InvalidationReasonOSgMd, &_s6TipKit4TipsO18InvalidationReasonOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in RecentsListViewController.tipKitDismissTip(_:)()
{
  OUTLINED_FUNCTION_9();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO18InvalidationReasonOSgMd, &_s6TipKit4TipsO18InvalidationReasonOSgMR);
  OUTLINED_FUNCTION_9_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v0 + ((*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_92(v6);
  *v7 = v8;
  v7[1] = partial apply for closure #1 in CallRecordingService.stopRecording(call:completion:);

  return closure #1 in RecentsListViewController.tipKitDismissTip(_:)(v0 + v3, v5);
}

uint64_t specialized closure #1 in RecentsListViewController.observeTip<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
  v5[11] = swift_task_alloc();
  v6 = type metadata accessor for Tips.Status();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy6TipKit4TipsO6StatusOGMd, &_sScSy6TipKit4TipsO6StatusOGMR);
  v5[16] = swift_task_alloc();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMR);
  v5[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMd, &_ss16AsyncMapSequenceVyScSy6TipKit4TipsO6StatusOGSbGMR);
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMd, &_ss16AsyncMapSequenceV8IteratorVyScSy6TipKit4TipsO6StatusOGSb_GMR);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for MainActor();
  v5[26] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[27] = v10;
  v5[28] = v9;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in RecentsListViewController.observeTip<A>(_:), v10, v9);
}

uint64_t specialized closure #1 in RecentsListViewController.observeTip<A>(_:)()
{
  OUTLINED_FUNCTION_21_0();
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  type metadata accessor for FaceTimeLinkTip();
  OUTLINED_FUNCTION_1_145();
  lazy protocol witness table accessor for type Tips.InvalidationReason and conformance Tips.InvalidationReason(v4, v5, MEMORY[0x1E69D8908]);
  Tip.shouldDisplayUpdates.getter();
  MEMORY[0x1BFB221C0](v3);
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AsyncStream<Tips.Status> and conformance AsyncStream<A>, &_sScSy6TipKit4TipsO6StatusOGMd, &_sScSy6TipKit4TipsO6StatusOGMR, MEMORY[0x1E69E86A0]);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.Iterator.transform.getter();
  (*(v2 + 8))(v1, v3);
  AsyncMapSequence.Iterator.init(_:transform:)();
  swift_beginAccess();
  v6 = static MainActor.shared.getter();
  v0[29] = v6;
  if (v6)
  {
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    OUTLINED_FUNCTION_56_0();
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  OUTLINED_FUNCTION_0_176(v7, v8);
  OUTLINED_FUNCTION_17_3();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_9();
  v1 = v0[29];
  v0[32] = AsyncMapSequence.Iterator.baseIterator.modify();
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type AsyncStream<Tips.Status>.Iterator and conformance AsyncStream<A>.Iterator, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMd, &_sScS8IteratorVy6TipKit4TipsO6StatusO_GMR, MEMORY[0x1E69E8690]);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = specialized closure #1 in RecentsListViewController.observeTip<A>(_:);
  v3 = v0[11];
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v3, v1, v4);
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v3 + 240);
    v8 = *(v3 + 248);
    v9 = specialized closure #1 in RecentsListViewController.observeTip<A>(_:);
  }

  else
  {
    (*(v3 + 256))();
    v7 = *(v3 + 240);
    v8 = *(v3 + 248);
    v9 = specialized closure #1 in RecentsListViewController.observeTip<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

{
  OUTLINED_FUNCTION_44();
  v2 = v0[11];
  v1 = v0[12];
  if (OUTLINED_FUNCTION_20_7(v2) == 1)
  {

    outlined destroy of CallControlsService?(v2, &_s6TipKit4TipsO6StatusOSgMd, &_s6TipKit4TipsO6StatusOSgMR);
    v3 = v0[27];
    v4 = v0[28];

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in RecentsListViewController.observeTip<A>(_:), v3, v4);
  }

  else
  {
    (*(v0[13] + 32))(v0[14], v2, v1);
    v5 = AsyncMapSequence.Iterator.transform.getter();
    v0[34] = v6;
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    v0[35] = v7;
    *v7 = v0;
    v7[1] = specialized closure #1 in RecentsListViewController.observeTip<A>(_:);
    v8 = v0[14];

    return (v10)(v0 + 42, v8);
  }
}

{
  return (*(v0 + 256))();
}

{
  OUTLINED_FUNCTION_16_12();
  OUTLINED_FUNCTION_4_6();
  *v2 = v0;
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  v5 = *(v0 + 96);
  *v2 = *v1;

  (*(v4 + 8))(v3, v5);
  *(v0 + 337) = *(v0 + 336);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in RecentsListViewController.observeTip<A>(_:), v1, v2);
}

{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 288) = Strong;
  if (!Strong)
  {
    v15 = OUTLINED_FUNCTION_11_85();
    v16(v15);
    goto LABEL_11;
  }

  v2 = Strong;
  if (*(v0 + 337))
  {
    v3 = MEMORY[0x1E69E7D40];
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x560))();
    *(v0 + 296) = v5;
    if (v5)
    {
      v7 = v4;
      v8 = v5;
      v9 = v6;
      v10 = RecentsListViewController.tipPopoverController.getter();
      if (v10)
      {
        v11 = v10;
        v13 = *(v0 + 184);
        v12 = *(v0 + 192);
        v14 = *(v0 + 176);

        (*(v13 + 8))(v12, v14);
        goto LABEL_12;
      }

      v24 = [v8 window];
      if (v24)
      {

        if (v9)
        {
          v25 = *(v0 + 72);
          v26 = (*((*v3 & *v2) + 0x678))();
          v27 = [v26 collectionViewLayout];

          [v27 invalidateLayout];
          *(v0 + 312) = static MainActor.shared.getter();
          v28 = swift_task_alloc();
          *(v0 + 320) = v28;
          *(v28 + 16) = v25;
          *(v28 + 24) = v7;
          *(v28 + 32) = v8;
          *(v28 + 40) = 1;
          *(v28 + 48) = v2;
          v29 = swift_task_alloc();
          *(v0 + 328) = v29;
          *v29 = v0;
          v29[1] = specialized closure #1 in RecentsListViewController.observeTip<A>(_:);
          OUTLINED_FUNCTION_69();

          return MEMORY[0x1EEE6DDE0](v30, v31, v32, v33, v34, v35, v36, v37);
        }

        v41 = OUTLINED_FUNCTION_11_85();
        v42(v41);
      }

      else
      {
        v39 = *(v0 + 184);
        v38 = *(v0 + 192);
        v40 = *(v0 + 176);

        (*(v39 + 8))(v38, v40);
      }

LABEL_12:
      OUTLINED_FUNCTION_15_52();

      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_69();

      __asm { BRAA            X1, X16 }
    }

    v20 = OUTLINED_FUNCTION_11_85();
    v21(v20);

LABEL_11:

    goto LABEL_12;
  }

  v17 = swift_task_alloc();
  *(v0 + 304) = v17;
  *v17 = v0;
  OUTLINED_FUNCTION_130(v17);
  OUTLINED_FUNCTION_69();

  return RecentsListViewController.dismissPopover()();
}

{
  OUTLINED_FUNCTION_44();
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_15_52();

  OUTLINED_FUNCTION_13();

  return v4();
}

{
  OUTLINED_FUNCTION_24_0();
  OUTLINED_FUNCTION_16_12();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 224);
  v6 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in RecentsListViewController.observeTip<A>(_:), v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = static MainActor.shared.getter();
  *(v0 + 232) = v1;
  if (v1)
  {
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    OUTLINED_FUNCTION_56_0();
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v4 = OUTLINED_FUNCTION_0_176(v2, v3);

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_16_12();
  v2 = *v1;
  OUTLINED_FUNCTION_4_6();
  *v3 = v2;

  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 224);
  v6 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in RecentsListViewController.observeTip<A>(_:), v6, v5);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = static MainActor.shared.getter();
  *(v0 + 232) = v1;
  if (v1)
  {
    swift_getObjectType();
    dispatch thunk of Actor.unownedExecutor.getter();
    OUTLINED_FUNCTION_56_0();
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v4 = OUTLINED_FUNCTION_0_176(v2, v3);

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void specialized closure #1 in closure #1 in RecentsListViewController.observeTip<A>(_:)(uint64_t a1, uint64_t a2, void *a3, double a4, uint64_t a5, void *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v71 - v13;
  type metadata accessor for TipUIPopoverViewController();
  v15 = type metadata accessor for FaceTimeLinkTip();
  v78 = v15;
  v79 = lazy protocol witness table accessor for type Tips.InvalidationReason and conformance Tips.InvalidationReason(&lazy protocol witness table cache variable for type FaceTimeLinkTip and conformance FaceTimeLinkTip, MEMORY[0x1E69D8910], MEMORY[0x1E69D8908]);
  v16 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  (*(*(v15 - 1) + 16))(v16, a2, v15);
  v17 = a3;
  v18 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
  v19 = TipUIPopoverViewController.popoverPresentationController.getter();
  if (v19)
  {
    v20 = v19;
    [v19 setSourceItem_];
  }

  v21 = *(MEMORY[0x1E69DE090] + 8);
  v22 = v18;
  [v22 setPreferredContentSize_];
  v23 = TipUIPopoverViewController.popoverPresentationController.getter();
  if (v23)
  {
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1BC4BAC30;
    v26 = [a6 view];
    if (!v26)
    {
LABEL_43:
      __break(1u);
      return;
    }

    *(v25 + 32) = v26;
    type metadata accessor for UIView();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v24 setPassthroughViews_];
  }

  v73 = a1;
  v74 = v11;
  v28 = [a6 navigationController];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 navigationBar];

    if (v30)
    {
      v31 = TipUIPopoverViewController.popoverPresentationController.getter();
      if (!v31)
      {
LABEL_17:

        goto LABEL_18;
      }

      v32 = v31;
      v33 = [v31 passthroughViews];
      if (v33)
      {
        v34 = v33;
        v72 = type metadata accessor for UIView();
        v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        aBlock = v35;
        specialized Array._checkIndex(_:)();
        if (specialized Array.count.getter() < 0)
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v36 = specialized Array.count.getter();
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v30 = v30;
        specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v37, 1);
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v30, v38, v39, v40, v41, v71, v72, v73, v74, aBlock, v76, v77, v78, v79, v80, v81, v82, v83, v84);
        if (aBlock)
        {
          v42.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v42.super.isa = 0;
        }

        [v32 setPassthroughViews_];

        goto LABEL_17;
      }

      [v32 setPassthroughViews_];
    }
  }

LABEL_18:
  v43 = [a6 navigationController];
  if (!v43)
  {
    goto LABEL_30;
  }

  v44 = v43;
  v45 = [v43 toolbar];

  if (!v45)
  {
    goto LABEL_30;
  }

  v46 = TipUIPopoverViewController.popoverPresentationController.getter();
  if (!v46)
  {
    goto LABEL_29;
  }

  v47 = v46;
  v48 = [v46 passthroughViews];
  if (v48)
  {
    v49 = v48;
    type metadata accessor for UIView();
    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v50;
    specialized Array._checkIndex(_:)();
    if (specialized Array.count.getter() >= 1)
    {
      v51 = specialized Array.count.getter();
      v52 = v51 + 1;
      if (!__OFADD__(v51, 1))
      {
        v45 = v45;
        specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v52, 1);
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(1, 1, 1, v45, v53, v54, v55, v56, v71, v72, v73, v74, aBlock, v76, v77, v78, v79, v80, v81, v82, v83, v84);
        if (aBlock)
        {
          v57.super.isa = Array._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          v57.super.isa = 0;
        }

        [v47 setPassthroughViews_];

LABEL_29:
        goto LABEL_30;
      }

      goto LABEL_42;
    }

    goto LABEL_40;
  }

  [v47 setPassthroughViews_];

LABEL_30:
  v58 = [objc_opt_self() currentTraitCollection];
  v59 = [v58 userInterfaceStyle];

  [v22 setOverrideUserInterfaceStyle_];
  v60 = TipUIPopoverViewController.popoverPresentationController.getter();
  if (v60)
  {
    v61 = v60;
    [v60 setPermittedArrowDirections_];
  }

  v62 = TipUIPopoverViewController.popoverPresentationController.getter();
  v63 = v73;
  v64 = v74;
  if (v62)
  {
    v65 = v62;
    v66 = [objc_opt_self() systemGray3Color];
    [v65 setBackgroundColor_];
  }

  if (one-time initialization token for tipUserInfo != -1)
  {
    swift_once();
  }

  v67 = v22;
  if (static RecentsListViewController.tipUserInfo)
  {
    v67 = *(static RecentsListViewController.tipUserInfo + 2);
    *(static RecentsListViewController.tipUserInfo + 2) = v22;
  }

  (*(v12 + 16))(v14, v63, v64);
  v68 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v69 = swift_allocObject();
  (*(v12 + 32))(v69 + v68, v14, v64);
  v79 = partial apply for closure #1 in closure #1 in closure #1 in RecentsListViewController.observeTip<A>(_:);
  v80 = v69;
  aBlock = MEMORY[0x1E69E9820];
  v76 = 1107296256;
  v77 = thunk for @escaping @callee_guaranteed () -> ();
  v78 = &block_descriptor_37_3;
  v70 = _Block_copy(&aBlock);

  [a6 presentViewController:v22 animated:1 completion:v70];
  _Block_release(v70);
}

void closure #1 in RecentsListViewController.dismissPopover()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in RecentsListViewController.dismissPopover();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_82;
  v11 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);
}

uint64_t closure #1 in closure #1 in RecentsListViewController.dismissPopover()()
{
  if (one-time initialization token for tipUserInfo != -1)
  {
    swift_once();
  }

  if (static RecentsListViewController.tipUserInfo)
  {
    v0 = *(static RecentsListViewController.tipUserInfo + 2);
    *(static RecentsListViewController.tipUserInfo + 2) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t lazy protocol witness table accessor for type Tips.InvalidationReason and conformance Tips.InvalidationReason(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for specialized closure #1 in RecentsListViewController.observeTip<A>(_:)()
{
  OUTLINED_FUNCTION_44();
  v2 = v1;
  v3 = type metadata accessor for FaceTimeLinkTip();
  OUTLINED_FUNCTION_9_0(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_92(v10);
  *v11 = v12;
  v11[1] = partial apply for closure #1 in CallRecordingService.startRecording(call:completion:);

  return specialized closure #1 in RecentsListViewController.observeTip<A>(_:)(v2, v7, v8, v0 + v5, v9);
}

uint64_t objectdestroy_18Tm_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  OUTLINED_FUNCTION_15_1();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in RecentsListViewController.dismissPopover()(uint64_t (*a1)(uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t static ViewBuilder.buildIf<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_7_0();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

__n128 PositionalData.listBounds.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_29_30(KeyPath);

  result = v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t PositionalData.__allocating_init()()
{
  v0 = swift_allocObject();
  PositionalData.init()();
  return v0;
}

uint64_t Published.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  Published.init(initialValue:)();
  return (*(v4 + 8))(a1, a2);
}

uint64_t PositionalData.autoScrollTolerance.setter(double a1)
{
  v3 = OBJC_IVAR____TtC15ConversationKit14PositionalData_autoScrollTolerance;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return PositionalData.updateBottomVisibility()();
}

uint64_t AutoScrollingList.init(rows:spacing:topInset:positionalData:content:headerView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  type metadata accessor for Binding();
  OUTLINED_FUNCTION_7_0();
  (*(v23 + 32))(a9, a1);
  v44[0] = a7;
  v44[1] = a8;
  v44[2] = a12;
  v44[3] = a13;
  v44[4] = a14;
  v44[5] = a15;
  v44[6] = a16;
  v44[7] = a17;
  v44[8] = a18;
  v24 = type metadata accessor for AutoScrollingList(0, v44);
  *(a9 + v24[23]) = a10;
  *(a9 + v24[24]) = a11;
  *(a9 + v24[25]) = a2;
  v25 = (a9 + v24[26]);
  *v25 = a3;
  v25[1] = a4;
  v26 = (a9 + v24[27]);
  *v26 = a5;
  v26[1] = a6;
  v27 = a9 + v24[28];
  v28 = swift_allocObject();
  v28[2] = a7;
  v28[3] = a8;
  v28[4] = a12;
  v28[5] = a13;
  v28[6] = a14;
  v28[7] = a15;
  v28[8] = a16;
  v28[9] = a17;
  v28[10] = a18;
  result = property wrapper backing initializer of AutoScrollingList.autoScrollViewModel(partial apply for implicit closure #2 in implicit closure #1 in variable initialization expression of AutoScrollingList._autoScrollViewModel, v28, v29, v30, a12, v31, v32, v33, v37, a17);
  *v27 = result;
  *(v27 + 8) = v35;
  *(v27 + 16) = v36 & 1;
  return result;
}

char *specialized static AutoScrollKey.reduce(value:nextValue:)(char *result, void *(*a2)(uint64_t *__return_ptr))
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

void *specialized static HighestBoundsKey.reduce(value:nextValue:)(uint64_t a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v14);
  v4 = v18;
  if (v18)
  {
    v5 = v14;
    v6 = v15;
    v7 = v16;
    v8 = v17;
    v9 = v14;
    v10 = v15;
    v11 = v16;
    v12 = v17;
    if (*(a1 + 32))
    {
      MinY = CGRectGetMinY(*a1);
    }

    else
    {
      MinY = 1.79769313e308;
    }

    v20.origin.x = v9;
    v20.origin.y = v10;
    v20.size.width = v11;
    v20.size.height = v12;
    if (CGRectGetMinY(v20) >= MinY)
    {
    }

    else
    {

      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = v7;
      *(a1 + 24) = v8;
      *(a1 + 32) = v4;
    }
  }

  return result;
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance HighestBoundsKey@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void ListAnchor.bounds.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t ListAnchor.anchor.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t static ListAnchor.== infix(_:_:)(CGRect *a1, CGRect *a2)
{
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    type metadata accessor for CGRect(0);
    OUTLINED_FUNCTION_17_55();
    lazy protocol witness table accessor for type CGRect and conformance CGRect(v3, v4, MEMORY[0x1E695EF78]);

    return static Anchor<A>.== infix(_:_:)();
  }

  return result;
}

uint64_t ListAnchor.init(bounds:anchor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = result;
  return result;
}

uint64_t PositionalData.description.getter()
{
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  MEMORY[0x1BFB20B10](0xD000000000000022, 0x80000001BC512E10);
  PositionalData.scrollViewBounds.getter(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6CGRectVSgMd, &_sSo6CGRectVSgMR);
  v0 = String.init<A>(describing:)();
  MEMORY[0x1BFB20B10](v0);

  MEMORY[0x1BFB20B10](0x756F427473696C0ALL, 0xED0000203A73646ELL);
  PositionalData.listBounds.getter(v7);

  v1 = String.init<A>(describing:)();
  MEMORY[0x1BFB20B10](v1);

  MEMORY[0x1BFB20B10](0xD000000000000012, 0x80000001BC512E40);
  v2 = PositionalData.isBottomVisible.getter();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1BFB20B10](v4, v5);

  MEMORY[0x1BFB20B10](10506, 0xE200000000000000);
  return 0;
}

__n128 PositionalData.scrollViewBounds.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_29_30(KeyPath);

  result = v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

BOOL static PositionalData.== infix(_:_:)()
{
  PositionalData.scrollViewBounds.getter(&v13);
  *&v0 = PositionalData.scrollViewBounds.getter(v15).n128_u64[0];
  if (v14)
  {
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v16)
    {
      return 0;
    }

    result = OUTLINED_FUNCTION_43_17(v0, v1, v2, v3, v15[0], v15[1], v15[2], v15[3]);
    if (!result)
    {
      return result;
    }
  }

  PositionalData.listBounds.getter(v17);
  v5 = v17[4];
  *&v6 = PositionalData.listBounds.getter(v18).n128_u64[0];
  if (v5)
  {
    if (v19)
    {
      if (OUTLINED_FUNCTION_43_17(v6, v7, v8, v9, v18[0], v18[1], v18[2], v18[3]))
      {
        type metadata accessor for CGRect(0);
        OUTLINED_FUNCTION_17_55();
        lazy protocol witness table accessor for type CGRect and conformance CGRect(v10, v11, MEMORY[0x1E695EF78]);
        v12 = static Anchor<A>.== infix(_:_:)();
        outlined destroy of ListAnchor?(v18);
        outlined destroy of ListAnchor?(v17);
        return v12 & 1;
      }

      outlined destroy of ListAnchor?(v18);
      outlined destroy of ListAnchor?(v17);
      return 0;
    }
  }

  else if (!v19)
  {
    return 1;
  }

  return 0;
}

double key path getter for PositionalData.scrollViewBounds : PositionalData@<D0>(uint64_t a1@<X8>)
{
  PositionalData.scrollViewBounds.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t PositionalData.scrollViewBounds.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return PositionalData.updateBottomVisibility()();
}

uint64_t PositionalData.updateBottomVisibility()()
{
  PositionalData.scrollViewBounds.getter(v6);
  if (v8)
  {
    return ShareCardViewModel.shouldShowEndActivity.setter(1, &unk_1BC4DD950, &unk_1BC4DD978);
  }

  v1 = v7;
  PositionalData.listBounds.getter(v9);
  if (!v12)
  {
    return ShareCardViewModel.shouldShowEndActivity.setter(1, &unk_1BC4DD950, &unk_1BC4DD978);
  }

  v2 = round(v11 + v10) - v1;
  v3 = ShareCardViewModel.shouldShowEndActivity.setter(v2 <= 1.0, &unk_1BC4DD950, &unk_1BC4DD978);
  v4 = OBJC_IVAR____TtC15ConversationKit14PositionalData_autoScrollTolerance;
  OUTLINED_FUNCTION_19_1(v3);
  ShareCardViewModel.shouldShowEndActivity.setter(v2 < *(v0 + v4), &unk_1BC4DD9C0, &unk_1BC4DD9E8);
  return outlined destroy of ListAnchor?(v9);
}

void (*PositionalData.scrollViewBounds.modify())(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x80uLL);
  v2 = OUTLINED_FUNCTION_47(v1);
  *(v2 + 120) = v0;
  PositionalData.scrollViewBounds.getter(v2 + 80);
  return PositionalData.scrollViewBounds.modify;
}

void PositionalData.scrollViewBounds.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1 + 40;
  }

  v4 = *(v2 + 96);
  *v3 = *(v2 + 80);
  *(v3 + 16) = v4;
  *(v3 + 32) = *(v2 + 112);
  PositionalData.scrollViewBounds.setter(v3);

  free(v2);
}

uint64_t PositionalData.$scrollViewBounds.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6CGRectVSg_GMd, &_s7Combine9PublishedV9PublisherVySo6CGRectVSg_GMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_146(v1);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6CGRectVSgGMd, &_s7Combine9PublishedVySo6CGRectVSgGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

void (*PositionalData.$scrollViewBounds.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6CGRectVSg_GMd, &_s7Combine9PublishedV9PublisherVySo6CGRectVSg_GMR);
  v1[4] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit14PositionalData__scrollViewBounds, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6CGRectVSgGMd, &_s7Combine9PublishedVySo6CGRectVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PositionalData.$scrollViewBounds.modify;
}

double key path getter for PositionalData.listBounds : PositionalData@<D0>(uint64_t a1@<X8>)
{
  PositionalData.listBounds.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t key path setter for PositionalData.listBounds : PositionalData(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  outlined init with copy of ListAnchor?(v4, v3);
  return PositionalData.listBounds.setter(v4);
}

uint64_t PositionalData.listBounds.setter(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1[1];
  v5 = *a1;
  v6 = v2;
  v7 = *(a1 + 4);

  outlined init with copy of ListAnchor?(a1, v4);
  static Published.subscript.setter();
  PositionalData.updateBottomVisibility()();
  return outlined destroy of ListAnchor?(a1);
}

void (*PositionalData.listBounds.modify())(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0xA8uLL);
  v2 = OUTLINED_FUNCTION_47(v1);
  *(v2 + 160) = v0;
  PositionalData.listBounds.getter(v2 + 80);
  return PositionalData.listBounds.modify;
}

void PositionalData.listBounds.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  if (a2)
  {
    *v2 = *(v2 + 80);
    *(v2 + 16) = v3;
    *(v2 + 32) = *(v2 + 112);
    outlined init with copy of ListAnchor?(v2, v2 + 120);
    PositionalData.listBounds.setter(v2);
  }

  else
  {
    *(v2 + 40) = *(v2 + 80);
    *(v2 + 56) = v3;
    *(v2 + 72) = *(v2 + 112);
    PositionalData.listBounds.setter((v2 + 40));
  }

  free(v2);
}

uint64_t key path setter for PositionalData.$scrollViewBounds : PositionalData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a7(v12);
}

uint64_t PositionalData.$listBounds.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit10ListAnchorVSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit10ListAnchorVSg_GMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_146(v1);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit10ListAnchorVSgGMd, &_s7Combine9PublishedVy15ConversationKit10ListAnchorVSgGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

void (*PositionalData.$listBounds.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_47(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit10ListAnchorVSg_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit10ListAnchorVSg_GMR);
  v1[4] = v3;
  OUTLINED_FUNCTION_9_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_30_2(v0 + OBJC_IVAR____TtC15ConversationKit14PositionalData__listBounds, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit10ListAnchorVSgGMd, &_s7Combine9PublishedVy15ConversationKit10ListAnchorVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PositionalData.$listBounds.modify;
}

void PositionalData.$scrollViewBounds.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    v9 = OUTLINED_FUNCTION_62_0();
    v10(v9);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t key path getter for PositionalData.isBottomVisible : PositionalData@<X0>(_BYTE *a1@<X8>)
{
  result = PositionalData.isBottomVisible.getter();
  *a1 = result & 1;
  return result;
}

uint64_t PositionalData.$isBottomVisible.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_146(v1);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

uint64_t PositionalData.isBottomVisible.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t key path getter for PositionalData.isWithinAutoScrollTolerance : PositionalData@<X0>(_BYTE *a1@<X8>)
{
  result = PositionalData.isWithinAutoScrollTolerance.getter();
  *a1 = result & 1;
  return result;
}

uint64_t PositionalData.$isWithinAutoScrollTolerance.setter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_146(v1);
  v3(v2);
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_67(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_61();
  return v6(v5);
}

double PositionalData.autoScrollTolerance.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC15ConversationKit14PositionalData_autoScrollTolerance;
  OUTLINED_FUNCTION_19_1(a1);
  return *(v1 + v2);
}

double key path getter for PositionalData.autoScrollTolerance : PositionalData@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15ConversationKit14PositionalData_autoScrollTolerance;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t (*PositionalData.autoScrollTolerance.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_30_2(v1 + OBJC_IVAR____TtC15ConversationKit14PositionalData_autoScrollTolerance, a1);
  return PositionalData.autoScrollTolerance.modify;
}

uint64_t PositionalData.autoScrollTolerance.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return PositionalData.updateBottomVisibility()();
  }

  return result;
}

uint64_t PositionalData.deinit()
{
  v1 = OBJC_IVAR____TtC15ConversationKit14PositionalData__scrollViewBounds;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6CGRectVSgGMd, &_s7Combine9PublishedVySo6CGRectVSgGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC15ConversationKit14PositionalData__listBounds;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit10ListAnchorVSgGMd, &_s7Combine9PublishedVy15ConversationKit10ListAnchorVSgGMR);
  OUTLINED_FUNCTION_7_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC15ConversationKit14PositionalData__isBottomVisible;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_7_0();
  v8 = *(v7 + 8);
  v8(v0 + v5, v6);
  v8(v0 + OBJC_IVAR____TtC15ConversationKit14PositionalData__isWithinAutoScrollTolerance, v6);
  return v0;
}

uint64_t PositionalData.__deallocating_deinit()
{
  PositionalData.deinit();

  return swift_deallocClassInstance();
}

uint64_t PositionalData.init()()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  OUTLINED_FUNCTION_1();
  v2 = v1;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15ConversationKit10ListAnchorVSgGMd, &_s7Combine9PublishedVy15ConversationKit10ListAnchorVSgGMR);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6CGRectVSgGMd, &_s7Combine9PublishedVySo6CGRectVSgGMR);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  v18 = OBJC_IVAR____TtC15ConversationKit14PositionalData__scrollViewBounds;
  v27 = 0u;
  v28 = 0u;
  LOBYTE(v29) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6CGRectVSgMd, &_sSo6CGRectVSgMR);
  Published.init(initialValue:)();
  (*(v14 + 32))(v0 + v18, v17, v12);
  v19 = OBJC_IVAR____TtC15ConversationKit14PositionalData__listBounds;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit10ListAnchorVSgMd, &_s15ConversationKit10ListAnchorVSgMR);
  Published.init(initialValue:)();
  (*(v8 + 32))(v0 + v19, v11, v6);
  v20 = OBJC_IVAR____TtC15ConversationKit14PositionalData__isBottomVisible;
  LOBYTE(v27) = 1;
  Published.init(initialValue:)();
  v21 = *(v2 + 32);
  v22 = v26;
  v21(v0 + v20, v5, v26);
  v23 = OBJC_IVAR____TtC15ConversationKit14PositionalData__isWithinAutoScrollTolerance;
  LOBYTE(v27) = 1;
  Published.init(initialValue:)();
  v21(v0 + v23, v5, v22);
  *(v0 + OBJC_IVAR____TtC15ConversationKit14PositionalData_autoScrollTolerance) = 0;
  return v0;
}

uint64_t property wrapper backing initializer of AutoScrollViewModel.stickyRowIDs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v3 = type metadata accessor for Set();
  return Published.init(wrappedValue:)(&v5, v3);
}

uint64_t AutoScrollViewModel.stickyRowIDs.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AutoScrollViewModel.stickyRowIDs.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t AutoScrollViewModel.shouldAutoScroll.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AutoScrollViewModel.shouldAutoScroll.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t AutoScrollViewModel.deinit()
{
  v1 = *(*v0 + 96);
  type metadata accessor for Set();
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 104);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t AutoScrollViewModel.__deallocating_deinit()
{
  AutoScrollViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t *AutoScrollViewModel.init()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  type metadata accessor for Set();
  v8 = type metadata accessor for Published();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = static Array._allocateUninitialized(_:)();
  if (MEMORY[0x1BFB20DF0](v12, v6))
  {
    v13 = Set.init(_nonEmptyArrayLiteral:)(v12, v6, v7);
  }

  else
  {

    v13 = MEMORY[0x1E69E7CD0];
  }

  v14 = *(*v0 + 96);
  property wrapper backing initializer of AutoScrollViewModel.stickyRowIDs(v13, v6, v7);
  (*(v9 + 32))(v0 + v14, v11, v8);
  v15 = *(*v0 + 104);
  property wrapper backing initializer of AutoScrollViewModel.shouldAutoScroll(1);
  (*(v3 + 32))(v0 + v15, v5, v2);
  return v0;
}

void AutoScrollingList.rows.getter(uint64_t a1)
{
  type metadata accessor for Binding();

  JUMPOUT(0x1BFB20050);
}

void key path getter for AutoScrollingList.rows : <A, B, C, D>AutoScrollingList<A, B, C, D>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 8);
  v4 = *(a2 + a3 - 56);
  v7[0] = *(a2 + a3 - 72);
  v7[1] = v4;
  v5 = *(a2 + a3 - 24);
  v7[2] = *(a2 + a3 - 40);
  v7[3] = v5;
  v8 = v3;
  v6 = type metadata accessor for AutoScrollingList(0, v7);
  AutoScrollingList.rows.getter(v6);
}

uint64_t key path setter for AutoScrollingList.rows : <A, B, C, D>AutoScrollingList<A, B, C, D>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 72);
  v16 = *(a3 + a4 - 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - v5;
  v8 = *(v7 + 16);
  v10 = *(v9 - 48);
  v14 = *(v9 - 32);
  v15 = v10;
  v13 = *(v9 - 16);
  v8(v6);
  v17 = v4;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v11 = type metadata accessor for AutoScrollingList(0, &v17);
  return AutoScrollingList.rows.setter(v6, v11);
}

uint64_t AutoScrollingList.rows.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_1();
  MEMORY[0x1EEE9AC00](v2);
  v4 = OUTLINED_FUNCTION_1_146((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5(v4);
  type metadata accessor for Binding();
  Binding.wrappedValue.setter();
  v6 = OUTLINED_FUNCTION_61();
  return v7(v6);
}

void (*AutoScrollingList.rows.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v4;
  *v4 = *(a2 + 24);
  OUTLINED_FUNCTION_31_1();
  *(v5 + 8) = v6;
  v8 = *(v7 + 64);
  v4[2] = __swift_coroFrameAllocStub(v8);
  v4[3] = __swift_coroFrameAllocStub(v8);
  v9 = type metadata accessor for Binding();
  v4[4] = v9;
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v4[5] = v10;
  v4[6] = __swift_coroFrameAllocStub(*(v12 + 64));
  (*(v11 + 16))();
  MEMORY[0x1BFB20050](v9);
  return AutoScrollingList.rows.modify;
}

void AutoScrollingList.rows.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[5];
  v3 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[2];
  if (a2)
  {
    v8 = *v2;
    v9 = v2[1];
    v10 = OUTLINED_FUNCTION_62_0();
    v11(v10);
    Binding.wrappedValue.setter();
    (*(v4 + 8))(v3, v6);
    (*(v9 + 8))(v5, v8);
  }

  else
  {
    Binding.wrappedValue.setter();
    (*(v4 + 8))(v3, v6);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

void *AutoScrollingList.$rows.getter()
{
  type metadata accessor for Binding();

  return Binding.projectedValue.getter();
}

uint64_t AutoScrollingList.content.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 104));

  return v2;
}

uint64_t AutoScrollingList.content.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 104));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t key path getter for AutoScrollingList.headerView : <A, B, C, D>AutoScrollingList<A, B, C, D>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *(a2 + a3 - 56);
  v11[0] = *(a2 + a3 - 72);
  v11[1] = v6;
  v7 = *(a2 + a3 - 24);
  v11[2] = *(a2 + a3 - 40);
  v11[3] = v7;
  v12 = v5;
  v8 = (a1 + *(type metadata accessor for AutoScrollingList(0, v11) + 108));
  v9 = v8[1];
  *a4 = *v8;
  a4[1] = v9;
}

uint64_t key path setter for AutoScrollingList.headerView : <A, B, C, D>AutoScrollingList<A, B, C, D>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a3 + a4 - 56);
  v11[0] = *(a3 + a4 - 72);
  v11[1] = v7;
  v8 = *(a3 + a4 - 24);
  v11[2] = *(a3 + a4 - 40);
  v11[3] = v8;
  v12 = v4;
  v9 = (a2 + *(type metadata accessor for AutoScrollingList(0, v11) + 108));

  *v9 = v6;
  v9[1] = v5;
  return result;
}

uint64_t AutoScrollingList.headerView.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 108));

  return v2;
}

uint64_t AutoScrollingList.headerView.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 108));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t property wrapper backing initializer of AutoScrollingList.autoScrollViewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AutoScrollViewModel(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  swift_getWitnessTable();
  return StateObject.init(wrappedValue:)();
}

uint64_t *implicit closure #2 in implicit closure #1 in variable initialization expression of AutoScrollingList._autoScrollViewModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AutoScrollViewModel(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  return AutoScrollViewModel.__allocating_init()();
}

uint64_t outlined init with copy of ListAnchor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15ConversationKit10ListAnchorVSgMd, &_s15ConversationKit10ListAnchorVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AutoScrollingList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  OUTLINED_FUNCTION_1();
  v4 = v3;
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v4 + 16))(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v9 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v12 = *(a1 + 16);
  v35 = *(a1 + 24);
  v11 = v35;
  *(v10 + 16) = v12;
  *(v10 + 24) = v11;
  *(v10 + 32) = *(a1 + 32);
  v33 = *(a1 + 40);
  *(v10 + 40) = v33;
  v13 = *(a1 + 64);
  v37 = *(a1 + 56);
  v34 = v13;
  *(v10 + 56) = v37;
  *(v10 + 64) = v13;
  v14 = *(a1 + 80);
  *(v10 + 72) = *(a1 + 72);
  *(v10 + 80) = v14;
  (*(v4 + 32))(v10 + v9, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMR);
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_8_8();
  type metadata accessor for Optional();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  v16 = type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_18_51();
  v19 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v17, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR, v18);
  v55 = v14;
  v56 = v19;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v50 = v16;
  v51 = AssociatedTypeWitness;
  v52 = WitnessTable;
  v53 = AssociatedConformanceWitness;
  v22 = type metadata accessor for IDView();
  v23 = v35;
  v50 = v35;
  v51 = AssociatedTypeWitness;
  v52 = v22;
  v53 = v34;
  v54 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_16_56();
  v49 = swift_getWitnessTable();
  OUTLINED_FUNCTION_15_53();
  v47 = swift_getWitnessTable();
  v48 = MEMORY[0x1E697E070];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for LazyVStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_8_8();
  type metadata accessor for TupleView();
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for VStack();
  OUTLINED_FUNCTION_1_26();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_2_104();
  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x1E697EBF8];
  OUTLINED_FUNCTION_62_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ScrollView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI25_PreferenceActionModifierVy15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI25_PreferenceActionModifierVy15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  OUTLINED_FUNCTION_7_2();
  type metadata accessor for ModifiedContent();
  OUTLINED_FUNCTION_11_86();
  v24 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10_74();
  v27 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(v25, &_s7SwiftUI25_PreferenceActionModifierVy15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI25_PreferenceActionModifierVy15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR, v26);
  v43 = v24;
  v44 = v27;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_2();
  v28 = type metadata accessor for GeometryReader();
  OUTLINED_FUNCTION_2_37();
  v29 = swift_getWitnessTable();
  v50 = v28;
  v51 = v23;
  v30 = v37;
  v52 = v29;
  v53 = v37;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v50 = v28;
  v51 = v23;
  v52 = v29;
  v53 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  v39 = ScrollViewReader.init(content:)();
  v40 = v31;
  type metadata accessor for ScrollViewReader();
  OUTLINED_FUNCTION_8_88();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();

  v39 = v50;
  v40 = v51;
  static ViewBuilder.buildExpression<A>(_:)();
}

uint64_t closure #1 in AutoScrollingList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v118 = a8;
  v121 = a7;
  v110 = a4;
  v131 = a2;
  v127 = a1;
  v109 = a9;
  v123 = type metadata accessor for ScrollViewProxy();
  v134 = *(v123 - 8);
  v126 = v134[8];
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v124 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = a3;
  v147 = a4;
  v120 = a3;
  v148 = a5;
  v149 = a6;
  v128 = a6;
  v150 = a7;
  v151 = a8;
  v152 = a10;
  v153 = a11;
  v132 = a10;
  v154 = a12;
  v130 = a12;
  v129 = type metadata accessor for AutoScrollingList(0, &v146);
  v133 = *(v129 - 8);
  v125 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v119 = &v92 - v21;
  v115 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMR);
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  v117 = a11;
  v116 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  v23 = type metadata accessor for ModifiedContent();
  v24 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnchorWritingModifier<CGRect, AutoScrollKey> and conformance _AnchorWritingModifier<A, B>, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR, MEMORY[0x1E697FF70]);
  v144 = a12;
  v145 = v24;
  v25 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v146 = v23;
  v147 = AssociatedTypeWitness;
  v148 = WitnessTable;
  v149 = AssociatedConformanceWitness;
  v28 = type metadata accessor for IDView();
  v29 = v110;
  v146 = v110;
  v147 = AssociatedTypeWitness;
  v148 = v28;
  v149 = a10;
  v150 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  type metadata accessor for ModifiedContent();
  v143 = swift_getWitnessTable();
  v141 = swift_getWitnessTable();
  v142 = MEMORY[0x1E697E070];
  swift_getWitnessTable();
  type metadata accessor for LazyVStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  v139 = swift_getWitnessTable();
  v140 = MEMORY[0x1E697EBF8];
  v107 = v25;
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI25_PreferenceActionModifierVy15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI25_PreferenceActionModifierVy15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  v30 = type metadata accessor for ModifiedContent();
  v31 = swift_getWitnessTable();
  v32 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _PreferenceActionModifier<HighestBoundsKey> and conformance _PreferenceActionModifier<A>, &_s7SwiftUI25_PreferenceActionModifierVy15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI25_PreferenceActionModifierVy15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR, MEMORY[0x1E6980620]);
  v137 = v31;
  v138 = v32;
  v96 = v30;
  v97 = swift_getWitnessTable();
  v33 = type metadata accessor for GeometryReader();
  v99 = v33;
  v115 = swift_getWitnessTable();
  v146 = v33;
  v147 = v29;
  v34 = v29;
  v35 = v118;
  v148 = v115;
  v149 = v118;
  v103 = MEMORY[0x1E6981440];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v105 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v114 = &v92 - v36;
  v104 = type metadata accessor for ModifiedContent();
  v106 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v100 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v38);
  v102 = &v92 - v40;
  v41 = v133;
  v42 = *(v133 + 16);
  v111 = v133 + 16;
  v112 = v42;
  v43 = v119;
  v44 = v129;
  (v42)(v119, v131, v129, v39);
  v98 = *(v41 + 80);
  v92 = ((v98 + 88) & ~v98) + v125;
  v45 = (v98 + 88) & ~v98;
  v93 = v45;
  v95 = (v98 | 7);
  v46 = swift_allocObject();
  v47 = v120;
  v46[2] = v120;
  v46[3] = v34;
  v48 = v116;
  v49 = v128;
  v46[4] = v116;
  v46[5] = v49;
  v50 = v121;
  v46[6] = v121;
  v46[7] = v35;
  v51 = v117;
  v46[8] = v132;
  v46[9] = v51;
  v46[10] = v130;
  v52 = *(v41 + 32);
  v133 = v41 + 32;
  v113 = v52;
  v53 = v46 + v45;
  v54 = v43;
  v52(v53, v43, v44);
  swift_checkMetadataState();
  v55 = GeometryReader.init(content:)();
  v97 = v56;
  v146 = v55;
  v147 = v56;
  v57 = v44;
  v58 = v44;
  v59 = v131;
  AutoScrollingList.rows.getter(v58);
  v112(v43, v59, v57);
  v60 = v134;
  v61 = v134[2];
  v94 = v134 + 2;
  v96 = v61;
  v62 = v122;
  v63 = v123;
  v61(v122, v127, v123);
  v64 = *(v60 + 80);
  v65 = (v92 + v64) & ~v64;
  v66 = swift_allocObject();
  *(v66 + 2) = v47;
  v67 = v110;
  *(v66 + 3) = v110;
  *(v66 + 4) = v48;
  *(v66 + 5) = v128;
  *(v66 + 6) = v50;
  v68 = v118;
  v69 = v132;
  *(v66 + 7) = v118;
  *(v66 + 8) = v69;
  v70 = v130;
  *(v66 + 9) = v51;
  *(v66 + 10) = v70;
  v113(&v66[v93], v54, v129);
  v71 = v134[4];
  v134 += 4;
  v95 = v71;
  v71(&v66[v65], v62, v63);
  v72 = swift_checkMetadataState();
  OUTLINED_FUNCTION_3();
  v73 = v124;
  v74 = v68;
  View.onChange<A>(of:initial:_:)();

  (*(v108 + 8))(v73, v67);

  v75 = v62;
  v76 = v123;
  v96(v75, v127, v123);
  v77 = v119;
  v78 = v129;
  v112(v119, v131, v129);
  v79 = (v64 + 88) & ~v64;
  v80 = (v126 + v98 + v79) & ~v98;
  v81 = swift_allocObject();
  *(v81 + 2) = v120;
  *(v81 + 3) = v67;
  v82 = v128;
  *(v81 + 4) = v116;
  *(v81 + 5) = v82;
  *(v81 + 6) = v121;
  *(v81 + 7) = v74;
  v83 = v117;
  *(v81 + 8) = v132;
  *(v81 + 9) = v83;
  *(v81 + 10) = v130;
  v95(&v81[v79], v122, v76);
  v113(&v81[v80], v77, v78);
  v146 = v72;
  v147 = v67;
  v148 = v115;
  v149 = v74;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = v100;
  v86 = OpaqueTypeMetadata2;
  v87 = v114;
  View.onAppear(perform:)();

  (*(v105 + 8))(v87, v86);
  v135 = OpaqueTypeConformance2;
  v136 = MEMORY[0x1E69805D0];
  v88 = v104;
  swift_getWitnessTable();
  v89 = v102;
  static ViewBuilder.buildExpression<A>(_:)();
  v90 = *(v106 + 8);
  v90(v85, v88);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v90)(v89, v88);
}

void partial apply for closure #1 in AutoScrollingList.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  partial apply for closure #1 in AutoScrollingList.body.getter(a1, closure #1 in AutoScrollingList.body.getter, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

{
  OUTLINED_FUNCTION_41_20();
  a35 = v37;
  a36 = v38;
  v52 = v39;
  v53 = v40;
  v42 = *(v36 + 3);
  v43 = *(v36 + 4);
  v44 = *(v36 + 5);
  v45 = *(v36 + 6);
  v46 = *(v36 + 7);
  v47 = *(v36 + 8);
  v48 = *(v36 + 9);
  v49 = *(v36 + 10);
  a16 = *(v36 + 2);
  v41 = a16;
  a17 = v42;
  a18 = v43;
  a19 = v44;
  a20 = v45;
  a21 = v46;
  a22 = v47;
  a23 = v48;
  a24 = v49;
  v50 = type metadata accessor for AutoScrollingList(0, &a16);
  OUTLINED_FUNCTION_22(v50);
  v53(v52, &v36[(*(v51 + 80) + 88) & ~*(v51 + 80)], v41, v42, v43, v44, v45, v46);
  OUTLINED_FUNCTION_38_26();
}

uint64_t closure #1 in closure #1 in AutoScrollingList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v89 = a7;
  v90 = a8;
  v84 = a4;
  v77 = a2;
  v74 = a1;
  v82 = a9;
  v83 = a10;
  v18 = type metadata accessor for GeometryProxy();
  v79 = *(v18 - 8);
  v80 = v18;
  v81 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v78 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a3;
  v116 = a4;
  v87 = a6;
  v88 = a3;
  v117 = a5;
  v118 = a6;
  v119 = a7;
  v120 = a8;
  v121 = a10;
  v122 = a11;
  v123 = a12;
  v86 = a12;
  v75 = type metadata accessor for AutoScrollingList(0, &v115);
  v73 = *(v75 - 8);
  v76 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v63 - v20;
  v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMR);
  type metadata accessor for ModifiedContent();
  v69 = type metadata accessor for Optional();
  v85 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  v22 = type metadata accessor for ModifiedContent();
  v23 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnchorWritingModifier<CGRect, AutoScrollKey> and conformance _AnchorWritingModifier<A, B>, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR, MEMORY[0x1E697FF70]);
  v113 = a12;
  v114 = v23;
  v24 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v63 = a11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v115 = v22;
  v116 = AssociatedTypeWitness;
  v117 = WitnessTable;
  v118 = AssociatedConformanceWitness;
  v27 = type metadata accessor for IDView();
  v29 = v83;
  v28 = v84;
  v115 = v84;
  v116 = AssociatedTypeWitness;
  v117 = v27;
  v118 = v83;
  v119 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  type metadata accessor for ModifiedContent();
  v112 = swift_getWitnessTable();
  v110 = swift_getWitnessTable();
  v111 = MEMORY[0x1E697E070];
  v71 = v24;
  swift_getWitnessTable();
  type metadata accessor for LazyVStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ModifiedContent();
  v108 = swift_getWitnessTable();
  v109 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  v66 = type metadata accessor for ScrollView();
  v69 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v63 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI25_PreferenceActionModifierVy15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI25_PreferenceActionModifierVy15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  v68 = type metadata accessor for ModifiedContent();
  v70 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v67 = &v63 - v33;
  v34 = v74;
  GeometryProxy.size.getter();
  v36 = v35;
  v38 = v37;
  static Axis.Set.vertical.getter();
  v91 = v88;
  v92 = v28;
  v93 = v85;
  v94 = v87;
  v95 = v89;
  v96 = v90;
  v97 = v29;
  v98 = a11;
  v39 = v77;
  v99 = v86;
  v100 = v77;
  v102 = 0;
  v103 = 0;
  v101 = v34;
  v104 = v36;
  v105 = v38;
  ScrollView.init(_:showsIndicators:content:)();
  v40 = v72;
  v41 = v73;
  v42 = v75;
  (*(v73 + 16))(v72, v39, v75);
  v44 = v78;
  v43 = v79;
  v45 = v80;
  (*(v79 + 16))(v78, v34, v80);
  v46 = (*(v41 + 80) + 88) & ~*(v41 + 80);
  v47 = (v76 + *(v43 + 80) + v46) & ~*(v43 + 80);
  v48 = swift_allocObject();
  v49 = v84;
  v50 = v85;
  *(v48 + 2) = v88;
  *(v48 + 3) = v49;
  v51 = v87;
  *(v48 + 4) = v50;
  *(v48 + 5) = v51;
  v52 = v90;
  *(v48 + 6) = v89;
  *(v48 + 7) = v52;
  v53 = v63;
  *(v48 + 8) = v83;
  *(v48 + 9) = v53;
  *(v48 + 10) = v86;
  (*(v41 + 32))(&v48[v46], v40, v42);
  (*(v43 + 32))(&v48[v47], v44, v45);
  v54 = v66;
  v55 = swift_getWitnessTable();
  lazy protocol witness table accessor for type HighestBoundsKey and conformance HighestBoundsKey();
  lazy protocol witness table accessor for type ListAnchor? and conformance <A> A?();
  v56 = v65;
  v57 = v64;
  View.onPreferenceChange<A>(_:perform:)();

  (*(v69 + 8))(v57, v54);
  v58 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _PreferenceActionModifier<HighestBoundsKey> and conformance _PreferenceActionModifier<A>, &_s7SwiftUI25_PreferenceActionModifierVy15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI25_PreferenceActionModifierVy15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR, MEMORY[0x1E6980620]);
  v106 = v55;
  v107 = v58;
  v59 = v68;
  swift_getWitnessTable();
  v60 = v67;
  static ViewBuilder.buildExpression<A>(_:)();
  v61 = *(v70 + 8);
  v61(v56, v59);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v61)(v60, v59);
}

uint64_t closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v50 = a8;
  v48 = a7;
  v45 = a6;
  v40 = a4;
  v46 = a3;
  v49 = a2;
  v47 = a1;
  v51 = a9;
  v44 = a16;
  v41 = a14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMR);
  type metadata accessor for ModifiedContent();
  v38 = type metadata accessor for Optional();
  v42 = a15;
  v22 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  type metadata accessor for ModifiedContent();
  v77 = a16;
  v78 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnchorWritingModifier<CGRect, AutoScrollKey> and conformance _AnchorWritingModifier<A, B>, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR, MEMORY[0x1E697FF70]);
  v43 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v72 = a4;
  v73 = AssociatedTypeWitness;
  v74 = type metadata accessor for IDView();
  v75 = a14;
  v76 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v69 = swift_getWitnessTable();
  v70 = MEMORY[0x1E697E070];
  swift_getWitnessTable();
  type metadata accessor for LazyVStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v25 = type metadata accessor for ZStack();
  v39 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v38 - v26;
  v28 = type metadata accessor for ModifiedContent();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v38 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v38 - v33;
  static Alignment.bottomLeading.getter();
  v52 = v46;
  v53 = v40;
  v54 = v22;
  v55 = v45;
  v56 = v48;
  v57 = v50;
  v58 = v41;
  v59 = v42;
  v60 = v44;
  v61 = v47;
  v62 = v49;
  v63 = a10;
  v64 = a11;
  v65 = a12;
  v66 = a13;
  ZStack.init(alignment:content:)();
  GeometryProxy.size.getter();
  v37 = swift_getWitnessTable();
  static Alignment.center.getter();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v39 + 8))(v27, v25);
  v67 = v37;
  v68 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v35 = *(v29 + 8);
  v35(v31, v28);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v35)(v34, v28);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v40 = a8;
  v38 = a7;
  v35 = a6;
  v36 = a3;
  v39 = a2;
  v37 = a1;
  v41 = a9;
  v34 = a16;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMR);
  type metadata accessor for ModifiedContent();
  v33[0] = type metadata accessor for Optional();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  type metadata accessor for ModifiedContent();
  v65 = a16;
  v66 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnchorWritingModifier<CGRect, AutoScrollKey> and conformance _AnchorWritingModifier<A, B>, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR, MEMORY[0x1E697FF70]);
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = a4;
  v61 = AssociatedTypeWitness;
  v62 = type metadata accessor for IDView();
  v63 = a14;
  v64 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v57 = swift_getWitnessTable();
  v58 = MEMORY[0x1E697E070];
  swift_getWitnessTable();
  type metadata accessor for LazyVStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v24 = type metadata accessor for VStack();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v33 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v33 - v29;
  static HorizontalAlignment.leading.getter();
  v42 = v36;
  v43 = a4;
  v44 = a5;
  v45 = v35;
  v46 = v38;
  v47 = v40;
  v48 = a14;
  v49 = a15;
  v50 = v34;
  v51 = v37;
  v52 = v39;
  v53 = a10;
  v54 = a11;
  v55 = a12;
  v56 = a13;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v31 = *(v25 + 8);
  v31(v27, v24);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v31)(v30, v24);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char *a14, char *a15, char *a16)
{
  v126 = a4;
  v127 = a8;
  v133 = a7;
  v129 = a6;
  v102 = a3;
  v118 = a9;
  v119 = a2;
  v125 = a1;
  v124 = a16;
  v122 = a14;
  v22 = type metadata accessor for GeometryProxy();
  v116 = *(v22 - 8);
  v117 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v113 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v23;
  v24 = type metadata accessor for PinnedScrollableViews();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v111 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a15;
  v128 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  v27 = type metadata accessor for ModifiedContent();
  v28 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnchorWritingModifier<CGRect, AutoScrollKey> and conformance _AnchorWritingModifier<A, B>, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR, MEMORY[0x1E697FF70]);
  v150 = a16;
  v151 = v28;
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v143 = v27;
  v144[0] = AssociatedTypeWitness;
  v144[1] = WitnessTable;
  v144[2] = AssociatedConformanceWitness;
  v31 = type metadata accessor for IDView();
  v143 = a4;
  v144[0] = AssociatedTypeWitness;
  v144[1] = v31;
  v144[2] = a14;
  v144[3] = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v32 = type metadata accessor for ModifiedContent();
  v149 = swift_getWitnessTable();
  v147 = swift_getWitnessTable();
  v148 = MEMORY[0x1E697E070];
  v104 = swift_getWitnessTable();
  v105 = v32;
  v33 = type metadata accessor for LazyVStack();
  v107 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v106 = &v100 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  v108 = v33;
  v115 = type metadata accessor for ModifiedContent();
  v110 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v100 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v109 = &v100 - v37;
  v38 = v102;
  v39 = type metadata accessor for ModifiedContent();
  v101 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v100 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v100 = &v100 - v43;
  v44 = type metadata accessor for Optional();
  v45 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v100 - v46;
  v48 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v100 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = v39;
  v52 = type metadata accessor for Optional();
  v120 = *(v52 - 8);
  v121 = v52;
  MEMORY[0x1EEE9AC00](v52);
  v130 = &v100 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v131 = &v100 - v55;
  v98 = static Alignment.center.getter();
  v99 = v56;
  LOBYTE(v97) = 1;
  v96 = 0.0;
  LOBYTE(v95) = 1;
  v94 = 0.0;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)(__src);
  v146[120] = 1;
  memcpy(&v146[7], __src, 0x70uLL);
  v103 = 1;
  v143 = v38;
  v144[0] = v126;
  v144[1] = v128;
  v144[2] = v129;
  v144[3] = v133;
  v144[4] = v127;
  v144[5] = v122;
  v144[6] = v123;
  v144[7] = v124;
  v57 = type metadata accessor for AutoScrollingList(0, &v143);
  (*&v125[*(v57 + 108)])();
  if (__swift_getEnumTagSinglePayload(v47, 1, v38) == 1)
  {
    (*(v45 + 8))(v47, v44);
    __swift_storeEnumTagSinglePayload(v130, 1, 1, v132);
    v145[5] = v133;
    v145[6] = MEMORY[0x1E697E040];
    swift_getWitnessTable();
  }

  else
  {
    (*(v48 + 32))(v51, v47, v38);
    GeometryProxy.size.getter();
    static Alignment.center.getter();
    v58 = v133;
    View.frame(width:height:alignment:)();
    (*(v48 + 8))(v51, v38);
    v134 = v58;
    v135 = MEMORY[0x1E697E040];
    v59 = v132;
    swift_getWitnessTable();
    v60 = v100;
    static ViewBuilder.buildExpression<A>(_:)();
    v61 = v101;
    v62 = *(v101 + 8);
    v62(v41, v59);
    static ViewBuilder.buildExpression<A>(_:)();
    v62(v60, v59);
    v63 = v130;
    (*(v61 + 32))(v130, v41, v59);
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v59);
  }

  v64 = v130;
  static ViewBuilder.buildIf<A>(_:)(v130, v131);
  v65 = *(v120 + 8);
  v101 = v120 + 8;
  v102 = v65;
  v65(v64, v121);
  v66 = static HorizontalAlignment.leading.getter();
  v67 = v125;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v69 = v126;
  *(&v100 - 16) = v38;
  *(&v100 - 15) = v69;
  v70 = v129;
  *(&v100 - 14) = v128;
  *(&v100 - 13) = v70;
  v71 = v127;
  *(&v100 - 12) = v133;
  *(&v100 - 11) = v71;
  v72 = v123;
  *(&v100 - 10) = v122;
  *(&v100 - 9) = v72;
  *(&v100 - 8) = v124;
  *(&v100 - 7) = v67;
  v94 = a10;
  v95 = a11;
  v96 = a12;
  v97 = a13;
  v73 = v119;
  v98 = v119;
  default argument 2 of LazyVStack.init(alignment:spacing:pinnedViews:content:)(v68);
  v74 = v106;
  LazyVStack.init(alignment:spacing:pinnedViews:content:)();
  static Anchor.Source<A>.bounds.getter();
  v76 = v116;
  v75 = v117;
  v77 = v113;
  (*(v116 + 16))(v113, v73, v117);
  v78 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v79 = swift_allocObject();
  (*(v76 + 32))(v79 + v78, v77, v75);
  type metadata accessor for CGRect(0);
  v80 = v108;
  v81 = swift_getWitnessTable();
  v98 = lazy protocol witness table accessor for type HighestBoundsKey and conformance HighestBoundsKey();
  v82 = v112;
  View.anchorPreference<A, B>(key:value:transform:)();

  (*(v107 + 8))(v74, v80);
  v83 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnchorWritingModifier<CGRect, HighestBoundsKey> and conformance _AnchorWritingModifier<A, B>, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit16HighestBoundsKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR, MEMORY[0x1E697FF70]);
  v145[3] = v81;
  v145[4] = v83;
  v84 = v115;
  v129 = swift_getWitnessTable();
  v85 = v109;
  static ViewBuilder.buildExpression<A>(_:)();
  v86 = v110;
  v87 = *(v110 + 8);
  v87(v82, v84);
  v143 = 0;
  LOBYTE(v144[0]) = v103;
  memcpy(v144 + 1, v146, 0x77uLL);
  v145[0] = &v143;
  v88 = v121;
  v89 = v130;
  (*(v120 + 16))(v130, v131, v121);
  v145[1] = v89;
  (*(v86 + 16))(v82, v85, v84);
  v145[2] = v82;
  v142[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMR);
  v142[1] = v88;
  v142[2] = v84;
  v139 = lazy protocol witness table accessor for type ModifiedContent<Spacer, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v137 = v133;
  v138 = MEMORY[0x1E697E040];
  v136 = swift_getWitnessTable();
  v90 = v88;
  v140 = swift_getWitnessTable();
  v141 = v129;
  static ViewBuilder.buildBlock<each A>(_:)(v145, 3, v142);
  v87(v85, v84);
  v91 = v88;
  v92 = v102;
  v102(v131, v91);
  v87(v82, v84);
  return v92(v89, v90);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v89 = a8;
  v88 = a7;
  v87 = a3;
  v91 = a2;
  v84 = a1;
  v92 = a9;
  v85 = type metadata accessor for GeometryProxy();
  v94 = *(v85 - 8);
  v86 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v83 = v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a3;
  v102 = a4;
  v103 = a5;
  v104 = a6;
  v76 = a6;
  v105 = a7;
  v106 = a8;
  v107 = a14;
  v108 = a15;
  v109 = a16;
  v73 = a16;
  v93 = type metadata accessor for AutoScrollingList(0, &v101);
  v79 = *(v93 - 8);
  v82 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v77 = v66 - v27;
  v28 = a4;
  MEMORY[0x1EEE9AC00](v29);
  v95 = v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a15;
  v68 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  v32 = type metadata accessor for ModifiedContent();
  v33 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnchorWritingModifier<CGRect, AutoScrollKey> and conformance _AnchorWritingModifier<A, B>, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR, MEMORY[0x1E697FF70]);
  v99 = a16;
  v100 = v33;
  v90 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v101 = v32;
  v102 = AssociatedTypeWitness;
  v75 = AssociatedTypeWitness;
  v103 = WitnessTable;
  v104 = AssociatedConformanceWitness;
  v71 = type metadata accessor for IDView();
  v101 = v28;
  v102 = AssociatedTypeWitness;
  v36 = v28;
  v103 = v71;
  v104 = a14;
  v66[1] = a14;
  v105 = AssociatedConformanceWitness;
  v72 = type metadata accessor for ForEach();
  v80 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v67 = v66 - v37;
  v78 = type metadata accessor for ModifiedContent();
  v81 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v69 = v66 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v74 = v66 - v40;
  v41 = v93;
  v42 = v84;
  AutoScrollingList.rows.getter(v93);
  v43 = v79;
  v44 = v77;
  (*(v79 + 16))(v77, v42, v41);
  v45 = v94;
  v46 = v83;
  v47 = v85;
  (*(v94 + 16))(v83, v91, v85);
  v48 = v43;
  v49 = (*(v43 + 80) + 88) & ~*(v43 + 80);
  v50 = (v82 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = (*(v45 + 80) + v50 + 32) & ~*(v45 + 80);
  v52 = swift_allocObject();
  *(v52 + 2) = v87;
  *(v52 + 3) = v36;
  v53 = v76;
  *(v52 + 4) = v68;
  *(v52 + 5) = v53;
  v54 = v89;
  *(v52 + 6) = v88;
  *(v52 + 7) = v54;
  *(v52 + 8) = a14;
  v55 = v73;
  *(v52 + 9) = v70;
  *(v52 + 10) = v55;
  (*(v48 + 32))(&v52[v49], v44, v93);
  v56 = &v52[v50];
  *v56 = a10;
  v56[1] = a11;
  v56[2] = a12;
  v56[3] = a13;
  (*(v94 + 32))(&v52[v51], v46, v47);
  v57 = swift_getWitnessTable();
  v58 = v67;
  ForEach<>.init(_:content:)();
  v98 = v57;
  v59 = v72;
  v60 = swift_getWitnessTable();
  default argument 1 of View.scaleEffect(_:anchor:)();
  v61 = v69;
  View.scaleEffect(_:anchor:)();
  (*(v80 + 8))(v58, v59);
  v96 = v60;
  v97 = MEMORY[0x1E697E070];
  v62 = v78;
  swift_getWitnessTable();
  v63 = v74;
  static ViewBuilder.buildExpression<A>(_:)();
  v64 = *(v81 + 8);
  v64(v61, v62);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v64)(v63, v62);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v94 = a8;
  v93 = a5;
  v92 = a4;
  v100 = a3;
  v97 = a2;
  v110 = a1;
  v103 = a9;
  v91 = a15;
  v90 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v101 = &v73 - v27;
  v95 = type metadata accessor for GeometryProxy();
  v109 = *(v95 - 8);
  v96 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v108 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = *(a6 - 8);
  v88 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v105 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a16;
  v113 = a4;
  v114 = a5;
  v115 = a6;
  v116 = a7;
  v117 = a8;
  v118 = a14;
  v119 = a15;
  v120 = a16;
  v121 = a17;
  v77 = a17;
  v31 = type metadata accessor for AutoScrollingList(0, &v113);
  v104 = *(v31 - 8);
  v32 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v78 = &v73 - v33;
  v80 = a7;
  v99 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v76 = &v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR);
  v36 = type metadata accessor for ModifiedContent();
  v83 = v36;
  v98 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v86 = &v73 - v37;
  v38 = lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type _AnchorWritingModifier<CGRect, AutoScrollKey> and conformance _AnchorWritingModifier<A, B>, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMd, &_s7SwiftUI22_AnchorWritingModifierVySo6CGRectV15ConversationKit13AutoScrollKey33_D3B4D20066FA2C8011EAF639C52D2949LLVGMR, MEMORY[0x1E697FF70]);
  v111 = a17;
  v112 = v38;
  WitnessTable = swift_getWitnessTable();
  v85 = WitnessTable;
  v82 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v113 = v36;
  v114 = AssociatedTypeWitness;
  v115 = WitnessTable;
  v116 = AssociatedConformanceWitness;
  v87 = type metadata accessor for IDView();
  v89 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v79 = &v73 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v41);
  v81 = &v73 - v43;
  v74 = v31;
  v44 = v97;
  v45 = v110;
  (*(v97 + *(v31 + 104)))(v110, v42);
  v75 = static Anchor.Source<A>.bounds.getter();
  v46 = v104;
  v47 = v78;
  (*(v104 + 16))(v78, v44, v31);
  v48 = v107;
  v49 = v45;
  v50 = a6;
  (*(v107 + 16))(v105, v49, a6);
  v51 = v109;
  v52 = v95;
  (*(v109 + 16))(v108, v100, v95);
  v53 = (*(v46 + 80) + 88) & ~*(v46 + 80);
  v54 = (v32 + *(v48 + 80) + v53) & ~*(v48 + 80);
  v55 = (v88 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (*(v51 + 80) + v55 + 32) & ~*(v51 + 80);
  v57 = swift_allocObject();
  v58 = v93;
  *(v57 + 2) = v92;
  *(v57 + 3) = v58;
  v59 = v80;
  *(v57 + 4) = v50;
  *(v57 + 5) = v59;
  v60 = v90;
  *(v57 + 6) = v94;
  *(v57 + 7) = v60;
  v61 = v106;
  *(v57 + 8) = v91;
  *(v57 + 9) = v61;
  *(v57 + 10) = v77;
  (*(v104 + 32))(&v57[v53], v47, v74);
  (*(v107 + 32))(&v57[v54], v105, v50);
  v62 = &v57[v55];
  *v62 = a10;
  v62[1] = a11;
  v62[2] = a12;
  v62[3] = a13;
  (*(v109 + 32))(&v57[v56], v108, v52);
  type metadata accessor for CGRect(0);
  lazy protocol witness table accessor for type AutoScrollKey and conformance AutoScrollKey();
  v63 = v86;
  v64 = v76;
  View.anchorPreference<A, B>(key:value:transform:)();

  (*(v99 + 8))(v64, v59);
  v65 = v101;
  dispatch thunk of Identifiable.id.getter();
  v66 = v79;
  v67 = v83;
  v68 = v82;
  View.id<A>(_:)();
  (*(v102 + 8))(v65, v68);
  (*(v98 + 8))(v63, v67);
  v69 = v87;
  swift_getWitnessTable();
  v70 = v81;
  static ViewBuilder.buildExpression<A>(_:)();
  v71 = *(v89 + 8);
  v71(v66, v69);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v71)(v70, v69);
}

BOOL closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, CGFloat a5@<X4>, CGFloat a6@<X5>, CGFloat a7@<X6>, CGFloat a8@<X7>, _BYTE *a9@<X8>, CGFloat a10@<D0>, CGFloat a11@<D1>, CGFloat a12@<D2>, CGFloat a13@<D3>, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v33[0] = a1;
  v33[1] = a4;
  v35 = a2;
  v36 = a3;
  v37 = a9;
  v34 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = v33 - v27;
  v38.origin.x = a5;
  v38.origin.y = a6;
  v38.size.width = a7;
  v38.size.height = a8;
  v39 = a14;
  v40 = a15;
  v41 = a16;
  v42 = a17;
  type metadata accessor for AutoScrollingList(0, &v38);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AutoScrollViewModel(0, AssociatedTypeWitness, AssociatedConformanceWitness, v30);
  swift_getWitnessTable();
  StateObject.wrappedValue.getter();
  v31 = AutoScrollViewModel.stickyRowIDs.getter();

  dispatch thunk of Identifiable.id.getter();
  LOBYTE(AssociatedConformanceWitness) = MEMORY[0x1BFB21180](v28, v31, AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v26 + 8))(v28, AssociatedTypeWitness);
  if (AssociatedConformanceWitness)
  {
    type metadata accessor for CGRect(0);
    GeometryProxy.subscript.getter();
    v43.origin.x = a10;
    v43.origin.y = a11;
    v43.size.width = a12;
    v43.size.height = a13;
    result = CGRectIntersectsRect(v43, v38);
  }

  else
  {
    result = 0;
  }

  *v37 = result;
  return result;
}

uint64_t default argument 2 of LazyVStack.init(alignment:spacing:pinnedViews:content:)(double a1)
{
  type metadata accessor for PinnedScrollableViews();
  lazy protocol witness table accessor for type CGRect and conformance CGRect(&lazy protocol witness table cache variable for type PinnedScrollableViews and conformance PinnedScrollableViews, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for CGRect(0);
  GeometryProxy.subscript.getter();
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = a1;
}

uint64_t closure #2 in closure #1 in closure #1 in AutoScrollingList.body.getter(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v58 = a7;
  v59 = a8;
  v57 = a6;
  v55 = a5;
  v53 = a4;
  v49 = a3;
  v48 = a2;
  v56 = a12;
  v54 = a11;
  v52 = a10;
  v51 = a9;
  v60 = type metadata accessor for GeometryProxy();
  v47 = *(v60 - 8);
  v50 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v46 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v62 = a4;
  *(&v62 + 1) = a5;
  *&v63 = a6;
  *(&v63 + 1) = a7;
  v64 = a8;
  v65 = a9;
  v66 = a10;
  v67 = a11;
  v68 = a12;
  v19 = type metadata accessor for AutoScrollingList(0, &v62);
  v45 = v19;
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v44 - v25;
  v27 = a1[1];
  v62 = *a1;
  v63 = v27;
  v64 = *(a1 + 4);
  v28 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v28);
  (*(v20 + 16))(v23, v48, v19);
  v29 = v47;
  v30 = v46;
  (*(v47 + 16))(v46, v49, v60);
  type metadata accessor for MainActor();
  outlined init with copy of ListAnchor?(&v62, v61);
  v31 = static MainActor.shared.getter();
  v32 = (*(v20 + 80) + 104) & ~*(v20 + 80);
  v33 = (v21 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v29 + 80) + v33 + 40) & ~*(v29 + 80);
  v35 = swift_allocObject();
  v36 = MEMORY[0x1E69E85E0];
  *(v35 + 2) = v31;
  *(v35 + 3) = v36;
  v37 = v55;
  *(v35 + 4) = v53;
  *(v35 + 5) = v37;
  v38 = v58;
  *(v35 + 6) = v57;
  *(v35 + 7) = v38;
  v39 = v51;
  *(v35 + 8) = v59;
  *(v35 + 9) = v39;
  v40 = v54;
  *(v35 + 10) = v52;
  *(v35 + 11) = v40;
  *(v35 + 12) = v56;
  (*(v20 + 32))(&v35[v32], v23, v45);
  v41 = &v35[v33];
  v42 = v63;
  *v41 = v62;
  *(v41 + 1) = v42;
  *(v41 + 4) = v64;
  (*(v29 + 32))(&v35[v34], v30, v60);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in AutoScrollingList.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v17;
  *(v8 + 224) = v15;
  *(v8 + 240) = v16;
  *(v8 + 208) = v14;
  *(v8 + 192) = a7;
  *(v8 + 200) = a8;
  *(v8 + 176) = a5;
  *(v8 + 184) = a6;
  *(v8 + 168) = a4;
  v9 = type metadata accessor for GlobalCoordinateSpace();
  *(v8 + 264) = v9;
  *(v8 + 272) = *(v9 - 8);
  *(v8 + 280) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 288) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in closure #1 in closure #1 in AutoScrollingList.body.getter, v11, v10);
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in AutoScrollingList.body.getter()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);
  v5 = *(v0 + 176);
  v18 = *(v0 + 208);
  v19 = *(v0 + 192);
  v16 = *(v0 + 240);
  v17 = *(v0 + 224);

  *(v0 + 16) = v19;
  *(v0 + 32) = v18;
  *(v0 + 48) = v17;
  *(v0 + 64) = v16;
  *(v0 + 80) = v4;
  type metadata accessor for AutoScrollingList(0, v0 + 16);
  outlined init with copy of ListAnchor?(v5, v0 + 88);
  PositionalData.listBounds.setter(v5);
  static CoordinateSpaceProtocol<>.global.getter();
  GeometryProxy.frame<A>(in:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v1, v2);
  *(v0 + 128) = v7;
  *(v0 + 136) = v9;
  *(v0 + 144) = v11;
  *(v0 + 152) = v13;
  *(v0 + 160) = 0;
  PositionalData.scrollViewBounds.setter(v0 + 128);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t closure #2 in closure #1 in AutoScrollingList.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v63 = a8;
  v65 = a7;
  v66 = a3;
  v48 = a5;
  v59 = a4;
  v49 = a13;
  v47 = a10;
  v62 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v17 = *(a11 + 8);
  v54 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v17;
  v64 = a11;
  v60 = v18;
  v19 = type metadata accessor for ReversedCollection();
  MEMORY[0x1EEE9AC00](v19);
  v52 = &v45 - v20;
  WitnessTable = swift_getWitnessTable();
  v21 = type metadata accessor for Slice();
  v22 = *(v21 - 8);
  v57 = v21;
  v58 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v46 = &v45 - v23;
  v79[0] = a5;
  v79[1] = a6;
  v24 = v65;
  v79[2] = v65;
  v79[3] = a8;
  v79[4] = a9;
  v79[5] = a10;
  v79[6] = a11;
  v79[7] = a12;
  v61 = a12;
  v79[8] = a13;
  v25 = type metadata accessor for AutoScrollingList(0, v79);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v50 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AutoScrollViewModel(0, AssociatedTypeWitness, AssociatedConformanceWitness, v27);
  swift_getWitnessTable();
  v53 = StateObject.wrappedValue.getter();
  AutoScrollingList.rows.getter(v25);
  v28 = v60;
  MEMORY[0x1BFB20870](v60, v55);
  v29 = v46;
  Collection.prefix(_:)();
  v31 = v47;
  v30 = v48;
  v78[12] = v48;
  v78[13] = v28;
  v32 = v62;
  v33 = v63;
  v78[14] = v24;
  v78[15] = v63;
  v78[16] = v62;
  v78[17] = v47;
  v34 = v64;
  v35 = v61;
  v78[18] = v64;
  v78[19] = v61;
  v36 = v49;
  v78[20] = v49;
  KeyPath = swift_getKeyPath();
  v78[2] = v30;
  v78[3] = v28;
  v78[4] = v33;
  v78[5] = v32;
  v78[6] = v31;
  v78[7] = v34;
  v78[8] = v35;
  v78[9] = v36;
  v78[10] = KeyPath;
  v38 = v57;
  v39 = swift_getWitnessTable();
  v40 = v29;
  v42 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in closure #2 in closure #1 in AutoScrollingList.body.getter, v78, v38, v50, MEMORY[0x1E69E73E0], v39, MEMORY[0x1E69E7410], v41);

  (*(v58 + 8))(v40, v38);
  v79[0] = v42;
  type metadata accessor for Array();
  swift_getWitnessTable();
  v43 = Set.init<A>(_:)();
  AutoScrollViewModel.stickyRowIDs.setter(v43);

  v67 = v30;
  v68 = v60;
  v69 = v65;
  v70 = v63;
  v71 = v62;
  v72 = v31;
  v73 = v64;
  v74 = v61;
  v75 = v36;
  v76 = v66;
  v77 = v59;
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t closure #1 in closure #2 in closure #1 in AutoScrollingList.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v41 = a8;
  v39 = a1;
  AssociatedConformanceWitness = a7;
  v38 = a2;
  v33 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Optional();
  v29 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v29 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  v36 = *(v18 - 8);
  v37 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v34 = a4;
  v35 = &v29 - v19;
  v42[0] = a3;
  v42[1] = a4;
  v42[2] = a5;
  v42[3] = a6;
  v42[4] = AssociatedConformanceWitness;
  v42[5] = v41;
  v41 = a9;
  v42[6] = a9;
  v42[7] = a10;
  v42[8] = a11;
  v20 = type metadata accessor for AutoScrollingList(0, v42);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for AutoScrollViewModel(0, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  swift_getWitnessTable();
  StateObject.wrappedValue.getter();
  LOBYTE(a6) = AutoScrollViewModel.shouldAutoScroll.getter();

  if (a6)
  {
    result = PositionalData.isWithinAutoScrollTolerance.getter();
    if (result)
    {
      v23 = v31;
      AutoScrollingList.rows.getter(v20);
      v24 = v32;
      v25 = v34;
      BidirectionalCollection.last.getter();
      (*(v33 + 8))(v23, v25);
      if (__swift_getEnumTagSinglePayload(v24, 1, a5) == 1)
      {
        (*(v29 + 8))(v24, v30);
        v26 = 1;
        v27 = v35;
      }

      else
      {
        v27 = v35;
        dispatch thunk of Identifiable.id.getter();
        (*(*(a5 - 8) + 8))(v24, a5);
        v26 = 0;
      }

      __swift_storeEnumTagSinglePayload(v27, v26, 1, AssociatedTypeWitness);
      v42[11] = AssociatedConformanceWitness;
      v28 = v37;
      swift_getWitnessTable();
      ScrollViewProxy.scrollTo<A>(_:anchor:)();
      return (*(v36 + 8))(v27, v28);
    }
  }

  return result;
}

uint64_t closure #1 in closure #3 in closure #1 in AutoScrollingList.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v36 = a1;
  v35 = a8;
  v31 = a6;
  v32 = a7;
  v33 = a2;
  v29 = a11;
  v14 = *(a4 - 8);
  v28 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Optional();
  v26 = *(v17 - 8);
  v27 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v34 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v26 - v21;
  v37[0] = a3;
  v37[1] = a4;
  v37[2] = a5;
  v37[3] = v31;
  v37[4] = v32;
  v37[5] = v35;
  v37[6] = v28;
  v37[7] = a10;
  v35 = a10;
  v37[8] = v29;
  v23 = type metadata accessor for AutoScrollingList(0, v37);
  AutoScrollingList.rows.getter(v23);
  BidirectionalCollection.last.getter();
  (*(v14 + 8))(v16, a4);
  if (__swift_getEnumTagSinglePayload(v19, 1, a5) == 1)
  {
    (*(v26 + 8))(v19, v27);
    v24 = 1;
  }

  else
  {
    dispatch thunk of Identifiable.id.getter();
    (*(*(a5 - 8) + 8))(v19, a5);
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v22, v24, 1, AssociatedTypeWitness);
  v37[11] = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  ScrollViewProxy.scrollTo<A>(_:anchor:)();
  return (*(v34 + 8))(v22, v20);
}

uint64_t getEnumTagSinglePayload for ListAnchor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ListAnchor(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t type metadata accessor for PositionalData(uint64_t a1)
{
  result = type metadata singleton initialization cache for PositionalData;
  if (!type metadata singleton initialization cache for PositionalData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PositionalData(uint64_t a1)
{
  type metadata accessor for Published<Set<TUHandle>?>(319, &lazy cache variable for type metadata for Published<CGRect?>, &_sSo6CGRectVSgMd, &_sSo6CGRectVSgMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Set<TUHandle>?>(319, &lazy cache variable for type metadata for Published<ListAnchor?>, &_s15ConversationKit10ListAnchorVSgMd, &_s15ConversationKit10ListAnchorVSgMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Bool>();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata completion function for AutoScrollViewModel(uint64_t a1)
{
  type metadata accessor for Set();
  type metadata accessor for Published();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Bool>();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t type metadata completion function for AutoScrollingList(void *a1)
{
  result = type metadata accessor for Binding();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PositionalData(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ()();
      if (v4 <= 0x3F)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        type metadata accessor for AutoScrollViewModel(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
        swift_getWitnessTable();
        result = type metadata accessor for StateObject();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoScrollingList(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    v17 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((v17 + v7 + 8) & ~v7, v6, v4);
    }

    else
    {
      v18 = *v17;
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v9 = ((((((((((((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
    v10 = (a2 - v8 + 255) >> 8;
    if (v9 <= 3)
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v9);
        if (!*(result + v9))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = (v14 - 1) << (8 * v9);
        if (v9 <= 3)
        {
          v16 = *result;
        }

        else
        {
          v15 = 0;
          v16 = *result;
        }

        result = v8 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for AutoScrollingList(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((v18 + v10 + 8) & ~v10, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *v18 = v19;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void *type metadata accessor for AutoScrollKey()
{
  return &unk_1F3AE8468;
}

{
  return &unk_1F3AF9B10;
}

uint64_t Set.init(_nonEmptyArrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v34 - v10;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  if (MEMORY[0x1BFB20DB0](v12))
  {
    type metadata accessor for _SetStorage();
    v15 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v37 = MEMORY[0x1BFB20DF0](v5, a2);
  if (v37)
  {
    v34 = v7;
    v35 = v5;
    v16 = 0;
    v42 = (v6 + 16);
    v43 = v15 + 56;
    v39 = (v6 + 32);
    v41 = v6 + 8;
    v36 = v14;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v18 = *(v6 + 16);
        result = (v18)(v14, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, a2);
      }

      else
      {
        v40 = v16;
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v34 != 8)
        {
          goto LABEL_23;
        }

        v45 = result;
        v18 = *v42;
        (*v42)(v14, &v45, a2);
        result = swift_unknownObjectRelease();
        v16 = v40;
      }

      v40 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v38 = *v39;
      v38(v44, v14, a2);
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = ~(-1 << *(v15 + 32));
      while (1)
      {
        v22 = v20 & v21;
        v23 = (v20 & v21) >> 6;
        v24 = *(v43 + 8 * v23);
        v25 = 1 << (v20 & v21);
        if ((v25 & v24) == 0)
        {
          break;
        }

        v26 = v15;
        v18(v8, (*(v15 + 48) + *(v6 + 72) * v22), a2);
        v27 = a3;
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        v29 = *(v6 + 8);
        v29(v8, a2);
        if (v28)
        {
          v29(v44, a2);
          a3 = v27;
          v14 = v36;
          v15 = v26;
          v16 = v40;
          goto LABEL_16;
        }

        v20 = v22 + 1;
        a3 = v27;
        v15 = v26;
      }

      v30 = v44;
      *(v43 + 8 * v23) = v25 | v24;
      result = (v38)(*(v15 + 48) + *(v6 + 72) * v22, v30, a2);
      v31 = *(v15 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      v14 = v36;
      v16 = v40;
      if (v32)
      {
        goto LABEL_22;
      }

      *(v15 + 16) = v33;
LABEL_16:
      v5 = v35;
      if (v16 == v37)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v15;
  }

  return result;
}

uint64_t objectdestroy_22Tm_0(uint64_t a1)
{
  v19 = *(v1 + 16);
  v3 = *(v1 + 40);
  v20 = *(v1 + 24);
  v18 = v20;
  v21 = v3;
  v4 = *(v1 + 72);
  v22 = *(v1 + 56);
  v23 = v4;
  OUTLINED_FUNCTION_2_140(a1, &v19);
  v6 = v1 + ((*(v5 + 80) + 88) & ~*(v5 + 80));

  OUTLINED_FUNCTION_44_16(v7, v8, v9, v10, v11, v12, v13, v14, v18);
  OUTLINED_FUNCTION_33_32();
  (*(v15 + 8))(v6 + v16, v2);

  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_46_21();
  OUTLINED_FUNCTION_28_42();
  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #1 in AutoScrollingList.body.getter(uint64_t a1, uint64_t a2)
{
  v4 = v2[5];
  v18 = v2[4];
  v19 = v2[3];
  v5 = v2[6];
  v6 = v2[7];
  v8 = v2[8];
  v7 = v2[9];
  v9 = v2[10];
  v22[0] = v2[2];
  v3 = v22[0];
  v22[1] = v19;
  v22[2] = v18;
  v22[3] = v4;
  v22[4] = v5;
  v22[5] = v6;
  v22[6] = v8;
  v22[7] = v7;
  v22[8] = v9;
  v10 = type metadata accessor for AutoScrollingList(0, v22);
  OUTLINED_FUNCTION_9_0(v10);
  v12 = (*(v11 + 80) + 88) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = type metadata accessor for ScrollViewProxy();
  OUTLINED_FUNCTION_22(v15);
  return closure #2 in closure #1 in AutoScrollingList.body.getter(a1, a2, v2 + v12, v2 + ((v12 + v14 + *(v16 + 80)) & ~*(v16 + 80)), v3, v19, v18, v4, v5, v6, v8, v7, v9);
}

uint64_t partial apply for closure #1 in closure #3 in closure #1 in AutoScrollingList.body.getter()
{
  return partial apply for closure #1 in closure #3 in closure #1 in AutoScrollingList.body.getter();
}

{
  OUTLINED_FUNCTION_25_41();
  return v1(*(v0 + 88), *(v0 + 96));
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter()
{
  return partial apply for closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter();
}

{
  OUTLINED_FUNCTION_25_41();
  return v1(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));
}

unint64_t lazy protocol witness table accessor for type HighestBoundsKey and conformance HighestBoundsKey()
{
  result = lazy protocol witness table cache variable for type HighestBoundsKey and conformance HighestBoundsKey;
  if (!lazy protocol witness table cache variable for type HighestBoundsKey and conformance HighestBoundsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighestBoundsKey and conformance HighestBoundsKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListAnchor? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ListAnchor? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ListAnchor? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15ConversationKit10ListAnchorVSgMd, &_s15ConversationKit10ListAnchorVSgMR);
    lazy protocol witness table accessor for type ListAnchor and conformance ListAnchor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListAnchor? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListAnchor and conformance ListAnchor()
{
  result = lazy protocol witness table cache variable for type ListAnchor and conformance ListAnchor;
  if (!lazy protocol witness table cache variable for type ListAnchor and conformance ListAnchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListAnchor and conformance ListAnchor);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in closure #1 in AutoScrollingList.body.getter(uint64_t a1)
{
  v3 = v2;
  v23 = v1[5];
  v24 = v1[4];
  v4 = v1[7];
  v22 = v1[6];
  v5 = v1[9];
  v21 = v1[8];
  v6 = v1[10];
  v7 = v1[11];
  v8 = v1[12];
  v2[2] = v24;
  v2[3] = v23;
  v2[4] = v22;
  v2[5] = v4;
  v2[6] = v21;
  v2[7] = v5;
  v2[8] = v6;
  v2[9] = v7;
  v2[10] = v8;
  v9 = type metadata accessor for AutoScrollingList(0, (v2 + 2));
  OUTLINED_FUNCTION_9_0(v9);
  v11 = (*(v10 + 80) + 104) & ~*(v10 + 80);
  v13 = (*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = type metadata accessor for GeometryProxy();
  OUTLINED_FUNCTION_22(v14);
  v16 = (v13 + *(v15 + 80) + 40) & ~*(v15 + 80);
  v17 = v1[2];
  v18 = v1[3];
  v19 = swift_task_alloc();
  v3[11] = v19;
  *v19 = v3;
  v19[1] = partial apply for closure #1 in closure #2 in closure #1 in closure #1 in AutoScrollingList.body.getter;

  return closure #1 in closure #2 in closure #1 in closure #1 in AutoScrollingList.body.getter(a1, v17, v18, v1 + v11, v1 + v13, v1 + v16, v24, v23);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in closure #1 in AutoScrollingList.body.getter()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GeometryProxy();
  OUTLINED_FUNCTION_22(v4);

  return closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter(a1, a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Spacer, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA16_FlexFrameLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Spacer, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CGRect and conformance CGRect(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[5];
  v18 = v2[4];
  v19 = v2[3];
  v5 = v2[6];
  v6 = v2[7];
  v8 = v2[8];
  v7 = v2[9];
  v9 = v2[10];
  v22[0] = v2[2];
  v3 = v22[0];
  v22[1] = v19;
  v22[2] = v18;
  v22[3] = v4;
  v22[4] = v5;
  v22[5] = v6;
  v22[6] = v8;
  v22[7] = v7;
  v22[8] = v9;
  v10 = type metadata accessor for AutoScrollingList(0, v22);
  OUTLINED_FUNCTION_9_0(v10);
  v12 = (*(v11 + 80) + 88) & ~*(v11 + 80);
  v14 = (*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = type metadata accessor for GeometryProxy();
  OUTLINED_FUNCTION_22(v15);
  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter(a1, v2 + v12, v2 + ((v14 + *(v16 + 80) + 32) & ~*(v16 + 80)), v3, v19, v18, v4, v5, a2, *(v2 + v14), *(v2 + v14 + 8), *(v2 + v14 + 16), *(v2 + v14 + 24), v6, v8, v7, v9);
}

BOOL partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v22 = v2[3];
  v3 = v2[4];
  v21 = v2[5];
  v4 = *(v2 + 6);
  v5 = *(v2 + 7);
  v7 = *(v2 + 8);
  v6 = *(v2 + 9);
  v8 = *(v2 + 10);
  *v26 = v2[2];
  v23 = *v26;
  *&v26[1] = v22;
  *&v26[2] = v3;
  *&v26[3] = v21;
  v26[4] = v4;
  v26[5] = v5;
  v26[6] = v7;
  v26[7] = v6;
  v26[8] = v8;
  v9 = type metadata accessor for AutoScrollingList(0, v26);
  OUTLINED_FUNCTION_9_0(v9);
  v11 = (*(v10 + 80) + 88) & ~*(v10 + 80);
  OUTLINED_FUNCTION_36_28();
  v14 = (v13 + *(v12 + 80)) & ~*(v12 + 80);
  OUTLINED_FUNCTION_36_28();
  v16 = (*(v15 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = type metadata accessor for GeometryProxy();
  OUTLINED_FUNCTION_22(v17);
  *(&v20 + 1) = v5;
  *&v20 = v4;
  return closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in AutoScrollingList.body.getter(a1, v2 + v11, v2 + v14, v2 + ((v16 + *(v18 + 80) + 32) & ~*(v18 + 80)), v23, v22, v3, v21, a2, *(v2 + v16), *(v2 + v16 + 8), *(v2 + v16 + 16), *(v2 + v16 + 24), v20, v7, v6, v8);
}

unint64_t lazy protocol witness table accessor for type AutoScrollKey and conformance AutoScrollKey()
{
  result = lazy protocol witness table cache variable for type AutoScrollKey and conformance AutoScrollKey;
  if (!lazy protocol witness table cache variable for type AutoScrollKey and conformance AutoScrollKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoScrollKey and conformance AutoScrollKey);
  }

  return result;
}

uint64_t EffectsBrowserViewConstraintManager.__allocating_init(layoutIdiom:containingGuide:effectsBrowserView:controlsView:localParticipantView:)(char *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = swift_allocObject();
  EffectsBrowserViewConstraintManager.init(layoutIdiom:containingGuide:effectsBrowserView:controlsView:localParticipantView:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t EffectsBrowserViewConstraintManager.init(layoutIdiom:containingGuide:effectsBrowserView:controlsView:localParticipantView:)(char *a1, uint64_t a2, id a3, void *a4, void *a5)
{
  v10 = *a1;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  [a3 setTranslatesAutoresizingMaskIntoConstraints_];
  if (a5)
  {
    v11 = [a3 heightAnchor];
    v12 = [v11 constraintEqualToConstant_];

    v13 = *(v5 + 56);
    *(v5 + 56) = v12;

    *(v5 + 48) = MEMORY[0x1E69E7CC0];
    *(v5 + 16) = v10;
    *(v5 + 24) = a2;
    *(v5 + 32) = a3;
    type metadata accessor for LocalParticipantView(0);
    v14 = swift_dynamicCastClass();
    if (!v14)
    {

      v14 = 0;
    }
  }

  else
  {
    v15 = [a3 topAnchor];
    v16 = [a4 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:17.0];

    v18 = *(v5 + 64);
    *(v5 + 64) = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BC4BC370;
    v20 = [a3 bottomAnchor];
    v21 = [a4 bottomAnchor];
    v22 = OUTLINED_FUNCTION_5_98();

    *(v19 + 32) = v22;
    v23 = [a3 leadingAnchor];
    v24 = [a4 leadingAnchor];
    v25 = OUTLINED_FUNCTION_5_98();

    *(v19 + 40) = v25;
    v26 = [a3 trailingAnchor];
    v27 = [a4 trailingAnchor];
    v28 = OUTLINED_FUNCTION_5_98();

    *(v19 + 48) = v28;
    v14 = 0;
    *(v5 + 48) = v19;
    *(v5 + 16) = v10;
    *(v5 + 24) = a2;
    *(v5 + 32) = a3;
  }

  *(v5 + 40) = v14;
  return v5;
}

void EffectsBrowserViewConstraintManager.constraintsForLayout(_:in:deviceOrientation:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 17);
  v5 = v1[7];
  v48 = v1[6];
  if (v5)
  {
    if (v3 == 6 || v3 == 3)
    {
      v7 = 75.0;
    }

    else
    {
      v7 = 58.0;
    }

    MEMORY[0x1BFB20CC0]([v5 setConstant_]);
    OUTLINED_FUNCTION_2_141();
    if (v8)
    {
      OUTLINED_FUNCTION_0_177();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
  }

  v9 = v1[8];
  if (v9)
  {
    MEMORY[0x1BFB20CC0]([v9 setConstant_]);
    OUTLINED_FUNCTION_2_141();
    if (v8)
    {
      OUTLINED_FUNCTION_0_177();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v10 = v1[5];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_buttonShelfHost;
    swift_beginAccess();
    v12 = *&v10[v11];
    if (v12)
    {
      LOBYTE(v12) = (v4 == 128) & ~*(v2 + 16);
    }

    if (v4 > 0x80 || (v12 & 1) != 0)
    {
      v14 = *&v10[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView];
      v15 = v10;
      v13 = [v14 bottomAnchor];
      if (v4 >= 0x81)
      {
        if (one-time initialization token for browserVerticalPaddingFull != -1)
        {
          swift_once();
        }

        v16 = &static Layout.EffectsBrowserContainerView.browserVerticalPaddingFull;
LABEL_29:
        v17 = *v16;
        v18 = v2[4];
        v19 = [v18 topAnchor];
        v20 = [v19 constraintEqualToAnchor:v13 constant:v17];

        MEMORY[0x1BFB20CC0]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (v4 < 0x81)
        {
          v33 = *(v2 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          if ((v33 & 1) == 0)
          {
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1BC4BA930;
            v41 = [v18 centerXAnchor];
            v42 = [v10 centerXAnchor];
            v43 = OUTLINED_FUNCTION_26_1();
            v45 = [v43 v44];

            *(inited + 32) = v45;
            v46 = [v18 widthAnchor];
            v47 = [v46 constraintEqualToConstant_];

            *(inited + 40) = v47;
            goto LABEL_37;
          }

          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1BC4BA930;
          v34 = [v18 leadingAnchor];
          v35 = v2[3];
          v36 = [v35 leadingAnchor];
          Layout.MultiwayFaceTime.init()(v49);
          v37 = [v34 constraintEqualToAnchor:v36 constant:v50];

          *(inited + 32) = v37;
          v28 = [v35 trailingAnchor];
          v29 = [v18 trailingAnchor];
          Layout.MultiwayFaceTime.init()(v51);
          v38 = OUTLINED_FUNCTION_26_1();
          v32 = [v38 v39];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1BC4BA930;
          v22 = [v18 leadingAnchor];
          v23 = OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView;
          v24 = [*(*&v10[OBJC_IVAR____TtC15ConversationKit20LocalParticipantView_controlsView] + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_controlsLayoutGuide) leadingAnchor];
          v25 = OUTLINED_FUNCTION_26_1();
          v27 = [v25 v26];

          *(inited + 32) = v27;
          v28 = [v18 trailingAnchor];
          v29 = [*(*&v10[v23] + OBJC_IVAR____TtC15ConversationKit28LocalParticipantControlsView_controlsLayoutGuide) trailingAnchor];
          v30 = OUTLINED_FUNCTION_26_1();
          v32 = [v30 v31];
        }

        v40 = v32;

        *(inited + 40) = v40;
LABEL_37:
        specialized Array.append<A>(contentsOf:)(inited);

        return;
      }
    }

    else
    {
      v13 = [v10 bottomAnchor];
    }

    if (one-time initialization token for browserVerticalPadding != -1)
    {
      swift_once();
    }

    v16 = &static Layout.EffectsBrowserContainerView.browserVerticalPadding;
    goto LABEL_29;
  }
}

id *EffectsBrowserViewConstraintManager.deinit()
{

  return v0;
}

uint64_t EffectsBrowserViewConstraintManager.__deallocating_deinit()
{
  EffectsBrowserViewConstraintManager.deinit();

  return swift_deallocClassInstance();
}

ConversationKit::CameraPosition_optional __swiftcall CameraPosition.init(avDevicePosition:)(AVCaptureDevicePosition avDevicePosition)
{
  if (avDevicePosition < (AVCaptureDevicePositionFront|AVCaptureDevicePositionBack))
  {
    return (2 - avDevicePosition);
  }

  _StringGuts.grow(_:)(65);
  MEMORY[0x1BFB20B10](0xD00000000000003FLL, 0x80000001BC513050);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1BFB20B10](v2);

  result.value = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int CameraPosition.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1BFB22640](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CameraPosition(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  CameraPosition.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CameraPosition and conformance CameraPosition()
{
  result = lazy protocol witness table cache variable for type CameraPosition and conformance CameraPosition;
  if (!lazy protocol witness table cache variable for type CameraPosition and conformance CameraPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CameraPosition and conformance CameraPosition);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CameraPosition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void SpringAnimationParameters.init(duration:mass:stiffness:damping:initialVelocity:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  a1[4] = a6;
  a1[5] = a7;
}

id SpringAnimationParameters.provider.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = objc_allocWithZone(MEMORY[0x1E69DCF88]);

  return [v6 initWithMass:v1 stiffness:v2 damping:v3 initialVelocity:{v4, v5}];
}

BOOL static Bool.< infix(_:_:)(char a1, char a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v4 = [v3 integerValue];

  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v6 = [v5 integerValue];

  return v4 < v6;
}

UIViewPropertyAnimator __swiftcall UIViewPropertyAnimator.init(cubicAnimationParameters:)(ConversationKit::CubicAnimationParameters *cubicAnimationParameters)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  duration = cubicAnimationParameters->duration;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:cubicAnimationParameters->controlPoint1.x controlPoint2:{cubicAnimationParameters->controlPoint1.y, cubicAnimationParameters->controlPoint2.x, cubicAnimationParameters->controlPoint2.y}];
  v5 = [v2 initWithDuration:v4 timingParameters:duration];

  return v5;
}

void __swiftcall CubicAnimationParameters.init(duration:controlPoint1:controlPoint2:)(ConversationKit::CubicAnimationParameters *__return_ptr retstr, Swift::Double duration, CGPoint controlPoint1, CGPoint controlPoint2)
{
  retstr->duration = duration;
  retstr->controlPoint1.x = controlPoint1.x;
  retstr->controlPoint1.y = controlPoint1.y;
  retstr->controlPoint2.x = controlPoint2.x;
  retstr->controlPoint2.y = controlPoint2.y;
}

id CubicAnimationParameters.mediaTimingFunction.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  *&v6 = v1;
  *&v7 = v2;
  *&v8 = v3;
  *&v9 = v4;

  return [v5 initWithControlPoints__:v6 :{v7, v8, v9}];
}

id CubicAnimationParameters.cubicTimingParameters.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = objc_allocWithZone(MEMORY[0x1E69DC908]);

  return [v5 initWithControlPoint1:v1 controlPoint2:{v2, v3, v4}];
}

uint64_t getEnumTagSinglePayload for CubicAnimationParameters(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CubicAnimationParameters(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t VideoMessagePlayerManager.player.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_7_0();
  return (*(v4 + 16))(a1, v1 + v3);
}

uint64_t key path getter for VideoMessagePlayerManager.hostViewController : <A>VideoMessagePlayerManager<A>@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t VideoMessagePlayerManager.hostViewController.getter()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void VideoMessagePlayerManager.hostViewController.setter(void *a1)
{
  OUTLINED_FUNCTION_0_1();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*VideoMessagePlayerManager.hostViewController.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_0_1();
  *(v5 + 40) = *(v4 + 128);
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return TapInteraction.view.modify;
}

uint64_t VideoMessagePlayerManager.__allocating_init(videoMessageViewModel:)(uint64_t a1)
{
  v2 = swift_allocObject();
  VideoMessagePlayerManager.init(videoMessageViewModel:)(a1);
  return v2;
}

uint64_t VideoMessagePlayerManager.init(videoMessageViewModel:)(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1 + *(*v1 + 96), 1, 1, *(*v1 + 80));
  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v3 + 112)) = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v4 + 120)) = 0;
  OUTLINED_FUNCTION_0_1();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_0_1();
  *(v1 + *(v5 + 104)) = a1;
  return v1;
}

uint64_t VideoMessagePlayerManager.setupVideo(with:)(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_9_86();
  v5 = *(v4 + 80);
  v6 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_21();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  (*(*(v5 - 8) + 16))(&v19 - v11, a1, v5, v10);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v5);
  OUTLINED_FUNCTION_13_38();
  v14 = *(v13 + 96);
  swift_beginAccess();
  (*(v8 + 40))(v2 + v14, v12, v6);
  swift_endAccess();
  OUTLINED_FUNCTION_9_86();
  v16 = (*(*(v15 + 88) + 32))(v5);
  v17 = implicit closure #1 in VideoMessagePlayerManager.setupVideo(with:)();
  if (v16)
  {
    (v17)(v16);
  }

  else
  {
  }

  return VideoMessagePlayerManager.setUpNotifications()();
}

void *VideoMessagePlayerManager.fetchDuration(from:)(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_19_34();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  OUTLINED_FUNCTION_19_34();
  v10 = *(v1 + *(v9 + 104));
  result = (*((*MEMORY[0x1E69E7D40] & *v10) + 0x120))(&v19);
  if ((v19 & 1) == 0)
  {
    v12 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v12);
    OUTLINED_FUNCTION_20();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_8_89(v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = *(v5 + 80);
    v14[5] = *(v5 + 88);
    v14[6] = v10;
    v14[7] = a1;
    v15 = a1;
    v16 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in VideoMessagePlayerManager.fetchDuration(from:), v14);
    outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v8, &_sScPSgMd, &_sScPSgMR);
    OUTLINED_FUNCTION_13_38();
    *(v2 + *(v17 + 120)) = v16;
  }

  return result;
}

uint64_t VideoMessagePlayerManager.setUpNotifications()()
{
  v1 = v0;
  OUTLINED_FUNCTION_19_34();
  v58 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMR);
  OUTLINED_FUNCTION_1();
  v56 = v4;
  v57 = v3;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for NSNotificationCenter.Publisher();
  OUTLINED_FUNCTION_1();
  v53 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMR);
  OUTLINED_FUNCTION_1();
  v54 = v17;
  v55 = v16;
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  OUTLINED_FUNCTION_19_34();
  v22 = *(v21 + 80);
  v23 = *(v22 - 8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v49 - v25;
  OUTLINED_FUNCTION_19_34();
  v28 = *(v27 + 96);
  OUTLINED_FUNCTION_3_0();
  swift_beginAccess();
  if (!__swift_getEnumTagSinglePayload(v1 + v28, 1, v22))
  {
    (*(v23 + 16))(v26, v1 + v28, v22);
    v29 = *(*(v58 + 88) + 32);
    v52 = *(v58 + 88);
    v30 = v29(v22);
    (*(v23 + 8))(v26, v22);
    if (v30)
    {
      v31 = [objc_opt_self() defaultCenter];
      v32 = MEMORY[0x1BFB209B0](0xD000000000000028, 0x80000001BC5130D0);
      v33 = v30;
      v50 = v11;
      v51 = v33;
      v34 = v33;
      NSNotificationCenter.publisher(for:object:)();

      v35 = [objc_opt_self() mainRunLoop];
      v59 = v35;
      v36 = type metadata accessor for NSRunLoop.SchedulerOptions();
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v36);
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSRunLoop, 0x1E695DFD0);
      lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
      lazy protocol witness table accessor for type NSRunLoop and conformance NSRunLoop();
      v37 = v20;
      v38 = v50;
      Publisher.receive<A>(on:options:)();
      outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v10, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMd, &_sSo9NSRunLoopC10FoundationE16SchedulerOptionsVSgMR);

      (*(v53 + 8))(v15, v38);
      OUTLINED_FUNCTION_20();
      v39 = swift_allocObject();
      OUTLINED_FUNCTION_8_89(v39);
      v40 = swift_allocObject();
      v41 = v52;
      v40[2] = v22;
      v40[3] = v41;
      v40[4] = v15;
      lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<NSNotificationCenter.Publisher, NSRunLoop> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMd, &_s7Combine10PublishersO9ReceiveOnVy_So20NSNotificationCenterC10FoundationE9PublisherVSo9NSRunLoopCGMR, MEMORY[0x1E695BE98]);
      v42 = v55;
      Publisher<>.sink(receiveValue:)();

      (*(v54 + 8))(v37, v42);
      OUTLINED_FUNCTION_13_38();
      OUTLINED_FUNCTION_12_71();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }

  OUTLINED_FUNCTION_13_38();
  v44 = *(v1 + *(v43 + 104));
  (*((*MEMORY[0x1E69E7D40] & *v44) + 0x108))();
  OUTLINED_FUNCTION_20();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_8_89(v45);
  v46 = swift_allocObject();
  v46[2] = v22;
  v46[3] = *(v58 + 88);
  v46[4] = v44;
  lazy protocol witness table accessor for type CurrentValueSubject<PreCallControlsContext?, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type Published<VideoMessageControlsView.PlayState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMd, &_s7Combine9PublishedV9PublisherVy15ConversationKit24VideoMessageControlsViewV9PlayStateO_GMR, MEMORY[0x1E695C068]);
  v47 = v57;
  Publisher<>.sink(receiveValue:)();

  (*(v56 + 8))(v7, v47);
  OUTLINED_FUNCTION_13_38();
  OUTLINED_FUNCTION_12_71();
  AnyCancellable.store(in:)();
  swift_endAccess();
}