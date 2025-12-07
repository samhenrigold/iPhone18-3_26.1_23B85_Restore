id UIKeyCommand.init(_:)(uint64_t a1)
{
  countAndFlagsBits = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 56);
  if (one-time initialization token for keyEquivalentToKeyInputMap != -1)
  {
    swift_once();
  }

  rawValue = keyEquivalentToKeyInputMap._rawValue;
  if (*(keyEquivalentToKeyInputMap._rawValue + 2))
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, v1);
    object = v1;
    if (v9)
    {
      v10 = (rawValue[7] + 16 * v7);
      countAndFlagsBits = *v10;
      object = v10[1];
    }
  }

  else
  {
    object = v1;
  }

  if (v3)
  {
    if ((v3 & 2) == 0)
    {
      v11 = 0x10000;
      if ((v3 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v11 = 196608;
    if ((v3 & 4) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if ((v3 & 2) == 0)
    {
      v11 = 0;
      if ((v3 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v11 = 0x20000;
    if ((v3 & 4) != 0)
    {
LABEL_13:
      v11 |= 0x40000uLL;
    }
  }

LABEL_14:
  if ((v3 & 8) == 0)
  {
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_16;
    }

LABEL_25:
    v11 |= 0x100000uLL;
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v11 |= 0x80000uLL;
  if ((v3 & 0x10) != 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  if ((v3 & 0x20) != 0)
  {
LABEL_17:
    v11 |= 0x200000uLL;
  }

LABEL_18:
  specialized Collection.first.getter(countAndFlagsBits, object);
  if (v12)
  {
    v13 = Character.isUppercase.getter();

    if (v13)
    {
      static Semantics.v3.getter();
      if ((isLinkedOnOrAfter(_:)() & 1) == 0)
      {
        v14 = String.lowercased()();
        countAndFlagsBits = v14._countAndFlagsBits;

        v11 |= 0x20000uLL;
        object = v14._object;
      }
    }
  }

  if (v5)
  {

    v15 = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = MEMORY[0x18D00C850](countAndFlagsBits, object);

    v15 = [ObjCClassFromMetadata keyCommandWithInput:v17 modifierFlags:v11 action:sel__performShortcutKeyCommand_];
  }

  v18 = v15;
  [v18 setAllowsAutomaticLocalization_];
  [v18 setAllowsAutomaticMirroring_];

  swift_bridgeObjectRelease_n();

  return v18;
}

Swift::Void __swiftcall KeyboardShortcutBridge._performShortcutKeyCommand(_:)(UIKeyCommand *a1)
{
  KeyboardShortcut.init(_:)(a1, &v15);
  v2 = v16;
  if (v16)
  {
    v3 = v15;
    v4 = v17;
    v5 = v18;
    v6 = OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_shortcutMap;
    swift_beginAccess();
    v7 = *(v1 + v6);
    if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v2, v4, v5), (v9 & 1) != 0))
    {
      v10 = *(v7 + 56) + 24 * v8;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *v10;
      swift_retain_n();
      swift_endAccess();
      outlined consume of KeyboardShortcutBridge.Shortcut?(v11, v12, v13);

      LOBYTE(v15) = 17;
      static Update.enqueueAction(reason:_:)();
    }

    else
    {
      swift_endAccess();
    }
  }
}

double destroy for KeyboardShortcutBridge.Shortcut(id *a1)
{

  return result;
}

uint64_t assignWithCopy for KeyboardShortcutBridge.Shortcut(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v7;

  return a1;
}

uint64_t assignWithTake for KeyboardShortcutBridge.Shortcut(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  return a1;
}

uint64_t outlined init with copy of KeyboardShortcutSource?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for KeyboardShortcutSource?(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t type metadata accessor for KeyboardShortcutSource()
{
  result = lazy cache variable for type metadata for KeyboardShortcutSource;
  if (!lazy cache variable for type metadata for KeyboardShortcutSource)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for KeyboardShortcutSource);
  }

  return result;
}

uint64_t outlined destroy of KeyboardShortcutSource?(uint64_t a1)
{
  type metadata accessor for KeyboardShortcutSource?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for [KeyboardShortcutBinding]()
{
  if (!lazy cache variable for type metadata for [KeyboardShortcutBinding])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [KeyboardShortcutBinding]);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [KeyboardShortcutBinding] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [KeyboardShortcutBinding] and conformance [A];
  if (!lazy protocol witness table cache variable for type [KeyboardShortcutBinding] and conformance [A])
  {
    type metadata accessor for [KeyboardShortcutBinding]();
    result = swift_getWitnessTable(MEMORY[0x1E69E6310], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [KeyboardShortcutBinding] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding()
{
  result = lazy protocol witness table cache variable for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding;
  if (!lazy protocol witness table cache variable for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyboardShortcutBinding, &type metadata for KeyboardShortcutBinding, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding;
  if (!lazy protocol witness table cache variable for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for KeyboardShortcutBinding, &type metadata for KeyboardShortcutBinding, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type KeyboardShortcutBinding and conformance KeyboardShortcutBinding);
  }

  return result;
}

unint64_t type metadata accessor for UIKeyCommand()
{
  result = lazy cache variable for type metadata for UIKeyCommand;
  if (!lazy cache variable for type metadata for UIKeyCommand)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIKeyCommand);
  }

  return result;
}

uint64_t DSLPlatformItem.text.getter(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void))
{
  v3 = v1[15];
  v31 = v1[14];
  v32 = v3;
  v33 = v1[16];
  v4 = v1[11];
  v27 = v1[10];
  v28 = v4;
  v5 = v1[13];
  v29 = v1[12];
  v30 = v5;
  v6 = v1[7];
  v23 = v1[6];
  v24 = v6;
  v7 = v1[9];
  v25 = v1[8];
  v26 = v7;
  v8 = v1[3];
  v19 = v1[2];
  v20 = v8;
  v9 = v1[5];
  v21 = v1[4];
  v22 = v9;
  v10 = _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v19);
  if (v10 == 1)
  {
    return 0;
  }

  else
  {
    return a1(v10, v11, v12, v13, v14, v15, v16, v17, v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26, *(&v26 + 1), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1));
  }
}

uint64_t DSLPlatformItem.prioritizeImage.getter()
{
  v1 = v0[15];
  v10[12] = v0[14];
  v10[13] = v1;
  v11 = v0[16];
  v2 = v0[11];
  v10[8] = v0[10];
  v10[9] = v2;
  v3 = v0[13];
  v10[10] = v0[12];
  v10[11] = v3;
  v4 = v0[7];
  v10[4] = v0[6];
  v10[5] = v4;
  v5 = v0[9];
  v10[6] = v0[8];
  v10[7] = v5;
  v6 = v0[3];
  v10[0] = v0[2];
  v10[1] = v6;
  v7 = v0[5];
  v10[2] = v0[4];
  v10[3] = v7;
  v8 = _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(v10) == 1;
  return (v8 | v11) & 1;
}

UIImage_optional __swiftcall DSLPlatformItem.makeUIImage()()
{
  Platform = PlatformItem.coreMakePlatformImage()();
  if (Platform)
  {
    objc_opt_self();
    Platform = swift_dynamicCastObjCClassUnconditional();
  }

  result.value.super.isa = Platform;
  result.is_nil = v1;
  return result;
}

double DSLPlatformItemReader.init(content:source:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;

  static Alignment.center.getter();
  v12[0] = a3;
  v12[1] = a4;
  v12[2] = a5;
  v12[3] = a6;
  type metadata accessor for DSLPlatformItemReader(0, v12);
  ZStack.init(alignment:content:)();

  return result;
}

uint64_t closure #1 in DSLPlatformItemReader.init(content:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v5 + 8);
  v13(v7, a4);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v11, a4);
}

uint64_t DSLPlatformItemReader.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = *(v7 + 40);
  v30 = *(v7 + 16);
  v9 = type metadata accessor for ZStack();
  v10 = *(a1 + 32);
  v11 = v9;
  v27 = v9;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981880]);
  v35 = MEMORY[0x1E69806B0];
  v28 = v30;
  v36 = v30;
  v37 = v11;
  v38 = MEMORY[0x1E69806A8];
  v39 = v10;
  v40 = WitnessTable;
  v12 = type metadata accessor for PlatformItemsReader();
  v26 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  (*(v5 + 16))(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v16);
  v19 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *&v21 = v10;
  *(&v21 + 1) = v8;
  *(v20 + 32) = v21;
  *(v20 + 16) = v30;
  (*(v5 + 32))(v20 + v19, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v31 = v30;
  v32 = v10;
  v33 = v8;
  v34 = v24;
  PlatformItemsReader.init(for:content:source:)();
  swift_getWitnessTable(MEMORY[0x1E697F778], v12);
  static ViewBuilder.buildExpression<A>(_:)();
  v22 = *(v26 + 8);
  v22(v14, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v22)(v18, v12);
}

uint64_t closure #1 in DSLPlatformItemReader.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8 - 8];
  v11 = *v10;
  outlined init with copy of PlatformItem(v12, v16);
  v11(v16);
  outlined destroy of DSLPlatformItem(v16);
  static ViewBuilder.buildExpression<A>(_:)();
  v13 = *(v4 + 8);
  v13(v6, a3);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v13)(v9, a3);
}

uint64_t partial apply for closure #1 in DSLPlatformItemReader.body.getter(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for DSLPlatformItemReader(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return closure #1 in DSLPlatformItemReader.body.getter(a1, v8, v3);
}

uint64_t closure #2 in DSLPlatformItemReader.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ZStack();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v14 - v11;
  v14[0] = a2;
  v14[1] = a3;
  v14[2] = a4;
  v14[3] = a5;
  type metadata accessor for DSLPlatformItemReader(0, v14);
  swift_getWitnessTable(MEMORY[0x1E6981880], v9);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t static DSLPlatformItem.makePlatformItem<A>(inputs:source:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _DWORD *a4@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a1[1];
  v31 = *a1;
  v32 = v7;
  v33 = a1[2];
  type metadata accessor for _GraphValue();
  LODWORD(v19) = _GraphValue.value.getter();
  v8 = type metadata accessor for ZStack();
  v16 = v8;
  Source = type metadata accessor for DSLPlatformItem.MakeSource(0, a2, a3, v9);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DSLPlatformItem.MakeSource<A>, Source);
  v10 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v19, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_3, v15, Source, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  PreferenceKeys.init()();
  *&v36[0] = v19;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  LOBYTE(v34[0]) = 0;
  GraphHost.intern<A>(_:for:id:)();

  v19 = v31;
  v20 = v32;
  v21 = v33;
  outlined init with copy of _GraphInputs(&v31, v36);
  _ViewInputs.init(withoutGeometry:)();
  PreferencesInputs.init(hostKeys:)();
  v12 = v19;
  LODWORD(a2) = DWORD2(v19);

  *&v28 = v12;
  DWORD2(v28) = a2;
  MEMORY[0x18D008ED0](&v25, MEMORY[0x1E69806B0], MEMORY[0x1E69806A0]);
  _GraphValue.init(_:)();
  v34[2] = v27;
  v34[3] = v28;
  v34[4] = v29;
  v35 = v30;
  v34[0] = v25;
  v34[1] = v26;
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v19 = v25;
  v20 = v26;
  outlined init with copy of _ViewInputs(v34, v36);
  swift_getWitnessTable(MEMORY[0x1E6981880], v8);
  static View.makeDebuggableView(view:inputs:)();
  v36[2] = v21;
  v36[3] = v22;
  v36[4] = v23;
  v37 = v24;
  v36[0] = v19;
  v36[1] = v20;
  outlined destroy of _ViewInputs(v36);
  v19 = v14;
  LODWORD(v12) = static UnaryPlatformItemsStrategy.makeContent(from:)();

  static PlatformItem.empty.getter();
  LODWORD(v19) = v12;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type DSLPlatformItem.Child and conformance DSLPlatformItem.Child();
  LODWORD(v12) = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of DSLPlatformItem.Child(&v19);
  *a4 = v12;
  v21 = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v19 = v25;
  v20 = v26;
  return outlined destroy of _ViewInputs(&v19);
}

uint64_t closure #1 in DSLPlatformItem.MakeSource.value.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  Value = AGGraphGetValue();
  (*(v3 + 16))(v5, Value, a2);
  static ViewBuilder.buildExpression<A>(_:)();
  v10 = *(v3 + 8);
  v10(v5, a2);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v10)(v8, a2);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance DSLPlatformItem.MakeSource<A>@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ZStack();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t DSLPlatformItem.Child.updateValue()()
{
  v10 = *MEMORY[0x1E69E9840];
  if (*v0 == *MEMORY[0x1E698D3F8])
  {
    bzero(__src, 0x272uLL);
    static PlatformItem.empty.getter();
    if (__src[0])
    {
      outlined destroy of (PlatformItem, Bool)?(__src);
    }

    v1 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v4 = v3;
    outlined init with copy of PlatformItem(Value, __src);
    BYTE1(__src[78]) = v4 & 1;
    memcpy(__dst, __src, 0x272uLL);
    v1 = __dst[625] ^ 1;
  }

  memcpy(__src, __dst, 0x271uLL);
  v5 = 0;
  if (HIDWORD(__src[3]) != -1)
  {
    v6 = *(v0 + 36);
    if (v6 != -1 && HIDWORD(__src[3]) == v6)
    {
      v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12ViewIdentityV_Tt1g5(__src[0], *(v0 + 8));
    }
  }

  if (!AGGraphGetOutputValue() || ((v1 | v5) & 1) == 0)
  {
    outlined init with copy of PlatformItem(__src, __dst);
    AGGraphSetOutputValue();
    outlined destroy of DSLPlatformItem(__dst);
  }

  return outlined assign with take of PlatformItem(__src, v0 + 8);
}

unint64_t lazy protocol witness table accessor for type DSLPlatformItem.Child and conformance DSLPlatformItem.Child()
{
  result = lazy protocol witness table cache variable for type DSLPlatformItem.Child and conformance DSLPlatformItem.Child;
  if (!lazy protocol witness table cache variable for type DSLPlatformItem.Child and conformance DSLPlatformItem.Child)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DSLPlatformItem.Child, &unk_1EFFD8F40, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type DSLPlatformItem.Child and conformance DSLPlatformItem.Child);
  }

  return result;
}

void destroy for DSLPlatformItem(uint64_t a1)
{

  v2 = *(a1 + 32);
  if (v2 != 1)
  {

    v3 = *(a1 + 184);
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v4 = *(a1 + 64);
      if (v4 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 56), v4);
      }

      if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 168), *(a1 + 176), v3, *(a1 + 192));
      }

      swift_unknownObjectRelease();
    }
  }

  if (*(a1 + 304) != 1)
  {
    swift_unknownObjectRelease();
  }

  if (*(a1 + 608))
  {

    v5 = *(a1 + 416);
    if (v5)
    {
      if (v5 == 1)
      {
LABEL_16:
        if (*(a1 + 568) != 1)
        {
        }

        return;
      }

      __swift_destroy_boxed_opaque_existential_1((a1 + 392));
    }

    goto LABEL_16;
  }
}

uint64_t initializeWithCopy for DSLPlatformItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v5 = (a2 + 32);
  v6 = *(a2 + 32);

  if (v6 == 1)
  {
    v7 = v5[13];
    *(a1 + 224) = v5[12];
    *(a1 + 240) = v7;
    *(a1 + 256) = v5[14];
    v8 = v5[9];
    *(a1 + 160) = v5[8];
    *(a1 + 176) = v8;
    v9 = v5[11];
    *(a1 + 192) = v5[10];
    *(a1 + 208) = v9;
    v10 = v5[5];
    *(a1 + 96) = v5[4];
    *(a1 + 112) = v10;
    v11 = v5[7];
    *(a1 + 128) = v5[6];
    *(a1 + 144) = v11;
    v12 = v5[1];
    *(a1 + 32) = *v5;
    *(a1 + 48) = v12;
    v13 = v5[3];
    *(a1 + 64) = v5[2];
    *(a1 + 80) = v13;
  }

  else
  {
    v14 = *(a2 + 40);
    v15 = *(a2 + 48);
    *(a1 + 32) = v6;
    *(a1 + 40) = v14;
    *(a1 + 48) = v15;
    v16 = *(a2 + 184);
    v17 = v6;
    v18 = v14;
    v19 = v15;
    if (v16 >> 1 == 4294967294)
    {
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 227) = *(a2 + 227);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {
      v20 = *(a2 + 64);
      if (v20 == 255)
      {
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
      }

      else
      {
        v21 = *(a2 + 56);
        outlined copy of GraphicsImage.Contents(v21, *(a2 + 64));
        *(a1 + 56) = v21;
        *(a1 + 64) = v20;
        v16 = *(a2 + 184);
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 100) = *(a2 + 100);
      *(a1 + 113) = *(a2 + 113);
      v22 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v22;
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 162) = *(a2 + 162);
      *(a1 + 163) = *(a2 + 163);
      if (v16 >> 1 == 0xFFFFFFFF)
      {
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = *(a2 + 184);
      }

      else
      {
        v23 = *(a2 + 168);
        v24 = *(a2 + 176);
        v25 = *(a2 + 192);
        outlined copy of AccessibilityImageLabel(v23, v24, v16, v25);
        *(a1 + 168) = v23;
        *(a1 + 176) = v24;
        *(a1 + 184) = v16;
        *(a1 + 192) = v25;
      }

      v26 = *(a2 + 208);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = v26;
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 220) = *(a2 + 220);
      *(a1 + 224) = *(a2 + 224);
      v27 = *(a2 + 232);
      *(a1 + 232) = v27;
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 242) = *(a2 + 242);
      swift_unknownObjectRetain();

      v28 = v27;
    }

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  *(a1 + 272) = *(a2 + 272);
  v29 = *(a2 + 304);

  if (v29 == 1)
  {
    v30 = *(a2 + 296);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 296) = v30;
  }

  else
  {
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v29;
    swift_unknownObjectRetain();
  }

  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  if (!*(a2 + 608))
  {
    memcpy((a1 + 328), (a2 + 328), 0x129uLL);
    return a1;
  }

  v31 = *(a2 + 336);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = v31;
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  v32 = (a1 + 392);
  v33 = (a2 + 392);
  v34 = *(a2 + 416);

  if (!v34)
  {
    v36 = *(a2 + 408);
    *v32 = *v33;
    *(a1 + 408) = v36;
    *(a1 + 424) = *(a2 + 424);
LABEL_23:
    *(a1 + 432) = *(a2 + 432);

    goto LABEL_24;
  }

  if (v34 != 1)
  {
    v37 = *(a2 + 424);
    *(a1 + 416) = v34;
    *(a1 + 424) = v37;
    (**(v34 - 8))(a1 + 392, a2 + 392, v34);
    goto LABEL_23;
  }

  v35 = *(a2 + 408);
  *v32 = *v33;
  *(a1 + 408) = v35;
  *(a1 + 424) = *(a2 + 424);
LABEL_24:
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  v38 = (a1 + 456);
  v39 = (a2 + 456);
  v40 = *(a2 + 568);
  if (v40 == 1)
  {
    v41 = *(a2 + 568);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 568) = v41;
    *(a1 + 584) = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    v42 = *(a2 + 504);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 504) = v42;
    v43 = *(a2 + 536);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 536) = v43;
    v44 = *(a2 + 472);
    *v38 = *v39;
    *(a1 + 472) = v44;
  }

  else
  {
    *v38 = *v39;
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 481) = *(a2 + 481);
    *(a1 + 483) = *(a2 + 483);
    *(a1 + 484) = *(a2 + 484);
    *(a1 + 488) = *(a2 + 488);
    v45 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v45;
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = v40;
    *(a1 + 576) = *(a2 + 576);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 600) = *(a2 + 600);
  }

  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);

  return a1;
}

