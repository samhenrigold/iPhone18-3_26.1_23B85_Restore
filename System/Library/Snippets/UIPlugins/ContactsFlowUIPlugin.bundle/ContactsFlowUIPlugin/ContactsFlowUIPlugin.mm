uint64_t one-time initialization function for siriContacts()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.siriContacts);
  __swift_project_value_buffer(v0, static Logger.siriContacts);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.siriContacts.unsafeMutableAddressor()
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for siriContacts);
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.siriContacts);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.siriContacts.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for siriContacts != -1)
  {
    OUTLINED_FUNCTION_0(&one-time initialization token for siriContacts);
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.siriContacts);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1)
{

  return _swift_once(a1, one-time initialization function for siriContacts);
}

uint64_t ContactsFlowUIPlugin.snippet(for:mode:idiom:)(uint64_t a1)
{
  type metadata accessor for ModifyContactAttributeSnippetModel();
  OUTLINED_FUNCTION_0_0();
  v36 = v2;
  v37 = v1;
  __chkstk_darwin(v1);
  OUTLINED_FUNCTION_1_0();
  v5 = v4 - v3;
  ContactAttributeSnippetModel = type metadata accessor for GetContactAttributeSnippetModel();
  OUTLINED_FUNCTION_0_0();
  v35 = v7;
  __chkstk_darwin(v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  ContactSnippetModel = type metadata accessor for GetContactSnippetModel();
  OUTLINED_FUNCTION_0_0();
  v14 = v13;
  __chkstk_darwin(v15);
  OUTLINED_FUNCTION_1_0();
  v18 = v17 - v16;
  v19 = type metadata accessor for ContactsSnippetPluginModel();
  OUTLINED_FUNCTION_0_0();
  v21 = v20;
  __chkstk_darwin(v22);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  (*(v21 + 16))(v24 - v23, a1, v19);
  v26 = (*(v21 + 88))(v25, v19);
  if (v26 == enum case for ContactsSnippetPluginModel.getContact(_:))
  {
    v27 = OUTLINED_FUNCTION_10();
    v28(v27);
    (*(v14 + 32))(v18, v25, ContactSnippetModel);
    v29 = ContactsFlowUIPlugin.makeGetContactView(for:)();
    (*(v14 + 8))(v18, ContactSnippetModel);
    return v29;
  }

  if (v26 == enum case for ContactsSnippetPluginModel.getContactAttribute(_:))
  {
    v30 = OUTLINED_FUNCTION_10();
    v31(v30);
    (*(v35 + 32))(v11, v25, ContactAttributeSnippetModel);
    v29 = ContactsFlowUIPlugin.makeGetContactAttributeView(for:)();
    (*(v35 + 8))(v11, ContactAttributeSnippetModel);
    return v29;
  }

  if (v26 == enum case for ContactsSnippetPluginModel.modifyContactAttribute(_:))
  {
    v32 = OUTLINED_FUNCTION_10();
    v33(v32);
    (*(v36 + 32))(v5, v25, v37);
    v29 = ContactsFlowUIPlugin.makeModifyContactAttributeView(for:)(v5);
    (*(v36 + 8))(v5, v37);
    return v29;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t ContactsFlowUIPlugin.makeGetContactView(for:)()
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_0_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  type metadata accessor for GetContactView();
  OUTLINED_FUNCTION_0_0();
  v56 = v5;
  v57 = v4;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR);
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_7();
  v55 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy012SiriContactsB014GetContactViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMd, &_s7SwiftUI15ModifiedContentVy012SiriContactsB014GetContactViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMR);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E17setHostBackgroundyQrAD0fG0OSgFQOyAA15ModifiedContentVy012SiriContactsB0010GetContactC0OAA01_G13StyleModifierVyAA8GradientVGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E17setHostBackgroundyQrAD0fG0OSgFQOyAA15ModifiedContentVy012SiriContactsB0010GetContactC0OAA01_G13StyleModifierVyAA8GradientVGG_Qo_MR);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_7();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_18();
  type metadata accessor for GetContactSnippetModel();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_1_0();
  v18 = OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_0();
  v20 = v19;
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_1_0();
  v24 = (v23 - v22);
  GetContactSnippetModel.flowState.getter();
  v25 = OUTLINED_FUNCTION_16();
  v27 = v26(v25);
  if (v27 == enum case for ContactsSnippetFlowState.confirm(_:))
  {
    (*(v20 + 8))(v24, v18);
    Logger.siriContacts.unsafeMutableAddressor();
    v28 = OUTLINED_FUNCTION_6();
    v29(v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23(&dword_0, v32, v33, "#ContactsFlowUIPlugin makeGetContactView called for confirmation state, no view expected");
    }

    (*(v1 + 8))(v0, v8);
    return View.eraseToAnyView()();
  }

  if (v27 == enum case for ContactsSnippetFlowState.intentHandled(_:))
  {
    v34 = OUTLINED_FUNCTION_5();
    v24(v34);
    GetContactSnippetModel.contact.getter();
    CodableContact.wrappedValue.getter();
    v35 = OUTLINED_FUNCTION_12();
    v36(v35);
    v37 = outlined bridged method (ob) of @objc CNContact.thumbnailImageData.getter(v2);
    v39 = v38;
    static ContactsFlowImageColorGenerator.colors(for:)();
    outlined consume of Data?(v37, v39);
    static ContactsFlowImageColorGenerator.shouldDisplayLightText(against:)();
    GetContactSnippetModel.shouldDisplayLightText.setter();
    v40 = OUTLINED_FUNCTION_17();
    v24(v40);
    (*(v56 + 104))(v2, enum case for GetContactView.intentHandled(_:), v57);
    Gradient.init(colors:)();
    v41 = static Edge.Set.all.getter();
    *v55 = OUTLINED_FUNCTION_14(v41);
    v13 = enum case for HostBackground.color(_:);
    v42 = type metadata accessor for HostBackground();
    OUTLINED_FUNCTION_2();
    (*(v43 + 104))(v55, v13, v42);
    OUTLINED_FUNCTION_20();
    Contact = lazy protocol witness table accessor for type ModifiedContent<GetContactView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>();
    OUTLINED_FUNCTION_8(Contact);
    outlined destroy of HostBackground?(v55, &_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR);
    outlined destroy of HostBackground?(v2, &_s7SwiftUI15ModifiedContentVy012SiriContactsB014GetContactViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMd, &_s7SwiftUI15ModifiedContentVy012SiriContactsB014GetContactViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMR);
    v45 = OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_22(v45);
    v46 = OUTLINED_FUNCTION_13();
    v47(v46);
    (*(v16 + 8))(v0, v20);
    return v13;
  }

  if (v27 == enum case for ContactsSnippetFlowState.unsupported(_:))
  {
    v48 = OUTLINED_FUNCTION_15();
    v49(v48);
    v50 = OUTLINED_FUNCTION_11();
    v51(v50);
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(&lazy protocol witness table cache variable for type GetContactView and conformance GetContactView, &type metadata accessor for GetContactView, &protocol conformance descriptor for GetContactView);
    View.eraseToAnyView()();
    v52 = OUTLINED_FUNCTION_19();
    v53(v52);
    return v13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t ContactsFlowUIPlugin.makeGetContactAttributeView(for:)()
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_0_0();
  __chkstk_darwin(v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  type metadata accessor for GetContactAttributeView();
  OUTLINED_FUNCTION_0_0();
  v56 = v5;
  v57 = v4;
  __chkstk_darwin(v4);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR);
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v9);
  OUTLINED_FUNCTION_7();
  v55 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy012SiriContactsB023GetContactAttributeViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMd, &_s7SwiftUI15ModifiedContentVy012SiriContactsB023GetContactAttributeViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMR);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v11);
  OUTLINED_FUNCTION_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP07SnippetB0E17setHostBackgroundyQrAD0fG0OSgFQOyAA15ModifiedContentVy012SiriContactsB0019GetContactAttributeC0OAA01_G13StyleModifierVyAA8GradientVGG_Qo_Md, &_s7SwiftUI4ViewP07SnippetB0E17setHostBackgroundyQrAD0fG0OSgFQOyAA15ModifiedContentVy012SiriContactsB0019GetContactAttributeC0OAA01_G13StyleModifierVyAA8GradientVGG_Qo_MR);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v12);
  OUTLINED_FUNCTION_7();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriContactsCommon14CodableContactVySo9CNContactCGMd, &_s18SiriContactsCommon14CodableContactVySo9CNContactCGMR);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  __chkstk_darwin(v14);
  OUTLINED_FUNCTION_18();
  type metadata accessor for GetContactAttributeSnippetModel();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_1_0();
  v18 = OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_0_0();
  v20 = v19;
  __chkstk_darwin(v21);
  OUTLINED_FUNCTION_1_0();
  v24 = (v23 - v22);
  GetContactAttributeSnippetModel.flowState.getter();
  v25 = OUTLINED_FUNCTION_16();
  v27 = v26(v25);
  if (v27 == enum case for ContactsSnippetFlowState.confirm(_:))
  {
    (*(v20 + 8))(v24, v18);
    Logger.siriContacts.unsafeMutableAddressor();
    v28 = OUTLINED_FUNCTION_6();
    v29(v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_23(&dword_0, v32, v33, "#ContactsFlowUIPlugin makeGetContactAttributeView called for confirmation state, no view expected");
    }

    (*(v1 + 8))(v0, v8);
    return View.eraseToAnyView()();
  }

  if (v27 == enum case for ContactsSnippetFlowState.intentHandled(_:))
  {
    v34 = OUTLINED_FUNCTION_5();
    v24(v34);
    GetContactAttributeSnippetModel.contact.getter();
    CodableContact.wrappedValue.getter();
    v35 = OUTLINED_FUNCTION_12();
    v36(v35);
    v37 = outlined bridged method (ob) of @objc CNContact.thumbnailImageData.getter(v2);
    v39 = v38;
    static ContactsFlowImageColorGenerator.colors(for:)();
    outlined consume of Data?(v37, v39);
    static ContactsFlowImageColorGenerator.shouldDisplayLightText(against:)();
    GetContactAttributeSnippetModel.shouldDisplayLightText.setter();
    v40 = OUTLINED_FUNCTION_17();
    v24(v40);
    (*(v56 + 104))(v2, enum case for GetContactAttributeView.intentHandled(_:), v57);
    Gradient.init(colors:)();
    v41 = static Edge.Set.all.getter();
    *v55 = OUTLINED_FUNCTION_14(v41);
    v13 = enum case for HostBackground.color(_:);
    v42 = type metadata accessor for HostBackground();
    OUTLINED_FUNCTION_2();
    (*(v43 + 104))(v55, v13, v42);
    OUTLINED_FUNCTION_20();
    ContactAttribute = lazy protocol witness table accessor for type ModifiedContent<GetContactAttributeView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>();
    OUTLINED_FUNCTION_8(ContactAttribute);
    outlined destroy of HostBackground?(v55, &_s9SnippetUI14HostBackgroundOSgMd, &_s9SnippetUI14HostBackgroundOSgMR);
    outlined destroy of HostBackground?(v2, &_s7SwiftUI15ModifiedContentVy012SiriContactsB023GetContactAttributeViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMd, &_s7SwiftUI15ModifiedContentVy012SiriContactsB023GetContactAttributeViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMR);
    v45 = OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_22(v45);
    v46 = OUTLINED_FUNCTION_13();
    v47(v46);
    (*(v16 + 8))(v0, v20);
    return v13;
  }

  if (v27 == enum case for ContactsSnippetFlowState.unsupported(_:))
  {
    v48 = OUTLINED_FUNCTION_15();
    v49(v48);
    v50 = OUTLINED_FUNCTION_11();
    v51(v50);
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(&lazy protocol witness table cache variable for type GetContactAttributeView and conformance GetContactAttributeView, &type metadata accessor for GetContactAttributeView, &protocol conformance descriptor for GetContactAttributeView);
    View.eraseToAnyView()();
    v52 = OUTLINED_FUNCTION_19();
    v53(v52);
    return v13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t ContactsFlowUIPlugin.makeModifyContactAttributeView(for:)(uint64_t a1)
{
  v3 = type metadata accessor for ModifyContactAttributeView();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  __chkstk_darwin(v6);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_9();
  v7 = type metadata accessor for ContactsSnippetFlowState();
  OUTLINED_FUNCTION_0_0();
  v9 = v8;
  __chkstk_darwin(v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  ModifyContactAttributeSnippetModel.flowState.getter();
  v14 = (*(v9 + 88))(v13, v7);
  if (v14 == enum case for ContactsSnippetFlowState.confirm(_:))
  {
    (*(v9 + 8))(v13, v7);
    type metadata accessor for ModifyContactAttributeSnippetModel();
    OUTLINED_FUNCTION_2();
    (*(v15 + 16))(v1, a1);
    v16 = &enum case for ModifyContactAttributeView.confirm(_:);
LABEL_5:
    (*(v5 + 104))(v1, *v16, v3);
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(&lazy protocol witness table cache variable for type ModifyContactAttributeView and conformance ModifyContactAttributeView, &type metadata accessor for ModifyContactAttributeView, &protocol conformance descriptor for ModifyContactAttributeView);
    v18 = View.eraseToAnyView()();
    (*(v5 + 8))(v1, v3);
    return v18;
  }

  if (v14 == enum case for ContactsSnippetFlowState.intentHandled(_:))
  {
    type metadata accessor for ModifyContactAttributeSnippetModel();
    OUTLINED_FUNCTION_2();
    (*(v17 + 16))(v1, a1);
    v16 = &enum case for ModifyContactAttributeView.intentHandled(_:);
    goto LABEL_5;
  }

  if (v14 == enum case for ContactsSnippetFlowState.unsupported(_:))
  {
    return View.eraseToAnyView()();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for SnippetProviding.init() in conformance ContactsFlowUIPlugin@<X0>(uint64_t *a1@<X8>)
{
  result = ContactsFlowUIPlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined bridged method (ob) of @objc CNContact.thumbnailImageData.getter(void *a1)
{
  v2 = [a1 thumbnailImageData];

  if (!v2)
  {
    return 0;
  }

  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    outlined consume of Data._Representation(a1, a2);
  }
}

void outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GetContactView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GetContactView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GetContactView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012SiriContactsB014GetContactViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMd, &_s7SwiftUI15ModifiedContentVy012SiriContactsB014GetContactViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMR);
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(&lazy protocol witness table cache variable for type GetContactView and conformance GetContactView, &type metadata accessor for GetContactView, &protocol conformance descriptor for GetContactView);
    lazy protocol witness table accessor for type _BackgroundStyleModifier<Gradient> and conformance _BackgroundStyleModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GetContactView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _BackgroundStyleModifier<Gradient> and conformance _BackgroundStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type _BackgroundStyleModifier<Gradient> and conformance _BackgroundStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type _BackgroundStyleModifier<Gradient> and conformance _BackgroundStyleModifier<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA8GradientVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA8GradientVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _BackgroundStyleModifier<Gradient> and conformance _BackgroundStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<GetContactAttributeView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<GetContactAttributeView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<GetContactAttributeView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy012SiriContactsB023GetContactAttributeViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMd, &_s7SwiftUI15ModifiedContentVy012SiriContactsB023GetContactAttributeViewOAA24_BackgroundStyleModifierVyAA8GradientVGGMR);
    lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(&lazy protocol witness table cache variable for type GetContactAttributeView and conformance GetContactAttributeView, &type metadata accessor for GetContactAttributeView, &protocol conformance descriptor for GetContactAttributeView);
    lazy protocol witness table accessor for type _BackgroundStyleModifier<Gradient> and conformance _BackgroundStyleModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<GetContactAttributeView, _BackgroundStyleModifier<Gradient>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of HostBackground?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ContactsSnippetPluginModel and conformance ContactsSnippetPluginModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_3()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;

  return _swift_getOpaqueTypeConformance2(v2 - 96, &opaque type descriptor for <<opaque return type of View.setHostBackground(_:)>>, 1);
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1)
{

  return View.setHostBackground(_:)(v2, v1, a1);
}

uint64_t OUTLINED_FUNCTION_14(char a1)
{
  v5 = v2 + *(*(v3 - 160) + 36);
  *v5 = v1;
  *(v5 + 8) = a1;

  return static Color.clear.getter();
}

uint64_t OUTLINED_FUNCTION_20()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_21()
{

  return type metadata accessor for ContactsSnippetFlowState();
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1)
{

  return View.eraseToAnyView()();
}

void OUTLINED_FUNCTION_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}