uint64_t assignWithCopy for DSLPlatformItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v7 = (a2 + 32);
  v6 = *(a2 + 32);
  if (v5 == 1)
  {
    if (v6 == 1)
    {
      v8 = *v7;
      v9 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v9;
      *v4 = v8;
      v10 = *(a2 + 80);
      v11 = *(a2 + 96);
      v12 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v12;
      *(a1 + 80) = v10;
      *(a1 + 96) = v11;
      v13 = *(a2 + 144);
      v14 = *(a2 + 160);
      v15 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v15;
      *(a1 + 144) = v13;
      *(a1 + 160) = v14;
      v16 = *(a2 + 208);
      v17 = *(a2 + 224);
      v18 = *(a2 + 256);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 256) = v18;
      *(a1 + 208) = v16;
      *(a1 + 224) = v17;
    }

    else
    {
      *(a1 + 32) = v6;
      v30 = *(a2 + 40);
      *(a1 + 40) = v30;
      v31 = *(a2 + 48);
      *(a1 + 48) = v31;
      v32 = *(a2 + 184);
      v33 = v6;
      v34 = v30;
      v35 = v31;
      if (v32 >> 1 == 4294967294)
      {
        v36 = *(a2 + 56);
        v37 = *(a2 + 72);
        v38 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 88) = v38;
        *(a1 + 72) = v37;
        *(a1 + 56) = v36;
        v39 = *(a2 + 120);
        v40 = *(a2 + 136);
        v41 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v41;
        *(a1 + 136) = v40;
        *(a1 + 120) = v39;
        v42 = *(a2 + 184);
        v43 = *(a2 + 200);
        v44 = *(a2 + 216);
        *(a1 + 227) = *(a2 + 227);
        *(a1 + 216) = v44;
        *(a1 + 200) = v43;
        *(a1 + 184) = v42;
      }

      else
      {
        v62 = *(a2 + 64);
        if (v62 == 255)
        {
          v79 = *(a2 + 56);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 56) = v79;
        }

        else
        {
          v63 = *(a2 + 56);
          outlined copy of GraphicsImage.Contents(v63, *(a2 + 64));
          *(a1 + 56) = v63;
          *(a1 + 64) = v62;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = *(a2 + 96);
        v80 = *(a2 + 100);
        *(a1 + 113) = *(a2 + 113);
        *(a1 + 100) = v80;
        v81 = *(a2 + 128);
        v82 = *(a2 + 144);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 128) = v81;
        *(a1 + 144) = v82;
        *(a1 + 161) = *(a2 + 161);
        *(a1 + 162) = *(a2 + 162);
        *(a1 + 163) = *(a2 + 163);
        v83 = *(a2 + 184);
        if (v83 >> 1 == 0xFFFFFFFF)
        {
          v84 = *(a2 + 168);
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 168) = v84;
        }

        else
        {
          v85 = *(a2 + 168);
          v86 = *(a2 + 176);
          v87 = *(a2 + 192);
          outlined copy of AccessibilityImageLabel(v85, v86, *(a2 + 184), v87);
          *(a1 + 168) = v85;
          *(a1 + 176) = v86;
          *(a1 + 184) = v83;
          *(a1 + 192) = v87;
        }

        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 217) = *(a2 + 217);
        v88 = *(a2 + 220);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 220) = v88;
        v89 = *(a2 + 232);
        *(a1 + 232) = v89;
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 242) = *(a2 + 242);
        swift_unknownObjectRetain();

        v90 = v89;
      }

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 32);
    v20 = *(a2 + 48);
    v19 = *(a2 + 64);
    *v4 = *v7;
    *(a1 + 48) = v20;
    *(a1 + 64) = v19;
    v21 = *(a2 + 128);
    v23 = *(a2 + 80);
    v22 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v21;
    *(a1 + 80) = v23;
    *(a1 + 96) = v22;
    v24 = *(a2 + 192);
    v26 = *(a2 + 144);
    v25 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v24;
    *(a1 + 144) = v26;
    *(a1 + 160) = v25;
    v27 = *(a2 + 256);
    v29 = *(a2 + 208);
    v28 = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 256) = v27;
    *(a1 + 208) = v29;
    *(a1 + 224) = v28;
  }

  else
  {
    *(a1 + 32) = v6;
    v45 = v6;

    v46 = *(a1 + 40);
    v47 = *(a2 + 40);
    *(a1 + 40) = v47;
    v48 = v47;

    v49 = *(a1 + 48);
    v50 = *(a2 + 48);
    *(a1 + 48) = v50;
    v51 = v50;

    v52 = *(a2 + 184) & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 184) >> 1 == 4294967294)
    {
      if (v52 == 0x1FFFFFFFCLL)
      {
        v53 = *(a2 + 56);
        v54 = *(a2 + 72);
        v55 = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        *(a1 + 88) = v55;
        *(a1 + 72) = v54;
        *(a1 + 56) = v53;
        v56 = *(a2 + 120);
        v57 = *(a2 + 136);
        v58 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v58;
        *(a1 + 136) = v57;
        *(a1 + 120) = v56;
        v59 = *(a2 + 184);
        v60 = *(a2 + 200);
        v61 = *(a2 + 216);
        *(a1 + 227) = *(a2 + 227);
        *(a1 + 216) = v61;
        *(a1 + 200) = v60;
        *(a1 + 184) = v59;
      }

      else
      {
        v73 = *(a2 + 64);
        if (v73 == 255)
        {
          v91 = *(a2 + 56);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 56) = v91;
        }

        else
        {
          v74 = *(a2 + 56);
          outlined copy of GraphicsImage.Contents(v74, *(a2 + 64));
          *(a1 + 56) = v74;
          *(a1 + 64) = v73;
        }

        *(a1 + 72) = *(a2 + 72);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = *(a2 + 96);
        v92 = *(a2 + 100);
        *(a1 + 113) = *(a2 + 113);
        *(a1 + 100) = v92;
        v93 = *(a2 + 128);
        v94 = *(a2 + 144);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 128) = v93;
        *(a1 + 144) = v94;
        *(a1 + 161) = *(a2 + 161);
        *(a1 + 162) = *(a2 + 162);
        *(a1 + 163) = *(a2 + 163);
        v95 = *(a2 + 184);
        if (v95 >> 1 == 0xFFFFFFFF)
        {
          v96 = *(a2 + 168);
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 168) = v96;
        }

        else
        {
          v97 = *(a2 + 168);
          v98 = *(a2 + 176);
          v99 = *(a2 + 192);
          outlined copy of AccessibilityImageLabel(v97, v98, *(a2 + 184), v99);
          *(a1 + 168) = v97;
          *(a1 + 176) = v98;
          *(a1 + 184) = v95;
          *(a1 + 192) = v99;
        }

        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 217) = *(a2 + 217);
        v100 = *(a2 + 220);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 220) = v100;
        v101 = *(a2 + 232);
        *(a1 + 232) = v101;
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 242) = *(a2 + 242);
        swift_unknownObjectRetain();

        v102 = v101;
      }
    }

    else if (v52 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(a1 + 56);
      v64 = *(a2 + 72);
      v65 = *(a2 + 88);
      v66 = *(a2 + 104);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 104) = v66;
      *(a1 + 88) = v65;
      *(a1 + 72) = v64;
      v67 = *(a2 + 136);
      v68 = *(a2 + 152);
      v69 = *(a2 + 168);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 168) = v69;
      *(a1 + 152) = v68;
      *(a1 + 136) = v67;
      v70 = *(a2 + 200);
      v71 = *(a2 + 216);
      v72 = *(a2 + 227);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 227) = v72;
      *(a1 + 216) = v71;
      *(a1 + 200) = v70;
    }

    else
    {
      v75 = *(a2 + 64);
      if (*(a1 + 64) == 255)
      {
        if (v75 == 255)
        {
          v105 = *(a2 + 56);
          *(a1 + 64) = *(a2 + 64);
          *(a1 + 56) = v105;
        }

        else
        {
          v103 = *(a2 + 56);
          outlined copy of GraphicsImage.Contents(v103, *(a2 + 64));
          *(a1 + 56) = v103;
          *(a1 + 64) = v75;
        }
      }

      else if (v75 == 255)
      {
        outlined destroy of GraphicsImage.Contents(a1 + 56);
        v104 = *(a2 + 64);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v104;
      }

      else
      {
        v76 = *(a2 + 56);
        outlined copy of GraphicsImage.Contents(v76, *(a2 + 64));
        v77 = *(a1 + 56);
        *(a1 + 56) = v76;
        v78 = *(a1 + 64);
        *(a1 + 64) = v75;
        outlined consume of GraphicsImage.Contents(v77, v78);
      }

      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      v106 = *(a2 + 100);
      *(a1 + 113) = *(a2 + 113);
      *(a1 + 100) = v106;
      v107 = *(a2 + 128);
      v108 = *(a2 + 144);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 128) = v107;
      *(a1 + 144) = v108;
      *(a1 + 161) = *(a2 + 161);
      *(a1 + 162) = *(a2 + 162);
      *(a1 + 163) = *(a2 + 163);
      v109 = *(a2 + 184);
      v110 = v109 & 0xFFFFFFFFFFFFFFFELL;
      if (*(a1 + 184) >> 1 == 0xFFFFFFFFLL)
      {
        if (v110 == 0x1FFFFFFFELL)
        {
          v111 = *(a2 + 168);
          *(a1 + 184) = *(a2 + 184);
          *(a1 + 168) = v111;
        }

        else
        {
          v113 = *(a2 + 168);
          v114 = *(a2 + 176);
          v115 = *(a2 + 192);
          outlined copy of AccessibilityImageLabel(v113, v114, *(a2 + 184), v115);
          *(a1 + 168) = v113;
          *(a1 + 176) = v114;
          *(a1 + 184) = v109;
          *(a1 + 192) = v115;
        }
      }

      else if (v110 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(a1 + 168);
        v112 = *(a2 + 184);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = v112;
      }

      else
      {
        v116 = *(a2 + 168);
        v117 = *(a2 + 176);
        v118 = *(a2 + 192);
        outlined copy of AccessibilityImageLabel(v116, v117, *(a2 + 184), v118);
        v119 = *(a1 + 168);
        v120 = *(a1 + 176);
        v121 = *(a1 + 184);
        v122 = *(a1 + 192);
        *(a1 + 168) = v116;
        *(a1 + 176) = v117;
        *(a1 + 184) = v109;
        *(a1 + 192) = v118;
        outlined consume of AccessibilityImageLabel(v119, v120, v121, v122);
      }

      *(a1 + 200) = *(a2 + 200);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 208) = *(a2 + 208);

      *(a1 + 216) = *(a2 + 216);
      *(a1 + 217) = *(a2 + 217);
      v123 = *(a2 + 220);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 220) = v123;
      v124 = *(a1 + 232);
      v125 = *(a2 + 232);
      *(a1 + 232) = v125;
      v126 = v125;

      *(a1 + 240) = *(a2 + 240);
      *(a1 + 242) = *(a2 + 242);
    }

    *(a1 + 248) = *(a2 + 248);

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  *(a1 + 272) = *(a2 + 272);

  v127 = (a1 + 280);
  v128 = (a2 + 280);
  v129 = *(a2 + 304);
  if (*(a1 + 304) == 1)
  {
    if (v129 == 1)
    {
      v130 = *(a2 + 296);
      *v127 = *v128;
      *(a1 + 296) = v130;
    }

    else
    {
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);
      *(a1 + 304) = *(a2 + 304);
      swift_unknownObjectRetain();
    }
  }

  else if (v129 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 280);
    v131 = *(a2 + 296);
    *v127 = *v128;
    *(a1 + 296) = v131;
  }

  else
  {
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 284) = *(a2 + 284);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 292) = *(a2 + 292);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 304) = *(a2 + 304);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v132 = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 312) = v132;
  v133 = *(a2 + 608);
  if (*(a1 + 608))
  {
    if (v133)
    {
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 336) = *(a2 + 336);

      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = *(a2 + 352);

      *(a1 + 360) = *(a2 + 360);
      v134 = *(a2 + 368);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 368) = v134;
      v135 = (a1 + 392);
      v136 = (a2 + 392);
      v137 = *(a1 + 416);
      v138 = *(a2 + 416);
      if (v137 != 1)
      {
        if (v138 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 392);
          v148 = *(a2 + 408);
          v147 = *(a2 + 424);
          *v135 = *v136;
          *(a1 + 408) = v148;
          *(a1 + 424) = v147;
        }

        else
        {
          if (v137)
          {
            if (v138)
            {
              __swift_assign_boxed_opaque_existential_1((a1 + 392), (a2 + 392));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(a1 + 392);
              v166 = *(a2 + 424);
              v167 = *(a2 + 408);
              *v135 = *v136;
              *(a1 + 408) = v167;
              *(a1 + 424) = v166;
            }
          }

          else if (v138)
          {
            *(a1 + 416) = v138;
            *(a1 + 424) = *(a2 + 424);
            (**(v138 - 8))(a1 + 392, a2 + 392);
          }

          else
          {
            v168 = *v136;
            v169 = *(a2 + 408);
            *(a1 + 424) = *(a2 + 424);
            *v135 = v168;
            *(a1 + 408) = v169;
          }

          *(a1 + 432) = *(a2 + 432);
        }

        goto LABEL_83;
      }

      if (v138)
      {
        if (v138 == 1)
        {
          v139 = *v136;
          v140 = *(a2 + 424);
          *(a1 + 408) = *(a2 + 408);
          *(a1 + 424) = v140;
          *v135 = v139;
LABEL_83:
          v170 = *(a2 + 440);
          *(a1 + 448) = *(a2 + 448);
          *(a1 + 440) = v170;
          v171 = (a1 + 456);
          v172 = (a2 + 456);
          v173 = *(a2 + 568);
          if (*(a1 + 568) == 1)
          {
            if (v173 == 1)
            {
              v174 = *(a2 + 472);
              *v171 = *v172;
              *(a1 + 472) = v174;
              v175 = *(a2 + 488);
              v176 = *(a2 + 504);
              v177 = *(a2 + 536);
              *(a1 + 520) = *(a2 + 520);
              *(a1 + 536) = v177;
              *(a1 + 488) = v175;
              *(a1 + 504) = v176;
              v178 = *(a2 + 552);
              v179 = *(a2 + 568);
              v180 = *(a2 + 584);
              *(a1 + 600) = *(a2 + 600);
              *(a1 + 568) = v179;
              *(a1 + 584) = v180;
              *(a1 + 552) = v178;
            }

            else
            {
              v188 = *v172;
              *(a1 + 464) = *(a2 + 464);
              *v171 = v188;
              v189 = *(a2 + 472);
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 472) = v189;
              *(a1 + 481) = *(a2 + 481);
              *(a1 + 482) = *(a2 + 482);
              *(a1 + 483) = *(a2 + 483);
              *(a1 + 484) = *(a2 + 484);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 504) = *(a2 + 504);
              *(a1 + 512) = *(a2 + 512);
              *(a1 + 520) = *(a2 + 520);
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 536) = *(a2 + 536);
              *(a1 + 537) = *(a2 + 537);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              v190 = *(a2 + 576);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 576) = v190;
              *(a1 + 600) = *(a2 + 600);
            }
          }

          else if (v173 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 456);
            v181 = *(a2 + 472);
            *v171 = *v172;
            *(a1 + 472) = v181;
            v182 = *(a2 + 536);
            v184 = *(a2 + 488);
            v183 = *(a2 + 504);
            *(a1 + 520) = *(a2 + 520);
            *(a1 + 536) = v182;
            *(a1 + 488) = v184;
            *(a1 + 504) = v183;
            v186 = *(a2 + 568);
            v185 = *(a2 + 584);
            v187 = *(a2 + 552);
            *(a1 + 600) = *(a2 + 600);
            *(a1 + 568) = v186;
            *(a1 + 584) = v185;
            *(a1 + 552) = v187;
          }

          else
          {
            v191 = *v172;
            *(a1 + 464) = *(a2 + 464);
            *v171 = v191;
            v192 = *(a2 + 472);
            *(a1 + 480) = *(a2 + 480);
            *(a1 + 472) = v192;
            *(a1 + 481) = *(a2 + 481);
            *(a1 + 482) = *(a2 + 482);
            *(a1 + 483) = *(a2 + 483);
            *(a1 + 484) = *(a2 + 484);
            *(a1 + 488) = *(a2 + 488);
            *(a1 + 496) = *(a2 + 496);
            *(a1 + 504) = *(a2 + 504);
            *(a1 + 512) = *(a2 + 512);
            *(a1 + 520) = *(a2 + 520);
            *(a1 + 528) = *(a2 + 528);
            *(a1 + 536) = *(a2 + 536);
            *(a1 + 537) = *(a2 + 537);
            *(a1 + 544) = *(a2 + 544);
            *(a1 + 552) = *(a2 + 552);
            *(a1 + 560) = *(a2 + 560);
            *(a1 + 568) = *(a2 + 568);

            v193 = *(a2 + 576);
            *(a1 + 592) = *(a2 + 592);
            *(a1 + 576) = v193;
            *(a1 + 600) = *(a2 + 600);
          }

          *(a1 + 608) = *(a2 + 608);

          *(a1 + 616) = *(a2 + 616);
          *(a1 + 620) = *(a2 + 620);
          *(a1 + 624) = *(a2 + 624);
          return a1;
        }

        *(a1 + 416) = v138;
        *(a1 + 424) = *(a2 + 424);
        (**(v138 - 8))(a1 + 392, a2 + 392);
      }

      else
      {
        v164 = *v136;
        v165 = *(a2 + 408);
        *(a1 + 424) = *(a2 + 424);
        *v135 = v164;
        *(a1 + 408) = v165;
      }

      *(a1 + 432) = *(a2 + 432);

      goto LABEL_83;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 328);
LABEL_62:
    memcpy((a1 + 328), (a2 + 328), 0x129uLL);
    return a1;
  }

  if (!v133)
  {
    goto LABEL_62;
  }

  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  v141 = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = v141;
  v142 = (a1 + 392);
  v143 = (a2 + 392);
  v144 = *(a2 + 416);

  if (!v144)
  {
    v149 = *v143;
    v150 = *(a2 + 408);
    *(a1 + 424) = *(a2 + 424);
    *v142 = v149;
    *(a1 + 408) = v150;
LABEL_70:
    *(a1 + 432) = *(a2 + 432);

    goto LABEL_71;
  }

  if (v144 != 1)
  {
    *(a1 + 416) = v144;
    *(a1 + 424) = *(a2 + 424);
    (**(v144 - 8))(a1 + 392, a2 + 392, v144);
    goto LABEL_70;
  }

  v145 = *v143;
  v146 = *(a2 + 424);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 424) = v146;
  *v142 = v145;
LABEL_71:
  v151 = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 440) = v151;
  v152 = (a1 + 456);
  v153 = (a2 + 456);
  if (*(a2 + 568) == 1)
  {
    v154 = *(a2 + 472);
    *v152 = *v153;
    *(a1 + 472) = v154;
    v155 = *(a2 + 488);
    v156 = *(a2 + 504);
    v157 = *(a2 + 536);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 536) = v157;
    *(a1 + 488) = v155;
    *(a1 + 504) = v156;
    v158 = *(a2 + 552);
    v159 = *(a2 + 568);
    v160 = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 568) = v159;
    *(a1 + 584) = v160;
    *(a1 + 552) = v158;
  }

  else
  {
    v161 = *v153;
    *(a1 + 464) = *(a2 + 464);
    *v152 = v161;
    v162 = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 472) = v162;
    *(a1 + 481) = *(a2 + 481);
    *(a1 + 482) = *(a2 + 482);
    *(a1 + 483) = *(a2 + 483);
    *(a1 + 484) = *(a2 + 484);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 537) = *(a2 + 537);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 568);
    v163 = *(a2 + 576);
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 576) = v163;
    *(a1 + 600) = *(a2 + 600);
  }

  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);

  return a1;
}

uint64_t assignWithTake for DSLPlatformItem(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  v5 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  if (v4 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 32);
LABEL_4:
    v6 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v6;
    *(a1 + 256) = *(a2 + 256);
    v7 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v7;
    v8 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v8;
    v9 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v9;
    v10 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v10;
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
    v12 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v12;
    goto LABEL_21;
  }

  *(a1 + 32) = v4;

  v13 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  v14 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  if (*(a1 + 184) >> 1 == 4294967294)
  {
    goto LABEL_8;
  }

  if (*(a2 + 184) >> 1 != 4294967294)
  {
    v15 = *(a1 + 64);
    if (v15 != 255)
    {
      v16 = *(a2 + 64);
      if (v16 != 255)
      {
        v17 = *(a1 + 56);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = v16;
        outlined consume of GraphicsImage.Contents(v17, v15);
        goto LABEL_14;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 56);
    }

    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
LABEL_14:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 100) = *(a2 + 100);
    *(a1 + 113) = *(a2 + 113);
    v18 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v18;
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 161) = *(a2 + 161);
    v19 = *(a1 + 184);
    *(a1 + 162) = *(a2 + 162);
    if (v19 >> 1 != 0xFFFFFFFF)
    {
      v20 = *(a2 + 184);
      if (v20 >> 1 != 0xFFFFFFFF)
      {
        v21 = *(a2 + 192);
        v22 = *(a1 + 168);
        v23 = *(a1 + 176);
        v24 = *(a1 + 192);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 184) = v20;
        *(a1 + 192) = v21;
        outlined consume of AccessibilityImageLabel(v22, v23, v19, v24);
        goto LABEL_19;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 168);
    }

    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
LABEL_19:
    *(a1 + 200) = *(a2 + 200);
    swift_unknownObjectRelease();
    *(a1 + 208) = *(a2 + 208);

    *(a1 + 216) = *(a2 + 216);
    *(a1 + 217) = *(a2 + 217);
    *(a1 + 220) = *(a2 + 220);
    *(a1 + 224) = *(a2 + 224);
    v25 = *(a1 + 232);
    *(a1 + 232) = *(a2 + 232);

    *(a1 + 240) = *(a2 + 240);
    *(a1 + 242) = *(a2 + 242);
    goto LABEL_20;
  }

  outlined destroy of Image.Resolved(a1 + 56);
LABEL_8:
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 227) = *(a2 + 227);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
LABEL_20:
  *(a1 + 248) = *(a2 + 248);

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);

LABEL_21:
  *(a1 + 272) = *(a2 + 272);

  v26 = (a1 + 280);
  if (*(a1 + 304) == 1)
  {
LABEL_24:
    v28 = *(a2 + 296);
    *v26 = *(a2 + 280);
    *(a1 + 296) = v28;
    goto LABEL_26;
  }

  v27 = *(a2 + 304);
  if (v27 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 280);
    goto LABEL_24;
  }

  *v26 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = v27;
  swift_unknownObjectRelease();
LABEL_26:
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  if (*(a1 + 608))
  {
    if (*(a2 + 608))
    {
      v29 = *(a2 + 336);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 336) = v29;

      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = *(a2 + 352);

      *(a1 + 360) = *(a2 + 360);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 384) = *(a2 + 384);
      v30 = (a1 + 392);
      v31 = (a2 + 392);
      v32 = *(a1 + 416);
      if (v32 != 1)
      {
        v33 = *(a2 + 416);
        if (v33 != 1)
        {
          if (v32)
          {
            v35 = (a1 + 392);
            if (v33)
            {
              __swift_destroy_boxed_opaque_existential_1(v35);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v35);
            }
          }

          v36 = *(a2 + 408);
          *v30 = *v31;
          *(a1 + 408) = v36;
          *(a1 + 424) = *(a2 + 424);
          *(a1 + 432) = *(a2 + 432);

LABEL_39:
          *(a1 + 440) = *(a2 + 440);
          *(a1 + 448) = *(a2 + 448);
          v37 = (a1 + 456);
          v38 = (a2 + 456);
          if (*(a1 + 568) != 1)
          {
            v39 = *(a2 + 568);
            if (v39 != 1)
            {
              *v37 = *v38;
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 481) = *(a2 + 481);
              *(a1 + 483) = *(a2 + 483);
              *(a1 + 484) = *(a2 + 484);
              *(a1 + 488) = *(a2 + 488);
              v44 = *(a2 + 512);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 512) = v44;
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 536) = *(a2 + 536);
              *(a1 + 537) = *(a2 + 537);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = v39;

              *(a1 + 576) = *(a2 + 576);
              *(a1 + 592) = *(a2 + 592);
              *(a1 + 600) = *(a2 + 600);
              goto LABEL_44;
            }

            outlined destroy of AccessibilityTextLayoutProperties(a1 + 456);
          }

          v40 = *(a2 + 568);
          *(a1 + 552) = *(a2 + 552);
          *(a1 + 568) = v40;
          *(a1 + 584) = *(a2 + 584);
          *(a1 + 600) = *(a2 + 600);
          v41 = *(a2 + 504);
          *(a1 + 488) = *(a2 + 488);
          *(a1 + 504) = v41;
          v42 = *(a2 + 536);
          *(a1 + 520) = *(a2 + 520);
          *(a1 + 536) = v42;
          v43 = *(a2 + 472);
          *v37 = *v38;
          *(a1 + 472) = v43;
LABEL_44:
          *(a1 + 608) = *(a2 + 608);

          *(a1 + 616) = *(a2 + 616);
          *(a1 + 624) = *(a2 + 624);
          return a1;
        }

        outlined destroy of AccessibilityValueStorage(a1 + 392);
      }

      v34 = *(a2 + 408);
      *v30 = *v31;
      *(a1 + 408) = v34;
      *(a1 + 424) = *(a2 + 424);
      goto LABEL_39;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 328);
  }

  memcpy((a1 + 328), (a2 + 328), 0x129uLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for DSLPlatformItem(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 625))
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

uint64_t storeEnumTagSinglePayload for DSLPlatformItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 616) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 624) = 0;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 625) = 1;
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

    *(result + 625) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for DSLPlatformItemReader(uint64_t a1)
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for DSLPlatformItemReader(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (*(v5 + 80) & 0xF8 ^ 0x1F8u) & (v6 + 16);
  v8 = *a2;
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-17 - v6) | v6) - *(v5 + 64) - v7 >= 0xFFFFFFFFFFFFFFE7)
  {
    v11 = a2[1];
    *a1 = v8;
    a1[1] = v11;
    v12 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
  }

  else
  {
    *a1 = v8;
    a1 = (v8 + v7);
  }

  return a1;
}

uint64_t destroy for DSLPlatformItemReader(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 24) - 8);
  v5 = *(v4 + 8);
  v6 = (*(v4 + 80) + ((a1 + (*(v4 + 80) | 7) + 16) & ~(*(v4 + 80) | 7)) + 16) & ~*(v4 + 80);

  return v5(v6);
}

void *initializeWithCopy for DSLPlatformItemReader(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 24);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = (v7 | 7) + 16;
  v9 = ((a1 + v8) & ~(v7 | 7));
  v10 = ((a2 + v8) & ~(v7 | 7));
  *v9 = *v10;
  v11 = v9 + v7 + 16;
  v12 = v10 + v7 + 16;

  v6(v11 & ~v7, v12 & ~v7, v5);
  return a1;
}

void *assignWithCopy for DSLPlatformItemReader(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;

  v7 = *(*(a3 + 24) - 8);
  v8 = *(v7 + 24);
  v9 = *(v7 + 80);
  v10 = (v9 | 7) + 16;
  v11 = ((a1 + v10) & ~(v9 | 7));
  v12 = ((a2 + v10) & ~(v9 | 7));
  *v11 = *v12;
  v11[1] = v12[1];
  v8((v11 + v9 + 16) & ~v9, (v12 + v9 + 16) & ~v9);
  return a1;
}

_OWORD *initializeWithTake for DSLPlatformItemReader(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 32);
  v6 = *(v4 + 80);
  v7 = (v6 | 7) + 16;
  v8 = ((a1 + v7) & ~(v6 | 7));
  v9 = ((a2 + v7) & ~(v6 | 7));
  *v8 = *v9;
  v5((v8 + v6 + 16) & ~v6, (v9 + v6 + 16) & ~v6);
  return a1;
}

_OWORD *assignWithTake for DSLPlatformItemReader(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 40);
  v8 = *(v6 + 80);
  v9 = (v8 | 7) + 16;
  v10 = ((a1 + v9) & ~(v8 | 7));
  v11 = ((a2 + v9) & ~(v8 | 7));
  *v10 = *v11;
  v10[1] = v11[1];
  v7((v10 + v8 + 16) & ~v8, (v11 + v8 + 16) & ~v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for DSLPlatformItemReader(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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
  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = *(*(*(a3 + 24) - 8) + 64) - (((-17 - v6) | v6) + ((-17 - v6) | v8)) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v6 + ((a1 + v8 + 16) & ~v8) + 16) & ~v6);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void storeEnumTagSinglePayload for DSLPlatformItemReader(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = v10 + ((v9 + 16) & ~(v9 | 7));
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_57:
              if (v14 == 2)
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
            if (v14 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_30;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = (&a1[(v9 | 7) + 16] & ~(v9 | 7));
    if (v7 >= a2)
    {
      v24 = *(v6 + 56);

      v24(&v20[v9 + 16] & ~v9);
    }

    else
    {
      if (v10 <= 3)
      {
        v21 = ~(-1 << (8 * v10));
      }

      else
      {
        v21 = -1;
      }

      if (v10)
      {
        v22 = v21 & (~v7 + a2);
        if (v10 <= 3)
        {
          v23 = v10;
        }

        else
        {
          v23 = 4;
        }

        bzero(v20, v10);
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *v20 = v22;
            v20[2] = BYTE2(v22);
          }

          else
          {
            *v20 = v22;
          }
        }

        else if (v23 == 1)
        {
          *v20 = v22;
        }

        else
        {
          *v20 = v22;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

void destroy for DSLPlatformItem.Child(uint64_t a1)
{

  v2 = *(a1 + 40);
  if (v2 != 1)
  {

    v3 = *(a1 + 192);
    if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v4 = *(a1 + 72);
      if (v4 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 64), v4);
      }

      if ((v3 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 176), *(a1 + 184), v3, *(a1 + 200));
      }

      swift_unknownObjectRelease();
    }
  }

  if (*(a1 + 312) != 1)
  {
    swift_unknownObjectRelease();
  }

  if (*(a1 + 616))
  {

    v5 = *(a1 + 424);
    if (v5)
    {
      if (v5 == 1)
      {
LABEL_16:
        if (*(a1 + 576) != 1)
        {
        }

        return;
      }

      __swift_destroy_boxed_opaque_existential_1((a1 + 400));
    }

    goto LABEL_16;
  }
}

uint64_t initializeWithCopy for DSLPlatformItem.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v5 = (a2 + 40);
  v6 = *(a2 + 40);

  if (v6 == 1)
  {
    v7 = v5[13];
    *(a1 + 232) = v5[12];
    *(a1 + 248) = v7;
    *(a1 + 264) = v5[14];
    v8 = v5[9];
    *(a1 + 168) = v5[8];
    *(a1 + 184) = v8;
    v9 = v5[11];
    *(a1 + 200) = v5[10];
    *(a1 + 216) = v9;
    v10 = v5[5];
    *(a1 + 104) = v5[4];
    *(a1 + 120) = v10;
    v11 = v5[7];
    *(a1 + 136) = v5[6];
    *(a1 + 152) = v11;
    v12 = v5[1];
    *(a1 + 40) = *v5;
    *(a1 + 56) = v12;
    v13 = v5[3];
    *(a1 + 72) = v5[2];
    *(a1 + 88) = v13;
  }

  else
  {
    v14 = *(a2 + 48);
    v15 = *(a2 + 56);
    *(a1 + 40) = v6;
    *(a1 + 48) = v14;
    *(a1 + 56) = v15;
    v16 = *(a2 + 192);
    v17 = v6;
    v18 = v14;
    v19 = v15;
    if (v16 >> 1 == 4294967294)
    {
      v20 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v20;
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 235) = *(a2 + 235);
      v21 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v21;
      v22 = *(a2 + 176);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v22;
      v23 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v23;
      v24 = *(a2 + 112);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v24;
    }

    else
    {
      v25 = *(a2 + 72);
      if (v25 == 255)
      {
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
      }

      else
      {
        v26 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v26, *(a2 + 72));
        *(a1 + 64) = v26;
        *(a1 + 72) = v25;
        v16 = *(a2 + 192);
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      if (v16 >> 1 == 0xFFFFFFFF)
      {
        v27 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v27;
      }

      else
      {
        v28 = *(a2 + 176);
        v29 = *(a2 + 184);
        v30 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v28, v29, v16, v30);
        *(a1 + 176) = v28;
        *(a1 + 184) = v29;
        *(a1 + 192) = v16;
        *(a1 + 200) = v30;
      }

      v31 = *(a2 + 216);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = v31;
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 228) = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      v32 = *(a2 + 240);
      *(a1 + 240) = v32;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
      swift_unknownObjectRetain();

      v33 = v32;
    }

    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);
  v34 = *(a2 + 312);

  if (v34 == 1)
  {
    v35 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v35;
  }

  else
  {
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = v34;
    swift_unknownObjectRetain();
  }

  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  if (!*(a2 + 616))
  {
    memcpy((a1 + 336), (a2 + 336), 0x129uLL);
    return a1;
  }

  v36 = *(a2 + 344);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = v36;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 376) = *(a2 + 376);
  v37 = *(a2 + 424);

  if (!v37)
  {
    v39 = *(a2 + 416);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 416) = v39;
    *(a1 + 432) = *(a2 + 432);
LABEL_23:
    *(a1 + 440) = *(a2 + 440);

    goto LABEL_24;
  }

  if (v37 != 1)
  {
    v40 = *(a2 + 432);
    *(a1 + 424) = v37;
    *(a1 + 432) = v40;
    (**(v37 - 8))(a1 + 400, a2 + 400, v37);
    goto LABEL_23;
  }

  v38 = *(a2 + 416);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = v38;
  *(a1 + 432) = *(a2 + 432);
LABEL_24:
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  v41 = *(a2 + 576);
  if (v41 == 1)
  {
    v42 = *(a2 + 576);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 576) = v42;
    *(a1 + 592) = *(a2 + 592);
    *(a1 + 608) = *(a2 + 608);
    v43 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v43;
    v44 = *(a2 + 544);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = v44;
    v45 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v45;
  }

  else
  {
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 489) = *(a2 + 489);
    *(a1 + 491) = *(a2 + 491);
    *(a1 + 492) = *(a2 + 492);
    v46 = *(a2 + 512);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 512) = v46;
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 568);
    *(a1 + 576) = v41;
    *(a1 + 584) = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 608) = *(a2 + 608);
  }

  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);

  return a1;
}

uint64_t assignWithCopy for DSLPlatformItem.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = (a1 + 40);
  v5 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  v7 = (a2 + 40);
  v6 = *(a2 + 40);
  if (v5 == 1)
  {
    if (v6 == 1)
    {
      v8 = *v7;
      v9 = *(a2 + 72);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = v9;
      *v4 = v8;
      v10 = *(a2 + 88);
      v11 = *(a2 + 104);
      v12 = *(a2 + 136);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = v12;
      *(a1 + 88) = v10;
      *(a1 + 104) = v11;
      v13 = *(a2 + 152);
      v14 = *(a2 + 168);
      v15 = *(a2 + 200);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 200) = v15;
      *(a1 + 152) = v13;
      *(a1 + 168) = v14;
      v16 = *(a2 + 216);
      v17 = *(a2 + 232);
      v18 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v18;
      *(a1 + 216) = v16;
      *(a1 + 232) = v17;
    }

    else
    {
      *(a1 + 40) = v6;
      v30 = *(a2 + 48);
      *(a1 + 48) = v30;
      v31 = *(a2 + 56);
      *(a1 + 56) = v31;
      v32 = *(a2 + 192);
      v33 = v6;
      v34 = v30;
      v35 = v31;
      if (v32 >> 1 == 4294967294)
      {
        v36 = *(a2 + 64);
        v37 = *(a2 + 80);
        v38 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v38;
        *(a1 + 64) = v36;
        *(a1 + 80) = v37;
        v39 = *(a2 + 128);
        v40 = *(a2 + 144);
        v41 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v41;
        *(a1 + 128) = v39;
        *(a1 + 144) = v40;
        v42 = *(a2 + 192);
        v43 = *(a2 + 208);
        v44 = *(a2 + 224);
        *(a1 + 235) = *(a2 + 235);
        *(a1 + 208) = v43;
        *(a1 + 224) = v44;
        *(a1 + 192) = v42;
      }

      else
      {
        v62 = *(a2 + 72);
        if (v62 == 255)
        {
          v79 = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 64) = v79;
        }

        else
        {
          v63 = *(a2 + 64);
          outlined copy of GraphicsImage.Contents(v63, *(a2 + 72));
          *(a1 + 64) = v63;
          *(a1 + 72) = v62;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        v80 = *(a2 + 108);
        *(a1 + 121) = *(a2 + 121);
        *(a1 + 108) = v80;
        v81 = *(a2 + 136);
        v82 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v82;
        *(a1 + 136) = v81;
        *(a1 + 169) = *(a2 + 169);
        *(a1 + 170) = *(a2 + 170);
        *(a1 + 171) = *(a2 + 171);
        v83 = *(a2 + 192);
        if (v83 >> 1 == 0xFFFFFFFF)
        {
          v84 = *(a2 + 192);
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 192) = v84;
        }

        else
        {
          v85 = *(a2 + 176);
          v86 = *(a2 + 184);
          v87 = *(a2 + 200);
          outlined copy of AccessibilityImageLabel(v85, v86, *(a2 + 192), v87);
          *(a1 + 176) = v85;
          *(a1 + 184) = v86;
          *(a1 + 192) = v83;
          *(a1 + 200) = v87;
        }

        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 225) = *(a2 + 225);
        v88 = *(a2 + 228);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 228) = v88;
        v89 = *(a2 + 240);
        *(a1 + 240) = v89;
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 250) = *(a2 + 250);
        swift_unknownObjectRetain();

        v90 = v89;
      }

      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v6 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 40);
    v20 = *(a2 + 56);
    v19 = *(a2 + 72);
    *v4 = *v7;
    *(a1 + 56) = v20;
    *(a1 + 72) = v19;
    v21 = *(a2 + 136);
    v23 = *(a2 + 88);
    v22 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = v21;
    *(a1 + 88) = v23;
    *(a1 + 104) = v22;
    v24 = *(a2 + 200);
    v26 = *(a2 + 152);
    v25 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = v24;
    *(a1 + 152) = v26;
    *(a1 + 168) = v25;
    v27 = *(a2 + 264);
    v29 = *(a2 + 216);
    v28 = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = v27;
    *(a1 + 216) = v29;
    *(a1 + 232) = v28;
  }

  else
  {
    *(a1 + 40) = v6;
    v45 = v6;

    v46 = *(a1 + 48);
    v47 = *(a2 + 48);
    *(a1 + 48) = v47;
    v48 = v47;

    v49 = *(a1 + 56);
    v50 = *(a2 + 56);
    *(a1 + 56) = v50;
    v51 = v50;

    v52 = *(a2 + 192) & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 192) >> 1 == 4294967294)
    {
      if (v52 == 0x1FFFFFFFCLL)
      {
        v53 = *(a2 + 64);
        v54 = *(a2 + 80);
        v55 = *(a2 + 112);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v55;
        *(a1 + 64) = v53;
        *(a1 + 80) = v54;
        v56 = *(a2 + 128);
        v57 = *(a2 + 144);
        v58 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v58;
        *(a1 + 128) = v56;
        *(a1 + 144) = v57;
        v59 = *(a2 + 192);
        v60 = *(a2 + 208);
        v61 = *(a2 + 224);
        *(a1 + 235) = *(a2 + 235);
        *(a1 + 208) = v60;
        *(a1 + 224) = v61;
        *(a1 + 192) = v59;
      }

      else
      {
        v73 = *(a2 + 72);
        if (v73 == 255)
        {
          v91 = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 64) = v91;
        }

        else
        {
          v74 = *(a2 + 64);
          outlined copy of GraphicsImage.Contents(v74, *(a2 + 72));
          *(a1 + 64) = v74;
          *(a1 + 72) = v73;
        }

        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 104) = *(a2 + 104);
        v92 = *(a2 + 108);
        *(a1 + 121) = *(a2 + 121);
        *(a1 + 108) = v92;
        v93 = *(a2 + 136);
        v94 = *(a2 + 152);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 152) = v94;
        *(a1 + 136) = v93;
        *(a1 + 169) = *(a2 + 169);
        *(a1 + 170) = *(a2 + 170);
        *(a1 + 171) = *(a2 + 171);
        v95 = *(a2 + 192);
        if (v95 >> 1 == 0xFFFFFFFF)
        {
          v96 = *(a2 + 192);
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 192) = v96;
        }

        else
        {
          v97 = *(a2 + 176);
          v98 = *(a2 + 184);
          v99 = *(a2 + 200);
          outlined copy of AccessibilityImageLabel(v97, v98, *(a2 + 192), v99);
          *(a1 + 176) = v97;
          *(a1 + 184) = v98;
          *(a1 + 192) = v95;
          *(a1 + 200) = v99;
        }

        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 225) = *(a2 + 225);
        v100 = *(a2 + 228);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 228) = v100;
        v101 = *(a2 + 240);
        *(a1 + 240) = v101;
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 250) = *(a2 + 250);
        swift_unknownObjectRetain();

        v102 = v101;
      }
    }

    else if (v52 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(a1 + 64);
      v64 = *(a2 + 112);
      v66 = *(a2 + 64);
      v65 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v64;
      *(a1 + 64) = v66;
      *(a1 + 80) = v65;
      v67 = *(a2 + 176);
      v69 = *(a2 + 128);
      v68 = *(a2 + 144);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 176) = v67;
      *(a1 + 128) = v69;
      *(a1 + 144) = v68;
      v71 = *(a2 + 208);
      v70 = *(a2 + 224);
      v72 = *(a2 + 192);
      *(a1 + 235) = *(a2 + 235);
      *(a1 + 208) = v71;
      *(a1 + 224) = v70;
      *(a1 + 192) = v72;
    }

    else
    {
      v75 = *(a2 + 72);
      if (*(a1 + 72) == 255)
      {
        if (v75 == 255)
        {
          v105 = *(a2 + 64);
          *(a1 + 72) = *(a2 + 72);
          *(a1 + 64) = v105;
        }

        else
        {
          v103 = *(a2 + 64);
          outlined copy of GraphicsImage.Contents(v103, *(a2 + 72));
          *(a1 + 64) = v103;
          *(a1 + 72) = v75;
        }
      }

      else if (v75 == 255)
      {
        outlined destroy of GraphicsImage.Contents(a1 + 64);
        v104 = *(a2 + 72);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v104;
      }

      else
      {
        v76 = *(a2 + 64);
        outlined copy of GraphicsImage.Contents(v76, *(a2 + 72));
        v77 = *(a1 + 64);
        *(a1 + 64) = v76;
        v78 = *(a1 + 72);
        *(a1 + 72) = v75;
        outlined consume of GraphicsImage.Contents(v77, v78);
      }

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      v106 = *(a2 + 108);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 108) = v106;
      v107 = *(a2 + 136);
      v108 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v108;
      *(a1 + 136) = v107;
      *(a1 + 169) = *(a2 + 169);
      *(a1 + 170) = *(a2 + 170);
      *(a1 + 171) = *(a2 + 171);
      v109 = *(a2 + 192);
      v110 = v109 & 0xFFFFFFFFFFFFFFFELL;
      if (*(a1 + 192) >> 1 == 0xFFFFFFFFLL)
      {
        if (v110 == 0x1FFFFFFFELL)
        {
          v111 = *(a2 + 192);
          *(a1 + 176) = *(a2 + 176);
          *(a1 + 192) = v111;
        }

        else
        {
          v113 = *(a2 + 176);
          v114 = *(a2 + 184);
          v115 = *(a2 + 200);
          outlined copy of AccessibilityImageLabel(v113, v114, *(a2 + 192), v115);
          *(a1 + 176) = v113;
          *(a1 + 184) = v114;
          *(a1 + 192) = v109;
          *(a1 + 200) = v115;
        }
      }

      else if (v110 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(a1 + 176);
        v112 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v112;
      }

      else
      {
        v116 = *(a2 + 176);
        v117 = *(a2 + 184);
        v118 = *(a2 + 200);
        outlined copy of AccessibilityImageLabel(v116, v117, *(a2 + 192), v118);
        v119 = *(a1 + 176);
        v120 = *(a1 + 184);
        v121 = *(a1 + 192);
        v122 = *(a1 + 200);
        *(a1 + 176) = v116;
        *(a1 + 184) = v117;
        *(a1 + 192) = v109;
        *(a1 + 200) = v118;
        outlined consume of AccessibilityImageLabel(v119, v120, v121, v122);
      }

      *(a1 + 208) = *(a2 + 208);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 216) = *(a2 + 216);

      *(a1 + 224) = *(a2 + 224);
      *(a1 + 225) = *(a2 + 225);
      v123 = *(a2 + 228);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 228) = v123;
      v124 = *(a1 + 240);
      v125 = *(a2 + 240);
      *(a1 + 240) = v125;
      v126 = v125;

      *(a1 + 248) = *(a2 + 248);
      *(a1 + 250) = *(a2 + 250);
    }

    *(a1 + 256) = *(a2 + 256);

    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  v127 = *(a2 + 312);
  if (*(a1 + 312) == 1)
  {
    if (v127 == 1)
    {
      v128 = *(a2 + 304);
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 304) = v128;
    }

    else
    {
      *(a1 + 288) = *(a2 + 288);
      *(a1 + 296) = *(a2 + 296);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 312) = *(a2 + 312);
      swift_unknownObjectRetain();
    }
  }

  else if (v127 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 288);
    v129 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v129;
  }

  else
  {
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 292) = *(a2 + 292);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 300) = *(a2 + 300);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 312) = *(a2 + 312);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  v130 = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 320) = v130;
  v131 = *(a2 + 616);
  if (*(a1 + 616))
  {
    if (v131)
    {
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 344) = *(a2 + 344);

      *(a1 + 352) = *(a2 + 352);
      *(a1 + 360) = *(a2 + 360);

      *(a1 + 368) = *(a2 + 368);
      v132 = *(a2 + 376);
      *(a1 + 392) = *(a2 + 392);
      *(a1 + 376) = v132;
      v133 = *(a1 + 424);
      v134 = *(a2 + 424);
      if (v133 != 1)
      {
        if (v134 == 1)
        {
          outlined destroy of AccessibilityValueStorage(a1 + 400);
          v142 = *(a2 + 416);
          v141 = *(a2 + 432);
          *(a1 + 400) = *(a2 + 400);
          *(a1 + 416) = v142;
          *(a1 + 432) = v141;
        }

        else
        {
          if (v133)
          {
            v143 = (a1 + 400);
            if (v134)
            {
              __swift_assign_boxed_opaque_existential_1(v143, (a2 + 400));
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v143);
              v159 = *(a2 + 432);
              v160 = *(a2 + 416);
              *(a1 + 400) = *(a2 + 400);
              *(a1 + 416) = v160;
              *(a1 + 432) = v159;
            }
          }

          else if (v134)
          {
            *(a1 + 424) = v134;
            *(a1 + 432) = *(a2 + 432);
            (**(v134 - 8))(a1 + 400, a2 + 400);
          }

          else
          {
            v161 = *(a2 + 400);
            v162 = *(a2 + 416);
            *(a1 + 432) = *(a2 + 432);
            *(a1 + 400) = v161;
            *(a1 + 416) = v162;
          }

          *(a1 + 440) = *(a2 + 440);
        }

        goto LABEL_83;
      }

      if (v134)
      {
        if (v134 == 1)
        {
          v135 = *(a2 + 400);
          v136 = *(a2 + 432);
          *(a1 + 416) = *(a2 + 416);
          *(a1 + 432) = v136;
          *(a1 + 400) = v135;
LABEL_83:
          v163 = *(a2 + 448);
          *(a1 + 456) = *(a2 + 456);
          *(a1 + 448) = v163;
          v164 = *(a2 + 576);
          if (*(a1 + 576) == 1)
          {
            if (v164 == 1)
            {
              v165 = *(a2 + 480);
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 480) = v165;
              v166 = *(a2 + 496);
              v167 = *(a2 + 512);
              v168 = *(a2 + 544);
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 544) = v168;
              *(a1 + 496) = v166;
              *(a1 + 512) = v167;
              v169 = *(a2 + 560);
              v170 = *(a2 + 576);
              v171 = *(a2 + 592);
              *(a1 + 608) = *(a2 + 608);
              *(a1 + 576) = v170;
              *(a1 + 592) = v171;
              *(a1 + 560) = v169;
            }

            else
            {
              v179 = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
              *(a1 + 464) = v179;
              v180 = *(a2 + 480);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 480) = v180;
              *(a1 + 489) = *(a2 + 489);
              *(a1 + 490) = *(a2 + 490);
              *(a1 + 491) = *(a2 + 491);
              *(a1 + 492) = *(a2 + 492);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 504) = *(a2 + 504);
              *(a1 + 512) = *(a2 + 512);
              *(a1 + 520) = *(a2 + 520);
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 536) = *(a2 + 536);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 545) = *(a2 + 545);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              *(a1 + 576) = *(a2 + 576);
              v181 = *(a2 + 584);
              *(a1 + 600) = *(a2 + 600);
              *(a1 + 584) = v181;
              *(a1 + 608) = *(a2 + 608);
            }
          }

          else if (v164 == 1)
          {
            outlined destroy of AccessibilityTextLayoutProperties(a1 + 464);
            v172 = *(a2 + 480);
            *(a1 + 464) = *(a2 + 464);
            *(a1 + 480) = v172;
            v173 = *(a2 + 544);
            v175 = *(a2 + 496);
            v174 = *(a2 + 512);
            *(a1 + 528) = *(a2 + 528);
            *(a1 + 544) = v173;
            *(a1 + 496) = v175;
            *(a1 + 512) = v174;
            v177 = *(a2 + 576);
            v176 = *(a2 + 592);
            v178 = *(a2 + 560);
            *(a1 + 608) = *(a2 + 608);
            *(a1 + 576) = v177;
            *(a1 + 592) = v176;
            *(a1 + 560) = v178;
          }

          else
          {
            v182 = *(a2 + 464);
            *(a1 + 472) = *(a2 + 472);
            *(a1 + 464) = v182;
            v183 = *(a2 + 480);
            *(a1 + 488) = *(a2 + 488);
            *(a1 + 480) = v183;
            *(a1 + 489) = *(a2 + 489);
            *(a1 + 490) = *(a2 + 490);
            *(a1 + 491) = *(a2 + 491);
            *(a1 + 492) = *(a2 + 492);
            *(a1 + 496) = *(a2 + 496);
            *(a1 + 504) = *(a2 + 504);
            *(a1 + 512) = *(a2 + 512);
            *(a1 + 520) = *(a2 + 520);
            *(a1 + 528) = *(a2 + 528);
            *(a1 + 536) = *(a2 + 536);
            *(a1 + 544) = *(a2 + 544);
            *(a1 + 545) = *(a2 + 545);
            *(a1 + 552) = *(a2 + 552);
            *(a1 + 560) = *(a2 + 560);
            *(a1 + 568) = *(a2 + 568);
            *(a1 + 576) = *(a2 + 576);

            v184 = *(a2 + 584);
            *(a1 + 600) = *(a2 + 600);
            *(a1 + 584) = v184;
            *(a1 + 608) = *(a2 + 608);
          }

          *(a1 + 616) = *(a2 + 616);

          *(a1 + 624) = *(a2 + 624);
          *(a1 + 628) = *(a2 + 628);
          *(a1 + 632) = *(a2 + 632);
          return a1;
        }

        *(a1 + 424) = v134;
        *(a1 + 432) = *(a2 + 432);
        (**(v134 - 8))(a1 + 400, a2 + 400);
      }

      else
      {
        v157 = *(a2 + 400);
        v158 = *(a2 + 416);
        *(a1 + 432) = *(a2 + 432);
        *(a1 + 400) = v157;
        *(a1 + 416) = v158;
      }

      *(a1 + 440) = *(a2 + 440);

      goto LABEL_83;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 336);
LABEL_62:
    memcpy((a1 + 336), (a2 + 336), 0x129uLL);
    return a1;
  }

  if (!v131)
  {
    goto LABEL_62;
  }

  *(a1 + 336) = *(a2 + 336);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 368) = *(a2 + 368);
  v137 = *(a2 + 376);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 376) = v137;
  v138 = *(a2 + 424);

  if (!v138)
  {
    v144 = *(a2 + 400);
    v145 = *(a2 + 416);
    *(a1 + 432) = *(a2 + 432);
    *(a1 + 400) = v144;
    *(a1 + 416) = v145;
LABEL_70:
    *(a1 + 440) = *(a2 + 440);

    goto LABEL_71;
  }

  if (v138 != 1)
  {
    *(a1 + 424) = v138;
    *(a1 + 432) = *(a2 + 432);
    (**(v138 - 8))(a1 + 400, a2 + 400, v138);
    goto LABEL_70;
  }

  v139 = *(a2 + 400);
  v140 = *(a2 + 432);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v140;
  *(a1 + 400) = v139;
LABEL_71:
  v146 = *(a2 + 448);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 448) = v146;
  if (*(a2 + 576) == 1)
  {
    v147 = *(a2 + 480);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 480) = v147;
    v148 = *(a2 + 496);
    v149 = *(a2 + 512);
    v150 = *(a2 + 544);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 544) = v150;
    *(a1 + 496) = v148;
    *(a1 + 512) = v149;
    v151 = *(a2 + 560);
    v152 = *(a2 + 576);
    v153 = *(a2 + 592);
    *(a1 + 608) = *(a2 + 608);
    *(a1 + 576) = v152;
    *(a1 + 592) = v153;
    *(a1 + 560) = v151;
  }

  else
  {
    v154 = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 464) = v154;
    v155 = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 480) = v155;
    *(a1 + 489) = *(a2 + 489);
    *(a1 + 490) = *(a2 + 490);
    *(a1 + 491) = *(a2 + 491);
    *(a1 + 492) = *(a2 + 492);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 528) = *(a2 + 528);
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 545) = *(a2 + 545);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 568) = *(a2 + 568);
    *(a1 + 576) = *(a2 + 576);
    v156 = *(a2 + 584);
    *(a1 + 600) = *(a2 + 600);
    *(a1 + 584) = v156;
    *(a1 + 608) = *(a2 + 608);
  }

  *(a1 + 616) = *(a2 + 616);
  *(a1 + 624) = *(a2 + 624);
  *(a1 + 632) = *(a2 + 632);

  return a1;
}

uint64_t assignWithTake for DSLPlatformItem.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  if (v4 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 40);
LABEL_4:
    v6 = *(a2 + 248);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = v6;
    *(a1 + 264) = *(a2 + 264);
    v7 = *(a2 + 184);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 184) = v7;
    v8 = *(a2 + 216);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = v8;
    v9 = *(a2 + 120);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = v9;
    v10 = *(a2 + 152);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = v10;
    v11 = *(a2 + 56);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = v11;
    v12 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v12;
    goto LABEL_21;
  }

  *(a1 + 40) = v4;

  v13 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v14 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);

  if (*(a1 + 192) >> 1 == 4294967294)
  {
    goto LABEL_8;
  }

  if (*(a2 + 192) >> 1 != 4294967294)
  {
    v20 = *(a1 + 72);
    if (v20 != 255)
    {
      v21 = *(a2 + 72);
      if (v21 != 255)
      {
        v22 = *(a1 + 64);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v21;
        outlined consume of GraphicsImage.Contents(v22, v20);
        goto LABEL_14;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 64);
    }

    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
LABEL_14:
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 169) = *(a2 + 169);
    v23 = *(a1 + 192);
    *(a1 + 170) = *(a2 + 170);
    if (v23 >> 1 != 0xFFFFFFFF)
    {
      v24 = *(a2 + 192);
      if (v24 >> 1 != 0xFFFFFFFF)
      {
        v26 = *(a2 + 200);
        v27 = *(a1 + 176);
        v28 = *(a1 + 184);
        v29 = *(a1 + 200);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v24;
        *(a1 + 200) = v26;
        outlined consume of AccessibilityImageLabel(v27, v28, v23, v29);
        goto LABEL_19;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 176);
    }

    v25 = *(a2 + 192);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 192) = v25;
LABEL_19:
    *(a1 + 208) = *(a2 + 208);
    swift_unknownObjectRelease();
    *(a1 + 216) = *(a2 + 216);

    *(a1 + 224) = *(a2 + 224);
    *(a1 + 225) = *(a2 + 225);
    *(a1 + 228) = *(a2 + 228);
    *(a1 + 232) = *(a2 + 232);
    v30 = *(a1 + 240);
    *(a1 + 240) = *(a2 + 240);

    *(a1 + 248) = *(a2 + 248);
    *(a1 + 250) = *(a2 + 250);
    goto LABEL_20;
  }

  outlined destroy of Image.Resolved(a1 + 64);
LABEL_8:
  v15 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v15;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 235) = *(a2 + 235);
  v16 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v16;
  v17 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v17;
  v18 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v18;
  v19 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v19;
LABEL_20:
  *(a1 + 256) = *(a2 + 256);

  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);

LABEL_21:
  *(a1 + 280) = *(a2 + 280);

  if (*(a1 + 312) == 1)
  {
LABEL_24:
    v32 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v32;
    goto LABEL_26;
  }

  v31 = *(a2 + 312);
  if (v31 == 1)
  {
    outlined destroy of PlatformItem.SelectionContent(a1 + 288);
    goto LABEL_24;
  }

  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = v31;
  swift_unknownObjectRelease();
LABEL_26:
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  if (*(a1 + 616))
  {
    if (*(a2 + 616))
    {
      v33 = *(a2 + 344);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 344) = v33;

      *(a1 + 352) = *(a2 + 352);
      *(a1 + 360) = *(a2 + 360);

      *(a1 + 368) = *(a2 + 368);
      *(a1 + 376) = *(a2 + 376);
      *(a1 + 392) = *(a2 + 392);
      v34 = *(a1 + 424);
      if (v34 != 1)
      {
        v35 = *(a2 + 424);
        if (v35 != 1)
        {
          if (v34)
          {
            v37 = (a1 + 400);
            if (v35)
            {
              __swift_destroy_boxed_opaque_existential_1(v37);
            }

            else
            {
              outlined destroy of AnyAccessibilityValue(v37);
            }
          }

          v38 = *(a2 + 416);
          *(a1 + 400) = *(a2 + 400);
          *(a1 + 416) = v38;
          v39 = *(a2 + 440);
          *(a1 + 432) = *(a2 + 432);
          *(a1 + 440) = v39;

LABEL_39:
          *(a1 + 448) = *(a2 + 448);
          *(a1 + 456) = *(a2 + 456);
          if (*(a1 + 576) != 1)
          {
            v40 = *(a2 + 576);
            if (v40 != 1)
            {
              *(a1 + 464) = *(a2 + 464);
              *(a1 + 472) = *(a2 + 472);
              *(a1 + 480) = *(a2 + 480);
              *(a1 + 488) = *(a2 + 488);
              *(a1 + 489) = *(a2 + 489);
              *(a1 + 491) = *(a2 + 491);
              *(a1 + 492) = *(a2 + 492);
              v45 = *(a2 + 512);
              *(a1 + 496) = *(a2 + 496);
              *(a1 + 512) = v45;
              *(a1 + 528) = *(a2 + 528);
              *(a1 + 544) = *(a2 + 544);
              *(a1 + 545) = *(a2 + 545);
              *(a1 + 552) = *(a2 + 552);
              *(a1 + 560) = *(a2 + 560);
              *(a1 + 568) = *(a2 + 568);
              *(a1 + 576) = v40;

              *(a1 + 584) = *(a2 + 584);
              *(a1 + 600) = *(a2 + 600);
              *(a1 + 608) = *(a2 + 608);
              goto LABEL_44;
            }

            outlined destroy of AccessibilityTextLayoutProperties(a1 + 464);
          }

          v41 = *(a2 + 576);
          *(a1 + 560) = *(a2 + 560);
          *(a1 + 576) = v41;
          *(a1 + 592) = *(a2 + 592);
          *(a1 + 608) = *(a2 + 608);
          v42 = *(a2 + 512);
          *(a1 + 496) = *(a2 + 496);
          *(a1 + 512) = v42;
          v43 = *(a2 + 544);
          *(a1 + 528) = *(a2 + 528);
          *(a1 + 544) = v43;
          v44 = *(a2 + 480);
          *(a1 + 464) = *(a2 + 464);
          *(a1 + 480) = v44;
LABEL_44:
          *(a1 + 616) = *(a2 + 616);

          *(a1 + 624) = *(a2 + 624);
          *(a1 + 632) = *(a2 + 632);
          return a1;
        }

        outlined destroy of AccessibilityValueStorage(a1 + 400);
      }

      v36 = *(a2 + 416);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 416) = v36;
      *(a1 + 432) = *(a2 + 432);
      goto LABEL_39;
    }

    outlined destroy of PlatformItem.AccessibilityContent(a1 + 336);
  }

  memcpy((a1 + 336), (a2 + 336), 0x129uLL);
  return a1;
}

uint64_t getEnumTagSinglePayload for DSLPlatformItem.Child(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 633))
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

uint64_t storeEnumTagSinglePayload for DSLPlatformItem.Child(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 632) = 0;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 633) = 1;
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

    *(result + 633) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined destroy of (PlatformItem, Bool)?(uint64_t a1)
{
  type metadata accessor for (PlatformItem, Bool)?(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (PlatformItem, Bool)?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (PlatformItem, Bool)?)
  {
    type metadata accessor for (PlatformItem, Bool)();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (PlatformItem, Bool)?);
    }
  }
}

void type metadata accessor for (PlatformItem, Bool)()
{
  if (!lazy cache variable for type metadata for (PlatformItem, Bool))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (PlatformItem, Bool));
    }
  }
}

void KeyboardShortcut.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 input];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

LABEL_15:

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = 0;
    *(a2 + 16) = 0;
    return;
  }

  if (one-time initialization token for keyInputToKeyEquivalentMap != -1)
  {
    swift_once();
  }

  rawValue = keyInputToKeyEquivalentMap._rawValue;
  if (*(keyInputToKeyEquivalentMap._rawValue + 2))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v8);
    if (v12)
    {
      v13 = (rawValue[7] + 16 * v11);
      v6 = *v13;
      v14 = v13[1];

      v8 = v14;
    }
  }

  if ((v8 & 0x2000000000000000) != 0)
  {
    if ((v8 & 0xF00000000000000) != 0)
    {
LABEL_17:
      v17 = [a1 modifierFlags];

      v18 = specialized EventModifiers.init(_:)(v17);
      *a2 = v6;
      *(a2 + 8) = v8;
      *(a2 + 16) = v18;
      *(a2 + 24) = 0;
      return;
    }
  }

  else
  {
    if ((v6 & 0xFFFFFFFFFFFFLL) != 0)
    {
      if ((v6 & 0x1000000000000000) == 0)
      {
        v6 = static String._copying(_:)(v6, v8);
        v16 = v15;

        v8 = v16;
      }

      goto LABEL_17;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t one-time initialization function for keyInputToKeyEquivalentMap()
{
  type metadata accessor for _ContiguousArrayStorage<(String, Character)>(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CDB9700;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = 8428783;
  *(inited + 56) = 0xA300000000000000;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v2;
  *(inited + 80) = 8494319;
  *(inited + 88) = 0xA300000000000000;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v3;
  *(inited + 112) = 8559855;
  *(inited + 120) = 0xA300000000000000;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v4;
  *(inited + 144) = 8625391;
  *(inited + 152) = 0xA300000000000000;
  *(inited + 160) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 168) = v5;
  *(inited + 176) = 27;
  *(inited + 184) = 0xE100000000000000;
  *(inited + 192) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 200) = v6;
  *(inited + 208) = 8;
  *(inited + 216) = 0xE100000000000000;
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v7;
  *(inited + 240) = 11312367;
  *(inited + 248) = 0xA300000000000000;
  *(inited + 256) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 264) = v8;
  *(inited + 272) = 11377903;
  *(inited + 280) = 0xA300000000000000;
  *(inited + 288) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 296) = v9;
  *(inited + 304) = 11115759;
  *(inited + 312) = 0xA300000000000000;
  *(inited + 320) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 328) = v10;
  *(inited + 336) = 11246831;
  *(inited + 344) = 0xA300000000000000;
  *(inited + 352) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 360) = v11;
  *(inited + 368) = 8690927;
  *(inited + 376) = 0xA300000000000000;
  *(inited + 384) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 392) = v12;
  *(inited + 400) = 8756463;
  *(inited + 408) = 0xA300000000000000;
  *(inited + 416) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 424) = v13;
  *(inited + 432) = 8821999;
  *(inited + 440) = 0xA300000000000000;
  *(inited + 448) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 456) = v14;
  *(inited + 464) = 8887535;
  *(inited + 472) = 0xA300000000000000;
  *(inited + 480) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 488) = v15;
  *(inited + 496) = 8953071;
  *(inited + 504) = 0xA300000000000000;
  *(inited + 512) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 520) = v16;
  *(inited + 528) = 9018607;
  *(inited + 536) = 0xA300000000000000;
  *(inited + 544) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 552) = v17;
  *(inited + 560) = 9084143;
  *(inited + 568) = 0xA300000000000000;
  *(inited + 576) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 584) = v18;
  *(inited + 592) = 9149679;
  *(inited + 600) = 0xA300000000000000;
  *(inited + 608) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 616) = v19;
  *(inited + 624) = 9215215;
  *(inited + 632) = 0xA300000000000000;
  *(inited + 640) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 648) = v20;
  *(inited + 656) = 9280751;
  *(inited + 664) = 0xA300000000000000;
  *(inited + 672) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 680) = v21;
  *(inited + 688) = 9346287;
  *(inited + 696) = 0xA300000000000000;
  *(inited + 704) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 712) = v22;
  *(inited + 720) = 9411823;
  *(inited + 728) = 0xA300000000000000;
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SJTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  type metadata accessor for (String, Character)();
  result = swift_arrayDestroy();
  keyInputToKeyEquivalentMap._rawValue = v23;
  return result;
}

uint64_t one-time initialization function for keyEquivalentToKeyInputMap()
{
  if (one-time initialization token for keyInputToKeyEquivalentMap == -1)
  {
    goto LABEL_2;
  }

LABEL_27:
  swift_once();
LABEL_2:
  rawValue = keyInputToKeyEquivalentMap._rawValue;
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSJ_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v2 = rawValue + 64;
  v3 = 1 << rawValue[32];
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(rawValue + 8);
  v6 = (v3 + 63) >> 6;
  v32 = rawValue;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  if (v5)
  {
LABEL_7:
    v10 = v7;
    goto LABEL_11;
  }

  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *&v2[8 * v10];
    ++v7;
    if (v5)
    {
LABEL_11:
      v11 = (v10 << 10) | (16 * __clz(__rbit64(v5)));
      v12 = (*(v32 + 6) + v11);
      v13 = v12[1];
      v33 = *v12;
      v14 = (*(v32 + 7) + v11);
      v16 = *v14;
      v15 = v14[1];
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
      v20 = v1[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v24 = v19;
      if (v1[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = v18;
          specialized _NativeDictionary.copy()();
          v18 = v30;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
        if ((v24 & 1) != (v25 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v5 &= v5 - 1;
      if (v24)
      {
        v8 = v18;

        v9 = (v1[7] + 16 * v8);
        *v9 = v33;
        v9[1] = v13;

        v7 = v10;
        if (v5)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v1[(v18 >> 6) + 8] |= 1 << v18;
        v26 = (v1[6] + 16 * v18);
        *v26 = v16;
        v26[1] = v15;
        v27 = (v1[7] + 16 * v18);
        *v27 = v33;
        v27[1] = v13;

        v28 = v1[2];
        v22 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v22)
        {
          goto LABEL_26;
        }

        v1[2] = v29;
        v7 = v10;
        if (v5)
        {
          goto LABEL_7;
        }
      }
    }
  }

  keyEquivalentToKeyInputMap._rawValue = v1;
}

void type metadata accessor for _ContiguousArrayStorage<(String, Character)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Character)>)
  {
    type metadata accessor for (String, Character)();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, Character)>);
    }
  }
}

void type metadata accessor for (String, Character)()
{
  if (!lazy cache variable for type metadata for (String, Character))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, Character));
    }
  }
}

uint64_t specialized EventModifiers.init(_:)(int a1)
{
  if ((a1 & 0x10000) != 0)
  {
    if ((a1 & 0x20000) != 0)
    {
      v1 = 3;
      if ((a1 & 0x40000) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 0x40000) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ((a1 & 0x20000) == 0)
    {
      v1 = 0;
      if ((a1 & 0x40000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v1 = 2;
    if ((a1 & 0x40000) != 0)
    {
LABEL_4:
      v1 |= 4uLL;
    }
  }

LABEL_5:
  if ((a1 & 0x80000) == 0)
  {
    if ((a1 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v1 |= 0x10uLL;
    if ((a1 & 0x200000) == 0)
    {
      return v1;
    }

    return v1 | 0x20;
  }

  v1 |= 8uLL;
  if ((a1 & 0x100000) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((a1 & 0x200000) != 0)
  {
    return v1 | 0x20;
  }

  return v1;
}

uint64_t View.labelGroupStyle_v0<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LabelGroupStyleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x18D00A570](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedLabelGroupStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedLabelGroupStyle and conformance ResolvedLabelGroupStyle();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance LabelGroupStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LabelGroupStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance LabelGroupChildEnvironmentModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for LabelGroupChildEnvironmentModifier<A>, a5);

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static UIViewPlatformViewDefinition.supportsMixedHierarchy.getter(uint64_t a1)
{
  static Semantics.v7.getter();

  return isLinkedOnOrAfter(_:)();
}

double static UIViewPlatformViewDefinition.setPath(_:shapeView:)(__int128 *a1, uint64_t a2)
{
  v2 = a2 + OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path;
  v3 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path);
  v4 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path + 8);
  v5 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path + 16);
  v6 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_A34643117F00277B93DEBAB70EC0697122_UIShapeHitTestingView_path + 24);
  v7 = *a1;
  v8 = a1[1];
  *v2 = *a1;
  *(v2 + 16) = v8;
  v9 = *(a1 + 32);
  v10 = *(v2 + 32);
  *(v2 + 32) = v9;
  v13[0] = v7;
  v13[1] = v8;
  v14 = v9;
  outlined init with copy of Path.Storage(v13, v12);
  return outlined consume of Path.Storage(v3, v4, v5, v6, v10);
}

void static UIViewPlatformViewDefinition.setProjectionTransform(_:projectionView:)(uint64_t a1, id a2)
{
  v2 = [a2 layer];
  CATransform3D.init(_:)();
  [v2 setTransform_];
}

id _UIGraphicsView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIGraphicsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void __swiftcall _UIInheritedView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  if ((UIViewIgnoresTouchEvents(retstr) & 1) == 0)
  {
    v7 = [v3 subviews];
    type metadata accessor for UIView();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
LABEL_18:
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v8 & 0xC000000000000001;
    v17 = v8;
    v12 = v8 + 32;
    v8 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
    while (v10)
    {
      if (__OFSUB__(v10--, 1))
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v11)
      {
        v14 = MEMORY[0x18D00E9C0](v10, v17);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_16;
        }

        if (v10 >= *(v9 + 16))
        {
          goto LABEL_17;
        }

        v14 = *(v12 + 8 * v10);
      }

      v15 = v14;
      [v3 convertPoint:v14 toCoordinateSpace:{x, y}];
      v16 = [v15 hitTest:isa withEvent:?];

      if (v16)
      {
        break;
      }
    }
  }
}

void key path getter for EnvironmentValues.listStackBehavior : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey);
    PropertyList.subscript.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5;
}

double key path setter for EnvironmentValues.listStackBehavior : EnvironmentValues(uint64_t *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

uint64_t View.listHasPresentationStackBehavior()(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag();

  return View.input<A>(_:)();
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<ListPresentationSizingFlag> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<ListPresentationSizingFlag> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<ListPresentationSizingFlag> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<ListPresentationSizingFlag>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<ListPresentationSizingFlag>, lazy protocol witness table accessor for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag, &unk_1EFFD9128, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable(MEMORY[0x1E697FD30], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<ListPresentationSizingFlag> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t assignWithTake for ListPresentationSizingModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 17);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 17);
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  outlined consume of Environment<CGSize?>.Content(v5, v6, v8, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListPresentationSizingModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
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

uint64_t storeEnumTagSinglePayload for ListPresentationSizingModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = -a2;
    }
  }

  return result;
}

__n128 ListPresentationSizingModifier.body(content:)@<Q0>(void *a1@<X1>, uint64_t a2@<X2>, __int16 a3@<W3>, uint64_t a4@<X8>)
{
  specialized Environment.wrappedValue.getter(a1, a2, a3 & 0x1FF);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  KeyPath = swift_getKeyPath();
  *(a4 + 64) = v11;
  *(a4 + 80) = v12;
  *(a4 + 96) = v13;
  *a4 = v7;
  *(a4 + 16) = v8;
  result = v10;
  *(a4 + 32) = v9;
  *(a4 + 48) = v10;
  *(a4 + 112) = KeyPath;
  *(a4 + 120) = 1;
  *(a4 + 128) = 256;
  return result;
}

uint64_t EnvironmentValues.defaultPresentationSize.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ListPresentationSizingFlag(uint64_t *a1, uint64_t a2)
{
  lazy protocol witness table accessor for type ListPresentationSizingFlag and conformance ListPresentationSizingFlag();
  PropertyList.subscript.getter();
  return v3;
}

double key path getter for EnvironmentValues.defaultPresentationSize : EnvironmentValues@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize);
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

double key path setter for EnvironmentValues.defaultPresentationSize : EnvironmentValues(__int128 *a1, void *a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_defaultPresentationSize>, &type metadata for EnvironmentValues.__Key_defaultPresentationSize, &protocol witness table for EnvironmentValues.__Key_defaultPresentationSize);

  PropertyList.subscript.setter();
  if (a2[1])
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>(255);
    type metadata accessor for _EnvironmentKeyWritingModifier<ListStackBehavior>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<ListStackBehavior>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>)
  {
    type metadata accessor for ViewInputFlagModifier<ListPresentationSizingFlag>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ListPresentationSizingModifier>, lazy protocol witness table accessor for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier, &type metadata for ListPresentationSizingModifier, MEMORY[0x1E697FDE8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>);
    }
  }
}

void type metadata accessor for ViewInputFlagModifier<ListPresentationSizingFlag>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for _EnvironmentKeyWritingModifier<ListStackBehavior>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListStackBehavior>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<ListPresentationSizingModifier> and conformance _ViewModifier_Content<A>();
    v5[1] = MEMORY[0x1E697EBF8];
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ListPresentationSizingModifier>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ListPresentationSizingModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ListPresentationSizingModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ListPresentationSizingModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ViewInputFlagModifier<ListPresentationSizingFlag>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ListPresentationSizingModifier>, lazy protocol witness table accessor for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier, &type metadata for ListPresentationSizingModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ListPresentationSizingModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<ListStackBehavior>();
    result = swift_getWitnessTable(MEMORY[0x1E6980A18], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListStackBehavior> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void EnvironmentValues.listItemTint.getter()
{
  if (*(v1 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListItemTintKey>, &type metadata for ListItemTintKey, &protocol witness table for ListItemTintKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListItemTintKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }
}

double static ListItemTint.fixed(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;

  return result;
}

double static ListItemTint.preferred(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;

  return result;
}

double static ListItemTint.monochrome.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for monochrome != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = byte_1EAA2B608;
  *a1 = static ListItemTint.monochrome;
  *(a1 + 8) = v2;

  return result;
}

uint64_t View.listItemTint(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  v5 = v3;

  View._trait<A>(_:_:)();
  return outlined consume of ListItemTint?(v5);
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<ListItemTintTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<ListItemTintTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<ListItemTintTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<ListItemTintTraitKey>, &type metadata for ListItemTintTraitKey, &protocol witness table for ListItemTintTraitKey, MEMORY[0x1E697FDB8]);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<ListItemTintTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t AnyTabContent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyTabContentStorage(0, v9, v10, v10);
  (*(v6 + 16))(v8, a1, a2);
  v11 = LimitedAvailabilityCommandContentStorage.__allocating_init(_:)(v8);
  result = (*(v6 + 8))(a1, a2);
  *a3 = v11;
  return result;
}

uint64_t protocol witness for TabContent._identifiedView.getter in conformance AnyTabContent<A>@<X0>(uint64_t *a1@<X8>)
{
  result = AnyTabContent._identifiedView.getter();
  *a1 = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for AnyTabContent<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for AnyTabContent<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t AnyTabContentStorage.identifiedView.getter()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v1 + 56))(v2, v1, v4);
  swift_getAssociatedConformanceWitness();
  return AnyView.init<A>(_:)();
}

double CGVector.subscript.getter(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return result;
}

double (*CGVector.subscript.modify(uint64_t a1, char a2))(uint64_t a1)
{
  *(a1 + 8) = v2;
  *(a1 + 16) = a2;
  v3 = v2 + 1;
  if ((a2 & 1) == 0)
  {
    v3 = v2;
  }

  *a1 = *v3;
  return CGVector.subscript.modify;
}

double CGVector.subscript.modify(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8 * (*(a1 + 16) & 1)) = *a1;
  return result;
}

double CGVector.init(_:in:by:)(char a1, double a2, double a3)
{
  if (a1)
  {
    return a3;
  }

  return a2;
}

uint64_t static AnimatedValueTrackBuilder.buildExpression(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for AnimatedValueTrack(0, a3, a4, a5);
  v8 = *(*(v7 - 8) + 16);

  return v8(a2, a1, v7);
}

uint64_t destroy for AnyTransferable()
{
}

void *initializeWithCopy for AnyTransferable(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

void *assignWithCopy for AnyTransferable(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];

  return a1;
}

uint64_t assignWithTake for AnyTransferable(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t AnyTransferable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v46 = a4;
  v47 = a3;
  v6 = type metadata accessor for TransferRepresentationVisibility();
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v44 = v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - v17;
  v19 = *(v9 + 16);
  v48 = a1;
  v19(&v39 - v17, a1, v8, v16);
  v20 = *(a2 - 8);
  v21 = *(v20 + 48);
  if (v21(v18, 1, a2) == 1)
  {
    v39 = 0;
    v40 = 0;
    v22 = v9;
    v23 = v8;
  }

  else
  {
    v24 = Transferable.suggestedFilename.getter();
    v39 = v25;
    v40 = v24;
    v22 = v20;
    v23 = a2;
  }

  (*(v22 + 8))(v18, v23);
  (v19)(v13, v48, v8);
  if (v21(v13, 1, a2) == 1)
  {
    v26 = *(v9 + 8);
    v27 = v39;

    v26(v13, v8);
    v28 = v41;
    static TransferRepresentationVisibility.all.getter();
    v29 = v47;
    v30 = static Transferable.exportedContentTypes(visibility:)();

    (*(v42 + 8))(v28, v43);
  }

  else
  {
    v31 = v39;

    v32 = v41;
    static TransferRepresentationVisibility.all.getter();
    v29 = v47;
    v30 = Transferable.exportedContentTypes(_:)();
    (*(v42 + 8))(v32, v43);
    (*(v20 + 8))(v13, a2);
    v27 = v31;
  }

  v33 = *(v9 + 32);
  v34 = v45;
  v33(v45, v48, v8);
  v35 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = a2;
  *(v36 + 24) = v29;
  result = (v33)(v36 + v35, v34, v8);
  v38 = v46;
  *v46 = &async function pointer to partial apply for closure #1 in AnyTransferable.init<A>(_:);
  v38[1] = v36;
  v38[2] = v40;
  v38[3] = v27;
  v38[4] = v30;
  return result;
}

uint64_t closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_5(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  v6[19] = swift_task_alloc();
  v8 = type metadata accessor for UTType();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v9 = type metadata accessor for Optional();
  v6[24] = v9;
  v6[25] = *(v9 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = *(a5 - 8);
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in AnyTransferable.init<A>(_:), 0, 0);
}

uint64_t closure #1 in AnyTransferable.init<A>(_:)()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 136);
  (*(*(v0 + 200) + 16))(v1, *(v0 + 128), *(v0 + 192));
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    type metadata accessor for AnyTransferable.ExportError(0);
    lazy protocol witness table accessor for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError();
    swift_allocError();
    v5 = v4;
    type metadata accessor for (UTType, Error)(0);
    (*(*(v6 - 8) + 56))(v5, 1, 2, v6);
    swift_willThrow();
LABEL_3:

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 168);
  v11 = *(v0 + 152);
  v12 = *(v0 + 112);
  (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 208), *(v0 + 136));
  outlined init with copy of UTType?(v12, v11);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v13 = *(v0 + 120);
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(*(v0 + 152), &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    v14 = *(v13 + 16);
    *(v0 + 232) = v14;
    if (!v14)
    {
      v28 = *(v0 + 216);
      v27 = *(v0 + 224);
      v29 = *(v0 + 136);
      type metadata accessor for AnyTransferable.ExportError(0);
      lazy protocol witness table accessor for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError();
      swift_allocError();
      v31 = v30;
      type metadata accessor for (UTType, Error)(0);
      (*(*(v32 - 8) + 56))(v31, 2, 2, v32);
      swift_willThrow();
      (*(v28 + 8))(v27, v29);
      goto LABEL_3;
    }

    v15 = *(v0 + 120);
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
    v18 = *(v17 + 16);
    v17 += 16;
    v19 = *(v17 + 64);
    *(v0 + 296) = v19;
    *(v0 + 240) = *(v17 + 56);
    *(v0 + 248) = v18;
    *(v0 + 272) = 0;
    v18(*(v0 + 176), v15 + ((v19 + 32) & ~v19), v16);
    v20 = swift_task_alloc();
    *(v0 + 280) = v20;
    *v20 = v0;
    v20[1] = closure #1 in AnyTransferable.init<A>(_:);
    v21 = *(v0 + 224);
    v22 = *(v0 + 176);
  }

  else
  {
    (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 152), *(v0 + 160));
    v23 = swift_task_alloc();
    *(v0 + 256) = v23;
    *v23 = v0;
    v23[1] = closure #1 in AnyTransferable.init<A>(_:);
    v21 = *(v0 + 224);
    v22 = *(v0 + 184);
  }

  v24 = *(v0 + 136);
  v25 = *(v0 + 144);
  v26 = *(v0 + 104);

  return fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)(v26, v22, v21, v24, v25);
}

{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[17];
  (*(v0[21] + 8))(v0[23], v0[20]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[3];

  v5 = v0[1];

  return v5(v4);
}

{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[17];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[6];

  v5 = v0[1];

  return v5(v4);
}

{
  v1 = v0[33];
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v13 = v0[17];
  v14 = v0[28];
  type metadata accessor for AnyTransferable.ExportError(0);
  lazy protocol witness table accessor for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError();
  swift_allocError();
  v7 = v6;
  type metadata accessor for (UTType, Error)(0);
  v9 = v8;
  v10 = *(v8 + 48);
  (*(v5 + 16))(v7, v3, v4);
  *(v7 + v10) = v1;
  (*(*(v9 - 8) + 56))(v7, 0, 2, v9);
  swift_willThrow();
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v14, v13);

  v11 = v0[1];

  return v11();
}

{
  v1 = *(v0 + 288);
  v24 = *(v0 + 232);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 160);
  v5 = *(v0 + 272) + 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v6 = *(v0 + 88);
  *(v0 + 64) = *(v0 + 80);
  *(v0 + 72) = v6;
  MEMORY[0x18D00C9B0](0xD000000000000011, 0x800000018CD4FF80);
  v7 = _typeName(_:qualified:)();
  MEMORY[0x18D00C9B0](v7);

  MEMORY[0x18D00C9B0](0x206874697720, 0xE600000000000000);
  v8 = UTType.identifier.getter();
  MEMORY[0x18D00C9B0](v8);

  MEMORY[0x18D00C9B0](0x3A726F727245202ELL, 0xE900000000000020);
  *(v0 + 96) = v1;
  type metadata accessor for Error();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  MEMORY[0x18D009810](*(v0 + 64), *(v0 + 72));

  (*(v3 + 8))(v2, v4);
  if (v5 == v24)
  {
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v11 = *(v0 + 136);
    type metadata accessor for AnyTransferable.ExportError(0);
    lazy protocol witness table accessor for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError();
    swift_allocError();
    v13 = v12;
    type metadata accessor for (UTType, Error)(0);
    (*(*(v14 - 8) + 56))(v13, 2, 2, v14);
    swift_willThrow();
    (*(v10 + 8))(v9, v11);

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    v17 = *(v0 + 272) + 1;
    *(v0 + 272) = v17;
    (*(v0 + 248))(*(v0 + 176), *(v0 + 120) + ((*(v0 + 296) + 32) & ~*(v0 + 296)) + *(v0 + 240) * v17, *(v0 + 160));
    v18 = swift_task_alloc();
    *(v0 + 280) = v18;
    *v18 = v0;
    v18[1] = closure #1 in AnyTransferable.init<A>(_:);
    v19 = *(v0 + 224);
    v20 = *(v0 + 176);
    v21 = *(v0 + 136);
    v22 = *(v0 + 144);
    v23 = *(v0 + 104);

    return fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)(v23, v20, v19, v21, v22);
  }
}

uint64_t closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[33] = v1;

  if (v1)
  {
    v4 = closure #1 in AnyTransferable.init<A>(_:);
  }

  else
  {
    v4 = closure #1 in AnyTransferable.init<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[36] = v1;

  if (v1)
  {
    v4 = closure #1 in AnyTransferable.init<A>(_:);
  }

  else
  {
    v4 = closure #1 in AnyTransferable.init<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_5(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = type metadata accessor for TransferRepresentationVisibility();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:), 0, 0);
}

uint64_t fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[23];
  v3 = v2[24];
  v5 = v2[22];
  v6 = v2[11];
  static TransferRepresentationVisibility.all.getter();
  v7 = static Transferable.exportedFileContentTypes(visibility:)();
  v8 = *(v4 + 8);
  v8(v3, v5);
  LOBYTE(v3) = specialized Sequence<>.contains(_:)(v6, v7);

  if (v3)
  {
    v9 = v2[17];
    v10 = v2[11];
    v11 = type metadata accessor for UTType();
    v2[25] = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 16);
    v2[26] = v13;
    v2[27] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v9, v10, v11);
    (*(v12 + 56))(v9, 0, 1, v11);
    v14 = swift_task_alloc();
    v2[28] = v14;
    *v14 = v2;
    v14[1] = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
    v15 = v2[21];
    v16 = v2[17];
    v17 = v2[18];
    v18 = v2[13];
    v19 = v2[14];

    return MEMORY[0x1EEDBF540](v15, v16, &async function pointer to closure #1 in fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:), 0, v18, v17, v19);
  }

  else
  {
    v20 = v2[24];
    v21 = v2[22];
    v22 = v2[11];
    static TransferRepresentationVisibility.all.getter();
    v23 = static Transferable.exportedDataContentTypes(visibility:)();
    v8(v20, v21);
    LOBYTE(v20) = specialized Sequence<>.contains(_:)(v22, v23);

    v24 = type metadata accessor for UTType();
    v2[30] = v24;
    v25 = *(v24 - 8);
    v26 = *(v25 + 16);
    v27 = (v25 + 56);
    v2[31] = v26;
    v2[32] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v28 = v2[11];
    if (v20)
    {
      v29 = v2[16];
      v26(v29, v28, v24);
      (*v27)(v29, 0, 1, v24);
      v30 = swift_task_alloc();
      v2[33] = v30;
      *v30 = v2;
      v30[1] = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
      v31 = v2[16];
    }

    else
    {
      v32 = v2[15];
      v26(v32, v28, v24);
      (*v27)(v32, 0, 1, v24);
      v33 = swift_task_alloc();
      v2[35] = v33;
      *v33 = v2;
      v33[1] = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
      v31 = v2[15];
    }

    v34 = v2[13];
    v35 = v2[14];

    return MEMORY[0x1EEDBF598](v31, v34, v35);
  }
}

{
  v4 = *v3;
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v5[34] = v2;

  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(v4[16], &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  if (v2)
  {
    v6 = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
  }

  else
  {
    v6 = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v4 = *v3;
  v5 = *v3;
  v5[6] = v3;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = v2;
  v5[36] = v2;

  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(v4[15], &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  if (v2)
  {
    v6 = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
  }

  else
  {
    v6 = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)()
{
  v2 = *(*v1 + 136);
  *(*v1 + 232) = v0;

  _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(v2, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  if (v0)
  {
    v3 = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
  }

  else
  {
    v3 = fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 232);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  (*(v5 + 16))(v3, v2, v4);
  v6 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  v7 = @nonobjc NSFileWrapper.init(url:options:)(v3, 0);
  (*(v5 + 8))(v2, v4);
  if (v1)
  {

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    (*(v0 + 208))(*(v0 + 80), *(v0 + 88), *(v0 + 200));

    v10 = *(v0 + 8);

    return v10(v7);
  }
}

{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = [v3 initRegularFileWithContents_];

  v6 = outlined consume of Data._Representation(v2, v1);
  (*(v0 + 248))(*(v0 + 80), *(v0 + 88), *(v0 + 240), v6);

  v7 = *(v0 + 8);

  return v7(v5);
}

{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = [v3 initRegularFileWithContents_];

  v6 = outlined consume of Data._Representation(v2, v1);
  (*(v0 + 248))(*(v0 + 80), *(v0 + 88), *(v0 + 240), v6);

  v7 = *(v0 + 8);

  return v7(v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:), 0, 0);
}

uint64_t closure #1 in fileWrapper #1 <A>(for:item:) in closure #1 in AnyTransferable.init<A>(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t AnyTransferable.newFileWrapper(contentType:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a1;
  v3[8] = a2;
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_5(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_5(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for UTType();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *v2;
  v8 = v2[1];
  v3[17] = v6;
  v3[18] = v7;
  v9 = v2[4];
  v3[19] = v8;
  v3[20] = v9;
  v12 = (v7 + *v7);
  v10 = swift_task_alloc();
  v3[21] = v10;
  *v10 = v3;
  v10[1] = AnyTransferable.newFileWrapper(contentType:);

  return v12(v6, a2, v9);
}

uint64_t AnyTransferable.newFileWrapper(contentType:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = AnyTransferable.newFileWrapper(contentType:);
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = AnyTransferable.newFileWrapper(contentType:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v2 = *(v1 + 88);
  static Log.documents.getter();
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(*(v1 + 88), &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  }

  else
  {
    v5 = *(v1 + 176);
    v6 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v1 + 176);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = v9;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_18BD4A000, v7, v8, "Failed to export item. Error: %@", v10, 0xCu);
      _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(v11, &lazy cache variable for type metadata for NSObject?, type metadata accessor for NSObject);
      MEMORY[0x18D0110E0](v11, -1, -1);
      MEMORY[0x18D0110E0](v10, -1, -1);
    }

    v14 = *(v1 + 88);

    (*(v4 + 8))(v14, v3);
  }

  v15 = *(v1 + 96);
  v16 = *(v1 + 104);
  v17 = *(v1 + 80);
  outlined init with copy of UTType?(*(v1 + 64), v17);
  if ((*(v16 + 48))(v17, 1, v15) == 1)
  {
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(*(v1 + 80), &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
LABEL_18:
    v43 = *(v1 + 176);
    v45 = *(v1 + 56);
    v44 = *(v1 + 64);
    v46 = [objc_allocWithZone(MEMORY[0x1E696AC38]) init];

    outlined init with copy of UTType?(v44, v45);

    v47 = *(v1 + 8);

    return v47(v46);
  }

  v18 = *(v1 + 160);
  v19 = *(v1 + 128);
  v20 = *(v1 + 96);
  v21 = *(v1 + 104);
  v22 = *(v1 + 80);
  v23 = *(v21 + 32);
  *(v1 + 192) = v23;
  *(v1 + 200) = (v21 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v23(v19, v22, v20);
  v24 = *(v18 + 16);
  *(v1 + 208) = v24;
  v25 = *(v1 + 104);
  if (!v24)
  {
    (*(v25 + 8))(*(v1 + 128), *(v1 + 96));
    goto LABEL_18;
  }

  v26 = 0;
  v27 = *(v25 + 80);
  *(v1 + 280) = v27;
  v28 = *(v25 + 72);
  *(v1 + 216) = v28;
  v29 = *(v25 + 16);
  *(v1 + 224) = v29;
  while (1)
  {
    *(v1 + 232) = v26;
    v29(*(v1 + 120), *(v1 + 160) + ((v27 + 32) & ~v27) + v28 * v26, *(v1 + 96));
    if (UTType.conforms(to:)())
    {
      break;
    }

    v30 = *(v1 + 208);
    v31 = *(v1 + 232) + 1;
    v32 = *(*(v1 + 104) + 8);
    v32(*(v1 + 120), *(v1 + 96));
    if (v31 == v30)
    {
      v32(*(v1 + 128), *(v1 + 96));
      goto LABEL_18;
    }

    v29 = *(v1 + 224);
    v26 = *(v1 + 232) + 1;
    v28 = *(v1 + 216);
    LOBYTE(v27) = *(v1 + 280);
  }

  v33 = *(v1 + 144);
  v34 = *(v1 + 96);
  v35 = *(v1 + 104);
  v36 = *(v1 + 72);
  (*(v1 + 224))(v36, *(v1 + 120), v34);
  v37 = *(v35 + 56);
  *(v1 + 240) = v37;
  *(v1 + 248) = (v35 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v37(v36, 0, 1, v34);
  v48 = (v33 + *v33);
  v38 = swift_task_alloc();
  *(v1 + 256) = v38;
  *v38 = v1;
  v38[1] = AnyTransferable.newFileWrapper(contentType:);
  v39 = *(v1 + 160);
  v40 = *(v1 + 112);
  v41 = *(v1 + 72);

  return v48(v40, v41, v39);
}

{
  v4 = *v2;
  v4[33] = v1;

  v5 = v4[9];
  if (v1)
  {
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(v5, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    v6 = AnyTransferable.newFileWrapper(contentType:);
  }

  else
  {
    v4[34] = a1;
    _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(v5, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450]);
    v6 = AnyTransferable.newFileWrapper(contentType:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t AnyTransferable.newFileWrapper(contentType:)()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];
  (*(v2 + 32))(v3, v0[17], v1);
  (*(v2 + 56))(v3, 0, 1, v1);
  v4 = v0[23];

  v5 = v0[1];

  return v5(v4);
}

{
  v12 = *(v0 + 240);
  v1 = *(v0 + 192);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 56);

  v8 = *(v5 + 8);
  v8(v2, v6);
  v8(v3, v6);
  v1(v7, v4, v6);
  v12(v7, 0, 1, v6);
  v9 = *(v0 + 272);

  v10 = *(v0 + 8);

  return v10(v9);
}

{
  v1 = *(v0 + 264);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  _StringGuts.grow(_:)(41);
  v2 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 32);
  *(v0 + 24) = v2;
  MEMORY[0x18D00C9B0](0xD00000000000001BLL, 0x800000018CD4FFA0);
  v3 = UTType.identifier.getter();
  MEMORY[0x18D00C9B0](v3);

  MEMORY[0x18D00C9B0](0x3A726F727245202ELL, 0xE900000000000020);
  *(v0 + 48) = v1;
  type metadata accessor for Error();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](46, 0xE100000000000000);
  MEMORY[0x18D009810](*(v0 + 16), *(v0 + 24));

  while (1)
  {
    v4 = *(v0 + 208);
    v5 = *(v0 + 232) + 1;
    v6 = *(*(v0 + 104) + 8);
    v6(*(v0 + 120), *(v0 + 96));
    if (v5 == v4)
    {
      break;
    }

    v7 = *(v0 + 224);
    v8 = *(v0 + 232) + 1;
    *(v0 + 232) = v8;
    v7(*(v0 + 120), *(v0 + 160) + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + *(v0 + 216) * v8, *(v0 + 96));
    if (UTType.conforms(to:)())
    {
      v9 = *(v0 + 144);
      v10 = *(v0 + 96);
      v11 = *(v0 + 104);
      v12 = *(v0 + 72);
      (*(v0 + 224))(v12, *(v0 + 120), v10);
      v13 = *(v11 + 56);
      *(v0 + 240) = v13;
      *(v0 + 248) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v13(v12, 0, 1, v10);
      v24 = (v9 + *v9);
      v14 = swift_task_alloc();
      *(v0 + 256) = v14;
      *v14 = v0;
      v14[1] = AnyTransferable.newFileWrapper(contentType:);
      v15 = *(v0 + 160);
      v16 = *(v0 + 112);
      v17 = *(v0 + 72);

      return v24(v16, v17, v15);
    }
  }

  v6(*(v0 + 128), *(v0 + 96));
  v19 = *(v0 + 176);
  v21 = *(v0 + 56);
  v20 = *(v0 + 64);
  v22 = [objc_allocWithZone(MEMORY[0x1E696AC38]) init];

  outlined init with copy of UTType?(v20, v21);

  v23 = *(v0 + 8);

  return v23(v22);
}

unint64_t AnyTransferable.ExportError.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AnyTransferable.ExportError(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AnyTransferable.ExportError(v1, v8);
  type metadata accessor for (UTType, Error)(0);
  v10 = v9;
  v11 = (*(*(v9 - 8) + 48))(v8, 2, v9);
  if (v11)
  {
    if (v11 == 1)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return 0xD00000000000004BLL;
    }
  }

  else
  {
    v13 = *&v8[*(v10 + 48)];
    (*(v3 + 32))(v5, v8, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(51);
    MEMORY[0x18D00C9B0](0xD000000000000025, 0x800000018CD4FF30);
    v14 = UTType.identifier.getter();
    MEMORY[0x18D00C9B0](v14);

    MEMORY[0x18D00C9B0](0x3A726F7272450A2ELL, 0xE900000000000020);
    v16[1] = v13;
    type metadata accessor for Error();
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](46, 0xE100000000000000);

    v15 = v17;
    (*(v3 + 8))(v5, v2);
    return v15;
  }
}

uint64_t type metadata accessor for AnyTransferable.ExportError(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnyTransferable.ExportError;
  if (!type metadata singleton initialization cache for AnyTransferable.ExportError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of AnyTransferable.ExportError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyTransferable.ExportError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (UTType, Error)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UTType, Error))
  {
    type metadata accessor for UTType();
    type metadata accessor for Error();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UTType, Error));
    }
  }
}

uint64_t partial apply for closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(type metadata accessor for Optional() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = partial apply for closure #1 in AnyTransferable.init<A>(_:);

  return closure #1 in AnyTransferable.init<A>(_:)(a1, a2, a3, v3 + v11, v8, v9);
}

uint64_t partial apply for closure #1 in AnyTransferable.init<A>(_:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t lazy protocol witness table accessor for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError()
{
  result = lazy protocol witness table cache variable for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError;
  if (!lazy protocol witness table cache variable for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError)
  {
    v3 = type metadata accessor for AnyTransferable.ExportError(255);
    result = swift_getWitnessTable(protocol conformance descriptor for AnyTransferable.ExportError, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type AnyTransferable.ExportError and conformance AnyTransferable.ExportError);
  }

  return result;
}

uint64_t _s22UniformTypeIdentifiers6UTTypeVSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s22UniformTypeIdentifiers6UTTypeVSgMaTm_5(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AnyTransferable.ExportError(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  type metadata accessor for (UTType, Error)(0);
  v8 = v7;
  v9 = *(v7 - 8);
  if (!(*(v9 + 48))(a2, 2, v7))
  {
    v13 = type metadata accessor for UTType();
    (*(*(v13 - 8) + 16))(a1, a2, v13);
    v14 = *(v8 + 48);
    v15 = *(a2 + v14);
    v16 = v15;
    *(a1 + v14) = v15;
    (*(v9 + 56))(a1, 0, 2, v8);
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

void destroy for AnyTransferable.ExportError(uint64_t a1)
{
  type metadata accessor for (UTType, Error)(0);
  v3 = v2;
  if (!(*(*(v2 - 8) + 48))(a1, 2, v2))
  {
    v4 = type metadata accessor for UTType();
    (*(*(v4 - 8) + 8))(a1, v4);
    v5 = *(a1 + *(v3 + 48));
  }
}

char *initializeWithCopy for AnyTransferable.ExportError(char *a1, char *a2, uint64_t a3)
{
  type metadata accessor for (UTType, Error)(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 2, v6))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    v11 = type metadata accessor for UTType();
    (*(*(v11 - 8) + 16))(a1, a2, v11);
    v12 = *(v7 + 48);
    v13 = *&a2[v12];
    v14 = v13;
    *&a1[v12] = v13;
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }
}

char *assignWithCopy for AnyTransferable.ExportError(char *a1, char *a2, uint64_t a3)
{
  type metadata accessor for (UTType, Error)(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 2, v6);
  v11 = v9(a2, 2, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = type metadata accessor for UTType();
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      v13 = *(v7 + 48);
      v14 = *&a2[v13];
      v15 = v14;
      *&a1[v13] = v14;
      (*(v8 + 56))(a1, 0, 2, v7);
      return a1;
    }
  }

  else
  {
    if (!v11)
    {
      v18 = type metadata accessor for UTType();
      (*(*(v18 - 8) + 24))(a1, a2, v18);
      v19 = *(v7 + 48);
      v20 = *&a2[v19];
      v21 = v20;
      v22 = *&a1[v19];
      *&a1[v19] = v20;

      return a1;
    }

    outlined destroy of (UTType, Error)(a1);
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

uint64_t outlined destroy of (UTType, Error)(uint64_t a1)
{
  type metadata accessor for (UTType, Error)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *initializeWithTake for AnyTransferable.ExportError(char *a1, char *a2, uint64_t a3)
{
  type metadata accessor for (UTType, Error)(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(a2, 2, v6))
  {
    v9 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v9);
  }

  else
  {
    v11 = type metadata accessor for UTType();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
    *&a1[*(v7 + 48)] = *&a2[*(v7 + 48)];
    (*(v8 + 56))(a1, 0, 2, v7);
    return a1;
  }
}

char *assignWithTake for AnyTransferable.ExportError(char *a1, char *a2, uint64_t a3)
{
  type metadata accessor for (UTType, Error)(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 48);
  v10 = v9(a1, 2, v6);
  v11 = v9(a2, 2, v7);
  if (v10)
  {
    if (!v11)
    {
      v12 = type metadata accessor for UTType();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
      *&a1[*(v7 + 48)] = *&a2[*(v7 + 48)];
      (*(v8 + 56))(a1, 0, 2, v7);
      return a1;
    }
  }

  else
  {
    if (!v11)
    {
      v15 = type metadata accessor for UTType();
      (*(*(v15 - 8) + 40))(a1, a2, v15);
      v16 = *(v7 + 48);
      v17 = *&a1[v16];
      *&a1[v16] = *&a2[v16];

      return a1;
    }

    outlined destroy of (UTType, Error)(a1);
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

uint64_t getEnumTag for AnyTransferable.ExportError(uint64_t a1)
{
  type metadata accessor for (UTType, Error)(0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 2, v2);
}

uint64_t destructiveInjectEnumTag for AnyTransferable.ExportError(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (UTType, Error)(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 2, v4);
}

uint64_t type metadata completion function for AnyTransferable.ExportError(uint64_t a1)
{
  result = type metadata accessor for UTType();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t destroy for URLReceipt(uint64_t *a1)
{
  result = *a1;
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t *assignWithCopy for URLReceipt(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1 - 1;
  v4 = *a2;
  v5 = *a2 - 1;
  if (v3 >= 2)
  {
    if (v5 >= 2)
    {
      *a1 = v4;
    }

    else
    {
      outlined destroy of (urls: [URL]?)(a1);
      *a1 = *a2;
    }
  }

  else
  {
    *a1 = v4;
    if (v5 >= 2)
    {
    }
  }

  return a1;
}

uint64_t outlined destroy of (urls: [URL]?)(uint64_t a1)
{
  type metadata accessor for (urls: [URL]?)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (urls: [URL]?)()
{
  if (!lazy cache variable for type metadata for (urls: [URL]?))
  {
    type metadata accessor for [URL]?(0, &lazy cache variable for type metadata for [URL]?, type metadata accessor for [URL], MEMORY[0x1E69E6720]);
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (urls: [URL]?));
    }
  }
}

void type metadata accessor for [URL]?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *assignWithTake for URLReceipt(void *result, uint64_t *a2)
{
  v2 = *a2;
  if ((*result - 1) >= 2)
  {
    if ((v2 - 1) >= 2)
    {
      *result = v2;
      v4 = result;

      return v4;
    }

    else
    {
      v3 = result;
      outlined destroy of (urls: [URL]?)(result);
      result = v3;
      *v3 = v2;
    }
  }

  else
  {
    *result = v2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for URLReceipt(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

unint64_t destroy for URLReceipt.Result(unint64_t *a1)
{
  result = *a1;
  v2 = -1;
  if (result < 0xFFFFFFFF)
  {
    v2 = result;
  }

  if (v2 - 1 < 0)
  {
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for URLReceipt.Result(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  LODWORD(v4) = -1;
  if (*a2 < 0xFFFFFFFF)
  {
    v4 = *a2;
  }

  if (v4 - 1 < 0)
  {
    v5 = a1;

    a1 = v5;
  }

  *a1 = v3;
  return a1;
}

uint64_t *assignWithCopy for URLReceipt.Result(uint64_t *result, unint64_t *a2)
{
  LODWORD(v2) = -1;
  if (*result >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  else
  {
    v3 = *result;
  }

  v4 = v3 - 1;
  v5 = *a2;
  if (*a2 < 0xFFFFFFFF)
  {
    v2 = *a2;
  }

  v6 = v2 - 1;
  if (v4 < 0)
  {
    if (v6 < 0)
    {
      *result = v5;
      v10 = result;

      return v10;
    }

    else
    {
      v7 = result;

      result = v7;
      *v7 = *a2;
    }
  }

  else
  {
    *result = v5;
    if (v6 < 0)
    {
      v9 = result;

      return v9;
    }
  }

  return result;
}

unint64_t *assignWithTake for URLReceipt.Result(unint64_t *result, unint64_t *a2)
{
  LODWORD(v2) = -1;
  if (*result < 0xFFFFFFFF)
  {
    v2 = *result;
  }

  v3 = *a2;
  if (v2 - 1 < 0)
  {
    LODWORD(v4) = -1;
    if (v3 < 0xFFFFFFFF)
    {
      v4 = *a2;
    }

    if (v4 - 1 < 0)
    {
      *result = v3;
      v6 = result;

      return v6;
    }

    else
    {
      v5 = result;

      result = v5;
      *v5 = v3;
    }
  }

  else
  {
    *result = v3;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for URLReceipt.Result(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void *destructiveInjectEnumTag for URLReceipt.Result(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

uint64_t TabContent.popover<A>(isPresented:attachmentAnchor:arrowEdge:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = *a4;
  v14 = *(a4 + 8);
  v15 = a5;
  v16 = *(a4 + 16);
  PopoverConditionalStateProvider.init(isPresented:content:)(a1, a2, a3, a6, a7, v28);
  v26[0] = v13;
  v26[1] = v14;
  v27 = v16;
  if (v15 == 4)
  {
    v18 = 0;
  }

  else
  {
    v18 = specialized Edge.Set.init(_:)(a5);
  }

  v19 = type metadata accessor for PopoverConditionalStateProvider(0, a9, a11, v17);
  WitnessTable = swift_getWitnessTable("tM\t", v19);
  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v28, v26, v18 | ((v15 == 4) << 8), 0, 0, 0, v19, WitnessTable, v29);
  v22 = type metadata accessor for PopoverPresentationModifier(0, v19, WitnessTable, v21);
  TabContent.modifier<A>(_:)(v29, a8, v22, x8_0);

  outlined copy of Environment<CGFloat?>.Content(v13, v14, v16);
  return (*(*(v22 - 8) + 8))(v29, v22);
}

uint64_t TabContent.popover<A, B>(item:attachmentAnchor:arrowEdge:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v49 = a6;
  v45 = a5;
  v46 = a4;
  v44 = a1;
  v48 = a9;
  v39 = a12;
  v40 = a8;
  v47 = a10;
  v37 = a7;
  v38 = a11;
  v36 = a3;
  v43 = a3;
  type metadata accessor for Optional();
  v42 = type metadata accessor for Binding();
  v15 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v17 = &v35[-v16];
  v50 = a7;
  v51 = a8;
  v52 = a11;
  v53 = a12;
  v18 = type metadata accessor for PopoverItemStateProvider(0, &v50);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v35[-v20];
  WitnessTable = swift_getWitnessTable("HM\t", v18, v19);
  v23 = type metadata accessor for PopoverPresentationModifier(0, v18, WitnessTable, v22);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v35[-v26];
  v29 = *a2;
  v28 = *(a2 + 8);
  v30 = *(a2 + 16);
  (*(v15 + 16))(v17, v44, v42, v25);
  v31 = v17;
  v32 = v43;
  PopoverItemStateProvider.init(item:content:)(v31, v46, v45, v37, v40, v38, v39, v21);
  v50 = v29;
  v51 = v28;
  LOBYTE(v52) = v30;
  if (v32 == 4)
  {
    v33 = 0;
  }

  else
  {
    v33 = specialized Edge.Set.init(_:)(v36);
  }

  PopoverPresentationModifier.init(provider:attachmentAnchor:arrowEdges:isDetachable:keyType:attachmentBehavior:)(v21, &v50, v33 | ((v32 == 4) << 8), 0, 0, 0, v18, WitnessTable, v27);
  TabContent.modifier<A>(_:)(v27, v49, v23, v48);

  outlined copy of Environment<CGFloat?>.Content(v29, v28, v30);
  return (*(v24 + 8))(v27, v23);
}

double protocol witness for static _ViewTraitKey.defaultValue.getter in conformance TabPopoverPresentationsKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static TabPopoverPresentationsKey.defaultValue;

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>)
  {
    type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>(255);
    type metadata accessor for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>)
  {
    type metadata accessor for Toggle<ToggleStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Toggle<ToggleStyleConfiguration.Label>, &type metadata for ToggleStyleConfiguration.Label, &protocol witness table for ToggleStyleConfiguration.Label, type metadata accessor for Toggle);
    type metadata accessor for ToggleStyleModifier<_CheckboxToggleStyle>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>);
    }
  }
}

void type metadata accessor for ToggleStyleModifier<_CheckboxToggleStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ToggleStyleModifier<_CheckboxToggleStyle>)
  {
    v2 = lazy protocol witness table accessor for type _CheckboxToggleStyle and conformance _CheckboxToggleStyle();
    v4 = type metadata accessor for ToggleStyleModifier(a1, &type metadata for _CheckboxToggleStyle, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ToggleStyleModifier<_CheckboxToggleStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _CheckboxToggleStyle and conformance _CheckboxToggleStyle()
{
  result = lazy protocol witness table cache variable for type _CheckboxToggleStyle and conformance _CheckboxToggleStyle;
  if (!lazy protocol witness table cache variable for type _CheckboxToggleStyle and conformance _CheckboxToggleStyle)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for _CheckboxToggleStyle, &type metadata for _CheckboxToggleStyle, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _CheckboxToggleStyle and conformance _CheckboxToggleStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Toggle<ToggleStyleConfiguration.Label> and conformance Toggle<A>();
    v5[1] = &protocol witness table for ToggleStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Toggle<ToggleStyleConfiguration.Label>, ToggleStyleModifier<_CheckboxToggleStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697FDC0], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

id UIActivityViewController.init(configuration:env:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*(a1 + 32) == 1)
  {
    v6 = *(a1 + 16);
    v5 = *(a1 + 24);

    outlined copy of AppIntentExecutor?(v6, v5);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v6, v5);

    outlined destroy of AnyShareConfiguration(a1);
    return 0;
  }

  else
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIActivityItemsConfiguration, 0x1E69DC640);
    v14[0] = v3;
    v14[1] = v4;
    outlined init with copy of AnyShareConfiguration(a1, v13);

    v8 = UIActivityItemsConfiguration.init(configuration:env:)(a1, v14);
    if (v8)
    {
      isa = v8;

      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithActivityItemsConfiguration_];
    }

    else
    {
      v13[0] = v3;
      v13[1] = v4;
      AnyShareConfiguration.resolveActivityItems(in:)(v13);

      v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = Array._bridgeToObjectiveC()().super.isa;

      v10 = [v11 initWithActivityItems:isa applicationActivities:0];
    }

    v12 = v10;
    outlined destroy of AnyShareConfiguration(a1);

    return v12;
  }
}

id UIActivityItemsConfiguration.init(configuration:env:)(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  if (v6 == 2)
  {
    v34 = *a2;
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    outlined copy of AppIntentExecutor?(v5, v4);
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSItemProvider, 0x1E696ACA0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v30 = [v7 initWithItemProviders_];

    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v32 = v5;
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v28 = v4;
    v13 = v3;
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    v17 = *(a1 + 96);
    v18 = swift_allocObject();
    v18[2] = v9;
    v18[3] = v10;
    v18[4] = v11;
    v18[5] = v12;
    v18[6] = v34;
    v18[7] = v13;
    v18[8] = v14;
    v18[9] = v15;
    v18[10] = v16;
    v18[11] = v17;
    v39 = partial apply for closure #1 in UIActivityItemsConfiguration.init(configuration:env:);
    v40 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = thunk for @escaping @callee_guaranteed (@guaranteed UIActivityItemsConfigurationMetadataKey) -> (@out Any?);
    v38 = &block_descriptor_48;
    v29 = _Block_copy(&aBlock);
    outlined copy of Text?(v9, v10, v11, v12);
    outlined copy of Text?(v14, v15, v16, v17);
    v33 = v9;
    outlined copy of Text?(v9, v10, v11, v12);
    v31 = v15;
    v19 = v15;
    v20 = v16;
    outlined copy of Text?(v14, v19, v16, v17);

    v21 = v30;

    [v21 setMetadataProvider_];

    _Block_release(v29);
    if (v32)
    {
      v22 = swift_allocObject();
      v22[2] = v32;
      v22[3] = v28;
      v22[4] = v34;
      v22[5] = v13;
      v39 = partial apply for closure #2 in UIActivityItemsConfiguration.init(configuration:env:);
      v40 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed UIActivityItemsConfigurationMetadataKey) -> (@out Any?);
      v38 = &block_descriptor_11;
      v23 = _Block_copy(&aBlock);
      outlined copy of AppIntentExecutor?(v32, v28);

      [v21 setPerItemMetadataProvider_];
      _Block_release(v23);
      v24 = swift_allocObject();
      *(v24 + 16) = v32;
      *(v24 + 24) = v28;
      v39 = partial apply for closure #3 in UIActivityItemsConfiguration.init(configuration:env:);
      v40 = v24;
      aBlock = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed UIActivityItemsConfigurationPreviewIntent, @unowned CGSize) -> (@owned NSItemProvider?);
      v38 = &block_descriptor_17_0;
      v25 = _Block_copy(&aBlock);

      [v21 setPreviewProvider_];
      outlined destroy of AnyShareConfiguration(a1);
      _Block_release(v25);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v32, v28);
      outlined consume of Text?(v14, v31, v20, v17);
      outlined consume of Text?(v33, v10, v11, v12);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v32, v28);
    }

    else
    {

      outlined destroy of AnyShareConfiguration(a1);
      outlined consume of Text?(v14, v31, v16, v17);
      outlined consume of Text?(v33, v10, v11, v12);
    }
  }

  else
  {
    v26 = *(a1 + 24);

    if (v6 == 1)
    {

      outlined copy of AppIntentExecutor?(v4, v26);

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4, v26);
    }

    outlined destroy of AnyShareConfiguration(a1);
    return 0;
  }

  return v21;
}

double closure #1 in UIActivityItemsConfiguration.init(configuration:env:)@<D0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12)
{
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {

    goto LABEL_14;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
LABEL_14:
    if (!a5)
    {
      goto LABEL_21;
    }

    v38 = a6;
    v39 = a7;
    v36 = 0;
    v37 = 0;
    MEMORY[0x18D009CB0](&v35, v21);
LABEL_16:
    v29 = Text.resolveString(in:with:idiom:)();
    *(a9 + 24) = MEMORY[0x1E69E6158];
    *a9 = v29;
    *(a9 + 8) = v31;
    return result;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {

    if (!a12)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0 || !a12)
    {
      goto LABEL_21;
    }
  }

  MEMORY[0x18D009DC0](&v38, v28);
  if ((Text.isStyled(options:)() & 1) == 0)
  {
    v38 = a6;
    v39 = a7;
    v36 = 0;
    v37 = 0;
    MEMORY[0x18D009CB0](&v35);
    goto LABEL_16;
  }

  v38 = a6;
  v39 = a7;
  v36 = 0;
  v37 = 0;
  v35 = 128;
  v32 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();
  if (v32)
  {
    v33 = v32;
    *(a9 + 24) = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    *a9 = v33;
    return result;
  }

LABEL_21:
  result = 0.0;
  *a9 = 0u;
  *(a9 + 16) = 0u;
  return result;
}

id thunk for @escaping @callee_guaranteed (@guaranteed UIActivityItemsConfigurationMetadataKey) -> (@out Any?)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t closure #2 in UIActivityItemsConfiguration.init(configuration:env:)@<X0>(void (*a2)(void *__return_ptr)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  a2(v25);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {

LABEL_17:
        outlined init with copy of Any?(&v26, a5);
        return outlined destroy of AnySharePreview(v25);
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = outlined destroy of AnySharePreview(v25);
      *a5 = 0u;
      *(a5 + 16) = 0u;
      return result;
    }
  }

  if (!v25[3])
  {
    goto LABEL_15;
  }

  v24[3] = a3;
  v24[4] = a4;
  v24[1] = 0;
  v24[2] = 0;
  MEMORY[0x18D009CB0](v24, v14);
  v21 = Text.resolveString(in:with:idiom:)();
  *(a5 + 24) = MEMORY[0x1E69E6158];
  *a5 = v21;
  *(a5 + 8) = v22;
  return outlined destroy of AnySharePreview(v25);
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed UIActivityItemsConfigurationMetadataKey) -> (@out Any?)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v15, a2, v6);

  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t closure #3 in UIActivityItemsConfiguration.init(configuration:env:)(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  (a3)(v19, a1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
    v10 = 6;
LABEL_8:

    goto LABEL_9;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    v10 = 6;
    goto LABEL_9;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {
    v10 = 4;
    goto LABEL_8;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v10 = 4;
LABEL_9:
  v11 = (v19[v10])(v9);
LABEL_10:
  outlined destroy of AnySharePreview(v19);
  return v11;
}

id thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed UIActivityItemsConfigurationPreviewIntent, @unowned CGSize) -> (@owned NSItemProvider?)(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v9 = *(a1 + 32);

  v10 = a3;
  v11 = v9(a2, v10, a4, a5);

  return v11;
}

char *AnyShareConfiguration.resolveActivityItems(in:)(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  if (*(v1 + 32))
  {
    return v2;
  }

  v4 = *a1;
  v3 = a1[1];
  v5 = *v1;
  if (*(v1 + 64))
  {
    v35 = *(v1 + 16);
    v36 = *(v1 + 8);
    v34 = *(v1 + 24);
    *&v40 = *a1;
    *(&v40 + 1) = v3;
    v38 = 0;
    v39 = 0;

    MEMORY[0x18D009CB0](v42, v6);
    v7 = Text.resolveString(in:with:idiom:)();
    v9 = v8;
    v10 = *(v5 + 16);
    if (v10)
    {
      v11 = v7;
      v32 = v4;
      v33 = v1;
      v42[0] = v2;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
      v2 = v42[0];
      v31 = v5;
      v12 = v5 + 32;
      do
      {
        outlined init with copy of Any(v12, &v38);
        outlined init with copy of Any(&v38, &v40);
        v13 = type metadata accessor for ActivitySubjectProvider();
        v14 = objc_allocWithZone(v13);
        outlined init with copy of Any(&v40, &v14[OBJC_IVAR____TtC7SwiftUIP33_91555EE1A45CC99D949E9B39601C01F623ActivitySubjectProvider_item]);
        v15 = &v14[OBJC_IVAR____TtC7SwiftUIP33_91555EE1A45CC99D949E9B39601C01F623ActivitySubjectProvider_subject];
        *v15 = v11;
        v15[1] = v9;
        v37.receiver = v14;
        v37.super_class = v13;

        v16 = objc_msgSendSuper2(&v37, sel_init);
        __swift_destroy_boxed_opaque_existential_1(&v40);
        v41 = v13;
        *&v40 = v16;
        __swift_destroy_boxed_opaque_existential_1(&v38);
        v42[0] = v2;
        v18 = *(v2 + 2);
        v17 = *(v2 + 3);
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v2 = v42[0];
        }

        *(v2 + 2) = v18 + 1;
        outlined init with take of Any(&v40, &v2[32 * v18 + 32]);
        v12 += 32;
        --v10;
      }

      while (v10);

      outlined consume of AnyShareConfiguration.Storage(v31, v36, v35, v34, 0);
      v1 = v33;
      v4 = v32;
      if (!*(v33 + 96))
      {
        return v2;
      }
    }

    else
    {

      outlined consume of AnyShareConfiguration.Storage(v5, v36, v35, v34, 0);
      if (!*(v1 + 96))
      {
        return v2;
      }
    }
  }

  else
  {

    v2 = v5;
    if (!*(v1 + 96))
    {
      return v2;
    }
  }

  v19 = *(v1 + 72);
  v20 = *(v1 + 80);
  v21 = *(v1 + 88);
  outlined copy of Text.Storage(v19, v20, v21 & 1);

  MEMORY[0x18D009DC0](&v40, v22);
  v23 = Text.isStyled(options:)();
  if (v23)
  {
    *&v40 = v4;
    *(&v40 + 1) = v3;
    v38 = 0;
    v39 = 0;
    v42[0] = 128;
    v24 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();
    if (!v24)
    {
      outlined consume of Text.Storage(v19, v20, v21 & 1);

      return v2;
    }

    v25 = v24;
    v26 = 0;
    v41 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSAttributedString, 0x1E696AAB0);
    *&v40 = v25;
  }

  else
  {
    *&v40 = v4;
    *(&v40 + 1) = v3;
    v38 = 0;
    v39 = 0;
    MEMORY[0x18D009CB0](v42);
    v25 = Text.resolveString(in:with:idiom:)();
    v26 = v27;
    v41 = MEMORY[0x1E69E6158];
    *&v40 = v25;
    *(&v40 + 1) = v27;
  }

  outlined copy of Text.ResolvedMessage(v25, v26, v23 & 1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = *(v2 + 2);
  v28 = *(v2 + 3);
  if (v29 >= v28 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v2);
  }

  outlined consume of Text.Storage(v19, v20, v21 & 1);

  outlined consume of AccessibilityText.Storage(v25, v26, v23 & 1);
  *(v2 + 2) = v29 + 1;
  outlined init with take of Any(&v40, &v2[32 * v29 + 32]);
  return v2;
}

id ActivitySubjectProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySubjectProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double outlined copy of Text.ResolvedMessage(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t HiddenLabeledContentStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = partial apply for closure #1 in View.accessibilityLabel<A>(_:label:);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier>, type metadata accessor for ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, lazy protocol witness table accessor for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>, &protocol witness table for AccessibilityClearLabeledContentModifier);
    v5[1] = &protocol witness table for ScrollEdgeEffectTagModifier;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>, AccessibilityClearLabeledContentModifier>, ScrollEdgeEffectTagModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>)
  {
    type metadata accessor for AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>();
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>);
    }
  }
}

void type metadata accessor for AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>()
{
  if (!lazy cache variable for type metadata for AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E73E0];
    v4[1] = &type metadata for LabeledContentStyleConfiguration.Label;
    v4[2] = MEMORY[0x1E6982070];
    v4[3] = &protocol witness table for LabeledContentStyleConfiguration.Label;
    v2 = type metadata accessor for AccessibilityProxyTransformModifier(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>>(255);
    v4[0] = &protocol witness table for LabeledContentStyleConfiguration.Content;
    v4[1] = &protocol witness table for AccessibilityProxyTransformModifier<A, B>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v3, v4);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContentStyleConfiguration.Content, AccessibilityProxyTransformModifier<Never, LabeledContentStyleConfiguration.Label>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t InspectorSplitView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v33 = *(a1 + 24);
  v37 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _InspectorSplitViewRoot(0, v6, *(v10 + 32), v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for _VariadicView.Tree();
  v35 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v32 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v34 = &v31 - v18;
  v19 = v2[1];
  v43[0] = *v2;
  v43[1] = v19;
  v21 = *v2;
  v20 = v2[1];
  v44[0] = v2[2];
  *(v44 + 9) = *(v2 + 41);
  v40 = v21;
  v41 = v20;
  v42[0] = v2[2];
  *(v42 + 9) = *(v2 + 41);
  v22 = *(v2 + *(a1 + 60));
  v23 = *(v2 + *(a1 + 64));
  (*(v7 + 16))(v9, v2 + *(a1 + 52), v6);
  v24 = v42[0];
  *(v14 + 1) = v41;
  *(v14 + 2) = v24;
  *(v14 + 41) = *(v42 + 9);
  *v14 = v40;
  v14[57] = v22;
  v14[58] = v23;
  (*(v7 + 32))(&v14[*(v12 + 44)], v9, v6);
  (*(v37 + 16))(v36, v2 + *(a1 + 56), v33);
  outlined init with copy of InspectorState(v43, &v40);
  v25 = v32;
  _VariadicView.Tree.init(root:content:)();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for _InspectorSplitViewRoot<A>, v12);
  v27 = *(a1 + 40);
  v39[0] = WitnessTable;
  v39[1] = v27;
  swift_getWitnessTable(MEMORY[0x1E697E308], v15, v39);
  v28 = v34;
  static ViewBuilder.buildExpression<A>(_:)();
  v29 = *(v35 + 8);
  v29(v25, v15);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v29)(v28, v15);
}

__n128 InspectorSplitView.init(inspectorState:mainContent:inspectorContent:horizontalSizeClass:inspectorHasToolbarItems:presentationOptions:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *a4;
  v19 = a1[1];
  *a9 = *a1;
  a9[1] = v19;
  a9[2] = a1[2];
  *(a9 + 41) = *(a1 + 41);
  v26[0] = a7;
  v26[1] = a8;
  v26[2] = a10;
  v26[3] = a11;
  v20 = type metadata accessor for InspectorSplitView(0, v26);
  (*(*(a7 - 8) + 32))(a9 + v20[13], a2, a7);
  (*(*(a8 - 8) + 32))(a9 + v20[14], a3, a8);
  *(a9 + v20[15]) = v18;
  *(a9 + v20[16]) = a5;
  v21 = a9 + v20[17];
  v22 = *(a6 + 112);
  *(v21 + 6) = *(a6 + 96);
  *(v21 + 7) = v22;
  *(v21 + 122) = *(a6 + 122);
  v23 = *(a6 + 48);
  *(v21 + 2) = *(a6 + 32);
  *(v21 + 3) = v23;
  v24 = *(a6 + 80);
  *(v21 + 4) = *(a6 + 64);
  *(v21 + 5) = v24;
  result = *(a6 + 16);
  *v21 = *a6;
  *(v21 + 1) = result;
  return result;
}

uint64_t type metadata completion function for InspectorSplitView(uint64_t a1)
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

uint64_t initializeBufferWithCopyOfBuffer for InspectorSplitView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  if ((v10 | v7) > 7 || ((*(v9 + 80) | *(v6 + 80)) & 0x100000) != 0 || ((*(*(v5 - 8) + 64) + ((v8 + v10 + ((v7 + 57) & ~v7)) & ~v10) + 9) & 0xFFFFFFFFFFFFFFF8) + 138 > 0x18)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = v14 + (((v10 | v7) & 0xF8 ^ 0x1F8) & ((v10 | v7) + 16));

    return a1;
  }

  v36 = v4;
  v37 = ~v10;
  v38 = v5;
  v15 = *a2;
  v16 = *(a2 + 8);
  v17 = *(a2 + 17);
  v18 = *(a2 + 16);
  v39 = *(*(v5 - 8) + 64);
  outlined copy of StateOrBinding<Bool>(*a2, v16, v18, v17);
  *a1 = v15;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18;
  *(a1 + 17) = v17;
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v20 = (a2 + v7 + 57) & ~v7;
  (*(v6 + 16))((a1 + v7 + 57) & ~v7, v20, v36);
  v21 = (((a1 + v7 + 57) & ~v7) + v11) & v37;
  v22 = (v20 + v11) & v37;
  (*(v9 + 16))(v21, v22, v38);
  v23 = (v21 + v39);
  *v23 = *(v22 + v39);
  v23[1] = *(v22 + v39 + 1);
  v24 = (v21 + v39 + 9) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v22 + v39 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v24 = *v25;
  v26 = *(v25 + 16);

  if (v26)
  {
    *(v24 + 8) = *(v25 + 8);
    *(v24 + 16) = *(v25 + 16);
    *(v24 + 24) = *(v25 + 24);
  }

  else
  {
    v27 = *(v25 + 24);
    *(v24 + 8) = *(v25 + 8);
    *(v24 + 24) = v27;
  }

  *(v24 + 40) = *(v25 + 40);
  *(v24 + 41) = *(v25 + 41);
  v28 = *(v25 + 48);
  if (v28 < 2)
  {
    goto LABEL_17;
  }

  if (v28 == 2)
  {
    v28 = 2;
LABEL_17:
    *(v24 + 48) = v28;
    goto LABEL_18;
  }

  *(v24 + 48) = v28;
  v29 = v28;
LABEL_18:
  *(v24 + 56) = *(v25 + 56);
  *(v24 + 57) = *(v25 + 57);
  *(v24 + 58) = *(v25 + 58);
  v30 = *(v25 + 64);
  *(v24 + 72) = *(v25 + 72);
  *(v24 + 64) = v30;
  v31 = *(v25 + 80);
  *(v24 + 88) = *(v25 + 88);
  *(v24 + 80) = v31;
  v32 = *(v25 + 120);
  if (v32)
  {
    *(v24 + 120) = v32;
    *(v24 + 128) = *(v25 + 128);
    (**(v32 - 8))(v24 + 96, v25 + 96);
  }

  else
  {
    v33 = *(v25 + 96);
    v34 = *(v25 + 112);
    *(v24 + 128) = *(v25 + 128);
    *(v24 + 96) = v33;
    *(v24 + 112) = v34;
  }

  *(v24 + 136) = *(v25 + 136);
  *(v24 + 137) = *(v25 + 137);
  return a1;
}

void destroy for InspectorSplitView(uint64_t a1, uint64_t a2)
{
  v4 = outlined consume of StateOrBinding<Bool>(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 17));
  v5 = *(*(a2 + 16) - 8);
  v6 = v5 + 8;
  v7 = (a1 + *(v5 + 80) + 57) & ~*(v5 + 80);
  (*(v5 + 8))(v7, v4);
  v8 = *(v6 + 56);
  v9 = *(*(a2 + 24) - 8);
  v10 = v9 + 8;
  v11 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  (*(v9 + 8))(v11);
  v12 = ((*(v10 + 56) + v11 + 9) & 0xFFFFFFFFFFFFFFF8);

  if (v12[2])
  {
  }

  v13 = v12[6];
  if (v13 >= 3)
  {
  }

  if (v12[15])
  {

    __swift_destroy_boxed_opaque_existential_1(v12 + 12);
  }
}

uint64_t initializeWithCopy for InspectorSplitView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of StateOrBinding<Bool>(*a2, v7, v9, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = (v12 + 57 + a1) & ~v12;
  v14 = (v12 + 57 + a2) & ~v12;
  (*(v10 + 16))(v13, v14);
  v15 = *(v11 + 48);
  v16 = *(*(a3 + 24) - 8);
  v17 = v16 + 16;
  v18 = *(v16 + 80);
  v19 = v15 + v18;
  v20 = (v19 + v13) & ~v18;
  v21 = (v19 + v14) & ~v18;
  (*(v16 + 16))(v20, v21);
  v22 = *(v17 + 48);
  v23 = (v22 + v20);
  v24 = (v22 + v21);
  *v23 = *v24;
  v23[1] = v24[1];
  v25 = (v23 + 9) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v24 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v25 = *v26;
  v27 = *(v26 + 16);

  if (v27)
  {
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 16) = *(v26 + 16);
    *(v25 + 24) = *(v26 + 24);
  }

  else
  {
    v28 = *(v26 + 24);
    *(v25 + 8) = *(v26 + 8);
    *(v25 + 24) = v28;
  }

  *(v25 + 40) = *(v26 + 40);
  *(v25 + 41) = *(v26 + 41);
  v29 = *(v26 + 48);
  if (v29 >= 2)
  {
    if (v29 != 2)
    {
      *(v25 + 48) = v29;
      v30 = v29;
      goto LABEL_9;
    }

    v29 = 2;
  }

  *(v25 + 48) = v29;
LABEL_9:
  *(v25 + 56) = *(v26 + 56);
  *(v25 + 57) = *(v26 + 57);
  *(v25 + 58) = *(v26 + 58);
  v31 = *(v26 + 64);
  *(v25 + 72) = *(v26 + 72);
  *(v25 + 64) = v31;
  v32 = *(v26 + 80);
  *(v25 + 88) = *(v26 + 88);
  *(v25 + 80) = v32;
  v33 = *(v26 + 120);
  if (v33)
  {
    *(v25 + 120) = v33;
    *(v25 + 128) = *(v26 + 128);
    (**(v33 - 8))(v25 + 96, v26 + 96);
  }

  else
  {
    v34 = *(v26 + 96);
    v35 = *(v26 + 112);
    *(v25 + 128) = *(v26 + 128);
    *(v25 + 96) = v34;
    *(v25 + 112) = v35;
  }

  *(v25 + 136) = *(v26 + 136);
  *(v25 + 137) = *(v26 + 137);
  return a1;
}

uint64_t assignWithCopy for InspectorSplitView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of StateOrBinding<Bool>(*a2, v7, v9, v8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 17);
  *a1 = v6;
  *(a1 + 8) = v7;
  v13 = *(a1 + 16);
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  outlined consume of StateOrBinding<Bool>(v10, v11, v13, v12);
  *(a1 + 18) = *(a2 + 18);
  v14 = *(a2 + 24);
  v15 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v15;
  *(a1 + 24) = v14;
  v16 = *(*(a3 + 16) - 8);
  v17 = v16 + 24;
  v18 = *(v16 + 80);
  v19 = (v18 + 57 + a1) & ~v18;
  v20 = (v18 + 57 + a2) & ~v18;
  (*(v16 + 24))(v19, v20);
  v21 = *(v17 + 40);
  v22 = *(*(a3 + 24) - 8);
  v23 = v22 + 24;
  v24 = *(v22 + 80);
  v25 = v21 + v24;
  v26 = (v25 + v19) & ~v24;
  v27 = (v25 + v20) & ~v24;
  (*(v22 + 24))(v26, v27);
  v28 = *(v23 + 40);
  v29 = (v28 + v26);
  v30 = (v28 + v27);
  *v29 = *v30;
  v29[1] = v30[1];
  v31 = (v29 + 9) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v30 + 9) & 0xFFFFFFFFFFFFFFF8;
  *v31 = *v32;

  v33 = *(v32 + 16);
  if (*(v31 + 16))
  {
    if (v33)
    {
      *(v31 + 8) = *(v32 + 8);

      *(v31 + 16) = *(v32 + 16);

      *(v31 + 24) = *(v32 + 24);
    }

    else
    {
      outlined destroy of Binding<PresentationDetent>(v31 + 8);
      v34 = *(v32 + 24);
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 24) = v34;
    }
  }

  else if (v33)
  {
    *(v31 + 8) = *(v32 + 8);
    *(v31 + 16) = *(v32 + 16);
    *(v31 + 24) = *(v32 + 24);
  }

  else
  {
    v35 = *(v32 + 8);
    *(v31 + 24) = *(v32 + 24);
    *(v31 + 8) = v35;
  }

  v36 = (v31 + 48);
  v37 = *(v31 + 48);
  *(v31 + 40) = *(v32 + 40);
  *(v31 + 41) = *(v32 + 41);
  v38 = *(v32 + 48);
  if (v37 == 2)
  {
    if (v38 < 2)
    {
LABEL_15:
      *v36 = v38;
      goto LABEL_16;
    }

    if (v38 == 2)
    {
      v38 = 2;
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  if (v38 == 2)
  {
    outlined destroy of PresentationDimmingBehavior(v31 + 48);
LABEL_14:
    v38 = *(v32 + 48);
    goto LABEL_15;
  }

  if (v37 < 2)
  {
    if (v38 < 2)
    {
      goto LABEL_15;
    }

LABEL_23:
    *v36 = v38;
    v43 = v38;
    goto LABEL_16;
  }

  if (v38 < 2)
  {
    outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(v31 + 48, type metadata accessor for UISheetPresentationControllerDetentIdentifier);
    goto LABEL_14;
  }

  *v36 = v38;
  v47 = v38;

LABEL_16:
  *(v31 + 56) = *(v32 + 56);
  *(v31 + 57) = *(v32 + 57);
  *(v31 + 58) = *(v32 + 58);
  v39 = *(v32 + 64);
  *(v31 + 72) = *(v32 + 72);
  *(v31 + 64) = v39;
  v40 = *(v32 + 80);
  *(v31 + 88) = *(v32 + 88);
  *(v31 + 80) = v40;
  v41 = *(v32 + 120);
  if (!*(v31 + 120))
  {
    if (v41)
    {
      *(v31 + 120) = v41;
      *(v31 + 128) = *(v32 + 128);
      (**(v41 - 8))(v31 + 96, v32 + 96);
      goto LABEL_26;
    }

LABEL_25:
    v44 = *(v32 + 96);
    v45 = *(v32 + 112);
    *(v31 + 128) = *(v32 + 128);
    *(v31 + 96) = v44;
    *(v31 + 112) = v45;
    goto LABEL_26;
  }

  v42 = (v31 + 96);
  if (!v41)
  {
    __swift_destroy_boxed_opaque_existential_1(v42);
    goto LABEL_25;
  }

  __swift_assign_boxed_opaque_existential_1(v42, (v32 + 96));
LABEL_26:
  *(v31 + 136) = *(v32 + 136);
  *(v31 + 137) = *(v32 + 137);
  return a1;
}

uint64_t outlined destroy of Binding<PresentationDetent>(uint64_t a1)
{
  type metadata accessor for Binding<PresentationDetent>(0, &lazy cache variable for type metadata for Binding<PresentationDetent>, &type metadata for PresentationDetent, MEMORY[0x1E6981948]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *initializeWithTake for InspectorSplitView(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  a1[2] = a2[2];
  *(a1 + 41) = *(a2 + 41);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 32;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 57) & ~v8;
  v10 = (a2 + v8 + 57) & ~v8;
  (*(v6 + 32))(v9, v10);
  v11 = *(v7 + 32);
  v12 = *(*(a3 + 24) - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = v11 + v14;
  v16 = (v15 + v9) & ~v14;
  v17 = (v15 + v10) & ~v14;
  (*(v12 + 32))(v16, v17);
  v18 = *(v13 + 32);
  v19 = (v18 + v16);
  v20 = (v18 + v17);
  *v19 = *v20;
  v19[1] = v20[1];
  v21 = ((v19 + 9) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v20 + 9) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *v22;
  v23 = v22[4];
  v25 = v22[1];
  v24 = v22[2];
  v21[3] = v22[3];
  v21[4] = v23;
  v21[1] = v25;
  v21[2] = v24;
  v26 = *(v22 + 122);
  v28 = v22[6];
  v27 = v22[7];
  v21[5] = v22[5];
  v21[6] = v28;
  v21[7] = v27;
  *(v21 + 122) = v26;
  return a1;
}

uint64_t assignWithTake for InspectorSplitView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 17);
  *a1 = *a2;
  v11 = *(a1 + 16);
  *(a1 + 16) = v6;
  *(a1 + 17) = v7;
  outlined consume of StateOrBinding<Bool>(v8, v9, v11, v10);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 40;
  v14 = *(v12 + 80);
  v15 = (v14 + 57 + a1) & ~v14;
  v16 = (v14 + 57 + a2) & ~v14;
  (*(v12 + 40))(v15, v16);
  v17 = *(v13 + 24);
  v18 = *(*(a3 + 24) - 8);
  v19 = v18 + 40;
  v20 = *(v18 + 80);
  v21 = v17 + v20;
  v22 = (v21 + v15) & ~v20;
  v23 = (v21 + v16) & ~v20;
  (*(v18 + 40))(v22, v23);
  v24 = *(v19 + 24);
  v25 = (v24 + v22);
  v26 = (v24 + v23);
  *v25 = *v26;
  v25[1] = v26[1];
  v27 = (v25 + 9) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v26 + 9) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 8);
  *v27 = *v28;

  if (*(v27 + 16))
  {
    if (*(v28 + 16))
    {
      *(v27 + 8) = *(v28 + 8);

      *(v27 + 16) = *(v28 + 16);

      v30 = *(v28 + 24);
    }

    else
    {
      outlined destroy of Binding<PresentationDetent>(v27 + 8);
      v30 = *(v28 + 24);
      *(v27 + 8) = *v29;
    }

    *(v27 + 24) = v30;
  }

  else
  {
    v31 = *v29;
    *(v27 + 24) = *(v28 + 24);
    *(v27 + 8) = v31;
  }

  v33 = (v27 + 48);
  v32 = *(v27 + 48);
  *(v27 + 40) = *(v28 + 40);
  *(v27 + 41) = *(v28 + 41);
  v34 = *(v28 + 48);
  if (v32 == 2)
  {
    if (v34 == 2)
    {
      v35 = 2;
LABEL_13:
      *v33 = v35;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v34 == 2)
  {
    outlined destroy of PresentationDimmingBehavior(v27 + 48);
LABEL_12:
    v35 = *(v28 + 48);
    goto LABEL_13;
  }

  if (v32 < 2)
  {
LABEL_15:
    *v33 = v34;
    goto LABEL_16;
  }

  if (v34 < 2)
  {
    outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(v27 + 48, type metadata accessor for UISheetPresentationControllerDetentIdentifier);
    goto LABEL_12;
  }

  *v33 = v34;

LABEL_16:
  *(v27 + 56) = *(v28 + 56);
  *(v27 + 57) = *(v28 + 57);
  *(v27 + 58) = *(v28 + 58);
  v36 = *(v28 + 64);
  *(v27 + 72) = *(v28 + 72);
  *(v27 + 64) = v36;
  v37 = *(v28 + 80);
  *(v27 + 88) = *(v28 + 88);
  *(v27 + 80) = v37;
  if (*(v27 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1((v27 + 96));
  }

  v38 = *(v28 + 96);
  v39 = *(v28 + 112);
  *(v27 + 128) = *(v28 + 128);
  *(v27 + 96) = v38;
  *(v27 + 112) = v39;
  *(v27 + 136) = *(v28 + 136);
  *(v27 + 137) = *(v28 + 137);
  return a1;
}

uint64_t getEnumTagSinglePayload for InspectorSplitView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + 9;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((v13 + ((v10 + v11 + ((v9 + 57) & ~v9)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 138;
  v15 = (a2 - v12 + 0xFFFF) >> 16;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v14), !*(a1 + v14)))
  {
LABEL_30:
    v23 = (a1 + v9 + 57) & ~v9;
    if (v5 == v12)
    {
      return (*(v4 + 48))(v23);
    }

    v24 = (v23 + v10 + v11) & ~v11;
    if (v8 == v12)
    {
      return (*(v7 + 48))(v24, v8, v6);
    }

    v25 = *((v13 + v24) & 0xFFFFFFFFFFFFFFF8);
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }

  v21 = (v19 - 1) << (8 * (((v13 + ((v10 + v11 + ((v9 + 57) & ~v9)) & ~v11)) & 0xF8) - 118));
  if (v14 <= 3)
  {
    v22 = *a1;
  }

  else
  {
    v21 = 0;
    v22 = *a1;
  }

  return v12 + (v22 | v21) + 1;
}

void storeEnumTagSinglePayload for InspectorSplitView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  if (v7 <= v10)
  {
    v14 = *(v9 + 84);
  }

  else
  {
    v14 = *(v6 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(*(v8 - 8) + 64) + 9;
  v16 = ((v15 + ((v12 + v13 + ((v11 + 57) & ~v11)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 138;
  if (v14 >= a3)
  {
    v20 = 0;
    if (v14 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v17 = (a3 - v14 + 0xFFFF) >> 16;
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

    if (v14 >= a2)
    {
LABEL_19:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *&a1[v16] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v16] = 0;
      }

      else if (v20)
      {
        a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      v23 = &a1[v11 + 57] & ~v11;
      if (v7 == v14)
      {
        v24 = *(v6 + 56);

        v24(v23);
      }

      else
      {
        v25 = (v23 + v12 + v13) & ~v13;
        if (v10 == v14)
        {
          v26 = *(v9 + 56);

          v26(v25);
        }

        else
        {
          v27 = (v15 + v25) & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            *(v27 + 120) = 0u;
            v28 = a2 & 0x7FFFFFFF;
            *(v27 + 104) = 0u;
            *(v27 + 88) = 0u;
            *(v27 + 72) = 0u;
            *(v27 + 56) = 0u;
            *(v27 + 40) = 0u;
            *(v27 + 24) = 0u;
            *(v27 + 8) = 0u;
            *(v27 + 136) = 0;
          }

          else
          {
            v28 = a2 - 1;
          }

          *v27 = v28;
        }
      }

      return;
    }
  }

  v21 = ~v14 + a2;
  bzero(a1, ((v15 + ((v12 + v13 + ((v11 + 57) & ~v11)) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 138);
  if (v16 <= 3)
  {
    v22 = HIWORD(v21) + 1;
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
LABEL_29:
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
      goto LABEL_29;
    }
  }

  if (v20)
  {
    a1[v16] = v22;
  }
}

uint64_t type metadata completion function for _InspectorSplitViewRoot(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for _InspectorSplitViewRoot(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-60 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 17);
    v13 = *(a2 + 16);
    outlined copy of StateOrBinding<Bool>(*a2, v11, v13, v12);
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v13;
    *(a1 + 17) = v12;
    *(a1 + 18) = *(a2 + 18);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 57) = *(a2 + 57);
    *(a1 + 58) = *(a2 + 58);
    (*(v5 + 16))((a1 + v6 + 59) & ~v6, (a2 + v6 + 59) & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  return a1;
}

uint64_t destroy for _InspectorSplitViewRoot(uint64_t a1, uint64_t a2)
{
  v4.n128_f64[0] = outlined consume of StateOrBinding<Bool>(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 17));
  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (a1 + *(v5 + 80) + 59) & ~*(v5 + 80);

  return v6(v7, v4);
}

uint64_t initializeWithCopy for _InspectorSplitViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of StateOrBinding<Bool>(*a2, v7, v9, v8);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  v10 = *(*(a3 + 16) - 8);
  (*(v10 + 16))((*(v10 + 80) + 59 + a1) & ~*(v10 + 80), (*(v10 + 80) + 59 + a2) & ~*(v10 + 80));
  return a1;
}

uint64_t assignWithCopy for _InspectorSplitViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 17);
  v9 = *(a2 + 16);
  outlined copy of StateOrBinding<Bool>(*a2, v7, v9, v8);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 17);
  *a1 = v6;
  *(a1 + 8) = v7;
  v13 = *(a1 + 16);
  *(a1 + 16) = v9;
  *(a1 + 17) = v8;
  outlined consume of StateOrBinding<Bool>(v10, v11, v13, v12);
  *(a1 + 18) = *(a2 + 18);
  v14 = *(a2 + 24);
  v15 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v15;
  *(a1 + 24) = v14;
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  v16 = *(*(a3 + 16) - 8);
  (*(v16 + 24))((*(v16 + 80) + 59 + a1) & ~*(v16 + 80), (*(v16 + 80) + 59 + a2) & ~*(v16 + 80));
  return a1;
}

uint64_t initializeWithTake for _InspectorSplitViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 32))((*(v5 + 80) + 59 + a1) & ~*(v5 + 80), (*(v5 + 80) + 59 + a2) & ~*(v5 + 80));
  return a1;
}

uint64_t assignWithTake for _InspectorSplitViewRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 17);
  *a1 = *a2;
  v11 = *(a1 + 16);
  *(a1 + 16) = v6;
  *(a1 + 17) = v7;
  outlined consume of StateOrBinding<Bool>(v8, v9, v11, v10);
  *(a1 + 18) = *(a2 + 18);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 40))((*(v12 + 80) + 59 + a1) & ~*(v12 + 80), (*(v12 + 80) + 59 + a2) & ~*(v12 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _InspectorSplitViewRoot(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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

  v9 = ((v6 + 59) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
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
      if (v5 > 0x7FFFFFFE)
      {
        return (*(v4 + 48))((a1 + v6 + 59) & ~v6);
      }

      v15 = *(a1 + 4) >> 1;
      v16 = -2 - v15;
      if (-2 - v15 < 0)
      {
        v16 = -1;
      }

      if (v15 > 0x80000000)
      {
        return (v16 + 1);
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

void storeEnumTagSinglePayload for _InspectorSplitViewRoot(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 59) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0x7FFFFFFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 59] & ~v9;

    v19(v20);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[56] = 0;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = 0;
    *(a1 + 4) = 2 * ~a2;
    *(a1 + 5) = 0;
    *(a1 + 6) = 0;
    a1[56] = 0;
  }
}

uint64_t instantiation function for generic protocol witness table for _InspectorSplitViewRoot<A>(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for _InspectorSplitViewRoot<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t _InspectorSplitViewRoot.presented.getter()
{
  if (*(v0 + 18) != 1)
  {
    return 0;
  }

  if (*(v0 + 17))
  {
    type metadata accessor for Binding<PresentationDetent>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v2);
  }

  else
  {
    type metadata accessor for Binding<PresentationDetent>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
  }

  return v2;
}

uint64_t _InspectorSplitViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v22[-2] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2, v9);
  outlined init with copy of _VariadicView_Children(a1, v23);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v21 = *(a2 + 16);
  *(v11 + 16) = v21;
  (*(v7 + 32))(v11 + v10, &v22[-2] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = v23[1];
  *v12 = v23[0];
  v12[1] = v13;
  v14 = v23[3];
  v12[2] = v23[2];
  v12[3] = v14;
  type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _LayoutRoot<InspectorSplitViewLayout>, lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout, &unk_1EFFD9AA0, MEMORY[0x1E697DDC0]);
  type metadata accessor for _AnimationModifier<Bool>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _OverlayModifier<InspectorDimmingView>, lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView, &type metadata for InspectorDimmingView, MEMORY[0x1E697EC08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(255);
  swift_getTupleTypeMetadata2();
  v15 = type metadata accessor for TupleView();
  lazy protocol witness table accessor for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>();
  v16 = type metadata accessor for _VariadicView.Tree();
  v17 = lazy protocol witness table accessor for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981F48], v15);
  v22[0] = v17;
  v22[1] = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E697E308], v16, v22);
  result = GeometryReader.init(content:)();
  *a3 = result;
  a3[1] = v20;
  return result;
}

uint64_t closure #1 in _InspectorSplitViewRoot.body(children:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a5;
  v46 = a3;
  v47 = a6;
  type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _LayoutRoot<InspectorSplitViewLayout>, lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout, &unk_1EFFD9AA0, MEMORY[0x1E697DDC0]);
  type metadata accessor for _AnimationModifier<Bool>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
  v42 = a4;
  type metadata accessor for ModifiedContent();
  type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _OverlayModifier<InspectorDimmingView>, lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView, &type metadata for InspectorDimmingView, MEMORY[0x1E697EC08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(255);
  swift_getTupleTypeMetadata2();
  v44 = type metadata accessor for TupleView();
  lazy protocol witness table accessor for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>();
  v10 = type metadata accessor for _VariadicView.Tree();
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v16 = a1[1];
  v59 = *a1;
  v60 = v16;
  v61 = a1[2];
  v62 = *(a1 + 12);
  type metadata accessor for _InspectorSplitViewRoot(0, a4, a5, v17);
  v18 = _InspectorSplitViewRoot.presented.getter();
  v19 = *(a2 + 18);
  v20 = *(a2 + 57);
  v21 = (a2 + 24);
  v22 = *(a2 + 56);
  v23 = *(a2 + 32) >> 1;
  if ((v22 & 0x80u) != 0)
  {
    v21 = (a2 + 40);
  }

  v24 = *v21;
  v55 = v59;
  v56 = v60;
  v57 = v61;
  v58 = v62;
  GeometryProxy.safeAreaInsets.getter();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  if (v22 < 2 && v23 == 0xFFFFFFFFLL)
  {
    v34 = 320.5;
  }

  else
  {
    v34 = v24 + 0.5;
  }

  v35 = swift_allocObject();
  *(v35 + 32) = v18 & 1;
  v36 = v42;
  v37 = v43;
  *(v35 + 16) = v42;
  *(v35 + 24) = v37;
  *(v35 + 33) = v19;
  *(v35 + 34) = v20;
  *(v35 + 40) = v34;
  *(v35 + 48) = v26;
  *(v35 + 56) = v28;
  *(v35 + 64) = v30;
  *(v35 + 72) = v32;
  v49 = v36;
  v50 = v37;
  v51 = a2;
  v52 = &v59;
  v53 = v46;
  implicit closure #2 in implicit closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:)(partial apply for closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:), v48, (v35 + 32), v12);

  v38 = lazy protocol witness table accessor for type _LayoutRoot<InspectorSplitViewLayout> and conformance _LayoutRoot<A>();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981F48], v44);
  v54[0] = v38;
  v54[1] = WitnessTable;
  swift_getWitnessTable(MEMORY[0x1E697E308], v10, v54);
  static ViewBuilder.buildExpression<A>(_:)();
  v40 = *(v45 + 8);
  v40(v12, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v40)(v15, v10);
}

uint64_t implicit closure #2 in implicit closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  type metadata accessor for _AnimationModifier<Bool>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _OverlayModifier<InspectorDimmingView>, lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView, &type metadata for InspectorDimmingView, MEMORY[0x1E697EC08]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(255);
  swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for TupleView();
  v8 = lazy protocol witness table accessor for type InspectorSplitViewLayout and conformance InspectorSplitViewLayout();
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6981F48], v7, v11, v12, v13);
  return Layout.callAsFunction<A>(_:)(a1, a2, &unk_1EFFD9AA0, v7, v8, WitnessTable, a4);
}

uint64_t closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a3;
  v69 = a6;
  type metadata accessor for _AnimationModifier<Bool>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
  v10 = type metadata accessor for ModifiedContent();
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56[-v11];
  type metadata accessor for _LayoutRoot<InspectorSplitViewLayout>(255, &lazy cache variable for type metadata for _OverlayModifier<InspectorDimmingView>, lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView, &type metadata for InspectorDimmingView, MEMORY[0x1E697EC08]);
  v62 = v10;
  v13 = type metadata accessor for ModifiedContent();
  v70 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v63 = &v56[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v56[-v18];
  v20 = a2[1];
  v80 = *a2;
  v81 = v20;
  v82 = a2[2];
  LODWORD(v83) = *(a2 + 12);
  GeometryProxy.size.getter();
  v22 = v21;
  v24 = v23;
  v25 = a5;
  v27 = type metadata accessor for _InspectorSplitViewRoot(0, a4, a5, v26);
  v28 = *(a1 + 18);
  v68 = v13;
  v66 = v19;
  if (v28 == 1)
  {
    if (*(a1 + 57) == 1)
    {
      if (v24 >= v22)
      {
        v29 = 1194.0;
      }

      else
      {
        v29 = 1024.0;
      }

      if (v22 >= v29)
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }
    }

    else
    {
      v30 = 3;
    }
  }

  else
  {
    v30 = 0;
  }

  Spring.init(mass:stiffness:damping:allowOverDamping:)();
  v76 = v80;
  *&v77[0] = v81;
  MEMORY[0x18D00B690](&v76, 0.1);
  v58 = v27;
  LOBYTE(v80) = _InspectorSplitViewRoot.presented.getter() & 1;
  View.animation<A>(_:value:)();

  v31 = *a1;
  v32 = a1[1];
  v33 = *(a1 + 17);
  v64 = v12;
  v61 = a1;
  if (v33)
  {
    v34 = *(a1 + 16);
  }

  else
  {
    LOBYTE(v76) = v31 & 1;
    *(&v76 + 1) = v32;
    type metadata accessor for Binding<PresentationDetent>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    v35 = State.projectedValue.getter();
    v32 = *(&v80 + 1);
    v31 = v80;
    v34 = v81;
  }

  v60 = v56;
  MEMORY[0x1EEE9AC00](v35);
  v57 = v30;
  v56[-32] = v30;
  *&v56[-24] = v31;
  *&v56[-16] = v32;
  v56[-8] = v34 & 1;
  static Alignment.center.getter();
  v36 = lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>();
  v95[0] = v25;
  v95[1] = v36;
  v37 = MEMORY[0x1E697E858];
  v38 = v62;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v62, v95);
  lazy protocol witness table accessor for type InspectorDimmingView and conformance InspectorDimmingView();
  v40 = v63;
  v41 = v64;
  View.overlay<A>(alignment:content:)();

  (*(v65 + 8))(v41, v38);
  v42 = lazy protocol witness table accessor for type _OverlayModifier<InspectorDimmingView> and conformance _OverlayModifier<A>();
  v94[0] = WitnessTable;
  v94[1] = v42;
  v43 = v68;
  v44 = swift_getWitnessTable(v37, v68, v94);
  v45 = v66;
  static ViewBuilder.buildExpression<A>(_:)();
  v46 = *(v70 + 8);
  v46(v40, v43);
  if (*(v61 + 57) == 1)
  {
    v76 = static VerticalAlignment.center.getter();
    LOBYTE(v77[0]) = 0;
    closure #2 in closure #1 in closure #1 in _InspectorSplitViewRoot.body(children:)(v59, v77 + 8);
    v47 = static Alignment.leading.getter();
    v49 = v48;
    v50 = _InspectorSplitViewRoot.presented.getter();
    BYTE8(v78) = v57;
    BYTE9(v78) = v50 & 1;
    *&v79[0] = v47;
    *(&v79[0] + 1) = v49;
    Spring.init(mass:stiffness:damping:allowOverDamping:)();
    v71 = v80;
    v72 = v81;
    v51 = MEMORY[0x18D00B690](&v71, 0.1);
    v52 = _InspectorSplitViewRoot.presented.getter();
    *&v79[1] = v51;
    BYTE8(v79[1]) = v52 & 1;
    v92 = v78;
    v93[0] = v79[0];
    v88 = v77[7];
    v89 = v77[8];
    v90 = v77[9];
    v91 = v77[10];
    v84 = v77[3];
    v85 = v77[4];
    v86 = v77[5];
    v87 = v77[6];
    v80 = v76;
    v81 = v77[0];
    v82 = v77[1];
    v83 = v77[2];
    *(v93 + 9) = *(v79 + 9);
  }

  else
  {
    v92 = 0u;
    memset(v93, 0, 25);
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
  }

  v53 = v67;
  (*(v70 + 16))(v67, v45, v43);
  *&v71 = v53;
  outlined init with copy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(&v80, &v76);
  *(&v71 + 1) = &v76;
  v75[0] = v43;
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(0);
  v75[1] = v54;
  v73 = v44;
  v74 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>? and conformance <A> A?();
  static ViewBuilder.buildBlock<each A>(_:)(&v71, 2uLL, v75);
  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(&v80, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?);
  v46(v45, v43);
  outlined destroy of ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?(&v76, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(InspectorColumnSeparator, ModifiedContent<_VariadicView_Children, _FlexFrameLayout>)>>, _BackgroundModifier<InspectorSeparatorShadow>>, _AnimationModifier<Bool>>?);
  return (v46)(v53, v43);
}